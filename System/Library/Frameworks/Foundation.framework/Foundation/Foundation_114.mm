id @objc _NSSwiftURL.absoluteURL.getter(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v9);

  if (v9[0])
  {
    v5 = v9[1];
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 432))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *_NSSwiftURL.deletingPathExtension.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  result = [v1 isFileReferenceURL];
  if (result)
  {
    result = [v1 filePathURL];
    if (result)
    {
      v5 = result;
      static URL._unconditionallyBridgeFromObjectiveC(_:)(result, &v12);

      v6 = v12;
      v7 = v13;
      ObjectType = swift_getObjectType();
      result = (v7[48])(&v12, ObjectType, v7);
      v9 = v12;
      if (v12)
      {
        v7 = v13;
        result = swift_unknownObjectRelease();
        v6 = v9;
      }

      *a1 = v6;
      a1[1] = v7;
      return result;
    }

LABEL_9:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  if (*(v1 + OBJC_IVAR____NSSwiftURL_hasPath) != 1)
  {
    goto LABEL_9;
  }

  result = _SwiftURL.deletingPathExtension()(&v12);
  v10 = v12;
  if (v12)
  {
    v11 = v13;
  }

  else
  {
    type metadata accessor for _BridgedNSSwiftURL();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    result = v2;
    v11 = &protocol witness table for _BridgedNSSwiftURL;
  }

  *a1 = v10;
  a1[1] = v11;
  return result;
}

