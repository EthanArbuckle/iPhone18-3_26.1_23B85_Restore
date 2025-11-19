void one-time initialization function for localizedRecoverySuggestionErrorKey()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSLocalizedRecoverySuggestion");
  v1 = @"NSLocalizedRecoverySuggestion";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static ErrorUserInfoKey.localizedRecoverySuggestionErrorKey = v4;
      unk_1EA7B96D0 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void one-time initialization function for localizedRecoveryOptionsErrorKey()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSLocalizedRecoveryOptions");
  v1 = @"NSLocalizedRecoveryOptions";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static ErrorUserInfoKey.localizedRecoveryOptionsErrorKey = v4;
      unk_1EA7B96E0 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void one-time initialization function for recoveryAttempterErrorKey()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSRecoveryAttempter");
  v1 = @"NSRecoveryAttempter";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static ErrorUserInfoKey.recoveryAttempterErrorKey = v4;
      unk_1EA7B96F0 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void one-time initialization function for helpAnchorErrorKey()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSHelpAnchor");
  v1 = @"NSHelpAnchor";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static ErrorUserInfoKey.helpAnchorErrorKey = v4;
      unk_1EA7B9700 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void one-time initialization function for stringEncodingErrorKey()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSStringEncoding");
  v1 = @"NSStringEncoding";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static ErrorUserInfoKey.stringEncodingErrorKey = v4;
      unk_1EA7B9710 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void one-time initialization function for NSURLErrorKey()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSURL");
  v1 = @"NSURL";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static ErrorUserInfoKey.NSURLErrorKey = v4;
      unk_1EA7B9720 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void one-time initialization function for filePathErrorKey()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSFilePath");
  v1 = @"NSFilePath";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static ErrorUserInfoKey.filePathErrorKey = v4;
      unk_1EA7B9730 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t static ErrorUserInfoKey.underlyingErrorKey.getter@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
}

unint64_t lazy protocol witness table accessor for type ErrorUserInfoKey and conformance ErrorUserInfoKey()
{
  result = lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey;
  if (!lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey;
  if (!lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey;
  if (!lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey;
  if (!lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey;
  if (!lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ErrorUserInfoKey and conformance ErrorUserInfoKey);
  }

  return result;
}

uint64_t NSNotificationCenter.Publisher.init(center:name:object:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void Notification.Subscription.customMirror.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = *v1;
  v21[2] = a1;
  v21[0] = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = v1[2];
  os_unfair_lock_lock(v9);
  v22 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18121D6C0;
  *(v10 + 32) = 0x7265746E6563;
  *(v10 + 40) = 0xE600000000000000;
  v11 = v1[5];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NSNotificationCenterCSgMd);
  *(v10 + 48) = v11;
  *(v10 + 72) = v12;
  *(v10 + 80) = 1701667182;
  *(v10 + 88) = 0xE400000000000000;
  v13 = v1[6];
  type metadata accessor for NSNotificationName(0);
  *(v10 + 96) = v13;
  *(v10 + 120) = v14;
  *(v10 + 128) = 0x7463656A626FLL;
  *(v10 + 136) = 0xE600000000000000;
  v15 = v2[7];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd);
  *(v10 + 144) = v15;
  *(v10 + 168) = v16;
  *(v10 + 176) = 0x646E616D6564;
  v17 = v2[4];
  *(v10 + 216) = MEMORY[0x1E695BEC8];
  *(v10 + 184) = 0xE600000000000000;
  *(v10 + 192) = v17;
  v18 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v21[0]);
  swift_unknownObjectRetain();

  v19 = v11;
  v20 = v13;
  Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  os_unfair_lock_unlock(v9);
}

void Notification.Subscription.playgroundDescription.getter(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = 0xD00000000000001BLL;
  a1[1] = 0x8000000181488730;
}

uint64_t static MeasurementFormatUnitUsage.== infix(_:_:)(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = 0x746C7561666564;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
  switch(v3)
  {
    case 1:
      v4 = 0xE600000000000000;
      v5 = 0x6E6F73726570;
      break;
    case 2:
      v4 = 0xE400000000000000;
      v5 = 1685024614;
      break;
    case 3:
      v5 = 0x682D6E6F73726570;
      v4 = 0xED00007468676965;
      break;
    case 4:
      v4 = 0xE400000000000000;
      v5 = 1684107122;
      break;
    case 5:
      v5 = 0x656C2D6C61636F66;
      v4 = 0xEC0000006874676ELL;
      break;
    case 6:
      v4 = 0xE800000000000000;
      v6 = 1852399986;
      goto LABEL_13;
    case 7:
      v4 = 0xE800000000000000;
      v6 = 2003791475;
LABEL_13:
      v5 = v6 | 0x6C6C616600000000;
      break;
    case 8:
      v4 = 0xE800000000000000;
      v5 = 0x79746C6269736976;
      break;
    case 9:
      v4 = 0xE800000000000000;
      v5 = 0x6372746D6F726162;
      break;
    case 10:
      v4 = 0xE400000000000000;
      v5 = 1684957559;
      break;
    case 11:
      v5 = 0x72656874616577;
      break;
    case 12:
      v4 = 0xE500000000000000;
      v5 = 0x6469756C66;
      break;
    case 13:
      v5 = 0x6469766F72507361;
      v4 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(*a2)
  {
    case 1:
      v7 = 0xE600000000000000;
      if (v5 == 0x6E6F73726570)
      {
        goto LABEL_41;
      }

      goto LABEL_44;
    case 2:
      v7 = 0xE400000000000000;
      if (v5 != 1685024614)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 3:
      v7 = 0xED00007468676965;
      if (v5 != 0x682D6E6F73726570)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 4:
      v7 = 0xE400000000000000;
      if (v5 != 1684107122)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 5:
      v7 = 0xEC0000006874676ELL;
      if (v5 != 0x656C2D6C61636F66)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 6:
      v7 = 0xE800000000000000;
      v8 = 1852399986;
      goto LABEL_37;
    case 7:
      v7 = 0xE800000000000000;
      v8 = 2003791475;
LABEL_37:
      if (v5 != (v8 | 0x6C6C616600000000))
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 8:
      v7 = 0xE800000000000000;
      if (v5 != 0x79746C6269736976)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 9:
      v7 = 0xE800000000000000;
      if (v5 != 0x6372746D6F726162)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 0xA:
      v7 = 0xE400000000000000;
      v2 = 1684957559;
      goto LABEL_40;
    case 0xB:
      if (v5 != 0x72656874616577)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 0xC:
      v7 = 0xE500000000000000;
      if (v5 != 0x6469756C66)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 0xD:
      v7 = 0xEA00000000006465;
      if (v5 != 0x6469766F72507361)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    default:
LABEL_40:
      if (v5 != v2)
      {
        goto LABEL_44;
      }

LABEL_41:
      if (v4 == v7)
      {
        v9 = 1;
      }

      else
      {
LABEL_44:
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return v9 & 1;
  }
}

uint64_t MeasurementFormatUnitUsage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MeasurementFormatUnitUsage<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MeasurementFormatUnitUsage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MeasurementFormatUnitUsage<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MeasurementFormatUnitUsage<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t MeasurementFormatUnitUsage.encode(to:)(void *a1)
{
  type metadata accessor for MeasurementFormatUnitUsage.CodingKeys();
  swift_getWitnessTable();
  v3 = type metadata accessor for KeyedEncodingContainer();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-v5];
  v7 = *v1;
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[31] = v7;
  lazy protocol witness table accessor for type Usage and conformance Usage();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v11);
}

Swift::Int MeasurementFormatUnitUsage.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Usage.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t MeasurementFormatUnitUsage.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = a2;
  type metadata accessor for MeasurementFormatUnitUsage.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedDecodingContainer();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v8 = v11;
    lazy protocol witness table accessor for type Usage and conformance Usage();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *v8 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MeasurementFormatUnitUsage<A>()
{
  Hasher.init(_seed:)();
  MeasurementFormatUnitUsage.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*URLRequest.url.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(*v1 + 16);
  v4 = [v3 URL];
  if (v4)
  {
    v5 = v4;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v4, &v8);

    v6 = v8;
  }

  else
  {

    v6 = 0uLL;
  }

  *a1 = v6;
  return URLRequest.url.modify;
}

id (*URLRequest.cachePolicy.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) cachePolicy];
  return URLRequest.cachePolicy.modify;
}

id URLRequest.timeoutInterval.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd);
    v5 = swift_allocObject();
    v6 = v4;
    [v6 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
    swift_dynamicCast();
    v4 = v8;
    *(v5 + 16) = v8;

    *v1 = v5;
  }

  return [v4 setTimeoutInterval_];
}

id (*URLRequest.timeoutInterval.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) timeoutInterval];
  *a1 = v3;
  return URLRequest.timeoutInterval.modify;
}

uint64_t URLRequest.url.setter(uint64_t *a1, SEL *a2)
{
  v4 = *a1;
  v5 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(*v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd);
    v8 = swift_allocObject();
    v9 = v7;
    [v9 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
    swift_dynamicCast();
    v7 = v12;
    *(v8 + 16) = v12;

    *v2 = v8;
  }

  v10 = v7;
  closure #1 in URLRequest.url.setter(v10, v4, v5, a2);

  return swift_unknownObjectRelease();
}

void closure #1 in URLRequest.url.setter(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a2)
  {
    v6 = a1;
    ObjectType = swift_getObjectType();
    v8 = (*(a3 + 432))(ObjectType, a3);
    a1 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [a1 *a4];
}

uint64_t (*URLRequest.mainDocumentURL.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(*v1 + 16);
  v4 = [v3 mainDocumentURL];
  if (v4)
  {
    v5 = v4;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v4, &v8);

    v6 = v8;
  }

  else
  {

    v6 = 0uLL;
  }

  *a1 = v6;
  return URLRequest.mainDocumentURL.modify;
}

uint64_t URLRequest.url.modify(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  v4 = a1[1];
  if (a2)
  {
    v6 = *a1;
    v7 = v4;
    swift_unknownObjectRetain();
    a3(&v6);

    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = *a1;
    v7 = v4;
    return (a3)(&v6);
  }
}

id (*URLRequest.networkServiceType.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) networkServiceType];
  return URLRequest.networkServiceType.modify;
}

id (*URLRequest.allowsCellularAccess.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) allowsCellularAccess];
  return URLRequest.allowsCellularAccess.modify;
}

id (*URLRequest.allowsExpensiveNetworkAccess.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) allowsExpensiveNetworkAccess];
  return URLRequest.allowsExpensiveNetworkAccess.modify;
}

id (*URLRequest.allowsConstrainedNetworkAccess.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) allowsConstrainedNetworkAccess];
  return URLRequest.allowsConstrainedNetworkAccess.modify;
}

id (*URLRequest.allowsUltraConstrainedNetworkAccess.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) allowsUltraConstrainedNetworkAccess];
  return URLRequest.allowsUltraConstrainedNetworkAccess.modify;
}

id (*URLRequest.assumesHTTP3Capable.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) assumesHTTP3Capable];
  return URLRequest.assumesHTTP3Capable.modify;
}

id (*URLRequest.attribution.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) attribution];
  return URLRequest.attribution.modify;
}

id (*URLRequest.requiresDNSSECValidation.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) requiresDNSSECValidation];
  return URLRequest.requiresDNSSECValidation.modify;
}

id (*URLRequest.allowsPersistentDNS.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) allowsPersistentDNS];
  return URLRequest.allowsPersistentDNS.modify;
}

id URLRequest.httpMethod.getter()
{
  v1 = *(*v0 + 16);
  v2 = [v1 HTTPMethod];
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  isTaggedPointer = _objc_isTaggedPointer(v2);
  v5 = v3;
  v6 = v5;
  if ((isTaggedPointer & 1) == 0)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v17)
    {
      v18 = v16;

LABEL_23:
      return v18;
    }

    [v6 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v18 = v19;
LABEL_22:

    goto LABEL_23;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v8;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v10 = v6;
    v11 = String.init(_nativeStorage:)();
    if (v12)
    {
      v13 = v11;

      return v13;
    }

    if (![v10 length])
    {

      return 0;
    }

    v18 = String.init(_cocoaString:)();
    goto LABEL_22;
  }

  result = [v6 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v14)
    {
      v15 = result;

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void key path getter for URLRequest.httpMethod : URLRequest(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = [v3 HTTPMethod];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(v4);
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t (*URLRequest.httpMethod.modify(uint64_t *a1))()
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
  *(v3 + 64) = v1;
  v5 = *(*v1 + 16);
  v6 = [v5 HTTPMethod];
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if ((isTaggedPointer & 1) == 0)
  {
LABEL_10:
    *(v4 + 48) = 0;
    *v4 = 0;
    *(v4 + 72) = 0;
    *(v4 + 74) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v12 = *v4;
      if (!*v4)
      {

        v14 = 0xE000000000000000;
        goto LABEL_42;
      }

      if (*(v4 + 74) == 1)
      {
        if (*(v4 + 48))
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v23 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_39;
      }

      if (*(v4 + 72))
      {
        if (*(v4 + 48) != 1)
        {
          IsCF = [v10 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v28 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v14 = v29;
        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v28 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          v12 = v28;

          goto LABEL_40;
        }
      }

LABEL_38:
      v23 = String.init(_cocoaString:)();
LABEL_39:
      v12 = v23;
      v14 = v24;
      goto LABEL_40;
    }

    v16 = v10;
    v17 = String.init(_nativeStorage:)();
    if (v18)
    {
      v12 = v17;
      v14 = v18;

LABEL_41:
      goto LABEL_42;
    }

    v22 = [v16 length];
    *v4 = v22;
    if (v22)
    {
      goto LABEL_38;
    }

LABEL_28:
    v12 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_42;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_21;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_42:
      *(v4 + 32) = v12;
      *(v4 + 40) = v14;
      return URLRequest.httpMethod.modify;
    }

    goto LABEL_10;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v20 = String.init(utf8String:)(result);
    if (v21)
    {
LABEL_22:
      v12 = v20;
      v14 = v21;

LABEL_40:
      goto LABEL_41;
    }

    __break(1u);
LABEL_21:
    *(v4 + 72) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v21)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      v25 = *(v4 + 48);
      v26 = *(v4 + 56);

      *(v4 + 32) = v25;
      *(v4 + 40) = v26;
      return URLRequest.httpMethod.modify;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void URLRequest.httpMethod.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {

    specialized URLRequest.httpMethod.setter(v3, v4, closure #1 in URLRequest.httpMethod.setter);
  }

  else
  {
    specialized URLRequest.httpMethod.setter(*(*a1 + 32), v4, closure #1 in URLRequest.httpMethod.setter);
  }

  free(v2);
}

void key path getter for URLRequest.allHTTPHeaderFields : URLRequest(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = [v3 allHTTPHeaderFields];
  if (!v4)
  {

    v6 = 0;
    goto LABEL_5;
  }

  v5 = v4;
  v7 = 0;
  _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSS_SSTt1g5(v4, &v7);
  v6 = v7;
  if (v7)
  {

LABEL_5:
    *a2 = v6;
    return;
  }

  __break(1u);
}

uint64_t URLRequest.allHTTPHeaderFields.modify(uint64_t *a1)
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
  *(v3 + 40) = v1;
  v5 = *(*v1 + 16);
  v6 = [v5 allHTTPHeaderFields];
  if (!v6)
  {
    v13 = 0;
    v7 = v5;
LABEL_45:

    *(v4 + 4) = v13;
    return URLRequest.allHTTPHeaderFields.modify;
  }

  v7 = v6;
  v8 = MEMORY[0x1E69E7CA0] + 8;
  v9 = MEMORY[0x1E69E6158];
  swift_unknownObjectRetain();
  if (v9 == v8)
  {
    v10 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (!v10)
    {
      v11 = [v7 count];
      if (v11)
      {
        v12 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
        v13 = static _DictionaryStorage.allocate(capacity:)();
        v14 = v13[6];
        v15 = v13[7];

        result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v14, v15, v7, v12);
        if ((result & 0x8000000000000000) == 0)
        {
          v17 = result;
          if (v12 >= result)
          {
            v13[2] = result;
            if (result)
            {
              v75 = v5;
              v18 = v4;
              v19 = v13 + 8;
              while (2)
              {
                v24 = v17--;
                while (((1 << v17) & v19[v17 >> 6]) == 0)
                {
                  v25 = (v13[6] + 16 * v17);
                  v26 = *v25;
                  v27 = v25[1];

                  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
                  v30 = v29;

                  if (v30)
                  {
                    v40 = v13[6] + 16 * v17;

                    outlined destroy of String(v40);
                    result = __swift_destroy_boxed_opaque_existential_1(v13[7] + 32 * v17);
                    v41 = v13[2];
                    v42 = __OFSUB__(v41, 1);
                    v43 = v41 - 1;
                    if (v42)
                    {
                      __break(1u);
                      goto LABEL_47;
                    }

                    v13[2] = v43;

                    break;
                  }

                  *(v19 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
                  if (v24 <= v28)
                  {
                    *(v13[6] + 16 * v28) = *(v13[6] + 16 * v17);
                    v20 = v13[7];
                    v21 = (v20 + 32 * v17);
                    v22 = v21[1];
                    v23 = (v20 + 32 * v28);
                    *v23 = *v21;
                    v23[1] = v22;
                    break;
                  }

                  if (v28 == v17)
                  {
                    break;
                  }

                  v31 = v13[6];
                  v32 = (v31 + 16 * v28);
                  v33 = (v31 + 16 * v17);
                  v34 = *v32;
                  v35 = v32[1];
                  v36 = v33[1];
                  *v32 = *v33;
                  v32[1] = v36;
                  *v33 = v34;
                  v33[1] = v35;
                  v37 = v13[7];
                  v38 = (v37 + 32 * v28);
                  v39 = (v37 + 32 * v17);
                  outlined init with take of Any(v38, v18);
                  outlined init with take of Any(v39, v38);
                  outlined init with take of Any(v18, v39);
                }

                if (v24 >= 2)
                {
                  continue;
                }

                break;
              }

              v4 = v18;
              v5 = v75;
            }

LABEL_43:

            goto LABEL_44;
          }
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      goto LABEL_40;
    }

LABEL_24:
    v13 = v10;
LABEL_44:

    goto LABEL_45;
  }

  v10 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v10)
  {
    goto LABEL_24;
  }

  v44 = [v7 count];
  if (!v44)
  {
LABEL_40:
    v13 = MEMORY[0x1E69E7CC8];
    goto LABEL_44;
  }

  v45 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
  v13 = static _DictionaryStorage.allocate(capacity:)();
  v46 = v13[6];
  v47 = v13[7];

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(v46, v47, v7, v45);
  if ((result & 0x8000000000000000) == 0)
  {
    v48 = result;
    if (v45 >= result)
    {
      v13[2] = result;
      if (result)
      {
        v74 = v7;
        v76 = v5;
        v49 = v13 + 8;
        while (2)
        {
          v51 = v48--;
          v52 = 16 * v48;
          while (((1 << v48) & v49[v48 >> 6]) == 0)
          {
            v53 = (v13[6] + 16 * v48);
            v54 = *v53;
            v55 = v53[1];

            v56 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v55);
            v58 = v57;

            if (v58)
            {
              v71 = v13[6];

              outlined destroy of String(v71 + v52);
              result = outlined destroy of String(v13[7] + v52);
              v72 = v13[2];
              v42 = __OFSUB__(v72, 1);
              v73 = v72 - 1;
              if (v42)
              {
LABEL_47:
                __break(1u);
                goto LABEL_48;
              }

              v13[2] = v73;

              break;
            }

            *(v49 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
            if (v51 <= v56)
            {
              v50 = 16 * v56;
              *(v13[6] + v50) = *(v13[6] + 16 * v48);
              *(v13[7] + v50) = *(v13[7] + 16 * v48);
              break;
            }

            if (v56 == v48)
            {
              break;
            }

            v59 = v13[6];
            v60 = (v59 + 16 * v56);
            v61 = (v59 + v52);
            v62 = *v60;
            v63 = v60[1];
            v64 = v61[1];
            *v60 = *v61;
            v60[1] = v64;
            *v61 = v62;
            v61[1] = v63;
            v65 = v13[7];
            v66 = (v65 + 16 * v56);
            v67 = (v65 + v52);
            v68 = *v66;
            v69 = v66[1];
            v70 = v67[1];
            *v66 = *v67;
            v66[1] = v70;
            *v67 = v68;
            v67[1] = v69;
          }

          if (v51 >= 2)
          {
            continue;
          }

          break;
        }

        v5 = v76;
        v7 = v74;
      }

      goto LABEL_43;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

void URLRequest.allHTTPHeaderFields.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {

    specialized URLRequest.allHTTPHeaderFields.setter(v4);
  }

  else
  {
    specialized URLRequest.allHTTPHeaderFields.setter(v3);
  }

  free(v2);
}

Swift::String_optional __swiftcall URLRequest.value(forHTTPHeaderField:)(Swift::String forHTTPHeaderField)
{
  v2 = *(*v1 + 16);
  v3 = String._bridgeToObjectiveCImpl()();
  v4 = v2;
  v5 = [v4 valueForHTTPHeaderField_];
  swift_unknownObjectRelease();
  if (!v5)
  {

    v14 = 0;
    v13 = 0;
    goto LABEL_26;
  }

  isTaggedPointer = _objc_isTaggedPointer(v5);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
    goto LABEL_30;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v23)
    {
      v24 = v22;
      v25 = v23;

LABEL_23:
      v13 = v25;
      v14 = v24;
      goto LABEL_26;
    }

    [v8 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v24 = v28;
    v25 = v29;
LABEL_22:

    goto LABEL_23;
  }

  if (TaggedPointerTag == 22)
  {
    v14 = [v8 UTF8String];
    if (v14)
    {
      v14 = String.init(utf8String:)(v14);
      if (v13)
      {
        v20 = v14;
        v21 = v13;

        v14 = v20;
        v13 = v21;
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_30:
    if (__CFStringIsCF())
    {

LABEL_12:
      v14 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_26;
    }

    v15 = v8;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v18 = v16;
      v19 = v17;

      v13 = v19;
      v14 = v18;
      goto LABEL_26;
    }

    if (![v15 length])
    {

      goto LABEL_12;
    }

    v24 = String.init(_cocoaString:)();
    v25 = v26;
    goto LABEL_22;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v12 = v11;

  v13 = v12;
  v14 = v10;
LABEL_26:
  result.value._object = v13;
  result.value._countAndFlagsBits = v14;
  return result;
}

void key path getter for URLRequest.httpBody : URLRequest(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = [v3 HTTPBody];
  if (v4)
  {
    v5 = v4;
    v6 = specialized Data.init(referencing:)(v5);
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t key path setter for URLRequest.httpBody : URLRequest(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  outlined copy of Data?(*a1, v2);
  specialized URLRequest.httpMethod.setter(v1, v2, closure #1 in URLRequest.httpBody.setter);

  return outlined consume of Data?(v1, v2);
}

uint64_t (*URLRequest.httpBody.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(*v1 + 16);
  v4 = [v3 HTTPBody];
  if (v4)
  {
    v5 = v4;
    v6 = specialized Data.init(referencing:)(v5);
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a1 = v6;
  a1[1] = v8;
  return URLRequest.httpBody.modify;
}

uint64_t URLRequest.httpBody.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    outlined copy of Data?(*a1, v3);
    specialized URLRequest.httpMethod.setter(v2, v3, closure #1 in URLRequest.httpBody.setter);
    outlined consume of Data?(v2, v3);
  }

  else
  {
    specialized URLRequest.httpMethod.setter(*a1, v3, closure #1 in URLRequest.httpBody.setter);
  }

  return outlined consume of Data?(v2, v3);
}

id URLRequest.httpBodyStream.getter()
{
  v1 = [*(*v0 + 16) HTTPBodyStream];

  return v1;
}

void URLRequest.httpBodyStream.setter(void *a1)
{
  specialized URLRequest.httpBodyStream.setter(a1);
}

void (*URLRequest.httpBodyStream.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) HTTPBodyStream];
  return URLRequest.httpBodyStream.modify;
}

void URLRequest.httpBodyStream.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    specialized URLRequest.httpBodyStream.setter(v4);

    v3 = v2;
  }

  else
  {
    specialized URLRequest.httpBodyStream.setter(*a1);
    v3 = v4;
  }
}

id (*URLRequest.httpShouldHandleCookies.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) HTTPShouldHandleCookies];
  return URLRequest.httpShouldHandleCookies.modify;
}

id URLRequest.cookiePartitionIdentifier.getter()
{
  v1 = *(*v0 + 16);
  v2 = [v1 cookiePartitionIdentifier];
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  isTaggedPointer = _objc_isTaggedPointer(v2);
  v5 = v3;
  v6 = v5;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v17)
    {
      v18 = v16;

      return v18;
    }

    [v6 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v18 = v19;
LABEL_22:

    return v18;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v8;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v10 = v6;
    v11 = String.init(_nativeStorage:)();
    if (v12)
    {
      v13 = v11;

      return v13;
    }

    if (![v10 length])
    {

      return 0;
    }

    v18 = String.init(_cocoaString:)();
    goto LABEL_22;
  }

  result = [v6 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v14)
    {
      v15 = result;

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void key path getter for URLRequest.cookiePartitionIdentifier : URLRequest(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = [v3 cookiePartitionIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(v4);
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t key path setter for URLRequest.httpMethod : URLRequest(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  v7 = a1[1];

  specialized URLRequest.httpMethod.setter(v6, v7, a5);
}

uint64_t URLRequest.cookiePartitionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  specialized URLRequest.httpMethod.setter(a1, a2, closure #1 in URLRequest.cookiePartitionIdentifier.setter);
}

void closure #1 in URLRequest.cookiePartitionIdentifier.setter(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a1;
    a3 = String._bridgeToObjectiveCImpl()();
    a1 = v3;
  }

  v4 = a3;
  [a1 setCookiePartitionIdentifier_];
}

void (*URLRequest.cookiePartitionIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 64) = v1;
  v5 = *(*v1 + 16);
  v6 = [v5 cookiePartitionIdentifier];
  if (!v6)
  {

    v12 = 0;
    v14 = 0;
    goto LABEL_42;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_10:
    *(v4 + 48) = 0;
    *v4 = 0;
    *(v4 + 72) = 0;
    *(v4 + 74) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v12 = *v4;
      if (!*v4)
      {

        v14 = 0xE000000000000000;
        goto LABEL_42;
      }

      if (*(v4 + 74) == 1)
      {
        if (*(v4 + 48))
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v23 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_40;
      }

      if (*(v4 + 72))
      {
        if (*(v4 + 48) != 1)
        {
          IsCF = [v10 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v14 = v26;
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v12 = v25;
          goto LABEL_24;
        }
      }
    }

    else
    {
      v16 = v10;
      v17 = String.init(_nativeStorage:)();
      if (v18)
      {
        v12 = v17;
        v14 = v18;

        goto LABEL_42;
      }

      v22 = [v16 length];
      *v4 = v22;
      if (!v22)
      {

        v12 = 0;
        v14 = 0xE000000000000000;
        goto LABEL_42;
      }
    }

    v23 = String.init(_cocoaString:)();
LABEL_40:
    v12 = v23;
    v14 = v24;
    goto LABEL_41;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_22;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_42:
      *(v4 + 32) = v12;
      *(v4 + 40) = v14;
      return URLRequest.cookiePartitionIdentifier.modify;
    }

    goto LABEL_10;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v20 = String.init(utf8String:)(result);
    if (v21)
    {
LABEL_23:
      v12 = v20;
      v14 = v21;
LABEL_24:

      goto LABEL_42;
    }

    __break(1u);
LABEL_22:
    *(v4 + 72) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v21)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      v12 = *(v4 + 48);
      v14 = *(v4 + 56);
LABEL_41:

      goto LABEL_42;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void URLRequest.cookiePartitionIdentifier.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {

    specialized URLRequest.httpMethod.setter(v3, v4, closure #1 in URLRequest.cookiePartitionIdentifier.setter);
  }

  else
  {
    specialized URLRequest.httpMethod.setter(*(*a1 + 32), v4, closure #1 in URLRequest.cookiePartitionIdentifier.setter);
  }

  free(v2);
}

id (*URLRequest.httpShouldUsePipelining.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) HTTPShouldUsePipelining];
  return URLRequest.httpShouldUsePipelining.modify;
}

void URLRequest.hash(into:)()
{
  v1 = *(*v0 + 16);
  NSObject.hash(into:)();
}

Swift::Int URLRequest.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

id URLRequest.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v139 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v131 = &v129 - v8;
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg5label_yp5valuetGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1812E6560;
  *(v10 + 32) = xmmword_1812E6570;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *(v10 + 72) = v11;
  v12 = *(v9 + 16);
  v13 = [v12 URL];
  if (v13)
  {
    v14 = v13;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v13, v138);

    v15 = *v138;
  }

  else
  {

    v15 = 0uLL;
  }

  *(v10 + 48) = v15;
  *(v10 + 80) = xmmword_1812E6580;
  v16 = [*(v9 + 16) cachePolicy];
  *(v10 + 120) = MEMORY[0x1E69E6810];
  *(v10 + 96) = v16;
  *(v10 + 128) = xmmword_1812E6590;
  [*(v9 + 16) timeoutInterval];
  *(v10 + 168) = MEMORY[0x1E69E63B0];
  *(v10 + 144) = v17;
  *(v10 + 176) = xmmword_1812E65A0;
  *(v10 + 216) = v11;
  v18 = *(v9 + 16);
  v19 = [v18 mainDocumentURL];
  v132 = v4;
  v133 = v3;
  if (v19)
  {
    v20 = v19;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v19, v138);

    v21 = *v138;
  }

  else
  {

    v21 = 0uLL;
  }

  *(v10 + 192) = v21;
  *(v10 + 224) = 0xD000000000000012;
  *(v10 + 232) = 0x8000000181488750;
  v22 = [*(v9 + 16) networkServiceType];
  type metadata accessor for NSURLRequestNetworkServiceType(0);
  *(v10 + 240) = v22;
  *(v10 + 264) = v23;
  *(v10 + 272) = 0xD000000000000014;
  *(v10 + 280) = 0x8000000181488770;
  v24 = [*(v9 + 16) allowsCellularAccess];
  *(v10 + 312) = MEMORY[0x1E69E6370];
  *(v10 + 288) = v24;
  *(v10 + 320) = xmmword_1812E65B0;
  v25 = *(v9 + 16);
  v26 = [v25 HTTPMethod];
  if (!v26)
  {

    goto LABEL_19;
  }

  v27 = v26;
  isTaggedPointer = _objc_isTaggedPointer(v26);
  v29 = v27;
  v30 = v29;
  if ((isTaggedPointer & 1) == 0)
  {
LABEL_13:
    LOBYTE(v134) = 0;
    v138[0] = 0;
    LOBYTE(v136) = 0;
    v137 = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v32 = v138[0];
      if (!v138[0])
      {

        v34 = 0xE000000000000000;
        goto LABEL_47;
      }

      if (v137 == 1)
      {
        if (v134)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v42 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_44;
      }

      if (v136)
      {
        if (v134 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          *(&v129 - 4) = v30;
          *(&v129 - 3) = v138;
          *(&v129 - 4) = 1536;
          *(&v129 - 1) = v32;
        }

        else
        {
          v44 = [v30 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v44);
          *(&v129 - 4) = v30;
          *(&v129 - 3) = v138;
          *(&v129 - 4) = 134217984;
          *(&v129 - 1) = v45;
        }

        v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v34 = v47;
        v48 = HIBYTE(v47) & 0xF;
        if ((v47 & 0x2000000000000000) == 0)
        {
          v48 = v46 & 0xFFFFFFFFFFFFLL;
        }

        if (v48)
        {
          v32 = v46;
          goto LABEL_28;
        }
      }

LABEL_43:
      v42 = String.init(_cocoaString:)();
LABEL_44:
      v32 = v42;
      v34 = v43;
      goto LABEL_45;
    }

    v36 = v30;
    v37 = String.init(_nativeStorage:)();
    if (v38)
    {
      v32 = v37;
      v34 = v38;

      goto LABEL_47;
    }

    v138[0] = [v36 length];
    if (v138[0])
    {
      goto LABEL_43;
    }

