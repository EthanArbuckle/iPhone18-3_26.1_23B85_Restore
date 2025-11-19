uint64_t Morphology.GrammaticalCase.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

id Morphology.Determination.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v53[5] = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v7 = v5;
  v8 = v6 == 0x646E657065646E69 && v5 == 0xEB00000000746E65;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = 0;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v53);
    *a2 = v9;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v6 == 0x6E65646E65706564 && v7 == 0xE900000000000074)
  {

LABEL_14:
    v9 = 1;
    goto LABEL_8;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_14;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v13 = @"NSCocoaErrorDomain";
  v14 = v13;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v13);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_33;
        }

        goto LABEL_20;
      }

      result = [(__CFString *)v14 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      String.init(utf8String:)(result);
      if (v18)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v19)
    {
      goto LABEL_21;
    }

    [(__CFString *)v14 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_33;
  }

LABEL_20:
  LOBYTE(v51) = 0;
  if (__CFStringIsCF())
  {
LABEL_21:

    goto LABEL_33;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (!v17 && [(__CFString *)v16 length])
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_33:
  v20 = objc_allocWithZone(NSError);
  v21 = String._bridgeToObjectiveCImpl()();

  v22 = [v20 initWithDomain:v21 code:4866 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v22 domain];
  if (!v23)
  {
LABEL_43:
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_54;
  }

  v24 = v23;
  v25 = _objc_isTaggedPointer(v23);
  v26 = v24;
  v27 = v26;
  if ((v25 & 1) == 0)
  {
    goto LABEL_39;
  }

  v28 = _objc_getTaggedPointerTag(v26);
  if (!v28)
  {
    goto LABEL_47;
  }

  if (v28 != 22)
  {
    if (v28 == 2)
    {
      MEMORY[0x1EEE9AC00](v28);
      v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v31 = v30;

LABEL_54:
      v38 = v14;
      v39 = v38;
      if (!isTaggedPointer)
      {
LABEL_59:
        if (__CFStringIsCF())
        {

LABEL_63:
          v41 = 0;
          v43 = 0xE000000000000000;
          goto LABEL_73;
        }

        v44 = v39;
        v45 = String.init(_nativeStorage:)();
        if (v46)
        {
          v41 = v45;
          v43 = v46;

          goto LABEL_73;
        }

        if (![(__CFString *)v44 length])
        {

          goto LABEL_63;
        }

        v41 = String.init(_cocoaString:)();
        v43 = v49;
LABEL_73:
        if (v29 == v41 && v31 == v43)
        {
        }

        else
        {
          v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v50 & 1) == 0)
          {
            __break(1u);
          }
        }

        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v53);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v40 = _objc_getTaggedPointerTag(v38);
      if (!v40)
      {
        goto LABEL_67;
      }

      if (v40 != 22)
      {
        if (v40 == 2)
        {
          MEMORY[0x1EEE9AC00](v40);
          v41 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v43 = v42;

          goto LABEL_73;
        }

        goto LABEL_59;
      }

      result = [(__CFString *)v39 UTF8String];
      if (result)
      {
        v47 = String.init(utf8String:)(result);
        if (v48)
        {
          goto LABEL_68;
        }

        __break(1u);
LABEL_67:
        _CFIndirectTaggedPointerStringGetContents();
        v47 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v48)
        {
          [(__CFString *)v39 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v41 = v51;
          v43 = v52;
          goto LABEL_73;
        }

LABEL_68:
        v41 = v47;
        v43 = v48;

        goto LABEL_73;
      }

      goto LABEL_80;
    }

LABEL_39:
    LOBYTE(v51) = 0;
    if (__CFStringIsCF())
    {

      goto LABEL_43;
    }

    v32 = v27;
    v33 = String.init(_nativeStorage:)();
    if (v34)
    {
      v29 = v33;
      v31 = v34;

      goto LABEL_54;
    }

    if (![v32 length])
    {

      v29 = 0;
      v31 = 0xE000000000000000;
      goto LABEL_54;
    }

    v29 = String.init(_cocoaString:)();
    v31 = v37;
LABEL_53:

    goto LABEL_54;
  }

  result = [v27 UTF8String];
  if (result)
  {
    v35 = String.init(utf8String:)(result);
    if (v36)
    {
LABEL_48:
      v29 = v35;
      v31 = v36;

      goto LABEL_53;
    }

    __break(1u);
LABEL_47:
    _CFIndirectTaggedPointerStringGetContents();
    v35 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v36)
    {
      [v27 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v29 = v51;
      v31 = v52;
      goto LABEL_53;
    }

    goto LABEL_48;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t Morphology.Determination.encode(to:)(void *a1)
{
  return Morphology.Determination.encode(to:)(a1);
}

{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Morphology.Determination(void *a1)
{
  return protocol witness for Encodable.encode(to:) in conformance Morphology.Determination(a1);
}

{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

id Morphology.Definiteness.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v53[5] = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v7 = v5;
  v8 = v6 == 0x696E696665646E69 && v5 == 0xEA00000000006574;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = 0;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v53);
    *a2 = v9;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v6 == 0x6574696E69666564 && v7 == 0xE800000000000000)
  {

LABEL_14:
    v9 = 1;
    goto LABEL_8;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_14;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v13 = @"NSCocoaErrorDomain";
  v14 = v13;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v13);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_33;
        }

        goto LABEL_20;
      }

      result = [(__CFString *)v14 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      String.init(utf8String:)(result);
      if (v18)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v19)
    {
      goto LABEL_21;
    }

    [(__CFString *)v14 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_33;
  }

LABEL_20:
  LOBYTE(v51) = 0;
  if (__CFStringIsCF())
  {
LABEL_21:

    goto LABEL_33;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (!v17 && [(__CFString *)v16 length])
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_33:
  v20 = objc_allocWithZone(NSError);
  v21 = String._bridgeToObjectiveCImpl()();

  v22 = [v20 initWithDomain:v21 code:4866 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v22 domain];
  if (!v23)
  {
LABEL_43:
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_54;
  }

  v24 = v23;
  v25 = _objc_isTaggedPointer(v23);
  v26 = v24;
  v27 = v26;
  if ((v25 & 1) == 0)
  {
    goto LABEL_39;
  }

  v28 = _objc_getTaggedPointerTag(v26);
  if (!v28)
  {
    goto LABEL_47;
  }

  if (v28 != 22)
  {
    if (v28 == 2)
    {
      MEMORY[0x1EEE9AC00](v28);
      v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v31 = v30;

LABEL_54:
      v38 = v14;
      v39 = v38;
      if (!isTaggedPointer)
      {
LABEL_59:
        if (__CFStringIsCF())
        {

LABEL_63:
          v41 = 0;
          v43 = 0xE000000000000000;
          goto LABEL_73;
        }

        v44 = v39;
        v45 = String.init(_nativeStorage:)();
        if (v46)
        {
          v41 = v45;
          v43 = v46;

          goto LABEL_73;
        }

        if (![(__CFString *)v44 length])
        {

          goto LABEL_63;
        }

        v41 = String.init(_cocoaString:)();
        v43 = v49;
LABEL_73:
        if (v29 == v41 && v31 == v43)
        {
        }

        else
        {
          v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v50 & 1) == 0)
          {
            __break(1u);
          }
        }

        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v53);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v40 = _objc_getTaggedPointerTag(v38);
      if (!v40)
      {
        goto LABEL_67;
      }

      if (v40 != 22)
      {
        if (v40 == 2)
        {
          MEMORY[0x1EEE9AC00](v40);
          v41 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v43 = v42;

          goto LABEL_73;
        }

        goto LABEL_59;
      }

      result = [(__CFString *)v39 UTF8String];
      if (result)
      {
        v47 = String.init(utf8String:)(result);
        if (v48)
        {
          goto LABEL_68;
        }

        __break(1u);
LABEL_67:
        _CFIndirectTaggedPointerStringGetContents();
        v47 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v48)
        {
          [(__CFString *)v39 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v41 = v51;
          v43 = v52;
          goto LABEL_73;
        }

LABEL_68:
        v41 = v47;
        v43 = v48;

        goto LABEL_73;
      }

      goto LABEL_80;
    }

LABEL_39:
    LOBYTE(v51) = 0;
    if (__CFStringIsCF())
    {

      goto LABEL_43;
    }

    v32 = v27;
    v33 = String.init(_nativeStorage:)();
    if (v34)
    {
      v29 = v33;
      v31 = v34;

      goto LABEL_54;
    }

    if (![v32 length])
    {

      v29 = 0;
      v31 = 0xE000000000000000;
      goto LABEL_54;
    }

    v29 = String.init(_cocoaString:)();
    v31 = v37;
LABEL_53:

    goto LABEL_54;
  }

  result = [v27 UTF8String];
  if (result)
  {
    v35 = String.init(utf8String:)(result);
    if (v36)
    {
LABEL_48:
      v29 = v35;
      v31 = v36;

      goto LABEL_53;
    }

    __break(1u);
LABEL_47:
    _CFIndirectTaggedPointerStringGetContents();
    v35 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v36)
    {
      [v27 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v29 = v51;
      v31 = v52;
      goto LABEL_53;
    }

    goto LABEL_48;
  }

LABEL_81:
  __break(1u);
  return result;
}

id Morphology.GrammaticalPerson.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v54[5] = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v7 = v5;
  v8 = v6 == 0x7473726966 && v5 == 0xE500000000000000;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = 0;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v54);
    *a2 = v9;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v6 == 0x646E6F636573 && v7 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = 1;
    goto LABEL_8;
  }

  if (v6 == 0x6472696874 && v7 == 0xE500000000000000)
  {

LABEL_18:
    v9 = 2;
    goto LABEL_8;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_18;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v13 = @"NSCocoaErrorDomain";
  v14 = v13;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v13);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_37;
        }

        goto LABEL_24;
      }

      result = [(__CFString *)v14 UTF8String];
      if (!result)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      String.init(utf8String:)(result);
      if (v18)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v19)
    {
      goto LABEL_25;
    }

    [(__CFString *)v14 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_37;
  }

LABEL_24:
  LOBYTE(v52) = 0;
  if (__CFStringIsCF())
  {
LABEL_25:

    goto LABEL_37;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (!v17 && [(__CFString *)v16 length])
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_37:
  v20 = objc_allocWithZone(NSError);
  v21 = String._bridgeToObjectiveCImpl()();

  v22 = [v20 initWithDomain:v21 code:4866 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v22 domain];
  if (!v23)
  {
LABEL_48:
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_59;
  }

  v24 = v23;
  v25 = _objc_isTaggedPointer(v23);
  v26 = v24;
  v27 = v26;
  if ((v25 & 1) == 0)
  {
    goto LABEL_43;
  }

  v28 = _objc_getTaggedPointerTag(v26);
  if (!v28)
  {
    goto LABEL_52;
  }

  if (v28 != 22)
  {
    if (v28 == 2)
    {
      v51 = isTaggedPointer;
      MEMORY[0x1EEE9AC00](v28);
      v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v31 = v30;

LABEL_47:
      isTaggedPointer = v51;
      goto LABEL_59;
    }

LABEL_43:
    LOBYTE(v52) = 0;
    if (__CFStringIsCF())
    {

      goto LABEL_48;
    }

    v51 = isTaggedPointer;
    v32 = v27;
    v33 = String.init(_nativeStorage:)();
    if (v34)
    {
      v29 = v33;
      v31 = v34;

      goto LABEL_47;
    }

    if (![v32 length])
    {

      v29 = 0;
      v31 = 0xE000000000000000;
      goto LABEL_47;
    }

    v29 = String.init(_cocoaString:)();
    v31 = v37;
LABEL_58:

LABEL_59:
    v38 = v14;
    v39 = v38;
    if (!isTaggedPointer)
    {
LABEL_64:
      if (__CFStringIsCF())
      {

LABEL_68:
        v41 = 0;
        v43 = 0xE000000000000000;
        goto LABEL_78;
      }

      v44 = v39;
      v45 = String.init(_nativeStorage:)();
      if (v46)
      {
        v41 = v45;
        v43 = v46;

        goto LABEL_78;
      }

      if (![(__CFString *)v44 length])
      {

        goto LABEL_68;
      }

      v41 = String.init(_cocoaString:)();
      v43 = v49;
LABEL_78:
      if (v29 == v41 && v31 == v43)
      {

LABEL_82:
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v54);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v50)
      {
        goto LABEL_82;
      }

      __break(1u);
      goto LABEL_84;
    }

    v40 = _objc_getTaggedPointerTag(v38);
    if (v40)
    {
      if (v40 != 22)
      {
        if (v40 == 2)
        {
          MEMORY[0x1EEE9AC00](v40);
          v41 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v43 = v42;

          goto LABEL_78;
        }

        goto LABEL_64;
      }

      result = [(__CFString *)v39 UTF8String];
      if (!result)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v47 = String.init(utf8String:)(result);
      if (v48)
      {
LABEL_73:
        v41 = v47;
        v43 = v48;

        goto LABEL_78;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v47 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v48)
    {
      [(__CFString *)v39 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v41 = v52;
      v43 = v53;
      goto LABEL_78;
    }

    goto LABEL_73;
  }

  result = [v27 UTF8String];
  if (result)
  {
    v35 = String.init(utf8String:)(result);
    if (v36)
    {
LABEL_53:
      v29 = v35;
      v31 = v36;

      goto LABEL_58;
    }

    __break(1u);
LABEL_52:
    _CFIndirectTaggedPointerStringGetContents();
    v35 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v36)
    {
      [v27 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v29 = v52;
      v31 = v53;
      goto LABEL_58;
    }

    goto LABEL_53;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t Morphology.GrammaticalPerson.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

id Morphology.PronounType.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v54[5] = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v7 = v5;
  v8 = v6 == 0x6C616E6F73726570 && v5 == 0xE800000000000000;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = 0;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v54);
    *a2 = v9;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v6 == 0x766978656C666572 && v7 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = 1;
    goto LABEL_8;
  }

  if (v6 == 0x6973736573736F70 && v7 == 0xEA00000000006576)
  {

LABEL_18:
    v9 = 2;
    goto LABEL_8;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_18;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v13 = @"NSCocoaErrorDomain";
  v14 = v13;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v13);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_37;
        }

        goto LABEL_24;
      }

      result = [(__CFString *)v14 UTF8String];
      if (!result)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      String.init(utf8String:)(result);
      if (v18)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v19)
    {
      goto LABEL_25;
    }

    [(__CFString *)v14 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_37;
  }