id _NSSwiftURL.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _NSSwiftURL();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t _NSSwiftURL._URL(byAppendingPathComponent:isDirectory:encodingSlashes:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v8 = a2;
  v9 = a1;
  result = specialized Collection<>.firstIndex(of:)(0, a1, a2);
  if (v12)
  {
LABEL_4:
    if (*(v5 + OBJC_IVAR____NSSwiftURL_hasPath) == 1)
    {

      if ([v5 isFileReferenceURL])
      {
        v20 = [v5 filePathURL];
        if (v20)
        {
          v21 = v20;
          static URL._unconditionallyBridgeFromObjectiveC(_:)(v20, v39);

          URL._swiftURL.getter();
          v23 = v22;
          swift_unknownObjectRelease();
          if (v23)
          {
          }
        }
      }

      specialized _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(v9, v8, (a3 & 1) == 0, (a4 & 1), 1, a5);
    }

    else
    {
      *a5 = 0;
      a5[1] = 0;
    }

    return result;
  }

  v32 = a3;
  v34 = a4;
  v35 = v8;
  v36 = a5;
  v33 = v9;
  v13 = specialized Collection.suffix(from:)(result, v9, v8);
  v16 = v15;
  v18 = v17 >> 14;
  v19 = v13 >> 14;
  if (v13 >> 14 == v17 >> 14)
  {
LABEL_3:

    v8 = v35;
    a5 = v36;
    a4 = v34;
    v9 = v33;
    a3 = v32;
    goto LABEL_4;
  }

  v24 = v13;
  v25 = v14;
  v26 = (v14 >> 59) & 1;
  if ((v15 & 0x1000000000000000) == 0)
  {
    LOBYTE(v26) = 1;
  }

  v27 = 4 << v26;
  v37 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v15 & 0xFFFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v28 = v14 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v29 = v24 & 0xC;
    result = v24;
    if (v29 == v27)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v24, v25, v16);
    }

    if (result >> 14 < v19 || result >> 14 >= v18)
    {
      break;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v31 = result;
      if (v29 != v27)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v30 = result >> 16;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v39[0] = v25;
        v39[1] = v38;
        v31 = *(v39 + v30);
        if (v29 != v27)
        {
          goto LABEL_29;
        }
      }

      else
      {
        result = v37;
        if ((v25 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v31 = *(result + v30);
        if (v29 != v27)
        {
LABEL_29:
          if ((v16 & 0x1000000000000000) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_34;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v24, v25, v16);
    v24 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_30:
      v24 = (v24 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v31)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

LABEL_34:
    if (v28 <= v24 >> 16)
    {
      goto LABEL_40;
    }

    v24 = String.UTF8View._foreignIndex(after:)();
    if (v31)
    {
LABEL_38:

      *v36 = 0;
      v36[1] = 0;
      return result;
    }

LABEL_36:
    if (v18 == v24 >> 14)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void _NSSwiftURL._URL(byAppendingPathExtension:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if (*(v3 + OBJC_IVAR____NSSwiftURL_hasPath) == 1)
    {

      if (![v3 isFileReferenceURL])
      {
        v9 = v3;
LABEL_14:
        _SwiftURL.appendingPathExtension(_:compatibility:)(a1, a2, 1uLL, v26);

        v22 = v26[0];
        if (v26[0])
        {
          v23 = v26[1];
        }

        else
        {
          type metadata accessor for _BridgedNSSwiftURL();
          v22 = swift_allocObject();
          *(v22 + 16) = v9;
          v24 = v9;
          v23 = &protocol witness table for _BridgedNSSwiftURL;
        }

        *a3 = v22;
        a3[1] = v23;
        return;
      }

      v8 = [v3 filePathURL];
      if (v8)
      {
        v9 = v3;
        v10 = v8;
        static URL._unconditionallyBridgeFromObjectiveC(_:)(v8, v26);

        URL._swiftURL.getter();
        v12 = v11;
        swift_unknownObjectRelease();

        if (v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    *a3 = 0;
    a3[1] = 0;
    return;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    type metadata accessor for _BridgedNSSwiftURL();
    *(swift_allocObject() + 16) = v3;
    v13 = v3;
    v14 = _BridgedNSSwiftURL.convertingFileReference()();
    v16 = v15;
  }

  else
  {
    v17 = type metadata accessor for _BridgedURL();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v3;
    v25.receiver = v18;
    v25.super_class = v17;
    v19 = v3;
    v20 = objc_msgSendSuper2(&v25, sel_init);
    v14 = _BridgedURL.convertingFileReference()();
    v16 = v21;
  }

  *a3 = v14;
  a3[1] = v16;
}

uint64_t _NSSwiftURL._resourceInfoPtr.getter()
{
  v1 = *(*(*(v0 + OBJC_IVAR____NSSwiftURL_url) + 56) + 16);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t _NSSwiftURL._resourceInfoPtr.setter(uint64_t a1)
{
  v3 = *(*(*(v1 + OBJC_IVAR____NSSwiftURL_url) + 56) + 16);

  os_unfair_lock_lock((v3 + 24));
  swift_unknownObjectRelease();
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  *(v3 + 16) = a1;
  os_unfair_lock_unlock((v3 + 24));
}

void _NSSwiftURL._netLocation.getter()
{
  _SwiftURL.netLocation.getter();
  if (v1)
  {
    v2 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v2 = v0 & 0xFFFFFFFFFFFFLL;
    }

    if (!v2)
    {
    }
  }
}

id @objc _NSSwiftURL.absoluteString.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void _NSSwiftURL._cfurlResourceSpecifier.getter()
{
  if (v0[OBJC_IVAR____NSSwiftURL_isDecomposable] != 1)
  {
    v3 = [v0 relativeString];
    isTaggedPointer = _objc_isTaggedPointer(v3);
    v5 = v3;
    v6 = v5;
    if (!isTaggedPointer)
    {
LABEL_10:
      LOBYTE(v81) = 0;
      if (__CFStringIsCF())
      {

LABEL_16:
        v8 = 0;
        v10 = 0xE000000000000000;
        goto LABEL_27;
      }

      v31 = v6;
      v32 = String.init(_nativeStorage:)();
      if (v33)
      {
        v8 = v32;
        v10 = v33;

        goto LABEL_27;
      }

      if (![v31 length])
      {

        goto LABEL_16;
      }

      v8 = String.init(_cocoaString:)();
      v10 = v37;
LABEL_26:

LABEL_27:
      v38 = specialized Collection.firstIndex(where:)(v8, v10);
      v40 = v39;

      if (v40)
      {
        return;
      }

      v41 = [v0 relativeString];
      v42 = _objc_isTaggedPointer(v41);
      v43 = v41;
      v44 = v43;
      if (!v42)
      {
LABEL_34:
        LOBYTE(v81) = 0;
        if (__CFStringIsCF())
        {

LABEL_39:
          v46 = 0;
          v48 = 0xE000000000000000;
          goto LABEL_51;
        }

        v49 = v44;
        v50 = String.init(_nativeStorage:)();
        if (v51)
        {
          v46 = v50;
          v48 = v51;

          if ((v48 & 0x1000000000000000) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_45;
        }

        if (![v49 length])
        {

          goto LABEL_39;
        }

        v46 = String.init(_cocoaString:)();
        v48 = v56;

        if ((v48 & 0x1000000000000000) != 0)
        {
          goto LABEL_45;
        }

LABEL_51:
        LOBYTE(v55) = 1;
        goto LABEL_52;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v43);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v48 = v47;

            if ((v48 & 0x1000000000000000) == 0)
            {
              goto LABEL_51;
            }

LABEL_45:
            v55 = (v46 >> 59) & 1;
LABEL_52:
            if ((v38 & 0xC) == 4 << v55)
            {
              v38 = _StringGuts._slowEnsureMatchingEncoding(_:)(v38, v46, v48);
              if ((v48 & 0x1000000000000000) == 0)
              {
                goto LABEL_54;
              }
            }

            else if ((v48 & 0x1000000000000000) == 0)
            {
LABEL_54:

              v57 = (v38 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_55:
              v58 = [v0 relativeString];
              v59 = _objc_isTaggedPointer(v58);
              v60 = v58;
              v61 = v60;
              if (!v59)
              {
LABEL_60:
                if (__CFStringIsCF())
                {
                  v63 = 0;

                  v65 = 0xE000000000000000;
                  goto LABEL_74;
                }

                v66 = v61;
                v67 = String.init(_nativeStorage:)();
                if (v68)
                {
                  v63 = v67;
                  v65 = v68;

                  goto LABEL_74;
                }

                if (![v66 length])
                {

                  v63 = 0;
                  v65 = 0xE000000000000000;
                  goto LABEL_74;
                }

                v63 = String.init(_cocoaString:)();
                v65 = v72;
LABEL_73:

                goto LABEL_74;
              }

              v62 = _objc_getTaggedPointerTag(v60);
              if (!v62)
              {
                goto LABEL_67;
              }

              if (v62 != 22)
              {
                if (v62 == 2)
                {
                  MEMORY[0x1EEE9AC00](v62);
                  v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v65 = v64;

LABEL_74:
                  v73 = specialized Collection.suffix(from:)(v57, v63, v65);
                  v75 = v74;
                  v77 = v76;
                  v79 = v78;

                  MEMORY[0x1865CAE80](v73, v75, v77, v79);

                  return;
                }

                goto LABEL_60;
              }

              v69 = [v61 UTF8String];
              if (v69)
              {
                v70 = String.init(utf8String:)(v69);
                if (v71)
                {
LABEL_68:
                  v63 = v70;
                  v65 = v71;

                  goto LABEL_73;
                }

                __break(1u);
LABEL_67:
                _CFIndirectTaggedPointerStringGetContents();
                v70 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v71)
                {
                  [v61 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v63 = v82;
                  v65 = v83;
                  goto LABEL_73;
                }

                goto LABEL_68;
              }

LABEL_84:
              __break(1u);
              return;
            }

            v80 = HIBYTE(v48) & 0xF;
            if ((v48 & 0x2000000000000000) == 0)
            {
              v80 = v46 & 0xFFFFFFFFFFFFLL;
            }

            if (v80 > v38 >> 16)
            {
              v57 = String.UTF8View._foreignIndex(after:)();

              goto LABEL_55;
            }

            __break(1u);
            goto LABEL_82;
          }

          goto LABEL_34;
        }

        v52 = [v44 UTF8String];
        if (!v52)
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v53 = String.init(utf8String:)(v52);
        if (v54)
        {
LABEL_44:
          v46 = v53;
          v48 = v54;

          if ((v48 & 0x1000000000000000) != 0)
          {
            goto LABEL_45;
          }

          goto LABEL_51;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      v53 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v54)
      {
        [v44 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v46 = v81;
        v48 = v83;

        if ((v83 & 0x1000000000000000) != 0)
        {
          goto LABEL_45;
        }

        goto LABEL_51;
      }

      goto LABEL_44;
    }

    v7 = _objc_getTaggedPointerTag(v5);
    if (v7)
    {
      if (v7 != 22)
      {
        if (v7 == 2)
        {
          MEMORY[0x1EEE9AC00](v7);
          v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v10 = v9;

          goto LABEL_27;
        }

        goto LABEL_10;
      }

      v34 = [v6 UTF8String];
      if (!v34)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v35 = String.init(utf8String:)(v34);
      if (v36)
      {
LABEL_21:
        v8 = v35;
        v10 = v36;

        goto LABEL_26;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v35 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v36)
    {
      [v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v8 = v81;
      v10 = v83;
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v1 = *&v0[OBJC_IVAR____NSSwiftURL_url];
  v2 = *(v1 + 16);
  if (*(v2 + 192))
  {
    if (*(v2 + 216))
    {
      return;
    }

LABEL_13:

    v21 = String.subscript.getter();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = MEMORY[0x1865CAE80](v21, v23, v25, v27);
    v30 = v29;

    MEMORY[0x1865CB0E0](v28, v30);

    MEMORY[0x1865CB0E0](35, 0xE100000000000000);

    return;
  }

  v11 = String.subscript.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1865CAE80](v11, v13, v15, v17);
  v20 = v19;

  MEMORY[0x1865CB0E0](v18, v20);

  if ((*(*(v1 + 16) + 216) & 1) == 0)
  {
    goto LABEL_13;
  }
}

id @objc _NSSwiftURL._user(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = a1;
  a4(a3);
  v8 = v7;

  if (v8)
  {
    v9 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

Swift::String_optional __swiftcall _NSSwiftURL._fileSystemPath(_:resolveAgainstBase:)(CFURLPathStyle _, Swift::Bool resolveAgainstBase)
{
  if (_ == kCFURLWindowsPathStyle)
  {
    v5 = 1;
  }

  else
  {
    if (_ == kCFURLHFSPathStyle)
    {
LABEL_104:
      v118 = 0;
      v117 = 428;
      v111 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_105;
    }

    v5 = 0;
  }

  if (v2[OBJC_IVAR____NSSwiftURL_hasPath] == 1)
  {
    v6 = *&v2[OBJC_IVAR____NSSwiftURL_url];
    if (*(*(v6 + 16) + 168))
    {
      v7 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      v9 = v8;
    }

    else
    {

      v7 = String.subscript.getter();
      v9 = v17;
    }

    if (!((v7 ^ v9) >> 14))
    {
      if (resolveAgainstBase)
      {
        v18 = [v2 baseURL];
        if (v18)
        {
          v19 = v18;
          static URL._unconditionallyBridgeFromObjectiveC(_:)(v18, &v119);

          v20 = v120;
          ObjectType = swift_getObjectType();
          v22 = (*(v20 + 288))(v5, 1, 1, ObjectType, v20);
          Path = String._deletingLastPathComponent()(v22, v23);
          v16 = v24;
          swift_unknownObjectRelease();
LABEL_33:

          goto LABEL_79;
        }
      }

LABEL_78:
      Path = 0;
      v16 = 0xE000000000000000;
      goto LABEL_79;
    }

    if (resolveAgainstBase)
    {
      v25 = [v2 baseURL];
      if (v25)
      {
        v26 = v25;
        static URL._unconditionallyBridgeFromObjectiveC(_:)(v25, &v119);

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      if (([v2 isFileReferenceURL] & 1) == 0)
      {
LABEL_26:
        v30 = _SwiftURL.absolutePath(percentEncoded:)(1);
        countAndFlagsBits = v30._countAndFlagsBits;
        object = v30._object;
        if (v5)
        {
LABEL_27:
          v32 = specialized static _SwiftURL.windowsPath(for:slashDropper:)(countAndFlagsBits, object, closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:));
LABEL_32:
          Path = v32;
          v16 = v33;
          goto LABEL_33;
        }

LABEL_37:
        v41 = closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:)(countAndFlagsBits, object);
        v43 = v42;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
        v44 = static _SetStorage.allocate(capacity:)();
        v45 = v44 + 56;
        v46 = *(v44 + 40);
        v47 = byte_1EEED3D48;
        v48 = MEMORY[0x1865CD020](v46, byte_1EEED3D48, 1);
        v49 = -1 << *(v44 + 32);
        v50 = v48 & ~v49;
        v51 = v50 >> 6;
        v52 = *(v44 + 56 + 8 * (v50 >> 6));
        v53 = 1 << v50;
        v54 = *(v44 + 48);
        if (((1 << v50) & v52) != 0)
        {
          v55 = ~v49;
          while (*(v54 + v50) != v47)
          {
            v50 = (v50 + 1) & v55;
            v51 = v50 >> 6;
            v52 = *(v45 + 8 * (v50 >> 6));
            v53 = 1 << v50;
            if (((1 << v50) & v52) == 0)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
LABEL_41:
          *(v45 + 8 * v51) = v53 | v52;
          *(v54 + v50) = v47;
          v56 = *(v44 + 16);
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          if (v57)
          {
            goto LABEL_102;
          }

          *(v44 + 16) = v58;
        }

        v59 = byte_1EEED3D49;
        v60 = MEMORY[0x1865CD020](v46, byte_1EEED3D49, 1);
        v61 = -1 << *(v44 + 32);
        v62 = v60 & ~v61;
        v63 = v62 >> 6;
        v64 = *(v45 + 8 * (v62 >> 6));
        v65 = 1 << v62;
        v66 = *(v44 + 48);
        if (((1 << v62) & v64) != 0)
        {
          v67 = ~v61;
          while (*(v66 + v62) != v59)
          {
            v62 = (v62 + 1) & v67;
            v63 = v62 >> 6;
            v64 = *(v45 + 8 * (v62 >> 6));
            v65 = 1 << v62;
            if (((1 << v62) & v64) == 0)
            {
              goto LABEL_47;
            }
          }

LABEL_49:
          v70 = HIBYTE(v43) & 0xF;
          if ((v43 & 0x2000000000000000) == 0)
          {
            v70 = v41 & 0xFFFFFFFFFFFFLL;
          }

          if (v70)
          {
            v119 = v41;
            v120 = v43;
            MEMORY[0x1EEE9AC00](v60);
            v115 = &v119;
            v116 = v44;
            v117 = 4;

LABEL_69:
            v97 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v114, v41, v43);
            if (v98 == 1)
            {
              v97 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v41, v43, v44, 4);
            }

            v99 = v97;
            v100 = v98;

            if (v100)
            {
              Path = v99;
            }

            else
            {
              Path = 0;
            }

            if (v100)
            {
              v16 = v100;
            }

            else
            {
              v16 = 0xE000000000000000;
            }

            goto LABEL_79;
          }

          goto LABEL_77;
        }

LABEL_47:
        *(v45 + 8 * v63) = v65 | v64;
        *(v66 + v62) = v59;
        v68 = *(v44 + 16);
        v57 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (!v57)
        {
          *(v44 + 16) = v69;
          goto LABEL_49;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }
    }

    else if (![v2 isFileReferenceURL])
    {
      if (*(*(v6 + 16) + 168))
      {
        v27 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v27 = String.subscript.getter();
      }

      v39 = MEMORY[0x1865CAE80](v27);
      object = v40;

      countAndFlagsBits = v39;
      if (v5)
      {
        goto LABEL_27;
      }

      goto LABEL_37;
    }

    if (*(*(v6 + 16) + 168))
    {
      v28 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v28 = String.subscript.getter();
    }

    v34 = MEMORY[0x1865CAE80](v28);
    v36 = v35;

    Path = _NSSwiftURL.filePath(for:)(v34, v36);
    v38 = v37;

    if (!v38)
    {
      v16 = 0;
      goto LABEL_97;
    }

    if (v5)
    {
      v32 = specialized static _SwiftURL.windowsPath(for:slashDropper:)(Path, v38);
      goto LABEL_32;
    }

    v41 = closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:)(Path, v38);
    v43 = v71;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
    v44 = static _SetStorage.allocate(capacity:)();
    v72 = v44 + 56;
    v73 = *(v44 + 40);
    v74 = byte_1EEED3F50;
    v75 = MEMORY[0x1865CD020](v73, byte_1EEED3F50, 1);
    v76 = -1 << *(v44 + 32);
    v77 = v75 & ~v76;
    v78 = v77 >> 6;
    v79 = *(v44 + 56 + 8 * (v77 >> 6));
    v80 = 1 << v77;
    v81 = *(v44 + 48);
    if (((1 << v77) & v79) != 0)
    {
      v82 = ~v76;
      while (*(v81 + v77) != v74)
      {
        v77 = (v77 + 1) & v82;
        v78 = v77 >> 6;
        v79 = *(v72 + 8 * (v77 >> 6));
        v80 = 1 << v77;
        if (((1 << v77) & v79) == 0)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
LABEL_57:
      *(v72 + 8 * v78) = v80 | v79;
      *(v81 + v77) = v74;
      v83 = *(v44 + 16);
      v57 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v57)
      {
        goto LABEL_103;
      }

      *(v44 + 16) = v84;
    }

    v85 = byte_1EEED3F51;
    v86 = MEMORY[0x1865CD020](v73, byte_1EEED3F51, 1);
    v87 = -1 << *(v44 + 32);
    v88 = v86 & ~v87;
    v89 = v88 >> 6;
    v90 = *(v72 + 8 * (v88 >> 6));
    v91 = 1 << v88;
    v92 = *(v44 + 48);
    if (((1 << v88) & v90) != 0)
    {
      v93 = ~v87;
      while (*(v92 + v88) != v85)
      {
        v88 = (v88 + 1) & v93;
        v89 = v88 >> 6;
        v90 = *(v72 + 8 * (v88 >> 6));
        v91 = 1 << v88;
        if (((1 << v88) & v90) == 0)
        {
          goto LABEL_63;
        }
      }

LABEL_65:
      v96 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v96 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v96)
      {
        v119 = v41;
        v120 = v43;
        MEMORY[0x1EEE9AC00](v86);
        v115 = &v119;
        v116 = v44;
        v117 = 4;

        goto LABEL_69;
      }

LABEL_77:

      goto LABEL_78;
    }

LABEL_63:
    *(v72 + 8 * v89) = v91 | v90;
    *(v92 + v88) = v85;
    v94 = *(v44 + 16);
    v57 = __OFADD__(v94, 1);
    v95 = v94 + 1;
    if (!v57)
    {
      *(v44 + 16) = v95;
      goto LABEL_65;
    }

LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (!resolveAgainstBase || (v10 = [v2 baseURL]) == 0)
  {
    Path = 0;
    v16 = 0;
    goto LABEL_97;
  }

  v11 = v10;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(v10, &v119);

  v12 = v120;
  v13 = swift_getObjectType();
  Path = (*(v12 + 288))(v5, 1, 1, v13, v12);
  v16 = v15;
  swift_unknownObjectRelease();
LABEL_79:
  if (_ == kCFURLWindowsPathStyle && v16)
  {
    v101 = specialized _copyCollectionToContiguousArray<A>(_:)(Path, v16);
    v121 = v101;
    v102 = *(v101 + 16);
    if (v102)
    {
      v103 = 0;
      v104 = 32;
      while (1)
      {
        v105 = v104 - 32;
        if (v104 - 32 >= v102)
        {
          break;
        }

        v106 = v104 - 31;
        if (__OFADD__(v105, 1))
        {
          goto LABEL_100;
        }

        v107 = *(v101 + 16);
        if (v105 >= v107)
        {
          goto LABEL_101;
        }

        if (*(v101 + v104) == 47)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v101);
          }

          *(v101 + v104) = 92;
          v121 = v101;
          v103 = 1;
          if (v106 == v102)
          {
            v107 = *(v101 + 16);
LABEL_94:
            MEMORY[0x1EEE9AC00](v107);
            v117 = &v121;
            Path = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v109 = v108;

            v16 = v109;
            goto LABEL_96;
          }

          ++v104;
        }

        else
        {
          ++v104;
          if (v106 == v102)
          {
            if ((v103 & 1) == 0)
            {
              goto LABEL_95;
            }

            goto LABEL_94;
          }
        }
      }

      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

LABEL_95:
    v119 = Path;
    v120 = v16;
    Path = String.init<A>(_:)();
    v16 = v110;
LABEL_96:
  }

LABEL_97:
  v111 = Path;
  v112 = v16;
LABEL_105:
  result.value._object = v112;
  result.value._countAndFlagsBits = v111;
  return result;
}

id _NSSwiftURL._query(_:)(unint64_t a1, unint64_t a2, SEL *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *(*a7)(__int128 *__return_ptr, void *, uint64_t))
{
  v57 = *MEMORY[0x1E69E9840];
  if (v7[OBJC_IVAR____NSSwiftURL_isDecomposable] != 1)
  {
    return 0;
  }

  v49 = a7;
  v10 = [v7 *a3];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_10;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  if (!TaggedPointerTag)
  {
    goto LABEL_21;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v45 = v14;
      v16 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v18 = v17;

      if (!a2)
      {
        return v16;
      }

      goto LABEL_28;
    }

LABEL_10:
    LOBYTE(v51) = 0;
    v55 = 0;
    LOBYTE(v53) = 0;
    v54 = 0;
    if (__CFStringIsCF())
    {

      goto LABEL_16;
    }

    v19 = v14;
    v20 = String.init(_nativeStorage:)();
    if (v21)
    {
      v16 = v20;
      v18 = v21;

      if (!a2)
      {
        return v16;
      }

      goto LABEL_28;
    }

    v55 = [v19 length];
    if (!v55)
    {

LABEL_16:
      v16 = 0;
      v18 = 0xE000000000000000;
      if (!a2)
      {
        return v16;
      }

      goto LABEL_28;
    }

    v16 = String.init(_cocoaString:)();
    v18 = v25;
    goto LABEL_27;
  }

  result = [v14 UTF8String];
  if (result)
  {
    v23 = String.init(utf8String:)(result);
    if (v24)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    v53 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v24)
    {
      [v14 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v16 = v51;
      v18 = v52;
LABEL_27:

      if (a2)
      {
LABEL_28:
        v48 = 0;
        v26 = HIBYTE(a2) & 0xF;
        v27 = a1 & 0xFFFFFFFFFFFFLL;
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_69;
        }

        v28 = a2 & 0x2000000000000000;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v29 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v29 = a1 & 0xFFFFFFFFFFFFLL;
        }

LABEL_32:

        v30 = MEMORY[0x1865CB700](v29, MEMORY[0x1E69E7508], MEMORY[0x1E69E7518]);
        v51 = v30;
        if (!v28)
        {
          v26 = v27;
        }

        if (!v26)
        {
          v38 = v30;
LABEL_58:

          v40 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v40 = v16 & 0xFFFFFFFFFFFFLL;
          }

          if (v40)
          {
            v55 = v16;
            v56 = v18;
            MEMORY[0x1EEE9AC00](v39);
            v44[2] = &v55;
            v44[3] = v38;
            v45 = 4;

            v41 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v49, v44, v16, v18);
            if (v42 == 1)
            {
              v16 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v16, v18, v38, 4);
            }

            else
            {
              v43 = v41;

              v16 = v43;
            }
          }

          else
          {

            return 0;
          }

          return v16;
        }

        v46 = v16;
        v47 = v18;
        v16 = 4 * v26;
        v31 = (a1 >> 59) & 1;
        if ((a2 & 0x1000000000000000) == 0)
        {
          LOBYTE(v31) = 1;
        }

        v18 = 4 << v31;
        v27 = a2 & 0xFFFFFFFFFFFFFFLL;
        v50 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v32 = 15;
        while (1)
        {
          v33 = v32 & 0xC;
          v34 = v32;
          if (v33 == v18)
          {
            v34 = _StringGuts._slowEnsureMatchingEncoding(_:)(v32, a1, a2);
          }

          v35 = v34 >> 16;
          if (v34 >> 16 >= v26)
          {
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            v29 = String.UTF8View._foreignCount()();
            v28 = a2 & 0x2000000000000000;
            goto LABEL_32;
          }

          if ((a2 & 0x1000000000000000) != 0)
          {
            v36 = String.UTF8View._foreignSubscript(position:)();
            if (v33 != v18)
            {
              goto LABEL_48;
            }
          }

          else if (v28)
          {
            v55 = a1;
            v56 = a2 & 0xFFFFFFFFFFFFFFLL;
            v36 = *(&v55 + v35);
            if (v33 != v18)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v37 = v50;
            if ((a1 & 0x1000000000000000) == 0)
            {
              v37 = _StringObject.sharedUTF8.getter();
            }

            v36 = *(v37 + v35);
            if (v33 != v18)
            {
LABEL_48:
              if ((a2 & 0x1000000000000000) == 0)
              {
                goto LABEL_38;
              }

              goto LABEL_49;
            }
          }

          v32 = _StringGuts._slowEnsureMatchingEncoding(_:)(v32, a1, a2);
          if ((a2 & 0x1000000000000000) == 0)
          {
LABEL_38:
            v32 = (v32 & 0xFFFFFFFFFFFF0000) + 65540;
            goto LABEL_39;
          }

LABEL_49:
          if (v26 <= v32 >> 16)
          {
            goto LABEL_68;
          }

          v32 = String.UTF8View._foreignIndex(after:)();
LABEL_39:
          specialized Set._Variant.insert(_:)(&v55, v36);
          if (v16 == v32 >> 14)
          {
            v38 = v51;
            v16 = v46;
            v18 = v47;
            goto LABEL_58;
          }
        }
      }

      return v16;
    }

LABEL_22:
    v16 = v23;
    v18 = v24;

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t _NSSwiftURL._decomposableRange(for:rangeIncludingSeparators:)(uint64_t a1, char **a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____NSSwiftURL_url];
  v7 = *(v6 + 16);
  v8 = *(v7 + 220);

  if (v8)
  {
    specialized URLComponents._URLComponents.init(parseInfo:)(v7, v92);
    v9 = URLComponents._URLComponents._uncheckedString(original:)(1);
    outlined destroy of URLComponents._URLComponents(v92);
    v7 = specialized static RFC3986Parser.compatibilityParse(urlString:encodedComponents:)(v9._countAndFlagsBits, v9._object, 0);

    if (!v7)
    {
      goto LABEL_27;
    }

    v10 = *(*(v6 + 16) + 220);

    if (v10)
    {

      specialized URLComponents._URLComponents.init(parseInfo:)(v11, v93);
      URLComponents._URLComponents._uncheckedString(original:)(1);
      outlined destroy of URLComponents._URLComponents(v93);
      goto LABEL_7;
    }
  }

  else
  {
  }

LABEL_7:
  v12 = *(v6 + 40);
  if (a1 > 6)
  {
    if (a1 > 9)
    {
LABEL_35:
      if (a1 == 10)
      {
        goto LABEL_84;
      }

      if (a1 != 11)
      {
        if (a1 != 12 || (*(v7 + 216) & 1) != 0)
        {
          goto LABEL_84;
        }

        v89 = a2;
        String.subscript.getter();
        v3 = lazy protocol witness table accessor for type Substring and conformance Substring();
        StringProtocol._ephemeralString.getter();

        v28 = String._bridgeToObjectiveCImpl()();

        a2 = [v28 lengthOfBytesUsingEncoding_];
        swift_unknownObjectRelease();
        String.subscript.getter();

        StringProtocol._ephemeralString.getter();

        v29 = String._bridgeToObjectiveCImpl()();

        v30 = [v29 lengthOfBytesUsingEncoding_];
        result = swift_unknownObjectRelease();
        v23 = a2 - 1;
        if (!__OFSUB__(a2, 1))
        {
          v24 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

LABEL_102:
          *v89 = v23;
          v89[1] = v24;

          return a2;
        }

        goto LABEL_135;
      }

      goto LABEL_83;
    }

    if (a1 != 7)
    {
      if (a1 != 8)
      {
        if (*(v7 + 144))
        {
          goto LABEL_84;
        }

        v89 = a2;
        String.subscript.getter();
        lazy protocol witness table accessor for type Substring and conformance Substring();
        StringProtocol._ephemeralString.getter();

        v20 = String._bridgeToObjectiveCImpl()();

        a2 = [v20 lengthOfBytesUsingEncoding_];
        swift_unknownObjectRelease();
        String.subscript.getter();

        StringProtocol._ephemeralString.getter();

        v21 = String._bridgeToObjectiveCImpl()();

        v22 = [v21 lengthOfBytesUsingEncoding_];
        result = swift_unknownObjectRelease();
        v23 = a2 - 1;
        if (!__OFSUB__(a2, 1))
        {
          v24 = v22 + 1;
          if (!__OFADD__(v22, 1))
          {
            goto LABEL_102;
          }

          __break(1u);
LABEL_27:
          *a2 = xmmword_181235AC0;
          return -1;
        }

LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      if (*(v7 + 120) == 1)
      {
        goto LABEL_84;
      }

      v51 = [v3 host];
      if (!v51)
      {
        goto LABEL_84;
      }

      String.subscript.getter();
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();

      v52 = String._bridgeToObjectiveCImpl()();

      v53 = [v52 lengthOfBytesUsingEncoding_];
      swift_unknownObjectRelease();
      String.subscript.getter();

      StringProtocol._ephemeralString.getter();

      v54 = String._bridgeToObjectiveCImpl()();

      v55 = [v54 lengthOfBytesUsingEncoding_];
      result = swift_unknownObjectRelease();
      if (*(v7 + 72) == 1)
      {
        v56 = a2;
        if (*(v7 + 96) == 1)
        {
          if (*(v7 + 48))
          {
            v57 = 2;
          }

          else
          {
            v57 = 3;
          }
        }

        else
        {
          v57 = 1;
        }

        v80 = v53;
      }

      else
      {
        v57 = 1;
        v80 = v53;
        v56 = a2;
      }

      v50 = __OFSUB__(v80, v57);
      v85 = &v80[-v57];
      if (v50)
      {
        goto LABEL_143;
      }

      v50 = __OFADD__(v57, v55);
      v86 = &v55[v57];
      if (v50)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v87 = (*(v7 + 144) & 1) == 0;
      v50 = __OFADD__(v86, v87);
      v88 = &v86[v87];
      if (v50)
      {
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      *v56 = v85;
      v56[1] = v88;
LABEL_128:

      return v53;
    }

    if (*(v7 + 72))
    {
      if (*(v7 + 96) == 1)
      {
        goto LABEL_84;
      }

      v90 = a2;
      v33 = (v7 + 80);
      v34 = *(v7 + 88);
    }

    else
    {
      v90 = a2;
      v33 = (v7 + 56);
      v62 = 88;
      if (*(v7 + 96))
      {
        v62 = 64;
      }

      v34 = *(v7 + v62);
    }

    v63 = *v33;
    String.subscript.getter();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();

    v64 = String._bridgeToObjectiveCImpl()();

    v53 = [v64 lengthOfBytesUsingEncoding_];
    result = swift_unknownObjectRelease();
    if (v34 >> 14 < v63 >> 14)
    {
      __break(1u);
    }

    else
    {
      String.subscript.getter();

      StringProtocol._ephemeralString.getter();

      v65 = String._bridgeToObjectiveCImpl()();

      v66 = [v65 lengthOfBytesUsingEncoding_];
      result = swift_unknownObjectRelease();
      if (*(v7 + 48))
      {
        v67 = 2;
      }

      else
      {
        v67 = 3;
      }

      v68 = &v53[-v67];
      if (!__OFSUB__(v53, v67))
      {
        v50 = __OFADD__(v67, v66);
        v69 = &v66[v67];
        if (!v50)
        {
          v50 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          if (!v50)
          {
            *v90 = v68;
            v90[1] = v70;
            goto LABEL_128;
          }

LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

LABEL_131:
        __break(1u);
        goto LABEL_132;
      }
    }

    __break(1u);
    goto LABEL_131;
  }

  if (a1 <= 3)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {

          if (*(v7 + 168) != 1 && *(v3 + OBJC_IVAR____NSSwiftURL_hasPath) == 1)
          {
            String.subscript.getter();
            lazy protocol witness table accessor for type Substring and conformance Substring();
            StringProtocol._ephemeralString.getter();

            v13 = String._bridgeToObjectiveCImpl()();

            v14 = [v13 lengthOfBytesUsingEncoding_];
            swift_unknownObjectRelease();
            String.subscript.getter();

            StringProtocol._ephemeralString.getter();

            v15 = String._bridgeToObjectiveCImpl()();

            v16 = [v15 lengthOfBytesUsingEncoding_];
            result = swift_unknownObjectRelease();
            v18 = *(v7 + 48);
            if (*(v7 + 72) == 1 && *(v7 + 96) == 1 && *(v7 + 120) == 1 && (*(v7 + 144) & 1) != 0)
            {
              v19 = v18 ^ 1u;
            }

            else
            {
              result = URLParseInfo.netLocationRange.getter();
              v78 = 2;
              if (!v18)
              {
                v78 = 3;
              }

              if (v77 & 1 | (((result ^ v76) & 0xFFFFFFFFFFFFC000) != 0))
              {
                v19 = 0;
              }

              else
              {
                v19 = v78;
              }
            }

            v79 = *(v7 + 192) != 1 || (*(v7 + 216) & 1) == 0;
            v81 = &v14[-v19];
            if (!__OFSUB__(v14, v19))
            {
              v50 = __OFADD__(v19, v16);
              v82 = &v16[v19];
              if (!v50)
              {
                v50 = __OFADD__(v82, v79);
                v83 = &v82[v79];
                if (!v50)
                {
                  *a2 = v81;
                  a2[1] = v83;

                  return v14;
                }

                goto LABEL_150;
              }

              goto LABEL_148;
            }

            goto LABEL_146;
          }

          goto LABEL_85;
        }

        goto LABEL_84;
      }

      goto LABEL_59;
    }

LABEL_43:

    if (*(v7 + 48))
    {
LABEL_85:

      return -1;
    }

    String.subscript.getter();
    v31 = Substring.UTF8View.distance(from:to:)();

    if (*(v7 + 72) == 1 && *(v7 + 96) == 1 && *(v7 + 120) == 1 && *(v7 + 144) == 1)
    {
      if (*(v3 + OBJC_IVAR____NSSwiftURL_hasNetLocation) & 1) != 0 || (*(v3 + OBJC_IVAR____NSSwiftURL_hasPath))
      {
        v32 = 1;
        goto LABEL_120;
      }
    }

    else if (*(v3 + OBJC_IVAR____NSSwiftURL_hasNetLocation) & 1) != 0 || (*(v3 + OBJC_IVAR____NSSwiftURL_hasPath))
    {
      v32 = 3;
      goto LABEL_120;
    }

    v32 = 0;
LABEL_120:
    v50 = __OFADD__(v31, v32);
    v84 = v31 + v32;
    if (!v50)
    {
      *a2 = 0;
      a2[1] = v84;

      return 0;
    }

    goto LABEL_137;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      if (*(v7 + 72))
      {
        goto LABEL_84;
      }

      v89 = a2;
      String.subscript.getter();
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();

      v58 = String._bridgeToObjectiveCImpl()();

      a2 = [v58 lengthOfBytesUsingEncoding_];
      swift_unknownObjectRelease();
      String.subscript.getter();

      StringProtocol._ephemeralString.getter();

      v59 = String._bridgeToObjectiveCImpl()();

      v12 = [v59 lengthOfBytesUsingEncoding_];
      result = swift_unknownObjectRelease();
      if (*(v7 + 48))
      {
        v60 = 2;
      }

      else
      {
        v60 = 3;
      }

      v23 = a2 - v60;
      if (__OFSUB__(a2, v60))
      {
        goto LABEL_138;
      }

      v50 = __OFADD__(v60, v12);
      v61 = &v12[v60];
      if (v50)
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v50 = __OFADD__(v61, 1);
      v24 = v61 + 1;
      if (!v50)
      {
        goto LABEL_102;
      }

      __break(1u);
LABEL_83:
      if ((*(v7 + 192) & 1) == 0)
      {
        v89 = a2;
        String.subscript.getter();
        lazy protocol witness table accessor for type Substring and conformance Substring();
        StringProtocol._ephemeralString.getter();

        v71 = String._bridgeToObjectiveCImpl()();

        a2 = [v71 lengthOfBytesUsingEncoding_];
        swift_unknownObjectRelease();
        String.subscript.getter();

        StringProtocol._ephemeralString.getter();

        v72 = String._bridgeToObjectiveCImpl()();

        v73 = [v72 lengthOfBytesUsingEncoding_];
        result = swift_unknownObjectRelease();
        v23 = a2 - 1;
        if (__OFSUB__(a2, 1))
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v74 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        v75 = (*(v7 + 216) & 1) == 0;
        v50 = __OFADD__(v74, v75);
        v24 = &v74[v75];
        if (v50)
        {
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        goto LABEL_102;
      }

LABEL_84:

      goto LABEL_85;
    }

    if (*(v7 + 96))
    {
      goto LABEL_84;
    }

    v89 = a2;
    String.subscript.getter();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();

    v25 = String._bridgeToObjectiveCImpl()();

    a2 = [v25 lengthOfBytesUsingEncoding_];
    swift_unknownObjectRelease();
    String.subscript.getter();
    a1 = v26;

    StringProtocol._ephemeralString.getter();

    v27 = String._bridgeToObjectiveCImpl()();

    v12 = [v27 lengthOfBytesUsingEncoding_];
    result = swift_unknownObjectRelease();
    v23 = a2 - 1;
    if (!__OFSUB__(a2, 1))
    {
      v24 = v12 + 2;
      if (!__OFADD__(v12, 2))
      {
        goto LABEL_102;
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  URLParseInfo.cfResourceSpecifierRange.getter();
  if (v35)
  {
    goto LABEL_84;
  }

  v91 = a2;
  String.subscript.getter();
  lazy protocol witness table accessor for type Substring and conformance Substring();
  StringProtocol._ephemeralString.getter();

  v36 = String._bridgeToObjectiveCImpl()();

  v37 = [v36 lengthOfBytesUsingEncoding_];
  swift_unknownObjectRelease();
  String.subscript.getter();
  a2 = v38;

  StringProtocol._ephemeralString.getter();

  v39 = String._bridgeToObjectiveCImpl()();

  v12 = [v39 lengthOfBytesUsingEncoding_];
  result = swift_unknownObjectRelease();
  v40 = v37 - 1;
  if (__OFSUB__(v37, 1))
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v41 = v12 + 1;
  v42 = v91;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_66;
  }

  __break(1u);
LABEL_59:
  v43 = URLParseInfo.netLocationRange.getter();
  if ((v45 & 1) != 0 || (v43 ^ v44) < 0x4000)
  {
    goto LABEL_84;
  }

  String.subscript.getter();
  lazy protocol witness table accessor for type Substring and conformance Substring();
  StringProtocol._ephemeralString.getter();

  v46 = String._bridgeToObjectiveCImpl()();

  v37 = [v46 lengthOfBytesUsingEncoding_];
  swift_unknownObjectRelease();
  String.subscript.getter();

  StringProtocol._ephemeralString.getter();

  v47 = String._bridgeToObjectiveCImpl()();

  v48 = [v47 lengthOfBytesUsingEncoding_];
  result = swift_unknownObjectRelease();
  if (*(v7 + 48))
  {
    v49 = 2;
  }

  else
  {
    v49 = 3;
  }

  v40 = &v37[-v49];
  if (__OFSUB__(v37, v49))
  {
    goto LABEL_147;
  }

  v50 = __OFADD__(v48, v49);
  v41 = &v48[v49];
  v42 = a2;
  if (!v50)
  {
LABEL_66:
    *v42 = v40;
    v42[1] = v41;

    return v37;
  }

LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

unint64_t _NSSwiftURL._range(for:rangeIncludingSeparators:)(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v44 = *MEMORY[0x1E69E9840];
  if (*(v2 + OBJC_IVAR____NSSwiftURL_isDecomposable) == 1)
  {
    result = _NSSwiftURL._decomposableRange(for:rangeIncludingSeparators:)(a1, a2);
    if (result != -1)
    {
      return result;
    }

    v6 = *(v2 + OBJC_IVAR____NSSwiftURL_url);
    object = *(v6 + 16);
    v8 = *(object + 220);

    if (v8)
    {
      specialized URLComponents._URLComponents.init(parseInfo:)(object, v43);
      v9 = URLComponents._URLComponents._uncheckedString(original:)(1);
      outlined destroy of URLComponents._URLComponents(v43);
      object = specialized static RFC3986Parser.compatibilityParse(urlString:encodedComponents:)(v9._countAndFlagsBits, v9._object, 0);

      if (!object)
      {
        v4 = 0;
        goto LABEL_47;
      }
    }

    if (v4 == 1)
    {

      v4 = 0;
LABEL_47:
      v25 = 0;
LABEL_48:
      result = -1;
      goto LABEL_72;
    }

    v16 = *(object + 16);
    v2 = *(object + 24);
    v14 = *(v6 + 40);
    if (*(object + 48))
    {
      v21 = 15;
      if (v4 == 2)
      {
LABEL_19:

        String.subscript.getter();

        lazy protocol witness table accessor for type Substring and conformance Substring();
        StringProtocol._ephemeralString.getter();

        v22 = String._bridgeToObjectiveCImpl()();

        v4 = [v22 lengthOfBytesUsingEncoding_];
        swift_unknownObjectRelease();
        URLParseInfo.netLocationRange.getter();
        LOBYTE(v22) = v23;

        if (v22)
        {
          goto LABEL_47;
        }

        v24 = __OFADD__(v4, 2);
        v4 += 2;
        if (!v24)
        {
          v25 = 0;
          result = -1;
LABEL_72:
          *a2 = v4;
          *(a2 + 8) = v25;
          return result;
        }

LABEL_97:
        __break(1u);
      }

LABEL_34:
      if ((*(object + 72) & 1) == 0 || (*(object + 96) & 1) == 0 || *(object + 120) != 1 || (*(object + 144) & 1) == 0)
      {
        v29 = (v16 >> 59) & 1;
        if ((v2 & 0x1000000000000000) == 0)
        {
          LOBYTE(v29) = 1;
        }

        if ((v21 & 0xC) == 4 << v29)
        {
          v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v21, v16, v2);
          if ((v2 & 0x1000000000000000) == 0)
          {
LABEL_42:
            v30 = HIBYTE(v2) & 0xF;
            if ((v2 & 0x2000000000000000) == 0)
            {
              v30 = v16 & 0xFFFFFFFFFFFFLL;
            }

            if (v30 < (v21 >> 16) + 2)
            {
              __break(1u);
              goto LABEL_97;
            }

            goto LABEL_45;
          }
        }

        else if ((v2 & 0x1000000000000000) == 0)
        {
          goto LABEL_42;
        }

        MEMORY[0x1865CB180](v21, 2, v16, v2);
      }

LABEL_45:
      if ((v4 | 2) != 7 && v4 != 6 && v4 != 8 && v4 != 9 && v4 != 3 && v4 != 4 && v4 != 12 && v4 != 11)
      {

        v25 = 0;
        v4 = -1;
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    result = *(object + 40);
    v28 = (v16 >> 59) & 1;
    if ((v2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v28) = 1;
    }

    if ((*(object + 40) & 0xCLL) != 4 << v28)
    {
      if ((v2 & 0x1000000000000000) == 0)
      {
        goto LABEL_33;
      }

LABEL_89:
      v40 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v40 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v40 > result >> 16)
      {
        v21 = String.UTF8View._foreignIndex(after:)();
        if (v4 == 2)
        {
          goto LABEL_19;
        }

        goto LABEL_34;
      }

LABEL_99:
      __break(1u);
      return result;
    }

LABEL_88:
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, v16, v2);
    if ((v2 & 0x1000000000000000) == 0)
    {
LABEL_33:
      v21 = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v4 == 2)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }

    goto LABEL_89;
  }

  v10 = [v2 scheme];
  if (!v10)
  {
    goto LABEL_71;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
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
          v16 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          object = v17;

          goto LABEL_63;
        }

        goto LABEL_13;
      }

      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_99;
      }

      v26 = String.init(utf8String:)(result);
      if (v27)
      {
LABEL_28:
        v16 = v26;
        object = v27;

        goto LABEL_62;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v26 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v27)
    {
      [v14 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v16 = v41;
      object = v42;

      if ((v42 & 0x1000000000000000) == 0)
      {
        goto LABEL_64;
      }

LABEL_52:
      v14 = String.UTF8View._foreignCount()();

      v32 = v14;
      goto LABEL_67;
    }

    goto LABEL_28;
  }

LABEL_13:
  *&v43[0] = 0;
  if (__CFStringIsCF())
  {

LABEL_22:
    v16 = 0;
    object = 0xE000000000000000;
    goto LABEL_63;
  }

  v18 = v14;
  v19 = String.init(_nativeStorage:)();
  if (v20)
  {
    v16 = v19;
    object = v20;

    goto LABEL_63;
  }

  *&v43[0] = [v18 length];
  if (!*&v43[0])
  {

    goto LABEL_22;
  }

  v16 = String.init(_cocoaString:)();
  object = v33;
LABEL_62:

LABEL_63:
  if ((object & 0x1000000000000000) != 0)
  {
    goto LABEL_52;
  }

LABEL_64:

  if ((object & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(object) & 0xF;
  }

  else
  {
    v32 = v16 & 0xFFFFFFFFFFFFLL;
  }

LABEL_67:
  if (v4 != 4)
  {
    if (v4 == 1)
    {
      v25 = v32 + 1;
      if (!__OFADD__(v32, 1))
      {
        v4 = 0;
        result = 0;
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_86;
    }

LABEL_71:
    v25 = 0;
    v4 = -1;
    result = -1;
    goto LABEL_72;
  }

  v16 = v32;
  v34 = *(v2 + OBJC_IVAR____NSSwiftURL_url);
  v35 = *(v34 + 16);
  if (*(v35 + 220))
  {

    specialized URLComponents._URLComponents.init(parseInfo:)(v36, v43);
    object = URLComponents._URLComponents._uncheckedString(original:)(1)._object;
    outlined destroy of URLComponents._URLComponents(v43);
  }

  else
  {
    object = *(v35 + 24);
  }

  v37 = *(v34 + 40);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v14 = v38;

  v2 = String._bridgeToObjectiveCImpl()();

  v4 = [v2 lengthOfBytesUsingEncoding_];
  swift_unknownObjectRelease();
  result = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (result == v4)
  {
    v25 = 0;
    result = -1;
    goto LABEL_72;
  }

  v39 = v4 - v16;
  if (__OFSUB__(v4, v16))
  {
    goto LABEL_87;
  }

  *a2 = v16;
  *(a2 + 8) = v39;
  if (__OFSUB__(v39, 1))
  {
    __break(1u);
LABEL_46:

    String.subscript.getter();

    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();

    v31 = String._bridgeToObjectiveCImpl()();

    v4 = [v31 lengthOfBytesUsingEncoding_];
    swift_unknownObjectRelease();

    goto LABEL_47;
  }

  return result;
}

id specialized _NSSwiftURL.init(url:)(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____NSSwiftURL_url] = a1;
  v3 = *(a1 + 16);
  v4 = *(v3 + 24);
  v5 = &v1[OBJC_IVAR____NSSwiftURL_string];
  *v5 = *(v3 + 16);
  v5[1] = v4;

  v6 = _SwiftURL.isDecomposable.getter();
  v1[OBJC_IVAR____NSSwiftURL_isDecomposable] = v6;
  v7 = URLParseInfo.netLocationRange.getter();
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v1[OBJC_IVAR____NSSwiftURL_hasNetLocation] = 0;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = ((v7 ^ v8) & 0xFFFFFFFFFFFFC000) != 0;
    v1[OBJC_IVAR____NSSwiftURL_hasNetLocation] = v10;
    if (!v6)
    {
      v11 = 0;
      goto LABEL_10;
    }
  }

  if (*(v3 + 168))
  {
    v12 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v12 = String.subscript.getter();
  }

  v14 = v12;
  v15 = v13;

  v11 = ((v14 ^ v15) & 0xFFFFFFFFFFFFC000) != 0 || v10;
LABEL_10:
  v2[OBJC_IVAR____NSSwiftURL_hasPath] = v11;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for _NSSwiftURL();
  return objc_msgSendSuper2(&v17, sel_init);
}

id specialized static NSURL._cfurlWith(string:encoding:relativeToURL:encodingInvalidCharacters:forceBaseURL:)(uint64_t a1, unint64_t a2, CFStringEncoding encoding, uint64_t *a4, char a5, char a6)
{
  v10 = *a4;
  v11 = a4[1];
  v12 = CFStringConvertEncodingToNSStringEncoding(encoding);
  type metadata accessor for _SwiftURL();
  v13 = swift_allocObject();
  type metadata accessor for _SwiftURL.ResourceInfo();
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v13 + 56) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  *(v13 + 64) = v16;
  v17 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(a1, a2, a5);
  if (v17)
  {
    *(v13 + 16) = v17;
    if ((a6 & 1) != 0 || v17[48] == 1)
    {
      if (v10)
      {
        ObjectType = swift_getObjectType();
        v19 = *(v11 + 128);

        v19(v23, ObjectType, v11);

        if (v23[0])
        {
          v11 = v23[1];
          v10 = v23[0];
        }

        else
        {
          swift_unknownObjectRetain();
        }
      }
    }

    else
    {

      String.subscript.getter();

      v10 = 0;
      v11 = 0;
    }

    *(v13 + 24) = v10;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    *(v13 + 48) = 0;
    v21 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
    v20 = specialized _NSSwiftURL.init(url:)(v13);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v20;
}

id specialized static NSURL._urlWith(string:relativeToURL:encodingInvalidCharacters:)(uint64_t a1, unint64_t a2, uint64_t *a3, char a4)
{
  v7 = *a3;
  v8 = a3[1];
  type metadata accessor for _SwiftURL();
  v9 = swift_allocObject();
  type metadata accessor for _SwiftURL.ResourceInfo();
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v9 + 56) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *(v9 + 64) = v12;
  v13 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(a1, a2, a4, 1);
  if (v13)
  {
    *(v9 + 16) = v13;
    if (*(v13 + 48))
    {
      if (v7)
      {
        ObjectType = swift_getObjectType();
        v15 = *(v8 + 128);

        v15(v19, ObjectType, v8);

        if (v19[0])
        {
          v8 = v19[1];
          v7 = v19[0];
        }

        else
        {
          swift_unknownObjectRetain();
        }
      }
    }

    else
    {

      String.subscript.getter();

      v7 = 0;
      v8 = 0;
    }

    *(v9 + 24) = v7;
    *(v9 + 32) = v8;
    *(v9 + 40) = 4;
    *(v9 + 48) = 0;
    v17 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
    v16 = specialized _NSSwiftURL.init(url:)(v9);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v16;
}

uint64_t specialized static NSURL._fileURLWith(path:relativeToURL:)(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v8 = 2 * ((specialized BidirectionalCollection.last.getter(a1, a2) & 0x1FF) != 47);
    swift_unknownObjectRetain();

    v9 = specialized String.withFileSystemRepresentation<A>(_:)(a1, a2, a1, a2);
    v11 = v10;

    v18[0] = v8;
    v17[0] = v4;
    v17[1] = v3;
    type metadata accessor for _SwiftURL();
    swift_allocObject();
    v12 = _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v9, v11, 0, v18, v17);
    v13 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
    v14 = specialized _NSSwiftURL.init(url:)(v12);

    return v14;
  }

  else if (v4)
  {
    ObjectType = swift_getObjectType();
    return (*(v3 + 432))(ObjectType, v3);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static NSURL._fileURLWith(path:isDirectory:relativeToURL:)(uint64_t a1, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = *a4;
  v4 = a4[1];
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = (a3 & 1) == 0;
    swift_unknownObjectRetain();

    v10 = specialized String.withFileSystemRepresentation<A>(_:)(a1, a2, a1, a2);
    v12 = v11;

    v19[0] = v9;
    v18[0] = v5;
    v18[1] = v4;
    type metadata accessor for _SwiftURL();
    swift_allocObject();
    v13 = _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v10, v12, 0, v19, v18);
    v14 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
    v15 = specialized _NSSwiftURL.init(url:)(v13);

    return v15;
  }

  else if (v5)
  {
    ObjectType = swift_getObjectType();
    return (*(v4 + 432))(ObjectType, v4);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static NSURL._fileURLWith(path:pathStyle:isDirectory:relativeToURL:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    if (a3 == 2)
    {
      v10 = 1;
    }

    else
    {
      if (a3 == 1)
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v10 = 0;
    }

    v17 = (a4 & 1) == 0;
    v16[0] = v5;
    v16[1] = v6;
    type metadata accessor for _SwiftURL();
    swift_allocObject();
    swift_unknownObjectRetain();

    v13 = _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(a1, a2, v10, &v17, v16);
    v14 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
    v15 = specialized _NSSwiftURL.init(url:)(v13);

    return v15;
  }

  else if (v5)
  {
    ObjectType = swift_getObjectType();
    return (*(v6 + 432))(ObjectType, v6);
  }

  else
  {
    return 0;
  }
}

unint64_t type metadata accessor for NSURL()
{
  result = lazy cache variable for type metadata for NSURL;
  if (!lazy cache variable for type metadata for NSURL)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSURL);
  }

  return result;
}