LABEL_19:
    v32 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_47;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v29);
  if (!TaggedPointerTag)
  {
    goto LABEL_26;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v129 - 2) = v30;
      v32 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v34 = v33;

      goto LABEL_47;
    }

    goto LABEL_13;
  }

  result = [v30 UTF8String];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v40 = String.init(utf8String:)(result);
  if (!v41)
  {
    __break(1u);
LABEL_26:
    v136 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v40 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v41)
    {
      [v30 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v32 = v134;
      v34 = v135;
LABEL_45:

      goto LABEL_46;
    }
  }

  v32 = v40;
  v34 = v41;
LABEL_28:

LABEL_46:
LABEL_47:
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  *(v10 + 336) = v32;
  *(v10 + 344) = v34;
  *(v10 + 360) = v49;
  *(v10 + 368) = 0xD000000000000013;
  *(v10 + 376) = 0x8000000181488790;
  v50 = *(v9 + 16);
  v51 = [v50 allHTTPHeaderFields];
  if (v51)
  {
    v52 = v51;
    v53 = MEMORY[0x1E69E7CA0] + 8;
    v54 = MEMORY[0x1E69E6158];
    swift_unknownObjectRetain();
    if (v54 == v53)
    {
      v55 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
      if (!v55)
      {
        v56 = [v52 count];
        if (v56)
        {
          v57 = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
          v58 = static _DictionaryStorage.allocate(capacity:)();
          v60 = v58[6];
          v59 = v58[7];

          v61 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v60, v59, v52, v57);
          if (v61 < 0 || v57 < v61)
          {
            goto LABEL_92;
          }

          v58[2] = v61;
          if (v61)
          {
            v129 = v6;
            v130 = a1;
            v62 = v61 - 1;
            v63 = v58 + 8;
            while (1)
            {
              while (1)
              {
                if ((*(v63 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v62))
                {
                  goto LABEL_59;
                }

                v68 = (v58[6] + 16 * v62);
                v69 = *v68;
                v70 = v68[1];

                v71 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v70);
                LOBYTE(v69) = v72;

                if ((v69 & 1) == 0)
                {
                  break;
                }

                v73 = v58[6] + 16 * v62;

                outlined destroy of String(v73);
                __swift_destroy_boxed_opaque_existential_1(v58[7] + 32 * v62);
                v74 = v58[2];
                v75 = __OFSUB__(v74, 1);
                v76 = v74 - 1;
                if (v75)
                {
                  __break(1u);
LABEL_91:
                  __break(1u);
LABEL_92:
                  __break(1u);
LABEL_93:
                  __break(1u);
                }

                v58[2] = v76;

LABEL_59:
                if (--v62 < 0)
                {
                  goto LABEL_82;
                }
              }

              *(v63 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
              if (v62 < v71)
              {
                *(v58[6] + 16 * v71) = *(v58[6] + 16 * v62);
                v64 = v58[7];
                v65 = (v64 + 32 * v62);
                v66 = v65[1];
                v67 = (v64 + 32 * v71);
                *v67 = *v65;
                v67[1] = v66;
                goto LABEL_59;
              }

              if (v71 == v62)
              {
                goto LABEL_59;
              }

              v77 = v58[6];
              v78 = (v77 + 16 * v71);
              v79 = (v77 + 16 * v62);
              v80 = *v78;
              v81 = v78[1];
              v82 = v79[1];
              *v78 = *v79;
              v78[1] = v82;
              *v79 = v80;
              v79[1] = v81;
              v83 = v58[7];
              v84 = (v83 + 32 * v71);
              v85 = (v83 + 32 * v62);
              outlined init with take of Any(v84, v138);
              outlined init with take of Any(v85, v84);
              outlined init with take of Any(v138, v85);
              if (v62 < 0)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_83;
        }

LABEL_84:
        v58 = MEMORY[0x1E69E7CC8];
        goto LABEL_85;
      }

LABEL_57:
      v58 = v55;
LABEL_85:

      goto LABEL_86;
    }

    v55 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v55)
    {
      goto LABEL_57;
    }

    v86 = [v52 count];
    if (!v86)
    {
      goto LABEL_84;
    }

    v87 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
    v58 = static _DictionaryStorage.allocate(capacity:)();
    v88 = v58[6];
    v89 = v58[7];

    v90 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(v88, v89, v52, v87);
    if (v90 < 0 || v87 < v90)
    {
      goto LABEL_93;
    }

    v58[2] = v90;
    if (!v90)
    {
LABEL_83:

      goto LABEL_85;
    }

    v129 = v6;
    v130 = a1;
    v91 = v90 - 1;
    v92 = v58 + 8;
    while (1)
    {
      if ((*(v92 + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v91))
      {
        goto LABEL_74;
      }

      v94 = (v58[6] + 16 * v91);
      v95 = *v94;
      v96 = v94[1];

      v97 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v96);
      v99 = v98;

      if (v99)
      {
        v100 = v58[6];

        outlined destroy of String(v100 + 16 * v91);
        outlined destroy of String(v58[7] + 16 * v91);
        v101 = v58[2];
        v75 = __OFSUB__(v101, 1);
        v102 = v101 - 1;
        if (v75)
        {
          goto LABEL_91;
        }

        v58[2] = v102;

        goto LABEL_74;
      }

      *(v92 + ((v97 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v97;
      if (v91 < v97)
      {
        v93 = 16 * v97;
        *(v58[6] + v93) = *(v58[6] + 16 * v91);
        *(v58[7] + v93) = *(v58[7] + 16 * v91);
LABEL_74:
        if (--v91 < 0)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v97 == v91)
        {
          goto LABEL_74;
        }

        v103 = v58[6];
        v104 = (v103 + 16 * v97);
        v105 = (v103 + 16 * v91);
        v106 = *v104;
        v107 = v104[1];
        v108 = v105[1];
        *v104 = *v105;
        v104[1] = v108;
        *v105 = v106;
        v105[1] = v107;
        v109 = v58[7];
        v110 = (v109 + 16 * v97);
        v111 = (v109 + 16 * v91);
        v112 = *v110;
        v113 = v110[1];
        v114 = v111[1];
        *v110 = *v111;
        v110[1] = v114;
        *v111 = v112;
        v111[1] = v113;
        if (v91 < 0)
        {
LABEL_82:
          v6 = v129;
          goto LABEL_83;
        }
      }
    }
  }

  v58 = 0;
LABEL_86:

  *(v10 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGSgMd);
  *(v10 + 384) = v58;
  *(v10 + 416) = xmmword_1812E65C0;
  v115 = *(v9 + 16);
  v116 = [v115 HTTPBody];
  v117 = v133;
  if (v116)
  {
    v118 = v116;
    v119 = specialized Data.init(referencing:)(v118);
    v121 = v120;
  }

  else
  {

    v119 = 0;
    v121 = 0xF000000000000000;
  }

  *(v10 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
  *(v10 + 432) = v119;
  *(v10 + 440) = v121;
  *(v10 + 464) = xmmword_1812E65D0;
  v122 = [*(v9 + 16) HTTPBodyStream];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13NSInputStreamCSgMd);
  *(v10 + 480) = v122;
  *(v10 + 504) = v123;
  *(v10 + 512) = 0xD000000000000017;
  *(v10 + 520) = 0x80000001814887B0;
  v124 = [*(v9 + 16) HTTPShouldHandleCookies];
  *(v10 + 552) = MEMORY[0x1E69E6370];
  *(v10 + 528) = v124;
  v138[0] = v9;
  v134 = v10;
  v125 = *MEMORY[0x1E69E75B8];
  v126 = type metadata accessor for Mirror.DisplayStyle();
  v127 = *(v126 - 8);
  v128 = v131;
  (*(v127 + 104))(v131, v125, v126);
  (*(v127 + 56))(v128, 0, 1, v126);
  (*(v132 + 104))(v6, *MEMORY[0x1E69E75D8], v117);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance URLRequest()
{
  [*(*v0 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
  swift_dynamicCast();
  return v2;
}

uint64_t NSURLRequest._toCustomAnyHashable()()
{
  [v0 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd);
  v1 = swift_allocObject();
  [v4 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  swift_dynamicCast();
  *(v1 + 16) = v3;
  lazy protocol witness table accessor for type URLRequest and conformance URLRequest();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLRequest()
{
  v1 = *v0;
  NSURLRequest._toCustomAnyHashable()();
}

void specialized URLRequest.httpBodyStream.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd);
    v5 = swift_allocObject();
    v6 = v4;
    [v6 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
    swift_dynamicCast();
    v4 = v8;
    *(v5 + 16) = v8;

    *v1 = v5;
  }

  v7 = v4;
  [v7 setHTTPBodyStream_];
}

uint64_t specialized static URLRequest._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  [a1 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd);
  v4 = swift_allocObject();
  [v7 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  result = swift_dynamicCast();
  *(v4 + 16) = v6;
  *a2 = v4;
  return result;
}

uint64_t specialized static URLRequest._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  [a1 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd);
  v4 = swift_allocObject();
  [v7 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  swift_dynamicCast();
  *(v4 + 16) = v6;
  *a2 = v4;
  return 1;
}

unint64_t lazy protocol witness table accessor for type URLRequest and conformance URLRequest()
{
  result = lazy protocol witness table cache variable for type URLRequest and conformance URLRequest;
  if (!lazy protocol witness table cache variable for type URLRequest and conformance URLRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLRequest and conformance URLRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLRequest and conformance URLRequest;
  if (!lazy protocol witness table cache variable for type URLRequest and conformance URLRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLRequest and conformance URLRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLRequest and conformance URLRequest;
  if (!lazy protocol witness table cache variable for type URLRequest and conformance URLRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLRequest and conformance URLRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLRequest and conformance URLRequest;
  if (!lazy protocol witness table cache variable for type URLRequest and conformance URLRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLRequest and conformance URLRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLRequest and conformance URLRequest;
  if (!lazy protocol witness table cache variable for type URLRequest and conformance URLRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLRequest and conformance URLRequest);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for URLRequest(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type URLRequest and conformance URLRequest();
  a1[2] = lazy protocol witness table accessor for type URLRequest and conformance URLRequest();
  a1[3] = lazy protocol witness table accessor for type URLRequest and conformance URLRequest();
  result = lazy protocol witness table accessor for type URLRequest and conformance URLRequest();
  a1[4] = result;
  return result;
}

double keypath_getTm_0@<D0>(uint64_t *a1@<X0>, void (*a2)(double *__return_ptr)@<X3>, _OWORD *a3@<X8>)
{
  v6 = *a1;
  a2(v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

uint64_t keypath_setTm(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__int128 *))
{
  v7 = *a1;
  swift_unknownObjectRetain();
  return a5(&v7);
}

uint64_t _AsyncBytesBuffer.init(capacity:)()
{
  type metadata accessor for _AsyncBytesBuffer.Storage();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t type metadata accessor for _AsyncBytesBuffer.Storage()
{
  result = type metadata singleton initialization cache for _AsyncBytesBuffer.Storage;
  if (!type metadata singleton initialization cache for _AsyncBytesBuffer.Storage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _AsyncBytesBuffer.next()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](_AsyncBytesBuffer.next(), 0, 0);
}

{
  v1 = v0[2];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = NSURLSession.AsyncBytes.Iterator.next();

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t IOActor.read(from:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  return MEMORY[0x1EEE6DFA0](IOActor.read(from:into:), v3, 0);
}

uint64_t IOActor.read(from:into:)()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32) - v1;
  }

  else
  {
    v2 = 0;
  }

  result = NSFileHandle.read(upToCount:)(v2);
  if (v4 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v4);
      v8 = result;
      v9 = v4;
      specialized DataProtocol.copyBytes<A>(to:from:)(*(v0 + 24), *(v0 + 32), 0, BYTE6(v4), result, v4);
      outlined consume of Data?(v8, v9);
      result = v7;
      goto LABEL_6;
    }

    v10 = result;
    v11 = result >> 32;
LABEL_15:
    if (v11 < v10)
    {
      __break(1u);
    }

    else
    {
      v12 = v4;
      v13 = result;
      specialized DataProtocol.copyBytes<A>(to:from:)(*(v0 + 24), *(v0 + 32), v10, v11, result, v4);
      if (v6 == 2)
      {
        v14 = v13;
        v15 = *(v13 + 24);
        v16 = *(v14 + 16);
        outlined consume of Data?(v14, v12);
        result = v15 - v16;
        if (!__OFSUB__(v15, v16))
        {
          goto LABEL_6;
        }

        __break(1u);
        goto LABEL_20;
      }

      result = outlined consume of Data?(v13, v12);
      if (!__OFSUB__(HIDWORD(v13), v13))
      {
        result = HIDWORD(v13) - v13;
        goto LABEL_6;
      }
    }

    __break(1u);
    return result;
  }

  if (v6 == 2)
  {
    v10 = *(result + 16);
    v11 = *(result + 24);
    goto LABEL_15;
  }

LABEL_20:
  v17 = v4;
  v18 = result;
  specialized DataProtocol.copyBytes<A>(to:from:)(*(v0 + 24), *(v0 + 32), 0, 0, result, v4);
  outlined consume of Data?(v18, v17);
LABEL_5:
  result = 0;
LABEL_6:
  v5 = *(v0 + 8);

  return v5(result);
}

uint64_t one-time initialization function for default()
{
  type metadata accessor for IOActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static IOActor.default = v0;
  return result;
}

uint64_t IOActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t _AsyncBytesBuffer.Storage.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t _AsyncBytesBuffer.reloadBufferAndNext()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](_AsyncBytesBuffer.reloadBufferAndNext(), 0, 0);
}

{
  v1 = *(v0 + 64);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(*(v0 + 32));
  if (!v1)
  {
    *(*(v0 + 24) + 32) = 1;
  }

  v2 = *(v0 + 16);
  v3 = *(v2 + 8);
  if (v3 == *(v2 + 16))
  {
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = _AsyncBytesBuffer.reloadBufferAndNext();

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v4 = *v3;
    *(v2 + 8) = v3 + 1;
    *(v0 + 88) = v4;

    return MEMORY[0x1EEE6DFA0](_AsyncBytesBuffer.reloadBufferAndNext(), 0, 0);
  }
}

{

  v1 = *(v0 + 88) | (*(v0 + 89) << 8);
  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[3];
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v0[4]);
  *(v1 + 32) = 1;
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

void _AsyncBytesBuffer.reloadBufferAndNext()()
{
  if (!**(v0 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  type metadata accessor for _AsyncBytesBuffer.Storage();
  swift_unknownObjectRetain();
  v1 = swift_dynamicCastClassUnconditional();
  *(v0 + 24) = v1;
  if (*(v1 + 32) == 1)
  {

    v2 = *(v0 + 8);

    v2(256);
    return;
  }

  v3 = v1;
  static Task<>.checkCancellation()();
  *(*(v0 + 16) + 8) = v3 + 33;
  v4 = swift_dynamicCastClassUnconditional();
  v5 = *(v4 + 16);
  *(v0 + 32) = v5;
  *(v0 + 40) = *(v4 + 24);
  if (!v5)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = _AsyncBytesBuffer.reloadBufferAndNext();
  v7 = *(v0 + 16);

  v8(v7);
}

uint64_t _AsyncBytesBuffer.reloadBufferAndNext()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = _AsyncBytesBuffer.reloadBufferAndNext();
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = _AsyncBytesBuffer.reloadBufferAndNext();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t _AsyncBytesBuffer.reloadBufferAndNext()(__int16 a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = _AsyncBytesBuffer.reloadBufferAndNext();
  }

  else
  {
    *(v4 + 89) = HIBYTE(a1) & 1;
    *(v4 + 88) = a1;
    v5 = _AsyncBytesBuffer.reloadBufferAndNext();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t NSFileHandle.AsyncBytes.makeAsyncIterator()()
{
  v1 = *v0;
  type metadata accessor for _AsyncBytesBuffer.Storage();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  v3 = v1;
  v4 = [v3 fileDescriptor];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_dynamicCastClassUnconditional();
  v7 = *(v6 + 16);
  *(v6 + 16) = &async function pointer to partial apply for closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:);
  *(v6 + 24) = v5;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v7);
  return v2;
}

uint64_t NSFileHandle.AsyncBytes.Iterator.buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectRelease();
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:)(uint64_t a1, int a2, uint64_t a3)
{
  *(v3 + 256) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = a3;

  return MEMORY[0x1EEE6DFA0](closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:), 0, 0);
}

uint64_t closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:)()
{
  v1 = *(v0 + 200);
  if (!*v1)
  {
    __break(1u);
  }

  v2 = *(v0 + 256);
  type metadata accessor for _AsyncBytesBuffer.Storage();
  v3 = swift_dynamicCastClassUnconditional();
  *(v0 + 216) = v3;
  v1[1] = v3 + 33;
  v4 = swift_dynamicCastClassUnconditional();
  v5 = _swift_stdlib_malloc_size(v4);
  *(v0 + 224) = v5;
  if (v2 < 0)
  {
    v7 = v5;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:);
    v9 = *(v0 + 208);

    return IOActor.read(from:into:)(v9, v3 + 33, v3 + v7);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = static IOActor.default;

    return MEMORY[0x1EEE6DFA0](closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:), v6, 0);
  }
}

{
  v1 = (v0 + 192);
  do
  {
    v2 = read(*(v0 + 256), (*(v0 + 216) + 33), *(v0 + 224) - 33);
    *(v0 + 232) = v2;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v17 = closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:);
      v18 = 0;
      v19 = 0;

      return MEMORY[0x1EEE6DFA0](v17, v18, v19);
    }

    v3 = MEMORY[0x1865CA7A0]();
  }

  while (MEMORY[0x1865CA7A0]() == 4);
  v4 = *(v0 + 256);
  v5 = swift_slowAlloc();
  if (MEMORY[0x1865CA7D0](v4, 50, v5) == -1)
  {
    v20 = v3;
    v21 = objc_allocWithZone(NSError);
    v10 = @"NSPOSIXErrorDomain";
    goto LABEL_45;
  }

  v6 = static String._fromUTF8Repairing(_:)();
  v8 = v7;
  isTaggedPointer = _objc_isTaggedPointer(@"NSFilePath");
  v10 = @"NSPOSIXErrorDomain";
  v11 = @"NSFilePath";
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_13;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_25;
    case 22:
      v17 = [(__CFString *)v12 UTF8String];
      if (v17)
      {
        v25 = String.init(utf8String:)(v17);
        if (v26)
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_25:
        *(v0 + 260) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v25 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v26)
        {
          [(__CFString *)v12 mutableCopy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();

          swift_dynamicCast();
          v14 = *(v0 + 176);
          v16 = *(v0 + 184);
          goto LABEL_42;
        }

LABEL_26:
        v14 = v25;
        v16 = v26;

        goto LABEL_42;
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v17, v18, v19);
    case 2:
      *(swift_task_alloc() + 16) = v12;
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v16 = v15;

      goto LABEL_42;
  }