LABEL_24:
  LOBYTE(v52) = 0;
  if (__CFStringIsCF())
  {
LABEL_25:

    goto LABEL_37;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (!v17 && [(__CFString *)v16 length])
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_37:
  v20 = objc_allocWithZone(NSError);
  v21 = String._bridgeToObjectiveCImpl()();

  v22 = [v20 initWithDomain:v21 code:4866 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v22 domain];
  if (!v23)
  {
LABEL_48:
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_59;
  }

  v24 = v23;
  v25 = _objc_isTaggedPointer(v23);
  v26 = v24;
  v27 = v26;
  if ((v25 & 1) == 0)
  {
    goto LABEL_43;
  }

  v28 = _objc_getTaggedPointerTag(v26);
  if (!v28)
  {
    goto LABEL_52;
  }

  if (v28 != 22)
  {
    if (v28 == 2)
    {
      v51 = isTaggedPointer;
      MEMORY[0x1EEE9AC00](v28);
      v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v31 = v30;

LABEL_47:
      isTaggedPointer = v51;
      goto LABEL_59;
    }

LABEL_43:
    LOBYTE(v52) = 0;
    if (__CFStringIsCF())
    {

      goto LABEL_48;
    }

    v51 = isTaggedPointer;
    v32 = v27;
    v33 = String.init(_nativeStorage:)();
    if (v34)
    {
      v29 = v33;
      v31 = v34;

      goto LABEL_47;
    }

    if (![v32 length])
    {

      v29 = 0;
      v31 = 0xE000000000000000;
      goto LABEL_47;
    }

    v29 = String.init(_cocoaString:)();
    v31 = v37;
LABEL_58:

LABEL_59:
    v38 = v14;
    v39 = v38;
    if (!isTaggedPointer)
    {
LABEL_64:
      if (__CFStringIsCF())
      {

LABEL_68:
        v41 = 0;
        v43 = 0xE000000000000000;
        goto LABEL_78;
      }

      v44 = v39;
      v45 = String.init(_nativeStorage:)();
      if (v46)
      {
        v41 = v45;
        v43 = v46;

        goto LABEL_78;
      }

      if (![(__CFString *)v44 length])
      {

        goto LABEL_68;
      }

      v41 = String.init(_cocoaString:)();
      v43 = v49;
LABEL_78:
      if (v29 == v41 && v31 == v43)
      {

LABEL_82:
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v54);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v50)
      {
        goto LABEL_82;
      }

      __break(1u);
      goto LABEL_84;
    }

    v40 = _objc_getTaggedPointerTag(v38);
    if (v40)
    {
      if (v40 != 22)
      {
        if (v40 == 2)
        {
          MEMORY[0x1EEE9AC00](v40);
          v41 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v43 = v42;

          goto LABEL_78;
        }

        goto LABEL_64;
      }

      result = [(__CFString *)v39 UTF8String];
      if (!result)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v47 = String.init(utf8String:)(result);
      if (v48)
      {
LABEL_73:
        v41 = v47;
        v43 = v48;

        goto LABEL_78;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v47 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v48)
    {
      [(__CFString *)v39 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v41 = v52;
      v43 = v53;
      goto LABEL_78;
    }

    goto LABEL_73;
  }

  result = [v27 UTF8String];
  if (result)
  {
    v35 = String.init(utf8String:)(result);
    if (v36)
    {
LABEL_53:
      v29 = v35;
      v31 = v36;

      goto LABEL_58;
    }

    __break(1u);
LABEL_52:
    _CFIndirectTaggedPointerStringGetContents();
    v35 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v36)
    {
      [v27 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v29 = v52;
      v31 = v53;
      goto LABEL_58;
    }

    goto LABEL_53;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t InflectionRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v13, v14);
    if (dispatch thunk of SingleValueDecodingContainer.decode(_:)())
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v13, v14);
      lazy protocol witness table accessor for type Morphology and conformance Morphology();
      dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
      v5 = v9;
      v6 = v10;
      v7 = v11 | (v12 << 32);
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 20) = BYTE4(v7);
    *(a2 + 16) = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t InflectionRule.encode(to:)(void *a1)
{
  v2 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  if (v2)
  {
    lazy protocol witness table accessor for type Morphology and conformance Morphology();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  }

  else
  {
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t Morphology.CustomPronoun.subjectForm.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t key path setter for Morphology.CustomPronoun.subjectForm : Morphology.CustomPronoun(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t Morphology.CustomPronoun.subjectForm.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Morphology.CustomPronoun.objectForm.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t key path getter for Morphology.CustomPronoun.objectForm : Morphology.CustomPronoun@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t key path setter for Morphology.CustomPronoun.objectForm : Morphology.CustomPronoun(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t Morphology.CustomPronoun.objectForm.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Morphology.CustomPronoun.possessiveForm.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t key path getter for Morphology.CustomPronoun.possessiveForm : Morphology.CustomPronoun@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t key path setter for Morphology.CustomPronoun.possessiveForm : Morphology.CustomPronoun(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t Morphology.CustomPronoun.possessiveForm.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Morphology.CustomPronoun.possessiveAdjectiveForm.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t key path getter for Morphology.CustomPronoun.possessiveAdjectiveForm : Morphology.CustomPronoun@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t key path setter for Morphology.CustomPronoun.possessiveAdjectiveForm : Morphology.CustomPronoun(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  return result;
}

uint64_t Morphology.CustomPronoun.possessiveAdjectiveForm.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Morphology.CustomPronoun.reflexiveForm.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t key path getter for Morphology.CustomPronoun.reflexiveForm : Morphology.CustomPronoun@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t key path setter for Morphology.CustomPronoun.reflexiveForm : Morphology.CustomPronoun(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  return result;
}

uint64_t Morphology.CustomPronoun.reflexiveForm.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void __swiftcall Morphology.customPronoun(forLanguage:)(Foundation::Morphology::CustomPronoun_optional *__return_ptr retstr, Swift::String forLanguage)
{
  v4 = *(v2 + 8);
  v5 = String.lowercased()();
  if (*(v4 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v5._countAndFlagsBits, v5._object);
    v8 = v7;

    if (v8)
    {
      v9 = *(v4 + 56) + 80 * v6;
      v16[0] = *v9;
      v10 = *(v9 + 48);
      v11 = *(v9 + 64);
      v12 = *(v9 + 32);
      v16[1] = *(v9 + 16);
      v16[2] = v12;
      v16[3] = v10;
      v16[4] = v11;
      v13 = *(v9 + 48);
      retstr->value._pronoun.possessiveForm = *(v9 + 32);
      retstr->value._pronoun.possessiveAdjectiveForm = v13;
      retstr->value._pronoun.reflexiveForm = *(v9 + 64);
      v14 = *(v9 + 16);
      retstr->value._pronoun.subjectForm = *v9;
      retstr->value._pronoun.objectForm = v14;
      outlined init with copy of Morphology._CustomPronoun(v16, &v15);
      return;
    }
  }

  else
  {
  }

  retstr->value._pronoun.subjectForm = xmmword_1812187D0;
  retstr->value._pronoun.objectForm = 0u;
  retstr->value._pronoun.possessiveForm = 0u;
  retstr->value._pronoun.possessiveAdjectiveForm = 0u;
  retstr->value._pronoun.reflexiveForm = 0u;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Morphology.setCustomPronoun(_:forLanguage:)(Foundation::Morphology::CustomPronoun_optional *_, Swift::String forLanguage)
{
  v3 = v2;
  v177 = *MEMORY[0x1E69E9840];
  object = _->value._pronoun.subjectForm.value._object;
  if (object != 1)
  {
    v155 = v3;
    countAndFlagsBits = _->value._pronoun.subjectForm.value._countAndFlagsBits;
    v18 = swift_allocObject();
    *(v18 + 16) = countAndFlagsBits;
    *(v18 + 24) = object;
    possessiveForm = _->value._pronoun.possessiveForm;
    *(v18 + 32) = _->value._pronoun.objectForm;
    *(v18 + 48) = possessiveForm;
    reflexiveForm = _->value._pronoun.reflexiveForm;
    *(v18 + 64) = _->value._pronoun.possessiveAdjectiveForm;
    *(v18 + 80) = reflexiveForm;
    v160 = partial apply for closure #1 in Morphology.setCustomPronoun(_:forLanguage:);
    v161 = v18;
    v156 = MEMORY[0x1E69E9820];
    v157 = 1107296256;
    v158 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out Any?);
    v159 = &block_descriptor_10;
    v21 = _Block_copy(&v156);
    v154 = countAndFlagsBits;
    *&v167 = countAndFlagsBits;
    *(&v167 + 1) = object;
    v22 = _->value._pronoun.possessiveForm;
    objectForm = _->value._pronoun.objectForm;
    v169 = v22;
    v23 = _->value._pronoun.reflexiveForm;
    possessiveAdjectiveForm = _->value._pronoun.possessiveAdjectiveForm;
    v171 = v23;
    outlined init with copy of Morphology.CustomPronoun(&v167, &v162);

    v24 = String._bridgeToObjectiveCImpl()();
    *&v162 = 0;
    v25 = __NSMorphologyCustomPronounValidate(v21, v24, &v162);
    swift_unknownObjectRelease();
    _Block_release(v21);
    if (v25)
    {
      v26 = String.lowercased()();
      v6 = v26._object;
      v27 = _->value._pronoun.possessiveForm;
      v172 = _->value._pronoun.objectForm;
      v173 = v27;
      v28 = _->value._pronoun.reflexiveForm;
      v30 = _->value._pronoun.objectForm;
      v29 = _->value._pronoun.possessiveForm;
      v174 = _->value._pronoun.possessiveAdjectiveForm;
      v175 = v28;
      *&v167 = countAndFlagsBits;
      *(&v167 + 1) = object;
      v153 = object;
      objectForm = v30;
      v169 = v29;
      v31 = _->value._pronoun.reflexiveForm;
      possessiveAdjectiveForm = _->value._pronoun.possessiveAdjectiveForm;
      v171 = v31;
      outlined init with copy of Morphology.CustomPronoun(&v167, &v162);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v155 + 8);
      v11 = v33;
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v26._countAndFlagsBits, v26._object);
      v36 = *(v33 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
LABEL_133:

        v3 = v155;
LABEL_5:

        v12 = (*(v11 + 56) + 80 * v6);
        v167 = *v12;
        v13 = v12[3];
        v14 = v12[4];
        v15 = v12[2];
        objectForm = v12[1];
        v169 = v15;
        possessiveAdjectiveForm = v13;
        v171 = v14;
        outlined destroy of Morphology._CustomPronoun(&v167);
        specialized _NativeDictionary._delete(at:)(v6, v11);
        *(v3 + 8) = v11;
        return;
      }

      v40 = v35;
      if (*(v33 + 24) >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v41 = v33;
        }

        else
        {
          v151 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10MorphologyV14_CustomPronounVGMd);
          v125 = static _DictionaryStorage.copy(original:)();
          v41 = v125;
          if (*(v33 + 16))
          {
            v126 = (v125 + 64);
            v152 = (v33 + 64);
            v127 = ((1 << *(v41 + 32)) + 63) >> 6;
            if (v41 != v33 || v126 >= &v152[8 * v127])
            {
              memmove(v126, v152, 8 * v127);
            }

            v128 = 0;
            *(v41 + 16) = *(v33 + 16);
            v129 = 1 << *(v33 + 32);
            v130 = *(v33 + 64);
            v131 = -1;
            if (v129 < 64)
            {
              v131 = ~(-1 << v129);
            }

            v132 = v131 & v130;
            v133 = (v129 + 63) >> 6;
            if ((v131 & v130) != 0)
            {
              do
              {
                v134 = __clz(__rbit64(v132));
                v132 &= v132 - 1;
LABEL_147:
                v137 = v134 | (v128 << 6);
                v138 = 16 * v137;
                v139 = (*(v33 + 48) + 16 * v137);
                v141 = *v139;
                v140 = v139[1];
                v137 *= 80;
                v142 = (*(v33 + 56) + v137);
                v144 = v142[1];
                v143 = v142[2];
                v145 = v142[4];
                v165 = v142[3];
                v166 = v145;
                v162 = *v142;
                v163 = v144;
                v164 = v143;
                v146 = (*(v41 + 48) + v138);
                *v146 = v141;
                v146[1] = v140;
                v147 = (*(v41 + 56) + v137);
                *v147 = v162;
                v148 = v163;
                v149 = v164;
                v150 = v166;
                v147[3] = v165;
                v147[4] = v150;
                v147[1] = v148;
                v147[2] = v149;

                outlined init with copy of Morphology._CustomPronoun(&v162, &v156);
              }

              while (v132);
            }

            v135 = v128;
            object = v153;
            while (1)
            {
              v128 = v135 + 1;
              if (__OFADD__(v135, 1))
              {
                break;
              }

              if (v128 >= v133)
              {
                goto LABEL_149;
              }

              v136 = *&v152[8 * v128];
              ++v135;
              if (v136)
              {
                v134 = __clz(__rbit64(v136));
                v132 = (v136 - 1) & v136;
                goto LABEL_147;
              }
            }

            __break(1u);
            goto LABEL_154;
          }

LABEL_149:

          v34 = v151;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
        v41 = v33;
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v26._countAndFlagsBits, v26._object);
        if ((v40 & 1) != (v42 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_11;
        }
      }

      *&v176[0] = v154;
      *(&v176[0] + 1) = object;
      v176[1] = v172;
      v176[2] = v173;
      v176[3] = v174;
      v176[4] = v175;
      if (v40)
      {
        v43 = v34;

        outlined assign with take of Morphology._CustomPronoun(v176, *(v41 + 56) + 80 * v43);
      }

      else
      {
        specialized _NativeDictionary._insert(at:key:value:)(v34, v26._countAndFlagsBits, v26._object, v176, v41);
      }

      *(v155 + 8) = v41;
      return;
    }

LABEL_11:
    if (v162)
    {
      v162;
LABEL_115:
      swift_willThrow();
      return;
    }

    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v45 = @"NSCocoaErrorDomain";
    v46 = v45;
    if (!isTaggedPointer)
    {
LABEL_24:
      LOBYTE(v156) = 0;
      *&v162 = 0;
      LOBYTE(v172.value._countAndFlagsBits) = 0;
      IsCF = __CFStringIsCF();
      if (!IsCF)
      {
        v49 = v46;
        String.init(_nativeStorage:)();
        if (v50 || (*&v162 = [(__CFString *)v49 length], !v162))
        {

          goto LABEL_48;
        }

        goto LABEL_47;
      }

      if (v162)
      {
        if (v172.value._countAndFlagsBits)
        {
          if (v156 != 1)
          {
            IsCF = [(__CFString *)v46 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v54 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v56 = HIBYTE(v55) & 0xF;
          if ((v55 & 0x2000000000000000) == 0)
          {
            v56 = v54 & 0xFFFFFFFFFFFFLL;
          }

          if (v56)
          {
            goto LABEL_45;
          }
        }

LABEL_47:
        String.init(_cocoaString:)();
LABEL_48:
        v57 = objc_allocWithZone(NSError);
        v58 = String._bridgeToObjectiveCImpl()();

        v59 = [v57 initWithDomain:v58 code:1024 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v60 = [v59 domain];
        if (!v60)
        {
          goto LABEL_60;
        }

        v61 = v60;
        v62 = _objc_isTaggedPointer(v60);
        v63 = v61;
        v64 = v63;
        if ((v62 & 1) == 0)
        {
LABEL_54:
          LOBYTE(v156) = 0;
          *&v162 = 0;
          LOBYTE(v172.value._countAndFlagsBits) = 0;
          v69 = __CFStringIsCF();
          if (!v69)
          {
            v70 = v64;
            v71 = String.init(_nativeStorage:)();
            if (v72)
            {
              v66 = v71;
              v68 = v72;

              goto LABEL_81;
            }

            *&v162 = [v70 length];
            if (!v162)
            {

              v66 = 0;
              v68 = 0xE000000000000000;
              goto LABEL_81;
            }

            goto LABEL_79;
          }

          if (v162)
          {
            if (v172.value._countAndFlagsBits)
            {
              if (v156 != 1)
              {
                v69 = [v64 lengthOfBytesUsingEncoding_];
              }

              MEMORY[0x1EEE9AC00](v69);
              v76 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v68 = v77;
              v78 = HIBYTE(v77) & 0xF;
              if ((v77 & 0x2000000000000000) == 0)
              {
                v78 = v76 & 0xFFFFFFFFFFFFLL;
              }

              if (v78)
              {
                v66 = v76;

                goto LABEL_81;
              }
            }

LABEL_79:
            v66 = String.init(_cocoaString:)();
            v68 = v79;
            goto LABEL_80;
          }

LABEL_60:
          v66 = 0;
          v68 = 0xE000000000000000;
          goto LABEL_81;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v63);
        if (TaggedPointerTag)
        {
          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v68 = v67;

LABEL_81:
              v80 = v46;
              v81 = v80;
              if (!isTaggedPointer)
              {
                goto LABEL_86;
              }

              v82 = _objc_getTaggedPointerTag(v80);
              if (!v82)
              {
                goto LABEL_96;
              }

              if (v82 != 22)
              {
                if (v82 == 2)
                {
                  MEMORY[0x1EEE9AC00](v82);
                  v83 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v85 = v84;

LABEL_111:
                  if (v66 == v83 && v68 == v85)
                  {
                  }

                  else
                  {
                    v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v97 & 1) == 0)
                    {
                      __break(1u);
LABEL_152:
                      __break(1u);
                    }
                  }

                  goto LABEL_115;
                }

LABEL_86:
                LOBYTE(v156) = 0;
                *&v162 = 0;
                LOBYTE(v172.value._countAndFlagsBits) = 0;
                v86 = __CFStringIsCF();
                if (v86)
                {
                  if (v162)
                  {
                    if (v172.value._countAndFlagsBits)
                    {
                      if (v156 != 1)
                      {
                        v86 = [(__CFString *)v81 lengthOfBytesUsingEncoding:4];
                      }

                      MEMORY[0x1EEE9AC00](v86);
                      v93 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v85 = v94;
                      v95 = HIBYTE(v94) & 0xF;
                      if ((v94 & 0x2000000000000000) == 0)
                      {
                        v95 = v93 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v95)
                      {
                        v83 = v93;

                        goto LABEL_111;
                      }
                    }

                    goto LABEL_110;
                  }
                }

                else
                {
                  v87 = v81;
                  v88 = String.init(_nativeStorage:)();
                  if (v89)
                  {
                    v83 = v88;
                    v85 = v89;

                    goto LABEL_111;
                  }

                  *&v162 = [(__CFString *)v87 length];
                  if (v162)
                  {
LABEL_110:
                    v83 = String.init(_cocoaString:)();
                    v85 = v96;
                    goto LABEL_111;
                  }
                }

                v83 = 0;
                v85 = 0xE000000000000000;
                goto LABEL_111;
              }

              v90 = [(__CFString *)v81 UTF8String];
              if (v90)
              {
                v91 = String.init(utf8String:)(v90);
                if (v92)
                {
LABEL_97:
                  v83 = v91;
                  v85 = v92;

                  goto LABEL_111;
                }

                __break(1u);
LABEL_96:
                LOWORD(v172.value._countAndFlagsBits) = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v91 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v92)
                {
                  [(__CFString *)v81 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v83 = v156;
                  v85 = v157;
                  goto LABEL_111;
                }

                goto LABEL_97;
              }

              goto LABEL_155;
            }

            goto LABEL_54;
          }

          v73 = [v64 UTF8String];
          if (!v73)
          {
LABEL_156:
            __break(1u);
            return;
          }

          v74 = String.init(utf8String:)(v73);
          if (v75)
          {
            goto LABEL_65;
          }

          __break(1u);
        }

        LOWORD(v172.value._countAndFlagsBits) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v74 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v75)
        {
          [v64 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v66 = v156;
          v68 = v157;
          goto LABEL_80;
        }

LABEL_65:
        v66 = v74;
        v68 = v75;

LABEL_80:
        goto LABEL_81;
      }

LABEL_45:

      goto LABEL_48;
    }

    v47 = _objc_getTaggedPointerTag(v45);
    if (!v47)
    {
LABEL_33:
      LOWORD(v172.value._countAndFlagsBits) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v53)
      {
        [(__CFString *)v46 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_48;
      }

      goto LABEL_45;
    }

    if (v47 != 22)
    {
      if (v47 == 2)
      {
        MEMORY[0x1EEE9AC00](v47);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_48;
      }

      goto LABEL_24;
    }

    v51 = [(__CFString *)v46 UTF8String];
    if (v51)
    {
      String.init(utf8String:)(v51);
      if (v52)
      {
        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v5 = String.lowercased()();
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v5._countAndFlagsBits, v5._object);
  v8 = v7;

  if (v8)
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v3 + 8);
    if (v9)
    {
      v11 = *(v3 + 8);
    }

    else
    {
      v155 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10MorphologyV14_CustomPronounVGMd);
      v98 = static _DictionaryStorage.copy(original:)();
      v11 = v98;
      if (*(v10 + 16))
      {
        v99 = (v98 + 64);
        v100 = v10 + 64;
        v101 = ((1 << *(v11 + 32)) + 63) >> 6;
        if (v11 != v10 || v99 >= v100 + 8 * v101)
        {
          memmove(v99, (v10 + 64), 8 * v101);
        }

        v102 = 0;
        *(v11 + 16) = *(v10 + 16);
        v103 = 1 << *(v10 + 32);
        v104 = *(v10 + 64);
        v105 = -1;
        if (v103 < 64)
        {
          v105 = ~(-1 << v103);
        }

        v106 = v105 & v104;
        v107 = (v103 + 63) >> 6;
        if ((v105 & v104) == 0)
        {
          goto LABEL_125;
        }

        while (1)
        {
          v108 = __clz(__rbit64(v106));
          for (v106 &= v106 - 1; ; v106 = (v110 - 1) & v110)
          {
            v111 = v108 | (v102 << 6);
            v112 = 16 * v111;
            v113 = (*(v10 + 48) + 16 * v111);
            v115 = *v113;
            v114 = v113[1];
            v111 *= 80;
            v116 = (*(v10 + 56) + v111);
            v118 = v116[1];
            v117 = v116[2];
            v119 = v116[4];
            possessiveAdjectiveForm = v116[3];
            v171 = v119;
            v167 = *v116;
            objectForm = v118;
            v169 = v117;
            v120 = (*(v11 + 48) + v112);
            *v120 = v115;
            v120[1] = v114;
            v121 = (*(v11 + 56) + v111);
            *v121 = v167;
            v122 = objectForm;
            v123 = v169;
            v124 = v171;
            v121[3] = possessiveAdjectiveForm;
            v121[4] = v124;
            v121[1] = v122;
            v121[2] = v123;

            outlined init with copy of Morphology._CustomPronoun(&v167, &v162);
            if (v106)
            {
              break;
            }

LABEL_125:
            v109 = v102;
            do
            {
              v102 = v109 + 1;
              if (__OFADD__(v109, 1))
              {
                goto LABEL_152;
              }

              if (v102 >= v107)
              {
                goto LABEL_133;
              }

              v110 = *(v100 + 8 * v102);
              ++v109;
            }

            while (!v110);
            v108 = __clz(__rbit64(v110));
          }
        }
      }
    }

    goto LABEL_5;
  }
}