BOOL specialized Sequence<>.contains(_:)(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void specialized Collection._copyToContiguousArray()()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v140 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v140 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v140 - v15;
  v17 = *(v1 + 8);
  v18 = *(v1 + 120);
  v19 = *(v1 + 184);
  v20 = *(v1 + 208);
  if (*(v1 + *(v2 + 28)) == 1)
  {
    v174 = v16;
    v24 = 0;
    v27 = *(v1 + 112);
    v28 = *(v1 + 96);
    v29 = *(v1 + 104);
    v171 = v11;
    v172 = v29;
    v30 = *(v1 + 64);
    v31 = *(v1 + 72);
    v157 = *(v1 + 56);
    v32 = *(v1 + 40);
    v158 = *(v1 + 48);
    v140 = v19 >> 10;
    v144 = v20;
    v145 = v31 >> 10;
    v173 = (v14 + 8);
    v142 = v2;
    v143 = (v9 + 16);
    v141 = (v9 + 8);
    v33 = v17;
    v149 = v4;
    v150 = v28;
    v34 = v28;
    v153 = v20;
    v35 = v18;
    v36 = *(v1 + 32);
    v167 = *(v1 + 24);
    v37 = *(v1 + 16);
    v175 = v13;
    v176 = v8;
    v147 = v18;
    v148 = v17;
    v146 = v7;
    while (1)
    {
      v182 = v27;
      if (v33 >= v18 && (v18 < v33 || v144 == 2 || v34 != 2 && v31 >> 10 >= v140))
      {
        goto LABEL_11;
      }

      if (v33 < v17)
      {
        goto LABEL_138;
      }

      v47 = v17 < v33 || v150 == 2;
      v48 = v47;
      if (!v47)
      {
        if (v34 == 2)
        {
          goto LABEL_161;
        }

        if (v145 > v31 >> 10)
        {
          goto LABEL_148;
        }
      }

      if (v33 >= v35)
      {
        if (v35 < v33)
        {
          goto LABEL_149;
        }

        if (v153 == 2)
        {
          goto LABEL_162;
        }

        if (v34 == 2)
        {
          if (!v48)
          {
            goto LABEL_160;
          }

          goto LABEL_44;
        }

        if (v31 >> 10 >= v19 >> 10)
        {
          goto LABEL_154;
        }
      }

      if ((v48 & 1) == 0)
      {
        if (v34 == 2)
        {
          goto LABEL_160;
        }

        if (v145 > v31 >> 10)
        {
          goto LABEL_152;
        }
      }

LABEL_44:
      if (v35 < v33)
      {
        goto LABEL_139;
      }

      if (v33 >= v35 && v34 != 2)
      {
        if (v153 == 2)
        {
          goto LABEL_163;
        }

        if (v19 >> 10 < v31 >> 10)
        {
          goto LABEL_150;
        }
      }

      if (v36 == 1)
      {
        goto LABEL_159;
      }

      v49 = *v1;
      if (v37 != *(*v1 + 96))
      {
        goto LABEL_159;
      }

      v162 = v34;
      v163 = v31;
      v169 = v37;
      v170 = v36;
      v166 = v49;
      v155 = v35;
      v156 = v19;
      v168 = v33;
      v161 = v30;
      v151 = v32;
      v159 = v24;
      if (v30 == 2)
      {
        v50 = *(v49 + 72);
        if (v50)
        {
          v53 = v49 + 80;
          v51 = *(v49 + 80);
          v52 = *(v53 + 8);
          v54 = v32;
          swift_unknownObjectRetain();
          v165 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v169, v167, v170, v50, v51, v52);
          swift_unknownObjectRelease();
          v32 = v54;
          v49 = v166;
        }

        else
        {
          v165 = 0;
        }

        v152 = v32 >> 11;
        v58 = *(v49 + 24);
        v59 = *(v49 + 56);
        v202 = *(v49 + 40);
        v203 = v59;
        v60 = *(v49 + 40);
        v198 = *(v49 + 24);
        v199 = v60;
        v200 = *(v49 + 56);
        v201 = v58;
        BigString.startIndex.getter();
        v164 = v61;
        v204[0] = v201;
        v204[1] = v202;
        v205 = v203;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v204, &v177);
        v57 = v165;
        v154 = BigString.UTF8View.index(_:offsetBy:)();
        outlined destroy of BigString(&v201);
        v8 = v176;
      }

      else
      {
        v55 = v32 >> 11;
        v56 = *(v49 + 40);
        v195 = *(v49 + 24);
        v196 = v56;
        v197 = *(v49 + 56);
        v165 = v195;
        swift_unknownObjectRetain();
        v154 = BigString.UTF8View.index(roundingDown:)();
        swift_unknownObjectRelease();
        v152 = v55;
        v57 = v55;
      }

      v63 = *(v49 + 72);
      v62 = *(v49 + 80);
      v64 = *(v49 + 96);
      v164 = *(v49 + 88);
      v165 = v62;
      v65 = v167;
      v177 = v169;
      v178 = v167;
      v179 = v170;
      if (__OFADD__(v168, 1))
      {
        goto LABEL_141;
      }

      if (v169 != v64)
      {
        goto LABEL_142;
      }

      ++v168;
      if (v170)
      {
        v66 = *(v170 + 24 * ((v167 >> ((4 * *(v170 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v160 = v57 + v66;
        if (__OFADD__(v57, v66))
        {
          goto LABEL_147;
        }

        if (!v63)
        {
          goto LABEL_140;
        }

        v67 = v169;
        swift_unknownObjectRetain();
        v68 = v167;
        v69 = v170;
      }

      else
      {
        v70 = v169;
        swift_unknownObjectRetain();
        v71 = specialized Rope._Node.subscript.getter(v65, v63);

        v160 = v57 + v71;
        if (__OFADD__(v57, v71))
        {
          goto LABEL_153;
        }

        v67 = v70;
        v69 = v170;
        v68 = v167;
        if (!v63)
        {
          goto LABEL_140;
        }
      }

      if (v68 >= (((-15 << ((4 * *(v63 + 18) + 8) & 0x3C)) - 1) & *(v63 + 18) | (*(v63 + 16) << ((4 * *(v63 + 18) + 8) & 0x3C))))
      {
        goto LABEL_140;
      }

      if (v69 && (v72 = (4 * *(v69 + 18) + 8) & 0x3C, v73 = ((v68 >> v72) & 0xF) + 1, v73 < *(v69 + 16)))
      {
        v74 = v68;
        swift_unknownObjectRelease();
        v75 = (v73 << v72) | ((-15 << v72) - 1) & v74;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v177, v63))
      {
        swift_unknownObjectRelease();
        v75 = v178;
      }

      else
      {
        v76 = *(v63 + 18);
        v77 = *(v63 + 16);
        swift_unknownObjectRelease();
        v75 = ((-15 << ((4 * v76 + 8) & 0x3C)) - 1) & v76 | (v77 << ((4 * v76 + 8) & 0x3C));
        v177 = v67;
        v178 = v75;
        v179 = 0;
      }

      v167 = v75;
      v169 = v177;
      v170 = v179;
      if (v182)
      {
        (*v143)(v171, v1 + *(v2 + 24), v8);
        if (v162 == 2)
        {
          v78 = v154;
        }

        else
        {
          v78 = v163;
        }

        v79 = v174;
        RangeSet.ranges.getter();
        v80 = v175;
        v81 = RangeSet.Ranges.count.getter();
        v82 = *v173;
        (*v173)(v79, v80);
        if (v81 < 1)
        {
          goto LABEL_134;
        }

        v83 = 0;
        v84 = v78 >> 10;
        while (!__OFADD__(v83, v81))
        {
          v85 = v82;
          v86 = (v83 + v81) / 2;
          v87 = v174;
          RangeSet.ranges.getter();
          v88 = v175;
          RangeSet.Ranges.subscript.getter();
          v89 = v87;
          v82 = v85;
          v85(v89, v88);
          if (v84 < v177 >> 10)
          {
            v81 = (v83 + v81) / 2;
            if (v83 >= v86)
            {
              goto LABEL_134;
            }
          }

          else
          {
            v172 = (v83 + v81) / 2;
            v90 = v181;
            if (v84 < v181 >> 10)
            {
              (*v141)(v171, v176);
              v2 = v142;
              v7 = v146;
              goto LABEL_86;
            }

            v83 = v172 + 1;
            if (v172 + 1 >= v81)
            {
              goto LABEL_134;
            }
          }
        }

        goto LABEL_135;
      }

      v91 = v174;
      RangeSet.ranges.getter();
      v92 = v175;
      RangeSet.Ranges.subscript.getter();
      v85 = *v173;
      (*v173)(v91, v92);
      v90 = v181;
LABEL_86:
      if (v160 >= (v90 >> 11))
      {
        v97 = v172 + 1;
        if (__OFADD__(v172, 1))
        {
          goto LABEL_151;
        }

        v98 = v174;
        RangeSet.ranges.getter();
        v99 = v175;
        v100 = RangeSet.Ranges.count.getter();
        v85(v98, v99);
        if (v97 == v100)
        {
          v33 = *(v1 + 120);
          v37 = *(v1 + 128);
          v36 = *(v1 + 144);
          v167 = *(v1 + 136);
          v32 = *(v1 + 152);
          v101 = *(v1 + 160);
          v30 = *(v1 + 176);
          v157 = *(v1 + 168);
          v158 = v101;
          v31 = *(v1 + 184);
          v34 = *(v1 + 208);
          v172 = *(v1 + 216);
          v19 = v31;
          v153 = v34;
          v35 = v33;
          v27 = *(v1 + 224);
          v17 = v148;
          v4 = v149;
          v7 = v146;
          v18 = v147;
          v8 = v176;
        }

        else
        {
          RangeSet.ranges.getter();
          v172 = v97;
          v102 = v175;
          RangeSet.Ranges.subscript.getter();
          v85(v98, v102);
          v103 = v166;
          v104 = *(v166 + 72);
          v105 = *(v166 + 88);
          v106 = v177 >> 11;
          if (v104)
          {
            v107 = *(v166 + 88);
          }

          else
          {
            v107 = 0;
          }

          if (v107 < v106)
          {
            goto LABEL_156;
          }

          v108 = *(v166 + 96);
          v162 = v180;
          v163 = v177;
          v169 = v108;
          v164 = v179;
          v165 = v178;
          if (v104)
          {
            v167 = *(v166 + 80);
            v168 = v105;
            v110 = (v104 + 16);
            v109 = *(v104 + 16);
            v111 = *(v104 + 18);
            if (v106 < v105 && *(v104 + 16))
            {
              v112 = swift_unknownObjectRetain_n();
              v161 = v112;
              if (!v111)
              {
                v170 = 0;
                v7 = v146;
LABEL_119:
                v125 = 0;
                v127 = 24;
                v120 = v106;
                v128 = v109;
                v126 = v169;
                while (1)
                {
                  v129 = *(v112 + v127);
                  v106 = v120 - v129;
                  if (__OFSUB__(v120, v129))
                  {
                    goto LABEL_144;
                  }

                  if (__OFADD__(v106, 1))
                  {
                    goto LABEL_145;
                  }

                  if (v106 + 1 < 1)
                  {
                    v130 = v169;
                    goto LABEL_128;
                  }

                  ++v125;
                  v127 += 24;
                  v120 -= v129;
                  if (v128 == v125)
                  {
                    v125 = v128;
                    goto LABEL_125;
                  }
                }
              }

              v170 = v111;
              v113 = v112;
              do
              {
                v114 = *v110;
                if (*v110)
                {
                  v116 = 0;
                  v117 = (v113 + 40);
                  while (1)
                  {
                    v118 = *v117;
                    v117 += 3;
                    v119 = v106 - v118;
                    if (__OFSUB__(v106, v118))
                    {
                      goto LABEL_136;
                    }

                    if (__OFADD__(v119, 1))
                    {
                      goto LABEL_137;
                    }

                    if (v119 + 1 < 1)
                    {
                      v114 = v116;
                      goto LABEL_103;
                    }

                    ++v116;
                    v106 = v119;
                    if (v114 == v116)
                    {
                      goto LABEL_112;
                    }
                  }
                }

                v119 = v106;
LABEL_112:
                if (v119)
                {
                  goto LABEL_146;
                }

                v106 = 0;
LABEL_103:
                v170 = (v114 << ((4 * v111 + 8) & 0x3C)) | ((-15 << ((4 * v111 + 8) & 0x3C)) - 1) & v170;
                v115 = *(v113 + 24 + 24 * v114);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                v110 = (v115 + 16);
                LOBYTE(v111) = *(v115 + 18);
                v113 = v115;
              }

              while (v111);
              v112 = v115;
              LODWORD(v109) = *v110;
              v7 = v146;
              if (*v110)
              {
                goto LABEL_119;
              }

              v125 = 0;
              v126 = v169;
LABEL_125:
              if (!v106)
              {
                v130 = v126;
                v120 = 0;
LABEL_128:
                v131 = v112;
                swift_unknownObjectRelease();
                v123 = v131;
                v122 = v170 & 0xFFFFFFFFFFFFF0FFLL | (v125 << 8);
                v124 = v130;
                v121 = v161;
                goto LABEL_129;
              }

              goto LABEL_158;
            }

            v121 = v104;
            swift_unknownObjectRetain();
            v122 = ((-15 << ((4 * v111 + 8) & 0x3C)) - 1) & v111 | (v109 << ((4 * v111 + 8) & 0x3C));
            v120 = 0;
            v123 = 0;
            v7 = v146;
            v124 = v169;
LABEL_129:
            v132 = v167;
            v167 = v122;
            v170 = v123;
            v168 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v124, v122, v123, v121, v132);
            swift_unknownObjectRelease();
            v8 = v176;
            v103 = v166;
          }

          else
          {
            v120 = 0;
            v170 = 0;
            v167 = 0;
            v168 = 0;
            v7 = v146;
            v8 = v176;
          }

          v133 = *(v103 + 40);
          v192 = *(v103 + 24);
          v193 = v133;
          v194 = *(v103 + 56);
          if (__OFSUB__(0, v120))
          {
            goto LABEL_157;
          }

          swift_unknownObjectRetain();
          v134 = v163;
          v34 = v162;
          v135 = BigString.UTF8View.index(_:offsetBy:)();
          v157 = v137;
          v158 = v136;
          v139 = v138;
          swift_unknownObjectRelease();
          v30 = v139;
          v32 = v135;
          v31 = v134;
          v27 = 0;
          v17 = v148;
          v4 = v149;
          v18 = v147;
          v35 = v155;
          v19 = v156;
          v37 = v169;
          v36 = v170;
          v33 = v168;
        }
      }

      else
      {
        if (v161 == 2)
        {
          v38 = *(v166 + 24);
          v39 = *(v166 + 56);
          v190 = *(v166 + 40);
          v191 = v39;
          v40 = *(v166 + 40);
          v186 = *(v166 + 24);
          v187 = v40;
          v188 = *(v166 + 56);
          v189 = v38;
          BigString.startIndex.getter();
          v166 = v41;
          v206[0] = v189;
          v206[1] = v190;
          v207 = v191;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v206, &v177);
          v42 = BigString.UTF8View.index(_:offsetBy:)();
          v157 = v44;
          v158 = v43;
          v46 = v45;
          outlined destroy of BigString(&v189);
          v37 = v169;
          v8 = v176;
        }

        else
        {
          v93 = *(v166 + 40);
          v183 = *(v166 + 24);
          v184 = v93;
          v185 = *(v166 + 56);
          v8 = v176;
          if (__OFSUB__(v160, v152))
          {
            goto LABEL_155;
          }

          swift_unknownObjectRetain();
          v42 = BigString.UTF8View.index(_:offsetBy:)();
          v157 = v95;
          v158 = v94;
          v46 = v96;
          swift_unknownObjectRelease();
          v37 = v169;
        }

        v27 = 0;
        v31 = v42;
        v34 = v46;
        v17 = v148;
        v4 = v149;
        v18 = v147;
        v35 = v155;
        v19 = v156;
        v36 = v170;
        v33 = v168;
        v32 = v42;
        v30 = v46;
      }

      v24 = v159 + 1;
      if (__OFADD__(v159, 1))
      {
        goto LABEL_143;
      }
    }
  }

  v21 = v18 - v17;
  if (__OFSUB__(v18, v17))
  {
    __break(1u);
    goto LABEL_133;
  }

  v22 = *(v1 + 176);
  if (v20 != 2)
  {
    if (v22 == 2 || (v19 ^ *(v1 + 152)) >= 0x400)
    {
      goto LABEL_9;
    }

LABEL_8:
    v23 = 0;
    goto LABEL_10;
  }

  if (v22 == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  v23 = 1;
LABEL_10:
  v24 = v21 + v23;
  if (!__OFADD__(v21, v23))
  {
LABEL_11:
    if (v24)
    {
      v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation16AttributedStringV4RunsV3RunV_Tt1g5(v24, 0);
      outlined init with copy of AttributedString.Runs(v1, v4);
      v26 = specialized Sequence._copySequenceContents(initializing:)(v7, v25 + 4, v24);
      outlined destroy of TermOfAddress?(v7, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      if (v26 != v24)
      {
        __break(1u);
      }
    }

    outlined destroy of AttributedString.Runs(v1);
    return;
  }

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
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
}

BOOL specialized Sequence.allSatisfy(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v6 = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = v6;
          v9 = v15 + v5;
        }

        else
        {
          v8 = v7;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = _StringObject.sharedUTF8.getter();
          }

          v9 = (v8 + v5);
        }

        v10 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v14 = (__clz(v10 ^ 0xFF) - 24);
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v10 = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
            v11 = 3;
          }

          else
          {
            v10 = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
            v11 = 4;
          }

          goto LABEL_15;
        }

        if (v14 == 1)
        {
LABEL_14:
          v11 = 1;
        }

        else
        {
          v10 = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
          v11 = 2;
        }
      }