LABEL_13:
  *(v0 + 262) = 0;
  *v1 = 0;
  *(v0 + 264) = 0;
  if (!__CFStringIsCF())
  {
    v22 = v12;
    v23 = String.init(_nativeStorage:)();
    if (v24)
    {
      v14 = v23;
      v16 = v24;

      goto LABEL_42;
    }

    v28 = [(__CFString *)v22 length];
    *v1 = v28;
    if (!v28)
    {

      v14 = 0;
      v16 = 0xE000000000000000;
      goto LABEL_42;
    }

LABEL_41:
    v14 = String.init(_cocoaString:)();
    v16 = v32;
    goto LABEL_42;
  }

  v14 = *v1;
  if (!*v1)
  {

    v16 = 0xE000000000000000;
    goto LABEL_42;
  }

  if (*(v0 + 264) != 1)
  {
    if (*(v0 + 263))
    {
      if (*(v0 + 262) == 1)
      {
        v27 = swift_task_alloc();
        *(v27 + 16) = v12;
        *(v27 + 24) = v1;
        *(v27 + 32) = 1536;
      }

      else
      {
        v14 = [(__CFString *)v12 lengthOfBytesUsingEncoding:4];
        v27 = swift_task_alloc();
        *(v27 + 16) = v12;
        *(v27 + 24) = v1;
        *(v27 + 32) = 134217984;
      }

      *(v27 + 40) = v14;
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v16 = v30;

      v31 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v31 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {

        goto LABEL_42;
      }
    }

    goto LABEL_41;
  }

  if (*(v0 + 262))
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  v14 = String.init<A>(_immortalCocoaString:count:encoding:)();
  v16 = v29;
LABEL_42:
  *(v0 + 48) = v14;
  *(v0 + 56) = v16;
  *(v0 + 88) = MEMORY[0x1E69E6158];
  *(v0 + 64) = v6;
  *(v0 + 72) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v33 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v0 + 48, v0 + 96);

  outlined destroy of (String, Any)(v0 + 48);
  v34 = *(v0 + 96);
  v35 = *(v0 + 104);
  v36 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
  v38 = v37;

  if (v38)
  {
    __break(1u);
LABEL_49:
    __break(1u);
  }

  v33[(v36 >> 6) + 8] |= 1 << v36;
  v39 = (v33[6] + 16 * v36);
  *v39 = v34;
  v39[1] = v35;
  outlined init with take of Any((v0 + 112), (v33[7] + 32 * v36));
  v40 = v33[2];
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    goto LABEL_49;
  }

  v20 = v3;
  v33[2] = v42;
  v21 = objc_allocWithZone(NSError);
LABEL_45:
  [v21 initWithDomain:v10 code:v20 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();

  swift_willThrow();
  v43 = *(v0 + 8);

  return v43();
}

{
  *(v0[25] + 16) = v0[27] + v0[29] + 33;
  v1 = v0[1];

  return v1();
}

{
  *(v0[25] + 16) = v0[27] + v0[31] + 33;
  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:)(uint64_t a1)
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
    *(v4 + 248) = a1;

    return MEMORY[0x1EEE6DFA0](closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:), 0, 0);
  }
}

uint64_t partial apply for closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:);

  return closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:)(a1, v4, v5);
}

uint64_t NSFileHandle.AsyncBytes.Iterator.next()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](NSFileHandle.AsyncBytes.Iterator.next(), 0, 0);
}

{
  v1 = v0[2];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = NSFileHandle.AsyncBytes.Iterator.next();

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NSFileHandle.AsyncBytes.Iterator(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance NSFileHandle.AsyncBytes.Iterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NSFileHandle.AsyncBytes.Iterator()
{
  v1 = v0[3];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = protocol witness for AsyncIteratorProtocol.next() in conformance NSURLSession.AsyncBytes.Iterator;

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[2];
    *v4 = v3;
    v4[1] = 0;
    v5 = v0[1];

    return v5();
  }
}

uint64_t _sSo12NSFileHandleC10FoundationE10AsyncBytesV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = _sSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorV_Tgq5(a2, a3);
}

void protocol witness for AsyncSequence.makeAsyncIterator() in conformance NSFileHandle.AsyncBytes(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for _AsyncBytesBuffer.Storage();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = v3;
  v6 = [v5 fileDescriptor];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = swift_dynamicCastClassUnconditional();
  v9 = *(v8 + 16);
  *(v8 + 16) = &closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:)partial apply;
  *(v8 + 24) = v7;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v9);

  *a1 = v4;
  a1[1] = v4 + 33;
  a1[2] = v4 + 33;
}

unint64_t lazy protocol witness table accessor for type NSFileHandle.AsyncBytes.Iterator and conformance NSFileHandle.AsyncBytes.Iterator()
{
  result = lazy protocol witness table cache variable for type NSFileHandle.AsyncBytes.Iterator and conformance NSFileHandle.AsyncBytes.Iterator;
  if (!lazy protocol witness table cache variable for type NSFileHandle.AsyncBytes.Iterator and conformance NSFileHandle.AsyncBytes.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFileHandle.AsyncBytes.Iterator and conformance NSFileHandle.AsyncBytes.Iterator);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation17_AsyncBytesBufferVSis5Error_pIegHldzo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for _AsyncBytesBuffer.Header(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for _AsyncBytesBuffer.Header(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)partial apply;

  return closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:)(a1, v4, v5);
}

uint64_t NSEnumerator.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  return swift_unknownObjectRetain();
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance NSEnumerator()
{
  v1 = *v0;
  v2 = specialized _copySequenceToContiguousArray<A>(_:)();

  return v2;
}

__n128 __swift_memcpy217_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NSFastEnumerationIterator(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 217))
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

uint64_t storeEnumTagSinglePayload for NSFastEnumerationIterator(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

id specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [v3 length];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [v3 length];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v8 = a3 - a1;
  if (a2 >= 1)
  {
    if (v8 < 0 || v8 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v8 <= 0 && v8 > a2)
  {
    return 0;
  }

LABEL_12:
  v10 = __OFADD__(a1, a2);
  v9 = a1 + a2;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [v3 length];
  if ((v9 & 0x8000000000000000) == 0 && result >= v9)
  {
    return v9;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6 + a5;
  if (__OFADD__(a6, a5))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 < a3 || a3 < a6 || result < a6 || v6 < result)
  {
    goto LABEL_19;
  }

  v7 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2 >= 1)
  {
    if (v7 < 0 || v7 >= a2)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a2)
  {
    return 0;
  }

LABEL_14:
  v8 = __OFADD__(result, a2);
  result += a2;
  if (v8)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (result < a6 || v6 < result)
  {
    goto LABEL_22;
  }

  return result;
}

__n128 DispatchData.Region.regions.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t DispatchData.Region.subscript.getter(uint64_t result)
{
  v3 = v1[1];
  v2 = v1[2];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 > result || v5 < result)
  {
    goto LABEL_9;
  }

  v4 = __OFSUB__(result, v2);
  v7 = result - v2;
  if (!v4)
  {
    return *(*v1 + v7);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t DispatchData.Region.endIndex.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  result = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

__n128 protocol witness for DataProtocol.regions.getter in conformance DispatchData.Region@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance DispatchData.Region@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v2 + 8);
  v4 = *(v2 + 16);
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= v4 && v3 < v7)
  {
    *a2 = v3;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance DispatchData.Region(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= v3 && v2 < v6)
  {
    *result = v2;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance DispatchData.Region(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = __OFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = v5;
  }
}

_BYTE *protocol witness for Collection.subscript.read in conformance DispatchData.Region(_BYTE *result, uint64_t *a2)
{
  v4 = v2[1];
  v3 = v2[2];
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *a2;
  if (*a2 < v3 || v5 < v6)
  {
    goto LABEL_9;
  }

  v8 = __OFSUB__(v6, v3);
  v9 = v6 - v3;
  if (!v8)
  {
    *result = *(*v2 + v9);
    return _NSBundleDeallocatingImmortalBundle;
  }

LABEL_10:
  __break(1u);
  return result;
}

__int128 *protocol witness for Collection.subscript.getter in conformance DispatchData.Region@<X0>(__int128 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 2);
  v5 = *(v2 + 1);
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = *result;
  if (*result < v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 >= *(&v8 + 1))
  {
    *(a2 + 32) = v4;
    *a2 = v8;
    *(a2 + 16) = v3;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance DispatchData.Region(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
  }

  else if (v5 >= v2)
  {
    *a1 = v2;
    a1[1] = v5;
    return;
  }

  __break(1u);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance DispatchData.Region()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (!v3)
  {
    return v1 == v4;
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance DispatchData.Region@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= v5 && v8 >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance DispatchData.Region@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4, v4[1], v4[2]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance DispatchData.Region(uint64_t *result, uint64_t *a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *result;
  v8 = *a2;
  if (v6 < *a2 || v8 < v4 || v7 < v4 || v6 < v7)
  {
    goto LABEL_15;
  }

  result = (v8 - v7);
  if (__OFSUB__(v8, v7))
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance DispatchData.Region@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
  }

  else
  {
    v6 = *result;
    if (*result >= v4 && v6 < v5)
    {
      *a2 = v6 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance DispatchData.Region(uint64_t *result)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    if (*result >= v2 && v5 < v4)
    {
      *result = v5 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance DispatchData.Region@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = v2;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance DispatchData.Region()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v4 - v1;
  if (v4 < v1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (__OFSUB__(v4, v1))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t DispatchData.regions.getter()
{
  v1 = MEMORY[0x1E69E7CC0];
  DispatchData.enumerateBytes(_:)();
  return v1;
}

unint64_t lazy protocol witness table accessor for type Slice<DispatchData.Region> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<DispatchData.Region> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<DispatchData.Region> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy8Dispatch0B4DataV10FoundationE6RegionVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<DispatchData.Region> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for DispatchData.Region(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DispatchData.Region and conformance DispatchData.Region();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<DispatchData.Region> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy8Dispatch0B4DataV10FoundationE6RegionVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<DispatchData> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<DispatchData> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<DispatchData> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy8Dispatch0B4DataVGMd);
    lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<DispatchData> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t protocol witness for DataProtocol.regions.getter in conformance DispatchData@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  result = DispatchData.enumerateBytes(_:)();
  *a1 = v3;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DispatchData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, int64_t a2, uint64_t a3)
{
  if (result < a3)
  {
    if ((result - a3) >= 0x8000000000000001)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (a3 < result)
  {
    v3 = ~a3 + result;
    if (v3 >= (result ^ 0x8000000000000000))
    {
      v4 = result ^ 0x8000000000000000;
    }

    else
    {
      v4 = ~a3 + result;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if ((result ^ 0x8000000000000000) > v3)
    {
LABEL_10:
      v5 = a3 - result;
      if (a2 <= 0)
      {
        if (v5 >= 1)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      if (v5 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_26;
  }

  v5 = 0;
  if (a2 > 0)
  {
LABEL_16:
    if (v5 < a2)
    {
      return 0;
    }

LABEL_17:
    v5 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
LABEL_23:
      result += a2;
      return result;
    }

    __break(1u);
  }

LABEL_19:
  if (v5 > a2)
  {
    return 0;
  }

LABEL_21:
  if ((a2 & 0x8000000000000000) == 0)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) < a2)
  {
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
  return result;
}

char *_s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV09ByteCountF0O_Tt0B5(char a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v5 + 40);
    v48 = *(v5 + 24);
    v49 = v6;
    v50 = *(v5 + 56);
    v7 = *(v5 + 72);
    v8 = *(v5 + 80);
    v9 = *(v5 + 88);
    v10 = *(v5 + 96);
    type metadata accessor for AttributedString.Guts();
    v5 = swift_allocObject();
    v11 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v48, &v39);
    v12 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v12);
    if (v7)
    {
      v13 = v9 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = v13;
    if (v14 == v11)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v16 = v49;
        *(v5 + 24) = v48;
        *(v5 + 16) = add_explicit;
        *(v5 + 40) = v16;
        *(v5 + 56) = v50;
        *(v5 + 72) = v7;
        *(v5 + 80) = v8;
        *(v5 + 88) = v9;
        *(v5 + 96) = v10;
        *(v5 + 104) = MEMORY[0x1E69E7CC0];

        *v2 = v5;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (one-time initialization token for _nextVersion != -1)
  {
    swift_once();
  }

  *(v5 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  if (a1 == 12)
  {
    v17 = *(v5 + 24);
    v18 = *(v5 + 56);
    v40 = *(v5 + 40);
    v41 = v18;
    v39 = v17;
    v19 = *(v5 + 56);
    v20 = *(v5 + 64);
    v37 = *(v5 + 40);
    v38 = *(v5 + 24);
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    v45 = v38;
    v46 = v37;
    *&v47 = v19;
    *(&v47 + 1) = v20;
    v51[0] = v39;
    v51[1] = v40;
    v52 = v41;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v51, v44);
    v21 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(&v39);
    v22 = *(v5 + 40);
    v44[0] = *(v5 + 24);
    v44[1] = v22;
    v44[2] = *(v5 + 56);
    swift_unknownObjectRetain();
    v23 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    return specialized AttributedString._InternalRunsSlice.updateEach(with:)(v5, v21 >> 11, v23 >> 11);
  }

  else
  {
    v25 = *(v5 + 40);
    v45 = *(v5 + 24);
    v46 = v25;
    v47 = *(v5 + 56);
    v26 = BigString.startIndex.getter();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = BigString.endIndex.getter();
    *&v39 = v26;
    *(&v39 + 1) = v28;
    *&v40 = v30;
    *(&v40 + 1) = v32;
    *&v41 = v33;
    *(&v41 + 1) = v34;
    v42 = v35;
    v43 = v36;
    return _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV09ByteCountF0O_Tt0B5(a1);
  }
}

char *_s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV021InflectionAlternativeF0O_Tt0B5(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v5 + 40);
    v48 = *(v5 + 24);
    v49 = v6;
    v50 = *(v5 + 56);
    v7 = *(v5 + 72);
    v8 = *(v5 + 80);
    v9 = *(v5 + 88);
    v10 = *(v5 + 96);
    type metadata accessor for AttributedString.Guts();
    v5 = swift_allocObject();
    v11 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v48, &v39);
    v12 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v12);
    if (v7)
    {
      v13 = v9 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = v13;
    if (v14 == v11)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v16 = v49;
        *(v5 + 24) = v48;
        *(v5 + 16) = add_explicit;
        *(v5 + 40) = v16;
        *(v5 + 56) = v50;
        *(v5 + 72) = v7;
        *(v5 + 80) = v8;
        *(v5 + 88) = v9;
        *(v5 + 96) = v10;
        *(v5 + 104) = MEMORY[0x1E69E7CC0];

        *v2 = v5;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (one-time initialization token for _nextVersion != -1)
  {
    swift_once();
  }

  *(v5 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  if (a1)
  {
    v17 = *(v5 + 40);
    v45 = *(v5 + 24);
    v46 = v17;
    v47 = *(v5 + 56);
    v18 = BigString.startIndex.getter();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = BigString.endIndex.getter();
    *&v39 = v18;
    *(&v39 + 1) = v20;
    *&v40 = v22;
    *(&v40 + 1) = v24;
    *&v41 = v25;
    *(&v41 + 1) = v26;
    v42 = v27;
    v43 = v28;
    _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV021InflectionAlternativeF0O_Tt0B5(a1);
  }

  else
  {
    v30 = *(v5 + 24);
    v31 = *(v5 + 56);
    v40 = *(v5 + 40);
    v41 = v31;
    v39 = v30;
    v32 = *(v5 + 56);
    v33 = *(v5 + 64);
    v37 = *(v5 + 40);
    v38 = *(v5 + 24);
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    v45 = v38;
    v46 = v37;
    *&v47 = v32;
    *(&v47 + 1) = v33;
    v51[0] = v39;
    v51[1] = v40;
    v52 = v41;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v51, v44);
    v34 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(&v39);
    v35 = *(v5 + 40);
    v44[0] = *(v5 + 24);
    v44[1] = v35;
    v44[2] = *(v5 + 56);
    swift_unknownObjectRetain();
    v36 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    return specialized AttributedString._InternalRunsSlice.updateEach(with:)(v5, v34 >> 11, v36 >> 11);
  }
}

char *_s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV016ReplacementIndexF0O_Tt0g5(uint64_t a1, char a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = a1;
    v8 = *(v7 + 40);
    v51 = *(v7 + 24);
    v52 = v8;
    v53 = *(v7 + 56);
    v9 = *(v7 + 72);
    v10 = *(v7 + 80);
    v11 = *(v7 + 88);
    v12 = *(v7 + 96);
    type metadata accessor for AttributedString.Guts();
    v7 = swift_allocObject();
    v13 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v51, &v42);
    v14 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v14);
    if (v9)
    {
      v15 = v11 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (v16 == v13)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v18 = v52;
        *(v7 + 24) = v51;
        *(v7 + 16) = add_explicit;
        *(v7 + 40) = v18;
        *(v7 + 56) = v53;
        *(v7 + 72) = v9;
        *(v7 + 80) = v10;
        *(v7 + 88) = v11;
        *(v7 + 96) = v12;
        *(v7 + 104) = MEMORY[0x1E69E7CC0];

        *v3 = v7;
        a1 = v41;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (one-time initialization token for _nextVersion != -1)
  {
    swift_once();
  }

  *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  if (a2)
  {
    v19 = *(v7 + 24);
    v20 = *(v7 + 56);
    v43 = *(v7 + 40);
    v44 = v20;
    v42 = v19;
    v21 = *(v7 + 56);
    v22 = *(v7 + 64);
    v39 = *(v7 + 40);
    v40 = *(v7 + 24);
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    v48 = v40;
    v49 = v39;
    *&v50 = v21;
    *(&v50 + 1) = v22;
    v54[0] = v42;
    v54[1] = v43;
    v55 = v44;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v54, v47);
    v23 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(&v42);
    v24 = *(v7 + 40);
    v47[0] = *(v7 + 24);
    v47[1] = v24;
    v47[2] = *(v7 + 56);
    swift_unknownObjectRetain();
    v25 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    return specialized AttributedString._InternalRunsSlice.updateEach(with:)(v7, v23 >> 11, v25 >> 11);
  }

  else
  {
    v27 = *(v7 + 40);
    v48 = *(v7 + 24);
    v49 = v27;
    v50 = *(v7 + 56);
    v28 = BigString.startIndex.getter();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = BigString.endIndex.getter();
    *&v42 = v28;
    *(&v42 + 1) = v30;
    *&v43 = v32;
    *(&v43 + 1) = v34;
    *&v44 = v35;
    *(&v44 + 1) = v36;
    v45 = v37;
    v46 = v38;
    return _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV011ReplacementnF0O_Tt0g5(a1);
  }
}

char *_s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV022MarkdownSourcePositionF0O_Tt0B5(__int128 *a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v5 + 40);
    v58 = *(v5 + 24);
    v59 = v6;
    v60 = *(v5 + 56);
    v7 = *(v5 + 72);
    v8 = *(v5 + 80);
    v9 = *(v5 + 88);
    v10 = *(v5 + 96);
    type metadata accessor for AttributedString.Guts();
    v5 = swift_allocObject();
    v11 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v58, &v43);
    v12 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v12);
    if (v7)
    {
      v13 = v9 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = v13;
    if (v14 == v11)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v16 = v59;
        *(v5 + 24) = v58;
        *(v5 + 16) = add_explicit;
        *(v5 + 40) = v16;
        *(v5 + 56) = v60;
        *(v5 + 72) = v7;
        *(v5 + 80) = v8;
        *(v5 + 88) = v9;
        *(v5 + 96) = v10;
        *(v5 + 104) = MEMORY[0x1E69E7CC0];

        *v2 = v5;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (one-time initialization token for _nextVersion != -1)
  {
    swift_once();
  }

  *(v5 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  if (*(a1 + 105))
  {
    v17 = *(v5 + 24);
    v18 = *(v5 + 56);
    v44 = *(v5 + 40);
    v45 = v18;
    v43 = v17;
    v19 = *(v5 + 56);
    v20 = *(v5 + 64);
    v41 = *(v5 + 40);
    v42 = *(v5 + 24);
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    v49 = v42;
    v50 = v41;
    v51 = v19;
    v52 = v20;
    v61[0] = v43;
    v61[1] = v44;
    v62 = v45;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v61, &v55);
    v21 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(&v43);
    v22 = *(v5 + 40);
    v55 = *(v5 + 24);
    v56 = v22;
    v57 = *(v5 + 56);
    swift_unknownObjectRetain();
    v23 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    return specialized AttributedString._InternalRunsSlice.updateEach(with:)(v5, v21 >> 11, v23 >> 11);
  }

  else
  {
    v25 = a1[5];
    v47 = a1[4];
    v48[0] = v25;
    *(v48 + 9) = *(a1 + 89);
    v26 = a1[1];
    v43 = *a1;
    v44 = v26;
    v27 = a1[3];
    v45 = a1[2];
    v46 = v27;
    v28 = *(v5 + 24);
    v29 = *(v5 + 56);
    v56 = *(v5 + 40);
    v57 = v29;
    v55 = v28;
    v30 = BigString.startIndex.getter();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = BigString.endIndex.getter();
    *&v49 = v30;
    *(&v49 + 1) = v32;
    *&v50 = v34;
    *(&v50 + 1) = v36;
    v51 = v37;
    v52 = v38;
    v53 = v39;
    v54 = v40;
    return _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV022MarkdownSourcePositionF0O_Tt0B5(&v43);
  }
}

char *_s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV013DurationFieldF0O_Tt0B5(char a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v5 + 40);
    v48 = *(v5 + 24);
    v49 = v6;
    v50 = *(v5 + 56);
    v7 = *(v5 + 72);
    v8 = *(v5 + 80);
    v9 = *(v5 + 88);
    v10 = *(v5 + 96);
    type metadata accessor for AttributedString.Guts();
    v5 = swift_allocObject();
    v11 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v48, &v39);
    v12 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v12);
    if (v7)
    {
      v13 = v9 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = v13;
    if (v14 == v11)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v16 = v49;
        *(v5 + 24) = v48;
        *(v5 + 16) = add_explicit;
        *(v5 + 40) = v16;
        *(v5 + 56) = v50;
        *(v5 + 72) = v7;
        *(v5 + 80) = v8;
        *(v5 + 88) = v9;
        *(v5 + 96) = v10;
        *(v5 + 104) = MEMORY[0x1E69E7CC0];

        *v2 = v5;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (one-time initialization token for _nextVersion != -1)
  {
    swift_once();
  }

  *(v5 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  if (a1 == 8)
  {
    v17 = *(v5 + 24);
    v18 = *(v5 + 56);
    v40 = *(v5 + 40);
    v41 = v18;
    v39 = v17;
    v19 = *(v5 + 56);
    v20 = *(v5 + 64);
    v37 = *(v5 + 40);
    v38 = *(v5 + 24);
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    v45 = v38;
    v46 = v37;
    *&v47 = v19;
    *(&v47 + 1) = v20;
    v51[0] = v39;
    v51[1] = v40;
    v52 = v41;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v51, v44);
    v21 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(&v39);
    v22 = *(v5 + 40);
    v44[0] = *(v5 + 24);
    v44[1] = v22;
    v44[2] = *(v5 + 56);
    swift_unknownObjectRetain();
    v23 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    return specialized AttributedString._InternalRunsSlice.updateEach(with:)(v5, v21 >> 11, v23 >> 11);
  }

  else
  {
    v25 = *(v5 + 40);
    v45 = *(v5 + 24);
    v46 = v25;
    v47 = *(v5 + 56);
    v26 = BigString.startIndex.getter();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = BigString.endIndex.getter();
    *&v39 = v26;
    *(&v39 + 1) = v28;
    *&v40 = v30;
    *(&v40 + 1) = v32;
    *&v41 = v33;
    *(&v41 + 1) = v34;
    v42 = v35;
    v43 = v36;
    return _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV013DurationFieldF0O_Tt0B5(a1);
  }
}