double closure #1 in Morphology.setCustomPronoun(_:forLanguage:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  if (specialized static Morphology.CustomPronoun.keyPath(forObjectiveCKey:)(a1, a2))
  {
    v6 = a3[3];
    v15 = a3[2];
    v16 = v6;
    v17 = a3[4];
    v7 = a3[1];
    v13 = *a3;
    v14 = v7;
    outlined init with copy of Morphology.CustomPronoun(a3, v11);
    swift_getAtKeyPath();
    v18[2] = v15;
    v18[3] = v16;
    v18[4] = v17;
    v18[0] = v13;
    v18[1] = v14;
    outlined destroy of Morphology.CustomPronoun(v18);
    v8 = v12;
    if (v12)
    {
      v9 = v11[10];
      *(a4 + 24) = MEMORY[0x1E69E6158];

      *a4 = v9;
      *(a4 + 8) = v8;
      return result;
    }
  }

  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out Any?)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a2);
  v5 = v4;

  v2(v14, v3, v5);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __swiftcall Morphology.CustomPronoun.init()(Foundation::Morphology::CustomPronoun *__return_ptr retstr)
{
  retstr->_pronoun.possessiveAdjectiveForm = 0u;
  retstr->_pronoun.reflexiveForm = 0u;
  retstr->_pronoun.objectForm = 0u;
  retstr->_pronoun.possessiveForm = 0u;
  retstr->_pronoun.subjectForm = 0u;
}

id static InflectionRule.canInflect(language:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = objc_opt_self();
  v6 = [v5 *a4];
  swift_unknownObjectRelease();
  return v6;
}

void static Morphology.CustomPronoun.requiredKeys(forLanguage:)()
{
  v0 = objc_opt_self();
  v1 = [v0 requiredKeysForLanguage_];
  swift_unknownObjectRelease();
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    type metadata accessor for __SwiftDeferredNSArray();
    if (swift_dynamicCastClass())
    {
    }

    else
    {
      v4 = v1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v3 = v5;
    }

    else
    {
      swift_unknownObjectRelease();
      [v1 copy];
      v6 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      v3 = specialized _arrayForceCast<A, B>(_:)(v6);
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v7 = 0;
  v15 = v2;
  v8 = *(v3 + 2);
  v9 = v3 + 40;
LABEL_10:
  v10 = &v9[16 * v7];
  while (1)
  {
    if (v8 == v7)
    {

      return;
    }

    if (v7 >= *(v3 + 2))
    {
      break;
    }

    v11 = *(v10 - 1);
    v12 = *v10;
    v13 = v11 == 0x467463656A627573 && v12 == 0xEB000000006D726FLL;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 0x6F467463656A626FLL && v12 == 0xEA00000000006D72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 0x6973736573736F70 && v12 == 0xEE006D726F466576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 0xD000000000000017 && 0x8000000181487C90 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 0x766978656C666572 && v12 == 0xED00006D726F4665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      KeyPath = swift_getKeyPath();
    }

    else
    {
      KeyPath = 0;
    }

    ++v7;
    v10 += 16;
    if (KeyPath)
    {
      MEMORY[0x1865CB4D0]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v3 + 40;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t (*Morphology.CustomPronoun.subjectForm.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Morphology.CustomPronoun.subjectForm.modify;
}

uint64_t Morphology.CustomPronoun.subjectForm.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *v4 = v3;
    v4[1] = v2;
  }

  else
  {

    *v4 = v3;
    v4[1] = v2;
  }

  return result;
}

uint64_t (*Morphology.CustomPronoun.objectForm.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Morphology.CustomPronoun.objectForm.modify;
}

uint64_t Morphology.CustomPronoun.objectForm.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
  }

  else
  {

    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
  }

  return result;
}

uint64_t (*Morphology.CustomPronoun.possessiveForm.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Morphology.CustomPronoun.possessiveForm.modify;
}

uint64_t Morphology.CustomPronoun.possessiveForm.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
  }

  else
  {

    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
  }

  return result;
}

uint64_t (*Morphology.CustomPronoun.possessiveAdjectiveForm.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Morphology.CustomPronoun.possessiveAdjectiveForm.modify;
}

uint64_t Morphology.CustomPronoun.possessiveAdjectiveForm.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 48) = v3;
    *(v4 + 56) = v2;
  }

  else
  {

    *(v4 + 48) = v3;
    *(v4 + 56) = v2;
  }

  return result;
}

uint64_t (*Morphology.CustomPronoun.reflexiveForm.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Morphology.CustomPronoun.reflexiveForm.modify;
}

uint64_t Morphology.CustomPronoun.reflexiveForm.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 64) = v3;
    *(v4 + 72) = v2;
  }

  else
  {

    *(v4 + 64) = v3;
    *(v4 + 72) = v2;
  }

  return result;
}

uint64_t Morphology.CustomPronoun.init(from:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation10MorphologyV14_CustomPronounV10CodingKeys33_9BF4E61D20F3D06745C690C5DBBDE434LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  outlined init with copy of Hashable & Sendable(a1, v48);
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  lazy protocol witness table accessor for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    return outlined destroy of Morphology._CustomPronoun(&v38);
  }

  else
  {
    LOBYTE(v38) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v6;
    *&v32 = v9;
    *(&v32 + 1) = v11;
    LOBYTE(v38) = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = v13;
    LOBYTE(v38) = 2;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    v29 = a2;
    LOBYTE(v38) = 3;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v18;
    v49 = 4;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = a1;
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v20);
    (*(v31 + 8))(v8, v5);
    v23 = v32;
    v33 = v32;
    v24 = *(&v32 + 1);
    *&v34 = v12;
    *(&v34 + 1) = v30;
    *&v35 = v14;
    *(&v35 + 1) = v16;
    *&v36 = v17;
    *(&v36 + 1) = v19;
    *&v37 = v28;
    *(&v37 + 1) = v22;
    outlined init with copy of Morphology._CustomPronoun(&v33, &v38);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v38 = v23;
    v39 = v24;
    v40 = v12;
    v41 = v30;
    v42 = v14;
    v43 = v16;
    v44 = v17;
    v45 = v19;
    v46 = v28;
    v47 = v22;
    result = outlined destroy of Morphology._CustomPronoun(&v38);
    v25 = v36;
    v26 = v29;
    v29[2] = v35;
    v26[3] = v25;
    v26[4] = v37;
    v27 = v34;
    *v26 = v33;
    v26[1] = v27;
  }

  return result;
}

uint64_t Morphology.CustomPronoun.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation10MorphologyV14_CustomPronounV10CodingKeys33_9BF4E61D20F3D06745C690C5DBBDE434LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  v11 = v13[9];
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14 = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Morphology._CustomPronoun.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation10MorphologyV14_CustomPronounV10CodingKeys33_9BF4E61D20F3D06745C690C5DBBDE434LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void Morphology._CustomPronoun.hash(into:)()
{
  if (v0[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v0[3])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v0[5])
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  Hasher._combine(_:)(0);
  if (v0[5])
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[7])
    {
      goto LABEL_5;
    }

LABEL_12:
    Hasher._combine(_:)(0);
    if (v0[9])
    {
      goto LABEL_6;
    }

LABEL_13:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_11:
  Hasher._combine(_:)(0);
  if (!v0[7])
  {
    goto LABEL_12;
  }

LABEL_5:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v0[9])
  {
    goto LABEL_13;
  }

LABEL_6:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t static Morphology.CustomPronoun.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return specialized static Morphology._CustomPronoun.== infix(_:_:)(v8, v9) & 1;
}

Swift::Int Morphology.CustomPronoun.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[7];
  v5 = v0[9];
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  Hasher._combine(_:)(0);
  if (v3)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

LABEL_9:
  Hasher._combine(_:)(0);
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int Morphology._CustomPronoun.hashValue.getter()
{
  v1 = v0[1];
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v0[3])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v0[5])
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  Hasher._combine(_:)(0);
  if (v0[5])
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[7])
    {
      goto LABEL_5;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    if (v0[9])
    {
      goto LABEL_6;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

LABEL_9:
  Hasher._combine(_:)(0);
  if (!v0[7])
  {
    goto LABEL_10;
  }

LABEL_5:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v0[9])
  {
    goto LABEL_11;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Morphology._CustomPronoun.CodingKeys()
{
  v1 = *v0;
  v2 = 0x467463656A627573;
  v3 = 0x6973736573736F70;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x766978656C666572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F467463656A626FLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Morphology._CustomPronoun.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Morphology._CustomPronoun.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Morphology._CustomPronoun.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Morphology._CustomPronoun.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Morphology.CustomPronoun()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[7];
  v5 = v0[9];
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  Hasher._combine(_:)(0);
  if (v3)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

LABEL_9:
  Hasher._combine(_:)(0);
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

__n128 protocol witness for Decodable.init(from:) in conformance Morphology._CustomPronoun@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized Morphology._CustomPronoun.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t Morphology.Pronoun.pronoun.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Morphology.Pronoun.pronoun.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Morphology.Pronoun.morphology.getter@<X0>(uint64_t a1@<X8>)
{
  v6[0] = *(v1 + 16);
  v2 = v6[0];
  *(v6 + 13) = *(v1 + 29);
  v3 = *(v6 + 13);
  *a1 = v2;
  *(a1 + 13) = v3;
  return outlined init with copy of Morphology(v6, v5);
}

__n128 Morphology.Pronoun.morphology.setter(uint64_t a1)
{
  v4[0] = *(v1 + 16);
  *(v4 + 13) = *(v1 + 29);
  outlined destroy of Morphology(v4);
  result = *a1;
  *(v1 + 16) = *a1;
  *(v1 + 29) = *(a1 + 13);
  return result;
}

uint64_t Morphology.Pronoun.dependentMorphology.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 60);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 20) = v4;
  *(a1 + 16) = v3;
}

uint64_t Morphology.Pronoun.dependentMorphology.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 60) = v5;
  *(v1 + 56) = v4;
  return result;
}

void __swiftcall Morphology.Pronoun.init(pronoun:morphology:dependentMorphology:)(Foundation::Morphology::Pronoun *__return_ptr retstr, Swift::String pronoun, Foundation::Morphology morphology, Foundation::Morphology_optional dependentMorphology)
{
  v5 = *morphology.customPronouns._rawValue;
  v6 = *(morphology.customPronouns._rawValue + 1);
  v7 = *(morphology.customPronouns._rawValue + 4);
  v8 = *(morphology.customPronouns._rawValue + 20);
  retstr->pronoun = pronoun;
  *&retstr->morphology.grammaticalGender.value = **&morphology.grammaticalGender.value;
  *(&retstr->morphology.customPronouns._rawValue + 5) = *(*&morphology.grammaticalGender.value + 13);

  *&retstr->dependentMorphology.value.grammaticalGender.value = v5;
  retstr->dependentMorphology.value.customPronouns._rawValue = v6;
  retstr->dependentMorphology.value.definiteness.value = v8;
  *&retstr->dependentMorphology.value.grammaticalCase.value = v7;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Morphology.Pronoun.CodingKeys()
{
  v1 = 0x6F6C6F6870726F6DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E756F6E6F7270;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Morphology.Pronoun.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Morphology.Pronoun.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Morphology.Pronoun.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Morphology.Pronoun.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Morphology.Pronoun.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation10MorphologyV7PronounV10CodingKeys33_9BF4E61D20F3D06745C690C5DBBDE434LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v26[0] = *(v1 + 16);
  *(v26 + 13) = *(v1 + 29);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v17 = *(v1 + 60);
  v18 = v7;
  v9 = *(v1 + 56);
  v15 = v8;
  v16 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v25[0]) = 0;
  v10 = v19;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v10)
  {
    v12 = v16;
    v11 = v17;
    v13 = v18;
    v25[0] = v26[0];
    *(v25 + 13) = *(v26 + 13);
    v28 = 1;
    outlined init with copy of Morphology(v26, v24);
    lazy protocol witness table accessor for type Morphology and conformance Morphology();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *v24 = v25[0];
    *&v24[13] = *(v25 + 13);
    outlined destroy of Morphology(v24);
    v20 = v13;
    v21 = v15;
    v23 = (v12 | (v11 << 32)) >> 32;
    v22 = v12;
    v27 = 2;

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void Morphology.Pronoun.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 17);
  v6 = *(v2 + 18);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 33);
  v10 = *(v2 + 34);
  v11 = *(v2 + 35);
  v12 = *(v2 + 36);
  v15 = *(v2 + 48);
  v16 = *(v2 + 40);
  v13 = *(v2 + 56);
  v14 = *(v2 + 60);
  String.hash(into:)();
  if (v4 == 3)
  {
    Hasher._combine(_:)(0);
    if (v5 != 14)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (v6 != 6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v4 + 1);
  if (v5 == 14)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v5 + 1);
  if (v6 != 6)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v6 + 1);
    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:
  specialized Dictionary<>.hash(into:)(a1, v7);
  if (v8 == 14)
  {
    Hasher._combine(_:)(0);
    if (v9 != 3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v8 + 1);
    if (v9 != 3)
    {
LABEL_10:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v9 + 1);
      if (v10 != 3)
      {
        goto LABEL_11;
      }

LABEL_15:
      Hasher._combine(_:)(0);
      if (v11 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  Hasher._combine(_:)(0);
  if (v10 == 3)
  {
    goto LABEL_15;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v10 + 1);
  if (v11 != 2)
  {
LABEL_12:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060]((v11 & 1) + 1);
    goto LABEL_17;
  }

LABEL_16:
  Hasher._combine(_:)(0);
LABEL_17:
  if (v12 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060]((v12 & 1) + 1);
  }

  specialized Optional<A>.hash(into:)(a1, v16, v15, (v13 | (v14 << 32)) & 0xFFFFFFFFFFLL);
}

Swift::Int Morphology.Pronoun.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 18);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = *(v0 + 34);
  v9 = *(v0 + 35);
  v12 = *(v0 + 36);
  v13 = *(v0 + 48);
  v14 = *(v0 + 40);
  v11 = *(v0 + 60);
  v10 = *(v0 + 56);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v1 + 1);
  }

  if (v2 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v2 + 1);
  }

  if (v3 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v3 + 1);
  }

  specialized Dictionary<>.hash(into:)(v15, v4);
  if (v5 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v5 + 1);
  }

  if (v6 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v6 + 1);
  }

  if (v7 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v7 + 1);
  }

  if (v9 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060]((v9 & 1) + 1);
  }

  if (v12 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060]((v12 & 1) + 1);
  }

  specialized Optional<A>.hash(into:)(v15, v14, v13, (v10 | (v11 << 32)) & 0xFFFFFFFFFFLL);
  return Hasher._finalize()();
}

uint64_t Morphology.Pronoun.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation10MorphologyV7PronounV10CodingKeys33_9BF4E61D20F3D06745C690C5DBBDE434LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v23[0]) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v10;
    v20 = v9;
    v34 = 1;
    lazy protocol witness table accessor for type Morphology and conformance Morphology();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36[0] = *v35;
    *(v36 + 13) = *&v35[13];
    v29 = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v11 = v30;
    v12 = v31;
    v13 = v32;
    v14 = v33;

    v15 = v20;
    *&v21 = v20;
    v16 = v37;
    *(&v21 + 1) = v37;
    *v22 = v36[0];
    *&v22[13] = *(v36 + 13);
    *&v22[24] = v11;
    *&v22[32] = v12;
    v22[44] = v14;
    *&v22[40] = v13;
    *(a2 + 45) = *&v22[29];
    v17 = *v22;
    *a2 = v21;
    a2[1] = v17;
    a2[2] = *&v22[16];
    outlined init with copy of Morphology.Pronoun(&v21, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v23[0] = v15;
    v23[1] = v16;
    *v24 = v36[0];
    *&v24[13] = *(v36 + 13);
    v25 = v11;
    v26 = v12;
    v28 = v14;
    v27 = v13;
    return outlined destroy of Morphology.Pronoun(v23);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Morphology.Pronoun()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 18);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = *(v0 + 34);
  v9 = *(v0 + 35);
  v12 = *(v0 + 36);
  v13 = *(v0 + 48);
  v14 = *(v0 + 40);
  v11 = *(v0 + 60);
  v10 = *(v0 + 56);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v1 + 1);
  }

  if (v2 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v2 + 1);
  }

  if (v3 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v3 + 1);
  }

  specialized Dictionary<>.hash(into:)(v15, v4);
  if (v5 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v5 + 1);
  }

  if (v6 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v6 + 1);
  }

  if (v7 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v7 + 1);
  }

  if (v9 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060]((v9 & 1) + 1);
  }

  if (v12 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060]((v12 & 1) + 1);
  }

  specialized Optional<A>.hash(into:)(v15, v14, v13, (v10 | (v11 << 32)) & 0xFFFFFFFFFFLL);
  return Hasher._finalize()();
}