LABEL_15:
      v12 = v10 == 47;
      result = v10 != 47;
      if (!v12)
      {
        v5 += v11;
        if (v5 < v2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v30 = a3 + 32;
  v32 = v7;
  v8 = 4 * v7;
  v9 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v29 = 4 << v9;
  while (1)
  {
    if (v5 == v6)
    {
      v12 = 0;
      v13 = v6;
      goto LABEL_11;
    }

    if (v5 >= v6)
    {
      break;
    }

    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_35;
    }

    v12 = *(v30 + v5);
LABEL_11:
    v14 = result >> 14;
    v15 = result >> 14 == v8;
    if (result >> 14 == v8)
    {
      v16 = 0;
      if (v5 == v6)
      {
        return v15;
      }

      goto LABEL_30;
    }

    v17 = result & 0xC;
    v18 = result;
    if (v17 == v10)
    {
      v22 = result;
      v23 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      v10 = v29;
      v4 = a1;
      v18 = v23;
      result = v22;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v32)
    {
      goto LABEL_34;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = result;
      v24 = String.UTF8View._foreignSubscript(position:)();
      v10 = v29;
      v4 = a1;
      v16 = v24;
      result = v26;
      if (v17 == v29)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v33[0] = v4;
        v33[1] = v28;
        v20 = v33;
      }

      else
      {
        v20 = v27;
        if ((v4 & 0x1000000000000000) == 0)
        {
          v25 = result;
          v21 = _StringObject.sharedUTF8.getter();
          v10 = v29;
          v4 = a1;
          v20 = v21;
          result = v25;
        }
      }

      v16 = *(v20 + v19);
      if (v17 == v10)
      {
LABEL_27:
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
        v10 = v29;
        v4 = a1;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_24:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v5 == v6)
          {
            return v15;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v32 <= result >> 16)
    {
      goto LABEL_36;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v10 = v29;
    v4 = a1;
    if (v5 == v6)
    {
      return v15;
    }

LABEL_30:
    v15 = 0;
    if (v14 != v8)
    {
      v5 = v13;
      if (v12 == v16)
      {
        continue;
      }
    }

    return v15;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

__n128 specialized Sequence<>.elementsEqual<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v551 = *(v565 - 8);
  MEMORY[0x1EEE9AC00](v565);
  v558 = &v494 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v556 = &v494 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v564 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v494 - v8;
  v553 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v553);
  v11 = &v494 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v494 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v561 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v494 - v17;
  v559 = (&v494 - v17);
  outlined init with copy of AttributedString.Runs(v2, v11);
  outlined init with copy of AttributedString.Runs(v11, v18);
  v19 = &v18[*(v13 + 44)];
  v20 = *(v11 + 1);
  v21 = *(v11 + 2);
  v682 = *(v11 + 1);
  v683 = v21;
  v684 = *(v11 + 3);
  v685 = *(v11 + 8);
  v680 = *(v11 + 13);
  v681 = *(v11 + 56);
  v22 = *(v11 + 88);
  v562 = *(v11 + 72);
  v563 = v22;
  outlined destroy of AttributedString.Runs(v11);
  v23 = v683;
  *(v19 + 8) = v682;
  v526 = v20;
  *v19 = v20;
  *(v19 + 24) = v23;
  *(v19 + 40) = v684;
  *(v19 + 7) = v685;
  v24 = v563;
  *(v19 + 4) = v562;
  *(v19 + 5) = v24;
  *(v19 + 12) = v680;
  *(v19 + 52) = v681;
  outlined init with copy of AttributedString.Runs(a1, v11);
  outlined init with copy of AttributedString.Runs(v11, v15);
  v25 = &v15[*(v13 + 44)];
  v547 = *(v11 + 1);
  v26 = *(v11 + 2);
  v688 = *(v11 + 1);
  v689 = v26;
  v690 = *(v11 + 3);
  v27 = *(v11 + 9);
  v691 = *(v11 + 8);
  v29 = *(v11 + 10);
  v28 = *(v11 + 11);
  v687 = *(v11 + 56);
  v30 = *(v11 + 12);
  v686 = *(v11 + 13);
  outlined destroy of AttributedString.Runs(v11);
  v31 = v547;
  v32 = v689;
  *(v25 + 8) = v688;
  *v25 = v31;
  *(v25 + 24) = v32;
  *(v25 + 40) = v690;
  v552 = v691;
  *(v25 + 7) = v691;
  *(v25 + 8) = v27;
  v546 = v27;
  v532 = v28;
  v533 = v29;
  *(v25 + 9) = v29;
  *(v25 + 10) = v28;
  *(v25 + 52) = v687;
  v33 = v686;
  v554 = v30;
  *(v25 + 11) = v30;
  *(v25 + 12) = v33;
  v560 = v33;
  v34 = *(v19 + 1);
  v543 = *v19;
  v548 = v34;
  v35 = *(v19 + 3);
  v540 = *(v19 + 2);
  v36 = *(v19 + 4);
  v37 = *(v19 + 5);
  v534 = *(v19 + 6);
  v535 = v37;
  v38 = *(v19 + 7);
  v536 = *(v19 + 8);
  v530 = *(v19 + 9);
  v39 = *(v19 + 11);
  v529 = *(v19 + 10);
  v557 = *(v19 + 12);
  v531 = v19[104];
  v40 = v19[105];
  v41 = v559;
  v42 = *(v25 + 2);
  v550 = *(v25 + 1);
  v43 = *(v25 + 4);
  v555 = *(v25 + 3);
  ++v564;
  v498 = (v551 + 16);
  v496 = v19;
  v497 = (v551 + 8);
  v44 = *(v25 + 5);
  v537 = *(v25 + 6);
  v538 = v44;
  v499 = v562;
  v45 = v25[104];
  v679 = v45;
  v495 = v25;
  LODWORD(v527) = v25[105];
  v46 = v38;
  v47 = *(&v563 + 1);
  *&v563 = v7;
  while (1)
  {
    v542 = v35;
    *&v648 = v543;
    *(&v648 + 1) = v548;
    *&v649 = v540;
    *(&v649 + 1) = v35;
    v650.n128_u64[0] = v36;
    v650.n128_u64[1] = v535;
    *&v651 = v534;
    *(&v651 + 1) = v46;
    v48 = v536;
    *&v652 = v536;
    *(&v652 + 1) = v530;
    *&v653[0] = v529;
    *(&v653[0] + 1) = v39;
    *&v653[1] = v557;
    BYTE8(v653[1]) = v531;
    BYTE9(v653[1]) = v40;
    *&v605 = v31;
    *(&v605 + 1) = v550;
    *&v606 = v42;
    *(&v606 + 1) = v555;
    v607.n128_u64[0] = v43;
    v607.n128_u64[1] = v538;
    *&v608 = v537;
    *(&v608 + 1) = v552;
    *&v609 = v546;
    *(&v609 + 1) = v533;
    *&v610[0] = v532;
    *(&v610[0] + 1) = v554;
    *&v610[1] = v560;
    BYTE8(v610[1]) = v45;
    BYTE9(v610[1]) = v527;
    v49 = *(v41 + 120);
    v50 = *(v41 + 184);
    v51 = *(v41 + 208);
    v547 = v31;
    v545 = v43;
    v539 = v42;
    if (v526 == v49)
    {
      if (v47 == 2)
      {
        if (v51 == 2)
        {
          v525 = 0;
          v528 = 0;
          v519 = 0;
          v520 = 0;
          v517 = 0;
          v518 = 0;
          v513 = 0;
          v514 = 0;
          v515 = 0;
          v516 = 0;
          v544 = 0;
          v47 = 2;
LABEL_9:
          v52 = v543;
          v53 = v555;
          v54 = v561;
          goto LABEL_163;
        }
      }

      else if (v51 != 2 && (v50 ^ v499) < 0x400)
      {
        v525 = 0;
        v528 = 0;
        v519 = 0;
        v520 = 0;
        v517 = 0;
        v518 = 0;
        v513 = 0;
        v514 = 0;
        v515 = 0;
        v516 = 0;
        v544 = 0;
        goto LABEL_9;
      }
    }

    v522 = v49;
    v523 = v51;
    v512 = v50;
    v551 = v39;
    v541 = v36;
    v55 = *(v41 + 184);
    v664 = *(v41 + 168);
    v665 = v55;
    v666[0] = *(v41 + 200);
    *(v666 + 10) = *(v41 + 210);
    v56 = *(v41 + 120);
    v660 = *(v41 + 104);
    v661 = v56;
    v57 = *(v41 + 152);
    v662 = *(v41 + 136);
    v663 = v57;
    v58 = *(v41 + 56);
    v656 = *(v41 + 40);
    v657 = v58;
    v59 = *(v41 + 88);
    v658 = *(v41 + 72);
    v659 = v59;
    v60 = *(v41 + 24);
    v654 = *(v41 + 8);
    v655 = v60;
    v61 = v41;
    if ((specialized Range.contains(_:)(&v648) & 1) == 0)
    {
      goto LABEL_367;
    }

    v570 = v651;
    v571 = v652;
    v572[0] = v653[0];
    *(v572 + 10) = *(v653 + 10);
    v567 = v648;
    v568 = v649;
    v569 = v650;
    AttributedString.Runs._resolveRun(_:)(&v567, v573);
    v544 = *v61;
    v549 = v46;
    v526 = v541 >> 11;
    if (v46 == 2 || v541 >> 11 != v573[4])
    {
      v67 = *(v544 + 24);
      v68 = *(v544 + 56);
      v646 = *(v544 + 40);
      v647 = v68;
      v69 = *(v544 + 40);
      v642 = *(v544 + 24);
      v643 = v69;
      v644 = *(v544 + 56);
      v645 = v67;
      BigString.startIndex.getter();
      v43 = v70;
      *&v562 = v71;
      v667[0] = v645;
      v667[1] = v646;
      v668 = v647;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v667, &v567);
      v63 = BigString.UTF8View.index(_:offsetBy:)();
      v528 = v72;
      v524 = v74;
      v525 = v73;
      outlined destroy of BigString(&v645);
    }

    else
    {
      v62 = *(v544 + 40);
      v639 = *(v544 + 24);
      v640 = v62;
      v641 = *(v544 + 56);
      swift_unknownObjectRetain();
      v63 = BigString.UTF8View.index(roundingDown:)();
      v528 = v64;
      v524 = v66;
      v525 = v65;
      swift_unknownObjectRelease();
    }

    v75 = v564;
    if (v531)
    {
      break;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    *&v562 = *v75;
    (v562)(v9, v7);
    v82 = *(&v567 + 1);
    v46 = v567;
    v84 = *(&v568 + 1);
    v83 = v568;
    v81 = v569.n128_u64[0];
    if (v551 != 2 && (v48 >> 10 < v567 >> 10 || v48 >> 10 >= v569.n128_u64[0] >> 10))
    {
      goto LABEL_393;
    }

LABEL_30:
    v85 = v541;
    v87 = v534;
    v86 = v535;
    v88 = v549;
    if (v549 == 2)
    {
      v85 = v63;
      v86 = v528;
      v88 = v524;
      v87 = v525;
    }

    v515 = v88;
    v516 = v87;
    v517 = v86;
    v518 = v85;
    v519 = v84;
    v520 = v83;
    v521 = v82;
    v89 = v551;
    if (v551 == 2)
    {
      v48 = v63;
      v529 = v525;
      v530 = v528;
      v89 = v524;
    }

    v513 = v89;
    v514 = v48;
    v90 = v544;
    v91 = *(v544 + 72);
    v528 = *(v544 + 80);
    v92 = *(v544 + 88);
    v524 = *(v544 + 96);
    v525 = v92;
    v93 = v573[0];
    v94 = v573[1];
    v95 = v573[2];
    swift_unknownObjectRetain();
    v96 = specialized Rope.subscript.getter(v93, v94, v95, v91, v528, v525, v524);
    v525 = v97;
    v528 = v98;
    swift_unknownObjectRelease();
    v99 = v517;
    if (v46 >> 10 >= v518 >> 10)
    {
      v100 = v46;
    }

    else
    {
      v100 = v518;
    }

    if (v46 >> 10 >= v518 >> 10)
    {
      v99 = v521;
    }

    v102 = v515;
    v101 = v516;
    if (v46 >> 10 >= v518 >> 10)
    {
      v101 = v520;
      v102 = v519;
    }

    v103 = v96 + (v518 >> 11);
    if (__OFADD__(v96, v518 >> 11))
    {
      goto LABEL_368;
    }

    v517 = v102;
    v518 = v101;
    v519 = v99;
    v520 = v100;
    if ((v81 >> 11) < v103)
    {
      v103 = v81 >> 11;
    }

    v104 = v654;
    v105 = v658;
    v106 = *(&v659 + 1);
    v107 = *(v90 + 40);
    v636 = *(v90 + 24);
    v637 = v107;
    v638 = *(v90 + 56);
    if (__OFSUB__(v103, v514 >> 11))
    {
      goto LABEL_369;
    }

    swift_unknownObjectRetain();
    v108 = BigString.UTF8View.index(_:offsetBy:)();
    v110 = v109;
    v515 = v112;
    v516 = v111;
    swift_unknownObjectRelease();
    v113 = v543;
    if (v543 < v104)
    {
      goto LABEL_370;
    }

    v513 = v110;
    v514 = v108;
    v114 = v104 < v543 || v106 == 2;
    v115 = v114;
    if (v114)
    {
      v117 = v522;
      v116 = v523;
      v118 = v559;
      v119 = v548;
      v120 = v553;
      v121 = v542;
      v122 = v551;
      v123 = v544;
      if (v543 < v522)
      {
        v124 = 1;
        goto LABEL_68;
      }
    }

    else
    {
      v122 = v551;
      v118 = v559;
      v119 = v548;
      v120 = v553;
      v121 = v542;
      v123 = v544;
      v117 = v522;
      v116 = v523;
      if (v551 == 2)
      {
        goto LABEL_401;
      }

      v125 = v536 >> 10;
      v126 = v105 >> 10;
      if (v536 >> 10 < v105 >> 10)
      {
        goto LABEL_384;
      }

      if (v543 < v522)
      {
        v124 = 1;
        goto LABEL_70;
      }
    }

    if (v117 < v543)
    {
      goto LABEL_385;
    }

    if (v116 == 2)
    {
      goto LABEL_403;
    }

    if (v122 == 2)
    {
      if ((v115 & 1) == 0)
      {
        goto LABEL_405;
      }
    }

    else
    {
      v125 = v536 >> 10;
      if (v536 >> 10 >= v512 >> 10)
      {
        goto LABEL_394;
      }

      if ((v115 & 1) == 0)
      {
        v124 = 0;
        v126 = v105 >> 10;
LABEL_70:
        v127 = v549;
        if (v125 < v126)
        {
          goto LABEL_389;
        }

        goto LABEL_71;
      }
    }

    v124 = 0;
LABEL_68:
    v127 = v549;
LABEL_71:
    if (v117 < v543)
    {
      goto LABEL_371;
    }

    v128 = v124 ^ 1;
    if (v122 == 2)
    {
      v128 = 0;
    }

    if (v128)
    {
      if (v116 == 2)
      {
        goto LABEL_402;
      }

      if (v512 >> 10 < v536 >> 10)
      {
        goto LABEL_386;
      }
    }

    if (v121 == 1 || v119 != *(v123 + 96))
    {
      if (*(v118 + *(v120 + 28)))
      {
        goto LABEL_378;
      }

      v131 = *(v123 + 72);
      v130 = *(v123 + 80);
      v542 = v130;
      if (!v131)
      {
        v130 = 0;
      }

      if (v543 < 0 || v130 < v543)
      {
        goto LABEL_379;
      }

      v119 = *(v123 + 96);
      v530 = *(v123 + 88);
      if (v131)
      {
        v133 = (v131 + 16);
        v132 = *(v131 + 16);
        if (*(v131 + 16))
        {
          if (v543 < v542)
          {
            v548 = v119;
            v134 = *(v131 + 18);
            swift_unknownObjectRetain_n();

            v135 = v113;
            if (v134)
            {
              v136 = v134;
              v137 = v131;
              do
              {
                v138 = *v133;
                if (*v133)
                {
                  v140 = 0;
                  v141 = (v137 + 32);
                  while (1)
                  {
                    v142 = *v141;
                    v141 += 3;
                    v143 = v135 - v142;
                    if (__OFSUB__(v135, v142))
                    {
                      goto LABEL_347;
                    }

                    if (__OFADD__(v143, 1))
                    {
                      goto LABEL_348;
                    }

                    if (v143 + 1 < 1)
                    {
                      v138 = v140;
                      goto LABEL_92;
                    }

                    ++v140;
                    v135 = v143;
                    if (v138 == v140)
                    {
                      goto LABEL_101;
                    }
                  }
                }

                v143 = v135;
LABEL_101:
                if (v143)
                {
LABEL_357:
                  __break(1u);
                  goto LABEL_358;
                }

                v135 = 0;
LABEL_92:
                v136 = (v138 << ((4 * v134 + 8) & 0x3C)) | ((-15 << ((4 * v134 + 8) & 0x3C)) - 1) & v136;
                v139 = *(v137 + 24 + 24 * v138);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                v133 = (v139 + 16);
                LOBYTE(v134) = *(v139 + 18);
                v137 = v139;
              }

              while (v134);
              v150 = v139;
              v132 = *v133;
              if (*v133)
              {
                v151 = v150;
                v123 = v544;
                goto LABEL_109;
              }

              v121 = v150;
              v123 = v544;
              v154 = 0;
              if (!v135)
              {
LABEL_117:
                swift_unknownObjectRelease();
                v145 = v136 & 0xFFFFFFFFFFFFF0FFLL | (v154 << 8);
                v119 = v548;
                v127 = v549;
                goto LABEL_118;
              }
            }

            else
            {
              v136 = 0;
              v151 = v131;
LABEL_109:
              v152 = 0;
              v153 = v132;
              v154 = v135 & ~(v135 >> 63);
              v121 = v151;
              do
              {
                if ((v135 ^ v152) == 0x8000000000000000)
                {
LABEL_356:
                  __break(1u);
                  goto LABEL_357;
                }

                if (v154 == v152)
                {
                  goto LABEL_117;
                }

                ++v152;
              }

              while (v153 != v152);
              v154 = v153;
              if (v135 == v152)
              {
                goto LABEL_117;
              }
            }

            goto LABEL_397;
          }
        }
      }

      v144 = swift_unknownObjectRetain();
      v145 = specialized Rope._endPath.getter(v144);
      v121 = 0;
LABEL_118:
      v129 = v526;
      v540 = v145;
      if (v131)
      {
        v530 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v119, v145, v121, v131, v542, v530);
        swift_unknownObjectRelease();
      }

      else
      {
        v530 = 0;
      }
    }

    else
    {
      if (v127 == 2)
      {
        v146 = *(v123 + 72);
        if (v146)
        {
          v147 = *(v544 + 88);
          v148 = *(v544 + 80);

          swift_unknownObjectRetain();
          v149 = v147;
          v123 = v544;
          v530 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v119, v540, v121, v146, v148, v149);
          swift_unknownObjectRelease();
        }

        else
        {

          v530 = 0;
        }

        goto LABEL_125;
      }

      v129 = v526;
      v530 = v526;
    }

    v542 = v121;
    if (v127 == 2 || v129 != v530)
    {
      v548 = v119;
LABEL_125:
      v158 = *(v123 + 24);
      v159 = *(v123 + 56);
      v634 = *(v123 + 40);
      v635 = v159;
      v160 = *(v123 + 40);
      v630 = *(v123 + 24);
      v631 = v160;
      v632 = *(v123 + 56);
      v633 = v158;
      BigString.startIndex.getter();
      v669[0] = v633;
      v669[1] = v634;
      v670 = v635;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v669, &v567);
      v156 = BigString.UTF8View.index(_:offsetBy:)();
      outlined destroy of BigString(&v633);
      v157 = v548;
      goto LABEL_126;
    }

    v155 = *(v123 + 40);
    v627 = *(v123 + 24);
    v628 = v155;
    v629 = *(v123 + 56);
    swift_unknownObjectRetain();
    v156 = BigString.UTF8View.index(roundingDown:)();
    swift_unknownObjectRelease();
    v530 = v129;
    v157 = v119;
LABEL_126:
    v161 = *(v123 + 72);
    v162 = *(v123 + 80);
    v164 = *(v123 + 88);
    v163 = *(v123 + 96);
    *&v567 = v157;
    v165 = v540;
    *(&v567 + 1) = v540;
    v166 = v542;
    *&v568 = v542;
    if (__OFADD__(v543++, 1))
    {
      goto LABEL_372;
    }

    v524 = v156;
    v168 = v157;
    v548 = v157;
    swift_unknownObjectRetain();
    v169 = v165;
    v170 = v166;
    v529 = specialized Rope.subscript.getter(v168, v169, v166, v161, v162, v164, v163);
    v171 = v548;

    if (__OFADD__(v530, v529))
    {
      goto LABEL_373;
    }

    if (v171 != v163)
    {
      goto LABEL_374;
    }

    v530 += v529;
    v172 = specialized Rope._endPath.getter(v161);
    if (v540 >= v172)
    {
      goto LABEL_375;
    }

    if (v166 && (v173 = (4 * *(v166 + 18) + 8) & 0x3C, v174 = ((v540 >> v173) & 0xF) + 1, v174 < *(v170 + 16)))
    {
      v175 = v540;
      swift_unknownObjectRelease();
      v176 = (v174 << v173) | ((-15 << v173) - 1) & v175;
      v177 = v559;
      v178 = v553;
      v43 = v549;
      v179 = v551;
      v54 = v561;
    }

    else
    {
      v180 = specialized Rope._Node.formSuccessor(of:)(&v567, v161);
      v177 = v559;
      v54 = v561;
      if (v180)
      {
        swift_unknownObjectRelease();
        v176 = *(&v567 + 1);
      }

      else
      {
        v181 = specialized Rope._endPath.getter(v161);
        swift_unknownObjectRelease();
        v176 = v181;
        *&v567 = v171;
        *(&v567 + 1) = v181;
        *&v568 = 0;
      }

      v43 = v549;
      v179 = v551;
      v178 = v553;
    }

    v540 = v176;
    v548 = v567;
    v542 = v568;
    if (v531)
    {
      (*v498)(v556, v177 + *(v178 + 24), v565);
      if (v179 == 2)
      {
        v182 = v524;
      }

      else
      {
        v182 = v536;
      }

      RangeSet.ranges.getter();
      v183 = RangeSet.Ranges.count.getter();
      (v562)(v9, v7);
      if (v183 >= 1)
      {
        v46 = 0;
        v184 = v182 >> 10;
        while (!__OFADD__(v46, v183))
        {
          v43 = (v46 + v183) / 2;
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          (v562)(v9, v7);
          if (v184 < v567 >> 10)
          {
            v183 = (v46 + v183) / 2;
            if (v46 >= v43)
            {
              goto LABEL_346;
            }
          }

          else
          {
            v557 = (v46 + v183) / 2;
            v185 = v569.n128_u64[0];
            if (v184 < v569.n128_u64[0] >> 10)
            {
              (*v497)(v556, v565);
              v43 = v549;
              v187 = v526;
              v186 = v562;
              goto LABEL_151;
            }

            v46 = v557 + 1;
            if (v557 + 1 >= v183)
            {
              goto LABEL_346;
            }
          }
        }

LABEL_352:
        __break(1u);
        goto LABEL_353;
      }

      goto LABEL_346;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v186 = v562;
    (v562)(v9, v7);
    v185 = v569.n128_u64[0];
    v187 = v526;
LABEL_151:
    if (v530 >= (v185 >> 11))
    {
      v196 = v557 + 1;
      if (__OFADD__(v557, 1))
      {
        goto LABEL_387;
      }

      v197 = v559;
      v557 = *(v553 + 24);
      RangeSet.ranges.getter();
      v198 = RangeSet.Ranges.count.getter();
      *&v562 = v186;
      v186(v9, v7);
      if (v196 == v198)
      {
        v199 = *(v197 + 120);
        v548 = *(v197 + 128);
        v200 = *(v197 + 144);
        v540 = *(v197 + 136);
        v542 = v200;
        v36 = *(v197 + 152);
        v201 = *(v197 + 160);
        v46 = *(v197 + 176);
        v534 = *(v197 + 168);
        v535 = v201;
        v203 = *(v197 + 184);
        v202 = *(v197 + 192);
        v204 = *(v197 + 208);
        v529 = *(v197 + 200);
        v530 = v202;
        v557 = *(v197 + 216);
        v531 = *(v197 + 224);
        v40 = *(v197 + 225);
      }

      else
      {
        RangeSet.ranges.getter();
        v557 = v196;
        RangeSet.Ranges.subscript.getter();
        (v562)(v9, v7);
        v203 = v567;
        v204 = *(&v568 + 1);
        v529 = v568;
        v530 = *(&v567 + 1);
        AttributedString.Guts.findRun(at:)(v567, *(&v568 + 1), &v567);
        v531 = 0;
        v540 = *(&v567 + 1);
        v548 = v567;
        v199 = *(&v568 + 1);
        v542 = v568;
        v36 = v569.n128_i64[1];
        v534 = *(&v570 + 1);
        v535 = v570;
        v46 = v571;
        v40 = *(v197 + *(v553 + 28));
      }

      v31 = v547;
      v53 = v555;
    }

    else
    {
      if (v43 == 2)
      {
        v205 = *(v544 + 24);
        v206 = *(v544 + 56);
        v625 = *(v544 + 40);
        v626 = v206;
        v207 = *(v544 + 40);
        v623[5] = *(v544 + 24);
        v623[6] = v207;
        v623[7] = *(v544 + 56);
        v624 = v205;
        BigString.startIndex.getter();
        v671[0] = v624;
        v671[1] = v625;
        v672 = v626;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v671, &v567);
        v189 = BigString.UTF8View.index(_:offsetBy:)();
        v191 = v208;
        v193 = v209;
        v195 = v210;
        outlined destroy of BigString(&v624);
      }

      else
      {
        v188 = *(v544 + 40);
        v623[2] = *(v544 + 24);
        v623[3] = v188;
        v623[4] = *(v544 + 56);
        if (__OFSUB__(v530, v187))
        {
          goto LABEL_395;
        }

        swift_unknownObjectRetain();
        v189 = BigString.UTF8View.index(_:offsetBy:)();
        v191 = v190;
        v193 = v192;
        v195 = v194;
        swift_unknownObjectRelease();
      }

      v531 = 0;
      v40 = *(v559 + *(v553 + 28));
      v203 = v189;
      v534 = v193;
      v535 = v191;
      v529 = v193;
      v530 = v191;
      v204 = v195;
      v199 = v543;
      v46 = v195;
      v31 = v547;
      v53 = v555;
      v54 = v561;
      v36 = v189;
    }

    v536 = v203;
    v499 = v203;
    v47 = v204;
    v526 = v199;
    v39 = v204;
    v43 = v545;
    v52 = v199;