uint64_t specialized AttributedString.MarkdownSourcePosition.calculateOffsets<A>(within:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = String.utf8CString.getter();
  v6 = *(v5 + 16);
  v7 = objc_opt_self();
  v25 = 0u;
  *v26 = 0u;
  *&v26[16] = vdupq_n_s64(1uLL);
  [v7 calculateOffsetsForLine:v3 column:v4 inString:v5 + 32 size:v6 withExistingOffsets:&v25];
  v8 = v22.i64[0];
  if (v22.i64[0] == 0x7FFFFFFFFFFFFFFFLL || (v9 = v22.i64[1], v22.i64[1] == 0x7FFFFFFFFFFFFFFFLL) || (v10 = *v23, *v23 == 0x7FFFFFFFFFFFFFFFLL) || (v11 = *&v23[8], *&v23[8] == 0x7FFFFFFFFFFFFFFFLL) || (v12 = v1[2], v13 = v1[3], v25 = v22, *v26 = *v23, *&v26[8] = *&v23[8], *&v26[24] = v24, [v7 calculateOffsetsForLine:v12 column:v13 inString:v5 + 32 size:v6 withExistingOffsets:&v25], v14.f64[0] = NAN, v14.f64[1] = NAN, v15 = vnegq_f64(v14), (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v22, v15), vceqq_s64(*v23, v15)))) & 1) != 0))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 1;
  }

  else
  {
    v21 = 0;
    v17 = v22.i64[1];
    v16 = v22.i64[0];
    v19 = *&v23[8];
    v18 = *v23;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  return result;
}

unint64_t _sSn10FoundationSS5IndexVRszrlE_2inSnyACGSgAA16AttributedStringV22MarkdownSourcePositionV_qd__tcSyRd__lufCSS_Tt1B5(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = result;
  if ((*(result + 64) & 1) == 0 && (*(result + 104) & 1) == 0)
  {
    goto LABEL_17;
  }

  specialized AttributedString.MarkdownSourcePosition.calculateOffsets<A>(within:)(v19);
  v6 = v21;
  if (v21)
  {

    return 0;
  }

  v7 = v19[0];
  v8 = v20;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v14 = MEMORY[0x1865CB180](15, v19[0], a2, a3);
    if (!__OFADD__(v8, 1))
    {
      v15 = v14;
      a2 = MEMORY[0x1865CB180](15, v8 + 1, a2, a3);

      v10 = a2;
      result = v15;
      goto LABEL_15;
    }

    goto LABEL_32;
  }

  if ((v19[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v9 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v9 < v19[0])
  {
    goto LABEL_33;
  }

  a2 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v9 < a2)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    v16 = v6;
    result = MEMORY[0x1865CB180](15, v7, a2, a3);
    if (!__OFADD__(v16, 1))
    {
      v17 = result;
      v18 = MEMORY[0x1865CB180](15, v16 + 1, a2, a3);

      v13 = v18;
      result = v17;
      goto LABEL_27;
    }

    goto LABEL_39;
  }

  result = (v7 << 16) | 4;
  v10 = (a2 << 16) | 4;
LABEL_15:
  if (v10 >> 14 >= result >> 14)
  {
    return result;
  }

  __break(1u);
LABEL_17:
  v7 = *(v5 + 32);
  v6 = *(v5 + 72);
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 < v7)
  {
    goto LABEL_40;
  }

  v12 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v11 < v12)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  result = (v7 << 16) | 4;
  v13 = (v12 << 16) | 4;
LABEL_27:
  if (v13 >> 14 < result >> 14)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  return result;
}

void NSUndoManager.registerUndo<A>(withTarget:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = partial apply for closure #1 in NSUndoManager.registerUndo<A>(withTarget:handler:);
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Any) -> ();
  v11[3] = &block_descriptor_18;
  v10 = _Block_copy(v11);

  [v4 registerUndoWithTarget:a1 handler:v10];
  _Block_release(v10);
}

uint64_t closure #1 in NSUndoManager.registerUndo<A>(withTarget:handler:)(uint64_t a1, void (*a2)())
{
  outlined init with copy of Any(a1, v4);
  swift_dynamicCast();
  a2();
  return swift_unknownObjectRelease();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Any) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t NSUndoManager._setActionNameLocalizedStringResource(_:)(__int128 *a1)
{
  v2 = v1;
  v4 = &v143;
  ObjectType = swift_getObjectType();
  v6 = a1[5];
  v164 = a1[4];
  v165 = v6;
  v166 = *(a1 + 12);
  v7 = a1[1];
  v160 = *a1;
  v161 = v7;
  v8 = a1[3];
  v162 = a1[2];
  v163 = v8;
  if (ObjectType == type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSUndoManager))
  {
LABEL_9:
    v29 = *(&v160 + 1);
    if (*(&v160 + 1))
    {
      v30 = v160;
      v15 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for _NSLocalizedStringResource);
      v31 = type metadata accessor for _NSLocalizedStringResourceSwiftWrapper();
      v32 = objc_allocWithZone(v31);
      v33 = &v32[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped];
      *v33 = v30;
      *(v33 + 1) = v29;
      v34 = a1[2];
      *(v33 + 1) = a1[1];
      *(v33 + 2) = v34;
      *(v33 + 12) = *(a1 + 12);
      v35 = a1[5];
      *(v33 + 4) = a1[4];
      *(v33 + 5) = v35;
      *(v33 + 3) = a1[3];
      v36 = v4[19];
      *v4 = v4[18];
      v4[1] = v36;
      v149 = v166;
      v37 = v4[23];
      v4[4] = v4[22];
      v4[5] = v37;
      v38 = v4[21];
      v4[2] = v4[20];
      v4[3] = v38;
      outlined init with copy of LocalizedStringResource(&v143, &v134);
      v132.receiver = v32;
      v132.super_class = v31;
      v39 = objc_msgSendSuper2(&v132, sel_init);
      *(&v135 + 1) = v31;
      *&v134 = v39;
      v40 = _NSLocalizedStringResource.init(resource:)(&v134);
      *(&v135 + 1) = v15;
      *&v134 = v40;
      v41 = __swift_project_boxed_opaque_existential_1(&v134, v15);
      v24 = *(v15 - 8);
      v42 = *(v24 + 64);
      v25 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
      v43 = MEMORY[0x1EEE9AC00](v41);
      v27 = (&v125 - v25);
      v4 = *(v24 + 16);
      (v4)(&v125 - v25, v43);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      if (isClassOrObjCExistentialType)
      {
        if (v42 == 8)
        {
          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_66;
      }

LABEL_64:
      v131 = v2;
      v124 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (v4)(&v125 - v25, v27, v15, v124);
      v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v24 + 8))(v27, v15);
      v2 = v131;
      goto LABEL_13;
    }

LABEL_14:
    v44 = 0;
    goto LABEL_15;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MethodImplementation = class_getMethodImplementation(ObjCClassFromMetadata, sel_setActionName_);
  v11 = swift_getObjCClassFromMetadata();
  v12 = class_getMethodImplementation(v11, sel_setActionName_);
  if (!MethodImplementation)
  {
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_17:
    if (!*(&v160 + 1))
    {
LABEL_62:
      v44 = String._bridgeToObjectiveCImpl()();

      v46 = &selRef_setActionName_;
      goto LABEL_63;
    }

    v47 = a1[5];
    v147 = a1[4];
    v148 = v47;
    v149 = *(a1 + 12);
    v48 = a1[1];
    v143 = *a1;
    v144 = v48;
    v49 = a1[3];
    v145 = a1[2];
    v146 = v49;
    v142 = 1;
    v151[0] = 0;
    v151[1] = 0;
    v152 = 1;
    v153 = 0;
    LOWORD(v154) = 256;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v131 = v2;
    if (v149)
    {
      v130 = *(&v148 + 1);
      v50 = v148;
      v51 = *(&v147 + 1);
      v52 = swift_getObjectType();
      v53 = *(v50 + 296);
      outlined init with copy of FloatingPointRoundingRule?(&v160, &v134, &_s10Foundation23LocalizedStringResourceVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(&v160, &v134, &_s10Foundation23LocalizedStringResourceVSgMd);
      outlined init with copy of AttributedString.LocalizationOptions(v151, &v134);
      v128 = v51;
      v129 = v52;
      v53(&v134, closure #1 in LocalizedStringResource._withExtensionForBundle<A>(_:), 0, MEMORY[0x1E69E72F0], v52, v50);
      if (v134)
      {
        String.utf8CString.getter();
        v54 = sandbox_extension_consume();

        if (v54 == -1)
        {
          if (one-time initialization token for localizedStringLogger != -1)
          {
            swift_once();
          }

          v63 = type metadata accessor for Logger();
          __swift_project_value_buffer(v63, localizedStringLogger);
          outlined init with copy of LocalizedStringResource(&v143, &v134);
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.error.getter();
          outlined destroy of TermOfAddress?(&v160, &_s10Foundation23LocalizedStringResourceVSgMd);
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *&v134 = v67;
            *v66 = 136315394;
            v68 = (*(v50 + 240))(v129, v50);
            v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v134);

            *(v66 + 4) = v70;
            *(v66 + 12) = 1026;
            *(v66 + 14) = MEMORY[0x1865CA7A0](v71);
            _os_log_impl(&dword_18075C000, v64, v65, "Unable to consume sandbox extension for path '%s' (errno: %{public}d)", v66, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v67);
            MEMORY[0x1865D2690](v67, -1, -1);
            MEMORY[0x1865D2690](v66, -1, -1);
          }

          v129 = 0;
          LODWORD(v130) = 1;
        }

        else
        {
          v129 = v54;
          LODWORD(v130) = 0;
        }

        v2 = v131;
LABEL_38:
        v72 = *(&v147 + 1);
        v73 = v148;
        v74 = objc_allocWithZone(NSBundle);
        v75 = swift_getObjectType();
        v76 = *(v73 + 432);
        swift_unknownObjectRetain_n();
        v77 = v76(v75, v73);
        v78 = v72;
        v79 = v77;
        v80 = [v74 initWithURL_];
        swift_unknownObjectRelease();

        if (v80)
        {
          v82 = v155;
          v81 = v156;
          v83 = v4[11];
          v4[7] = v4[10];
          v4[8] = v83;
          v150 = v154;
          v128 = v78;
          if (v81)
          {
            outlined init with copy of AttributedString.LocalizationOptions(v151, &v134);
          }

          else
          {
            outlined init with copy of AttributedString.LocalizationOptions(v151, &v134);
            v127 = v80;
            v85 = [v80 localizations];
            if (!v85)
            {
              v85 = _ContiguousArrayBuffer._asCocoaArray()();
            }

            v86 = objc_opt_self();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
            v87 = swift_allocObject();
            *(v87 + 16) = xmmword_181218E20;
            v88 = v147;
            v89 = swift_getObjectType();
            *(v87 + 32) = (*(v88 + 64))(v89, v88);
            *(v87 + 40) = v90;
            v91 = [v86 preferredLocalizationsFromArray:v85 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

            swift_unknownObjectRelease();
            if (v91)
            {
              type metadata accessor for __SwiftDeferredNSArray();
              if (swift_dynamicCastClass())
              {
              }

              else
              {
                v93 = v91;
              }

              v80 = v127;
              v94 = swift_dynamicCastClass();
              if (v94)
              {
                v92 = v94;
              }

              else
              {
                swift_unknownObjectRelease();
                [v91 copy];
                v95 = _bridgeCocoaArray<A>(_:)();
                swift_unknownObjectRelease();
                v92 = specialized _arrayForceCast<A, B>(_:)(v95);
              }
            }

            else
            {
              v92 = MEMORY[0x1E69E7CC0];
              v80 = v127;
            }

            if (*(v92 + 2))
            {
              v82 = *(v92 + 4);
              v81 = *(v92 + 5);
            }

            else
            {

              v82 = 0;
              v81 = 0;
            }
          }

          v125 = v4[1];
          v96 = *(&v143 + 1);
          v126 = v143;
          v127 = v82;
          v97 = v4[8];
          v4[14] = v4[7];
          v4[15] = v97;
          v158[4] = v150;
          v158[5] = v82;
          v158[6] = v81;
          v159 = 1;
          v98 = v145;
          v99 = *(&v146 + 1);
          v100 = v146;
          v101 = v147;
          v102 = v80;
          v103 = v80;
          v104 = v102;
          _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(v126, v96, v158, *(&v98 + 1), v100, v103, v99, v101, 1u, v125, *(&v125 + 1), v98);

          v84 = v134;
          v105 = v4[8];
          v134 = v4[7];
          v135 = v105;
          v136 = v150;
          v137 = v127;
          v138 = v81;
          LOBYTE(v139) = 1;
          outlined destroy of AttributedString.LocalizationOptions(&v134);
          swift_unknownObjectRelease();
          v2 = v131;
          if (v130)
          {
            goto LABEL_58;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v84 = 0;
          if (v130)
          {
            goto LABEL_58;
          }
        }

        sandbox_extension_release();
LABEL_58:
        outlined destroy of AttributedString.LocalizationOptions(v151);
        outlined destroy of TermOfAddress?(&v160, &_s10Foundation23LocalizedStringResourceVSgMd);
        if (v84)
        {
          outlined destroy of AttributedString.LocalizationOptions(v151);
          outlined destroy of TermOfAddress?(&v160, &_s10Foundation23LocalizedStringResourceVSgMd);
        }

        else
        {
          v107 = *(&v144 + 1);
          v106 = v144;
          v108 = v145;
          v109 = *(&v146 + 1);
          v110 = v147;

          swift_unknownObjectRetain();
          _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(0, 0, v151, 0, 0, 0, v109, v110, 0, v106, v107, v108);
          outlined destroy of TermOfAddress?(&v160, &_s10Foundation23LocalizedStringResourceVSgMd);

          swift_unknownObjectRelease();
          outlined destroy of AttributedString.LocalizationOptions(v151);
          v84 = v134;
        }

        v141 = 0;
        *&v134 = v84;
        v111 = *(v84 + 40);
        v4[7] = *(v84 + 24);
        v4[8] = v111;
        v4[9] = *(v84 + 56);
        v112 = BigString.startIndex.getter();
        v114 = v113;
        v116 = v115;
        v118 = v117;
        v119 = BigString.endIndex.getter();
        *(&v134 + 1) = v112;
        *&v135 = v114;
        *(&v135 + 1) = v116;
        v136 = v118;
        v137 = v119;
        v138 = v120;
        v139 = v121;
        v140 = v122;
        lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
        String.init<A>(_:)();
        goto LABEL_62;
      }

      if (one-time initialization token for localizedStringLogger != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, localizedStringLogger);
      v56 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      v2 = v131;
      if (os_log_type_enabled(v56, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_18075C000, v56, v61, "LocalizedStringResource contained a sandbox extension token but sandbox check passed without consuming the token. Proceeding to lookup localized string without consuming a sandbox extension.", v62, 2u);
        v59 = v62;
        goto LABEL_30;
      }

LABEL_31:

      v129 = 0;
      LODWORD(v130) = 1;
      goto LABEL_38;
    }

    outlined init with copy of FloatingPointRoundingRule?(&v160, &v134, &_s10Foundation23LocalizedStringResourceVSgMd);
    outlined init with copy of FloatingPointRoundingRule?(&v160, &v134, &_s10Foundation23LocalizedStringResourceVSgMd);
    outlined init with copy of AttributedString.LocalizationOptions(v151, &v134);
    if (one-time initialization token for localizedStringLogger == -1)
    {
LABEL_24:
      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, localizedStringLogger);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_18075C000, v56, v57, "LocalizedStringResource did not contain a sandbox extension token. Proceeding to lookup localized string without consuming a sandbox extension.", v58, 2u);
        v59 = v58;
LABEL_30:
        MEMORY[0x1865D2690](v59, -1, -1);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

LABEL_66:
    swift_once();
    goto LABEL_24;
  }

  if (!v12 || MethodImplementation != v12)
  {
    goto LABEL_17;
  }

LABEL_5:
  v13 = *(&v160 + 1);
  if (!*(&v160 + 1))
  {
    goto LABEL_14;
  }

  v14 = v160;
  v15 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for _NSLocalizedStringResource);
  v16 = type metadata accessor for _NSLocalizedStringResourceSwiftWrapper();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped];
  *v18 = v14;
  *(v18 + 1) = v13;
  v19 = a1[2];
  *(v18 + 1) = a1[1];
  *(v18 + 2) = v19;
  *(v18 + 12) = *(a1 + 12);
  v20 = a1[5];
  *(v18 + 4) = a1[4];
  *(v18 + 5) = v20;
  *(v18 + 3) = a1[3];
  v143 = v160;
  v144 = v161;
  v149 = v166;
  v147 = v164;
  v148 = v165;
  v145 = v162;
  v146 = v163;
  outlined init with copy of LocalizedStringResource(&v143, &v134);
  v133.receiver = v17;
  v133.super_class = v16;
  v21 = objc_msgSendSuper2(&v133, sel_init);
  *(&v135 + 1) = v16;
  *&v134 = v21;
  v22 = _NSLocalizedStringResource.init(resource:)(&v134);
  *(&v135 + 1) = v15;
  *&v134 = v22;
  v23 = __swift_project_boxed_opaque_existential_1(&v134, v15);
  v24 = *(v15 - 8);
  a1 = *(v24 + 64);
  v25 = (a1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = (&v125 - v25);
  v4 = *(v24 + 16);
  (v4)(&v125 - v25, v26);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    goto LABEL_64;
  }

  if (a1 != 8)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_12:
  v44 = *v27;
  v45 = *(v24 + 8);
  swift_unknownObjectRetain();
  v45(v27, v15);
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(&v134);
LABEL_15:
  v46 = &selRef__setGroupIdentifier_;
LABEL_63:
  [v2 *v46];
  return swift_unknownObjectRelease();
}