double one-time initialization function for user()
{
  v0 = [objc_opt_self() userMorphology];
  static Morphology._unconditionallyBridgeFromObjectiveC(_:)(v0, v2);

  result = v2[0];
  static Morphology.user = *v2;
  *(&static Morphology.user + 13) = *(&v2[1] + 5);
  return result;
}

void *static Morphology._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v19 = 3587;
  v3 = 6;
  v20 = 6;
  v4 = MEMORY[0x1E69E7CC8];
  v21 = MEMORY[0x1E69E7CC8];
  v22 = 33751822;
  v5 = 2;
  v23 = 2;
  if (result)
  {
    v6 = result;
    v7 = [v6 grammaticalGender];
    if (v7 >= 4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0x2010003u >> (8 * v7);
    }

    v9 = [v6 number];
    if (v9 >= 7)
    {
      v3 = 6;
    }

    else
    {
      v3 = 0x5040302010006uLL >> (8 * v9);
    }

    Morphology.PartOfSpeech.init(rawValue:)([v6 partOfSpeech]);
    v10 = v18;
    Morphology.PartOfSpeech.init(rawValue:)([v6 grammaticalCase]);
    v11 = v18;
    v12 = [v6 determination];
    if (v12 == 2)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = v13;
    }

    v14 = [v6 pronounType];
    if (v14 >= 4)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0x2010003u >> (8 * v14);
    }

    v16 = [v6 definiteness];

    result = outlined destroy of Morphology(&v19);
    v4 = MEMORY[0x1E69E7CC8];
    if (v16 == 2)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 == 1)
    {
      v17 = 0;
    }
  }

  else
  {
    v10 = 14;
    v8 = 3;
    v11 = 14;
    v15 = 3;
    v17 = 2;
  }

  *a2 = v8;
  *(a2 + 1) = v10;
  *(a2 + 2) = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v11;
  *(a2 + 17) = 3;
  *(a2 + 18) = v15;
  *(a2 + 19) = v5;
  *(a2 + 20) = v17;
  return result;
}

void __swiftcall NSMorphologyCustomPronoun.init(_:)(NSMorphologyCustomPronoun *__return_ptr retstr, Foundation::Morphology::_CustomPronoun *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2->subjectForm.value._object)
  {
    v4 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v3;
  [v5 setSubjectForm_];

  if (a2->objectForm.value._object)
  {
    v6 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v6 = 0;
  }

  [v5 setObjectForm_];

  if (a2->possessiveForm.value._object)
  {
    v7 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v7 = 0;
  }

  [v5 setPossessiveForm_];

  if (a2->possessiveAdjectiveForm.value._object)
  {
    v8 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v8 = 0;
  }

  [v5 setPossessiveAdjectiveForm_];

  if (a2->reflexiveForm.value._object)
  {
    v9 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v9 = 0;
  }

  outlined destroy of Morphology._CustomPronoun(a2);
  [v5 setReflexiveForm_];
}

Foundation::Morphology __swiftcall Morphology.init(_:)(NSMorphology_optional *a1)
{
  v2 = v1;
  v21 = 3587;
  v3 = 6;
  v22 = 6;
  v4 = MEMORY[0x1E69E7CC8];
  v23 = MEMORY[0x1E69E7CC8];
  v24 = 33751822;
  v5 = 2;
  v25 = 2;
  if (a1)
  {
    v6 = a1;
    v7 = [(NSMorphology_optional *)a1 grammaticalGender];
    if (v7 >= 4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0x2010003u >> (8 * v7);
    }

    v9 = [(NSMorphology_optional *)v6 number];
    if (v9 >= 7)
    {
      v3 = 6;
    }

    else
    {
      v3 = 0x5040302010006uLL >> (8 * v9);
    }

    Morphology.PartOfSpeech.init(rawValue:)([(NSMorphology_optional *)v6 partOfSpeech]);
    v10 = v20;
    Morphology.PartOfSpeech.init(rawValue:)([(NSMorphology_optional *)v6 grammaticalCase]);
    v11 = v20;
    v12 = [(NSMorphology_optional *)v6 determination];
    if (v12 == 2)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = v13;
    }

    v14 = [(NSMorphology_optional *)v6 pronounType];
    if (v14 >= 4)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0x2010003u >> (8 * v14);
    }

    v16 = [(NSMorphology_optional *)v6 definiteness];

    a1 = outlined destroy of Morphology(&v21);
    v4 = MEMORY[0x1E69E7CC8];
    if (v16 == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v16 == 1)
    {
      v19 = 0;
    }
  }

  else
  {
    v10 = 14;
    v8 = 3;
    v11 = 14;
    v15 = 3;
    v19 = 2;
  }

  *v2 = v8;
  *(v2 + 1) = v10;
  *(v2 + 2) = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v11;
  *(v2 + 17) = 3;
  *(v2 + 18) = v15;
  *(v2 + 19) = v5;
  *(v2 + 20) = v19;
  result.grammaticalCase = v18;
  result.grammaticalPerson = SBYTE1(v18);
  result.pronounType = SBYTE2(v18);
  result.determination = SBYTE3(v18);
  result.definiteness = SBYTE4(v18);
  result.customPronouns._rawValue = v17;
  result.grammaticalGender = a1;
  result.partOfSpeech = SBYTE1(a1);
  result.number = SBYTE2(a1);
  return result;
}

void __swiftcall NSMorphology.init(_:)(NSMorphology *__return_ptr retstr, Foundation::Morphology a2)
{
  v2 = **&a2.grammaticalGender.value;
  v3 = *(*&a2.grammaticalGender.value + 1);
  v4 = *(*&a2.grammaticalGender.value + 2);
  v5 = *(*&a2.grammaticalGender.value + 16);
  v6 = *(*&a2.grammaticalGender.value + 18);
  v7 = *(*&a2.grammaticalGender.value + 19);
  v8 = *(*&a2.grammaticalGender.value + 20);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = v9;
  if (v2 == 3)
  {
    if (v4 == 6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v9 setGrammaticalGender_];
    if (v4 == 6)
    {
LABEL_3:
      if (v3 == 14)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  [v10 setNumber_];
  if (v3 == 14)
  {
LABEL_4:
    if (v5 == 14)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v10 setPartOfSpeech_];
  if (v5 == 14)
  {
LABEL_5:
    if (v7 == 2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v10 setGrammaticalCase_];
  if (v7 == 2)
  {
LABEL_6:
    if (v6 == 3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v10 setDetermination_];
  if (v6 != 3)
  {
LABEL_7:
    [v10 setPronounType_];
  }

LABEL_8:

  if (v8 != 2)
  {
    [v10 setDefiniteness_];
  }
}

void __swiftcall Morphology._bridgeToObjectiveC()(NSMorphology *__return_ptr retstr)
{
  v5[0] = *v1;
  *(v5 + 13) = *(v1 + 13);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphology);
  outlined init with copy of Morphology(v5, v4);
  v2 = v1;
  NSMorphology.init(_:)(v3, *&v2);
}

void __swiftcall Morphology.CustomPronoun._bridgeToObjectiveC()(NSMorphologyCustomPronoun *__return_ptr retstr)
{
  v2 = v1[3];
  v6.possessiveForm = v1[2];
  v6.possessiveAdjectiveForm = v2;
  v6.reflexiveForm = v1[4];
  v3 = v1[1];
  v6.subjectForm = *v1;
  v6.objectForm = v3;
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphologyCustomPronoun);
  outlined init with copy of Morphology._CustomPronoun(&v6, &v5);
  NSMorphologyCustomPronoun.init(_:)(v4, &v6);
}

__n128 static Morphology.CustomPronoun._forceBridgeFromObjectiveC(_:result:)(void *a1, _OWORD *a2)
{
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v9[4] = a2[4];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  outlined destroy of TermOfAddress?(v9, &_s10Foundation10MorphologyV13CustomPronounVSgMd);
  v6 = a1;
  specialized Morphology._CustomPronoun.init(_:)(a1, v10);
  v7 = v10[3];
  a2[2] = v10[2];
  a2[3] = v7;
  a2[4] = v10[4];
  result = v10[1];
  *a2 = v10[0];
  a2[1] = result;
  return result;
}

uint64_t static Morphology.CustomPronoun._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, _OWORD *a2)
{
  v4 = a2[3];
  v10[2] = a2[2];
  v10[3] = v4;
  v10[4] = a2[4];
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  outlined destroy of TermOfAddress?(v10, &_s10Foundation10MorphologyV13CustomPronounVSgMd);
  v6 = a1;
  specialized Morphology._CustomPronoun.init(_:)(a1, v11);
  v7 = v11[3];
  a2[2] = v11[2];
  a2[3] = v7;
  a2[4] = v11[4];
  v8 = v11[1];
  *a2 = v11[0];
  a2[1] = v8;
  return 1;
}

__n128 static Morphology.CustomPronoun._unconditionallyBridgeFromObjectiveC(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  specialized Morphology._CustomPronoun.init(_:)(a1, v7);
  v5 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v5;
  *(a2 + 64) = v7[4];
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Morphology.CustomPronoun@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  specialized Morphology._CustomPronoun.init(_:)(a1, v7);
  v5 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v5;
  *(a2 + 64) = v7[4];
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

void protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Morphology.CustomPronoun()
{
  v1 = v0[3];
  v5.possessiveForm = v0[2];
  v5.possessiveAdjectiveForm = v1;
  v5.reflexiveForm = v0[4];
  v2 = v0[1];
  v5.subjectForm = *v0;
  v5.objectForm = v2;
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphologyCustomPronoun);
  outlined init with copy of Morphology._CustomPronoun(&v5, &v4);
  NSMorphologyCustomPronoun.init(_:)(v3, &v5);
}

__n128 protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance Morphology.CustomPronoun(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v12[4] = a2[4];
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  outlined destroy of TermOfAddress?(v12, a5);
  v9 = a1;
  specialized Morphology._CustomPronoun.init(_:)(a1, v13);
  v10 = v13[3];
  a2[2] = v13[2];
  a2[3] = v10;
  a2[4] = v13[4];
  result = v13[1];
  *a2 = v13[0];
  a2[1] = result;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance Morphology.CustomPronoun(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v13[4] = a2[4];
  v8 = a2[1];
  v13[0] = *a2;
  v13[1] = v8;
  outlined destroy of TermOfAddress?(v13, a5);
  v9 = a1;
  specialized Morphology._CustomPronoun.init(_:)(a1, v14);
  v10 = v14[3];
  a2[2] = v14[2];
  a2[3] = v10;
  a2[4] = v14[4];
  v11 = v14[1];
  *a2 = v14[0];
  a2[1] = v11;
  return 1;
}

NSMorphologyPronoun __swiftcall Morphology.Pronoun._bridgeToObjectiveC()()
{
  v1 = *(v0 + 16);
  v3[0] = *v0;
  v3[1] = v1;
  v4[0] = *(v0 + 32);
  *(v4 + 13) = *(v0 + 45);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphologyPronoun);
  outlined init with copy of Morphology.Pronoun(v3, &v2);
  return NSMorphologyPronoun.init(_:)(v0);
}

id static Morphology.Pronoun._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v4;
  v36[0] = *(a2 + 32);
  *(v36 + 13) = *(a2 + 45);
  outlined destroy of TermOfAddress?(v35, &_s10Foundation10MorphologyV7PronounVSgMd);
  v5 = a1;
  v6 = [v5 pronoun];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v28) = 0;
    v31 = 0;
    if (__CFStringIsCF())
    {
      v12 = 0;

      v14 = 0xE000000000000000;
      goto LABEL_22;
    }

    v15 = v10;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v12 = v16;
      v14 = v17;

      goto LABEL_22;
    }

    v31 = [v15 length];
    if (!v31)
    {

LABEL_18:
      v12 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_22;
    }

    v12 = String.init(_cocoaString:)();
    v14 = v21;
LABEL_21:

    goto LABEL_22;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v10 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v19 = String.init(utf8String:)(result);
    if (v20)
    {
LABEL_15:
      v12 = v19;
      v14 = v20;

      goto LABEL_21;
    }

    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v20)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v12 = v28;
      v14 = v29;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v14 = v13;

LABEL_22:
  v38 = Morphology.init(_:)([v5 morphology]);
  v22 = [v5 dependentMorphology];
  if (v22)
  {
    v23 = v22;
    v24 = v22;
    Morphology.init(_:)(v23);

    v25 = v31;
    v26 = v32;
    v27 = v33 | (v34 << 32);
  }

  else
  {

    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = *v30;
  *(a2 + 29) = *&v30[13];
  *(a2 + 40) = v25;
  *(a2 + 48) = v26;
  *(a2 + 56) = v27;
  *(a2 + 60) = BYTE4(v27);
  return result;
}

uint64_t static Morphology.Pronoun._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v4;
  v36[0] = *(a2 + 32);
  *(v36 + 13) = *(a2 + 45);
  outlined destroy of TermOfAddress?(v35, &_s10Foundation10MorphologyV7PronounVSgMd);
  v5 = a1;
  v6 = [v5 pronoun];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v28) = 0;
    v31 = 0;
    if (__CFStringIsCF())
    {
      v12 = 0;

      v14 = 0xE000000000000000;
      goto LABEL_22;
    }

    v15 = v10;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v12 = v16;
      v14 = v17;

      goto LABEL_22;
    }

    v31 = [v15 length];
    if (!v31)
    {

LABEL_18:
      v12 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_22;
    }

    v12 = String.init(_cocoaString:)();
    v14 = v21;
LABEL_21:

    goto LABEL_22;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v10 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v19 = String.init(utf8String:)(result);
    if (v20)
    {
LABEL_15:
      v12 = v19;
      v14 = v20;

      goto LABEL_21;
    }

    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v20)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v12 = v28;
      v14 = v29;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v14 = v13;

LABEL_22:
  v38 = Morphology.init(_:)([v5 morphology]);
  v22 = [v5 dependentMorphology];
  if (v22)
  {
    v23 = v22;
    v24 = v22;
    Morphology.init(_:)(v23);

    v25 = v31;
    v26 = v32;
    v27 = v33 | (v34 << 32);
  }

  else
  {

    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = *v30;
  *(a2 + 29) = *&v30[13];
  *(a2 + 40) = v25;
  *(a2 + 48) = v26;
  *(a2 + 56) = v27;
  *(a2 + 60) = BYTE4(v27);
  return 1;
}

id static Morphology.Pronoun._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    __break(1u);
  }

  v3 = a1;
  v4 = [v3 pronoun];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
LABEL_8:
    v29 = 0;
    if (__CFStringIsCF())
    {
      v10 = 0;

      v12 = 0xE000000000000000;
      goto LABEL_23;
    }

    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;

      goto LABEL_23;
    }

    v29 = [v13 length];
    if (!v29)
    {

LABEL_19:
      v10 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_23;
    }

    v10 = String.init(_cocoaString:)();
    v12 = v19;
LABEL_22:

    goto LABEL_23;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_15;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v8 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = String.init(utf8String:)(result);
    if (v18)
    {
LABEL_16:
      v10 = v17;
      v12 = v18;

      goto LABEL_22;
    }

    __break(1u);
LABEL_15:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v26;
      v12 = v27;
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v12 = v11;

LABEL_23:
  v33 = Morphology.init(_:)([v3 morphology]);
  v20 = [v3 dependentMorphology];
  if (v20)
  {
    v21 = v20;
    v22 = v20;
    Morphology.init(_:)(v21);

    v23 = v29;
    v24 = v30;
    v25 = v31 | (v32 << 32);
  }

  else
  {

    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = *v28;
  *(a2 + 29) = *&v28[13];
  *(a2 + 40) = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v25;
  *(a2 + 60) = BYTE4(v25);
  return result;
}

unint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Morphology.Pronoun()
{
  v1 = v0[1];
  v7[0] = *v0;
  v7[1] = v1;
  v8[0] = v0[2];
  *(v8 + 13) = *(v0 + 45);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphologyPronoun);
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  *v6 = v0[2];
  *&v6[13] = *(v0 + 45);
  outlined init with copy of Morphology.Pronoun(v7, &v4);
  return NSMorphologyPronoun.init(_:)(v5);
}

double protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance Morphology.Pronoun(void *a1, Swift::String *a2)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v8[0] = a2[2];
  *(v8 + 13) = *(a2 + 45);
  outlined destroy of TermOfAddress?(v7, &_s10Foundation10MorphologyV7PronounVSgMd);
  v10.super.isa = a1;
  Morphology.Pronoun.init(_:)(&v9, v10);
  v5 = *&v9.morphology.grammaticalGender.value;
  *a2 = v9.pronoun;
  a2[1] = v5;
  a2[2] = *&v9.morphology.grammaticalCase.value;
  result = *(&v9.dependentMorphology.value.number + 3);
  *(a2 + 45) = *(&v9.dependentMorphology.value.number + 3);
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance Morphology.Pronoun(void *a1, Swift::String *a2)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v8[0] = a2[2];
  *(v8 + 13) = *(a2 + 45);
  outlined destroy of TermOfAddress?(v7, &_s10Foundation10MorphologyV7PronounVSgMd);
  v10.super.isa = a1;
  Morphology.Pronoun.init(_:)(&v9, v10);
  v5 = *&v9.morphology.grammaticalGender.value;
  *a2 = v9.pronoun;
  a2[1] = v5;
  a2[2] = *&v9.morphology.grammaticalCase.value;
  *(a2 + 45) = *(&v9.dependentMorphology.value.number + 3);
  return 1;
}

void protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Morphology.Pronoun(void *a1@<X0>, Foundation::Morphology::Pronoun *a2@<X8>)
{
  if (a1)
  {
    v3.super.isa = a1;

    Morphology.Pronoun.init(_:)(a2, v3);
  }

  else
  {
    __break(1u);
  }
}