LABEL_163:
    v211 = *(v54 + 120);
    v501 = *(v54 + 184);
    v212 = *(v54 + 208);
    v543 = v52;
    if (v31 == v211)
    {
      if (v554 == 2)
      {
        if (v212 == 2)
        {
          goto LABEL_339;
        }
      }

      else if (v212 != 2 && (v501 ^ v546) < 0x400)
      {
        goto LABEL_339;
      }
    }

    v521 = v211;
    v522 = v212;
    v502 = v40;
    v551 = v39;
    v541 = v36;
    v213 = *(v54 + 184);
    v621 = *(v54 + 168);
    v622 = v213;
    v623[0] = *(v54 + 200);
    *(v623 + 10) = *(v54 + 210);
    v214 = *(v54 + 120);
    v617 = *(v54 + 104);
    v618 = v214;
    v215 = *(v54 + 152);
    v619 = *(v54 + 136);
    v620 = v215;
    v216 = *(v54 + 56);
    v613 = *(v54 + 40);
    v614 = v216;
    v217 = *(v54 + 88);
    v615 = *(v54 + 72);
    v616 = v217;
    v218 = *(v54 + 24);
    v611 = *(v54 + 8);
    v612 = v218;
    if ((specialized Range.contains(_:)(&v605) & 1) == 0)
    {
LABEL_358:
      __break(1u);
LABEL_359:
      __break(1u);
LABEL_360:
      __break(1u);
LABEL_361:
      __break(1u);
LABEL_362:
      __break(1u);
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
      __break(1u);
LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
LABEL_372:
      __break(1u);
LABEL_373:
      __break(1u);
LABEL_374:
      __break(1u);
LABEL_375:
      __break(1u);
LABEL_376:
      __break(1u);
LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      v415 = v610[0];
      v417 = v495;
      v416 = v496;
      *(v495 + 4) = v609;
      v417[5] = v415;
      *(v417 + 90) = *(v610 + 10);
      v418 = v606;
      *v417 = v605;
      v417[1] = v418;
      v419 = v608;
      v417[2] = v607;
      v417[3] = v419;
      v420 = v548;
      *v416 = v543;
      v416[1] = v420;
      v421 = v542;
      v416[2] = v540;
      v416[3] = v421;
      v422 = v535;
      v416[4] = v541;
      v416[5] = v422;
      v423 = v549;
      v416[6] = v534;
      v416[7] = v423;
      v424 = v530;
      v416[8] = v536;
      v416[9] = v424;
      v425 = v551;
      v416[10] = v529;
      v416[11] = v425;
      v416[12] = v557;
      *(v416 + 104) = v531;
      *(v416 + 105) = v502;
      __break(1u);
LABEL_399:
      v426 = v610[0];
      v428 = v495;
      v427 = v496;
      *(v495 + 4) = v609;
      v428[5] = v426;
      *(v428 + 90) = *(v610 + 10);
      v429 = v606;
      *v428 = v605;
      v428[1] = v429;
      v430 = v608;
      v428[2] = v607;
      v428[3] = v430;
      v431 = v548;
      *v427 = v543;
      v427[1] = v431;
      v432 = v542;
      v427[2] = v540;
      v427[3] = v432;
      v433 = v535;
      v427[4] = v541;
      v427[5] = v433;
      v434 = v549;
      v427[6] = v534;
      v427[7] = v434;
      v435 = v530;
      v427[8] = v536;
      v427[9] = v435;
      v436 = v551;
      v427[10] = v529;
      v427[11] = v436;
      v427[12] = v557;
      *(v427 + 104) = v531;
      *(v427 + 105) = v502;
      __break(1u);
LABEL_400:
      v437 = v610[0];
      v439 = v495;
      v438 = v496;
      *(v495 + 4) = v609;
      v439[5] = v437;
      *(v439 + 90) = *(v610 + 10);
      v440 = v606;
      *v439 = v605;
      v439[1] = v440;
      v441 = v608;
      v439[2] = v607;
      v439[3] = v441;
      v442 = v548;
      *v438 = v543;
      v438[1] = v442;
      v443 = v542;
      v438[2] = v540;
      v438[3] = v443;
      v444 = v535;
      v438[4] = v541;
      v438[5] = v444;
      v445 = v549;
      v438[6] = v534;
      v438[7] = v445;
      v446 = v530;
      v438[8] = v536;
      v438[9] = v446;
      v447 = v551;
      v438[10] = v529;
      v438[11] = v447;
      v438[12] = v557;
      *(v438 + 104) = v531;
      *(v438 + 105) = v502;
      __break(1u);
LABEL_401:
      v448 = v610[0];
      v450 = v495;
      v449 = v496;
      *(v495 + 4) = v609;
      v450[5] = v448;
      *(v450 + 90) = *(v610 + 10);
      v451 = v606;
      *v450 = v605;
      v450[1] = v451;
      v452 = v608;
      v450[2] = v607;
      v450[3] = v452;
      v453 = v649;
      *v449 = v648;
      *(v449 + 1) = v453;
      v454 = v650;
      v455 = v651;
      *(v449 + 90) = *(v653 + 10);
      v456 = v653[0];
      *(v449 + 4) = v652;
      *(v449 + 5) = v456;
      *(v449 + 2) = v454;
      *(v449 + 3) = v455;
      __break(1u);
LABEL_402:
      v457 = v608;
      v458 = v610[0];
      v460 = v495;
      v459 = v496;
      *(v495 + 4) = v609;
      v460[5] = v458;
      *(v460 + 90) = *(v610 + 10);
      v461 = v606;
      *v460 = v605;
      v460[1] = v461;
      v460[2] = v607;
      v460[3] = v457;
      v462 = v649;
      *v459 = v648;
      *(v459 + 1) = v462;
      v463 = v650;
      v464 = v651;
      *(v459 + 90) = *(v653 + 10);
      v465 = v653[0];
      *(v459 + 4) = v652;
      *(v459 + 5) = v465;
      *(v459 + 2) = v463;
      *(v459 + 3) = v464;
      __break(1u);
LABEL_403:
      v466 = v610[0];
      v468 = v495;
      v467 = v496;
      *(v495 + 4) = v609;
      v468[5] = v466;
      *(v468 + 90) = *(v610 + 10);
      v469 = v606;
      *v468 = v605;
      v468[1] = v469;
      v470 = v608;
      v468[2] = v607;
      v468[3] = v470;
      v471 = v649;
      *v467 = v648;
      *(v467 + 1) = v471;
      v472 = v650;
      v473 = v651;
      *(v467 + 90) = *(v653 + 10);
      v474 = v653[0];
      *(v467 + 4) = v652;
      *(v467 + 5) = v474;
      *(v467 + 2) = v472;
      *(v467 + 3) = v473;
      __break(1u);
LABEL_404:
      v475 = v610[0];
      v477 = v495;
      v476 = v496;
      *(v495 + 4) = v609;
      v477[5] = v475;
      *(v477 + 90) = *(v610 + 10);
      v478 = v606;
      *v477 = v605;
      v477[1] = v478;
      v479 = v608;
      v477[2] = v607;
      v477[3] = v479;
      v480 = v548;
      *v476 = v543;
      v476[1] = v480;
      v481 = v542;
      v476[2] = v540;
      v476[3] = v481;
      v482 = v535;
      v476[4] = v541;
      v476[5] = v482;
      v483 = v549;
      v476[6] = v534;
      v476[7] = v483;
      v484 = v530;
      v476[8] = v536;
      v476[9] = v484;
      v485 = v551;
      v476[10] = v529;
      v476[11] = v485;
      v476[12] = v557;
      *(v476 + 104) = v531;
      *(v476 + 105) = v502;
      __break(1u);
LABEL_405:
      v486 = v610[0];
      v488 = v495;
      v487 = v496;
      *(v495 + 4) = v609;
      v488[5] = v486;
      *(v488 + 90) = *(v610 + 10);
      v489 = v606;
      *v488 = v605;
      v488[1] = v489;
      v490 = v608;
      v488[2] = v607;
      v488[3] = v490;
      v491 = v649;
      *v487 = v648;
      *(v487 + 1) = v491;
      result = v650;
      v492 = v651;
      *(v487 + 90) = *(v653 + 10);
      v493 = v653[0];
      *(v487 + 4) = v652;
      *(v487 + 5) = v493;
      *(v487 + 2) = result;
      *(v487 + 3) = v492;
      __break(1u);
      return result;
    }

    v500 = v47;
    v570 = v608;
    v571 = v609;
    v572[0] = v610[0];
    *(v572 + 10) = *(v610 + 10);
    v567 = v605;
    v568 = v606;
    v569 = v607;
    AttributedString.Runs._resolveRun(_:)(&v567, v574);
    v219 = *v54;
    *&v562 = *v54;
    v512 = v43 >> 11;
    v549 = v46;
    if (v552 == 2 || v43 >> 11 != v574[4])
    {
      v226 = *(v219 + 24);
      v227 = *(v219 + 56);
      v603 = *(v219 + 40);
      v604 = v227;
      v228 = *(v219 + 40);
      v599 = *(v219 + 24);
      v600 = v228;
      v601 = *(v219 + 56);
      v602 = v226;
      v527 = BigString.startIndex.getter();
      v43 = v229;
      v225 = v553;
      v673[0] = v602;
      v673[1] = v603;
      v674 = v604;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v673, &v567);
      v221 = BigString.UTF8View.index(_:offsetBy:)();
      v527 = v230;
      v523 = v232;
      v524 = v231;
      outlined destroy of BigString(&v602);
    }

    else
    {
      v220 = *(v219 + 40);
      v596 = *(v219 + 24);
      v597 = v220;
      v598 = *(v219 + 56);
      swift_unknownObjectRetain();
      v221 = BigString.UTF8View.index(roundingDown:)();
      v527 = v222;
      v523 = v224;
      v524 = v223;
      swift_unknownObjectRelease();
      v225 = v553;
    }

    v46 = v564;
    v503 = v679;
    if (v679)
    {
      v511.n128_u64[1] = v221;
      if (v554 != 2)
      {
        v221 = v546;
      }

      v54 = *(v225 + 24);
      RangeSet.ranges.getter();
      v233 = RangeSet.Ranges.count.getter();
      v234 = *v46;
      (*v46)(v9, v7);
      if (v233 < 1)
      {
LABEL_335:
        __break(1u);
        goto LABEL_336;
      }

      v46 = v234;
      v235 = 0;
      v236 = v221 >> 10;
      while (!__OFADD__(v235, v233))
      {
        v43 = (v235 + v233) / 2;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v237 = v7;
        v238 = v46;
        (v46)(v9, v237);
        v239 = v567;
        if (v236 >= v567 >> 10)
        {
          v240 = v569.n128_u64[0];
          if (v236 < v569.n128_u64[0] >> 10)
          {
            v241 = *(&v567 + 1);
            v243 = *(&v568 + 1);
            v242 = v568;
            v244 = v562;
            v221 = v511.n128_u64[1];
            goto LABEL_189;
          }

          v235 = v43 + 1;
          v43 = v233;
        }

        v233 = v43;
        v46 = v238;
        v7 = v563;
        if (v235 >= v43)
        {
          goto LABEL_335;
        }
      }

      goto LABEL_345;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v245 = v7;
    v238 = *v46;
    (*v46)(v9, v245);
    v241 = *(&v567 + 1);
    v239 = v567;
    v243 = *(&v568 + 1);
    v242 = v568;
    v240 = v569.n128_u64[0];
    if (v554 == 2)
    {
      v244 = v562;
    }

    else
    {
      v244 = v562;
      if (v546 >> 10 < v567 >> 10 || v546 >> 10 >= v569.n128_u64[0] >> 10)
      {
        goto LABEL_390;
      }
    }

LABEL_189:
    v246 = v545;
    v248 = v537;
    v247 = v538;
    v249 = v552;
    if (v552 == 2)
    {
      v246 = v221;
      v247 = v527;
      v249 = v523;
      v248 = v524;
    }

    v506 = v249;
    v507 = v248;
    v508 = v247;
    v509 = v246;
    v510 = v243;
    v511.n128_u64[0] = v242;
    v511.n128_u64[1] = v241;
    v250 = v546;
    v251 = v554;
    if (v554 == 2)
    {
      v250 = v221;
      v532 = v524;
      v533 = v527;
      v251 = v523;
    }

    v504 = v251;
    v505 = v250;
    v252 = v244[9];
    v527 = v244[10];
    v253 = v244[11];
    v523 = v244[12];
    v524 = v253;
    v254 = v574[0];
    v255 = v574[1];
    v256 = v244;
    v257 = v574[2];
    swift_unknownObjectRetain();
    v258 = specialized Rope.subscript.getter(v254, v255, v257, v252, v527, v524, v523);
    v524 = v259;
    v261 = v260;
    swift_unknownObjectRelease();
    if (v239 >> 10 >= v509 >> 10)
    {
      v262 = v239;
    }

    else
    {
      v262 = v509;
    }

    if (v239 >> 10 >= v509 >> 10)
    {
      v263 = v511.n128_u64[1];
    }

    else
    {
      v263 = v508;
    }

    if (v239 >> 10 >= v509 >> 10)
    {
      v264 = v511.n128_u64[0];
    }

    else
    {
      v264 = v507;
    }

    v265 = v506;
    if (v239 >> 10 >= v509 >> 10)
    {
      v265 = v510;
    }

    v266 = v258 + (v509 >> 11);
    if (__OFADD__(v258, v509 >> 11))
    {
      goto LABEL_359;
    }

    if ((v240 >> 11) < v266)
    {
      v266 = v240 >> 11;
    }

    v267 = v611;
    v527 = v615;
    v268 = *(&v616 + 1);
    v269 = *(v256 + 5);
    v593 = *(v256 + 3);
    v594 = v269;
    v595 = *(v256 + 7);
    if (__OFSUB__(v266, v505 >> 11))
    {
      goto LABEL_360;
    }

    v510 = v263;
    v511.n128_u64[0] = v264;
    v511.n128_u64[1] = v265;
    v523 = v262;
    swift_unknownObjectRetain();
    v270 = BigString.UTF8View.index(_:offsetBy:)();
    v507 = v271;
    v508 = v270;
    v509 = v272;
    v274 = v273;
    swift_unknownObjectRelease();
    if (v547 < v267)
    {
      goto LABEL_361;
    }

    v505 = v274;
    v506 = v261;
    v275 = v267 < v547 || v268 == 2;
    v276 = v275;
    if (v275)
    {
      v278 = v521;
      v277 = v522;
      v279 = v552;
      v280 = v555;
      v281 = v539;
      v282 = v562;
      if (v547 < v521)
      {
        v283 = 1;
        goto LABEL_231;
      }
    }

    else
    {
      v280 = v555;
      v279 = v552;
      v281 = v539;
      v278 = v521;
      v277 = v522;
      if (v554 == 2)
      {
        goto LABEL_398;
      }

      v284 = v546 >> 10;
      v285 = v527 >> 10;
      v282 = v562;
      if (v546 >> 10 < v527 >> 10)
      {
        goto LABEL_380;
      }

      if (v547 < v521)
      {
        v283 = 1;
        goto LABEL_233;
      }
    }

    if (v278 < v547)
    {
      goto LABEL_381;
    }

    if (v277 == 2)
    {
      goto LABEL_399;
    }

    if (v554 == 2)
    {
      if ((v276 & 1) == 0)
      {
        goto LABEL_404;
      }
    }

    else
    {
      v284 = v546 >> 10;
      if (v546 >> 10 >= v501 >> 10)
      {
        goto LABEL_391;
      }

      if ((v276 & 1) == 0)
      {
        v283 = 0;
        v285 = v527 >> 10;
LABEL_233:
        v286 = v550;
        if (v284 < v285)
        {
          goto LABEL_388;
        }

        goto LABEL_234;
      }
    }

    v283 = 0;
LABEL_231:
    v286 = v550;
LABEL_234:
    if (v278 < v547)
    {
      goto LABEL_362;
    }

    v287 = v283 ^ 1;
    if (v554 == 2)
    {
      v287 = 0;
    }

    if (v287)
    {
      if (v277 == 2)
      {
        goto LABEL_400;
      }

      if (v501 >> 10 < v546 >> 10)
      {
        goto LABEL_382;
      }
    }

    if (v280 != 1 && v286 == *(v282 + 96))
    {
      if (v279 == 2)
      {
        v304 = *(v282 + 72);
        v555 = v280;
        if (v304)
        {
          v305 = *(v282 + 88);
          v306 = *(v562 + 80);

          swift_unknownObjectRetain();
          v307 = v306;
          v282 = v562;
          v533 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v286, v281, v280, v304, v307, v305);
          swift_unknownObjectRelease();
        }

        else
        {

          v533 = 0;
        }

        goto LABEL_288;
      }

      v533 = v512;
LABEL_285:
      v311 = v512;
      if (v512 == v533)
      {
        v312 = *(v282 + 40);
        v584 = *(v282 + 24);
        v585 = v312;
        v586 = *(v282 + 56);
        swift_unknownObjectRetain();
        v527 = BigString.UTF8View.index(roundingDown:)();
        swift_unknownObjectRelease();
        v533 = v311;
        v313 = v286;
        goto LABEL_289;
      }

      goto LABEL_287;
    }

    if (v561[*(v553 + 28)])
    {
      goto LABEL_376;
    }

    v288 = *(v282 + 72);
    v289 = *(v282 + 80);
    if (v288)
    {
      v290 = *(v282 + 80);
    }

    else
    {
      v290 = 0;
    }

    if (v547 < 0 || v290 < v547)
    {
      goto LABEL_377;
    }

    v291 = *(v282 + 88);
    v286 = *(v282 + 96);
    if (v288)
    {
      v292 = (v288 + 16);
      v293 = *(v288 + 16);
      if (*(v288 + 16))
      {
        if (v547 < v289)
        {
          v539 = v289;
          v550 = v286;
          v43 = *(v288 + 18);
          swift_unknownObjectRetain_n();

          if (v43)
          {
            v533 = v291;
            v294 = v547;
            v46 = v43;
            v54 = v288;
            do
            {
              v295 = *v292;
              if (*v292)
              {
                v297 = 0;
                v298 = (v54 + 32);
                while (1)
                {
                  v299 = *v298;
                  v298 += 3;
                  v300 = v294 - v299;
                  if (__OFSUB__(v294, v299))
                  {
                    goto LABEL_337;
                  }

                  if (__OFADD__(v300, 1))
                  {
                    goto LABEL_338;
                  }

                  if (v300 + 1 < 1)
                  {
                    v295 = v297;
                    goto LABEL_256;
                  }

                  ++v297;
                  v294 = v300;
                  if (v295 == v297)
                  {
                    goto LABEL_265;
                  }
                }
              }

              v300 = v294;
LABEL_265:
              if (v300)
              {
LABEL_355:
                __break(1u);
                goto LABEL_356;
              }

              v294 = 0;
LABEL_256:
              v46 = (v295 << ((4 * v43 + 8) & 0x3C)) | ((-15 << ((4 * v43 + 8) & 0x3C)) - 1) & v46;
              v296 = *(v54 + 24 + 24 * v295);
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              v292 = (v296 + 16);
              v43 = *(v296 + 18);
              v54 = v296;
            }

            while (*(v296 + 18));
            v555 = v296;
            v293 = *v292;
            if (*v292)
            {
              v289 = v539;
              v291 = v533;
              goto LABEL_274;
            }

            v282 = v562;
            v289 = v539;
            v291 = v533;
            v310 = 0;
            if (!v294)
            {
LABEL_282:
              v302 = v291;
              swift_unknownObjectRelease();
              v303 = v46 & 0xFFFFFFFFFFFFF0FFLL | (v310 << 8);
              v286 = v550;
              goto LABEL_268;
            }
          }

          else
          {
            v46 = 0;
            v294 = v547;
            v555 = v288;
            v289 = v539;
LABEL_274:
            v308 = 0;
            v309 = v293;
            v310 = v294 & ~(v294 >> 63);
            v282 = v562;
            do
            {
              if ((v294 ^ v308) == 0x8000000000000000)
              {
                __break(1u);
                goto LABEL_355;
              }

              if (v310 == v308)
              {
                goto LABEL_282;
              }

              ++v308;
            }

            while (v309 != v308);
            v310 = v309;
            if (v294 == v308)
            {
              goto LABEL_282;
            }
          }

          goto LABEL_396;
        }
      }
    }

    v552 = v279;
    v282 = v562;

    v301 = swift_unknownObjectRetain();
    v302 = v291;
    v303 = specialized Rope._endPath.getter(v301);
    v555 = 0;
    if (v288)
    {
LABEL_268:
      v281 = v303;
      v533 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v286, v303, v555, v288, v289, v302);
      swift_unknownObjectRelease();
    }

    else
    {
      v281 = v303;
      v533 = 0;
    }

    if (v552 != 2)
    {
      goto LABEL_285;
    }

LABEL_287:
    v550 = v286;
LABEL_288:
    v314 = *(v282 + 24);
    v315 = *(v282 + 56);
    v591 = *(v282 + 40);
    v592 = v315;
    v316 = *(v282 + 40);
    v587 = *(v282 + 24);
    v588 = v316;
    v589 = *(v282 + 56);
    v590 = v314;
    BigString.startIndex.getter();
    v675[0] = v590;
    v675[1] = v591;
    v676 = v592;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v675, &v567);
    v282 = v562;
    v527 = BigString.UTF8View.index(_:offsetBy:)();
    outlined destroy of BigString(&v590);
    v313 = v550;
LABEL_289:
    v317 = v281;
    v319 = *(v282 + 72);
    v318 = *(v282 + 80);
    v321 = *(v282 + 88);
    v320 = *(v282 + 96);
    *&v567 = v313;
    *(&v567 + 1) = v317;
    v322 = v555;
    *&v568 = v555;
    if (__OFADD__(v547, 1))
    {
      goto LABEL_363;
    }

    ++v547;
    v323 = v313;
    swift_unknownObjectRetain();
    v539 = v317;
    v555 = v322;
    v532 = v318;
    v324 = specialized Rope.subscript.getter(v323, v317, v322, v319, v318, v321, v320);
    v325 = v323;
    v326 = v324;

    v327 = v533 + v326;
    if (__OFADD__(v533, v326))
    {
      goto LABEL_364;
    }

    if (v325 != v320)
    {
      goto LABEL_365;
    }

    v328 = specialized Rope._endPath.getter(v319);
    v329 = v539;
    if (v539 >= v328)
    {
      goto LABEL_366;
    }

    v550 = v325;
    if (v555 && (v330 = (4 * *(v555 + 18) + 8) & 0x3C, v331 = ((v539 >> v330) & 0xF) + 1, v331 < *(v555 + 16)))
    {
      swift_unknownObjectRelease();
      v332 = (v331 << v330) | ((-15 << v330) - 1) & v329;
    }

    else if (specialized Rope._Node.formSuccessor(of:)(&v567, v319))
    {
      swift_unknownObjectRelease();
      v332 = *(&v567 + 1);
    }

    else
    {
      v333 = v550;
      v332 = specialized Rope._endPath.getter(v319);
      swift_unknownObjectRelease();
      *&v567 = v333;
      *(&v567 + 1) = v332;
      *&v568 = 0;
    }

    v46 = v238;
    v555 = v568;
    v334 = *(v553 + 24);
    v550 = v567;
    if (v503)
    {
      v533 = v327;
      v54 = v332;
      (*v498)(v558, &v561[v334], v565);
      if (v554 == 2)
      {
        v335 = v527;
      }

      else
      {
        v335 = v546;
      }

      RangeSet.ranges.getter();
      v43 = v563;
      v336 = RangeSet.Ranges.count.getter();
      v238(v9, v43);
      if (v336 >= 1)
      {
        v46 = 0;
        v337 = v335 >> 10;
        while (!__OFADD__(v46, v336))
        {
          v43 = (v46 + v336) / 2;
          RangeSet.ranges.getter();
          v338 = v563;
          RangeSet.Ranges.subscript.getter();
          v238(v9, v338);
          if (v337 < v567 >> 10)
          {
            v336 = (v46 + v336) / 2;
            if (v46 >= v43)
            {
              goto LABEL_336;
            }
          }

          else
          {
            v560 = (v46 + v336) / 2;
            v339 = v569.n128_u64[0];
            if (v337 < v569.n128_u64[0] >> 10)
            {
              (*v497)(v558, v565);
              v332 = v54;
              v54 = v561;
              v46 = v238;
              v7 = v563;
              v327 = v533;
              if (v533 < (v339 >> 11))
              {
                goto LABEL_312;
              }

              goto LABEL_316;
            }

            v46 = v560 + 1;
            if (v560 + 1 >= v336)
            {
              goto LABEL_336;
            }
          }
        }

        goto LABEL_349;
      }

LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      v77 = v679;
      if (v525)
      {
        v405 = v495;
        v404 = v496;
        v406 = v557;
        v408 = v534;
        v407 = v535;
        v409 = v542;
        v42 = v539;
LABEL_341:
        *v405 = v547;
        *(v405 + 1) = v550;
        *(v405 + 2) = v42;
        *(v405 + 3) = v53;
        *(v405 + 4) = v43;
        v410 = v537;
        *(v405 + 5) = v538;
        *(v405 + 6) = v410;
        v411 = v546;
        *(v405 + 7) = v552;
        *(v405 + 8) = v411;
        v412 = v532;
        *(v405 + 9) = v533;
        *(v405 + 10) = v412;
        v413 = v560;
        *(v405 + 11) = v554;
        *(v405 + 12) = v413;
        v405[104] = v77;
        v405[105] = v527;
        *v404 = v543;
        v404[1] = v548;
        v404[2] = v540;
        v404[3] = v409;
        v404[4] = v36;
        v404[5] = v407;
        v404[6] = v408;
        v404[7] = v46;
        v414 = v530;
        v404[8] = v536;
        v404[9] = v414;
        v404[10] = v529;
        v404[11] = v39;
        v404[12] = v406;
        *(v404 + 104) = v531;
        *(v404 + 105) = v40;
        outlined destroy of TermOfAddress?(v54, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
        outlined destroy of TermOfAddress?(v559, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
        *&v567 = v525;
        *(&v567 + 1) = v528;
        *&v568 = v520;
        *(&v568 + 1) = v519;
        v569.n128_u64[0] = v518;
        v569.n128_u64[1] = v517;
        *&v570 = v514;
        *(&v570 + 1) = v513;
        *&v571 = v516;
        *(&v571 + 1) = v515;
        v403 = v544;
        goto LABEL_342;
      }

LABEL_353:
      v390 = v46;
      *&v562 = 0;
      v505 = 0;
      v506 = 0;
      v508 = 0;
      v509 = 0;
      v507 = 0;
      v511 = 0uLL;
      v510 = 0;
      v523 = 0;
      v391 = 0;
      v393 = v495;
      v392 = v496;
      v394 = v557;
      v396 = v534;
      v395 = v535;
      v397 = v542;
      v42 = v539;
LABEL_332:
      *v393 = v547;
      *(v393 + 1) = v550;
      *(v393 + 2) = v42;
      *(v393 + 3) = v53;
      *(v393 + 4) = v43;
      v398 = v537;
      *(v393 + 5) = v538;
      *(v393 + 6) = v398;
      v399 = v546;
      *(v393 + 7) = v552;
      *(v393 + 8) = v399;
      v400 = v532;
      *(v393 + 9) = v533;
      *(v393 + 10) = v400;
      v401 = v560;
      *(v393 + 11) = v554;
      *(v393 + 12) = v401;
      v393[104] = v77;
      v393[105] = v527;
      *v392 = v543;
      v392[1] = v548;
      v392[2] = v540;
      v392[3] = v397;
      v392[4] = v36;
      v392[5] = v395;
      v392[6] = v396;
      v392[7] = v390;
      v402 = v530;
      v392[8] = v536;
      v392[9] = v402;
      v392[10] = v529;
      v392[11] = v39;
      v392[12] = v394;
      *(v392 + 104) = v531;
      *(v392 + 105) = v40;
      outlined destroy of TermOfAddress?(v54, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      outlined destroy of TermOfAddress?(v559, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      if (!v391)
      {
        return result;
      }

      *&v567 = v391;
      *(&v567 + 1) = v506;
      *&v568 = v523;
      *(&v568 + 1) = v510;
      v569 = v511;
      *&v570 = v508;
      *(&v570 + 1) = v507;
      *&v571 = v509;
      *(&v571 + 1) = v505;
      v403 = v562;
LABEL_342:
      *&v572[0] = v403;
      v389 = &_s10Foundation16AttributedStringV4RunsV3RunVSgMd;
      v388 = &v567;
      goto LABEL_343;
    }

    v54 = v561;
    RangeSet.ranges.getter();
    v7 = v563;
    RangeSet.Ranges.subscript.getter();
    (v46)(v9, v7);
    if (v327 >= (v569.n128_u64[0] >> 11))
    {
LABEL_316:
      if (__OFADD__(v560, 1))
      {
        goto LABEL_383;
      }

      v348 = v46;
      v349 = v553;
      ++v560;
      RangeSet.ranges.getter();
      v350 = RangeSet.Ranges.count.getter();
      v348(v9, v7);
      if (v560 == v350)
      {
        v351 = *(v54 + 120);
        v550 = *(v54 + 128);
        v42 = *(v54 + 136);
        v53 = *(v54 + 144);
        v352 = *(v54 + 152);
        v353 = *(v54 + 160);
        v354 = *(v54 + 176);
        v537 = *(v54 + 168);
        v538 = v353;
        v552 = v354;
        v355 = *(v54 + 184);
        v356 = *(v54 + 192);
        v545 = v352;
        v546 = v355;
        v357 = *(v54 + 208);
        v532 = *(v54 + 200);
        v533 = v356;
        v554 = v357;
        v560 = *(v54 + 216);
        v77 = *(v54 + 224);
        v358 = *(v54 + 225);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v348(v9, v7);
        v546 = v567;
        v532 = v568;
        v533 = *(&v567 + 1);
        v554 = *(&v568 + 1);
        AttributedString.Guts.findRun(at:)(v567, *(&v568 + 1), &v567);
        v77 = 0;
        v42 = *(&v567 + 1);
        v550 = v567;
        v351 = *(&v568 + 1);
        v53 = v568;
        v545 = v569.n128_i64[1];
        v537 = *(&v570 + 1);
        v538 = v570;
        v552 = v571;
        v358 = *(v54 + *(v349 + 28));
      }

      LODWORD(v527) = v358;
      v36 = v541;
      v46 = v549;
      v39 = v551;
      v366 = v524;
      v365 = v525;
      if (!v525)
      {
LABEL_331:
        v390 = v46;
        v391 = v366;
        v547 = v351;
        v393 = v495;
        v392 = v496;
        v394 = v557;
        v396 = v534;
        v395 = v535;
        LOBYTE(v40) = v502;
        v43 = v545;
        v397 = v542;
        goto LABEL_332;
      }
    }

    else
    {
LABEL_312:
      v539 = v332;
      if (v552 == 2)
      {
        v359 = *(v562 + 24);
        v360 = *(v562 + 56);
        v582 = *(v562 + 40);
        v583 = v360;
        v361 = *(v562 + 40);
        v578 = *(v562 + 24);
        v579 = v361;
        v580 = *(v562 + 56);
        v581 = v359;
        BigString.startIndex.getter();
        v677[0] = v581;
        v677[1] = v582;
        v678 = v583;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v677, &v567);
        v341 = BigString.UTF8View.index(_:offsetBy:)();
        v343 = v362;
        v345 = v363;
        v347 = v364;
        outlined destroy of BigString(&v581);
      }

      else
      {
        v340 = *(v562 + 40);
        v575 = *(v562 + 24);
        v576 = v340;
        v577 = *(v562 + 56);
        if (__OFSUB__(v327, v512))
        {
          goto LABEL_392;
        }

        swift_unknownObjectRetain();
        v341 = BigString.UTF8View.index(_:offsetBy:)();
        v343 = v342;
        v345 = v344;
        v347 = v346;
        swift_unknownObjectRelease();
      }

      v77 = 0;
      v54 = v561;
      LODWORD(v527) = v561[*(v553 + 28)];
      v545 = v341;
      v546 = v341;
      v537 = v345;
      v538 = v343;
      v532 = v345;
      v533 = v343;
      v552 = v347;
      v554 = v347;
      v36 = v541;
      v46 = v549;
      v351 = v547;
      v39 = v551;
      v42 = v539;
      v366 = v524;
      v365 = v525;
      v53 = v555;
      if (!v525)
      {
        goto LABEL_331;
      }
    }

    if (!v366)
    {
      v547 = v351;
      v405 = v495;
      v404 = v496;
      v406 = v557;
      v408 = v534;
      v407 = v535;
      LOBYTE(v40) = v502;
      v43 = v545;
      v409 = v542;
      goto LABEL_341;
    }

    v367 = v77;
    v555 = v53;
    v566[0] = v365;
    v566[1] = v528;
    v566[2] = v520;
    v566[3] = v519;
    v566[4] = v518;
    v566[5] = v517;
    v566[6] = v514;
    v566[7] = v513;
    v566[8] = v516;
    v566[9] = v515;
    v566[10] = v544;
    *&v567 = v366;
    v368 = v506;
    *(&v567 + 1) = v506;
    *&v568 = v523;
    *(&v568 + 1) = v510;
    v569 = v511;
    *&v570 = v508;
    *(&v570 + 1) = v507;
    *&v571 = v509;
    *(&v571 + 1) = v505;
    *&v572[0] = v562;
    if ((v514 >> 11) - (v520 >> 11) != (v508 >> 11) - (v523 >> 11) || (v369 = v36, (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v365, v366) & 1) == 0))
    {
      outlined destroy of TermOfAddress?(&v567, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd);
      v369 = v541;
      outlined destroy of TermOfAddress?(v566, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd);
LABEL_330:
      v371 = v495;
      v372 = v550;
      *v495 = v351;
      *(v371 + 1) = v372;
      v373 = v555;
      *(v371 + 2) = v42;
      *(v371 + 3) = v373;
      v374 = v537;
      v375 = v538;
      *(v371 + 4) = v545;
      *(v371 + 5) = v375;
      *(v371 + 6) = v374;
      v376 = v546;
      *(v371 + 7) = v552;
      *(v371 + 8) = v376;
      v377 = v532;
      *(v371 + 9) = v533;
      *(v371 + 10) = v377;
      v378 = v560;
      *(v371 + 11) = v554;
      *(v371 + 12) = v378;
      v371[104] = v367;
      v371[105] = v527;
      v379 = v496;
      v380 = v548;
      *v496 = v543;
      v379[1] = v380;
      v381 = v542;
      v379[2] = v540;
      v379[3] = v381;
      v383 = v534;
      v382 = v535;
      v379[4] = v369;
      v379[5] = v382;
      v384 = v549;
      v379[6] = v383;
      v379[7] = v384;
      v385 = v529;
      v386 = v530;
      v379[8] = v536;
      v379[9] = v386;
      v379[10] = v385;
      v387 = v557;
      v379[11] = v551;
      v379[12] = v387;
      *(v379 + 104) = v531;
      *(v379 + 105) = v502;
      outlined destroy of TermOfAddress?(v561, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      v388 = v559;
      v389 = &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd;
LABEL_343:
      outlined destroy of TermOfAddress?(v388, v389);
      return result;
    }

    v370 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v528, v368);
    outlined destroy of TermOfAddress?(&v567, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd);
    outlined destroy of TermOfAddress?(v566, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd);
    if ((v370 & 1) == 0)
    {
      goto LABEL_330;
    }

    v45 = v367;
    v679 = v367;
    v31 = v351;
    v40 = v502;
    v47 = v500;
    v41 = v559;
    v43 = v545;
    v35 = v542;
    v36 = v369;
    v39 = v551;
    v46 = v549;
  }

  v521 = v63;
  if (v551 == 2)
  {
    v46 = v63;
  }

  else
  {
    v46 = v48;
  }

  v54 = *(v553 + 24);
  RangeSet.ranges.getter();
  v76 = RangeSet.Ranges.count.getter();
  *&v562 = *v75;
  (v562)(v9, v7);
  if (v76 >= 1)
  {
    v79 = 0;
    v80 = v46 >> 10;
    while (!__OFADD__(v79, v76))
    {
      v43 = (v79 + v76) / 2;
      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      (v562)(v9, v7);
      v46 = v567;
      if (v80 >= v567 >> 10)
      {
        v81 = v569.n128_u64[0];
        if (v80 < v569.n128_u64[0] >> 10)
        {
          v82 = *(&v567 + 1);
          v84 = *(&v568 + 1);
          v83 = v568;
          v48 = v536;
          v63 = v521;
          goto LABEL_30;
        }

        v79 = v43 + 1;
        v43 = v76;
      }

      v76 = v43;
      if (v79 >= v43)
      {
        goto LABEL_344;
      }
    }

    __break(1u);
    goto LABEL_352;
  }

LABEL_344:
  __break(1u);
LABEL_345:
  __break(1u);
LABEL_346:
  __break(1u);
LABEL_347:
  __break(1u);
LABEL_348:
  __break(1u);
LABEL_349:
  __break(1u);
  return result;
}