void _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *&v730 = v18;
  v728 = v19;
  v21 = v20;
  v23 = v22;
  v725 = v24;
  v712 = v25;
  v716 = a12;
  v713 = a11;
  v890 = *MEMORY[0x1E69E9840];
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
  MEMORY[0x1EEE9AC00](v683);
  v677 = &v655 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v655 - v28;
  v678 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
  MEMORY[0x1EEE9AC00](v678);
  v685 = &v655 - v30;
  v687 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v687);
  v699 = &v655 - v31;
  *&v704 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
  MEMORY[0x1EEE9AC00](v704);
  v696 = &v655 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  *(&v704 + 1) = &v655 - v34;
  v731 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v711 = *(v731 - 1);
  MEMORY[0x1EEE9AC00](v731);
  v684 = &v655 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v686 = &v655 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v691 = &v655 - v39;
  MEMORY[0x1EEE9AC00](v40);
  i = &v655 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v706 = &v655 - v43;
  v701 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v701);
  v698 = &v655 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v726 = &v655 - v46;
  v723 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  *&v708 = *(v723 - 1);
  MEMORY[0x1EEE9AC00](v723);
  v679 = &v655 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v692 = &v655 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v688 = &v655 - v51;
  MEMORY[0x1EEE9AC00](v52);
  *&v722 = &v655 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v705 = &v655 - v55;
  v700 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v700);
  v682 = &v655 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v681 = (&v655 - v58);
  MEMORY[0x1EEE9AC00](v59);
  v689 = (&v655 - v60);
  MEMORY[0x1EEE9AC00](v61);
  v703 = &v655 - v62;
  MEMORY[0x1EEE9AC00](v63);
  *&v709 = &v655 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v702 = &v655 - v66;
  v695 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
  MEMORY[0x1EEE9AC00](v695);
  v727 = &v655 - v67;
  *&v729 = v23;
  if (!v23)
  {

    v725 = v713;
    *&v729 = v68;
  }

  if (*v21)
  {
    v69 = *v21;
  }

  else
  {
    v69 = MEMORY[0x1E69E7CC0];
  }

  v802 = v69;
  swift_unknownObjectRetain();

  *&v724 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(a10, &v802, v15, v13);
  v714 = 0;

  swift_unknownObjectRelease();
  v693 = a10;
  if (v17)
  {
    v721 = v17;
  }

  else
  {
    v721 = [objc_opt_self() mainBundle];
  }

  v70 = v730;
  v71 = v17;

  v72 = String.count.getter();

  if (v72 < 1)
  {
    v70 = 0xEB00000000656C62;
    v728 = 0x617A696C61636F4CLL;
  }

  else
  {
    if (!v70)
    {
      __break(1u);
      goto LABEL_374;
    }
  }

  LODWORD(v717) = a9;
  v73 = v21[6];
  v720 = v21;
  v680 = v29;
  v733 = v15;
  *&v730 = v70;
  if (v73)
  {
    v74 = v21[5];
    if (v21[7])
    {

      v75 = [v721 localizations];
      if (!v75)
      {
        v75 = _ContiguousArrayBuffer._asCocoaArray()();
      }

      v76 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_181218E20;
      *(v77 + 32) = v74;
      *(v77 + 40) = v73;
      v78 = [v76 preferredLocalizationsFromArray:v75 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

      swift_unknownObjectRelease();
      if (v78)
      {
        type metadata accessor for __SwiftDeferredNSArray();
        if (swift_dynamicCastClass())
        {
        }

        else
        {
          v81 = v78;
        }

        v80 = v721;
        v82 = swift_dynamicCastClass();
        if (v82)
        {
          v79 = v82;
        }

        else
        {
          swift_unknownObjectRelease();
          [v78 copy];
          v83 = _bridgeCocoaArray<A>(_:)();
          swift_unknownObjectRelease();
          v79 = specialized _arrayForceCast<A, B>(_:)(v83);
        }
      }

      else
      {
        v79 = MEMORY[0x1E69E7CC0];
        v80 = v721;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_181218E20;
      *(v79 + 32) = v74;
      *(v79 + 40) = v73;

      v80 = v721;
    }
  }

  else
  {
    v79 = 0;
    v80 = v721;
  }

  v84 = [v80 preferredLocalizations];
  v85 = MEMORY[0x1E69E7CC0];
  if (!v84)
  {
LABEL_33:
    if (v79)
    {
      goto LABEL_34;
    }

LABEL_37:

    goto LABEL_38;
  }

  v86 = v84;
  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v87 = v86;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v88 = swift_dynamicCastClass();
  if (v88)
  {
    v85 = v88;

    goto LABEL_33;
  }

  swift_unknownObjectRelease();
  [v86 copy];
  v90 = _bridgeCocoaArray<A>(_:)();
  swift_unknownObjectRelease();
  v85 = specialized _arrayForceCast<A, B>(_:)(v90);

  if (!v79)
  {
    goto LABEL_37;
  }

LABEL_34:
  v89 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v79, v85);

  if (v89)
  {

    v79 = 0;
  }

LABEL_38:
  v719 = v79;
  if ((v717 & 1) == 0)
  {
    v95 = *(v724 + 16);
    *&v732 = v724 + 16;
    if (v95)
    {
      v96 = 0;
      v718 = 0;
      v97 = MEMORY[0x1E69E7CC8];
      *&v875[0] = MEMORY[0x1E69E7CC8];
LABEL_43:
      LODWORD(v707) = 1;
LABEL_87:
      v715 = v96;
      v127 = objc_allocWithZone(NSAttributedString);
      v128 = String._bridgeToObjectiveCImpl()();
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();

      v690 = v97;
      v694 = [v127 initWithString:v128 attributes:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v129 = *v732;
      if (*v732)
      {
        v780.i64[0] = MEMORY[0x1E69E7CC0];
        v130 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129, 0);
        v131 = 0;
        v132 = v780.i64[0];
        v133 = v724 + 32;
        while (v131 < *v732)
        {
          outlined init with copy of String.LocalizationValue.FormatArgument(v133, &v802);
          v134 = v13;
          _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(&v791, v793 + 8, 1, v733, v13);
          v130 = outlined destroy of String.LocalizationValue.FormatArgument(&v802);
          v780.i64[0] = v132;
          v136 = *(v132 + 16);
          v135 = *(v132 + 24);
          if (v136 >= v135 >> 1)
          {
            v130 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1);
            v132 = v780.i64[0];
          }

          v131 = (v131 + 1);
          *(v132 + 16) = v136 + 1;
          v137 = (v132 + (v136 << 6));
          v138 = v791;
          v139 = v792;
          v140 = v793[0];
          *(v137 + 73) = *(v793 + 9);
          v137[3] = v139;
          v137[4] = v140;
          v137[2] = v138;
          v133 += 112;
          v13 = v134;
          if (v129 == v131)
          {

            goto LABEL_95;
          }
        }

        __break(1u);
LABEL_335:
        __break(1u);
        goto LABEL_336;
      }

      v132 = MEMORY[0x1E69E7CC0];
LABEL_95:
      v141 = v720[1];
      v802 = *v720;
      v803 = v141;
      v804[0] = v720[2];
      *(v804 + 9) = *(v720 + 41);
      *&v732 = AttributedString.LocalizationOptions._nsOptions.getter();
      v143 = v142;
      ObjectType = swift_getObjectType();
      v145 = v13[61];
      v146 = v143;
      v147 = v145(ObjectType, v13);
      v148 = v147;
      v149 = *(v132 + 16);
      *&v724 = v149;
      if (v149)
      {
        v676 = v147;
        v710 = v13;
        *&v874[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v149, 0);
        v150 = *&v874[0];
        v151 = v132 + 32;
        v152 = v149;
        do
        {
          outlined init with copy of FloatingPointRoundingRule?(v151, &v802, &_ss7CVarArg_p6vararg_SS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSg11attrStrInfotMd);
          v792 = v803;
          v793[0] = v804[0];
          *(v793 + 9) = *(v804 + 9);
          v791 = v802;
          outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(*(&v793[0] + 1), *(v804 + 9) >> 56, SBYTE8(v804[1]));
          outlined init with take of Equatable(v791.i8, &v780);
          *&v874[0] = v150;
          v154 = *(v150 + 16);
          v153 = *(v150 + 24);
          if (v154 >= v153 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v153 > 1), v154 + 1, 1);
            v150 = *&v874[0];
          }

          *(v150 + 16) = v154 + 1;
          outlined init with take of Equatable(v780.i8, v150 + 40 * v154 + 32);
          v151 += 64;
          --v152;
        }

        while (v152);
        v13 = v710;
        v148 = v676;
      }

      v155 = objc_opt_self();
      v156 = getVaList(_:)();

      v157 = v155;
      v158 = v694;
      v159 = [v157 _attributedStringWithFormat_attributeOptions_formattingOptions_locale_arguments_];

      v160 = v159;
      v161 = _s10Foundation14AttributeScopePAAE16scopeDescription33_4D406B8DD906487F9F362CE42830919ELLAA0cE0AELLVvgZAA01_a4PlusC0VyAA0B6ScopesO0A10AttributesVG_Ttg5();

      v162 = v714;
      AttributedString.init(_:attributeTable:options:)(v160, v161, 0, v802.i64);
      v163 = v146;
      v96 = v715;
      v80 = v721;
      if (v162)
      {

        BigString.init(_:)();
        AttributedString.init(_:attributes:)(v822, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v802.i64);

        v714 = 0;
        v164 = v802.i64[0];
      }

      else
      {
        *&v732 = v163;
        v714 = 0;

        *&v874[0] = v802.i64[0];
        v780.i64[0] = v693;
        v780.i64[1] = v713;
        *&v781 = v716;
        v165 = v724;
        if (v724)
        {
          *&v729 = v160;
          v710 = v13;
          *&v760[0] = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v724, 0);
          v166 = v165;
          v167 = *&v760[0];
          v168 = v132 + 32;
          do
          {
            outlined init with copy of FloatingPointRoundingRule?(v168, &v802, &_ss7CVarArg_p6vararg_SS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSg11attrStrInfotMd);
            v792 = v803;
            v793[0] = v804[0];
            *(v793 + 9) = *(v804 + 9);
            v791 = v802;
            v169 = *(&v793[0] + 1);
            v170 = *(v804 + 9) >> 56;
            v171 = BYTE8(v804[1]);
            __swift_destroy_boxed_opaque_existential_1(&v791);
            *&v760[0] = v167;
            v173 = *(v167 + 16);
            v172 = *(v167 + 24);
            if (v173 >= v172 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v172 > 1), v173 + 1, 1);
              v167 = *&v760[0];
            }

            *(v167 + 16) = v173 + 1;
            v174 = v167 + 24 * v173;
            *(v174 + 32) = v169;
            *(v174 + 40) = v170;
            *(v174 + 48) = v171;
            v168 += 64;
            --v166;
          }

          while (v166);

          v96 = v715;
          v13 = v710;
          v80 = v721;
          v158 = v694;
          v160 = v729;
        }

        else
        {

          v167 = MEMORY[0x1E69E7CC0];
        }

        String.LocalizationValue.restoreAttributedStringArguments(_:in:)(v167);

        v164 = *&v874[0];
      }