NSInflectionRule __swiftcall InflectionRule._bridgeToObjectiveC()()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *(v0 + 20);
    v3 = *(v0 + 4);
    v4 = *v0;
    v5 = *v0 >> 8;
    v6 = *v0 >> 16;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphology);
    v18[0] = v4;
    v18[1] = v5;
    v18[2] = v6;
    v19 = v1;
    v20 = v3;
    v7.i64[0] = 0xFFFFFFFFFFLL;
    v7.i64[1] = 0xFFFFFFFFFFLL;
    v8 = vandq_s8(vdupq_n_s64(v3 | (v2 << 32)), v7);
    v9 = vshlq_u64(v8, xmmword_1812E0130);
    *v8.i8 = vmovn_s64(vshlq_u64(v8, xmmword_1812E0140));
    *v9.i8 = vmovn_s64(v9);
    v9.i16[1] = v9.i16[2];
    v9.i16[2] = v8.i16[0];
    v9.i16[3] = v8.i16[2];
    v21 = vmovn_s16(v9).u32[0];
    v22[0] = v4;
    v22[1] = v1;
    v24 = v2;
    v23 = v3;
    outlined init with copy of Morphology(v22, v17);
    v10 = v18;
    NSMorphology.init(_:)(v11, *&v10);
    v13 = v12;
    v14 = [objc_allocWithZone(NSInflectionRuleExplicit) initWithMorphology_];

    return v14;
  }

  else
  {
    v16 = [objc_opt_self() automaticRule];

    return v16;
  }
}

void static InflectionRule._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() automaticRule];
  v5 = v4;
  if (!a1)
  {

    goto LABEL_6;
  }

  if (!v4)
  {
    v6 = a1;
    goto LABEL_8;
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSInflectionRule);
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
LABEL_6:
    v8 = 0;
    v9 = 0uLL;
LABEL_10:
    *a2 = v9;
    *(a2 + 16) = v8;
    *(a2 + 20) = BYTE4(v8);
    return;
  }

LABEL_8:
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = v6;
    v13 = [v11 morphology];
    static Morphology._unconditionallyBridgeFromObjectiveC(_:)(v13, &v16);

    v9 = v16;
    v8 = v17 | (v18 << 32);
    goto LABEL_10;
  }

  _StringGuts.grow(_:)(39);

  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16NSInflectionRuleCSgMd);
  v15 = String.init<A>(describing:)();
  MEMORY[0x1865CB0E0](v15);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance InflectionRule()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *(v0 + 20);
    v3 = *(v0 + 4);
    v4 = *v0;
    v5 = *v0 >> 8;
    v6 = *v0 >> 16;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphology);
    v18[0] = v4;
    v18[1] = v5;
    v18[2] = v6;
    v19 = v1;
    v20 = v3;
    v7.i64[0] = 0xFFFFFFFFFFLL;
    v7.i64[1] = 0xFFFFFFFFFFLL;
    v8 = vandq_s8(vdupq_n_s64(v3 | (v2 << 32)), v7);
    v9 = vshlq_u64(v8, xmmword_1812E0130);
    *v8.i8 = vmovn_s64(vshlq_u64(v8, xmmword_1812E0140));
    *v9.i8 = vmovn_s64(v9);
    v9.i16[1] = v9.i16[2];
    v9.i16[2] = v8.i16[0];
    v9.i16[3] = v8.i16[2];
    v21 = vmovn_s16(v9).u32[0];
    v22[0] = v4;
    v22[1] = v1;
    v24 = v2;
    v23 = v3;
    outlined init with copy of Morphology(v22, v17);
    v10 = v18;
    NSMorphology.init(_:)(v11, *&v10);
    v13 = v12;
    v14 = [objc_allocWithZone(NSInflectionRuleExplicit) initWithMorphology_];

    return v14;
  }

  else
  {
    v16 = [objc_opt_self() automaticRule];

    return v16;
  }
}

double static Morphology._forceBridgeFromObjectiveC(_:result:)(NSMorphology_optional *a1, uint64_t a2)
{

  v4 = a1;
  Morphology.init(_:)(a1);
  result = *&v6;
  *a2 = v6;
  *(a2 + 20) = v8;
  *(a2 + 16) = v7;
  return result;
}

void protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Morphology()
{
  v5[0] = *v0;
  *(v5 + 13) = *(v0 + 13);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphology);
  v4[0] = *v0;
  *(v4 + 13) = *(v0 + 13);
  outlined init with copy of Morphology(v5, v3);
  v1 = v4;
  NSMorphology.init(_:)(v2, *&v1);
}

double protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance Morphology(NSMorphology_optional *a1, uint64_t a2)
{

  v4 = a1;
  Morphology.init(_:)(a1);
  result = *&v6;
  *a2 = v6;
  *(a2 + 20) = v8;
  *(a2 + 16) = v7;
  return result;
}

uint64_t specialized static Morphology._CustomPronoun.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (v28 && (a1[8] == a2[8] && v27 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v28)
  {
    return 1;
  }

  return 0;
}

uint64_t specialized static Morphology.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 1);
  v7 = a1[16];
  v8 = a1[17];
  v9 = a1[18];
  v10 = a1[19];
  v11 = a1[20];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *(a2 + 1);
  v16 = a2[16];
  v17 = a2[17];
  v18 = a2[18];
  v19 = a2[19];
  v20 = a2[20];
  if (v3 == 3)
  {
    if (v12 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v12 == 3 || v3 != v12)
    {
      return result;
    }
  }

  if (v4 == 14)
  {
    if (v13 != 14)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v13 == 14 || v4 != v13)
    {
      return result;
    }
  }

  if (v5 == 6)
  {
    if (v14 != 6)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v14 == 6 || v5 != v14)
    {
      return result;
    }
  }

  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation10MorphologyV14_CustomPronounVTt1g5(v6, v15) & 1) == 0)
  {
    return 0;
  }

  if (v7 == 14)
  {
    if (v16 != 14)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v16 == 14 || v7 != v16)
    {
      return result;
    }
  }

  if (v8 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v17 == 3 || v8 != v17)
    {
      return result;
    }
  }

  if (v9 == 3)
  {
    if (v18 != 3)
    {
      return 0;
    }

LABEL_32:
    if (v10 == 2)
    {
      if (v19 != 2)
      {
        return 0;
      }
    }

    else if (v19 == 2 || ((v19 ^ v10) & 1) != 0)
    {
      return 0;
    }

    if (v11 == 2)
    {
      if (v20 != 2)
      {
        return 0;
      }
    }

    else if (v20 == 2 || ((v20 ^ v11) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v18 != 3 && v9 == v18)
  {
    goto LABEL_32;
  }

  return result;
}

BOOL specialized static Morphology.Pronoun.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v26[0] = *(a1 + 1);
  *(v26 + 13) = *(a1 + 29);
  v7 = a1[5];
  v6 = a1[6];
  v8 = *(a1 + 60);
  v9 = *(a1 + 14);
  v10 = *a2;
  v11 = a2[1];
  v27[0] = *(a2 + 1);
  *(v27 + 13) = *(a2 + 29);
  v12 = a2[6];
  v19 = a2[5];
  v13 = *(a2 + 60);
  v14 = *(a2 + 14);
  if (v4 == v10 && v5 == v11 || (v15 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v15 & 1) != 0))
  {
    *v23 = *(a1 + 1);
    *&v23[13] = *(a1 + 29);
    *v22 = *(a2 + 1);
    *&v22[13] = *(a2 + 29);
    outlined init with copy of Morphology(v26, v21);
    outlined init with copy of Morphology(v27, v21);
    v17 = specialized static Morphology.== infix(_:_:)(v23, v22);
    v24[0] = *v22;
    *(v24 + 13) = *&v22[13];
    outlined destroy of Morphology(v24);
    v25[0] = *v23;
    *(v25 + 13) = *&v23[13];
    outlined destroy of Morphology(v25);
    if (v17)
    {
      if (v6)
      {
        *v23 = v7;
        *&v23[8] = v6;
        *&v23[16] = v9;
        v23[20] = (v9 | (v8 << 32)) >> 32;
        if (v12)
        {
          *v20 = v19;
          *&v20[8] = v12;
          v20[20] = (v14 | (v13 << 32)) >> 32;
          *&v20[16] = v14;

          swift_bridgeObjectRetain_n();
          v18 = specialized static Morphology.== infix(_:_:)(v23, v20);
          *v21 = *v20;
          *&v21[13] = *&v20[13];
          outlined destroy of Morphology(v21);
          *v22 = *v23;
          *&v22[13] = *&v23[13];
          outlined destroy of Morphology(v22);

          return (v18 & 1) != 0;
        }

        *v22 = *v23;
        *&v22[13] = *&v23[13];
        swift_bridgeObjectRetain_n();
        outlined destroy of Morphology(v22);
      }

      else
      {
        if (!v12)
        {

          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t specialized static InflectionRule.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (!v2)
  {
    if (!v3)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a2 + 20);
  v6 = *(a2 + 4);
  v7 = *(a1 + 20);
  v8 = *(a1 + 4);
  v9 = *a1;
  v10 = *a2;
  if (*a1 == 3)
  {
    if (v10 != 3)
    {
      return 0;
    }
  }

  else if (v10 == 3 || v9 != v4)
  {
    return 0;
  }

  v12 = *a2 & 0xFF00;
  if ((*a1 & 0xFF00) == 0xE00)
  {
    if (v12 != 3584)
    {
      return 0;
    }
  }

  else if (v12 == 3584 || ((v9 ^ v4) & 0xFF00) != 0)
  {
    return 0;
  }

  v13 = v4 & 0xFF0000;
  if ((v9 & 0xFF0000) == 0x60000)
  {
    if (v13 != 393216)
    {
      return 0;
    }
  }

  else if (v13 == 393216 || ((v9 ^ v4) & 0xFF0000) != 0)
  {
    return 0;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v14 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation10MorphologyV14_CustomPronounVTt1g5(v2, v3);

  if ((v14 & 1) == 0)
  {
    goto LABEL_44;
  }

  v15 = v6 | (v5 << 32);
  if (v8 == 14)
  {
    if (v6 != 14)
    {
      goto LABEL_44;
    }
  }

  else if (v6 == 14 || v8 != v6)
  {
    goto LABEL_44;
  }

  if (BYTE1(v8) == 3)
  {
    if (BYTE1(v6) != 3)
    {
      goto LABEL_44;
    }
  }

  else if (BYTE1(v6) == 3 || BYTE1(v8) != BYTE1(v6))
  {
    goto LABEL_44;
  }

  if (BYTE2(v8) == 3)
  {
    if (BYTE2(v6) != 3)
    {
      goto LABEL_44;
    }
  }

  else if (BYTE2(v6) == 3 || BYTE2(v8) != BYTE2(v6))
  {
    goto LABEL_44;
  }

  if (BYTE3(v8) == 2)
  {
    if (BYTE3(v6) == 2)
    {
      goto LABEL_41;
    }

LABEL_44:

    return 0;
  }

  if (BYTE3(v6) == 2 || ((((v8 & 0xFFFFFF00FFFFFFFFLL | (v7 << 32)) >> 24) ^ (v15 >> 24)) & 1) != 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  v16 = BYTE4(v15);

  if (v7 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v7 ^ v16) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t specialized Morphology._CustomPronoun.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation10MorphologyV14_CustomPronounV10CodingKeys33_9BF4E61D20F3D06745C690C5DBBDE434LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v33 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39 = 0uLL;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    return outlined destroy of Morphology._CustomPronoun(&v39);
  }

  else
  {
    LOBYTE(v39) = 0;
    *&v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v32 + 1) = v10;
    LOBYTE(v39) = 1;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = v11;
    v29 = a2;
    LOBYTE(v39) = 2;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    LOBYTE(v39) = 3;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v16;
    v48 = 4;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = 0;
    v19 = v18;
    v20 = v8;
    v22 = v21;
    (*(v6 + 8))(v20, v5);
    v23 = v32;
    v34 = v32;
    v24 = v30;
    *&v35 = v31;
    *(&v35 + 1) = v30;
    *&v36 = v12;
    *(&v36 + 1) = v14;
    *&v37 = v15;
    *(&v37 + 1) = v17;
    *&v38 = v19;
    *(&v38 + 1) = v22;
    outlined init with copy of Morphology._CustomPronoun(&v34, &v39);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39 = __PAIR128__(*(&v32 + 1), v23);
    v40 = v31;
    v41 = v24;
    v42 = v12;
    v43 = v14;
    v44 = v15;
    v45 = v17;
    v46 = v19;
    v47 = v22;
    result = outlined destroy of Morphology._CustomPronoun(&v39);
    v25 = v37;
    v26 = v29;
    v29[2] = v36;
    v26[3] = v25;
    v26[4] = v38;
    v27 = v35;
    *v26 = v34;
    v26[1] = v27;
  }

  return result;
}

unint64_t specialized Morphology.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Morphology.CodingKeys.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized Morphology._CustomPronoun.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x467463656A627573 && a2 == 0xEB000000006D726FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F467463656A626FLL && a2 == 0xEA00000000006D72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736573736F70 && a2 == 0xEE006D726F466576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000181487C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x766978656C666572 && a2 == 0xED00006D726F4665)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized Morphology.Pronoun.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E756F6E6F7270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6F6870726F6DLL && a2 == 0xEA00000000007967 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000181487D00 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized static Morphology.CustomPronoun.keyPath(forObjectiveCKey:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x467463656A627573 && a2 == 0xEB000000006D726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x6F467463656A626FLL && a2 == 0xEA00000000006D72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x6973736573736F70 && a2 == 0xEE006D726F466576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000017 && 0x8000000181487C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x766978656C666572 && a2 == 0xED00006D726F4665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology._CustomPronoun.CodingKeys and conformance Morphology._CustomPronoun.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Pronoun.CodingKeys and conformance Morphology.Pronoun.CodingKeys);
  }

  return result;
}

id specialized Morphology._CustomPronoun.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v102[10] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_119:
    *&v97 = v12;
    *(&v97 + 1) = v13;
    *&v98 = v14;
    *(&v98 + 1) = v15;
    *&v99 = v16;
    *(&v99 + 1) = v17;
    *&v100 = v18;
    *(&v100 + 1) = v19;
    *&v101 = v20;
    *(&v101 + 1) = v21;
    v102[0] = v12;
    v102[1] = v13;
    v102[2] = v14;
    v102[3] = v15;
    v102[4] = v16;
    v102[5] = v17;
    v102[6] = v18;
    v102[7] = v19;
    v102[8] = v20;
    v102[9] = v21;
    outlined init with copy of Morphology._CustomPronoun(&v97, v96);
    result = outlined destroy of Morphology._CustomPronoun(v102);
    v87 = v100;
    a2[2] = v99;
    a2[3] = v87;
    a2[4] = v101;
    v88 = v98;
    *a2 = v97;
    a2[1] = v88;
    return result;
  }

  v3 = a1;
  v4 = [v3 subjectForm];
  if (!v4)
  {

    v10 = 0;
    v94 = 0;
    goto LABEL_25;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
LABEL_9:
    LOBYTE(v97) = 0;
    v102[0] = 0;
    LOBYTE(v96[0]) = 0;
    v95 = 0;
    if (__CFStringIsCF())
    {

      v10 = 0;
    }

    else
    {
      v22 = v8;
      v23 = String.init(_nativeStorage:)();
      if (v24)
      {
        v10 = v23;
        v94 = v24;

        goto LABEL_25;
      }

      v102[0] = [v22 length];
      if (v102[0])
      {
        v10 = String.init(_cocoaString:)();
        v94 = v29;

        goto LABEL_25;
      }

      v10 = 0;
    }

    v94 = 0xE000000000000000;
    goto LABEL_25;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    v96[0] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v27 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v28)
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v94 = *(&v97 + 1);
      v10 = v97;

      goto LABEL_24;
    }

    v10 = v27;
    v94 = v28;
LABEL_20:

LABEL_24:
    goto LABEL_25;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v94 = v11;