BOOL specialized Sequence<>.elementsEqual<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a4 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = a2 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  do
  {
    if (v4 < v6)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v44 = a1;
        v48 = a2;
        v25 = a3;
        v26 = a4;
        v27 = v8;
        v28 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v8 = v27;
        a3 = v25;
        a4 = v26;
        v14 = v28;
        v15 = v29;
        a1 = v44;
        a2 = v48;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v52 = a3;
          v53 = v8;
          v13 = &v52 + v4;
        }

        else
        {
          v12 = v9;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v46 = a1;
            v50 = a2;
            v32 = a4;
            v33 = a3;
            v34 = v8;
            v35 = _StringObject.sharedUTF8.getter();
            v8 = v34;
            a3 = v33;
            a4 = v32;
            v12 = v35;
            a1 = v46;
            a2 = v50;
          }

          v13 = (v12 + v4);
        }

        v14 = *v13;
        if ((*v13 & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        v23 = (__clz(v14 ^ 0xFF) - 24);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
            v15 = 3;
          }

          else
          {
            v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
            v15 = 4;
          }

          goto LABEL_17;
        }

        if (v23 == 1)
        {
LABEL_16:
          v15 = 1;
        }

        else
        {
          v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_17:
      v16 = v15 + v4;
      goto LABEL_18;
    }

    v14 = 0;
    v16 = v4;
LABEL_18:
    v17 = v5 >= v7;
    if (v5 < v7)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v45 = a1;
        v49 = a2;
        v40 = a4;
        v42 = a3;
        v38 = v8;
        v30 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v8 = v38;
        a4 = v40;
        v20 = v30;
        a3 = v42;
        a1 = v45;
        v21 = v31;
        a2 = v49;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v52 = a1;
          v53 = v10;
          v19 = &v52 + v5;
        }

        else
        {
          v18 = v11;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v47 = a1;
            v51 = a2;
            v41 = a4;
            v43 = a3;
            v39 = v8;
            v36 = _StringObject.sharedUTF8.getter();
            v8 = v39;
            a4 = v41;
            a3 = v43;
            v18 = v36;
            a1 = v47;
            a2 = v51;
          }

          v19 = (v18 + v5);
        }

        v20 = *v19;
        if ((*v19 & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        v24 = (__clz(v20 ^ 0xFF) - 24);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            v20 = ((v20 & 0xF) << 12) | ((v19[1] & 0x3F) << 6) | v19[2] & 0x3F;
            v21 = 3;
          }

          else
          {
            v20 = ((v20 & 0xF) << 18) | ((v19[1] & 0x3F) << 12) | ((v19[2] & 0x3F) << 6) | v19[3] & 0x3F;
            v21 = 4;
          }
        }

        else
        {
          if (v24 == 1)
          {
LABEL_26:
            v21 = 1;
            goto LABEL_27;
          }

          v20 = v19[1] & 0x3F | ((v20 & 0x1F) << 6);
          v21 = 2;
        }
      }

LABEL_27:
      v22 = v21 + v5;
      if (v4 >= v6)
      {
        return v17;
      }

      goto LABEL_28;
    }

    v20 = 0;
    v22 = v5;
    if (v4 >= v6)
    {
      return v17;
    }

LABEL_28:
    v17 = 0;
    if (v5 >= v7)
    {
      break;
    }

    v4 = v16;
    v5 = v22;
  }

  while (v14 == v20);
  return v17;
}

uint64_t specialized Sequence<>.elementsEqual<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v45 = *(v2 + 16);
  v46 = *(v2 + 24);
  v47 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *v2;
  v7 = *(v2 + 16);
  v8 = *(v2 + 48);
  v9 = *(v2 + 64);
  v78 = *(v2 + 32);
  v79 = v8;
  v80 = v9;
  v76 = *v2;
  v77 = v7;
  v42 = v6;
  v40 = *(v6 + 16);
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *(a1 + 24);
  v50 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *a1;
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v73 = *(a1 + 32);
  v74 = v15;
  v18 = *a1;
  v17 = *(a1 + 16);
  v75 = v16;
  v71 = v18;
  v72 = v17;
  v19 = v5 >> 10;
  v20 = v13 >> 10;
  v21 = *(v14 + 16);
  outlined init with copy of AttributedString.UnicodeScalarView(v2, &v61);
  result = outlined init with copy of AttributedString.UnicodeScalarView(a1, &v61);
  v23 = v21;
  v43 = v4 >> 10;
  v44 = v20;
  v41 = v11 >> 10;
  while (1)
  {
    v24 = v4 >> 10;
    if (v4 >> 10 == v19)
    {
      v25 = v11 >> 10;
      if (v11 >> 10 == v20)
      {
        v38 = 1;
        goto LABEL_19;
      }

      v49 = v4;
      v48 = 0;
    }

    else
    {
      if (v4 >> 10 < v43 || v4 >> 10 >= v19)
      {
        goto LABEL_25;
      }

      v39 = v23;
      v26 = *(v42 + 40);
      v90 = *(v42 + 24);
      v91 = v26;
      v92 = *(v42 + 56);
      swift_unknownObjectRetain();
      v48 = BigString.UnicodeScalarView.subscript.getter();
      result = swift_unknownObjectRelease();
      if (v24 < v43 || v19 < v24)
      {
        goto LABEL_26;
      }

      v27 = *(v42 + 40);
      v87 = *(v42 + 24);
      v88 = v27;
      v89 = *(v42 + 56);
      swift_unknownObjectRetain();
      v28 = BigString.UnicodeScalarView.index(after:)();
      v45 = v29;
      v46 = v30;
      v47 = v31;
      result = swift_unknownObjectRelease();
      v49 = v28;
      if (v19 < v28 >> 10)
      {
        goto LABEL_27;
      }

      v40 = *(v42 + 16);
      v25 = v11 >> 10;
      v20 = v44;
      if (v11 >> 10 == v44)
      {
        v53 = v73;
        v54 = v74;
        v55 = v75;
        v51 = v71;
        v52 = v72;
        v56 = v11;
        v57 = v10;
        v58 = v12;
        v59 = v50;
        v60 = v39;
        outlined destroy of TermOfAddress?(&v51, &_ss16IndexingIteratorVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
        v63 = v78;
        v64 = v79;
        v65 = v80;
        v61 = v76;
        v62 = v77;
        v66 = v28;
LABEL_21:
        v67 = v45;
        v68 = v46;
        v69 = v47;
        v70 = v40;
        outlined destroy of TermOfAddress?(&v61, &_ss16IndexingIteratorVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
        return 0;
      }
    }

    if (v25 < v41 || v25 >= v20)
    {
      break;
    }

    v32 = *(v14 + 40);
    v84 = *(v14 + 24);
    v85 = v32;
    v86 = *(v14 + 56);
    swift_unknownObjectRetain();
    v33 = BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    v34 = *(v14 + 40);
    v81 = *(v14 + 24);
    v82 = v34;
    v83 = *(v14 + 56);
    swift_unknownObjectRetain();
    v20 = v44;
    v11 = BigString.UnicodeScalarView.index(after:)();
    v10 = v35;
    v12 = v36;
    v50 = v37;
    result = swift_unknownObjectRelease();
    if (v44 < v11 >> 10)
    {
      goto LABEL_24;
    }

    v23 = *(v14 + 16);
    if (v24 == v19)
    {
      v38 = 0;
      v4 = v49;
LABEL_19:
      v53 = v73;
      v54 = v74;
      v55 = v75;
      v51 = v71;
      v52 = v72;
      v56 = v11;
      v57 = v10;
      v58 = v12;
      v59 = v50;
      v60 = v23;
      outlined destroy of TermOfAddress?(&v51, &_ss16IndexingIteratorVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
      v63 = v78;
      v64 = v79;
      v65 = v80;
      v61 = v76;
      v62 = v77;
      v66 = v4;
      v67 = v45;
      v68 = v46;
      v69 = v47;
      v70 = v40;
      outlined destroy of TermOfAddress?(&v61, &_ss16IndexingIteratorVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
      return v38;
    }

    v4 = v49;
    if (v48 != v33)
    {
      v53 = v73;
      v54 = v74;
      v55 = v75;
      v51 = v71;
      v52 = v72;
      v56 = v11;
      v57 = v10;
      v58 = v12;
      v59 = v50;
      v60 = v23;
      outlined destroy of TermOfAddress?(&v51, &_ss16IndexingIteratorVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
      v63 = v78;
      v64 = v79;
      v65 = v80;
      v61 = v76;
      v62 = v77;
      v66 = v49;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v42 = *(v2 + 80);
  v55 = *(v2 + 88);
  v4 = *v2;
  v53 = *(v2 + 120);
  v54 = *(v2 + 8);
  v51 = *(v2 + 16);
  v52 = *(v2 + 24);
  v5 = *(v2 + 40);
  v45 = *(v2 + 32);
  v6 = *(v2 + 112);
  v105 = *(v2 + 96);
  v106 = v6;
  v7 = *(v2 + 144);
  v107 = *(v2 + 128);
  v108 = v7;
  v8 = *(v2 + 48);
  v101 = *(v2 + 32);
  v102 = v8;
  v9 = *(v2 + 80);
  v103 = *(v2 + 64);
  v104 = v9;
  v10 = *(v2 + 16);
  v99 = *v2;
  v100 = v10;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 80);
  v47 = *(a1 + 88);
  v46 = *(a1 + 120);
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(a1 + 16);
  v57 = *(a1 + 24);
  v17 = *(a1 + 112);
  v95 = *(a1 + 96);
  v96 = v17;
  v18 = *(a1 + 144);
  v97 = *(a1 + 128);
  v98 = v18;
  v19 = *(a1 + 48);
  v91 = *(a1 + 32);
  v92 = v19;
  v20 = *(a1 + 80);
  v93 = *(a1 + 64);
  v94 = v20;
  v21 = *(a1 + 16);
  v22 = v5 >> 10;
  v50 = v11 >> 10;
  v89 = *a1;
  v90 = v21;
  outlined init with copy of FloatingPointRoundingRule?(v2, &v74, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
  result = outlined init with copy of FloatingPointRoundingRule?(a1, &v74, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
  v58 = v4;
  v44 = v55 >> 10;
  v43 = v53 >> 10;
  v48 = v47 >> 10;
  v49 = v15 >> 10;
  v24 = v46 >> 10;
  v41 = v22;
  while (1)
  {
    v25 = v58 >> 10;
    if (v58 >> 10 == v22)
    {
      v26 = v15 >> 10;
      v27 = v50;
      if (v15 >> 10 == v50)
      {
        v40 = 1;
        goto LABEL_22;
      }

      v56 = 0;
    }

    else
    {
      if (v25 < v4 >> 10 || v25 >= v22)
      {
        goto LABEL_29;
      }

      if (v25 < v44)
      {
        goto LABEL_30;
      }

      if (v25 >= v43)
      {
        goto LABEL_31;
      }

      v28 = *(v42 + 40);
      v118 = *(v42 + 24);
      v119 = v28;
      v120 = *(v42 + 56);
      swift_unknownObjectRetain();
      v56 = BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      v29 = *(v42 + 40);
      v115 = *(v42 + 24);
      v116 = v29;
      v117 = *(v42 + 56);
      swift_unknownObjectRetain();
      v30 = BigString.UnicodeScalarView.index(after:)();
      v54 = v31;
      v51 = v32;
      v52 = v33;
      result = swift_unknownObjectRelease();
      v58 = v30;
      if (v43 < v30 >> 10)
      {
        goto LABEL_32;
      }

      v45 = *(v42 + 16);
      v26 = v15 >> 10;
      v27 = v50;
      if (v15 >> 10 == v50)
      {
LABEL_23:
        v65 = v95;
        v66 = v96;
        v67 = v97;
        v68 = v98;
        v61 = v91;
        v62 = v92;
        v63 = v93;
        v64 = v94;
        v59 = v89;
        v60 = v90;
        v69 = v15;
        v70 = v14;
        v71 = v16;
        v72 = v57;
        v73 = v12;
        outlined destroy of TermOfAddress?(&v59, &_ss16IndexingIteratorVys5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGGMd);
        v80 = v105;
        v81 = v106;
        v82 = v107;
        v83 = v108;
        v76 = v101;
        v77 = v102;
        v78 = v103;
        v79 = v104;
        v74 = v99;
        v75 = v100;
        v84 = v58;
        v85 = v54;
        v86 = v51;
        v87 = v52;
        v88 = v45;
        outlined destroy of TermOfAddress?(&v74, &_ss16IndexingIteratorVys5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGGMd);
        return 0;
      }

      v22 = v41;
      v24 = v46 >> 10;
    }

    if (v26 < v49 || v26 >= v27)
    {
      break;
    }

    if (v26 < v48)
    {
      goto LABEL_26;
    }

    if (v26 >= v24)
    {
      goto LABEL_27;
    }

    v34 = *(v13 + 40);
    v112 = *(v13 + 24);
    v113 = v34;
    v114 = *(v13 + 56);
    swift_unknownObjectRetain();
    v35 = BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    v36 = *(v13 + 40);
    v109 = *(v13 + 24);
    v110 = v36;
    v111 = *(v13 + 56);
    swift_unknownObjectRetain();
    v15 = BigString.UnicodeScalarView.index(after:)();
    v14 = v37;
    v16 = v38;
    v57 = v39;
    result = swift_unknownObjectRelease();
    v24 = v46 >> 10;
    if (v46 >> 10 < v15 >> 10)
    {
      goto LABEL_28;
    }

    v12 = *(v13 + 16);
    if (v25 == v22)
    {
      v40 = 0;
LABEL_22:
      v65 = v95;
      v66 = v96;
      v67 = v97;
      v68 = v98;
      v61 = v91;
      v62 = v92;
      v63 = v93;
      v64 = v94;
      v59 = v89;
      v60 = v90;
      v69 = v15;
      v70 = v14;
      v71 = v16;
      v72 = v57;
      v73 = v12;
      outlined destroy of TermOfAddress?(&v59, &_ss16IndexingIteratorVys5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGGMd);
      v80 = v105;
      v81 = v106;
      v82 = v107;
      v83 = v108;
      v76 = v101;
      v77 = v102;
      v78 = v103;
      v79 = v104;
      v74 = v99;
      v75 = v100;
      v84 = v58;
      v85 = v54;
      v86 = v51;
      v87 = v52;
      v88 = v45;
      outlined destroy of TermOfAddress?(&v74, &_ss16IndexingIteratorVys5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGGMd);
      return v40;
    }

    if (v56 != v35)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized Sequence<>.elementsEqual<A>(_:)(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = &a3[a4];
  if (a3)
  {
    v5 = &a3[a4];
  }

  else
  {
    v5 = 0;
  }

  v6 = &a1[a2];
  if (a1)
  {
    v7 = &a1[a2];
  }

  else
  {
    v7 = 0;
  }

  do
  {
    if (a3)
    {
      if (a3 == v5)
      {
        v8 = 0;
        v9 = 1;
        a3 = v4;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = 0;
        v12 = *a3++;
        v8 = v12;
        if (!a1)
        {
LABEL_16:
          v10 = 0;
          v11 = 1;
          if (v9)
          {
            return v11;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = 1;
      if (!a1)
      {
        goto LABEL_16;
      }
    }

    if (a1 == v7)
    {
      v10 = 0;
      v11 = 1;
      a1 = v6;
      if (v9)
      {
        return v11;
      }
    }

    else
    {
      v11 = 0;
      v13 = *a1++;
      v10 = v13;
      if (v9)
      {
        return v11;
      }
    }

LABEL_19:
    if (v8 != v10)
    {
      LODWORD(v11) = 1;
    }
  }

  while (v11 != 1);
  return 0;
}

uint64_t specialized String.withFileSystemRepresentation<A>(_:)@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((a4 & 0x1000000000000000) != 0)
  {
    v21 = a4;
    v22 = a3;
    isStackAllocationSafe = String.UTF8View._foreignCount()();
    a3 = v22;
    a4 = v21;
  }

  else if ((a4 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a4) & 0xF;
  }

  else
  {
    isStackAllocationSafe = a3 & 0xFFFFFFFFFFFFLL;
  }

  v9 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
  {
    if (v9 < -1)
    {
      __break(1u);
    }

    a2 = v9 + 1;
    if (v9 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v23 = a2;
  v24 = a4;
  v25 = a3;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v26 = swift_slowAlloc();
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v26, v23, v25, v24, a1);
    return MEMORY[0x1865D2690](v26, -1, -1);
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v11 = v27 - v10;
  if (String._fileSystemRepresentation(into:)(v27 - v10, v12, v13, v14))
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  result = a1(v15);
  if (v5)
  {
    return swift_willThrow();
  }

  v17 = v27[7];
  *(a5 + 96) = v27[6];
  *(a5 + 112) = v17;
  *(a5 + 128) = v27[8];
  *(a5 + 144) = v28;
  v18 = v27[3];
  *(a5 + 32) = v27[2];
  *(a5 + 48) = v18;
  v19 = v27[5];
  *(a5 + 64) = v27[4];
  *(a5 + 80) = v19;
  v20 = v27[1];
  *a5 = v27[0];
  *(a5 + 16) = v20;
  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v4 = a2;
    v7 = result;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v5 = v6 << 16;
    result = (v6 << 16) | 7;
    if ((a3 & 0x1000000000000000) == 0)
    {
      if (v6 >= v7)
      {
        result = (v7 << 16) | 4;
      }

      goto LABEL_8;
    }
  }

  if ((v4 & 0x800000000000000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = v5 | 0xB;
  }

  v10 = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)();
  result = v9;
  if ((v11 & 1) == 0)
  {
    result = v10;
  }

LABEL_8:
  if (4 * v6 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v8 = 7;
    if (((v3 >> 60) & ((v4 & 0x800000000000000) == 0)) != 0)
    {
      v8 = 11;
    }

    return _StringGuts.validateSubscalarRange(_:)(result, v5 | v8, v4, v3);
  }

  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(_BYTE *))
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    v8 = 0;
    return a5(v8);
  }

  if (a1)
  {
    v8 = a1;
    return a5(v8);
  }

  __break(1u);
  return result;
}

uint64_t _SwiftURL.dataRepresentation.getter()
{
  v1 = v0;
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 16);
  if (*(v2 + 220))
  {

    specialized URLComponents._URLComponents.init(parseInfo:)(v3, v30);
    v4 = URLComponents._URLComponents._uncheckedString(original:)(1);
    countAndFlagsBits = v4._countAndFlagsBits;
    object = v4._object;
    outlined destroy of URLComponents._URLComponents(v30);
  }

  else
  {
    countAndFlagsBits = *(v2 + 16);
    object = *(v2 + 24);
  }

  v7 = *(v1 + 40);
  v29[0] = v7;
  v8 = String.data(using:allowLossyConversion:)(v29, 0, countAndFlagsBits, object);
  v10 = v9;

  if (v10 >> 60 != 15)
  {
    return v8;
  }

  isTaggedPointer = 0xE000000000000000;
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  MEMORY[0x1865CB0E0](0xD00000000000003DLL, 0x8000000181486F10);
  v13 = [objc_opt_self() localizedNameOfStringEncoding_];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  isTaggedPointer = _objc_isTaggedPointer(v13);
  v15 = v14;
  v16 = v15;
  if (!isTaggedPointer)
  {
    goto LABEL_19;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v15);
  if (TaggedPointerTag != 22)
  {
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v16 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v21 = v27;
        isTaggedPointer = v28;
        goto LABEL_30;
      }

LABEL_16:
      v21 = v19;
      isTaggedPointer = v20;

LABEL_30:
      goto LABEL_31;
    }

    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v21 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      isTaggedPointer = v22;

      goto LABEL_31;
    }

LABEL_19:
    v29[0] = 0;
    if (__CFStringIsCF())
    {
      if (v29[0])
      {
LABEL_29:
        v21 = String.init(_cocoaString:)();
        isTaggedPointer = v26;
        goto LABEL_30;
      }
    }

    else
    {
      v23 = v16;
      v24 = String.init(_nativeStorage:)();
      if (v25)
      {
        v21 = v24;
        isTaggedPointer = v25;

        goto LABEL_31;
      }

      v29[0] = [v23 length];
      if (v29[0])
      {
        goto LABEL_29;
      }
    }

    v21 = 0;
    isTaggedPointer = 0xE000000000000000;
    goto LABEL_31;
  }

  v18 = [v16 UTF8String];
  if (!v18)
  {
    __break(1u);
  }

  v19 = String.init(utf8String:)(v18);
  if (v20)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_13:
  v21 = 0;
LABEL_31:
  MEMORY[0x1865CB0E0](v21, isTaggedPointer);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _SwiftURL.user.getter()
{
  v1 = v0[2];
  if (v1[72] == 1)
  {
    if (v1[96] != 1 || v1[120] != 1 || v1[144] != 1 || !v0[3])
    {
      return 0;
    }

    v2 = v0[4];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 168);
    swift_unknownObjectRetain();
    v5 = v4(0, ObjectType, v2);
    swift_unknownObjectRelease();
    return v5;
  }

  v6 = String.subscript.getter();
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (v1[220])
  {
    if ((v6 ^ v7) >> 14)
    {
      v30 = v6;
      v31 = v7;
      v32 = v8;
      v33 = v9;
      MEMORY[0x1EEE9AC00](v6);
      v27 = &v30;
      v28 = MEMORY[0x1E69E7CD0];
      v29 = 4;

      v5 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v26, v10, v11, v12, v13);
      v25 = v24;

      if (v25 == 1)
      {

        v17 = MEMORY[0x1E69E7CD0];
        v18 = v10;
        v19 = v11;
        v20 = v12;
        v21 = v13;
        v22 = 4;
        goto LABEL_16;
      }

LABEL_17:

      return v5;
    }

LABEL_13:

    return 0;
  }

  if (!((v6 ^ v7) >> 14))
  {
    goto LABEL_13;
  }

  v14 = v0[5];
  v30 = v6;
  v31 = v7;
  v32 = v8;
  v33 = v9;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v30;
  v28 = MEMORY[0x1E69E7CD0];
  v29 = v14;

  v5 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v26, v10, v11, v12, v13);
  v16 = v15;

  if (v16 != 1)
  {
    goto LABEL_17;
  }

  v17 = MEMORY[0x1E69E7CD0];
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
LABEL_16:
  v5 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v18, v19, v20, v21, v17, v22);
  swift_bridgeObjectRelease_n();
  return v5;
}

uint64_t _SwiftURL.password.getter()
{
  v1 = v0[2];
  if (v1[72] != 1)
  {
    if (v1[96])
    {
      return 0;
    }

LABEL_9:
    v7 = String.subscript.getter();
    v5 = MEMORY[0x1865CAE80](v7);

    return v5;
  }

  if (!v1[96])
  {
    goto LABEL_9;
  }

  if (v1[120] != 1 || v1[144] != 1 || !v0[3])
  {
    return 0;
  }

  v2 = v0[4];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 184);
  swift_unknownObjectRetain();
  v5 = v4(1, ObjectType, v2);
  swift_unknownObjectRelease();
  return v5;
}

Swift::String_optional __swiftcall _SwiftURL.fragment(percentEncoded:)(Swift::Bool percentEncoded)
{
  v3 = 0;
  v4 = 0;
  v5 = *(v1 + 16);
  if (*(v5 + 216))
  {
    goto LABEL_16;
  }

  v6 = String.subscript.getter();
  v10 = v9;
  if (percentEncoded)
  {
    v11 = MEMORY[0x1865CAE80](v6);
    v13 = v12;

LABEL_4:
    v4 = v13;
    v3 = v11;
    goto LABEL_16;
  }

  if ((*(v5 + 220) & 0x20) != 0)
  {
    if ((v6 ^ v7) >> 14)
    {
      v45 = v6;
      v46 = v7;
      v47 = v8;
      v48 = v9;
      MEMORY[0x1EEE9AC00](v6);
      v42 = &v45;
      v43 = MEMORY[0x1E69E7CD0];
      v44 = 4;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = v29;
      v35 = v31;
      v36 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v41, v29, v33, v31, v10);
      v38 = v37;

      if (v38 != 1)
      {

        v4 = v38;
        v3 = v36;
        goto LABEL_16;
      }

      v11 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v34, v33, v35, v10, MEMORY[0x1E69E7CD0], 4);
      v13 = v39;
      swift_bridgeObjectRelease_n();
      goto LABEL_4;
    }

LABEL_10:

    v3 = 0;
    v4 = 0xE000000000000000;
    goto LABEL_16;
  }

  if (!((v6 ^ v7) >> 14))
  {
    goto LABEL_10;
  }

  v14 = *(v1 + 40);
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v48 = v9;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v45;
  v43 = MEMORY[0x1E69E7CD0];
  v44 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v16;
  v22 = v16;
  v23 = v18;
  v24 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v41, v22, v20, v18, v10);
  v26 = v25;

  if (v26 == 1)
  {

    v24 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v21, v20, v23, v10, MEMORY[0x1E69E7CD0], v14);
    v26 = v27;
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  v3 = v24;
  v4 = v26;