LABEL_113:
      v175 = *(v164 + 56);
      v176 = *(v164 + 64);
      v732 = *(v164 + 40);
      v716 = v164;
      v729 = *(v164 + 24);
      swift_unknownObjectRetain();
      v802 = v729;
      v803 = v732;
      *&v804[0] = v175;
      *(&v804[0] + 1) = v176;
      lazy protocol witness table accessor for type BigString and conformance BigString();
      lazy protocol witness table accessor for type BigString and conformance BigString();
      v721 = String.init<A>(_:)();
      v178 = v177;
      if (v96)
      {
        v179 = v96;
        static URL._unconditionallyBridgeFromObjectiveC(_:)(v96, v802.i64);
        v181 = v802.i64[1];
        v180 = v802.i64[0];
      }

      else
      {
        v179 = 0;
        v180 = 0;
        v181 = 0;
      }

      v182 = v80;
      v183._countAndFlagsBits = 0x65686361636F6E2ELL;
      v183._object = 0xE800000000000000;
      v184 = String.hasSuffix(_:)(v183);

      v185 = v717;
      v186 = (v184 || v719 != 0) | ~v717;
      v187 = v182;
      v188 = v185 & 1;
      v189 = v181;
      v131 = v718;
      v190 = v707;
      _sSS10FoundationE17LocalizationValueV23_parseLocalizedMarkdown_015bundlePreferredB08tableURL19formatConfiguration5scope30appliesSourcePositionAttribute11ignoreCacheAA16AttributedStringV6parsed_Sb23hasInflectionAttributestSgSS_SSSgyXKAA0J0VSgSo12NSDictionaryCSgxmS2btAA0Q5ScopeRzlFAA0Q6ScopesO0aY0V_Tt4t7B506_sSS10a3E17bc62V7resolve3key7options5table6bundle6locale5scope07performB0AA16tu54VSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14Q18ScopeRzlFANyXEfu4_SbSo8NSBundleCTf1nncnnnn_n(v721, v178, v180, v189, v718, v707, v186 & 1, v188, &v791, v187);

      swift_unknownObjectRelease();
      v191 = v791.i64[0];
      if (!v791.i64[0])
      {

        *v712 = v716;
        return;
      }

      v694 = v187;
      v192 = v190;
      v193 = v791.i8[8];
      v735 = v791.i64[0];
      v734 = MEMORY[0x1E69E7CC0];
      v715 = v179;
      if ((v192 & 1) == 0)
      {

        v224 = MEMORY[0x1E69E7CC0];
        goto LABEL_183;
      }

      LODWORD(v717) = v791.u8[8];
      v194 = *(v791.i64[0] + 40);
      v887 = *(v791.i64[0] + 24);
      v888 = v194;
      v889 = *(v791.i64[0] + 56);
      v195 = BigString.startIndex.getter();
      v129 = v196;
      v198 = v197;
      v199 = v191;
      v201 = v200;
      v130 = BigString.endIndex.getter();
      if (v130 >> 10 < v195 >> 10)
      {
LABEL_336:
        __break(1u);
        goto LABEL_337;
      }

      v713 = v178;
      v710 = v13;
      v802.i64[0] = v195;
      v802.i64[1] = v129;
      *&v803 = v198;
      *(&v803 + 1) = v201;
      *&v804[0] = v130;
      *(&v804[0] + 1) = v202;
      *&v804[1] = v203;
      *(&v804[1] + 1) = v204;
      v205 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

      RangeSet.init(_:)();
      v728 = v199;
      *v709 = v199;
      v690 = v205;
      RangeSet.init()();
      v206 = v706;
      RangeSet.ranges.getter();
      v207 = v711;
      v208 = v726;
      v209 = v731;
      v675 = v711[2];
      v676 = (v711 + 2);
      v675(v726, v206, v731);
      v210 = *(v701 + 36);
      v211 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
      dispatch thunk of Collection.startIndex.getter();
      v212 = v207[1];
      v711 = v207 + 1;
      v707 = v212;
      v212(v206, v209);
      v213 = v208;
      dispatch thunk of Collection.endIndex.getter();
      v214 = *&v208[v210];
      v725 = v211;
      if (v214 != v802.i64[0])
      {
        *&v724 = v210;
        do
        {
          v225 = dispatch thunk of Collection.subscript.read();
          v227 = v226[5];
          *&v732 = v226[4];
          *&v730 = v227;
          *&v729 = v226[6];
          v225(&v802, 0);
          dispatch thunk of Collection.formIndex(after:)();
          v228 = v728;
          v229 = *(v728 + 40);
          v884 = *(v728 + 24);
          v885 = v229;
          v886 = *(v728 + 56);
          swift_unknownObjectRetain();
          v230 = BigString.UnicodeScalarView.index(roundingDown:)();
          v232 = v231;
          v234 = v233;
          v236 = v235;
          swift_unknownObjectRelease();
          v237 = *(v228 + 40);
          v881 = *(v228 + 24);
          v882 = v237;
          v883 = *(v228 + 56);
          swift_unknownObjectRetain();
          v238 = BigString.UnicodeScalarView.index(roundingDown:)();
          v240 = v239;
          v242 = v241;
          v244 = v243;
          swift_unknownObjectRelease();
          v802.i64[0] = v230;
          v802.i64[1] = v232;
          *&v803 = v234;
          *(&v803 + 1) = v236;
          *&v804[0] = v238;
          *(&v804[0] + 1) = v240;
          v245 = v238 ^ v230;
          v209 = v731;
          *&v804[1] = v242;
          *(&v804[1] + 1) = v244;
          if (v245 >= 0x400)
          {
            v246 = RangeSet._ranges.modify();
            RangeSet.Ranges._insert(contentsOf:)();
            v246(&v791, 0);
          }

          v213 = v726;
          dispatch thunk of Collection.endIndex.getter();
        }

        while (*(v213 + v724) != v802.i64[0]);
      }

      outlined destroy of TermOfAddress?(v213, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
      v215 = v700;
      v216 = v709;
      v217 = v709 + *(v700 + 24);
      v673 = *(v708 + 16);
      v674 = v708 + 16;
      v673(v217, v722, v723);
      v218 = v706;
      RangeSet.ranges.getter();
      v219 = RangeSet.Ranges.count.getter();
      v220 = v707;
      v707(v218, v209);
      v221 = *(v215 + 28);
      LODWORD(v693) = v219 > 1;
      *(v216 + v221) = v693;
      v222 = i;
      RangeSet.ranges.getter();
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v791.i64[0] == v802.i64[0])
      {
        v220(v222, v209);
        v223 = v728;
      }

      else
      {
        v247 = dispatch thunk of Collection.subscript.read();
        v249 = *v248;
        v671 = v248[1];
        v672 = v249;
        v250 = v248[2];
        v669 = v248[3];
        v670 = v250;
        v247(&v802, 0);
        v220(v222, v209);
        v251 = v691;
        RangeSet.ranges.getter();
        v252 = dispatch thunk of Collection.isEmpty.getter();
        v223 = v728;
        if ((v252 & 1) == 0)
        {
          v301 = v251;
          dispatch thunk of Collection.endIndex.getter();
          lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
          dispatch thunk of BidirectionalCollection.index(before:)();
          v302 = dispatch thunk of Collection.subscript.read();
          v304 = v303[4];
          i = v303[5];
          v305 = v303[7];
          v668 = v303[6];
          v302(&v802, 0);
          v220(v301, v209);
          AttributedString.Guts.findRun(at:)(v672, v669, v802.i64);
          *&v732 = v802.i64[1];
          *&v730 = v802.i64[0];
          v662 = *(&v803 + 1);
          v663 = v803;
          v691 = *(&v804[0] + 1);
          v666 = *(&v804[1] + 1);
          v667 = *&v804[1];
          *&v729 = v805;
          v306 = *(v223 + 40);
          v878 = *(v223 + 24);
          v879 = v306;
          v880 = *(v223 + 56);
          v307 = BigString.endIndex.getter();
          v664 = v305;
          v665 = v304;
          if ((v307 ^ v304) > 0x3FF)
          {
            AttributedString.Guts.findRun(at:)(v304, v305, v802.i64);
            *&v724 = v802.i64[1];
            v726 = v802.i64[0];
            v661 = *(&v803 + 1);
            v277 = v803;
            v267 = *(&v804[0] + 1);
            v131 = *(&v804[1] + 1);
            v269 = *&v804[1];
            v272 = v805;
            v334 = v706;
            RangeSet.ranges.getter();
            v288 = RangeSet.Ranges.count.getter();
            v335 = *(v708 + 8);
            v335(v705, v723);
            v707(v334, v731);
            v335(v722, v723);
            v276 = v661;
            v273 = v662;
            v284 = v665;
            v261 = v666;
            v278 = 0;
            v275 = v693;
            v290 = v732;
            v280 = v671;
            v279 = v672;
            v289 = v730;
            v283 = v669;
            v281 = v670;
            v257 = v691;
            v259 = v667;
            v286 = v668;
            v282 = v729;
            v285 = i;
            v274 = v663;
            v287 = v664;
          }

          else
          {
            v308 = *(v223 + 72);
            if (v308)
            {
              v309 = *(v223 + 80);
            }

            else
            {
              v309 = 0;
            }

            v661 = v309;
            v310 = *(v223 + 96);
            v311 = swift_unknownObjectRetain();
            v726 = v310;
            *&v724 = specialized Rope._endPath.getter(v311);
            if (v308)
            {
              swift_unknownObjectRelease();
            }

            v312 = v706;
            v313 = v723;
            RangeSet.ranges.getter();
            v288 = RangeSet.Ranges.count.getter();
            v314 = *(v708 + 8);
            v314(v705, v313);
            v220(v312, v209);
            v314(v722, v313);
            v278 = 0;
            v277 = 0;
            v287 = v664;
            v284 = v665;
            v267 = v665;
            v285 = i;
            v269 = i;
            v286 = v668;
            v283 = v669;
            v131 = v668;
            v272 = v664;
            v275 = v693;
            v290 = v732;
            v280 = v671;
            v279 = v672;
            v289 = v730;
            v281 = v670;
            v257 = v691;
            v261 = v666;
            v259 = v667;
            v282 = v729;
            v273 = v662;
            v274 = v663;
            v276 = v661;
          }

LABEL_137:
          v291 = v709;
          *(v709 + 8) = v273;
          *(v291 + 16) = v289;
          *(v291 + 24) = v290;
          *(v291 + 32) = v274;
          *(v291 + 40) = v257;
          *(v291 + 48) = v259;
          *(v291 + 56) = v261;
          *(v291 + 64) = v282;
          *(v291 + 72) = v279;
          *(v291 + 80) = v280;
          *(v291 + 88) = v281;
          *(v291 + 96) = v283;
          *(v291 + 104) = v278;
          *(v291 + 112) = 0;
          *(v291 + 113) = v275;
          v292 = v726;
          *(v291 + 120) = v276;
          *(v291 + 128) = v292;
          *(v291 + 136) = v724;
          *(v291 + 144) = v277;
          *(v291 + 152) = v267;
          *(v291 + 160) = v269;
          *(v291 + 168) = v131;
          *(v291 + 176) = v272;
          *(v291 + 184) = v284;
          *(v291 + 192) = v285;
          *(v291 + 200) = v286;
          *(v291 + 208) = v287;
          *(v291 + 216) = v288;
          *(v291 + 224) = 0;
          *(v291 + 225) = v275;
          v293 = v702;
          outlined init with take of AttributedString.Runs(v291, v702);
          v294 = v293;
          v295 = v703;
          outlined init with copy of AttributedString.Runs(v294, v703);
          v129 = *(&v704 + 1);
          outlined init with copy of AttributedString.Runs(v295, *(&v704 + 1));
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
          v130 = swift_allocObject();
          *(v130 + 16) = xmmword_181218E20;
          if (one-time initialization token for name == -1)
          {
LABEL_138:
            v296 = qword_1EA7B25B0;
            *(v130 + 32) = static AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute.name;
            *(v130 + 40) = v296;
            *(v129 + *(v704 + 36)) = v130;
            v693 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
            v297 = static _SetStorage.allocate(capacity:)();
            v298 = (v297 + 56);

            v299 = qword_1EEECF040;
            v300 = unk_1EEECF048;
            Hasher.init(_seed:)();
            v13 = v710;
            if (v300 == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              if (v300)
              {
                MEMORY[0x1865CD060](1);
                String.hash(into:)();
              }

              else
              {
                MEMORY[0x1865CD060](0);
              }
            }

            v315 = &v802;
            v316 = Hasher._finalize()();
            v317 = -1 << *(v297 + 32);
            v318 = v316 & ~v317;
            v319 = v318 >> 6;
            v320 = *(v298 + (v318 >> 6));
            v321 = 1 << v318;
            if (((1 << v318) & v320) == 0)
            {
              goto LABEL_171;
            }

            v322 = ~v317;
            while (1)
            {
              v323 = (*(v297 + 48) + 16 * v318);
              v315 = *v323;
              v131 = v323[1];
              if (v131 == 1)
              {
                if (v300 == 1)
                {
                  outlined copy of AttributedString.AttributeRunBoundaries?(*v323, 1);
                  v332 = v315;
                  v333 = 1;
                  goto LABEL_178;
                }

                goto LABEL_156;
              }

              if (v300 != 1)
              {
                break;
              }

LABEL_156:
              outlined copy of AttributedString.AttributeRunBoundaries?(*v323, v323[1]);
              outlined copy of AttributedString.AttributeRunBoundaries?(v299, v300);
              outlined consume of AttributedString.AttributeRunBoundaries?(v315, v131);
              v324 = v299;
              v325 = v300;
LABEL_157:
              outlined consume of AttributedString.AttributeRunBoundaries?(v324, v325);
LABEL_158:
              v318 = (v318 + 1) & v322;
              v319 = v318 >> 6;
              v320 = *(v298 + (v318 >> 6));
              v321 = 1 << v318;
              if ((v320 & (1 << v318)) == 0)
              {
                v13 = v710;
LABEL_171:
                *(v298 + v319) = v320 | v321;
                v328 = (*(v297 + 48) + 16 * v318);
                *v328 = v299;
                v328[1] = v300;
                v329 = *(v297 + 16);
                v330 = __OFADD__(v329, 1);
                v331 = v329 + 1;
                if (v330)
                {
                  goto LABEL_368;
                }

                *(v297 + 16) = v331;
                goto LABEL_179;
              }
            }

            if (!v131)
            {
              outlined copy of AttributedString.AttributeRunBoundaries?(*v323, 0);
              if (!v300)
              {
                swift_bridgeObjectRelease_n();
                v332 = v315;
                v333 = 0;
                goto LABEL_178;
              }

              outlined copy of AttributedString.AttributeRunBoundaries?(v299, v300);

              v324 = v315;
              v325 = 0;
              goto LABEL_157;
            }

            if (!v300)
            {
              outlined copy of AttributedString.AttributeRunBoundaries?(*v323, v323[1]);
              outlined copy of AttributedString.AttributeRunBoundaries?(v299, 0);
              outlined copy of AttributedString.AttributeRunBoundaries?(v315, v131);

              v324 = v315;
              v325 = v131;
              goto LABEL_157;
            }

            if (v315 == v299 && v131 == v300)
            {
              outlined copy of AttributedString.AttributeRunBoundaries?(v299, v300);
              outlined copy of AttributedString.AttributeRunBoundaries?(v299, v300);

              goto LABEL_176;
            }

            v327 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined copy of AttributedString.AttributeRunBoundaries?(v315, v131);
            outlined copy of AttributedString.AttributeRunBoundaries?(v299, v300);
            outlined copy of AttributedString.AttributeRunBoundaries?(v315, v131);

            if ((v327 & 1) == 0)
            {
              outlined consume of AttributedString.AttributeRunBoundaries?(v315, v131);
              goto LABEL_158;
            }

            outlined consume of AttributedString.AttributeRunBoundaries?(v299, v300);
            v299 = v315;
            v300 = v131;
LABEL_176:
            v332 = v299;
            v333 = v300;
LABEL_178:
            outlined consume of AttributedString.AttributeRunBoundaries?(v332, v333);
            v13 = v710;
LABEL_179:
            v336 = v727;
            v337 = v696;
            v338 = *(&v704 + 1);
            outlined destroy of TermOfAddress?(&qword_1EEECF040, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
            outlined destroy of AttributedString.Runs(v703);
            outlined destroy of AttributedString.Runs(v702);
            *(v338 + *(v704 + 40)) = v297;
            outlined init with copy of FloatingPointRoundingRule?(v338, v337, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
            outlined init with copy of FloatingPointRoundingRule?(v337, v336, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
            v339 = *(v337 + 96);
            if (v339 != 2)
            {
              v340 = v336;
              v341 = *(v337 + 88);
              v732 = *(v337 + 72);
              outlined destroy of TermOfAddress?(v338, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
              v342 = *(*v337 + 16);
              outlined destroy of TermOfAddress?(v337, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
              v343 = v340 + *(v695 + 36);
              *v343 = v732;
              *(v343 + 16) = v341;
              *(v343 + 24) = v339;
              *(v343 + 32) = v342;
              specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v780);
              v798 = v787;
              v799 = v788;
              v800 = v789;
              v801 = v790;
              v794 = v784;
              v795 = v785[0];
              v796 = v785[1];
              v797 = v786;
              v791 = v780;
              v792 = v781;
              v793[0] = v782;
              v793[1] = v783;
              v808 = v787;
              v809 = v788;
              v810 = v789;
              v811 = v790;
              v805 = v784;
              v806[0] = v785[0];
              v806[1] = v785[1];
              v807 = v786;
              v802 = v780;
              v803 = v781;
              v804[0] = v782;
              v804[1] = v783;
              if (_s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOg(&v802) == 1)
              {
                *&v732 = MEMORY[0x1E69E7CC0];
                v131 = v718;
                goto LABEL_182;
              }

              v695 = v708 + 8;
              *&v732 = MEMORY[0x1E69E7CC0];
              LODWORD(v696) = v717;
              v353 = v713;
              v131 = v718;
              v354 = v716;
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    if (BYTE9(v806[1]))
                    {
                      goto LABEL_196;
                    }

                    v876[3] = v804[1];
                    v876[4] = v805;
                    v877[0] = v806[0];
                    *(v877 + 9) = *(v806 + 9);
                    v876[0] = v802;
                    v876[1] = v803;
                    v876[2] = v804[0];

                    v355 = _sSn10FoundationSS5IndexVRszrlE_2inSnyACGSgAA16AttributedStringV22MarkdownSourcePositionV_qd__tcSyRd__lufCSS_Tt1B5(v876, v721, v353);
                    if (v357)
                    {
                      goto LABEL_196;
                    }

                    v358 = v355;
                    v359 = v356;

                    _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v358, v359, v354, &v774);
                    if (*(&v775 + 1) == 2)
                    {
                      goto LABEL_196;
                    }

                    v360 = v774;
                    *(v873 + 8) = v777;
                    *(&v873[1] + 8) = v778;
                    *(&v873[2] + 1) = v779;
                    v871 = v774;
                    v703 = *(&v774 + 1);
                    v704 = v775;
                    v872 = v775;
                    v705 = v776;
                    *&v873[0] = v776;

                    AttributedString.UnicodeScalarView.init(_:)(v354, &v749);
                    v772[1] = v750;
                    v772[2] = v751;
                    v772[3] = v752;
                    v772[4] = v753;
                    v769 = v751;
                    v770 = v752;
                    v771 = v753;
                    v772[0] = v749;
                    v767 = v749;
                    v768 = v750;
                    v760[2] = v873[0];
                    v760[3] = v873[1];
                    v760[4] = v873[2];
                    v760[0] = v871;
                    v760[1] = v872;
                    AttributedString.UnicodeScalarView.subscript.getter(v760, &v780);
                    outlined destroy of AttributedString.UnicodeScalarView(v772);
                    v875[6] = v785[1];
                    v875[7] = v786;
                    v875[8] = v787;
                    v875[9] = v788;
                    v875[2] = v782;
                    v875[3] = v783;
                    v875[4] = v784;
                    v875[5] = v785[0];
                    v875[0] = v780;
                    v875[1] = v781;

                    AttributedString.UnicodeScalarView.init(_:)(v361, v766);
                    v773[2] = v766[2];
                    v773[3] = v766[3];
                    v773[4] = v766[4];
                    v773[0] = v766[0];
                    v773[1] = v766[1];
                    v763 = v766[2];
                    v764 = v766[3];
                    v765 = v766[4];
                    v761 = v766[0];
                    v762 = v766[1];
                    v757 = v809;
                    v758 = v810;
                    v759 = v811;
                    v755 = v807;
                    v756 = v808;
                    AttributedString.UnicodeScalarView.subscript.getter(&v755, v760);
                    outlined destroy of AttributedString.UnicodeScalarView(v773);
                    v874[6] = v760[6];
                    v874[7] = v760[7];
                    v874[8] = v760[8];
                    v874[9] = v760[9];
                    v874[2] = v760[2];
                    v874[3] = v760[3];
                    v874[4] = v760[4];
                    v874[5] = v760[5];
                    v874[0] = v760[0];
                    v874[1] = v760[1];
                    v362 = specialized Sequence<>.elementsEqual<A>(_:)(v874);
                    outlined destroy of TermOfAddress?(v874, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
                    outlined destroy of TermOfAddress?(v875, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
                    if (v362)
                    {
                      break;
                    }

                    v131 = v718;
                    v353 = v713;
LABEL_196:
                    specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v780);
                    v798 = v787;
                    v799 = v788;
                    v800 = v789;
                    v801 = v790;
                    v794 = v784;
                    v795 = v785[0];
                    v796 = v785[1];
                    v797 = v786;
                    v791 = v780;
                    v792 = v781;
                    v793[0] = v782;
                    v793[1] = v783;
                    v808 = v787;
                    v809 = v788;
                    v810 = v789;
                    v811 = v790;
                    v805 = v784;
                    v806[0] = v785[0];
                    v806[1] = v785[1];
                    v807 = v786;
                    v802 = v780;
                    v803 = v781;
                    v804[0] = v782;
                    v804[1] = v783;
                    if (_s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOg(&v802) == 1)
                    {
                      goto LABEL_182;
                    }
                  }

                  v691 = v807;
                  v671 = v808;
                  v672 = *(&v807 + 1);
                  v670 = *(&v808 + 1);
                  v668 = v360;
                  v669 = v809;
                  specialized AttributedString.subscript.getter(v354, v766);
                  v767 = v766[0];
                  v768 = v766[1];
                  v769 = v766[2];
                  v770 = v766[3];
                  v771 = v766[4];
                  v363 = *&v766[0];
                  v760[0] = *(v766 + 8);
                  v760[1] = *(&v766[1] + 8);
                  v760[2] = *(&v766[2] + 8);
                  v760[3] = *(&v766[3] + 8);
                  outlined init with copy of AttributedSubstring(&v767, &v780);
                  RangeSet.init(_:)();
                  *&v724 = v363;
                  *v689 = v363;
                  RangeSet.init()();
                  v364 = v706;
                  RangeSet.ranges.getter();
                  v365 = v698;
                  v366 = v731;
                  v675(v698, v364, v731);
                  v367 = *(v701 + 36);
                  dispatch thunk of Collection.startIndex.getter();
                  v707(v364, v366);
                  dispatch thunk of Collection.endIndex.getter();
                  v368 = *(v365 + v367);
                  *&v722 = v367;
                  if (v368 != v780.i64[0])
                  {
                    do
                    {
                      v384 = dispatch thunk of Collection.subscript.read();
                      v386 = v385[5];
                      *&v730 = v385[4];
                      *&v729 = v386;
                      v726 = v385[6];
                      v384(&v780, 0);
                      dispatch thunk of Collection.formIndex(after:)();
                      v387 = v724;
                      v873[15] = *(v724 + 24);
                      v873[16] = *(v724 + 40);
                      v873[17] = *(v724 + 56);
                      swift_unknownObjectRetain();
                      v388 = BigString.UnicodeScalarView.index(roundingDown:)();
                      v390 = v389;
                      v392 = v391;
                      v394 = v393;
                      swift_unknownObjectRelease();
                      v873[12] = *(v387 + 24);
                      v873[13] = *(v387 + 40);
                      v873[14] = *(v387 + 56);
                      swift_unknownObjectRetain();
                      v395 = BigString.UnicodeScalarView.index(roundingDown:)();
                      v397 = v396;
                      v399 = v398;
                      v401 = v400;
                      swift_unknownObjectRelease();
                      v780.i64[0] = v388;
                      v780.i64[1] = v390;
                      *&v781 = v392;
                      *(&v781 + 1) = v394;
                      *&v782 = v395;
                      *(&v782 + 1) = v397;
                      *&v783 = v399;
                      v366 = v731;
                      *(&v783 + 1) = v401;
                      if ((v395 ^ v388) >= 0x400)
                      {
                        v402 = RangeSet._ranges.modify();
                        RangeSet.Ranges._insert(contentsOf:)();
                        v402(v760, 0);
                      }

                      v365 = v698;
                      dispatch thunk of Collection.endIndex.getter();
                    }

                    while (*(v365 + v722) != v780.i64[0]);
                  }

                  outlined destroy of TermOfAddress?(v365, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
                  v369 = v700;
                  v370 = v689;
                  v673(v689 + *(v700 + 24), v692, v723);
                  v371 = v706;
                  RangeSet.ranges.getter();
                  v372 = RangeSet.Ranges.count.getter();
                  v373 = v707;
                  v707(v371, v366);
                  v374 = *(v369 + 28);
                  LODWORD(v702) = v372 > 1;
                  *(v370 + v374) = v702;
                  v375 = v686;
                  RangeSet.ranges.getter();
                  dispatch thunk of Collection.startIndex.getter();
                  dispatch thunk of Collection.endIndex.getter();
                  if (*&v760[0] == v780.i64[0] || (v376 = dispatch thunk of Collection.subscript.read(), v378 = *(v377 + 8), i = *v377, v379 = *(v377 + 24), v666 = *(v377 + 16), v667 = v378, v665 = v379, v376(&v780, 0), v373(v375, v366), v375 = v684, RangeSet.ranges.getter(), (dispatch thunk of Collection.isEmpty.getter() & 1) != 0))
                  {
                    v373(v375, v366);
                    v380 = v724;
                    v381 = *(v724 + 72);
                    *&v730 = *(v724 + 96);
                    v382 = v723;
                    v383 = v689;
                    *&v729 = v381 ? *(v381 + 18) : 0;
                    v873[6] = *(v724 + 24);
                    v873[7] = *(v724 + 40);
                    v873[8] = *(v724 + 56);
                    v403 = BigString.startIndex.getter();
                    v405 = v404;
                    v726 = v406;
                    *&v722 = v407;
                    v408 = *(v380 + 72);
                    *&v709 = *(v380 + 96);
                    if (v408)
                    {
                      *&v708 = *(v408 + 18);
                      v409 = *v695;
                      swift_unknownObjectRetain();
                      v409(v688, v382);
                      v409(v692, v382);
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v410 = *v695;
                      (*v695)(v688, v382);
                      v410(v692, v382);
                      *&v708 = 0;
                    }

                    v299 = &v802;
                    v873[3] = *(v380 + 24);
                    v873[4] = *(v380 + 40);
                    v873[5] = *(v380 + 56);
                    v411 = BigString.startIndex.getter();
                    v413 = v412;
                    v415 = v414;
                    v417 = v416;
                    outlined destroy of AttributedSubstring(&v767);
                    v418 = 0;
                    v419 = 0;
                    v420 = 0;
                    v421 = 0;
                    v422 = 0;
                    v423 = -1;
                    v424 = v403;
                    v425 = v405;
                    v426 = v726;
                    v427 = v726;
                    v428 = v722;
                    v429 = v722;
                    v430 = v411;
                    v431 = v413;
                    v432 = v415;
                    v433 = v417;
                    v434 = -1;
                    v435 = v729;
                  }

                  else
                  {
                    dispatch thunk of Collection.endIndex.getter();
                    lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
                    dispatch thunk of BidirectionalCollection.index(before:)();
                    v514 = dispatch thunk of Collection.subscript.read();
                    v517 = v515[4];
                    v516 = v515[5];
                    v518 = v515[6];
                    v663 = v515[7];
                    v664 = v518;
                    v514(&v780, 0);
                    v373(v375, v366);
                    v519 = v724;
                    AttributedString.Guts.findRun(at:)(i, v665, v780.i64);
                    *&v729 = v780.i64[1];
                    *&v730 = v780.i64[0];
                    v658 = *(&v781 + 1);
                    v659 = v781;
                    v661 = v783;
                    v662 = *(&v782 + 1);
                    v726 = *(&v783 + 1);
                    *&v722 = v784;
                    v873[9] = *(v519 + 24);
                    v873[10] = *(v519 + 40);
                    v873[11] = *(v519 + 56);
                    v520 = BigString.endIndex.getter();
                    v660 = v516;
                    if ((v520 ^ v517) > 0x3FF)
                    {
                      v656 = v517;
                      AttributedString.Guts.findRun(at:)(v517, v663, v780.i64);
                      *&v708 = v780.i64[1];
                      *&v709 = v780.i64[0];
                      v657 = *(&v781 + 1);
                      *&v724 = v781;
                      v411 = *(&v782 + 1);
                      v415 = *(&v783 + 1);
                      v413 = v783;
                      v417 = v784;
                      v528 = v706;
                      RangeSet.ranges.getter();
                      v434 = RangeSet.Ranges.count.getter();
                      v655 = *v695;
                      v655(v688, v723);
                      v529 = v528;
                      v299 = &v802;
                      v373(v529, v731);
                      v383 = v689;
                      v655(v692, v723);
                      outlined destroy of AttributedSubstring(&v767);
                      v422 = v724;
                      v421 = v657;
                      v430 = v656;
                      v423 = 0;
                      v420 = v702;
                      v435 = v729;
                      v424 = i;
                      v427 = v666;
                      v425 = v667;
                      v432 = v664;
                      v429 = v665;
                      v405 = v661;
                      v403 = v662;
                      v426 = v726;
                      v428 = v722;
                      v419 = v659;
                      v431 = v660;
                      v433 = v663;
                      v418 = v658;
                    }

                    else
                    {
                      v521 = *(v519 + 72);
                      if (v521)
                      {
                        v522 = *(v519 + 80);
                      }

                      else
                      {
                        v522 = 0;
                      }

                      v657 = v522;
                      v523 = *(v519 + 96);
                      v524 = swift_unknownObjectRetain();
                      *&v709 = v523;
                      *&v708 = specialized Rope._endPath.getter(v524);
                      if (v521)
                      {
                        swift_unknownObjectRelease();
                      }

                      v383 = v689;
                      v525 = v706;
                      v526 = v723;
                      RangeSet.ranges.getter();
                      v434 = RangeSet.Ranges.count.getter();
                      v527 = *v695;
                      (*v695)(v688, v526);
                      v707(v525, v366);
                      v527(v692, v526);
                      outlined destroy of AttributedSubstring(&v767);
                      v423 = 0;
                      v422 = 0;
                      v430 = v517;
                      v411 = v517;
                      v431 = v660;
                      v405 = v661;
                      v413 = v660;
                      v433 = v663;
                      v432 = v664;
                      v415 = v664;
                      v417 = v663;
                      v299 = &v802;
                      v420 = v702;
                      v435 = v729;
                      v424 = i;
                      v427 = v666;
                      v425 = v667;
                      v429 = v665;
                      v403 = v662;
                      v426 = v726;
                      v428 = v722;
                      v418 = v658;
                      v419 = v659;
                      v421 = v657;
                    }
                  }

                  *(v383 + 8) = v418;
                  *(v383 + 16) = v730;
                  *(v383 + 24) = v435;
                  *(v383 + 32) = v419;
                  *(v383 + 40) = v403;
                  *(v383 + 48) = v405;
                  *(v383 + 56) = v426;
                  *(v383 + 64) = v428;
                  *(v383 + 72) = v424;
                  *(v383 + 80) = v425;
                  *(v383 + 88) = v427;
                  *(v383 + 96) = v429;
                  *(v383 + 104) = v423;
                  *(v383 + 112) = 0;
                  *(v383 + 113) = v420;
                  v436 = v709;
                  *(v383 + 120) = v421;
                  *(v383 + 128) = v436;
                  *(v383 + 136) = v708;
                  *(v383 + 144) = v422;
                  *(v383 + 152) = v411;
                  *(v383 + 160) = v413;
                  *(v383 + 168) = v415;
                  *(v383 + 176) = v417;
                  *(v383 + 184) = v430;
                  *(v383 + 192) = v431;
                  *(v383 + 200) = v432;
                  *(v383 + 208) = v433;
                  *(v383 + 216) = v434;
                  *(v383 + 224) = 0;
                  *(v383 + 225) = v420;
                  v437 = v699;
                  outlined init with copy of AttributedString.Runs(v383, v699);
                  v438 = v437 + *(v687 + 36);
                  v439 = *(v383 + 56);
                  v440 = *(v383 + 88);
                  v784 = *(v383 + 72);
                  v785[0] = v440;
                  *(v785 + 10) = *(v383 + 98);
                  v441 = *(v383 + 24);
                  v780 = *(v383 + 8);
                  v781 = v441;
                  v782 = *(v383 + 40);
                  v783 = v439;
                  outlined destroy of AttributedString.Runs(v383);
                  v442 = v785[0];
                  *(v438 + 64) = v784;
                  *(v438 + 80) = v442;
                  *(v438 + 90) = *(v785 + 10);
                  v443 = v781;
                  *v438 = v780;
                  *(v438 + 16) = v443;
                  v444 = v783;
                  *(v438 + 32) = v782;
                  *(v438 + 48) = v444;
                  specialized IndexingIterator.next()(v760);
                  v298 = v740;
                  v751 = v760[2];
                  v752 = v760[3];
                  v753 = v760[4];
                  v754 = *&v760[5];
                  v749 = v760[0];
                  v750 = v760[1];
                  if (*&v760[0])
                  {
                    *&v730 = *&v760[0];
                    v446 = v669;
                    v445 = v670;
                    v726 = *(&v749 + 1);
                    v448 = v671;
                    v447 = v672;
                    v449 = v691;
                    v450 = v717;
                    while (2)
                    {
                      v451 = v448;
                      v452 = v449;
                      while (1)
                      {
                        *&v729 = v446;
                        LODWORD(v717) = v450;
                        v453 = v754;
                        v318 = v447;
                        v454 = v445;

                        v722 = v750;
                        v724 = v752;
                        v708 = v751;
                        v709 = v753;
                        AttributedString.UnicodeScalarView.init(_:)(v455, &v755);
                        v456 = *(v453 + 16);
                        v748[0] = v722;
                        v748[1] = v708;
                        *&v748[2] = v456;
                        v743 = v724;
                        v744 = v709;
                        *&v745 = v456;
                        AttributedString.UnicodeScalarView._distance(from:to:)(v748, &v743);
                        v763 = v757;
                        v764 = v758;
                        v765 = v759;
                        v761 = v755;
                        v762 = v756;
                        outlined destroy of AttributedString.UnicodeScalarView(&v761);

                        AttributedString.UnicodeScalarView.init(_:)(v457, &v755);
                        *&v743 = v452;
                        i = v318;
                        *(&v743 + 1) = v318;
                        v702 = v451;
                        *&v744 = v451;
                        v131 = v454;
                        *(&v744 + 1) = v454;
                        *&v745 = v729;
                        AttributedString.UnicodeScalarView.index(_:offsetBy:)(&v743, v748);
                        v760[2] = v757;
                        v760[3] = v758;
                        v760[4] = v759;
                        v760[0] = v755;
                        v760[1] = v756;
                        outlined destroy of AttributedString.UnicodeScalarView(v760);
                        v315 = *&v748[0];
                        if (*&v748[0] >> 10 < v452 >> 10)
                        {
                          goto LABEL_365;
                        }

                        *&v722 = *(&v748[0] + 1);
                        *&v708 = *(&v748[1] + 1);
                        *&v709 = *&v748[1];
                        *&v729 = *&v748[2];

                        v458 = v735;
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        *&v724 = v315;
                        if (isUniquelyReferenced_nonNull_native)
                        {
                          v728 = v458;
                        }

                        else
                        {
                          v460 = *(v458 + 40);
                          v838[0] = *(v458 + 24);
                          v838[1] = v460;
                          v838[2] = *(v458 + 56);
                          v461 = *(v458 + 72);
                          v462 = *(v458 + 80);
                          v463 = *(v458 + 88);
                          v464 = *(v458 + 96);
                          type metadata accessor for AttributedString.Guts();
                          swift_allocObject();
                          outlined init with copy of BigString(v838, &v755);
                          swift_unknownObjectRetain();
                          v465 = AttributedString.Guts.init(string:runs:)(v838, v461, v462, v463, v464);

                          v735 = v465;
                          v728 = v465;
                        }

                        v466 = i;
                        if (one-time initialization token for _nextVersion != -1)
                        {
                          swift_once();
                        }

                        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
                        v468 = v728;
                        *(v728 + 16) = add_explicit;
                        v469 = *(v468 + 40);
                        v835 = *(v468 + 24);
                        v836 = v469;
                        v837 = *(v468 + 56);
                        v470 = BigString.startIndex.getter();
                        v299 = v471;
                        v473 = v472;
                        v475 = v474;
                        v476 = BigString.endIndex.getter();
                        *&v755 = v468;
                        *(&v755 + 1) = v470;
                        *&v756 = v299;
                        *(&v756 + 1) = v473;
                        *&v757 = v475;
                        *(&v757 + 1) = v476;
                        *&v758 = v477;
                        *(&v758 + 1) = v478;
                        v759 = v479;

                        outlined destroy of AttributedString.CharacterView(&v755);
                        v824 = v452;
                        v825 = v466;
                        v826 = v702;
                        v827 = v131;
                        v828 = v724;
                        v829 = v722;
                        v830 = v709;
                        v831 = v708;
                        v480 = *(v468 + 40);
                        v832 = *(v468 + 24);
                        v833 = v480;
                        v834 = *(v468 + 56);
                        swift_unknownObjectRetain();

                        BigString.UnicodeScalarView.subscript.getter();
                        swift_unknownObjectRelease();
                        outlined destroy of BigSubstring.UnicodeScalarView(v812);
                        v748[2] = v813;
                        v748[3] = v814;
                        v298 = v740;
                        v743 = v812[3];
                        v744 = v812[4];
                        v745 = v813;
                        v746 = v814;
                        if (one-time initialization token for currentIdentity != -1)
                        {
                          swift_once();
                        }

                        v315 = static AttributedString.currentIdentity;
                        os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
                        v481 = *(v315 + 16);
                        v482 = v481 + 1;
                        v318 = v720;
                        if (__OFADD__(v481, 1))
                        {
                          goto LABEL_366;
                        }

                        *(v315 + 16) = v482;
                        os_unfair_lock_unlock((v315 + 24));
                        BigString.init()();
                        *&v748[0] = 0;
                        MEMORY[0x1865D26B0](v748, 8);
                        v483 = *&v748[0];
                        type metadata accessor for AttributedString.Guts();
                        v299 = swift_allocObject();
                        v315 = v815;
                        if ((BigString.isEmpty.getter() & 1) == 0)
                        {
                          goto LABEL_367;
                        }

                        *(v299 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
                        v484 = v815[1];
                        *(v299 + 24) = v815[0];
                        *(v299 + 40) = v484;
                        *(v299 + 56) = v815[2];
                        *(v299 + 72) = 0;
                        *(v299 + 80) = 0;
                        *(v299 + 88) = 0;
                        *(v299 + 96) = v483;
                        *(v299 + 104) = MEMORY[0x1E69E7CC0];
                        v485 = v728;

                        v735 = v299;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v486 = *(v485 + 40);
                          v823[0] = *(v485 + 24);
                          v823[1] = v486;
                          v823[2] = *(v485 + 56);
                          v487 = *(v485 + 72);
                          v488 = *(v485 + 80);
                          v489 = *(v485 + 88);
                          v490 = *(v485 + 96);
                          swift_allocObject();
                          outlined init with copy of BigString(v823, v748);
                          swift_unknownObjectRetain();
                          v491 = v490;
                          v298 = v740;
                          v492 = AttributedString.Guts.init(string:runs:)(v823, v487, v488, v489, v491);

                          v485 = v492;
                        }

                        v354 = v716;
                        v822[3] = v743;
                        v822[4] = v744;
                        v822[5] = v745;
                        v822[6] = v746;
                        AttributedString.Guts.unicodeScalarRange(roundingDown:)(v816);
                        v493 = v816[0] >> 11;
                        v494 = v816[4] >> 11;
                        v495 = v730;

                        v702 = v494;
                        specialized AttributedString._InternalRunsSlice.updateEach(with:)(v485, v493, v494, v495, 1);

                        v496 = specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v495);
                        v299 = &v802;
                        v728 = v485;
                        if (v496)
                        {
                          v497 = v495 + 64;
                          v498 = 1 << *(v495 + 32);
                          if (v498 < 64)
                          {
                            v499 = ~(-1 << v498);
                          }

                          else
                          {
                            v499 = -1;
                          }

                          v500 = v499 & *(v495 + 64);
                          v131 = ((v498 + 63) >> 6);

                          v501 = 0;
                          for (i = MEMORY[0x1E69E7CC0]; v500; *(v510 + 5) = v504)
                          {
LABEL_235:
                            while (1)
                            {
                              v502 = __clz(__rbit64(v500));
                              v500 &= v500 - 1;
                              outlined init with copy of AttributedString._AttributeValue(*(v495 + 56) + 72 * (v502 | (v501 << 6)), v748);
                              v503 = *(&v748[2] + 1);
                              v504 = *&v748[3];
                              outlined copy of AttributedString.AttributeRunBoundaries?(*(&v748[2] + 1), *&v748[3]);
                              v130 = outlined destroy of AttributedString._AttributeValue(v748);
                              if (v504 != 1)
                              {
                                break;
                              }

                              if (!v500)
                              {
                                goto LABEL_237;
                              }
                            }

                            v130 = swift_isUniquelyReferenced_nonNull_native();
                            if ((v130 & 1) == 0)
                            {
                              v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(i + 2) + 1, 1, i);
                              i = v130;
                            }

                            v507 = *(i + 2);
                            v506 = *(i + 3);
                            v508 = v507 + 1;
                            if (v507 >= v506 >> 1)
                            {
                              v666 = *(i + 2);
                              v667 = v507 + 1;
                              v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v506 > 1), v507 + 1, 1, i);
                              v507 = v666;
                              v508 = v667;
                              i = v130;
                            }

                            v509 = i;
                            *(i + 2) = v508;
                            v510 = &v509[16 * v507];
                            *(v510 + 4) = v503;
                          }

LABEL_237:
                          v318 = v720;
                          v129 = v716;
                          v298 = v740;
                          while (1)
                          {
                            v505 = v501 + 1;
                            if (__OFADD__(v501, 1))
                            {
                              goto LABEL_335;
                            }

                            if (v505 >= v131)
                            {

                              v485 = v728;
                              AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v493, v702, 0, i);

                              v299 = &v802;
                              v354 = v129;
                              goto LABEL_250;
                            }

                            v500 = *(v497 + 8 * v505);
                            ++v501;
                            if (v500)
                            {
                              v501 = v505;
                              v495 = v730;
                              goto LABEL_235;
                            }
                          }
                        }

LABEL_250:

                        v735 = v485;
                        *(v748 + 8) = v743;
                        *(&v748[1] + 8) = v744;
                        *(&v748[2] + 8) = v745;
                        *(&v748[3] + 8) = v746;
                        *&v748[0] = v485;
                        *(&v748[4] + 1) = v482;
                        outlined destroy of AttributedSubstring(v748);
                        v511 = *(v318 + 16);
                        if (!(v696 & 1 | ((v511 & 1) == 0)))
                        {
                          break;
                        }

                        v450 = v511 | v717;
                        outlined destroy of TermOfAddress?(&v749, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd);
                        specialized IndexingIterator.next()(v760);
                        v751 = v760[2];
                        v752 = v760[3];
                        v753 = v760[4];
                        v754 = *&v760[5];
                        v749 = v760[0];
                        v750 = v760[1];
                        v445 = v708;
                        v451 = v709;
                        v447 = v722;
                        v452 = v724;
                        v726 = *(&v760[0] + 1);
                        v446 = v729;
                        *&v730 = *&v760[0];
                        if (!*&v760[0])
                        {
                          v131 = v718;
                          v353 = v713;
                          goto LABEL_258;
                        }
                      }

                      v512 = v730;

                      _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV014InflectionRuleD0O_Tt0g5(v512, v742);
                      outlined destroy of TermOfAddress?(&v749, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd);

                      LODWORD(v696) = *(&v742[0] + 1) != 1;
                      v446 = v729;
                      v448 = v709;
                      if (*(&v742[0] + 1) != 1)
                      {
                        outlined consume of AttributedString.AttributeRunBoundaries?(*&v742[0], *(&v742[0] + 1));
                      }

                      v131 = v718;
                      specialized IndexingIterator.next()(v760);
                      v751 = v760[2];
                      v752 = v760[3];
                      v753 = v760[4];
                      v754 = *&v760[5];
                      v749 = v760[0];
                      v750 = v760[1];
                      v450 = v696;
                      v726 = *(&v760[0] + 1);
                      v353 = v713;
                      *&v730 = *&v760[0];
                      v449 = v724;
                      v447 = v722;
                      v445 = v708;
                      if (*&v760[0])
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  else
                  {
                    v131 = v718;
                    v354 = v716;
                    v353 = v713;
                    v450 = v717;
                  }

LABEL_258:
                  LODWORD(v717) = v450;
                  outlined destroy of TermOfAddress?(v699, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
                  if (v720[1])
                  {
                    break;
                  }

                  specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v780);
                  v798 = v787;
                  v799 = v788;
                  v800 = v789;
                  v801 = v790;
                  v794 = v784;
                  v795 = v785[0];
                  v796 = v785[1];
                  v797 = v786;
                  v791 = v780;
                  v792 = v781;
                  v793[0] = v782;
                  v793[1] = v783;
                  v808 = v787;
                  v809 = v788;
                  v810 = v789;
                  v811 = v790;
                  v805 = v784;
                  v806[0] = v785[0];
                  v806[1] = v785[1];
                  v807 = v786;
                  v802 = v780;
                  v803 = v781;
                  v804[0] = v782;
                  v804[1] = v783;
                  v513 = _s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOg(&v802);
                  v13 = v710;
                  if (v513 == 1)
                  {
                    goto LABEL_182;
                  }
                }

                specialized AttributedString.subscript.getter(v354, v760);
                v761 = v760[0];
                v762 = v760[1];
                v763 = v760[2];
                v764 = v760[3];
                v765 = v760[4];
                v530 = *&v760[0];
                v748[0] = *(v760 + 8);
                v748[1] = *(&v760[1] + 8);
                v748[2] = *(&v760[2] + 8);
                v748[3] = *(&v760[3] + 8);
                outlined init with copy of AttributedSubstring(&v761, &v755);
                v531 = v679;
                RangeSet.init(_:)();
                v532 = v681;
                AttributedString.Runs.init(_:in:)(v530, v531, v681);
                outlined destroy of AttributedSubstring(&v761);
                v533 = v682;
                outlined init with copy of AttributedString.Runs(v532, v682);
                v534 = v533;
                v535 = v680;
                outlined init with copy of AttributedString.Runs(v534, v680);
                *(v535 + *(v683 + 36)) = &_sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5Tv0_r;
                v536 = static _SetStorage.allocate(capacity:)();
                v537 = qword_1EEECF0A0;
                v538 = unk_1EEECF0A8;
                Hasher.init(_seed:)();
                if (v538 == 1)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  if (v538)
                  {
                    MEMORY[0x1865CD060](1);
                    String.hash(into:)();
                  }

                  else
                  {
                    MEMORY[0x1865CD060](0);
                  }
                }

                v539 = v536 + 56;
                v540 = Hasher._finalize()();
                v541 = ~(-1 << *(v536 + 32));
                v542 = v540 & v541;
                v543 = (v540 & v541) >> 6;
                v544 = *(v536 + 56 + 8 * v543);
                v545 = 1 << (v540 & v541);
                if ((v545 & v544) == 0)
                {
LABEL_275:
                  *(v539 + 8 * v543) = v544 | v545;
                  v546 = (*(v536 + 48) + 16 * v542);
                  *v546 = v537;
                  v546[1] = v538;
                  v547 = *(v536 + 16);
                  v330 = __OFADD__(v547, 1);
                  v548 = v547 + 1;
                  v13 = v710;
                  if (!v330)
                  {
                    *(v536 + 16) = v548;
                    goto LABEL_299;
                  }

LABEL_376:
                  __break(1u);
LABEL_377:
                  __break(1u);
LABEL_378:
                  __break(1u);
                  goto LABEL_379;
                }

                while (1)
                {
                  v551 = (*(v536 + 48) + 16 * v542);
                  v552 = *v551;
                  v553 = v551[1];
                  if (v553 == 1)
                  {
                    if (v538 == 1)
                    {
                      outlined copy of AttributedString.AttributeRunBoundaries?(*v551, 1);
                      v556 = v552;
                      v557 = 1;
                      goto LABEL_298;
                    }

LABEL_278:
                    outlined copy of AttributedString.AttributeRunBoundaries?(*v551, v551[1]);
                    outlined copy of AttributedString.AttributeRunBoundaries?(v537, v538);
                    outlined consume of AttributedString.AttributeRunBoundaries?(v552, v553);
                    v549 = v537;
                    v550 = v538;
                    goto LABEL_279;
                  }

                  if (v538 == 1)
                  {
                    goto LABEL_278;
                  }

                  if (!v553)
                  {
                    break;
                  }

                  if (v538)
                  {
                    if (v552 == v537 && v553 == v538)
                    {
                      outlined copy of AttributedString.AttributeRunBoundaries?(v537, v538);
                      outlined copy of AttributedString.AttributeRunBoundaries?(v537, v538);

                      goto LABEL_296;
                    }

                    v555 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    outlined copy of AttributedString.AttributeRunBoundaries?(v552, v553);
                    outlined copy of AttributedString.AttributeRunBoundaries?(v537, v538);
                    outlined copy of AttributedString.AttributeRunBoundaries?(v552, v553);

                    if (v555)
                    {
                      outlined consume of AttributedString.AttributeRunBoundaries?(v537, v538);
                      v537 = v552;
                      v538 = v553;
LABEL_296:
                      v556 = v537;
                      v557 = v538;
                      goto LABEL_298;
                    }
                  }

                  else
                  {
                    outlined copy of AttributedString.AttributeRunBoundaries?(*v551, v551[1]);
                    outlined copy of AttributedString.AttributeRunBoundaries?(v537, 0);
                    outlined copy of AttributedString.AttributeRunBoundaries?(v552, v553);
                  }

                  v549 = v552;
                  v550 = v553;
LABEL_279:
                  outlined consume of AttributedString.AttributeRunBoundaries?(v549, v550);
                  v542 = (v542 + 1) & v541;
                  v543 = v542 >> 6;
                  v544 = *(v539 + 8 * (v542 >> 6));
                  v545 = 1 << v542;
                  if ((v544 & (1 << v542)) == 0)
                  {
                    goto LABEL_275;
                  }
                }

                outlined copy of AttributedString.AttributeRunBoundaries?(*v551, 0);
                if (v538)
                {
                  outlined copy of AttributedString.AttributeRunBoundaries?(v537, v538);

                  v549 = v552;
                  v550 = 0;
                  goto LABEL_279;
                }

                swift_bridgeObjectRelease_n();
                v556 = v552;
                v557 = 0;
LABEL_298:
                outlined consume of AttributedString.AttributeRunBoundaries?(v556, v557);
                v13 = v710;
LABEL_299:
                v558 = v677;
                outlined destroy of TermOfAddress?(&qword_1EEECF0A0, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
                outlined destroy of AttributedString.Runs(v682);
                outlined destroy of AttributedString.Runs(v681);
                v559 = v680;
                *&v680[*(v683 + 40)] = v536;
                outlined init with copy of FloatingPointRoundingRule?(v559, v558, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
                v560 = v685;
                outlined init with copy of FloatingPointRoundingRule?(v558, v685, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
                v561 = *(v558 + 96);
                if (v561 == 2)
                {
                  goto LABEL_380;
                }

                v562 = *(v558 + 88);
                v730 = *(v558 + 72);
                outlined destroy of TermOfAddress?(v559, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
                v563 = v558;
                v564 = *(*v558 + 16);
                outlined destroy of TermOfAddress?(v563, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
                v565 = v560 + *(v678 + 36);
                *v565 = v730;
                *(v565 + 16) = v562;
                *(v565 + 24) = v561;
                *(v565 + 32) = v564;
                v353 = v713;
                v566 = v705;
                v131 = v718;
                while (1)
                {
                  specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(v760);
                  v567 = *(&v760[2] + 1);
                  if (*(&v760[2] + 1) == 2)
                  {
                    break;
                  }

                  if ((BYTE8(v760[0]) & 1) == 0)
                  {
                    *&v724 = *&v760[0];
                    v568 = v760[1];
                    v569 = *&v760[2];
                    v729 = *(&v760[4] + 8);
                    v730 = *(&v760[3] + 8);
                    v570 = *&v760[3];
                    v726 = *(&v760[5] + 1);

                    AttributedString.UnicodeScalarView.init(_:)(v571, v760);
                    *&v755 = v668;
                    *(&v755 + 1) = v703;
                    v756 = v704;
                    *&v757 = v566;
                    v748[0] = v568;
                    *&v748[1] = v569;
                    *(&v748[1] + 1) = v567;
                    *&v748[2] = v570;
                    *&v732 = AttributedString.UnicodeScalarView._distance(from:to:)(&v755, v748);
                    v742[2] = v760[2];
                    v742[3] = v760[3];
                    v742[4] = v760[4];
                    v742[0] = v760[0];
                    v742[1] = v760[1];
                    outlined destroy of AttributedString.UnicodeScalarView(v742);

                    AttributedString.UnicodeScalarView.init(_:)(v572, v760);
                    v755 = v568;
                    *&v756 = v569;
                    *(&v756 + 1) = v567;
                    *&v757 = v570;
                    v748[0] = v730;
                    v748[1] = v729;
                    *&v748[2] = v726;
                    AttributedString.UnicodeScalarView._distance(from:to:)(&v755, v748);
                    v745 = v760[2];
                    v746 = v760[3];
                    v747 = v760[4];
                    v743 = v760[0];
                    v744 = v760[1];
                    outlined destroy of AttributedString.UnicodeScalarView(&v743);

                    AttributedString.UnicodeScalarView.init(_:)(v573, v760);
                    *&v741[0] = v691;
                    *(&v741[0] + 1) = v672;
                    *&v741[1] = v671;
                    *(&v741[1] + 1) = v670;
                    *&v741[2] = v669;
                    AttributedString.UnicodeScalarView.index(_:offsetBy:)(v741, &v755);
                    v748[2] = v760[2];
                    v748[3] = v760[3];
                    v748[4] = v760[4];
                    v748[0] = v760[0];
                    v748[1] = v760[1];
                    outlined destroy of AttributedString.UnicodeScalarView(v748);
                    v574 = v755;
                    v575 = v756;
                    v576 = v757;

                    AttributedString.UnicodeScalarView.init(_:)(v577, v760);
                    *v736 = v574;
                    *&v732 = v575;
                    *&v736[16] = v575;
                    *&v730 = *(&v575 + 1);
                    *&v729 = v576;
                    *&v736[32] = v576;
                    AttributedString.UnicodeScalarView.index(_:offsetBy:)(v736, v741);
                    v757 = v760[2];
                    v758 = v760[3];
                    v759 = v760[4];
                    v755 = v760[0];
                    v756 = v760[1];
                    outlined destroy of AttributedString.UnicodeScalarView(&v755);
                    v578 = *&v741[0];
                    if (*&v741[0] >> 10 < v574 >> 10)
                    {
                      goto LABEL_375;
                    }

                    v579 = *(&v741[0] + 1);
                    *&v722 = *(&v741[1] + 1);
                    v726 = *&v741[1];
                    v580 = *&v741[2];
                    v864 = v574;
                    v581 = v732;
                    v865 = v732;
                    v582 = v730;
                    v866 = v730;
                    v583 = v729;
                    v867 = v729;
                    v868 = v741[0];
                    v869 = v741[1];
                    v870 = *&v741[2];
                    v584 = v735;

                    *&v709 = _sSo8_NSRangeV10FoundationE_2inABx_q_tcSXRzAC24AttributedStringProtocolR_AC0dE0V5IndexV5BoundRtzr0_lufCSnyAIG_AGTt1B5(&v864, v584);
                    *&v708 = v585;
                    v702 = v574 >> 64;
                    v667 = v574;
                    v855 = v574;
                    v856 = v581;
                    v857 = v582;
                    v858 = v583;
                    v586 = v722;
                    v587 = v578;
                    v859 = v578;
                    v588 = v580;
                    v589 = v726;
                    i = v579;
                    v860 = v579;
                    v861 = v726;
                    v862 = v722;
                    v863 = v588;
                    specialized AttributedString.subscript.getter(v584, v741);
                    v851 = v741[1];
                    v852 = v741[2];
                    v853 = v741[3];
                    v854 = v741[4];
                    v850 = v741[0];
                    _s10Foundation19AttributedSubstringVy5ValueQzSgxmcAA0B9StringKeyRzluigAA15AttributeScopesO0A10AttributesV09Localizede8ArgumentI0V0j7NumerickG0O_Tt0B5(v736);
                    v760[2] = v741[2];
                    v760[3] = v741[3];
                    v760[4] = v741[4];
                    v760[0] = v741[0];
                    v760[1] = v741[1];
                    outlined destroy of AttributedSubstring(v760);
                    v728 = v584;
                    if (v736[20] == 255)
                    {
                      v840 = v667;
                      v841 = v702;
                      v842 = v732;
                      v843 = v730;
                      v844 = v729;
                      v845 = v587;
                      v846 = i;
                      v847 = v589;
                      v848 = v586;
                      v849 = v588;
                      specialized AttributedString.subscript.getter(v584, v741);
                      v590 = *&v741[0];
                      v838[3] = *(v741 + 8);
                      v838[4] = *(&v741[1] + 8);
                      v838[5] = *(&v741[2] + 8);
                      v838[6] = *(&v741[3] + 8);
                      v591 = *(*&v741[0] + 24);
                      v592 = *(*&v741[0] + 56);
                      v839[1] = *(*&v741[0] + 40);
                      v839[2] = v592;
                      v839[0] = v591;

                      outlined init with copy of BigString(v839, v736);
                      BigString.subscript.getter();

                      outlined destroy of BigString(v839);
                      outlined destroy of BigSubstring(&v817);
                      v740[0] = v818;
                      v740[1] = v819;
                      v740[2] = v820;
                      v740[3] = v821;
                      *&v736[8] = v818;
                      *&v736[24] = v819;
                      v737 = v820;
                      v738 = v821;
                      *v736 = v590;
                      v739 = 0;
                      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
                      String.init<A>(_:)();
                      v593 = String._bridgeToObjectiveCImpl()();

                      v594 = 0;
                      *(&v741[1] + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
                      *&v741[0] = v593;
                    }

                    else
                    {
                      if (v736[20] > 1u)
                      {
                        if (v736[20] == 2)
                        {
                          v596 = *v736;
                        }

                        else
                        {
                          NSDecimal.doubleValue.getter(*v736, *&v736[8], *&v736[16]);
                          v596 = v597;
                        }

                        v595 = [objc_allocWithZone(NSNumber) initWithDouble_];
                      }

                      else if (v736[20])
                      {
                        v595 = [objc_allocWithZone(NSNumber) initWithLongLong_];
                      }

                      else
                      {
                        v595 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong_];
                      }

                      v598 = v595;
                      *(&v741[1] + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
                      *&v741[0] = v598;
                      v594 = 1;
                    }

                    v13 = v710;
                    v353 = v713;
                    outlined init with copy of FloatingPointRoundingRule?(v741, v736, &_sypSgMd);
                    v599 = *&v736[24];
                    if (*&v736[24])
                    {
                      v600 = __swift_project_boxed_opaque_existential_1(v736, *&v736[24]);
                      v601 = *(v599 - 8);
                      v602 = v601[8];
                      v603 = MEMORY[0x1EEE9AC00](v600);
                      v604 = (v602 + 15) & 0xFFFFFFFFFFFFFFF0;
                      v605 = (&v655 - v604);
                      v606 = v601[2];
                      v606(&v655 - v604, v603);
                      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
                      if (isClassOrObjCExistentialType)
                      {
                        if (v602 != 8)
                        {
                          goto LABEL_377;
                        }

                        v608 = *v605;
                        v609 = v601[1];
                        swift_unknownObjectRetain();
                        v609(&v655 - v604, v599);
                      }

                      else
                      {
                        *&v732 = &v655;
                        v612 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
                        (v606)(&v655 - v604, v605, v599, v612);
                        v608 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
                        (v601[1])(v605, v599);
                      }

                      v13 = v710;
                      v353 = v713;
                      __swift_destroy_boxed_opaque_existential_1(v736);
                    }

                    else
                    {
                      v608 = 0;
                    }

                    v610 = objc_allocWithZone(_NSAttributedStringReplacement);
                    [v610 initWithIndex:v724 specifierRangeInFormatString:0x7FFFFFFFFFFFFFFFLL replacementRangeInResult:0x7FFFFFFFFFFFFFFFLL replacementKind:v709 argument:{v708, v594, v608}];
                    v611 = swift_unknownObjectRelease();
                    MEMORY[0x1865CB4D0](v611);
                    if (*((v734 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v734 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    *&v732 = v734;
                    outlined destroy of TermOfAddress?(v741, &_sypSgMd);
                    v131 = v718;
                    v566 = v705;
                  }
                }

                outlined destroy of TermOfAddress?(v685, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
                specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v780);
                v798 = v787;
                v799 = v788;
                v800 = v789;
                v801 = v790;
                v794 = v784;
                v795 = v785[0];
                v796 = v785[1];
                v797 = v786;
                v791 = v780;
                v792 = v781;
                v793[0] = v782;
                v793[1] = v783;
                v808 = v787;
                v809 = v788;
                v810 = v789;
                v811 = v790;
                v805 = v784;
                v806[0] = v785[0];
                v806[1] = v785[1];
                v807 = v786;
                v802 = v780;
                v803 = v781;
                v804[0] = v782;
                v804[1] = v783;
                v613 = _s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOg(&v802);
                v354 = v716;
                if (v613 == 1)
                {
LABEL_182:
                  outlined destroy of TermOfAddress?(v727, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);

                  LOBYTE(v760[0]) = 1;
                  v780 = 0u;
                  v781 = 0u;
                  v782 = 0u;
                  v783 = 0u;
                  v784 = 0u;
                  memset(v785, 0, 25);
                  BYTE9(v785[1]) = 1;
                  _s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV022MarkdownSourcePositionF0O_Tt0B5(v780.i8);
                  v193 = v717;
                  v224 = v732;
                  v179 = v715;
LABEL_183:
                  if ((*(v720 + 17) & 1) == 0)
                  {
                    _s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV016ReplacementIndexF0O_Tt0g5(0, 1);
                  }

                  if (v720[1] & v193)
                  {
                    *&v732 = v224;
                    v344 = v735;
                    v345 = *(v720 + 1);
                    v131 = swift_allocObject();
                    v131[2] = v344;
                    v298 = v131 + 2;
                    v346 = *(v344 + 40);
                    v802 = *(v344 + 24);
                    v803 = v346;
                    v804[0] = *(v344 + 56);
                    v727 = v344;
                    swift_retain_n();
                    outlined init with copy of BigString(&v802, &v791);
                    MEMORY[0x1865CAF80](&v802);
                    v347 = objc_allocWithZone(NSMutableString);
                    v348 = String._bridgeToObjectiveCImpl()();

                    v731 = [v347 initWithString_];
                    swift_unknownObjectRelease();
                    v726 = v131;
                    if (v345)
                    {
                      v349 = *(v345 + 16);
                      v299 = MEMORY[0x1E69E7CC0];
                      if (v349)
                      {
                        *&v730 = v131 + 2;
                        v710 = v13;
                        v791.i64[0] = MEMORY[0x1E69E7CC0];
                        specialized ContiguousArray.reserveCapacity(_:)();
                        v350 = (v345 + 48);
                        do
                        {
                          if (*v350 == 1)
                          {
                            v351 = objc_allocWithZone(NSString);
                            v352 = String._bridgeToObjectiveCImpl()();

                            [v351 initWithString_];
                            swift_unknownObjectRelease();
                            outlined consume of InflectionConcept();
                          }

                          else
                          {

                            _ContiguousArrayBuffer._asCocoaArray()();
                          }

                          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                          specialized ContiguousArray._endMutation()();
                          v350 += 24;
                          --v349;
                        }

                        while (v349);
                        v299 = v791.i64[0];
                        v13 = v710;
                        v614 = v732;
                        v131 = v726;
                        v298 = v730;
                      }

                      else
                      {
                        v614 = v732;
                      }
                    }

                    else
                    {
                      v299 = 0;
                      v614 = v732;
                    }

                    v318 = v731;
                    v615 = swift_getObjectType();
                    v616 = (v13[61])(v615, v13);
                    if (!(v614 >> 62))
                    {
                      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for _NSAttributedStringReplacement);

                      v731 = _ContiguousArrayBuffer._asCocoaArray()();
                      v733 = v616;
                      if (v299)
                      {
                        goto LABEL_332;
                      }

LABEL_341:
                      *&v730 = 0;
                      goto LABEL_342;
                    }

                    v618 = (v614 & 0xFFFFFFFFFFFFFF8);
                    if (v614 < 0)
                    {
                      v618 = v614;
                    }

                    v731 = v618;

                    v733 = v616;
                    if (!v299)
                    {
                      goto LABEL_341;
                    }

LABEL_332:
                    v315 = v299 & 0xFFFFFFFFFFFFFF8;
                    if (v299 >> 62)
                    {
                      goto LABEL_369;
                    }

                    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
                    *&v730 = _ContiguousArrayBuffer._asCocoaArray()();
LABEL_342:
                    while (2)
                    {
                      *&v729 = [objc_opt_self() currentUser];
                      *&v793[0] = partial apply for closure #3 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
                      *(&v793[0] + 1) = v131;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed () -> (@unowned Int);
                      *(&v792 + 1) = &block_descriptor_7_0;
                      v728 = _Block_copy(&v791);

                      v619 = swift_allocObject();
                      *(v619 + 16) = partial apply for closure #4 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
                      *(v619 + 24) = v131;
                      *&v793[0] = partial apply for thunk for @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
                      *(&v793[0] + 1) = v619;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
                      *(&v792 + 1) = &block_descriptor_13_2;
                      v725 = _Block_copy(&v791);

                      v702 = v619;

                      v620 = swift_allocObject();
                      *(v620 + 16) = partial apply for closure #5 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
                      *(v620 + 24) = v131;
                      *&v793[0] = partial apply for thunk for @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
                      *(&v793[0] + 1) = v620;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
                      *(&v792 + 1) = &block_descriptor_19_0;
                      *&v724 = _Block_copy(&v791);

                      v703 = v620;

                      v621 = swift_allocObject();
                      *(v621 + 16) = v298;
                      v622 = swift_allocObject();
                      *(v622 + 16) = partial apply for closure #6 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
                      *(v622 + 24) = v621;
                      v701 = v621;
                      *&v793[0] = partial apply for thunk for @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@guaranteed NSLocalizedNumberFormatRule, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
                      *(&v793[0] + 1) = v622;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@guaranteed NSLocalizedNumberFormatRule, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
                      *(&v792 + 1) = &block_descriptor_28;
                      v723 = _Block_copy(&v791);
                      *&v704 = v622;

                      v623 = swift_allocObject();
                      *(v623 + 16) = v298;
                      v624 = swift_allocObject();
                      *(v624 + 16) = partial apply for closure #7 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
                      *(v624 + 24) = v623;
                      v700 = v623;
                      *&v793[0] = partial apply for thunk for @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> ();
                      *(&v793[0] + 1) = v624;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> ();
                      *(&v792 + 1) = &block_descriptor_37;
                      *&v722 = _Block_copy(&v791);
                      *(&v704 + 1) = v624;

                      v625 = swift_allocObject();
                      *(v625 + 16) = v298;
                      v626 = swift_allocObject();
                      *(v626 + 16) = partial apply for closure #8 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
                      *(v626 + 24) = v625;
                      v699 = v625;
                      *&v793[0] = partial apply for thunk for @callee_guaranteed (@unowned _NSRange) -> (@unowned Bool);
                      *(&v793[0] + 1) = v626;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed (@unowned _NSRange) -> (@unowned Bool);
                      *(&v792 + 1) = &block_descriptor_46;
                      v721 = _Block_copy(&v791);
                      v705 = v626;

                      v627 = swift_allocObject();
                      *(v627 + 16) = v298;
                      v628 = swift_allocObject();
                      *(v628 + 16) = partial apply for closure #9 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
                      *(v628 + 24) = v627;
                      v698 = v627;
                      *&v793[0] = partial apply for thunk for @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> (@out Any?);
                      *(&v793[0] + 1) = v628;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> (@out Any?);
                      *(&v792 + 1) = &block_descriptor_55;
                      v720 = _Block_copy(&v791);
                      v706 = v628;

                      v629 = swift_allocObject();
                      *(v629 + 16) = v298;
                      v630 = swift_allocObject();
                      *(v630 + 16) = partial apply for closure #10 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
                      *(v630 + 24) = v629;
                      i = v629;
                      *&v793[0] = partial apply for thunk for @callee_guaranteed (@unowned _NSRange) -> (@owned String);
                      *(&v793[0] + 1) = v630;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed (@unowned _NSRange) -> (@owned String);
                      *(&v792 + 1) = &block_descriptor_64;
                      v717 = _Block_copy(&v791);
                      v707 = v630;

                      v631 = swift_allocObject();
                      *(v631 + 16) = v318;
                      v632 = swift_allocObject();
                      *(v632 + 16) = partial apply for closure #11 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
                      *(v632 + 24) = v631;
                      v696 = v631;
                      *&v793[0] = partial apply for thunk for @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@guaranteed String?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
                      *(&v793[0] + 1) = v632;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@guaranteed String?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
                      *(&v792 + 1) = &block_descriptor_73;
                      v633 = _Block_copy(&v791);
                      v634 = v318;
                      *&v708 = v632;

                      v635 = swift_allocObject();
                      *(v635 + 16) = v298;
                      *(v635 + 24) = v634;
                      v636 = swift_allocObject();
                      *(v636 + 16) = partial apply for closure #12 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
                      *(v636 + 24) = v635;
                      v695 = v635;
                      *&v793[0] = partial apply for thunk for @callee_guaranteed (@unowned _NSRange, @in_guaranteed Any) -> ();
                      *(&v793[0] + 1) = v636;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @in_guaranteed Any) -> ();
                      *(&v792 + 1) = &block_descriptor_82;
                      v637 = _Block_copy(&v791);
                      v710 = v637;
                      v714 = v634;
                      *&v709 = v636;

                      *&v793[0] = _NSBundleDeallocatingImmortalBundle;
                      *(&v793[0] + 1) = 0;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed NSAttributedStringKey, @in_guaranteed Any) -> ();
                      *(&v792 + 1) = &block_descriptor_85;
                      v638 = _Block_copy(&v791);

                      v639 = swift_allocObject();
                      v640 = v732;
                      *(v639 + 16) = v727;
                      *(v639 + 24) = v640;
                      v641 = swift_allocObject();
                      *(v641 + 16) = partial apply for closure #14 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
                      *(v641 + 24) = v639;
                      v693 = v639;
                      *&v793[0] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any) -> (@out Any?);
                      *(&v793[0] + 1) = v641;
                      v713 = v641;
                      v791.i64[0] = MEMORY[0x1E69E9820];
                      v791.i64[1] = 1107296256;
                      *&v792 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out Any?);
                      *(&v792 + 1) = &block_descriptor_94;
                      v642 = _Block_copy(&v791);
                      v711 = v642;

                      v653 = v638;
                      v654 = v642;
                      v643 = v638;
                      v652 = v637;
                      v644 = v717;
                      v299 = v720;
                      v645 = v721;
                      v131 = v722;
                      v646 = v723;
                      v318 = v725;
                      v298 = v724;
                      _NSInflect(v733, v731, v730, v729, v728, 0, v725, v724, v723, v722, v721, v720, v717, v633, v652, v653, v654);

                      _Block_release(v643);
                      _Block_release(v710);
                      _Block_release(v633);
                      _Block_release(v644);
                      _Block_release(v299);
                      _Block_release(v645);
                      _Block_release(v131);
                      _Block_release(v646);
                      _Block_release(v298);
                      _Block_release(v318);
                      _Block_release(v728);

                      swift_unknownObjectRelease();
                      _Block_release(v711);
                      v315 = v713;
                      LOBYTE(v645) = swift_isEscapingClosureAtFileLocation();

                      if (v645)
                      {
                        __break(1u);
                      }

                      else if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
                      {
                        v315 = v709;
                        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                        if ((isEscapingClosureAtFileLocation & 1) == 0)
                        {
                          v315 = v708;
                          v648 = swift_isEscapingClosureAtFileLocation();

                          if ((v648 & 1) == 0)
                          {
                            v315 = swift_isEscapingClosureAtFileLocation();

                            if ((v315 & 1) == 0)
                            {
                              v315 = swift_isEscapingClosureAtFileLocation();

                              if ((v315 & 1) == 0)
                              {
                                v315 = swift_isEscapingClosureAtFileLocation();

                                if ((v315 & 1) == 0)
                                {
                                  v315 = swift_isEscapingClosureAtFileLocation();

                                  if ((v315 & 1) == 0)
                                  {
                                    v315 = swift_isEscapingClosureAtFileLocation();

                                    if ((v315 & 1) == 0)
                                    {
                                      v315 = swift_isEscapingClosureAtFileLocation();

                                      if ((v315 & 1) == 0)
                                      {
                                        v315 = v702;
                                        v649 = swift_isEscapingClosureAtFileLocation();

                                        if ((v649 & 1) == 0)
                                        {
                                          v650 = *(v726 + 2);

                                          *v712 = v650;

                                          return;
                                        }

                                        goto LABEL_364;
                                      }

LABEL_363:
                                      __break(1u);
LABEL_364:
                                      __break(1u);
LABEL_365:
                                      __break(1u);
LABEL_366:
                                      __break(1u);
LABEL_367:
                                      __break(1u);
LABEL_368:
                                      __break(1u);
LABEL_369:
                                      if (v299 >= 0)
                                      {
                                        v651 = v315;
                                      }

                                      else
                                      {
                                        v651 = v299;
                                      }

                                      *&v730 = v651;
                                      continue;
                                    }

LABEL_362:
                                    __break(1u);
                                    goto LABEL_363;
                                  }

LABEL_361:
                                  __break(1u);
                                  goto LABEL_362;
                                }

LABEL_360:
                                __break(1u);
                                goto LABEL_361;
                              }

LABEL_359:
                              __break(1u);
                              goto LABEL_360;
                            }

LABEL_358:
                            __break(1u);
                            goto LABEL_359;
                          }

LABEL_357:
                          __break(1u);
                          goto LABEL_358;
                        }

LABEL_356:
                        __break(1u);
                        goto LABEL_357;
                      }

                      break;
                    }

                    __break(1u);
                    goto LABEL_356;
                  }

                  v112 = v735;
LABEL_194:
                  *v712 = v112;
                  return;
                }
              }
            }

LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);
            goto LABEL_376;
          }

LABEL_337:
          v617 = v130;
          swift_once();
          v130 = v617;
          goto LABEL_138;
        }

        v220(v251, v209);
      }

      v253 = *(v223 + 72);
      v254 = v723;
      if (v253)
      {
        *&v732 = *(v253 + 18);
      }

      else
      {
        *&v732 = 0;
      }

      v255 = v728;
      *&v730 = *(v728 + 96);
      v256 = *(v728 + 40);
      v878 = *(v728 + 24);
      v879 = v256;
      v880 = *(v728 + 56);
      v257 = BigString.startIndex.getter();
      v259 = v258;
      v261 = v260;
      *&v729 = v262;
      v263 = *(v255 + 72);
      v726 = *(v255 + 96);
      if (v263)
      {
        *&v724 = *(v263 + 18);
        v264 = *(v708 + 8);
        swift_unknownObjectRetain();
        v264(v705, v254);
        v264(v722, v254);
        swift_unknownObjectRelease();
      }

      else
      {
        v265 = *(v708 + 8);
        v265(v705, v254);
        v265(v722, v254);
        *&v724 = 0;
      }

      v266 = *(v728 + 40);
      v877[2] = *(v728 + 24);
      v877[3] = v266;
      v877[4] = *(v728 + 56);
      v267 = BigString.startIndex.getter();
      v269 = v268;
      v131 = v270;
      v272 = v271;
      v273 = 0;
      v274 = 0;
      v275 = 0;
      v276 = 0;
      v277 = 0;
      v278 = -1;
      v279 = v257;
      v280 = v259;
      v281 = v261;
      v282 = v729;
      v283 = v729;
      v284 = v267;
      v285 = v268;
      v286 = v270;
      v287 = v272;
      v288 = -1;
      v289 = v730;
      v290 = v732;
      goto LABEL_137;
    }

    v718 = 0;
    v96 = 0;
    goto LABEL_112;
  }

  v91 = String._bridgeToObjectiveCImpl()();
  v92 = String._bridgeToObjectiveCImpl()();
  v93 = String._bridgeToObjectiveCImpl()();
  if (v79)
  {

    v94 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  else
  {
    v94 = 0;
  }

  v802.i64[0] = 0;
  v791.i64[0] = 0;
  v98 = [v80 _localizedStringNoCacheNoMarkdownParsingForKey_value_table_localizations_actualTableURL_formatSpecifierConfiguration_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v99 = v802.i64[0];
  v718 = v791.i64[0];
  v100 = v791.i64[0];
  v101 = v99;
  v102 = v99;
  if (!v98)
  {
    v111 = v102;

    BigString.init(_:)();
    AttributedString.init(_:attributes:)(&v802, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v791.i64);

    v112 = v791.i64[0];
    goto LABEL_194;
  }

  objc_opt_self();
  v103 = swift_dynamicCastObjCClassUnconditional();
  isTaggedPointer = _objc_isTaggedPointer(v103);
  v105 = v103;
  v106 = v105;
  if (!isTaggedPointer)
  {
LABEL_51:
    v791.i8[0] = 0;
    v802.i64[0] = 0;
    v780.i8[0] = 0;
    LOBYTE(v875[0]) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      if (v802.i64[0])
      {
        if (LOBYTE(v875[0]) == 1)
        {
          if (v791.i8[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v118 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_78;
        }

        if (v780.i8[0])
        {
          if (v791.u8[0] != 1)
          {
            IsCF = [v106 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v120 = v714;
          v121 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v123 = HIBYTE(v122) & 0xF;
          v725 = v121;
          *&v729 = v122;
          if ((v122 & 0x2000000000000000) == 0)
          {
            v123 = v121 & 0xFFFFFFFFFFFFLL;
          }

          v714 = v120;
          if (!v123)
          {

            goto LABEL_77;
          }

LABEL_63:

          goto LABEL_80;
        }

LABEL_77:
        v118 = String.init(_cocoaString:)();
LABEL_78:
        v725 = v118;
        *&v729 = v119;
        goto LABEL_79;
      }

LABEL_60:

      v725 = 0;
      *&v729 = 0xE000000000000000;
      goto LABEL_80;
    }

    v113 = v106;
    v725 = String.init(_nativeStorage:)();
    *&v729 = v114;
    if (!v114)
    {
      v802.i64[0] = [v113 length];
      if (v802.i64[0])
      {
        goto LABEL_77;
      }

      goto LABEL_60;
    }

    goto LABEL_65;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v105);
  if (!TaggedPointerTag)
  {
    v780.i16[0] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v725 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    *&v729 = v117;
    if (!v117)
    {
      [v106 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      *&v729 = v791.i64[1];
      v725 = v791.i64[0];
      goto LABEL_79;
    }

LABEL_65:

LABEL_79:
    goto LABEL_80;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v108 = v714;
      v725 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      *&v729 = v109;
      v714 = v108;

LABEL_80:
      v124 = *(v724 + 16);
      *&v732 = v724 + 16;
      v96 = v101;
      if (v124)
      {
        v97 = MEMORY[0x1E69E7CC8];
        *&v875[0] = MEMORY[0x1E69E7CC8];
        if (!v100)
        {
          v718 = 0;
          goto LABEL_43;
        }

LABEL_86:
        LODWORD(v707) = v124 != 0;
        v125 = String._bridgeToObjectiveCImpl()();
        *(&v803 + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSDictionary);
        v802.i64[0] = v100;
        v126 = v100;
        specialized Dictionary.subscript.setter(&v802, v125);
        v97 = *&v875[0];
        goto LABEL_87;
      }

      if ((*(v720 + 33) & 1) == 0)
      {
        if (v100)
        {
          *&v875[0] = MEMORY[0x1E69E7CC8];
          goto LABEL_86;
        }

        v718 = 0;
      }

LABEL_112:

      BigString.init(_:)();
      AttributedString.init(_:attributes:)(v822, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v802.i64);
      LODWORD(v707) = 0;
      v164 = v802.i64[0];
      goto LABEL_113;
    }

    goto LABEL_51;
  }

  v115 = [v106 UTF8String];
  if (!v115)
  {
    goto LABEL_378;
  }

  v725 = String.init(utf8String:)(v115);
  *&v729 = v116;
  if (v116)
  {
    goto LABEL_63;
  }

LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}