LABEL_25:
      v30 = [v3 objectForm];
      if (!v30)
      {

        v92 = 0;
        v93 = 0;
        goto LABEL_50;
      }

      v31 = v30;
      v32 = _objc_isTaggedPointer(v30);
      v33 = v31;
      v34 = v33;
      if (!v32)
      {
        goto LABEL_31;
      }

      v35 = _objc_getTaggedPointerTag(v33);
      if (!v35)
      {
        goto LABEL_40;
      }

      if (v35 != 22)
      {
        if (v35 == 2)
        {
          MEMORY[0x1EEE9AC00](v35);
          v36 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v92 = v37;
          v93 = v36;

LABEL_50:
          v47 = [v3 possessiveForm];
          v91 = v10;
          if (!v47)
          {

            v16 = 0;
            v17 = 0;
            goto LABEL_73;
          }

          v48 = v47;
          v49 = _objc_isTaggedPointer(v47);
          v50 = v48;
          v51 = v50;
          if (!v49)
          {
            goto LABEL_56;
          }

          v52 = _objc_getTaggedPointerTag(v50);
          if (!v52)
          {
            goto LABEL_65;
          }

          if (v52 != 22)
          {
            if (v52 == 2)
            {
              MEMORY[0x1EEE9AC00](v52);
              v16 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v17 = v53;

LABEL_73:
              v60 = [v3 possessiveAdjectiveForm];
              if (!v60)
              {

                v18 = 0;
                v19 = 0;
                goto LABEL_95;
              }

              v61 = v60;
              v62 = _objc_isTaggedPointer(v60);
              v63 = v61;
              v64 = v63;
              if (!v62)
              {
LABEL_79:
                LOBYTE(v97) = 0;
                v102[0] = 0;
                LOBYTE(v96[0]) = 0;
                v95 = 0;
                if (__CFStringIsCF())
                {
                  v18 = v102[0];

                  v19 = 0xE000000000000000;
                  goto LABEL_95;
                }

                v67 = v64;
                v68 = String.init(_nativeStorage:)();
                if (v69)
                {
                  v18 = v68;
                  v19 = v69;

                  goto LABEL_95;
                }

                v102[0] = [v67 length];
                if (!v102[0])
                {

                  v18 = 0;
                  v19 = 0xE000000000000000;
                  goto LABEL_95;
                }

                v18 = String.init(_cocoaString:)();
                v19 = v72;
                goto LABEL_93;
              }

              v65 = _objc_getTaggedPointerTag(v63);
              if (!v65)
              {
                goto LABEL_87;
              }

              if (v65 != 22)
              {
                if (v65 == 2)
                {
                  MEMORY[0x1EEE9AC00](v65);
                  v18 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v19 = v66;

LABEL_95:
                  v73 = [v3 reflexiveForm];
                  if (!v73)
                  {

                    v20 = 0;
                    v21 = 0;
                    goto LABEL_118;
                  }

                  v90 = v3;
                  v74 = v73;
                  v75 = _objc_isTaggedPointer(v73);
                  v76 = v74;
                  v77 = v76;
                  if (!v75)
                  {
                    goto LABEL_101;
                  }

                  v78 = _objc_getTaggedPointerTag(v76);
                  if (!v78)
                  {
                    goto LABEL_110;
                  }

                  if (v78 != 22)
                  {
                    if (v78 == 2)
                    {
                      v89 = &v89;
                      MEMORY[0x1EEE9AC00](v78);
                      v20 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v21 = v79;

                      v80 = v90;

LABEL_118:
                      v12 = v91;
                      v15 = v92;
                      v14 = v93;
                      v13 = v94;
                      goto LABEL_119;
                    }

LABEL_101:
                    LOBYTE(v97) = 0;
                    v102[0] = 0;
                    LOBYTE(v96[0]) = 0;
                    v95 = 0;
                    if (__CFStringIsCF())
                    {

LABEL_106:
                      v20 = 0;
                      v21 = 0xE000000000000000;
                      goto LABEL_118;
                    }

                    v81 = v77;
                    v82 = String.init(_nativeStorage:)();
                    if (v83)
                    {
                      v20 = v82;
                      v21 = v83;

LABEL_117:
                      goto LABEL_118;
                    }

                    if (![v81 length])
                    {

                      goto LABEL_106;
                    }

                    v20 = String.init(_cocoaString:)();
                    v21 = v86;
LABEL_116:

                    v81 = v90;
                    goto LABEL_117;
                  }

                  result = [v77 UTF8String];
                  if (result)
                  {
                    v84 = String.init(utf8String:)(result);
                    if (v85)
                    {
                      goto LABEL_111;
                    }

                    __break(1u);
LABEL_110:
                    v96[0] = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v84 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v85)
                    {
                      [v77 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v21 = *(&v97 + 1);
                      v20 = v97;
                      goto LABEL_116;
                    }

LABEL_111:
                    v20 = v84;
                    v21 = v85;

                    goto LABEL_118;
                  }

                  goto LABEL_124;
                }

                goto LABEL_79;
              }

              result = [v64 UTF8String];
              if (result)
              {
                v70 = String.init(utf8String:)(result);
                if (v71)
                {
                  goto LABEL_88;
                }

                __break(1u);
LABEL_87:
                v96[0] = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v70 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v71)
                {
                  [v64 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v19 = *(&v97 + 1);
                  v18 = v97;
LABEL_93:

                  goto LABEL_94;
                }

LABEL_88:
                v18 = v70;
                v19 = v71;

LABEL_94:
                goto LABEL_95;
              }

LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
              goto LABEL_125;
            }

LABEL_56:
            LOBYTE(v97) = 0;
            v102[0] = 0;
            LOBYTE(v96[0]) = 0;
            v95 = 0;
            if (__CFStringIsCF())
            {

LABEL_61:
              v16 = 0;
              v17 = 0xE000000000000000;
              goto LABEL_73;
            }

            v54 = v51;
            v55 = String.init(_nativeStorage:)();
            if (v56)
            {
              v16 = v55;
              v17 = v56;

              goto LABEL_73;
            }

            v102[0] = [v54 length];
            if (!v102[0])
            {

              goto LABEL_61;
            }

            v16 = String.init(_cocoaString:)();
            v17 = v59;
            goto LABEL_71;
          }

          result = [v51 UTF8String];
          if (result)
          {
            v57 = String.init(utf8String:)(result);
            if (v58)
            {
              goto LABEL_66;
            }

            __break(1u);
LABEL_65:
            v96[0] = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v57 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v58)
            {
              [v51 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v17 = *(&v97 + 1);
              v16 = v97;
LABEL_71:

              goto LABEL_72;
            }

LABEL_66:
            v16 = v57;
            v17 = v58;

LABEL_72:
            goto LABEL_73;
          }

LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

LABEL_31:
        LOBYTE(v97) = 0;
        v102[0] = 0;
        LOBYTE(v96[0]) = 0;
        v95 = 0;
        if (__CFStringIsCF())
        {

LABEL_36:
          v92 = 0xE000000000000000;
          v93 = 0;
          goto LABEL_50;
        }

        v38 = v34;
        v39 = String.init(_nativeStorage:)();
        if (v40)
        {
          v92 = v40;
          v93 = v39;

          goto LABEL_50;
        }

        v102[0] = [v38 length];
        if (!v102[0])
        {

          goto LABEL_36;
        }

        v45 = String.init(_cocoaString:)();
        v92 = v46;
        v93 = v45;
        goto LABEL_48;
      }

      result = [v34 UTF8String];
      if (result)
      {
        v41 = String.init(utf8String:)(result);
        v92 = v42;
        v93 = v41;
        if (v42)
        {
          goto LABEL_46;
        }

        __break(1u);
LABEL_40:
        v96[0] = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v43 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v44)
        {
          [v34 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v92 = *(&v97 + 1);
          v93 = v97;
LABEL_48:

          goto LABEL_49;
        }

        v92 = v44;
        v93 = v43;
LABEL_46:

LABEL_49:
        goto LABEL_50;
      }

LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    goto LABEL_9;
  }

  result = [v8 UTF8String];
  if (!result)
  {
    __break(1u);
    goto LABEL_121;
  }

  result = String.init(utf8String:)(result);
  v94 = v26;
  if (v26)
  {
    v10 = result;
    goto LABEL_20;
  }

LABEL_125:
  __break(1u);
  return result;
}

void specialized static InflectionRule._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of AttributedString.AttributeRunBoundaries?(*a2, *(a2 + 8));
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 automaticRule];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSInflectionRule);
    v8 = v5;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {

      v10 = 0;
      v11 = 0uLL;
LABEL_6:
      *a2 = v11;
      *(a2 + 16) = v10;
      *(a2 + 20) = BYTE4(v10);
      return;
    }
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = v5;
    v15 = [v13 morphology];
    static Morphology._unconditionallyBridgeFromObjectiveC(_:)(v15, &v17);

    v11 = v17;
    v10 = v18 | (v19 << 32);
    goto LABEL_6;
  }

  _StringGuts.grow(_:)(39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16NSInflectionRuleCSgMd);
  v16 = String.init<A>(describing:)();
  MEMORY[0x1865CB0E0](v16);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized static InflectionRule._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of AttributedString.AttributeRunBoundaries?(*a2, *(a2 + 8));
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 automaticRule];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSInflectionRule);
    v8 = v5;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {

      v10 = 0;
      v11 = 0uLL;
LABEL_6:
      *a2 = v11;
      *(a2 + 16) = v10;
      *(a2 + 20) = BYTE4(v10);
      return 1;
    }
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = v5;
    v15 = [v13 morphology];
    static Morphology._unconditionallyBridgeFromObjectiveC(_:)(v15, &v18);

    v11 = v18;
    v10 = v19 | (v20 << 32);
    goto LABEL_6;
  }

  _StringGuts.grow(_:)(39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16NSInflectionRuleCSgMd);
  v17 = String.init<A>(describing:)();
  MEMORY[0x1865CB0E0](v17);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static Morphology._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{

  LOWORD(v20[0]) = 3587;
  BYTE2(v20[0]) = 6;
  v4 = MEMORY[0x1E69E7CC8];
  v20[1] = MEMORY[0x1E69E7CC8];
  v21 = 33751822;
  v22 = 2;
  v5 = a1;
  v6 = [v5 grammaticalGender];
  if ((v6 - 1) >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = (v6 - 1);
  }

  v8 = [v5 number];
  if ((v8 - 1) >= 6)
  {
    v9 = 393216;
  }

  else
  {
    v9 = (v8 - 1) << 16;
  }

  Morphology.PartOfSpeech.init(rawValue:)([v5 partOfSpeech]);
  Morphology.PartOfSpeech.init(rawValue:)([v5 grammaticalCase]);
  v10 = [v5 determination];
  v11 = [v5 pronounType];
  v12 = 0x2000000;
  if (v10 == 2)
  {
    v12 = 0x1000000;
  }

  if (v10 == 1)
  {
    v12 = 0;
  }

  v13 = v20[0] & 0xFFFFFFFFFF000000;
  v14 = ((0x2010003u >> (8 * v11)) & 3) << 16;
  if (v11 >= 4)
  {
    v14 = 196608;
  }

  v15 = v19 | 0x300 | v12 | v14;
  v16 = [v5 definiteness];

  outlined destroy of Morphology(v20);
  v17 = 2;
  if (v16 == 2)
  {
    v17 = 1;
  }

  if (v16 == 1)
  {
    v17 = 0;
  }

  *a2 = v13 | v9 | (v19 << 8) | v7;
  *(a2 + 8) = v4;
  *(a2 + 20) = v17;
  *(a2 + 16) = v15;
  return 1;
}