LABEL_16:
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t _SwiftURL.fileSystemPath(style:resolveAgainstBase:compatibility:)(char a1, char a2, char a3)
{
  if (a2)
  {
    v7 = _SwiftURL.absolutePath(percentEncoded:)(1);
    countAndFlagsBits = v7._countAndFlagsBits;
    object = v7._object;
  }

  else
  {
    if (*(*(v3 + 16) + 168))
    {
      v9 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v9 = String.subscript.getter();
    }

    v10 = MEMORY[0x1865CAE80](v9);
    object = v11;

    countAndFlagsBits = v10;
  }

  if (a3)
  {
    v12 = closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:);
  }

  else
  {
    v12 = String._droppingTrailingSlashes.getter;
  }

  if (a1)
  {
    v13 = specialized static _SwiftURL.windowsPath(for:slashDropper:)(countAndFlagsBits, object, v12);

    return v13;
  }

  v14 = v12(countAndFlagsBits, object);
  v16 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v17 = static _SetStorage.allocate(capacity:)();
  v18 = v17 + 56;
  v19 = *(v17 + 40);
  v20 = byte_1EEED3D48;
  result = MEMORY[0x1865CD020](v19, byte_1EEED3D48, 1);
  v22 = -1 << *(v17 + 32);
  v23 = result & ~v22;
  v24 = v23 >> 6;
  v25 = *(v17 + 56 + 8 * (v23 >> 6));
  v26 = 1 << v23;
  v27 = *(v17 + 48);
  if (((1 << v23) & v25) != 0)
  {
    v28 = ~v22;
    while (*(v27 + v23) != v20)
    {
      v23 = (v23 + 1) & v28;
      v24 = v23 >> 6;
      v25 = *(v18 + 8 * (v23 >> 6));
      v26 = 1 << v23;
      if (((1 << v23) & v25) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    *(v18 + 8 * v24) = v26 | v25;
    *(v27 + v23) = v20;
    v29 = *(v17 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_34;
    }

    *(v17 + 16) = v31;
  }

  v32 = byte_1EEED3D49;
  result = MEMORY[0x1865CD020](v19, byte_1EEED3D49, 1);
  v33 = -1 << *(v17 + 32);
  v34 = result & ~v33;
  v35 = v34 >> 6;
  v36 = *(v18 + 8 * (v34 >> 6));
  v37 = 1 << v34;
  v38 = *(v17 + 48);
  if (((1 << v34) & v36) != 0)
  {
    v39 = ~v33;
    while (*(v38 + v34) != v32)
    {
      v34 = (v34 + 1) & v39;
      v35 = v34 >> 6;
      v36 = *(v18 + 8 * (v34 >> 6));
      v37 = 1 << v34;
      if (((1 << v34) & v36) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }

LABEL_22:
  *(v18 + 8 * v35) = v37 | v36;
  *(v38 + v34) = v32;
  v40 = *(v17 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (!v30)
  {
    *(v17 + 16) = v41;
LABEL_24:
    v42 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v42 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      v47[0] = v14;
      v47[1] = v16;
      MEMORY[0x1EEE9AC00](result);
      v46[2] = v47;
      v46[3] = v17;
      v46[4] = 4;

      v43 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v46, v14, v16);
      if (v44 == 1)
      {
        v43 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v14, v16, v17, 4);
      }

      v13 = v43;
      v45 = v44;

      if (v45)
      {
        return v13;
      }
    }

    else
    {
    }

    return 0;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t _SwiftURL.deletingPathExtension()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (*(*(v1 + 16) + 168))
  {
    v4 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v4 = String.subscript.getter();
  }

  v6 = v4;
  v7 = v5;

  if ((v6 ^ v7) < 0x4000)
  {
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  v9 = &v123;

  specialized URLComponents._URLComponents.init(parseInfo:)(v10, &v130);
  v11 = v130;
  v128 = v131;
  v129 = v132;
  v125 = v136;
  v126 = v137;
  v127[0] = *v138;
  *(v127 + 9) = *&v138[9];
  v123 = v134;
  v124 = v135;
  v122 = v142;
  v120 = v140;
  v121 = v141;
  v143 = v139;
  v12 = *(&v139 + 1);
  if (*(&v139 + 1))
  {
    v13 = v143;
  }

  else
  {
    v13 = 0;
    v12 = 0xE000000000000000;
    if ((v133 & 1) != 0 && v130)
    {
      if (*(v130 + 168))
      {
        v14 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v14 = String.subscript.getter();
      }

      v13 = MEMORY[0x1865CAE80](v14);
      v12 = v15;
    }
  }

  outlined init with copy of FloatingPointRoundingRule?(&v143, &v144, &_sSSSgMd);
  v101 = v12;
  Path = String._lastPathComponent.getter(v13, v12);
  v18 = v17;
  v19 = specialized BidirectionalCollection.last.getter(Path, v17);
  v100 = a1;
  if ((v19 & 0x1FF) == 0x2E)
  {
    goto LABEL_22;
  }

  v99 = v13;
  LOBYTE(v144) = 46;
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v144;

  v20 = specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v88, Path, v18);
  if ((v21 & 1) != 0 || v20 < 0x4000)
  {

    v13 = v99;
LABEL_22:

    v24 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_23;
  }

  v97 = v11;
  v94 = v20;
  v9 = _StringGuts.validateSubscalarRange(_:)(0xFuLL, v20, Path, v18);
  v13 = v22;

  if (Substring.UTF8View.distance(from:to:)() == 1 || Substring.UTF8View.distance(from:to:)() == 2)
  {
    v92 = 0;
    v93 = v2;
    v11 = v13 >> 14;
    v23 = v9 >> 14;
    if (v9 >> 14 == v13 >> 14)
    {
LABEL_20:
      swift_bridgeObjectRelease_n();
      v24 = 0;
      v25 = 0xE000000000000000;
      v2 = v93;
      v11 = v97;
      v9 = &v123;
      v13 = v99;
      goto LABEL_23;
    }

    v42 = v18 & 0x1000000000000000;
    v91 = Path & 0x800000000000000;
    v43 = (Path >> 59) & 1;
    if ((v18 & 0x1000000000000000) == 0)
    {
      LOBYTE(v43) = 1;
    }

    v44 = 4 << v43;
    v95 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v96 = v18 & 0xFFFFFFFFFFFFFFLL;
    v45 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v45 = Path & 0xFFFFFFFFFFFFLL;
    }

    v98 = v45;
    while (1)
    {
      v34 = v9 & 0xC;
      v46 = v9;
      if (v34 == v44)
      {
        v46 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, Path, v18);
      }

      if (v46 >> 14 < v23 || v46 >> 14 >= v11)
      {
        __break(1u);
        goto LABEL_90;
      }

      if (v42)
      {
        v13 = String.UTF8View._foreignSubscript(position:)();
        if (v34 != v44)
        {
          goto LABEL_57;
        }
      }

      else if ((v18 & 0x2000000000000000) != 0)
      {
        *&v144 = Path;
        *(&v144 + 1) = v96;
        v13 = *(&v144 + (v46 >> 16));
        if (v34 != v44)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v47 = v95;
        if ((Path & 0x1000000000000000) == 0)
        {
          v48 = v46;
          v47 = _StringObject.sharedUTF8.getter();
          v46 = v48;
        }

        v13 = *(v47 + (v46 >> 16));
        if (v34 != v44)
        {
LABEL_57:
          if (!v42)
          {
            goto LABEL_58;
          }

          goto LABEL_61;
        }
      }

      v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, Path, v18);
      if (!v42)
      {
LABEL_58:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_63;
      }

LABEL_61:
      if (v98 <= v9 >> 16)
      {
        __break(1u);
        goto LABEL_93;
      }

      v9 = String.UTF8View._foreignIndex(after:)();
LABEL_63:
      if (v13 != 46)
      {
        v2 = v93;
        v49 = v91;
        goto LABEL_68;
      }

      if (v11 == v9 >> 14)
      {
        goto LABEL_20;
      }
    }
  }

  v42 = v18 & 0x1000000000000000;
  v49 = Path & 0x800000000000000;
LABEL_68:
  v50 = String._lastPathComponent.getter(v99, v101);
  v52 = v51;
  if (v42)
  {
    v53 = v49 == 0;
  }

  else
  {
    v53 = 0;
  }

  v54 = !v53;
  if ((v94 & 0xC) == 4 << v54)
  {
    v94 = _StringGuts._slowEnsureMatchingEncoding(_:)(v94, Path, v18);
  }

  if (v42)
  {
    v87 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v87 = Path & 0xFFFFFFFFFFFFLL;
    }

    if (v87 <= v94 >> 16)
    {
      __break(1u);
      return result;
    }

    v55 = String.UTF8View._foreignIndex(after:)();
  }

  else
  {
    v55 = (v94 & 0xFFFFFFFFFFFF0000) + 65540;
  }

  v56 = specialized Collection.suffix(from:)(v55, v50, v52);
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v63 = MEMORY[0x1865CAE80](v56, v58, v60, v62);
  v25 = v64;

  v65 = specialized BidirectionalCollection.last.getter(v63, v25);
  if ((v65 & 0x1FF) == 0x2E)
  {
    goto LABEL_79;
  }

  LOBYTE(v144) = 46;
  MEMORY[0x1EEE9AC00](v65);
  v89 = &v144;
  specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v88, v63, v25);
  if (v66)
  {
    v67 = specialized Sequence.allSatisfy(_:)(v63, v25);
    v13 = v99;
    if ((v67 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_87:
    swift_bridgeObjectRelease_n();
    v24 = v63 & 0xFFFFFFFFFFFFLL;
    goto LABEL_81;
  }

  *&v144 = String.subscript.getter();
  *(&v144 + 1) = v68;
  *&v145 = v69;
  *(&v145 + 1) = v70;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v98 = String.init<A>(_:)();
  v72 = v71;
  v73 = String.index(after:)();
  *&v144 = specialized Collection.suffix(from:)(v73, v63, v25);
  *(&v144 + 1) = v74;
  *&v145 = v75;
  *(&v145 + 1) = v76;
  v77 = String.init<A>(_:)();
  v79 = v78;
  if (specialized Sequence.allSatisfy(_:)(v98, v72))
  {
    v80 = specialized Sequence.allSatisfy(_:)(v77, v79);

    v13 = v99;
    if ((v80 & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_87;
  }

LABEL_79:
  v13 = v99;
LABEL_80:

  swift_bridgeObjectRelease_n();
  v24 = 0;
  v25 = 0xE000000000000000;
LABEL_81:
  v11 = v97;
  v9 = &v123;
LABEL_23:

  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v24;
  }

  if (v27)
  {
    LOBYTE(v144) = 46;
    MEMORY[0x1EEE9AC00](v26);
    v89 = &v144;
    Path = v101;
    specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v88, v13, v101);
    if ((v28 & 1) == 0)
    {
      v29 = String.subscript.getter();
      v30 = MEMORY[0x1865CAE80](v29);
      v31 = v13;
      v33 = v32;

      *&v144 = v30;
      *(&v144 + 1) = v33;
      if ((specialized BidirectionalCollection.last.getter(v31, Path) & 0x1FF) == 0x2F)
      {
        MEMORY[0x1865CB0E0](47, 0xE100000000000000);
      }

      Path = *(&v144 + 1);
      v13 = v144;
    }
  }

  else
  {
    Path = v101;
  }

  v34 = v2;
  if ((Path & 0x1000000000000000) == 0)
  {
    if ((Path & 0x2000000000000000) != 0)
    {
      goto LABEL_37;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      v35 = ((Path & 0xFFFFFFFFFFFFFFFLL) + 32);
      v36 = v13;
      v37 = v13 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
LABEL_93:
      v36 = v13;
      v35 = _StringObject.sharedUTF8.getter();
    }

    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v35, v37, 0x10u, 1))
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

LABEL_90:
  *&v144 = v13;
  *(&v144 + 1) = Path;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v81 = Path;
  v82 = String._bridgeToObjectiveCImpl()();

  v36 = v13;
  v13 = [v82 _fastCharacterContents];
  v83 = v82;
  if (v13)
  {
    *&v144 = v36;
    *(&v144 + 1) = v81;
    StringProtocol._ephemeralString.getter();
    v84 = String._bridgeToObjectiveCImpl()();

    v85 = [v84 length];
    swift_unknownObjectRelease();
    v86 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v13, v85, 0x10u, 1);
  }

  else
  {
    v86 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v36, v81, 0x10u, 1);
  }

  Path = v81;
  if ((v86 & 1) == 0)
  {
    do
    {
LABEL_36:
      v90 = 0;
      v89 = 1001;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_37:
      *&v144 = v13;
      *(&v144 + 1) = Path & 0xFFFFFFFFFFFFFFLL;
      v36 = v13;
    }

    while (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(&v144, HIBYTE(Path) & 0xF, 0x10u, 1));
  }

LABEL_38:
  outlined destroy of TermOfAddress?(&v143, &_sSSSgMd);
  *&v103[0] = v11;
  BYTE8(v103[0]) = 0;
  *(v103 + 9) = v128;
  *(v103 + 13) = v129;
  *(&v103[2] + 15) = v125;
  *(&v103[3] + 15) = v126;
  *(&v103[4] + 15) = v127[0];
  *(&v103[5] + 8) = *(v9 + 73);
  *(v103 + 15) = v123;
  *(&v103[1] + 15) = v124;
  *(&v103[6] + 1) = v36;
  *&v104[0] = Path;
  *(v104 + 8) = v120;
  *(&v104[1] + 8) = v121;
  v146 = v103[2];
  v147 = v103[3];
  v148 = v103[4];
  v149 = v103[5];
  v144 = v103[0];
  v145 = v103[1];
  v150 = v103[6];
  v151 = v104[0];
  WORD4(v104[2]) = v122;
  v152[0] = v104[1];
  *(v152 + 10) = *(&v104[1] + 10);
  outlined init with copy of URLComponents(v103, &v105);
  v38 = URLComponents._URLComponents._uncheckedString(original:)(0);
  outlined destroy of URLComponents(v103);
  v102 = *(v34 + 24);
  swift_unknownObjectRetain();
  v39 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v38._countAndFlagsBits, v38._object, &v102);
  v112 = v125;
  v113 = v126;
  *v114 = v127[0];
  *&v114[9] = *(v9 + 73);
  v110 = v123;
  v111 = v124;
  v117 = v120;
  v105 = v11;
  v106 = 0;
  v107 = v128;
  v108 = v129;
  v109 = 0;
  v115 = v36;
  v116 = Path;
  v118 = v121;
  v119 = v122;
  result = outlined destroy of URLComponents(&v105);
  v40 = &protocol witness table for _SwiftURL;
  if (!v39)
  {
    v40 = 0;
  }

  v41 = v100;
  *v100 = v39;
  v41[1] = v40;
  return result;
}

void _SwiftURL.standardizedFileURL.getter(uint64_t *a1@<X8>)
{
  v92 = *v1;
  if ((*(v1 + 48) & 1) == 0)
  {
    if (*(*(v1 + 16) + 48))
    {
      if (!*(v1 + 24) || (v3 = *(v1 + 32), ObjectType = swift_getObjectType(), (*(v3 + 136))(ObjectType, v3), !v5))
      {
LABEL_51:
        *a1 = 0;
        a1[1] = 0;
        return;
      }
    }

    else
    {
      v6 = String.subscript.getter();
      MEMORY[0x1865CAE80](v6);
    }

    v7 = String.lowercased()();

    if (one-time initialization token for fileSchemeUTF8 != -1)
    {
      swift_once();
    }

    v8 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.fileSchemeUTF8, v7._countAndFlagsBits, v7._object);

    if ((v8 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v9 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v10 = String._droppingTrailingSlashes.getter(v9._countAndFlagsBits, v9._object);
  v12 = v11;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v14 = static _SetStorage.allocate(capacity:)();
  v15 = v14 + 56;
  v16 = *(v14 + 40);
  v17 = byte_1EEED3BB8;
  v18 = MEMORY[0x1865CD020](v16, byte_1EEED3BB8, 1);
  v19 = -1 << *(v14 + 32);
  v20 = v18 & ~v19;
  v21 = v20 >> 6;
  v22 = *(v14 + 56 + 8 * (v20 >> 6));
  v23 = 1 << v20;
  v24 = *(v14 + 48);
  if (((1 << v20) & v22) != 0)
  {
    v25 = ~v19;
    while (*(v24 + v20) != v17)
    {
      v20 = (v20 + 1) & v25;
      v21 = v20 >> 6;
      v22 = *(v15 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    *(v15 + 8 * v21) = v23 | v22;
    *(v24 + v20) = v17;
    v26 = *(v14 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_62;
    }

    *(v14 + 16) = v28;
  }

  v29 = byte_1EEED3BB9;
  v18 = MEMORY[0x1865CD020](v16, byte_1EEED3BB9, 1);
  v30 = -1 << *(v14 + 32);
  v31 = v18 & ~v30;
  v32 = v31 >> 6;
  v33 = *(v15 + 8 * (v31 >> 6));
  v34 = 1 << v31;
  v35 = *(v14 + 48);
  if (((1 << v31) & v33) == 0)
  {
LABEL_20:
    *(v15 + 8 * v32) = v34 | v33;
    *(v35 + v31) = v29;
    v37 = *(v14 + 16);
    v27 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (!v27)
    {
      *(v14 + 16) = v38;
      goto LABEL_22;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v36 = ~v30;
  while (*(v35 + v31) != v29)
  {
    v31 = (v31 + 1) & v36;
    v32 = v31 >> 6;
    v33 = *(v15 + 8 * (v31 >> 6));
    v34 = 1 << v31;
    if (((1 << v31) & v33) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  v39 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v39 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v94 = v10;
    v95 = v12;
    MEMORY[0x1EEE9AC00](v18);
    v89 = &v94;
    v90 = v14;
    v91 = 4;

    v16 = 0;
    v40 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v88, v10, v12);
    if (v41 == 1)
    {
      v40 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v10, v12, v14, 4);
    }

    v42 = v40;
    v43 = v41;

    if (!v43)
    {
      v44 = 0;
      v43 = 0xE000000000000000;
      goto LABEL_31;
    }
  }

  else
  {

    v42 = 0;
    v16 = 0;
    v43 = 0xE000000000000000;
  }

  v44 = v42 & 0xFFFFFFFFFFFFLL;
LABEL_31:

  v45 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v45 = v44;
  }

  if (!v45)
  {
    goto LABEL_51;
  }

  v46 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v47 = String._droppingTrailingSlashes.getter(v46._countAndFlagsBits, v46._object);
  v49 = v48;

  v14 = static _SetStorage.allocate(capacity:)();
  v50 = v14 + 56;
  v13 = *(v14 + 40);
  v51 = byte_1EEED3BE0;
  v18 = MEMORY[0x1865CD020](v13, byte_1EEED3BE0, 1);
  v52 = -1 << *(v14 + 32);
  v53 = v18 & ~v52;
  v54 = v53 >> 6;
  v55 = *(v14 + 56 + 8 * (v53 >> 6));
  v56 = 1 << v53;
  v57 = *(v14 + 48);
  if (((1 << v53) & v55) != 0)
  {
    v58 = ~v52;
    while (*(v57 + v53) != v51)
    {
      v53 = (v53 + 1) & v58;
      v54 = v53 >> 6;
      v55 = *(v50 + 8 * (v53 >> 6));
      v56 = 1 << v53;
      if (((1 << v53) & v55) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    *(v50 + 8 * v54) = v56 | v55;
    *(v57 + v53) = v51;
    v59 = *(v14 + 16);
    v27 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v27)
    {
      goto LABEL_63;
    }

    *(v14 + 16) = v60;
  }

  v61 = byte_1EEED3BE1;
  v18 = MEMORY[0x1865CD020](v13, byte_1EEED3BE1, 1);
  v62 = -1 << *(v14 + 32);
  v63 = v18 & ~v62;
  v64 = v63 >> 6;
  v65 = *(v50 + 8 * (v63 >> 6));
  v66 = 1 << v63;
  v67 = *(v14 + 48);
  if (((1 << v63) & v65) != 0)
  {
    v68 = ~v62;
    while (*(v67 + v63) != v61)
    {
      v63 = (v63 + 1) & v68;
      v64 = v63 >> 6;
      v65 = *(v50 + 8 * (v63 >> 6));
      v66 = 1 << v63;
      if (((1 << v63) & v65) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    v71 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v71 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v71)
    {
      v94 = v47;
      v95 = v49;
      MEMORY[0x1EEE9AC00](v18);
      v89 = &v94;
      v90 = v14;
      v91 = 4;

      v72 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v88, v47, v49);
      if (v73 == 1)
      {
        v74 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v47, v49, v14, 4);
        v76 = v75;
      }

      else
      {
        v76 = v73;
        v74 = v72;
      }

      v77 = v74;
      if (v76)
      {
LABEL_56:
        v16 = String.standardizingPath.getter(v77, v76);
        v13 = v78;

        LOBYTE(v18) = _SwiftURL.hasDirectoryPath.getter();
        LOBYTE(v14) = 1;
        if (one-time initialization token for compatibility2 == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_64;
      }
    }

    else
    {
    }

    v77 = 0;
    v76 = 0xE000000000000000;
    goto LABEL_56;
  }

LABEL_44:
  *(v50 + 8 * v64) = v66 | v65;
  *(v67 + v63) = v61;
  v69 = *(v14 + 16);
  v27 = __OFADD__(v69, 1);
  v70 = v69 + 1;
  if (!v27)
  {
    *(v14 + 16) = v70;
    goto LABEL_46;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  v87 = v18;
  swift_once();
  LOBYTE(v18) = v87;
LABEL_57:
  v79 = v14 & ~v18;
  if ((static URL.compatibility2 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v81 = type metadata accessor for _BridgedURL();
    v80 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v80 = &protocol witness table for _SwiftURL;
    v81 = v92;
  }

  v93[0] = v79;
  v94 = 0;
  v95 = 0;
  v82 = v16;
  v83 = v81;
  (v80[9])(v82, v13, v93, &v94);
  v84 = (v80[56])(v83, v80);
  v86 = v85;
  swift_unknownObjectRelease();
  *a1 = v84;
  a1[1] = v86;
}

Swift::Bool __swiftcall _SwiftURL.isFileReferenceURL()()
{
  if (*(v0 + 48))
  {
    return *(*(v0 + 16) + 219);
  }

  if (*(*(v0 + 16) + 48))
  {
    if (!*(v0 + 24))
    {
      return 0;
    }

    v1 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v1 + 136))(ObjectType, v1);
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v4 = String.subscript.getter();
    MEMORY[0x1865CAE80](v4);
  }

  v5 = String.lowercased()();

  if (one-time initialization token for fileSchemeUTF8 != -1)
  {
    swift_once();
  }

  v6 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.fileSchemeUTF8, v5._countAndFlagsBits, v5._object);

  if (v6)
  {
    return *(*(v0 + 16) + 219);
  }

  return 0;
}

uint64_t _SwiftURL.compatibilityAbsoluteURL.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = _SwiftURL.compatibilityAbsoluteString.getter();
  v5 = v4;
  v6 = *(v1 + 40);
  v7 = swift_allocObject();
  type metadata accessor for _SwiftURL.ResourceInfo();
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(v8 + 16) = v9;
  *(v7 + 56) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v7 + 64) = v10;
  v11 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v3, v5, 1);

  if (v11)
  {
    *(v7 + 16) = v11;
    if ((v11[48] & 1) == 0)
    {

      String.subscript.getter();
    }

    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = v6;
    *(v7 + 48) = 0;
    *a1 = v7;
    a1[1] = &protocol witness table for _SwiftURL;
  }

  else
  {

    result = swift_deallocPartialClassInstance();
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

void _SwiftURL.netLocation.getter()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2[72] == 1 && v2[96] == 1 && v2[120] == 1 && (v2[144] & 1) != 0)
  {
    if (*(v1 + 24))
    {
      URL._swiftURL.getter();
      if (v3)
      {
        _SwiftURL.netLocation.getter(v3, v4);
      }
    }
  }

  else
  {
    URLParseInfo.netLocationRange.getter();
    if ((v5 & 1) == 0)
    {
      v6 = String.subscript.getter();
      MEMORY[0x1865CAE80](v6);
    }
  }
}

uint64_t _SwiftURL.compatibilityAbsoluteString.getter()
{
  v1 = v0;
  if (!v0[3] || (v2 = v0[4], *&v344 = v0[3], *(&v344 + 1) = v2, URL._swiftURL.getter(), !v3))
  {

    specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v9, 1, v323);
    v10 = v324;
    v11 = v325;
    v330 = v323[2];
    v331 = v323[3];
    v332 = v323[4];
    v328 = v323[0];
    v329 = v323[1];
    v308 = v326;
    v309 = v327;
    outlined init with copy of _SwiftURL.URLStringBuilder(v323, &v344);
    v12 = String.removingDotSegments.getter(v10, v11);
    v14 = v13;
    outlined destroy of _SwiftURL.URLStringBuilder(v323);

    v347 = v331;
    v348 = v332;
    v351 = v308;
    v352 = v309;
    v359 = v331;
    v360 = v332;
    v345 = v329;
    v346 = v330;
    v344 = v328;
    v349 = v12;
    v350 = v14;
    v357 = v329;
    v358 = v330;
    v356 = v328;
    *&v361 = v12;
    *(&v361 + 1) = v14;
    v362 = v308;
    v363 = v309;
    outlined init with copy of _SwiftURL.URLStringBuilder(&v344, &v336);
    outlined destroy of _SwiftURL.URLStringBuilder(&v356);
    v15 = _SwiftURL.URLStringBuilder.string.getter();
    v16 = &v344;
LABEL_6:
    outlined destroy of _SwiftURL.URLStringBuilder(v16);
    return v15;
  }

  v4 = v0[2];
  if (*(v4 + 220))
  {

    specialized URLComponents._URLComponents.init(parseInfo:)(v5, v323);
    v6 = URLComponents._URLComponents._uncheckedString(original:)(1);
    countAndFlagsBits = v6._countAndFlagsBits;
    object = v6._object;
    outlined destroy of URLComponents._URLComponents(v323);
  }

  else
  {
    countAndFlagsBits = *(v4 + 16);
    object = *(v4 + 24);
  }

  v17 = specialized Collection.first.getter(countAndFlagsBits, object);

  if ((v17 & 0x100) != 0 || v17 == 63 || v17 == 35)
  {

    specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v18, 1, &v336);
    v19 = v341;
    v310 = v338;
    v311 = v339;
    v312 = v340;
    v308 = v336;
    v309 = v337;
    v316 = v342;
    v317 = v343;
    outlined init with copy of _SwiftURL.URLStringBuilder(&v336, &v344);
    v20 = String.removingDotSegments.getter(v19, *(&v19 + 1));
    v22 = v21;
    outlined destroy of _SwiftURL.URLStringBuilder(&v336);

    v358 = v310;
    v359 = v311;
    v360 = v312;
    v362 = v316;
    v363 = v317;
    v331 = v311;
    v332 = v312;
    v356 = v308;
    v357 = v309;
    *&v361 = v20;
    *(&v361 + 1) = v22;
    v329 = v309;
    v330 = v310;
    v328 = v308;
    *&v333 = v20;
    *(&v333 + 1) = v22;
    v334 = v316;
    v335 = v317;
    outlined init with copy of _SwiftURL.URLStringBuilder(&v356, &v344);
    outlined destroy of _SwiftURL.URLStringBuilder(&v328);
    v23 = _SwiftURL.URLStringBuilder.string.getter();
    v25 = v24;
    outlined destroy of _SwiftURL.URLStringBuilder(&v356);
    if (*(v4 + 220))
    {

      specialized URLComponents._URLComponents.init(parseInfo:)(v26, &v344);
      v27 = URLComponents._URLComponents._uncheckedString(original:)(1);
      v28 = v27._countAndFlagsBits;
      v29 = v27._object;
      outlined destroy of URLComponents._URLComponents(&v344);
    }

    else
    {
      v28 = *(v4 + 16);
      v29 = *(v4 + 24);
    }

    *(&v308 + 1) = v25;

    MEMORY[0x1865CB0E0](v28, v29);

    return v23;
  }

  specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v31, 1, &v328);
  v32 = *(&v328 + 1);
  v299 = v328;
  v320 = v333;
  v321 = v334;
  v322 = v335;
  v316 = v329;
  v317 = v330;
  v318 = v331;
  v319 = v332;
  v33 = _SwiftURL.scheme.getter();
  if (!v34)
  {
    v39 = v299;
    goto LABEL_25;
  }

  v35 = v33;
  v36 = v34;
  v37 = _SwiftURL.scheme.getter();
  if (!v38)
  {

LABEL_30:

    specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v56, 1, &v356);
    v58 = *(&v361 + 1);
    v57 = v361;
    v304 = v358;
    v305 = v359;
    v306 = v360;
    v302 = v356;
    v303 = v357;
    v300 = v362;
    v301 = v363;
    outlined init with copy of _SwiftURL.URLStringBuilder(&v356, &v344);
    v59 = String.removingDotSegments.getter(v57, v58);
    v61 = v60;
    outlined destroy of _SwiftURL.URLStringBuilder(&v356);

    v347 = v305;
    v348 = v306;
    v351 = v300;
    v352 = v301;
    v311 = v305;
    v312 = v306;
    v345 = v303;
    v346 = v304;
    v344 = v302;
    v349 = v59;
    v350 = v61;
    v309 = v303;
    v310 = v304;
    v308 = v302;
    *&v313 = v59;
    *(&v313 + 1) = v61;
    v314 = v300;
    v315 = v301;
    outlined init with copy of _SwiftURL.URLStringBuilder(&v344, &v336);
    outlined destroy of _SwiftURL.URLStringBuilder(&v308);
    v15 = _SwiftURL.URLStringBuilder.string.getter();

    outlined destroy of _SwiftURL.URLStringBuilder(&v344);
    *&v336 = v299;
    *(&v336 + 1) = v32;
    v341 = v333;
    v342 = v334;
    v343 = v335;
    v337 = v329;
    v338 = v330;
    v339 = v331;
    v340 = v332;
    v16 = &v336;
    goto LABEL_6;
  }

  v355 = v328;
  if (v35 != v37 || v36 != v38)
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_24:
  outlined destroy of TermOfAddress?(&v355, &_sSSSgMd);
  v39 = 0;
  v32 = 0;