unint64_t lazy protocol witness table accessor for type Morphology.CustomPronoun and conformance Morphology.CustomPronoun()
{
  result = lazy protocol witness table cache variable for type Morphology.CustomPronoun and conformance Morphology.CustomPronoun;
  if (!lazy protocol witness table cache variable for type Morphology.CustomPronoun and conformance Morphology.CustomPronoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.CustomPronoun and conformance Morphology.CustomPronoun);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InflectionRule(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 21))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InflectionRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 13) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for InflectionRule(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Morphology.Pronoun(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
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

uint64_t storeEnumTagSinglePayload for Morphology.Pronoun(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
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

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Morphology.CustomPronoun(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Morphology.CustomPronoun(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized Collection.underestimatedCount.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v156 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v124 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v155 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v124 - v5;
  v7 = v0[1];
  v8 = v0[15];
  v9 = v0[19];
  v10 = v0[22];
  v11 = v0[26];
  v157 = v0[23];
  v158 = v11;
  result = type metadata accessor for AttributedString.Runs();
  if (*(v0 + *(result + 28)) == 1)
  {
    v132 = v1;
    v137 = result;
    result = 0;
    v15 = *(v0 + 112);
    v16 = v0[12];
    v17 = v0[13];
    v19 = v0[8];
    v18 = v0[9];
    v139 = v0[7];
    v140 = v0[6];
    v125 = v157 >> 10;
    v21 = v0[4];
    v20 = v0[5];
    v145 = v17;
    v146 = v20;
    v128 = v18 >> 10;
    v154 = v4;
    ++v155;
    v127 = (v156 + 16);
    v126 = (v156 + 8);
    v22 = v7;
    v130 = v7;
    v131 = v16;
    v23 = v16;
    v134 = v158;
    v24 = v8;
    v25 = v0[2];
    v151 = v0[3];
    v149 = v0;
    v153 = v3;
    v26 = v19;
    v156 = v6;
    v129 = v8;
    while (1)
    {
      v164 = v15;
      if (v22 >= v8 && (v8 < v22 || v158 == 2 || v23 != 2 && v18 >> 10 >= v125))
      {
        return result;
      }

      if (v22 < v7)
      {
        goto LABEL_135;
      }

      v36 = v7 < v22;
      v37 = v132;
      v38 = v36 || v131 == 2;
      v39 = v38;
      if (!v38)
      {
        if (v23 == 2)
        {
          goto LABEL_158;
        }

        if (v128 > v18 >> 10)
        {
          goto LABEL_145;
        }
      }

      if (v22 >= v24)
      {
        if (v24 < v22)
        {
          goto LABEL_146;
        }

        if (v134 == 2)
        {
          goto LABEL_159;
        }

        if (v23 == 2)
        {
          if (!v39)
          {
            goto LABEL_157;
          }

          goto LABEL_41;
        }

        if (v18 >> 10 >= v157 >> 10)
        {
          goto LABEL_151;
        }
      }

      if ((v39 & 1) == 0)
      {
        if (v23 == 2)
        {
          goto LABEL_157;
        }

        if (v128 > v18 >> 10)
        {
          goto LABEL_149;
        }
      }

LABEL_41:
      if (v24 < v22)
      {
        goto LABEL_136;
      }

      if (v22 >= v24 && v23 != 2)
      {
        if (v134 == 2)
        {
          goto LABEL_160;
        }

        if (v157 >> 10 < v18 >> 10)
        {
          goto LABEL_147;
        }
      }

      if (v21 == 1)
      {
        goto LABEL_156;
      }

      v40 = *v0;
      if (v25 != *(*v0 + 96))
      {
        goto LABEL_156;
      }

      v148 = *v0;
      v141 = result;
      v138 = v24;
      v152 = v25;
      v143 = v23;
      v144 = v18;
      v135 = v26;
      if (v26 == 2)
      {
        v150 = v22;
        v41 = *(v40 + 72);
        if (v41)
        {
          v43 = *(v40 + 80);
          v42 = *(v40 + 88);
          swift_unknownObjectRetain();
          v44 = v21;
          v45 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v152, v151, v21, v41, v43, v42);
          swift_unknownObjectRelease();
          v40 = v148;
        }

        else
        {
          v44 = v21;
          v45 = 0;
        }

        v133 = v146 >> 11;
        v49 = *(v40 + 24);
        v50 = *(v40 + 56);
        v184 = *(v40 + 40);
        v185 = v50;
        v51 = *(v40 + 40);
        v180 = *(v40 + 24);
        v181 = v51;
        v182 = *(v40 + 56);
        v183 = v49;
        v47 = v40;
        BigString.startIndex.getter();
        v147 = v52;
        v186[0] = v183;
        v186[1] = v184;
        v187 = v185;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v186, &v159);
        v136 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v183);
        v48 = v44;
        v22 = v150;
      }

      else
      {
        v142 = v21;
        v45 = v146 >> 11;
        v46 = *(v40 + 40);
        v177 = *(v40 + 24);
        v178 = v46;
        v179 = *(v40 + 56);
        v47 = v40;
        swift_unknownObjectRetain();
        v48 = v142;
        v136 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v133 = v45;
      }

      v53 = *(v47 + 72);
      v54 = *(v47 + 96);
      v159 = v152;
      v160 = v151;
      v161 = v48;
      v35 = __OFADD__(v22, 1);
      v55 = v22 + 1;
      if (v35)
      {
        goto LABEL_138;
      }

      v56 = v149;
      if (v152 != v54)
      {
        goto LABEL_139;
      }

      v150 = v55;
      if (v48)
      {
        v57 = *(v48 + 24 * ((v151 >> ((4 * *(v48 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v147 = v45 + v57;
        if (__OFADD__(v45, v57))
        {
          goto LABEL_144;
        }

        if (!v53)
        {
          goto LABEL_137;
        }

        v58 = v149;
        result = swift_unknownObjectRetain();
        v59 = v151;
      }

      else
      {
        v60 = v151;
        swift_unknownObjectRetain();
        v61 = specialized Rope._Node.subscript.getter(v60, v53);

        v147 = v45 + v61;
        if (__OFADD__(v45, v61))
        {
          goto LABEL_150;
        }

        v58 = v56;
        v59 = v151;
        if (!v53)
        {
          goto LABEL_137;
        }
      }

      if (v59 >= (((-15 << ((4 * *(v53 + 18) + 8) & 0x3C)) - 1) & *(v53 + 18) | (*(v53 + 16) << ((4 * *(v53 + 18) + 8) & 0x3C))))
      {
        goto LABEL_137;
      }

      if (v48 && (v62 = v48, v63 = (4 * *(v48 + 18) + 8) & 0x3C, v64 = ((v59 >> v63) & 0xF) + 1, v64 < *(v62 + 16)))
      {
        v65 = v59;
        swift_unknownObjectRelease();
        v66 = (v64 << v63) | ((-15 << v63) - 1) & v65;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v159, v53))
      {
        swift_unknownObjectRelease();
        v66 = v160;
      }

      else
      {
        v67 = *(v53 + 18);
        v68 = *(v53 + 16);
        swift_unknownObjectRelease();
        v66 = ((-15 << ((4 * v67 + 8) & 0x3C)) - 1) & v67 | (v68 << ((4 * v67 + 8) & 0x3C));
        v159 = v152;
        v160 = v66;
        v161 = 0;
      }

      v151 = v66;
      v152 = v159;
      v21 = v161;
      v69 = *(v137 + 24);
      if (v164)
      {
        v142 = v161;
        (*v127)(v153, v58 + v69, v37);
        if (v143 == 2)
        {
          v70 = v136;
        }

        else
        {
          v70 = v144;
        }

        v71 = v156;
        RangeSet.ranges.getter();
        v72 = v154;
        v73 = RangeSet.Ranges.count.getter();
        v74 = v72;
        v75 = *v155;
        result = (*v155)(v71, v74);
        if (v73 < 1)
        {
          goto LABEL_131;
        }

        v76 = 0;
        v77 = v70 >> 10;
        while (!__OFADD__(v76, v73))
        {
          v78 = (v76 + v73) / 2;
          v79 = v156;
          v80 = v37;
          RangeSet.ranges.getter();
          v81 = v154;
          RangeSet.Ranges.subscript.getter();
          result = v75(v79, v81);
          if (v77 < v159 >> 10)
          {
            v73 = (v76 + v73) / 2;
          }

          else
          {
            v82 = (v76 + v73) / 2;
            v83 = v163;
            if (v77 < v163 >> 10)
            {
              result = (*v126)(v153, v80);
              v85 = v154;
              v145 = v82;
              v21 = v142;
              goto LABEL_83;
            }

            v76 = v78 + 1;
          }

          v37 = v80;
          if (v76 >= v73)
          {
            goto LABEL_131;
          }
        }

        goto LABEL_132;
      }

      v84 = v156;
      RangeSet.ranges.getter();
      v85 = v154;
      RangeSet.Ranges.subscript.getter();
      v75 = *v155;
      result = (*v155)(v84, v85);
      v83 = v163;
LABEL_83:
      v25 = v152;
      v22 = v150;
      if (v147 >= (v83 >> 11))
      {
        v90 = v145 + 1;
        if (__OFADD__(v145, 1))
        {
          goto LABEL_148;
        }

        v91 = v156;
        RangeSet.ranges.getter();
        v92 = RangeSet.Ranges.count.getter();
        v75(v91, v85);
        if (v90 == v92)
        {
          v0 = v149;
          v22 = v149[15];
          v25 = v149[16];
          v21 = v149[18];
          v151 = v149[17];
          v93 = v149[19];
          v94 = v149[20];
          v26 = v149[22];
          v139 = v149[21];
          v140 = v94;
          v18 = v149[23];
          v23 = v149[26];
          v145 = v149[27];
          v146 = v93;
          v157 = v18;
          v134 = v23;
          v24 = v22;
          v15 = *(v149 + 224);
          v34 = v141;
          v8 = v129;
          v7 = v130;
        }

        else
        {
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          result = v75(v91, v85);
          v95 = v148;
          v96 = *(v148 + 72);
          v97 = *(v148 + 88);
          v98 = v159 >> 11;
          if (v96)
          {
            v99 = *(v148 + 88);
          }

          else
          {
            v99 = 0;
          }

          if (v99 < v98)
          {
            goto LABEL_153;
          }

          v100 = *(v148 + 96);
          v143 = v162;
          v144 = v159;
          v152 = v100;
          v146 = v161;
          v147 = v160;
          if (v96)
          {
            v101 = *(v148 + 80);
            v103 = (v96 + 16);
            v102 = *(v96 + 16);
            v104 = *(v96 + 18);
            if (v98 < v97 && *(v96 + 16))
            {
              result = swift_unknownObjectRetain_n();
              v150 = v97;
              if (!v104)
              {
                v151 = 0;
                v21 = v96;
LABEL_116:
                v115 = 0;
                v116 = 24;
                v112 = v98;
                while (1)
                {
                  v117 = *(v21 + v116);
                  v98 = v112 - v117;
                  if (__OFSUB__(v112, v117))
                  {
                    goto LABEL_141;
                  }

                  if (__OFADD__(v98, 1))
                  {
                    goto LABEL_142;
                  }

                  if (v98 + 1 < 1)
                  {
                    goto LABEL_125;
                  }

                  ++v115;
                  v116 += 24;
                  v112 -= v117;
                  if (v102 == v115)
                  {
                    v115 = v102;
                    goto LABEL_123;
                  }
                }
              }

              v145 = v101;
              v151 = v104;
              v105 = v96;
              do
              {
                v106 = *v103;
                if (*v103)
                {
                  v108 = 0;
                  v109 = (v96 + 40);
                  while (1)
                  {
                    v110 = *v109;
                    v109 += 3;
                    v111 = v98 - v110;
                    if (__OFSUB__(v98, v110))
                    {
                      goto LABEL_133;
                    }

                    if (__OFADD__(v111, 1))
                    {
                      goto LABEL_134;
                    }

                    if (v111 + 1 < 1)
                    {
                      v106 = v108;
                      goto LABEL_100;
                    }

                    ++v108;
                    v98 = v111;
                    if (v106 == v108)
                    {
                      goto LABEL_109;
                    }
                  }
                }

                v111 = v98;
LABEL_109:
                if (v111)
                {
                  goto LABEL_143;
                }

                v98 = 0;
LABEL_100:
                v151 = (v106 << ((4 * v104 + 8) & 0x3C)) | ((-15 << ((4 * v104 + 8) & 0x3C)) - 1) & v151;
                v107 = *(v96 + 24 + 24 * v106);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v103 = (v107 + 16);
                LOBYTE(v104) = *(v107 + 18);
                v96 = v107;
              }

              while (v104);
              v114 = v107;
              LODWORD(v102) = *v103;
              if (*v103)
              {
                v21 = v107;
                v96 = v105;
                v101 = v145;
                goto LABEL_116;
              }

              v115 = 0;
              v21 = v114;
              v96 = v105;
              v101 = v145;
LABEL_123:
              if (!v98)
              {
                v112 = 0;
LABEL_125:
                swift_unknownObjectRelease();
                v113 = v151 & 0xFFFFFFFFFFFFF0FFLL | (v115 << 8);
                goto LABEL_126;
              }

              goto LABEL_155;
            }

            swift_unknownObjectRetain();
            v113 = ((-15 << ((4 * v104 + 8) & 0x3C)) - 1) & v104 | (v102 << ((4 * v104 + 8) & 0x3C));
            v112 = 0;
            v21 = 0;
LABEL_126:
            v151 = v113;
            v150 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v152, v113, v21, v96, v101);
            result = swift_unknownObjectRelease();
            v95 = v148;
          }

          else
          {
            v112 = 0;
            v21 = 0;
            v150 = 0;
            v151 = 0;
          }

          v145 = v90;
          v118 = *(v95 + 40);
          v174 = *(v95 + 24);
          v175 = v118;
          v176 = *(v95 + 56);
          if (__OFSUB__(0, v112))
          {
            goto LABEL_154;
          }

          swift_unknownObjectRetain();
          v120 = v143;
          v119 = v144;
          v146 = BigString.UTF8View.index(_:offsetBy:)();
          v139 = v122;
          v140 = v121;
          v26 = v123;
          swift_unknownObjectRelease();
          v23 = v120;
          v18 = v119;
          v15 = 0;
          v0 = v149;
          v22 = v150;
          v34 = v141;
          v8 = v129;
          v7 = v130;
          v24 = v138;
          v25 = v152;
        }
      }

      else
      {
        if (v135 == 2)
        {
          v27 = *(v148 + 24);
          v28 = *(v148 + 56);
          v172 = *(v148 + 40);
          v173 = v28;
          v29 = *(v148 + 40);
          v168 = *(v148 + 24);
          v169 = v29;
          v170 = *(v148 + 56);
          v171 = v27;
          BigString.startIndex.getter();
          v188[0] = v171;
          v188[1] = v172;
          v189 = v173;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v188, &v159);
          v30 = BigString.UTF8View.index(_:offsetBy:)();
          v139 = v32;
          v140 = v31;
          v26 = v33;
          outlined destroy of BigString(&v171);
        }

        else
        {
          v86 = *(v148 + 40);
          v165 = *(v148 + 24);
          v166 = v86;
          v167 = *(v148 + 56);
          if (__OFSUB__(v147, v133))
          {
            goto LABEL_152;
          }

          swift_unknownObjectRetain();
          v30 = BigString.UTF8View.index(_:offsetBy:)();
          v139 = v88;
          v140 = v87;
          v26 = v89;
          swift_unknownObjectRelease();
        }

        v15 = 0;
        v146 = v30;
        v18 = v30;
        v23 = v26;
        v0 = v149;
        v34 = v141;
        v8 = v129;
        v7 = v130;
        v24 = v138;
      }

      v35 = __OFADD__(v34, 1);
      result = v34 + 1;
      if (v35)
      {
        goto LABEL_140;
      }
    }
  }

  v13 = v8 - v7;
  if (!__OFSUB__(v8, v7))
  {
    if (v158 == 2)
    {
      if (v10 != 2)
      {
LABEL_9:
        v14 = 1;
LABEL_10:
        result = v13 + v14;
        if (!__OFADD__(v13, v14))
        {
          return result;
        }

        goto LABEL_130;
      }
    }

    else if (v10 == 2 || (v157 ^ v9) >= 0x400)
    {
      goto LABEL_9;
    }

    v14 = 0;
    goto LABEL_10;
  }

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
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}

uint64_t specialized SetAlgebra.subtracting(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2 ^ result;
  if (a2 == result)
  {
    v3 = 0xFFFFLL;
  }

  v4 = result ^ 0xFFFF;
  v5 = 0xFFFFLL;
  if (result == 0xFFFF)
  {
    v4 = 0xFFFFLL;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v3 = v4;
  }

  v6 = v3 & v5;
  if (!v6)
  {
    v6 = 0xFFFFLL;
  }

  *a3 = v6;
  return result;
}

uint64_t specialized SetAlgebra.subtracting(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6[1] = a2;
  v5[0] = a1;
  v5[1] = a2;
  swift_retain_n();

  IndexSet.symmetricDifference(_:)(v5, v6);

  IndexSet.intersection(_:)(v6, a3);
}

uint64_t specialized SetAlgebra.subtract(_:)(uint64_t a1)
{
  v2 = *v1;
  v6 = a1;
  v7 = v2;

  IndexSet.symmetricDifference(_:)(&v6, &v8);

  v3 = *v1;
  v5 = v8;
  v6 = v3;
  IndexSet.intersection(_:)(&v5, &v7);

  *v1 = v7;
}

uint64_t specialized SetAlgebra.subtract(_:)(uint64_t result)
{
  v2 = *v1;
  if (!*v1)
  {
    v3 = 0xFFFFLL;
    if (result == 0xFFFF)
    {
      goto LABEL_4;
    }

    v4 = result ^ 0xFFFF;
    goto LABEL_8;
  }

  if (v2 != result)
  {
    v4 = v2 ^ result;
LABEL_8:
    v3 = v4 & v2;
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v3 = result;
  if (result)
  {
LABEL_4:
    *v1 = v3;
    return result;
  }

LABEL_9:
  *v1 = 0xFFFFLL;
  return result;
}

uint64_t *IndexSet.RangeView.init(indexSet:intersecting:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *result;
  if (a4)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(a3, a2))
  {
    v7 = [objc_allocWithZone(NSIndexSet) initWithIndexesInRange_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
    inited = swift_initStackObject();
    *(inited + 16) = v7;
    *(inited + 24) = 0;
    v9[0] = inited;
    v9[1] = v6;
    IndexSet.intersection(_:)(v9, &v10);

    v6 = v10;
LABEL_4:
    result = [*(v6 + 16) rangeCount];
    *a5 = 0;
    a5[1] = result;
    a5[2] = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IndexSet.RangeView.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

char *IndexSet.RangeView.subscript.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  result = [*(v2 + 16) rangeAtIndex_];
  v6 = __OFADD__(result, v5);
  v7 = &result[v5];
  v8 = v6;
  if (v3)
  {
    if (v8)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v7 >= result)
    {
LABEL_10:
      if (v7 >= result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= result)
  {
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t IndexSet.RangeView.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  *(a3 + 16) = *v3;
  *(a3 + 32) = v4;
  *a3 = a1;
  *(a3 + 8) = a2;
}

Swift::Int __swiftcall IndexSet.RangeView.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall IndexSet.RangeView.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance IndexSet.RangeView@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *(a2 + 32) = *(v2 + 2);
  *a2 = *a1;
  *(a2 + 16) = v3;
}

uint64_t protocol witness for Collection.indices.getter in conformance IndexSet.RangeView@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v2;
  a1[4] = v3;
}

__n128 protocol witness for Sequence.makeIterator() in conformance IndexSet.RangeView@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = result.n128_u64[0];
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance IndexSet.RangeView()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v0[1], v0[2]);

  return v1;
}

uint64_t IndexSet.Index.description.getter()
{
  v1 = *(v0 + 24);
  _StringGuts.grow(_:)(40);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v2);

  MEMORY[0x1865CB0E0](0x61722061206E6920, 0xEF20666F2065676ELL);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0, 0xE000000000000000);

  result = MEMORY[0x1865CB0E0](0x2065676E61725B20, 0xE900000000000023);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v4);

    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v5);

    MEMORY[0x1865CB0E0](93, 0xE100000000000000);
    return 0x207865646E69;
  }

  return result;
}

void IndexSet.hash(into:)()
{
  v1 = *(*v0 + 16);
  NSObject.hash(into:)();
}

id IndexSet.rangeView.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 16);

  result = [v4 rangeCount];
  *a1 = 0;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t *IndexSet.rangeView(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;

  return IndexSet.RangeView.init(indexSet:intersecting:)(&v8, a1, a2, 0, a3);
}

uint64_t *IndexSet.rangeView<A>(of:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5[1] = 0x7FFFFFFFFFFFFFFFLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v5[0] = v3;

  return IndexSet.RangeView.init(indexSet:intersecting:)(v5, v5[2], v5[3], 0, a1);
}

uint64_t IndexSet.subscript.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 80) = *v2;
  v3 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = a1[4];
}