LABEL_25:
  v295 = 0;
  v298 = v32;
  v299 = v39;
  *&v356 = v39;
  *(&v356 + 1) = v32;
  v361 = v333;
  v362 = v334;
  v363 = v335;
  v357 = v329;
  v358 = v330;
  v359 = v331;
  v360 = v332;
  v41 = _SwiftURL.URLStringBuilder.string.getter();
  v43 = v42;
  v44 = v1[3];
  v45 = v1[5];
  v296 = v1[4];
  v297 = v45;
  v46 = swift_allocObject();
  type metadata accessor for _SwiftURL.ResourceInfo();
  v47 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 16) = 0;
  *(v47 + 16) = v48;
  *(v46 + 56) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 16) = 0;
  *(v46 + 64) = v49;
  v50 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v41, v43, 1);

  if (!v50)
  {

    swift_deallocPartialClassInstance();
    v62 = v1[3];
    if (!v62)
    {
      if (*(v4 + 220))
      {

        specialized URLComponents._URLComponents.init(parseInfo:)(v70, &v344);
        v15 = URLComponents._URLComponents._uncheckedString(original:)(1)._countAndFlagsBits;
        outlined destroy of URLComponents._URLComponents(&v344);
      }

      else
      {
        v15 = *(v4 + 16);
      }

      goto LABEL_53;
    }

    v287 = v1[4];

    swift_unknownObjectRetain();
    specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v4, 1, &v336);
    v63 = *(&v336 + 1);
    v64 = v337;
    v65 = *(&v339 + 1);
    v307 = v343;
    v290 = v62;
    v291 = *(&v342 + 1);
    v296 = v340;
    v297 = v342;
    v288 = v336;
    v289 = *(&v338 + 1);
    *&v294 = v338;
    *(&v294 + 1) = *(&v340 + 1);
    v292 = *(&v339 + 1);
    v293 = v339;
    if (*(&v336 + 1))
    {
      v285 = *(&v336 + 1);
      v286 = v337;
      v66 = v339;
      v295 = String.removingDotSegments.getter(v341, *(&v341 + 1));
      v68 = v67;

      *&v344 = v288;
      *(&v344 + 1) = v63;
      v345 = v64;
      *&v346 = v294;
      *(&v346 + 1) = v289;
      *&v347 = v66;
      *(&v347 + 1) = v65;
      *&v348 = v296;
      *(&v348 + 1) = *(&v294 + 1);
      v349 = v295;
      v350 = v68;
      *&v351 = v297;
      *(&v351 + 1) = v291;
      v352 = v343;
      v15 = _SwiftURL.URLStringBuilder.string.getter();
      swift_unknownObjectRelease();
      *&v308 = v288;
      *(&v308 + 1) = v285;
      *&v309 = v286;
      *(&v309 + 1) = *(&v64 + 1);
      *&v310 = v294;
      *(&v310 + 1) = v289;
      *&v311 = v293;
      *(&v311 + 1) = v292;
      *&v312 = v296;
      *(&v312 + 1) = *(&v294 + 1);
      *&v313 = v295;
      *(&v313 + 1) = v68;
      *&v314 = v297;
      *(&v314 + 1) = v291;
LABEL_52:
      v315 = v343;
      outlined destroy of _SwiftURL.URLStringBuilder(&v308);
LABEL_53:

      v85 = v298;
      v84 = v299;
      goto LABEL_54;
    }

    v284 = *(&v341 + 1);
    v285 = v341;
    v283 = *(&v337 + 1);
    ObjectType = swift_getObjectType();
    v75 = v287;
    v76 = (*(v287 + 17))(ObjectType, v287);
    if (v77)
    {
      v78 = v76;
    }

    else
    {
      v78 = v288;
    }

    v79 = *(v4 + 72);
    *(&v282 + 1) = v77;
    if ((v79 & 1) == 0 || (*(v4 + 96) & 1) == 0 || *(v4 + 120) != 1 || *(v4 + 144) != 1)
    {
      *&v344 = v78;
      *(&v344 + 1) = v77;
      *&v345 = v64;
      *(&v345 + 1) = v283;
      *&v346 = v294;
      *(&v346 + 1) = v289;
      *&v347 = v293;
      *(&v347 + 1) = v292;
      *&v348 = v296;
      *(&v348 + 1) = *(&v294 + 1);
      v349 = v285;
      v350 = v284;
      *&v351 = v297;
      *(&v351 + 1) = v291;
      v352 = v343;
      v15 = _SwiftURL.URLStringBuilder.string.getter();
      swift_unknownObjectRelease();
      *&v308 = v78;
      *(&v308 + 1) = *(&v282 + 1);
      *&v309 = v64;
      *(&v309 + 1) = v283;
      *&v310 = v294;
      *(&v310 + 1) = v289;
      *&v311 = v293;
      *(&v311 + 1) = v292;
      *&v312 = v296;
      *(&v312 + 1) = *(&v294 + 1);
      *&v313 = v285;
      *(&v313 + 1) = v284;
      *&v314 = v297;
      *(&v314 + 1) = v291;
      goto LABEL_52;
    }

    v288 = ObjectType;
    *&v344 = v290;
    *(&v344 + 1) = v287;
    URL._swiftURL.getter();
    v81 = v64;
    if (v80)
    {
      v82 = *(v80 + 16);

      v83 = v82[220];
    }

    else
    {
      v83 = 0;
      v82 = 0;
    }

    v107 = (*(v287 + 21))((v83 & 1) == 0, v288, v287);
    if (v108)
    {
      v109 = v107;
      v110 = v108;
      v302 = v337;
      outlined destroy of TermOfAddress?(&v302, &_sSSSgMd);
      v81 = v109;
      v283 = v110;
    }

    v111 = (*(v287 + 23))((v83 & 2) == 0, v288, v287);
    v113 = v294;
    if (v112)
    {
      v114 = v111;
      v115 = v112;
      v300 = v338;
      outlined destroy of TermOfAddress?(&v300, &_sSSSgMd);
      v113 = v114;
      v289 = v115;
    }

    v354 = v340;
    v353 = v339;
    *&v294 = v113;
    *&v282 = v78;
    v286 = v81;
    v281 = v83;
    if (v82 && (v82[120] & 1) == 0)
    {

      v133 = String.subscript.getter();
      v135 = v134;
      v137 = v136;
      v139 = v138;

      if ((v83 & 4) != 0 && v82[218] == 1)
      {
        if ((v133 ^ v135) >> 14)
        {
          *&v344 = v133;
          *(&v344 + 1) = v135;
          *&v345 = v137;
          *(&v345 + 1) = v139;
          MEMORY[0x1EEE9AC00](v140);
          v275 = &v344;
          v276 = MEMORY[0x1E69E7CD0];
          v277 = 4;

          v152 = v295;
          v293 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v274, v133, v135, v137, v139);
          v154 = v153;
          v295 = v152;

          v292 = v154;
          if (v154 == 1)
          {

            v155 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v133, v135, v137, v139, MEMORY[0x1E69E7CD0], 4);
            v292 = v156;
            v293 = v155;
            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          outlined destroy of TermOfAddress?(&v353, &_sSSSgMd);
        }

        else
        {

          outlined destroy of TermOfAddress?(&v353, &_sSSSgMd);
          v292 = 0xE000000000000000;
          v293 = 0;
        }

        v75 = v287;
      }

      else
      {
        v149 = MEMORY[0x1865CAE80](v133, v135, v137, v139);
        v292 = v150;
        v293 = v149;

        outlined destroy of TermOfAddress?(&v353, &_sSSSgMd);
      }
    }

    else
    {
      v116 = (*(v287 + 25))((v83 & 4) == 0, v288, v287);
      if (v117)
      {
        v118 = v116;
        v119 = v117;
        outlined destroy of TermOfAddress?(&v353, &_sSSSgMd);
        v292 = v119;
        v293 = v118;
      }

      if (!v82)
      {
        v120 = v284;
        goto LABEL_113;
      }
    }

    v120 = v284;
    if ((v82[144] & 1) == 0)
    {

      v167 = String.subscript.getter();
      v169 = v168;
      v171 = v170;
      v173 = v172;
      v287 = v82;

      v165 = MEMORY[0x1865CAE80](v167, v169, v171, v173);
      v166 = v174;

      outlined destroy of TermOfAddress?(&v354, &_sSSSgMd);
      v162 = v288;
LABEL_117:
      v176 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v176 = v285 & 0xFFFFFFFFFFFFLL;
      }

      v296 = v165;
      *(&v294 + 1) = v166;
      if (v176)
      {
        if ((specialized Collection.first.getter(v285, v120) & 0x1FF) == 0x2F)
        {

          v177 = v120;
        }

        else
        {
          v183 = (*(v75 + 19))(v162, v75);
          v184 = v162;
          v185 = v75;
          v186 = *(v75 + 31);
          if ((v183 & 1) == 0)
          {
            goto LABEL_128;
          }

          v187 = v186(1, v162, v75);
          v189 = v188;

          v190 = HIBYTE(v189) & 0xF;
          if ((v189 & 0x2000000000000000) == 0)
          {
            v190 = v187 & 0xFFFFFFFFFFFFLL;
          }

          if (!v190)
          {
            *&v344 = 47;
            *(&v344 + 1) = 0xE100000000000000;
            MEMORY[0x1865CB0E0](v285, v120);
            v177 = *(&v344 + 1);
            v285 = v344;
          }

          else
          {
LABEL_128:
            v191 = v186((v281 & 8) == 0, v184, v185);
            v193 = v192;
            v194 = specialized Collection.first.getter(v285, v120);
            if (v194 & 0x1FF) == 0x2F || (LOBYTE(v344) = 47, MEMORY[0x1EEE9AC00](v194), v277 = &v344, specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v275, v191, v193), (v195))
            {

              v177 = v284;
            }

            else
            {
              String.index(after:)();
              v204 = String.subscript.getter();
              v206 = v205;
              v208 = v207;
              v210 = v209;
              *&v308 = 0;
              *(&v308 + 1) = 0xE000000000000000;
              v211 = String.count.getter();
              v212 = Substring.distance(from:to:)();
              v213 = __OFADD__(v211, v212);
              result = v211 + v212;
              if (v213)
              {
                __break(1u);
                goto LABEL_174;
              }

              MEMORY[0x1865CAED0](result);
              *&v344 = v204;
              *(&v344 + 1) = v206;
              *&v345 = v208;
              *(&v345 + 1) = v210;
              lazy protocol witness table accessor for type Substring and conformance Substring();
              String.append<A>(contentsOf:)();
              *&v344 = v285;
              *(&v344 + 1) = v284;

              String.append<A>(contentsOf:)();

              v177 = *(&v308 + 1);
              v285 = v308;
            }
          }
        }

        v182 = v297;
        v85 = v298;
        v200 = v293;
        v199 = v294;
        v201 = v283;
        v202 = String.removingDotSegments.getter(v285, v177);
        v203 = v214;
      }

      else
      {
        v178 = *(&v342 + 1);
        v179 = v281;
        v295 = (*(v75 + 31))((v281 & 8) == 0, v162, v75);
        v181 = v180;

        if (v178)
        {
          v182 = v297;
          v85 = v298;
        }

        else
        {
          v196 = (*(v75 + 33))((v179 & 0x10) == 0, v162, v75);
          v182 = v297;
          v85 = v298;
          if (v197)
          {
            v182 = v196;
          }

          v198 = v291;
          if (v197)
          {
            v198 = v197;
          }

          v291 = v198;
        }

        v200 = v293;
        v199 = v294;
        v201 = v283;
        v202 = v295;
        v203 = v181;
      }

      v297 = v182;
      v293 = v200;
      v283 = v201;
      v344 = v282;
      v215 = v286;
      *&v345 = v286;
      *(&v345 + 1) = v201;
      *&v346 = v199;
      v216 = v289;
      *(&v346 + 1) = v289;
      *&v347 = v200;
      *(&v347 + 1) = v292;
      v217 = v296;
      *&v348 = v296;
      v218 = *(&v294 + 1);
      *(&v348 + 1) = *(&v294 + 1);
      v295 = v202;
      v349 = v202;
      v298 = v203;
      v350 = v203;
      *&v351 = v182;
      v219 = v291;
      *(&v351 + 1) = v291;
      v352 = v307;
      v15 = _SwiftURL.URLStringBuilder.string.getter();
      swift_unknownObjectRelease();

      v308 = v282;
      *&v309 = v215;
      *(&v309 + 1) = v283;
      *&v310 = v294;
      *(&v310 + 1) = v216;
      *&v311 = v293;
      *(&v311 + 1) = v292;
      *&v312 = v217;
      *(&v312 + 1) = v218;
      *&v313 = v295;
      *(&v313 + 1) = v298;
      *&v314 = v297;
      *(&v314 + 1) = v219;
      v315 = v307;
      outlined destroy of _SwiftURL.URLStringBuilder(&v308);

      v84 = v299;
LABEL_54:
      *&v308 = v84;
      *(&v308 + 1) = v85;
LABEL_71:
      v313 = v320;
      v314 = v321;
      v315 = v322;
      v309 = v316;
      v310 = v317;
      v311 = v318;
      v312 = v319;
      v16 = &v308;
      goto LABEL_6;
    }

LABEL_113:
    v287 = v82;
    v162 = v288;
    v163 = (*(v75 + 26))(v288, v75);
    if (v164)
    {
      v165 = v296;
      v166 = *(&v294 + 1);
    }

    else
    {
      *&v344 = v163;
      v165 = dispatch thunk of CustomStringConvertible.description.getter();
      v166 = v175;
      outlined destroy of TermOfAddress?(&v354, &_sSSSgMd);
    }

    goto LABEL_117;
  }

  *(v46 + 16) = v50;
  v51 = v46;
  if ((v50[48] & 1) == 0)
  {

    String.subscript.getter();

    v69 = 0;
    v50 = *(v46 + 16);
LABEL_38:
    *(v46 + 24) = 0;
    *(v46 + 32) = v69;
    *(v46 + 40) = v297;
    *(v46 + 48) = 0;
    v71 = v299;
    if (v50[220])
    {

      specialized URLComponents._URLComponents.init(parseInfo:)(v72, &v344);
      v15 = URLComponents._URLComponents._uncheckedString(original:)(1)._countAndFlagsBits;
      outlined destroy of URLComponents._URLComponents(&v344);
    }

    else
    {
      v15 = *(v50 + 2);
    }

    v73 = v298;
    goto LABEL_70;
  }

  if (!v44)
  {
    v69 = v296;
    goto LABEL_38;
  }

  v52 = swift_getObjectType();
  v53 = v296;
  v54 = *(v296 + 128);

  v54(&v344, v52, v296);

  v55 = v344;
  if (v344)
  {
    v53 = *(&v344 + 1);
    v44 = v344;
  }

  else
  {
    swift_unknownObjectRetain();
    v55 = v44;
  }

  v296 = v53;
  *(v51 + 24) = v44;
  *(v51 + 32) = v53;
  *(v51 + 40) = v297;
  *(v51 + 48) = 0;
  v86 = *(v51 + 16);

  swift_unknownObjectRetain();
  specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v86, 1, &v336);
  v87 = *(&v336 + 1);
  v88 = v338;
  v89 = *(&v339 + 1);
  v90 = v340;
  v307 = v343;
  v287 = v51;
  v288 = *(&v340 + 1);
  v290 = *(&v337 + 1);
  v291 = v55;
  v293 = v336;
  v294 = v342;
  v297 = v339;
  v292 = *(&v338 + 1);
  v289 = v338;
  if (*(&v336 + 1))
  {
    v91 = v337;
    v92 = *(&v340 + 1);
    v285 = *(&v336 + 1);
    v286 = v340;
    v93 = *(&v337 + 1);
    v94 = String.removingDotSegments.getter(v341, *(&v341 + 1));
    v296 = v95;

    *&v344 = v293;
    *(&v344 + 1) = v87;
    *&v345 = v91;
    *(&v345 + 1) = v93;
    *&v346 = v289;
    *(&v346 + 1) = v292;
    *&v347 = v297;
    *(&v347 + 1) = v89;
    *&v348 = v90;
    *(&v348 + 1) = v92;
    v349 = v94;
    v350 = v296;
    v351 = v294;
    v352 = v343;
    v15 = _SwiftURL.URLStringBuilder.string.getter();
    swift_unknownObjectRelease();
    *&v308 = v293;
    *(&v308 + 1) = v285;
    *&v309 = v91;
    *(&v309 + 1) = v290;
    *&v310 = v289;
    *(&v310 + 1) = v292;
    *&v311 = v297;
    *(&v311 + 1) = v89;
    *&v312 = v286;
    *(&v312 + 1) = v288;
    *&v313 = v94;
    *(&v313 + 1) = v296;
    *&v314 = v294;
LABEL_68:
    *(&v314 + 1) = *(&v294 + 1);
    v315 = v343;
    outlined destroy of _SwiftURL.URLStringBuilder(&v308);

    v73 = v298;
LABEL_69:
    v71 = v299;
LABEL_70:
    *&v308 = v71;
    *(&v308 + 1) = v73;
    goto LABEL_71;
  }

  v284 = v341;
  v285 = *(&v339 + 1);
  *(&v282 + 1) = v337;
  v283 = *(&v341 + 1);
  v96 = v340;
  v97 = swift_getObjectType();
  v98 = v296;
  v99 = (*(v296 + 136))();
  if (v100)
  {
    v101 = v99;
  }

  else
  {
    v101 = v293;
  }

  v102 = v86[72];
  v293 = v101;
  if ((v102 & 1) == 0 || (v86[96] & 1) == 0 || v86[120] != 1 || v86[144] != 1)
  {
    *&v344 = v101;
    *(&v344 + 1) = v100;
    *&v345 = *(&v282 + 1);
    *(&v345 + 1) = v290;
    *&v346 = v88;
    *(&v346 + 1) = v292;
    *&v347 = v297;
    *(&v347 + 1) = v285;
    *&v348 = v96;
    *(&v348 + 1) = v288;
    v349 = v284;
    v350 = v283;
    v351 = v294;
    v352 = v343;
    v106 = v100;
    v15 = _SwiftURL.URLStringBuilder.string.getter();
    swift_unknownObjectRelease();
    *&v308 = v293;
    *(&v308 + 1) = v106;
    *&v309 = *(&v282 + 1);
    *(&v309 + 1) = v290;
    *&v310 = v289;
    *(&v310 + 1) = v292;
    *&v311 = v297;
    *(&v311 + 1) = v285;
    *&v312 = v96;
    *(&v312 + 1) = v288;
    *&v313 = v284;
    *(&v313 + 1) = v283;
    *&v314 = v294;
    goto LABEL_68;
  }

  v280 = v100;
  *&v282 = v97;
  *&v344 = v55;
  *(&v344 + 1) = v296;
  URL._swiftURL.getter();
  if (v103)
  {
    v104 = *(v103 + 16);

    v105 = v104[220];
  }

  else
  {
    v105 = 0;
    v104 = 0;
  }

  v281 = v105;
  v121 = (*(v296 + 168))((v105 & 1) == 0, v282, v296);
  if (v122)
  {
    v123 = v121;
    v124 = v122;
    v302 = v337;
    outlined destroy of TermOfAddress?(&v302, &_sSSSgMd);
    v290 = v124;
    *(&v282 + 1) = v123;
  }

  v125 = (*(v296 + 184))((v281 & 2) == 0, v282, v296);
  if (v126)
  {
    v127 = v125;
    v128 = v126;
    v300 = v338;
    outlined destroy of TermOfAddress?(&v300, &_sSSSgMd);
    v292 = v128;
    v88 = v127;
  }

  v354 = v340;
  v353 = v339;
  v289 = v88;
  if (v104 && (v104[120] & 1) == 0)
  {

    v141 = String.subscript.getter();
    v143 = v142;
    v145 = v144;
    v147 = v146;

    if ((v281 & 4) != 0 && v104[218] == 1)
    {
      v278 = v143;
      v279 = v104;
      if ((v141 ^ v143) >> 14)
      {
        v285 = &v278;
        *&v344 = v141;
        v157 = v278;
        *(&v344 + 1) = v278;
        *&v345 = v145;
        *(&v345 + 1) = v147;
        MEMORY[0x1EEE9AC00](v148);
        v275 = &v344;
        v276 = MEMORY[0x1E69E7CD0];
        v277 = 4;

        v158 = v295;
        v297 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v274, v141, v157, v145, v147);
        v160 = v159;
        v295 = v158;

        v285 = v160;
        if (v160 == 1)
        {

          v297 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v141, v278, v145, v147, MEMORY[0x1E69E7CD0], 4);
          v285 = v161;
          swift_bridgeObjectRelease_n();
        }

        else
        {
        }

        outlined destroy of TermOfAddress?(&v353, &_sSSSgMd);
      }

      else
      {

        outlined destroy of TermOfAddress?(&v353, &_sSSSgMd);
        v297 = 0;
        v285 = 0xE000000000000000;
      }

      v104 = v279;
    }

    else
    {
      v297 = MEMORY[0x1865CAE80](v141, v143, v145, v147);
      v285 = v151;

      outlined destroy of TermOfAddress?(&v353, &_sSSSgMd);
    }
  }

  else
  {
    v129 = (*(v296 + 200))((v281 & 4) == 0, v282, v296);
    if (v130)
    {
      v131 = v129;
      v132 = v130;
      outlined destroy of TermOfAddress?(&v353, &_sSSSgMd);
      v285 = v132;
      v297 = v131;
    }

    if (!v104)
    {
      goto LABEL_146;
    }
  }

  if (v104[144])
  {
LABEL_146:
    v220 = v98;
    v279 = v104;
    v221 = (*(v98 + 208))(v282, v98);
    if (v222)
    {
      v223 = v288;
    }

    else
    {
      *&v344 = v221;
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v223 = v232;
      outlined destroy of TermOfAddress?(&v354, &_sSSSgMd);
    }

    goto LABEL_150;
  }

  v224 = String.subscript.getter();
  v226 = v225;
  v228 = v227;
  v230 = v229;
  v279 = v104;

  v96 = MEMORY[0x1865CAE80](v224, v226, v228, v230);
  v223 = v231;

  outlined destroy of TermOfAddress?(&v354, &_sSSSgMd);
  v220 = v98;
LABEL_150:
  v233 = HIBYTE(v283) & 0xF;
  if ((v283 & 0x2000000000000000) == 0)
  {
    v233 = v284 & 0xFFFFFFFFFFFFLL;
  }

  v288 = v223;
  v286 = v96;
  if (!v233)
  {
    v255 = *(&v342 + 1);
    v295 = (*(v220 + 248))((v281 & 8) == 0, v282, v220);
    v257 = v256;

    if (v255)
    {
      v73 = v298;
      v253 = *(&v294 + 1);
    }

    else
    {
      v258 = (*(v98 + 264))((v281 & 0x10) == 0, v282, v98);
      v253 = *(&v294 + 1);
      v260 = v294;
      if (v259)
      {
        v253 = v259;
        v260 = v258;
      }

      *&v294 = v260;
      v73 = v298;
    }

    v249 = v289;
    v250 = v290;
    v254 = *(&v282 + 1);
    v252 = v257;
    goto LABEL_169;
  }

  if ((specialized Collection.first.getter(v284, v283) & 0x1FF) == 0x2F)
  {
    goto LABEL_161;
  }

  v234 = v282;
  v235 = (*(v220 + 152))(v282, v220);
  v236 = *(v220 + 248);
  v237 = v220;
  if (v235)
  {
    v238 = v236(1, v234, v220);
    v240 = v239;

    v241 = HIBYTE(v240) & 0xF;
    if ((v240 & 0x2000000000000000) == 0)
    {
      v241 = v238 & 0xFFFFFFFFFFFFLL;
    }

    if (!v241)
    {
      *&v344 = 47;
      *(&v344 + 1) = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v284, v283);
      v248 = *(&v344 + 1);
      v284 = v344;
      goto LABEL_162;
    }
  }

  v242 = v236((v281 & 8) == 0, v234, v237);
  v244 = v243;
  v245 = specialized Collection.first.getter(v284, v283);
  if (v245 & 0x1FF) == 0x2F || (LOBYTE(v344) = 47, MEMORY[0x1EEE9AC00](v245), *&v274[-16] = &v344, specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v274[-32], v242, v244), (v246))
  {

LABEL_161:
    v247 = v283;

    v248 = v247;
LABEL_162:
    v73 = v298;
    v249 = v289;
    v250 = v290;
    v295 = String.removingDotSegments.getter(v284, v248);
    v252 = v251;

    v253 = *(&v294 + 1);
    v254 = *(&v282 + 1);
LABEL_169:
    v290 = v250;
    *(&v282 + 1) = v254;
    v261 = v292;
    *&v344 = v293;
    *(&v344 + 1) = v280;
    *&v345 = v254;
    *(&v345 + 1) = v250;
    *&v346 = v249;
    *(&v346 + 1) = v292;
    *&v347 = v297;
    v262 = v286;
    *(&v347 + 1) = v285;
    *&v348 = v286;
    v263 = v288;
    *(&v348 + 1) = v288;
    v349 = v295;
    v298 = v252;
    v350 = v252;
    v264 = v294;
    *&v351 = v294;
    *(&v351 + 1) = v253;
    v352 = v307;
    v15 = _SwiftURL.URLStringBuilder.string.getter();
    swift_unknownObjectRelease();

    *&v308 = v293;
    *(&v308 + 1) = v280;
    *&v309 = *(&v282 + 1);
    *(&v309 + 1) = v290;
    *&v310 = v289;
    *(&v310 + 1) = v261;
    *&v311 = v297;
    *(&v311 + 1) = v285;
    *&v312 = v262;
    *(&v312 + 1) = v263;
    *&v313 = v295;
    *(&v313 + 1) = v298;
    *&v314 = v264;
    *(&v314 + 1) = v253;
    v315 = v307;
    outlined destroy of _SwiftURL.URLStringBuilder(&v308);

    goto LABEL_69;
  }

  String.index(after:)();
  v265 = String.subscript.getter();
  v267 = v266;
  v269 = v268;
  v271 = v270;
  *&v308 = 0;
  *(&v308 + 1) = 0xE000000000000000;
  v272 = String.count.getter();
  v273 = Substring.distance(from:to:)();
  v213 = __OFADD__(v272, v273);
  result = v272 + v273;
  if (!v213)
  {
    MEMORY[0x1865CAED0](result);
    *&v344 = v265;
    *(&v344 + 1) = v267;
    *&v345 = v269;
    *(&v345 + 1) = v271;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();
    *&v344 = v284;
    *(&v344 + 1) = v283;

    String.append<A>(contentsOf:)();

    v248 = *(&v308 + 1);
    v284 = v308;
    goto LABEL_162;
  }

LABEL_174:
  __break(1u);
  return result;
}