Swift::Int_optional __swiftcall IndexSet.integerGreaterThan(_:)(Swift::Int a1)
{
  v1 = IndexSet.integerGreaterThan(_:)(a1, &selRef_indexGreaterThanIndex_);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::Int_optional __swiftcall IndexSet.integerLessThan(_:)(Swift::Int a1)
{
  v1 = IndexSet.integerGreaterThan(_:)(a1, &selRef_indexLessThanIndex_);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::Int_optional __swiftcall IndexSet.integerGreaterThanOrEqualTo(_:)(Swift::Int a1)
{
  v1 = IndexSet.integerGreaterThan(_:)(a1, &selRef_indexGreaterThanOrEqualToIndex_);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::Int_optional __swiftcall IndexSet.integerLessThanOrEqualTo(_:)(Swift::Int a1)
{
  v1 = IndexSet.integerGreaterThan(_:)(a1, &selRef_indexLessThanOrEqualToIndex_);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

id IndexSet.integerGreaterThan(_:)(uint64_t a1, SEL *a2)
{
  result = [*(*v2 + 16) *a2];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

char *IndexSet.indexRange(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (a1 == a2)
  {
    goto LABEL_9;
  }

  v8 = [*(v5 + 16) firstIndex];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  v9 = v8;
  result = [*(v5 + 16) lastIndex];
  if (result == 0x7FFFFFFFFFFFFFFFLL || result < a1)
  {
    goto LABEL_9;
  }

  v11 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v11 < v9 || (v12 = [*(v5 + 16) indexGreaterThanOrEqualToIndex_], v12 == 0x7FFFFFFFFFFFFFFFLL) || (v13 = v12, v14 = objc_msgSend(*(v5 + 16), sel_indexLessThanOrEqualToIndex_, v11), v14 == 0x7FFFFFFFFFFFFFFFLL))
    {
LABEL_9:
      *&v24[0] = v5;
      result = IndexSet._index(ofInteger:)(0, v27);
      v15 = *v27;
      v16 = *&v27[16];
      v17 = *&v27[32];
      *a3 = *v27;
      *(a3 + 16) = v16;
      *(a3 + 32) = v17;
      *(a3 + 40) = v15;
      *(a3 + 56) = v16;
      *(a3 + 72) = v17;
      return result;
    }

    v18 = v14;
    IndexSet._index(ofInteger:)(v13, v27);
    v22 = *&v27[16];
    v23 = *v27;
    v19 = *&v27[32];
    IndexSet._index(ofInteger:)(v18, v27);
    v25 = *&v27[32];
    v26 = v5;
    v24[0] = *v27;
    v24[1] = *&v27[16];
    result = IndexSet.index(after:)(v24, v27);
    v20 = *v27;
    if (*v27 >= v23)
    {
      *a3 = v23;
      *(a3 + 16) = v22;
      *(a3 + 32) = v19;
      *(a3 + 40) = v20;
      v21 = *&v27[24];
      *(a3 + 48) = *&v27[8];
      *(a3 + 64) = v21;
      return result;
    }
  }

  __break(1u);
  return result;
}

char *IndexSet._index(ofInteger:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = [*(*v2 + 16) rangeCount];
  result = [*(v5 + 16) _indexOfRangeContainingIndex_];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a2 = a1;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
LABEL_13:
    a2[4] = v6;
    return result;
  }

  v8 = result;
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  result = [v9 rangeAtIndex_];
  v12 = &result[v11];
  v13 = __OFADD__(result, v11);
  if (v10)
  {
    if (v13)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v12 >= result)
    {
LABEL_12:
      *a2 = a1;
      a2[1] = result;
      a2[2] = v12;
      a2[3] = v8;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 >= result)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

char *IndexSet.index(after:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __OFADD__(*a1, 1);
  result = (*a1 + 1);
  if (v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  if (result != v6)
  {
LABEL_15:
    *a2 = result;
    a2[1] = v7;
    a2[2] = v6;
    a2[3] = v8;
    a2[4] = v9;
    return result;
  }

  v10 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = a1[2];
  if (v10 == v9)
  {
    goto LABEL_15;
  }

  v11 = a2;
  v12 = *(*v2 + 16);
  v13 = *(*v2 + 24);
  result = [v12 rangeAtIndex_];
  v6 = &result[v14];
  v15 = __OFADD__(result, v14);
  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >= result)
  {
LABEL_14:
    a2 = v11;
    v7 = result;
    v8 = v10;
    goto LABEL_15;
  }

  __break(1u);
LABEL_12:
  if (v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 >= result)
  {
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *IndexSet.indexRange<A>(in:)@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  return IndexSet.indexRange(in:)(v3, v4, a1);
}

id IndexSet.count(in:)(uint64_t a1, uint64_t a2)
{
  result = *(*v2 + 16);
  v5 = __OFSUB__(a2, a1);
  if (*(*v2 + 24))
  {
    if (!v5)
    {
      return [result countOfIndexesInRange_];
    }

    __break(1u);
  }

  if (!v5)
  {
    return [result countOfIndexesInRange_];
  }

  __break(1u);
  return result;
}

id IndexSet.count<A>(in:)()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = *(v1 + 16);
  v3 = __OFSUB__(v5, v4);
  if (*(v1 + 24))
  {
    if (!v3)
    {
      return [result countOfIndexesInRange_];
    }

    __break(1u);
  }

  if (!v3)
  {
    return [result countOfIndexesInRange_];
  }

  __break(1u);
  return result;
}

id IndexSet.contains(integersIn:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 16);
  if (*(*v1 + 24))
  {
    v4 = *(v2 + 16);
    v5 = v3;
    [v4 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
    swift_dynamicCast();
    v6 = v11;
    v7 = [v5 containsIndexes_];
  }

  else
  {
    v8 = *(v2 + 16);
    v9 = v3;
    [v8 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
    swift_dynamicCast();
    v6 = v11;
    v7 = [v9 containsIndexes_];
  }

  return v7;
}

id IndexSet.contains(integersIn:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = *(*v3 + 16);
  v6 = __OFSUB__(a2, a1);
  if (*(*v3 + 24))
  {
    if (!v6)
    {
      return [result *a3];
    }

    __break(1u);
  }

  if (!v6)
  {
    return [result *a3];
  }

  __break(1u);
  return result;
}

id IndexSet.contains<A>(integersIn:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = *(v6 + 16);
  v8 = __OFSUB__(v10, v9);
  if (*(v6 + 24))
  {
    if (!v8)
    {
      return [result *a4];
    }

    __break(1u);
  }

  if (!v8)
  {
    return [result *a4];
  }

  __break(1u);
  return result;
}

char *IndexSet.index(before:)@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  v5 = *a1;
  result = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  if (v5 != result)
  {
    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_14:
    result = v5;
LABEL_18:
    *a2 = v5;
    a2[1] = result;
    a2[2] = v6;
    a2[3] = v7;
    a2[4] = v8;
    return result;
  }

  v9 = __OFSUB__(v7--, 1);
  if (v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = a2;
  v11 = *(*v2 + 16);
  v12 = *(*v2 + 24);
  result = [v11 rangeAtIndex_];
  v6 = &result[v13];
  v14 = __OFADD__(result, v13);
  if (v12)
  {
    if (v14)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    a2 = v10;
    if (v6 < result)
    {
      __break(1u);
LABEL_11:
      v9 = __OFSUB__(v5--, 1);
      if (!v9)
      {
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  a2 = v10;
  if (v6 >= result)
  {
LABEL_17:
    v5 = v6 - 1;
    if (!__OFSUB__(v6, 1))
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
  return result;
}

Swift::Int_optional __swiftcall IndexSet.update(with:)(Swift::Int with)
{
  if (*(*v1 + 24) != 1)
  {
    v4 = *(*v1 + 16);
LABEL_6:
    v5 = v4;
    [v5 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = v10;
    *(v6 + 24) = 1;
    v7 = v10;

    *v1 = v6;
    [v7 addIndex_];

    goto LABEL_7;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(*v1 + 16);
  if ((*(*v1 + 24) & 1) == 0 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_6;
  }

  [v4 addIndex_];
LABEL_7:
  v8 = with;
  v9 = 0;
  result.value = v8;
  result.is_nil = v9;
  return result;
}

Swift::Int_optional __swiftcall IndexSet.remove(_:)(Swift::Int a1)
{
  v3 = *v1;
  v4 = [*(*v1 + 16) containsIndex_];
  v5 = *v1;
  if (*(v3 + 24) == 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(*v1 + 16);
    if ((*(*v1 + 24) & 1) == 0 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *(v5 + 16);
    if (*(v5 + 24) != 1)
    {
LABEL_4:
      v8 = v7;
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet);
      swift_dynamicCast();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
      v9 = swift_allocObject();
      *(v9 + 16) = v13;
      *(v9 + 24) = 1;
      v10 = v13;

      *v1 = v9;
      [v10 removeIndex_];

      goto LABEL_7;
    }
  }

  [v7 removeIndex_];
LABEL_7:
  if (v4)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 ^ 1;
  result.value = v11;
  result.is_nil = v12;
  return result;
}

uint64_t IndexSet.filteredIndexSet(in:includeInteger:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  v11 = *(*v5 + 16);
  if (*(*v5 + 24))
  {
    v39 = 0;
    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = a4;
    v12[4] = &v39;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for closure #1 in closure #1 in IndexSet.filteredIndexSet(in:includeInteger:);
    *(v13 + 24) = v12;
    v37 = partial apply for thunk for @callee_guaranteed (@unowned Int, @unowned UnsafeMutablePointer<ObjCBool>) -> (@unowned Bool);
    v38 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = thunk for @escaping @callee_guaranteed (@unowned Int, @unowned UnsafeMutablePointer<ObjCBool>) -> (@unowned Bool);
    v36 = &block_descriptor_11;
    v14 = _Block_copy(&aBlock);
    v15 = v11;

    v16 = [v15 indexesInRange:v9 options:v6 passingTest:{0, v14}];
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
        v18 = swift_allocObject();
        v19 = v16;
        [v19 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
        swift_dynamicCast();
        *(v18 + 16) = v32;
        *(v18 + 24) = 0;

        v20 = v39;
        if (v39)
        {
LABEL_6:
          v21 = v20;
          swift_willThrow();

LABEL_15:
        }
      }

      else
      {
        v29 = [objc_allocWithZone(NSIndexSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
        v18 = swift_allocObject();
        *(v18 + 16) = v29;
        *(v18 + 24) = 0;
        v20 = v39;
        if (v39)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v39 = 0;
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = &v39;
  v23 = swift_allocObject();
  *(v23 + 16) = closure #1 in closure #1 in IndexSet.filteredIndexSet(in:includeInteger:)partial apply;
  *(v23 + 24) = v22;
  v37 = thunk for @callee_guaranteed (@unowned Int, @unowned UnsafeMutablePointer<ObjCBool>) -> (@unowned Bool)partial apply;
  v38 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed (@unowned Int, @unowned UnsafeMutablePointer<ObjCBool>) -> (@unowned Bool);
  v36 = &block_descriptor_14;
  v24 = _Block_copy(&aBlock);

  v15 = v11;

  v25 = [v15 indexesInRange:v9 options:v6 passingTest:{0, v24}];
  _Block_release(v24);
  v26 = swift_isEscapingClosureAtFileLocation();

  if ((v26 & 1) == 0)
  {
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
      v18 = swift_allocObject();
      v27 = v25;
      [v27 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
      swift_dynamicCast();
      *(v18 + 16) = v32;
      *(v18 + 24) = 0;

      v28 = v39;
      if (!v39)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v30 = [objc_allocWithZone(NSIndexSet) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
      v18 = swift_allocObject();
      *(v18 + 16) = v30;
      *(v18 + 24) = 0;
      v28 = v39;
      if (!v39)
      {
LABEL_16:

        *a5 = v18;
      }
    }

    v31 = v28;
    swift_willThrow();

    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (!v5)
  {
    return IndexSet.filteredIndexSet(in:includeInteger:)(result, v6, a3, a4, a5);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall IndexSet.shift(startingAt:by:)(Swift::Int startingAt, Swift::Int by)
{
  if (*(*v2 + 24) != 1)
  {
    v6 = *(*v2 + 16);
LABEL_8:
    v7 = v6;
    [v7 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;
    *(v8 + 24) = 1;
    v9 = v10;

    *v2 = v8;
    [v9 shiftIndexesStartingAtIndex:startingAt by:by];

    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(*v2 + 16);
  if ((*(*v2 + 24) & 1) == 0 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_8;
  }

  [v6 shiftIndexesStartingAtIndex:startingAt by:by];
}

Swift::Int IndexSet.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance IndexSet@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  IndexSet.intersection(_:)(a1, a2);
}

Swift::Int protocol witness for SetAlgebra.remove(_:) in conformance IndexSet@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IndexSet.remove(_:)(*a1);
  *a2 = v4.value;
  *(a2 + 8) = v4.is_nil;
  return v4.value;
}

unint64_t protocol witness for SetAlgebra.update(with:) in conformance IndexSet@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result = IndexSet.update(with:)(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance IndexSet(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  v5 = *v4;
  v7[0] = *a1;
  v7[1] = v5;
  a4(&v8, v7);

  *v4 = v8;
}

uint64_t protocol witness for SetAlgebra.subtracting(_:) in conformance IndexSet@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  specialized SetAlgebra.subtracting(_:)(*a1, *v2, a2);
}

uint64_t protocol witness for SetAlgebra.isSubset(of:) in conformance IndexSet(uint64_t *a1)
{
  v2 = *a1;
  v6 = *v1;
  v7 = v2;

  IndexSet.intersection(_:)(&v7, &v5);

  v3 = specialized static IndexSet.== infix(_:_:)(&v5, &v6);

  return v3 & 1;
}

BOOL protocol witness for SetAlgebra.isDisjoint(with:) in conformance IndexSet(uint64_t *a1)
{
  v4 = *a1;

  IndexSet.intersection(_:)(&v4, &v3);

  v1 = [*(v3 + 16) count];

  return v1 == 0;
}

uint64_t protocol witness for SetAlgebra.isSuperset(of:) in conformance IndexSet(uint64_t *a1)
{
  v2 = *v1;
  v6 = *a1;
  v7 = v2;

  IndexSet.intersection(_:)(&v7, &v5);

  v3 = specialized static IndexSet.== infix(_:_:)(&v5, &v6);

  return v3 & 1;
}

uint64_t protocol witness for Collection.indices.getter in conformance IndexSet@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  v3 = a1 + 6;

  IndexSet.startIndex.getter(a1 + 1);
  return IndexSet.endIndex.getter(v3);
}

char *protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance IndexSet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 32);
  v6 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v6;
  v11 = *(a3 + 32);
  return specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(v8, a2, v10, *v4, a4);
}

char *protocol witness for BidirectionalCollection.distance(from:to:) in conformance IndexSet(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v9 = *(a2 + 32);
  return specialized BidirectionalCollection._distance(from:to:)(v6, v8, *v2);
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance IndexSet(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[5];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance IndexSet(void *result, void *a2)
{
  if (*result < *a2 || a2[5] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[5] < result[5])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance IndexSet()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t IndexSet.description.getter()
{
  [*(*v0 + 16) count];
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v1);

  MEMORY[0x1865CB0E0](0x73657865646E6920, 0xE800000000000000);
  return 0;
}

uint64_t IndexSet.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22[-1] - v6;
  v8 = *v0;
  v9 = *(*v0 + 16);

  v10 = specialized _copyCollectionToContiguousArray<A>(_:)(0, [v9 rangeCount], v8);

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySnySiGGMd);
  *&v23 = v10;
  v21 = xmmword_1812E1510;
  outlined init with take of Any(&v23, v22);
  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  v11[2] = v13 + 1;
  v14 = &v11[6 * v13];
  v15 = v21;
  v16 = v22[1];
  v14[3] = v22[0];
  v14[4] = v16;
  v14[2] = v15;
  *&v21 = v8;
  *&v23 = v11;
  v17 = *MEMORY[0x1E69E75B8];
  v18 = type metadata accessor for Mirror.DisplayStyle();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v7, v17, v18);
  (*(v19 + 56))(v7, 0, 1, v18);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A], &_sSaySSSg5label_yp5valuetGMd);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for IteratorProtocol.next() in conformance IndexSetBoundaryIterator@<X0>(uint64_t a1@<X8>)
{
  result = IndexSetBoundaryIterator.next()();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t static IndexSet._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
  v4 = swift_allocObject();
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
  result = swift_dynamicCast();
  *(v4 + 16) = v6;
  *(v4 + 24) = 0;
  *a2 = v4;
  return result;
}

uint64_t static IndexSet._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
  v4 = swift_allocObject();
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
  swift_dynamicCast();
  *(v4 + 16) = v6;
  *(v4 + 24) = 0;
  *a2 = v4;
  return 1;
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance IndexSet()
{
  [*(*v0 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
  swift_dynamicCast();
  return v2;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance IndexSet(void *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
  v4 = swift_allocObject();
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
  result = swift_dynamicCast();
  *(v4 + 16) = v6;
  *(v4 + 24) = 0;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance IndexSet(void *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
  v4 = swift_allocObject();
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
  swift_dynamicCast();
  *(v4 + 16) = v6;
  *(v4 + 24) = 0;
  *a2 = v4;
  return 1;
}

uint64_t NSIndexSet._toCustomAnyHashable()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
  v1 = swift_allocObject();
  v2 = v0;
  [v2 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
  swift_dynamicCast();
  *(v1 + 16) = v4;
  *(v1 + 24) = 0;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSIndexSet()
{
  v1 = *v0;
  NSIndexSet._toCustomAnyHashable()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IndexSet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IndexSet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance IndexSet.RangeCodingKeys()
{
  if (*v0)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IndexSet.RangeCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IndexSet.RangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IndexSet.RangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IndexSet.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation8IndexSetV15RangeCodingKeys33_2D7761BAEB66DCEF0A109CF42C1440A7LLOGMd);
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation8IndexSetV10CodingKeys33_2D7761BAEB66DCEF0A109CF42C1440A7LLOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  lazy protocol witness table accessor for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v23 = v8;
  KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
  v22 = v7;
  v12 = [objc_allocWithZone(NSIndexSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = 0;
  v30 = v13;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v14 = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
  v15 = v23;
  if (v14)
  {
LABEL_3:
    (*(v15 + 8))(v10, v22);
    __swift_destroy_boxed_opaque_existential_1(v28);
    *v25 = v13;
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v21 = v10;
  v16 = v4;
  v17 = (v24 + 8);
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    lazy protocol witness table accessor for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys();
    dispatch thunk of UnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)();
    v27 = 0;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = 1;
    result = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v18 + result;
    if (__OFADD__(v18, result))
    {
      break;
    }

    if (v20 < v18)
    {
      goto LABEL_11;
    }

    IndexSet.insert(integersIn:)(v18, v20);
    (*v17)(v6, v16);
    __swift_project_boxed_opaque_existential_1(v28, v29);
    if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
    {
      v13 = v30;
      v10 = v21;
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

char *IndexSet.encode(to:)(void *a1)
{
  v3 = v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation8IndexSetV15RangeCodingKeys33_2D7761BAEB66DCEF0A109CF42C1440A7LLOGMd);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation8IndexSetV10CodingKeys33_2D7761BAEB66DCEF0A109CF42C1440A7LLOGMd);
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = v7;
  v21 = v9;
  KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
  v11 = *(v10 + 16);
  v26 = v10;

  v24 = [v11 rangeCount];
  if (v24)
  {
    v12 = 0;
    ++v25;
    while (1)
    {
      v13 = *(v26 + 24);
      result = [*(v26 + 16) rangeAtIndex_];
      v15 = result;
      v17 = &result[v16];
      v18 = __OFADD__(result, v16);
      if (v13)
      {
        if (v18)
        {
          goto LABEL_24;
        }

        if (v17 < result)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v18)
        {
          goto LABEL_25;
        }

        if (v17 < result)
        {
          goto LABEL_26;
        }
      }

      if (v17 < result)
      {
        break;
      }

      v19 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_22;
      }

      __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      lazy protocol witness table accessor for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys();
      dispatch thunk of UnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)();
      v30 = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (v3)
      {
        (*v25)(v6, v27);
        goto LABEL_20;
      }

      result = (v17 - v15);
      if (__OFSUB__(v17, v15))
      {
        goto LABEL_23;
      }

      v30 = 1;
      v20 = v27;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*v25)(v6, v20);
      ++v12;
      if (v19 == v24)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_20:

    (*(v22 + 8))(v21, v23);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

void *IndexSet.init(integersIn:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVySi_GGMd);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVySi_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVySiGMd);
  v35 = a1;
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVySi_GMd);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v37 == v36[0])
  {
    v32[0] = v3;
    v13 = *(v7 + 8);
    v13(v12, v6);
  }

  else
  {
    v14 = dispatch thunk of Collection.subscript.read();
    v16 = *v15;
    v14(v36, 0);
    v13 = *(v7 + 8);
    v13(v12, v6);
    if (v16 < 0)
    {
      result = (*(*(v34 - 8) + 8))(v35);
      v18 = 0;
      goto LABEL_7;
    }

    v32[0] = v3;
  }

  v17 = [objc_allocWithZone(NSIndexSet) init];
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 0;
  RangeSet.ranges.getter();
  (*(v7 + 16))(v5, v9, v6);
  v19 = *(v32[0] + 36);
  dispatch thunk of Collection.startIndex.getter();
  v13(v9, v6);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v5[v19] == v36[0])
  {
LABEL_6:
    (*(*(v34 - 8) + 8))(v35);
    result = outlined destroy of IndexingIterator<RangeSet<Int>.Ranges>(v5);
LABEL_7:
    *v33 = v18;
    return result;
  }

  while (1)
  {
    while (1)
    {
      v21 = dispatch thunk of Collection.subscript.read();
      v24 = *v22;
      v23 = v22[1];
      v21(v36, 0);
      dispatch thunk of Collection.formIndex(after:)();
      if (*(v18 + 24))
      {
        break;
      }

      result = *(v18 + 16);
LABEL_15:
      v26 = result;
      [v26 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet);
      swift_dynamicCast();
      v27 = v37;
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = 1;
      v29 = v27;

      v30 = v23 - v24;
      if (__OFSUB__(v23, v24))
      {
        goto LABEL_23;
      }

LABEL_19:
      v18 = v28;
      [v29 addIndexesInRange_];

      dispatch thunk of Collection.endIndex.getter();
      if (*&v5[v19] == v36[0])
      {
        goto LABEL_6;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = *(v18 + 16);
    if ((*(v18 + 24) & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!isUniquelyReferenced_nonNull_native)
    {
      v26 = result;
      [v26 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet);
      swift_dynamicCast();
      v31 = v37;
      v28 = swift_allocObject();
      *(v28 + 16) = v31;
      *(v28 + 24) = 1;
      v29 = v31;

      v30 = v23 - v24;
      if (__OFSUB__(v23, v24))
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (__OFSUB__(v23, v24))
    {
      break;
    }

    [result addIndexesInRange_];
    dispatch thunk of Collection.endIndex.getter();
    if (*&v5[v19] == v36[0])
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t RangeSet<>.init(_:)(uint64_t a1)
{
  [*(*a1 + 16) rangeCount];
  lazy protocol witness table accessor for type IndexSet.RangeView and conformance IndexSet.RangeView();
  return RangeSet.init<A>(_:)();
}

id specialized static IndexSet.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 16);
  if (*(*a1 + 24))
  {
    v4 = *(v2 + 16);
    v5 = v3;
    [v4 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
    swift_dynamicCast();
    v6 = v11;
    v7 = [v5 isEqualToIndexSet_];
  }

  else
  {
    v8 = *(v2 + 16);
    v9 = v3;
    [v8 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
    swift_dynamicCast();
    v6 = v11;
    v7 = [v9 isEqualToIndexSet_];
  }

  return v7;
}

uint64_t specialized static IndexSet.RangeView.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v4 = a1[2];
    v6 = a2[2];
    v7 = v4;

    v3 = specialized static IndexSet.== infix(_:_:)(&v7, &v6);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t lazy protocol witness table accessor for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.CodingKeys and conformance IndexSet.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys()
{
  result = lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeCodingKeys and conformance IndexSet.RangeCodingKeys);
  }

  return result;
}

uint64_t outlined destroy of IndexingIterator<RangeSet<Int>.Ranges>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVySi_GGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<IndexSet.RangeView> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type IndexSet.RangeView and conformance IndexSet.RangeView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IndexSet(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  a1[2] = lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  a1[3] = lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  result = lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  a1[4] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<IndexSet> and conformance <> Slice<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}