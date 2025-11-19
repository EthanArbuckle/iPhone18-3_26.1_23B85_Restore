unint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

uint64_t _convertNSErrorToError(_:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    if (one-time initialization token for _nilObjCError != -1)
    {
      swift_once();
    }

    v2 = _nilObjCError;
    v3 = _nilObjCError;
  }

  v4 = a1;
  return v2;
}

uint64_t isEqualObjectMT(uint64_t a1, void *a2, void *a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  else
  {
    return [a2 isEqual:?];
  }
}

uint64_t Data.count.getter(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return BYTE6(a2);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      return HIDWORD(result) - result;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v4 = *(result + 16);
  v3 = *(result + 24);
  result = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int64 and conformance Int64()
{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

NSArray *pathComponentFromPath(NSArray *a1, uint64_t a2, int a3)
{
  result = 0;
  v13[1] = *MEMORY[0x1E69E9840];
  HIDWORD(v6) = a3 - 100;
  LODWORD(v6) = a3 - 100;
  v5 = v6 >> 1;
  if (v5 <= 5)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

LABEL_9:
      if (fileNameLocalizationDisabled == 1)
      {

        return [(NSArray *)a1 lastPathComponent];
      }

      else
      {
        v10 = +[NSFileManager defaultManager];

        return [(NSFileManager *)v10 displayNameAtPath:a1];
      }
    }

LABEL_7:
    result = [(NSArray *)a1 stringByDeletingLastPathComponent];
    if (!result)
    {
      return result;
    }

    a1 = result;
    result = [(NSArray *)result length];
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v5 != 9)
  {
    if (v5 != 6)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (fileNameLocalizationDisabled == 1)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:a1];
    v13[0] = 0;
    if (!v7)
    {
      return 0;
    }

    v8 = [v7 getResourceValue:v13 forKey:*MEMORY[0x1E695DDE8] error:0];
    result = v13[0];
    if (!v8 || v13[0] == 0)
    {
      return 0;
    }
  }

  else
  {
    result = [+[NSFileManager defaultManager](NSFileManager componentsToDisplayForPath:"componentsToDisplayForPath:", a1];
    if (result || (result = [(NSArray *)a1 stringByDeletingLastPathComponent]) != 0 && (v12 = result, (result = [(NSArray *)result length]) != 0) && (result = [+[NSFileManager componentsToDisplayForPath:"componentsToDisplayForPath:"]!= 0)
    {
      v11 = result;
      result = [(NSArray *)result count];
      if (result)
      {

        return [(NSArray *)v11 objectAtIndex:0];
      }
    }
  }

  return result;
}

id specialized _NSFileManagerBridge.displayName(atPath:)(uint64_t a1, unint64_t a2)
{
  v82[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v4 = type metadata accessor for _BridgedURL();
    v5 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v4 = type metadata accessor for _SwiftURL();
    v5 = &protocol witness table for _SwiftURL;
  }

  LOBYTE(Path) = 1;
  v81[0] = 0;
  v81[1] = 0;
  v6 = v5[9];

  v74 = a1;
  v73 = a2;
  v6(a1, a2, &Path, v81);
  (v5[56])(v4, v5);
  v8 = v7;
  swift_unknownObjectRelease();
  v82[0] = *MEMORY[0x1E695DC10];
  v9 = v82[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd);
  v10 = static _SetStorage.allocate(capacity:)();
  isTaggedPointer = _objc_isTaggedPointer(v9);
  v12 = v9;
  v13 = v12;
  v77 = isTaggedPointer;
  if (!isTaggedPointer)
  {
    goto LABEL_12;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v12);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v16 = v15;

        goto LABEL_28;
      }

LABEL_12:
      LOBYTE(Path) = 0;
      v81[0] = 0;
      if (__CFStringIsCF())
      {
        if (v81[0])
        {
LABEL_25:
          String.init(_cocoaString:)();
          v16 = v21;
          goto LABEL_28;
        }
      }

      else
      {
        v17 = v13;
        String.init(_nativeStorage:)();
        if (v18)
        {
          v16 = v18;

          goto LABEL_28;
        }

        v81[0] = [v17 length];
        if (v81[0])
        {
          goto LABEL_25;
        }
      }

      v16 = 0xE000000000000000;
      goto LABEL_28;
    }

    result = [v13 UTF8String];
    if (!result)
    {
      goto LABEL_105;
    }

    String.init(utf8String:)(result);
    if (v20)
    {
LABEL_23:
      v16 = v20;

      goto LABEL_28;
    }

    __break(1u);
  }

  _CFIndirectTaggedPointerStringGetContents();
  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v20)
  {
    goto LABEL_23;
  }

  [v13 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v16 = v80;
LABEL_28:
  Hasher.init(_seed:)();
  String.hash(into:)();
  v22 = Hasher._finalize()();

  v23 = -1 << *(v10 + 32);
  v24 = v22 & ~v23;
  v25 = v24 >> 6;
  v78 = v10 + 56;
  v26 = *(v10 + 56 + 8 * (v24 >> 6));
  v27 = 1 << v24;
  v75 = v13;
  if (((1 << v24) & v26) == 0)
  {
LABEL_81:
    *(v78 + 8 * v25) = v27 | v26;
    *(*(v10 + 48) + 8 * v24) = v13;
    v54 = *(v10 + 16);
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (!v55)
    {
      *(v10 + 16) = v56;
LABEL_86:
      outlined destroy of NSURLResourceKey(v82);
      ObjectType = swift_getObjectType();
      v16 = (*(v8 + 432))(ObjectType, v8);
      v58 = *(v10 + 16);
      if (!v58)
      {
LABEL_89:
        type metadata accessor for NSURLResourceKey(0);
        v61 = _ContiguousArrayBuffer._asCocoaArray()();
        v81[0] = 0;
        v62 = [v16 resourceValuesForKeys:v61 error:v81];

        swift_unknownObjectRelease();
        v63 = v81[0];
        if (v62)
        {
          v81[0] = 0;
          v64 = v63;
          result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(v62, v81);
          v65 = v81[0];
          if (!v81[0])
          {
            goto LABEL_104;
          }

          v66 = specialized URLResourceValues._get<A>(_:)(v13, v65);
          v68 = v67;

          v69 = v74;
          if (v68)
          {
            swift_unknownObjectRelease();
            return v66;
          }

          goto LABEL_97;
        }

        v70 = v81[0];

        if (v70)
        {
          swift_willThrow();

          v69 = v74;
LABEL_97:
          Path = String._lastPathComponent.getter(v69, v73);
          v80 = v71;
          lazy protocol witness table accessor for type String and conformance String();
          lazy protocol witness table accessor for type String and conformance String();
          RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

          swift_unknownObjectRelease();
          return v81[0];
        }

        v16 = v74;
        if (one-time initialization token for _nilObjCError == -1)
        {
LABEL_96:
          swift_willThrow();
          v69 = v16;
          goto LABEL_97;
        }

LABEL_100:
        swift_once();
        goto LABEL_96;
      }

      v59 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16NSURLResourceKeya_Tt1g5(*(v10 + 16), 0);
      v60 = specialized Sequence._copyContents(initializing:)(v81, v59 + 4, v58, v10);

      outlined consume of Set<AnyKeyPath>.Iterator._Variant();
      if (v60 == v58)
      {
        v13 = v75;
        goto LABEL_89;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_100;
  }

  v72 = v8;
  v76 = ~v23;
  while (1)
  {
    v28 = *(*(v10 + 48) + 8 * v24);
    v29 = _objc_isTaggedPointer(v28);
    v30 = v28;
    v31 = v30;
    if (!v29)
    {
      goto LABEL_35;
    }

    v32 = _objc_getTaggedPointerTag(v30);
    if (v32)
    {
      break;
    }

    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v39)
    {
      goto LABEL_46;
    }

    [v31 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v33 = Path;
    v35 = v80;
LABEL_51:
    v41 = v13;
    v16 = v41;
    if (!v77)
    {
      goto LABEL_56;
    }

    v42 = _objc_getTaggedPointerTag(v41);
    switch(v42)
    {
      case 0:
        _CFIndirectTaggedPointerStringGetContents();
        result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v49)
        {
          [v16 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v45 = v80;
          if (v33 != Path)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
        }

        goto LABEL_67;
      case 0x16:
        result = [v16 UTF8String];
        if (!result)
        {
          goto LABEL_103;
        }

        result = String.init(utf8String:)(result);
        if (!v49)
        {
          goto LABEL_102;
        }

LABEL_67:
        v50 = result;
        v45 = v49;

        if (v33 != v50)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      case 2:
        MEMORY[0x1EEE9AC00](v42);
        v43 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v45 = v44;

        goto LABEL_74;
    }

LABEL_56:
    LOBYTE(Path) = 0;
    v81[0] = 0;
    if (!__CFStringIsCF())
    {
      v46 = v16;
      v47 = String.init(_nativeStorage:)();
      if (v48)
      {
        v43 = v47;
        v45 = v48;
      }

      else
      {
        v81[0] = [v46 length];
        if (v81[0])
        {
          v13 = v75;
          goto LABEL_76;
        }

        v43 = 0;
        v45 = 0xE000000000000000;
      }

LABEL_74:
      v13 = v75;
      if (v33 != v43)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if (!v81[0])
    {

      v45 = 0xE000000000000000;
      if (v33)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

LABEL_76:
    v51 = String.init(_cocoaString:)();
    v45 = v52;
    if (v33 != v51)
    {
      goto LABEL_78;
    }

LABEL_77:
    if (v35 == v45)
    {

LABEL_85:
      v8 = v72;
      goto LABEL_86;
    }

LABEL_78:
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {

      goto LABEL_85;
    }

    v24 = (v24 + 1) & v76;
    v25 = v24 >> 6;
    v26 = *(v78 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    if (((1 << v24) & v26) == 0)
    {
      v8 = v72;
      goto LABEL_81;
    }
  }

  if (v32 != 22)
  {
    if (v32 == 2)
    {
      MEMORY[0x1EEE9AC00](v32);
      v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v35 = v34;

      goto LABEL_51;
    }

LABEL_35:
    LOBYTE(Path) = 0;
    v81[0] = 0;
    if (__CFStringIsCF())
    {
      if (!v81[0])
      {

LABEL_41:
        v33 = 0;
        v35 = 0xE000000000000000;
        goto LABEL_51;
      }
    }

    else
    {
      v36 = v31;
      v37 = String.init(_nativeStorage:)();
      if (v38)
      {
        v33 = v37;
        v35 = v38;

        goto LABEL_51;
      }

      v81[0] = [v36 length];
      if (!v81[0])
      {

        goto LABEL_41;
      }
    }

    v33 = String.init(_cocoaString:)();
    v35 = v40;
    goto LABEL_51;
  }

  result = [v31 UTF8String];
  if (!result)
  {
    goto LABEL_101;
  }

  result = String.init(utf8String:)(result);
  if (v39)
  {
LABEL_46:
    v33 = result;
    v35 = v39;

    goto LABEL_51;
  }

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
  return result;
}

uint64_t outlined destroy of NSURLResourceKey(uint64_t a1)
{
  type metadata accessor for NSURLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSArray *pathComponentFromURL(void *a1, uint64_t a2, int a3)
{
  result = 0;
  v15 = *MEMORY[0x1E69E9840];
  if (a3 > 116)
  {
    if (a3 == 118)
    {
      v14 = 0;
      if (fileNameLocalizationDisabled)
      {
        v10 = MEMORY[0x1E695DDE8];
      }

      else
      {
        v10 = MEMORY[0x1E695DDD0];
      }

      v11 = [a1 getResourceValue:&v14 forKey:*v10 error:0];
      result = v14;
      if (v11)
      {
        v12 = v14 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if ([a1 isFileURL])
        {
          result = [a1 path];
          if (result)
          {
            return pathComponentFromPath(result, v13, 118);
          }
        }

        else
        {
          return 0;
        }
      }
    }

    else if (a3 == 117)
    {
      result = [a1 scheme];
      if (result)
      {
        v5 = result;
        if ([(NSArray *)result length])
        {
          return v5;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (a3 == 100)
    {
      a1 = [a1 URLByDeletingLastPathComponent];
    }

    else if (a3 != 102)
    {
      return result;
    }

    v14 = 0;
    v6 = MEMORY[0x1E695DC30];
    if (!fileNameLocalizationDisabled)
    {
      v6 = MEMORY[0x1E695DC10];
    }

    v7 = [a1 getResourceValue:&v14 forKey:*v6 error:0];
    result = v14;
    if (v7)
    {
      v8 = v14 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if ([a1 isFileURL] && (v9 = objc_msgSend(a1, "path")) != 0)
      {
        if (fileNameLocalizationDisabled == 1)
        {
          return [v9 lastPathComponent];
        }

        else
        {
          return [+[NSFileManager defaultManager](NSFileManager displayNameAtPath:"displayNameAtPath:", v9];
        }
      }

      else
      {
        result = [objc_msgSend(a1 path];
        v14 = result;
        if (result)
        {
          result = [(NSArray *)result length];
          if (result)
          {
            if ([(NSArray *)v14 isEqual:@"/"])
            {
              return 0;
            }

            else
            {
              return v14;
            }
          }
        }
      }
    }
  }

  return result;
}

void _NSSetObjectValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v11[8] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetObjectValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F4640;
      v11[6] = v8;
      v11[7] = a2;
      v11[4] = a1;
      v11[5] = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(uint64_t a1, void *a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

uint64_t _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = a3;
  v67 = a7;
  v51 = a4;
  v61 = a2;
  v66 = a1;
  v11 = type metadata accessor for Optional();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v49 - v12;
  swift_getAssociatedTypeWitness();
  v56 = a6;
  v57 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v60 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - v22;
  v63 = v19;
  v62 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  v53 = a5;
  v27 = dispatch thunk of CodingKey.stringValue.getter();
  v29 = v64;
  if (!*(v64 + 16))
  {

    goto LABEL_6;
  }

  v49 = v26;
  v50 = v18;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_6:
    (*(v62 + 56))(v23, 1, 1, v63);
    (*(v21 + 8))(v23, v20);
    return 0;
  }

  v33 = v58;
  v34 = v59;
  v35 = v60;
  (*(v59 + 16))(v58, *(v29 + 56) + *(v59 + 72) * v30, v60);
  v36 = v50;
  (*(v34 + 32))(v50, v33, v35);
  v37 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v38 = swift_checkMetadataState();
  v39 = v65;
  v37(v36, v38, AssociatedConformanceWitness);
  if (v39)
  {
    (*(v34 + 8))(v36, v35);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v34 + 8))(v36, v35);
    swift_unknownObjectRelease();
    v42 = v62;
    v41 = v63;
    (*(v62 + 56))(v23, 0, 1, v63);
    v43 = v49;
    (*(v42 + 32))(v49, v23, v41);
    if ((*(v57 + 40))(v43))
    {
      (*(v42 + 8))(v43, v41);
      return 0;
    }

    else
    {
      v45 = v52;
      v44 = v53;
      v46 = *(v53 - 8);
      (*(v46 + 16))(v52, v66, v53);
      (*(v46 + 56))(v45, 0, 1, v44);
      v47 = v49;
      v48 = _PlistDecoder.unwrapString<A>(from:for:_:)(v49, v51, v45, v44, v67);
      (*(v54 + 8))(v45, v55);
      (*(v42 + 8))(v47, v41);
      return v48;
    }
  }
}

{
  v107 = a7;
  v91 = a4;
  v106 = a3;
  v103 = a2;
  v95 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v87 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Optional();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v88 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v85 - v17;
  swift_getAssociatedTypeWitness();
  v97 = a8;
  v98 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = *(AssociatedTypeWitness - 8);
  v102 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v100 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v85 - v27;
  v105 = v24;
  v104 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v99 = &v85 - v30;
  v90 = a1;
  v92 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v106;
  if (!*(v106 + 16))
  {

    goto LABEL_6;
  }

  v86 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_6:
    (*(v104 + 56))(v28, 1, 1, v105);
    (*(v26 + 8))(v28, v25);
    return 0;
  }

  v37 = *(v33 + 56);
  v38 = v100;
  v39 = v101;
  v40 = v102;
  (*(v101 + 16))(v100, v37 + *(v101 + 72) * v34, v102);
  v41 = v86;
  (*(v39 + 32))(v86, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v108;
  v42(v41, v43, AssociatedConformanceWitness);
  v108 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v47 = v104;
  v46 = v105;
  (*(v104 + 56))(v28, 0, 1, v105);
  v48 = v99;
  (*(v47 + 32))(v99, v28, v46);
  v49 = v97;
  v50 = *(v97 + 40);
  v51 = v98;
  if (v50(v48, v98, v97))
  {
    (*(v47 + 8))(v48, v46);
    return 0;
  }

  v52 = v95;
  v53 = v51;
  v54 = *(v95 + 16);
  v55 = v96;
  v56 = v49;
  v57 = v92;
  v106 = v95 + 16;
  v54(v96, v90, v92);
  (*(v52 + 56))(v55, 0, 1, v57);
  if (v50(v48, v53, v56))
  {
    v102 = v54;
    v103 = type metadata accessor for DecodingError();
    v108 = swift_allocError();
    v59 = v58;
    *v58 = MEMORY[0x1E69E6530];
    v60 = v57;
    v61 = v93;
    v62 = *(v93 + 16);
    v63 = v89;
    v64 = v94;
    v62(v89, v55, v94);
    v65 = v88;
    v62(v88, v63, v64);
    v66 = v95;
    if ((*(v95 + 48))(v65, 1, v60) == 1)
    {
      v67 = *(v61 + 8);
      v67(v65, v64);
      _CodingPathNode.path.getter(v91);
      v67(v63, v64);
    }

    else
    {
      v77 = v63;
      v78 = v87;
      (*(v66 + 32))(v87, v65, v60);
      v79 = _CodingPathNode.path.getter(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v80 = v66;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v82 = v107;
      *(inited + 56) = v60;
      *(inited + 64) = v82;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v102(boxed_opaque_existential_0, v78, v60);
      v109[4] = v79;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v80 + 8))(v78, v60);
      v67 = *(v61 + 8);
      v67(v77, v64);
    }

    v76 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v103 - 8) + 104))(v59, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
    v67(v96, v64);
    return (*(v76 + 8))(v99, v105);
  }

  v68 = *(v103 + 24);
  v69 = *(v56 + 88);
  v70 = lazy protocol witness table accessor for type Int and conformance Int();
  swift_unknownObjectRetain();
  v84 = v56;
  v71 = v99;
  v72 = v70;
  v73 = v108;
  v69(v109, v99, v68, v91, v55, MEMORY[0x1E69E6530], v57, v72, v107, v53, v84);
  v108 = v73;
  v74 = v94;
  v75 = v93;
  if (v73)
  {
    swift_unknownObjectRelease();
    v76 = v104;
    (*(v75 + 8))(v96, v74);
    return (*(v76 + 8))(v99, v105);
  }

  swift_unknownObjectRelease();
  (*(v75 + 8))(v55, v74);
  (*(v104 + 8))(v71, v105);
  return v109[0];
}

{
  v107 = a7;
  v91 = a4;
  v106 = a3;
  v103 = a2;
  v95 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v87 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Optional();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v88 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v85 - v17;
  swift_getAssociatedTypeWitness();
  v97 = a8;
  v98 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = *(AssociatedTypeWitness - 8);
  v102 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v100 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v85 - v27;
  v105 = v24;
  v104 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v99 = &v85 - v30;
  v90 = a1;
  v92 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v106;
  if (!*(v106 + 16))
  {

    goto LABEL_6;
  }

  v86 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_6:
    (*(v104 + 56))(v28, 1, 1, v105);
    (*(v26 + 8))(v28, v25);
    return 0;
  }

  v37 = *(v33 + 56);
  v38 = v100;
  v39 = v101;
  v40 = v102;
  (*(v101 + 16))(v100, v37 + *(v101 + 72) * v34, v102);
  v41 = v86;
  (*(v39 + 32))(v86, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v108;
  v42(v41, v43, AssociatedConformanceWitness);
  v108 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v47 = v104;
  v46 = v105;
  (*(v104 + 56))(v28, 0, 1, v105);
  v48 = v99;
  (*(v47 + 32))(v99, v28, v46);
  v49 = v97;
  v50 = *(v97 + 40);
  v51 = v98;
  if (v50(v48, v98, v97))
  {
    (*(v47 + 8))(v48, v46);
    return 0;
  }

  v52 = v95;
  v53 = v51;
  v54 = *(v95 + 16);
  v55 = v96;
  v56 = v49;
  v57 = v92;
  v106 = v95 + 16;
  v54(v96, v90, v92);
  (*(v52 + 56))(v55, 0, 1, v57);
  if (v50(v48, v53, v56))
  {
    v102 = v54;
    v103 = type metadata accessor for DecodingError();
    v108 = swift_allocError();
    v59 = v58;
    *v58 = MEMORY[0x1E69E63B0];
    v60 = v57;
    v61 = v93;
    v62 = *(v93 + 16);
    v63 = v89;
    v64 = v94;
    v62(v89, v55, v94);
    v65 = v88;
    v62(v88, v63, v64);
    v66 = v95;
    if ((*(v95 + 48))(v65, 1, v60) == 1)
    {
      v67 = *(v61 + 8);
      v67(v65, v64);
      _CodingPathNode.path.getter(v91);
      v67(v63, v64);
    }

    else
    {
      v77 = v63;
      v78 = v87;
      (*(v66 + 32))(v87, v65, v60);
      v79 = _CodingPathNode.path.getter(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v80 = v66;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v82 = v107;
      *(inited + 56) = v60;
      *(inited + 64) = v82;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v102(boxed_opaque_existential_0, v78, v60);
      v109[4] = v79;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v80 + 8))(v78, v60);
      v67 = *(v61 + 8);
      v67(v77, v64);
    }

    v76 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v103 - 8) + 104))(v59, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
    v67(v96, v64);
    return (*(v76 + 8))(v99, v105);
  }

  v68 = *(v103 + 24);
  v69 = *(v56 + 80);
  v70 = lazy protocol witness table accessor for type Double and conformance Double();
  swift_unknownObjectRetain();
  v84 = v56;
  v71 = v99;
  v72 = v70;
  v73 = v108;
  v69(v109, v99, v68, v91, v55, MEMORY[0x1E69E63B0], v57, v72, v107, v53, v84);
  v108 = v73;
  v74 = v94;
  v75 = v93;
  if (v73)
  {
    swift_unknownObjectRelease();
    v76 = v104;
    (*(v75 + 8))(v96, v74);
    return (*(v76 + 8))(v99, v105);
  }

  swift_unknownObjectRelease();
  (*(v75 + 8))(v55, v74);
  (*(v104 + 8))(v71, v105);
  return v109[0];
}

{
  v107 = a7;
  v91 = a4;
  v106 = a3;
  v103 = a2;
  v95 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v87 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Optional();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v88 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v85 - v17;
  swift_getAssociatedTypeWitness();
  v97 = a8;
  v98 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = *(AssociatedTypeWitness - 8);
  v102 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v100 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v85 - v27;
  v105 = v24;
  v104 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v99 = &v85 - v30;
  v90 = a1;
  v92 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v106;
  if (!*(v106 + 16))
  {

    goto LABEL_6;
  }

  v86 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_6:
    (*(v104 + 56))(v28, 1, 1, v105);
    (*(v26 + 8))(v28, v25);
    return 0;
  }

  v37 = *(v33 + 56);
  v38 = v100;
  v39 = v101;
  v40 = v102;
  (*(v101 + 16))(v100, v37 + *(v101 + 72) * v34, v102);
  v41 = v86;
  (*(v39 + 32))(v86, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v108;
  v42(v41, v43, AssociatedConformanceWitness);
  v108 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v47 = v104;
  v46 = v105;
  (*(v104 + 56))(v28, 0, 1, v105);
  v48 = v99;
  (*(v47 + 32))(v99, v28, v46);
  v49 = v97;
  v50 = *(v97 + 40);
  v51 = v98;
  if (v50(v48, v98, v97))
  {
    (*(v47 + 8))(v48, v46);
    return 0;
  }

  v52 = v95;
  v53 = v51;
  v54 = *(v95 + 16);
  v55 = v96;
  v56 = v49;
  v57 = v92;
  v106 = v95 + 16;
  v54(v96, v90, v92);
  (*(v52 + 56))(v55, 0, 1, v57);
  if (v50(v48, v53, v56))
  {
    v102 = v54;
    v103 = type metadata accessor for DecodingError();
    v108 = swift_allocError();
    v59 = v58;
    *v58 = MEMORY[0x1E69E7360];
    v60 = v57;
    v61 = v93;
    v62 = *(v93 + 16);
    v63 = v89;
    v64 = v94;
    v62(v89, v55, v94);
    v65 = v88;
    v62(v88, v63, v64);
    v66 = v95;
    if ((*(v95 + 48))(v65, 1, v60) == 1)
    {
      v67 = *(v61 + 8);
      v67(v65, v64);
      _CodingPathNode.path.getter(v91);
      v67(v63, v64);
    }

    else
    {
      v77 = v63;
      v78 = v87;
      (*(v66 + 32))(v87, v65, v60);
      v79 = _CodingPathNode.path.getter(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v80 = v66;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v82 = v107;
      *(inited + 56) = v60;
      *(inited + 64) = v82;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v102(boxed_opaque_existential_0, v78, v60);
      v109[4] = v79;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v80 + 8))(v78, v60);
      v67 = *(v61 + 8);
      v67(v77, v64);
    }

    v76 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v103 - 8) + 104))(v59, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
    v67(v96, v64);
    return (*(v76 + 8))(v99, v105);
  }

  v68 = *(v103 + 24);
  v69 = *(v56 + 88);
  v70 = lazy protocol witness table accessor for type Int64 and conformance Int64();
  swift_unknownObjectRetain();
  v84 = v56;
  v71 = v99;
  v72 = v70;
  v73 = v108;
  v69(v109, v99, v68, v91, v55, MEMORY[0x1E69E7360], v57, v72, v107, v53, v84);
  v108 = v73;
  v74 = v94;
  v75 = v93;
  if (v73)
  {
    swift_unknownObjectRelease();
    v76 = v104;
    (*(v75 + 8))(v96, v74);
    return (*(v76 + 8))(v99, v105);
  }

  swift_unknownObjectRelease();
  (*(v75 + 8))(v55, v74);
  (*(v104 + 8))(v71, v105);
  return v109[0];
}

{
  v108 = a7;
  v92 = a4;
  v107 = a3;
  v104 = a2;
  v96 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v88 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Optional();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v87 - v17;
  swift_getAssociatedTypeWitness();
  v98 = a8;
  v99 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  v103 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v101 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v87 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v87 - v27;
  v106 = v24;
  v105 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v87 - v30;
  v91 = a1;
  v93 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v107;
  if (!*(v107 + 16))
  {

    goto LABEL_7;
  }

  v87 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_7:
    v46 = 1;
    (*(v105 + 56))(v28, 1, 1, v106);
    (*(v26 + 8))(v28, v25);
    v47 = 0;
    return v47 | (v46 << 8);
  }

  v37 = *(v33 + 56);
  v38 = v101;
  v39 = v102;
  v40 = v103;
  (*(v102 + 16))(v101, v37 + *(v102 + 72) * v34, v103);
  v41 = v87;
  (*(v39 + 32))(v87, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v109;
  v42(v41, v43, AssociatedConformanceWitness);
  v109 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v49 = v105;
  v48 = v106;
  (*(v105 + 56))(v28, 0, 1, v106);
  v50 = v100;
  (*(v49 + 32))(v100, v28, v48);
  v51 = v98;
  v52 = *(v98 + 40);
  v53 = v99;
  if ((v52(v50, v99, v98) & 1) == 0)
  {
    v54 = v96;
    v55 = v53;
    v56 = *(v96 + 16);
    v57 = v97;
    v58 = v51;
    v59 = v93;
    v107 = v96 + 16;
    v56(v97, v91, v93);
    (*(v54 + 56))(v57, 0, 1, v59);
    if (v52(v50, v55, v58))
    {
      v103 = v56;
      v104 = type metadata accessor for DecodingError();
      v109 = swift_allocError();
      v61 = v60;
      *v60 = MEMORY[0x1E69E7230];
      v62 = v59;
      v63 = v94;
      v64 = *(v94 + 16);
      v65 = v90;
      v66 = v95;
      v64(v90, v57, v95);
      v67 = v89;
      v64(v89, v65, v66);
      v68 = v96;
      if ((*(v96 + 48))(v67, 1, v62) == 1)
      {
        v69 = *(v63 + 8);
        v69(v67, v66);
        _CodingPathNode.path.getter(v92);
        v69(v65, v66);
      }

      else
      {
        v79 = v65;
        v80 = v88;
        (*(v68 + 32))(v88, v67, v62);
        v81 = _CodingPathNode.path.getter(v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v82 = v68;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v84 = v108;
        *(inited + 56) = v62;
        *(inited + 64) = v84;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v103(boxed_opaque_existential_0, v80, v62);
        v110 = v81;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v82 + 8))(v80, v62);
        v69 = *(v63 + 8);
        v69(v79, v66);
      }

      v78 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v104 - 8) + 104))(v61, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v69(v97, v66);
    }

    else
    {
      v70 = *(v104 + 24);
      v71 = *(v58 + 88);
      v72 = lazy protocol witness table accessor for type Int8 and conformance Int8();
      swift_unknownObjectRetain();
      v86 = v58;
      v73 = v100;
      v74 = v72;
      v75 = v109;
      v71(&v111, v100, v70, v92, v57, MEMORY[0x1E69E7230], v59, v74, v108, v55, v86);
      v109 = v75;
      v76 = v95;
      v77 = v94;
      if (!v75)
      {
        swift_unknownObjectRelease();
        (*(v77 + 8))(v57, v76);
        (*(v105 + 8))(v73, v106);
        v46 = 0;
        v47 = v111;
        return v47 | (v46 << 8);
      }

      swift_unknownObjectRelease();
      v78 = v105;
      (*(v77 + 8))(v97, v76);
    }

    return (*(v78 + 8))(v100, v106);
  }

  (*(v49 + 8))(v50, v48);
  v47 = 0;
  v46 = 1;
  return v47 | (v46 << 8);
}

{
  v108 = a7;
  v92 = a4;
  v107 = a3;
  v104 = a2;
  v96 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v88 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Optional();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v87 - v17;
  swift_getAssociatedTypeWitness();
  v98 = a8;
  v99 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  v103 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v101 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v87 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v87 - v27;
  v106 = v24;
  v105 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v87 - v30;
  v91 = a1;
  v93 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v107;
  if (!*(v107 + 16))
  {

    goto LABEL_7;
  }

  v87 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_7:
    v46 = 1;
    (*(v105 + 56))(v28, 1, 1, v106);
    (*(v26 + 8))(v28, v25);
    v47 = 0;
    return v47 | (v46 << 16);
  }

  v37 = *(v33 + 56);
  v38 = v101;
  v39 = v102;
  v40 = v103;
  (*(v102 + 16))(v101, v37 + *(v102 + 72) * v34, v103);
  v41 = v87;
  (*(v39 + 32))(v87, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v109;
  v42(v41, v43, AssociatedConformanceWitness);
  v109 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v49 = v105;
  v48 = v106;
  (*(v105 + 56))(v28, 0, 1, v106);
  v50 = v100;
  (*(v49 + 32))(v100, v28, v48);
  v51 = v98;
  v52 = *(v98 + 40);
  v53 = v99;
  if ((v52(v50, v99, v98) & 1) == 0)
  {
    v54 = v96;
    v55 = v53;
    v56 = *(v96 + 16);
    v57 = v97;
    v58 = v51;
    v59 = v93;
    v107 = v96 + 16;
    v56(v97, v91, v93);
    (*(v54 + 56))(v57, 0, 1, v59);
    if (v52(v50, v55, v58))
    {
      v103 = v56;
      v104 = type metadata accessor for DecodingError();
      v109 = swift_allocError();
      v61 = v60;
      *v60 = MEMORY[0x1E69E7290];
      v62 = v59;
      v63 = v94;
      v64 = *(v94 + 16);
      v65 = v90;
      v66 = v95;
      v64(v90, v57, v95);
      v67 = v89;
      v64(v89, v65, v66);
      v68 = v96;
      if ((*(v96 + 48))(v67, 1, v62) == 1)
      {
        v69 = *(v63 + 8);
        v69(v67, v66);
        _CodingPathNode.path.getter(v92);
        v69(v65, v66);
      }

      else
      {
        v79 = v65;
        v80 = v88;
        (*(v68 + 32))(v88, v67, v62);
        v81 = _CodingPathNode.path.getter(v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v82 = v68;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v84 = v108;
        *(inited + 56) = v62;
        *(inited + 64) = v84;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v103(boxed_opaque_existential_0, v80, v62);
        v110 = v81;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v82 + 8))(v80, v62);
        v69 = *(v63 + 8);
        v69(v79, v66);
      }

      v78 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v104 - 8) + 104))(v61, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v69(v97, v66);
    }

    else
    {
      v70 = *(v104 + 24);
      v71 = *(v58 + 88);
      v72 = lazy protocol witness table accessor for type Int16 and conformance Int16();
      swift_unknownObjectRetain();
      v86 = v58;
      v73 = v100;
      v74 = v72;
      v75 = v109;
      v71(&v111, v100, v70, v92, v57, MEMORY[0x1E69E7290], v59, v74, v108, v55, v86);
      v109 = v75;
      v76 = v95;
      v77 = v94;
      if (!v75)
      {
        swift_unknownObjectRelease();
        (*(v77 + 8))(v57, v76);
        (*(v105 + 8))(v73, v106);
        v46 = 0;
        v47 = v111;
        return v47 | (v46 << 16);
      }

      swift_unknownObjectRelease();
      v78 = v105;
      (*(v77 + 8))(v97, v76);
    }

    return (*(v78 + 8))(v100, v106);
  }

  (*(v49 + 8))(v50, v48);
  v47 = 0;
  v46 = 1;
  return v47 | (v46 << 16);
}

{
  v107 = a7;
  v91 = a4;
  v106 = a3;
  v103 = a2;
  v95 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v87 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Optional();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v88 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v85 - v17;
  swift_getAssociatedTypeWitness();
  v97 = a8;
  v98 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = *(AssociatedTypeWitness - 8);
  v102 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v100 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v85 - v27;
  v105 = v24;
  v104 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v99 = &v85 - v30;
  v90 = a1;
  v92 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v106;
  if (!*(v106 + 16))
  {

    goto LABEL_6;
  }

  v86 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_6:
    (*(v104 + 56))(v28, 1, 1, v105);
    (*(v26 + 8))(v28, v25);
    return 0;
  }

  v37 = *(v33 + 56);
  v38 = v100;
  v39 = v101;
  v40 = v102;
  (*(v101 + 16))(v100, v37 + *(v101 + 72) * v34, v102);
  v41 = v86;
  (*(v39 + 32))(v86, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v108;
  v42(v41, v43, AssociatedConformanceWitness);
  v108 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v47 = v104;
  v46 = v105;
  (*(v104 + 56))(v28, 0, 1, v105);
  v48 = v99;
  (*(v47 + 32))(v99, v28, v46);
  v49 = v97;
  v50 = *(v97 + 40);
  v51 = v98;
  if (v50(v48, v98, v97))
  {
    (*(v47 + 8))(v48, v46);
    return 0;
  }

  v52 = v95;
  v53 = v51;
  v54 = *(v95 + 16);
  v55 = v96;
  v56 = v49;
  v57 = v92;
  v106 = v95 + 16;
  v54(v96, v90, v92);
  (*(v52 + 56))(v55, 0, 1, v57);
  if (v50(v48, v53, v56))
  {
    v102 = v54;
    v103 = type metadata accessor for DecodingError();
    v108 = swift_allocError();
    v59 = v58;
    *v58 = MEMORY[0x1E69E6810];
    v60 = v57;
    v61 = v93;
    v62 = *(v93 + 16);
    v63 = v89;
    v64 = v94;
    v62(v89, v55, v94);
    v65 = v88;
    v62(v88, v63, v64);
    v66 = v95;
    if ((*(v95 + 48))(v65, 1, v60) == 1)
    {
      v67 = *(v61 + 8);
      v67(v65, v64);
      _CodingPathNode.path.getter(v91);
      v67(v63, v64);
    }

    else
    {
      v77 = v63;
      v78 = v87;
      (*(v66 + 32))(v87, v65, v60);
      v79 = _CodingPathNode.path.getter(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v80 = v66;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v82 = v107;
      *(inited + 56) = v60;
      *(inited + 64) = v82;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v102(boxed_opaque_existential_0, v78, v60);
      v109[4] = v79;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v80 + 8))(v78, v60);
      v67 = *(v61 + 8);
      v67(v77, v64);
    }

    v76 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v103 - 8) + 104))(v59, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
    v67(v96, v64);
    return (*(v76 + 8))(v99, v105);
  }

  v68 = *(v103 + 24);
  v69 = *(v56 + 88);
  v70 = lazy protocol witness table accessor for type UInt and conformance UInt();
  swift_unknownObjectRetain();
  v84 = v56;
  v71 = v99;
  v72 = v70;
  v73 = v108;
  v69(v109, v99, v68, v91, v55, MEMORY[0x1E69E6810], v57, v72, v107, v53, v84);
  v108 = v73;
  v74 = v94;
  v75 = v93;
  if (v73)
  {
    swift_unknownObjectRelease();
    v76 = v104;
    (*(v75 + 8))(v96, v74);
    return (*(v76 + 8))(v99, v105);
  }

  swift_unknownObjectRelease();
  (*(v75 + 8))(v55, v74);
  (*(v104 + 8))(v71, v105);
  return v109[0];
}

{
  v108 = a7;
  v92 = a4;
  v107 = a3;
  v104 = a2;
  v96 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v88 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Optional();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v87 - v17;
  swift_getAssociatedTypeWitness();
  v98 = a8;
  v99 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  v103 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v101 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v87 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v87 - v27;
  v106 = v24;
  v105 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v87 - v30;
  v91 = a1;
  v93 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v107;
  if (!*(v107 + 16))
  {

    goto LABEL_7;
  }

  v87 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_7:
    v46 = 1;
    (*(v105 + 56))(v28, 1, 1, v106);
    (*(v26 + 8))(v28, v25);
    v47 = 0;
    return v47 | (v46 << 8);
  }

  v37 = *(v33 + 56);
  v38 = v101;
  v39 = v102;
  v40 = v103;
  (*(v102 + 16))(v101, v37 + *(v102 + 72) * v34, v103);
  v41 = v87;
  (*(v39 + 32))(v87, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v109;
  v42(v41, v43, AssociatedConformanceWitness);
  v109 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v49 = v105;
  v48 = v106;
  (*(v105 + 56))(v28, 0, 1, v106);
  v50 = v100;
  (*(v49 + 32))(v100, v28, v48);
  v51 = v98;
  v52 = *(v98 + 40);
  v53 = v99;
  if ((v52(v50, v99, v98) & 1) == 0)
  {
    v54 = v96;
    v55 = v53;
    v56 = *(v96 + 16);
    v57 = v97;
    v58 = v51;
    v59 = v93;
    v107 = v96 + 16;
    v56(v97, v91, v93);
    (*(v54 + 56))(v57, 0, 1, v59);
    if (v52(v50, v55, v58))
    {
      v103 = v56;
      v104 = type metadata accessor for DecodingError();
      v109 = swift_allocError();
      v61 = v60;
      *v60 = MEMORY[0x1E69E7508];
      v62 = v59;
      v63 = v94;
      v64 = *(v94 + 16);
      v65 = v90;
      v66 = v95;
      v64(v90, v57, v95);
      v67 = v89;
      v64(v89, v65, v66);
      v68 = v96;
      if ((*(v96 + 48))(v67, 1, v62) == 1)
      {
        v69 = *(v63 + 8);
        v69(v67, v66);
        _CodingPathNode.path.getter(v92);
        v69(v65, v66);
      }

      else
      {
        v79 = v65;
        v80 = v88;
        (*(v68 + 32))(v88, v67, v62);
        v81 = _CodingPathNode.path.getter(v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v82 = v68;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v84 = v108;
        *(inited + 56) = v62;
        *(inited + 64) = v84;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v103(boxed_opaque_existential_0, v80, v62);
        v110 = v81;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v82 + 8))(v80, v62);
        v69 = *(v63 + 8);
        v69(v79, v66);
      }

      v78 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v104 - 8) + 104))(v61, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v69(v97, v66);
    }

    else
    {
      v70 = *(v104 + 24);
      v71 = *(v58 + 88);
      v72 = lazy protocol witness table accessor for type UInt8 and conformance UInt8();
      swift_unknownObjectRetain();
      v86 = v58;
      v73 = v100;
      v74 = v72;
      v75 = v109;
      v71(&v111, v100, v70, v92, v57, MEMORY[0x1E69E7508], v59, v74, v108, v55, v86);
      v109 = v75;
      v76 = v95;
      v77 = v94;
      if (!v75)
      {
        swift_unknownObjectRelease();
        (*(v77 + 8))(v57, v76);
        (*(v105 + 8))(v73, v106);
        v46 = 0;
        v47 = v111;
        return v47 | (v46 << 8);
      }

      swift_unknownObjectRelease();
      v78 = v105;
      (*(v77 + 8))(v97, v76);
    }

    return (*(v78 + 8))(v100, v106);
  }

  (*(v49 + 8))(v50, v48);
  v47 = 0;
  v46 = 1;
  return v47 | (v46 << 8);
}

{
  v108 = a7;
  v92 = a4;
  v107 = a3;
  v104 = a2;
  v96 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v88 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Optional();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v87 - v17;
  swift_getAssociatedTypeWitness();
  v98 = a8;
  v99 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  v103 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v101 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v87 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v87 - v27;
  v106 = v24;
  v105 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v87 - v30;
  v91 = a1;
  v93 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v107;
  if (!*(v107 + 16))
  {

    goto LABEL_7;
  }

  v87 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_7:
    v46 = 1;
    (*(v105 + 56))(v28, 1, 1, v106);
    (*(v26 + 8))(v28, v25);
    v47 = 0;
    return v47 | (v46 << 16);
  }

  v37 = *(v33 + 56);
  v38 = v101;
  v39 = v102;
  v40 = v103;
  (*(v102 + 16))(v101, v37 + *(v102 + 72) * v34, v103);
  v41 = v87;
  (*(v39 + 32))(v87, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v109;
  v42(v41, v43, AssociatedConformanceWitness);
  v109 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v49 = v105;
  v48 = v106;
  (*(v105 + 56))(v28, 0, 1, v106);
  v50 = v100;
  (*(v49 + 32))(v100, v28, v48);
  v51 = v98;
  v52 = *(v98 + 40);
  v53 = v99;
  if ((v52(v50, v99, v98) & 1) == 0)
  {
    v54 = v96;
    v55 = v53;
    v56 = *(v96 + 16);
    v57 = v97;
    v58 = v51;
    v59 = v93;
    v107 = v96 + 16;
    v56(v97, v91, v93);
    (*(v54 + 56))(v57, 0, 1, v59);
    if (v52(v50, v55, v58))
    {
      v103 = v56;
      v104 = type metadata accessor for DecodingError();
      v109 = swift_allocError();
      v61 = v60;
      *v60 = MEMORY[0x1E69E75F8];
      v62 = v59;
      v63 = v94;
      v64 = *(v94 + 16);
      v65 = v90;
      v66 = v95;
      v64(v90, v57, v95);
      v67 = v89;
      v64(v89, v65, v66);
      v68 = v96;
      if ((*(v96 + 48))(v67, 1, v62) == 1)
      {
        v69 = *(v63 + 8);
        v69(v67, v66);
        _CodingPathNode.path.getter(v92);
        v69(v65, v66);
      }

      else
      {
        v79 = v65;
        v80 = v88;
        (*(v68 + 32))(v88, v67, v62);
        v81 = _CodingPathNode.path.getter(v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v82 = v68;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v84 = v108;
        *(inited + 56) = v62;
        *(inited + 64) = v84;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v103(boxed_opaque_existential_0, v80, v62);
        v110 = v81;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v82 + 8))(v80, v62);
        v69 = *(v63 + 8);
        v69(v79, v66);
      }

      v78 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v104 - 8) + 104))(v61, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v69(v97, v66);
    }

    else
    {
      v70 = *(v104 + 24);
      v71 = *(v58 + 88);
      v72 = lazy protocol witness table accessor for type UInt16 and conformance UInt16();
      swift_unknownObjectRetain();
      v86 = v58;
      v73 = v100;
      v74 = v72;
      v75 = v109;
      v71(&v111, v100, v70, v92, v57, MEMORY[0x1E69E75F8], v59, v74, v108, v55, v86);
      v109 = v75;
      v76 = v95;
      v77 = v94;
      if (!v75)
      {
        swift_unknownObjectRelease();
        (*(v77 + 8))(v57, v76);
        (*(v105 + 8))(v73, v106);
        v46 = 0;
        v47 = v111;
        return v47 | (v46 << 16);
      }

      swift_unknownObjectRelease();
      v78 = v105;
      (*(v77 + 8))(v97, v76);
    }

    return (*(v78 + 8))(v100, v106);
  }

  (*(v49 + 8))(v50, v48);
  v47 = 0;
  v46 = 1;
  return v47 | (v46 << 16);
}

{
  v107 = a7;
  v91 = a4;
  v106 = a3;
  v103 = a2;
  v95 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v87 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Optional();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v88 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v85 - v17;
  swift_getAssociatedTypeWitness();
  v97 = a8;
  v98 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = *(AssociatedTypeWitness - 8);
  v102 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v100 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v85 - v27;
  v105 = v24;
  v104 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v99 = &v85 - v30;
  v90 = a1;
  v92 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v106;
  if (!*(v106 + 16))
  {

    goto LABEL_6;
  }

  v86 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_6:
    (*(v104 + 56))(v28, 1, 1, v105);
    (*(v26 + 8))(v28, v25);
    return 0;
  }

  v37 = *(v33 + 56);
  v38 = v100;
  v39 = v101;
  v40 = v102;
  (*(v101 + 16))(v100, v37 + *(v101 + 72) * v34, v102);
  v41 = v86;
  (*(v39 + 32))(v86, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v108;
  v42(v41, v43, AssociatedConformanceWitness);
  v108 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v47 = v104;
  v46 = v105;
  (*(v104 + 56))(v28, 0, 1, v105);
  v48 = v99;
  (*(v47 + 32))(v99, v28, v46);
  v49 = v97;
  v50 = *(v97 + 40);
  v51 = v98;
  if (v50(v48, v98, v97))
  {
    (*(v47 + 8))(v48, v46);
    return 0;
  }

  v52 = v95;
  v53 = v51;
  v54 = *(v95 + 16);
  v55 = v96;
  v56 = v49;
  v57 = v92;
  v106 = v95 + 16;
  v54(v96, v90, v92);
  (*(v52 + 56))(v55, 0, 1, v57);
  if (v50(v48, v53, v56))
  {
    v102 = v54;
    v103 = type metadata accessor for DecodingError();
    v108 = swift_allocError();
    v59 = v58;
    *v58 = MEMORY[0x1E69E76D8];
    v60 = v57;
    v61 = v93;
    v62 = *(v93 + 16);
    v63 = v89;
    v64 = v94;
    v62(v89, v55, v94);
    v65 = v88;
    v62(v88, v63, v64);
    v66 = v95;
    if ((*(v95 + 48))(v65, 1, v60) == 1)
    {
      v67 = *(v61 + 8);
      v67(v65, v64);
      _CodingPathNode.path.getter(v91);
      v67(v63, v64);
    }

    else
    {
      v77 = v63;
      v78 = v87;
      (*(v66 + 32))(v87, v65, v60);
      v79 = _CodingPathNode.path.getter(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v80 = v66;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v82 = v107;
      *(inited + 56) = v60;
      *(inited + 64) = v82;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v102(boxed_opaque_existential_0, v78, v60);
      v109[4] = v79;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v80 + 8))(v78, v60);
      v67 = *(v61 + 8);
      v67(v77, v64);
    }

    v76 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v103 - 8) + 104))(v59, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
    v67(v96, v64);
    return (*(v76 + 8))(v99, v105);
  }

  v68 = *(v103 + 24);
  v69 = *(v56 + 88);
  v70 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  swift_unknownObjectRetain();
  v84 = v56;
  v71 = v99;
  v72 = v70;
  v73 = v108;
  v69(v109, v99, v68, v91, v55, MEMORY[0x1E69E76D8], v57, v72, v107, v53, v84);
  v108 = v73;
  v74 = v94;
  v75 = v93;
  if (v73)
  {
    swift_unknownObjectRelease();
    v76 = v104;
    (*(v75 + 8))(v96, v74);
    return (*(v76 + 8))(v99, v105);
  }

  swift_unknownObjectRelease();
  (*(v75 + 8))(v55, v74);
  (*(v104 + 8))(v71, v105);
  return v109[0];
}

uint64_t _PlistKeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v73 = a4;
  v69 = a9;
  v70 = a8;
  v58 = a1;
  v59 = a5;
  v68 = a3;
  v75 = a2;
  v76 = a10;
  v14 = type metadata accessor for Optional();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v55 - v15;
  swift_getAssociatedTypeWitness();
  v63 = a11;
  v64 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v67 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v22 = swift_getAssociatedTypeWitness();
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v55 - v25;
  v72 = v22;
  v71 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v55 - v28;
  v60 = a6;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  v32 = v73;
  if (!*(v73 + 16))
  {

    goto LABEL_6;
  }

  v55 = v29;
  v56 = v21;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    v44 = 1;
    (*(v71 + 56))(v26, 1, 1, v72);
    (*(v24 + 8))(v26, v23);
    goto LABEL_7;
  }

  v36 = v65;
  v37 = v66;
  v38 = v67;
  (*(v66 + 16))(v65, *(v32 + 56) + *(v66 + 72) * v33, v67);
  v39 = v56;
  (*(v37 + 32))(v56, v36, v38);
  v40 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v41 = swift_checkMetadataState();
  v42 = v74;
  v40(v39, v41, AssociatedConformanceWitness);
  if (v42)
  {
    (*(v37 + 8))(v39, v38);
    return swift_unknownObjectRelease();
  }

  (*(v37 + 8))(v39, v38);
  swift_unknownObjectRelease();
  v48 = v71;
  v47 = v72;
  (*(v71 + 56))(v26, 0, 1, v72);
  v49 = v55;
  (*(v48 + 32))(v55, v26, v47);
  if (((*(v63 + 40))(v49) & 1) == 0)
  {
    v50 = v60;
    v51 = *(v60 - 8);
    v52 = v57;
    (*(v51 + 16))(v57, v75, v60);
    (*(v51 + 56))(v52, 0, 1, v50);
    v53 = v69;
    v54 = v70;
    _PlistDecoder.unwrapGeneric<A, B>(_:as:for:_:)(v49, v59, v52, v70, v50, a12, v76, v69);
    (*(v61 + 8))(v52, v62);
    (*(v71 + 8))(v49, v72);
    v44 = 0;
    v46 = v54;
    v45 = v53;
    return (*(*(v46 - 8) + 56))(v45, v44, 1);
  }

  (*(v48 + 8))(v49, v47);
  v44 = 1;
LABEL_7:
  v45 = v69;
  v46 = v70;
  return (*(*(v46 - 8) + 56))(v45, v44, 1);
}

uint64_t __NSCoderDecodeObjectOfClassForKey(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return [a1 decodeTopLevelObjectOfClass:a2 forKey:a3 error:?];
  }

  else
  {
    return [a1 decodeObjectOfClass:a2 forKey:a3];
  }
}

uint64_t __PlistEncoderBPlist.container<A>(keyedBy:)()
{
  if ((*(*v0 + 240))())
  {
    v1 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v3 = v2;
    v5 = v4;
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v3;
    *(v6 + 32) = v5;
    *(v6 + 40) = 96;
    *(v6 + 48) = -1;

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_5:
    type metadata accessor for _PlistKeyedEncodingContainerBPlist();

    swift_getWitnessTable();
    return KeyedEncodingContainer.init<A>(_:)();
  }

  result = specialized BidirectionalCollection.last.getter(v0[2]);
  if (result)
  {
    if ((*(result + 40) & 0xF0) == 0x60)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(uint64_t a1)
{
  v129 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  v127 = 0;
  v128 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC10Foundation21_BPlistEncodingFormatV9ReferenceC_Tt0g5(MEMORY[0x1E69E7CC0]);
  v120[2] = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC10Foundation21_BPlistEncodingFormatV9ReferenceC_Tt0g5(v2);
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0);
  specialized ContiguousArray.reserveCapacity(_:)();

  if (!v3)
  {
LABEL_200:

    return v127;
  }

  v4 = 0;
  v5 = a1 + 32;
  v103 = vdupq_n_s64(0xFFFFFFFFFFFFFuLL);
  v104 = vdupq_n_s64(0x7FF0000000000000uLL);
  v100 = xmmword_181234410;
  v101 = a1 + 32;
  v99 = v3;
  while (1)
  {
    v9 = *(v5 + 16 * v4);
    v10 = v127;
    v11 = v128 + 32;
    v12 = *(v128 + 16);
    if (v127)
    {

      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, v11, v12, (v10 + 16), v10 + 32);
      v14 = v13;
      LOBYTE(v16) = v15;

      if ((v14 & 1) == 0)
      {
        goto LABEL_222;
      }

      v19 = v10;
      goto LABEL_188;
    }

    if (v12)
    {
      break;
    }

    LOBYTE(v16) = 0;
LABEL_187:
    v19 = 0;
LABEL_188:

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v91 = v128;
    v92 = *(v128 + 16);
    if (v19)
    {
      if (MEMORY[0x1865CA180](*(v19 + 16) & 0x3FLL) >= v92)
      {
        v10 = v127;
        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          if (!v10)
          {
            goto LABEL_225;
          }

          v94 = _HashTable.copy()();

          v127 = v94;
          v10 = v94;
          v5 = v101;
        }

        if (!v10)
        {
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          v95 = v17;
          v100 = v17;
LABEL_227:
          outlined copy of _BPlistEncodingFormat.Reference.Backing(v95, *(&v95 + 1), v5, v16);
          outlined copy of _BPlistEncodingFormat.Reference.Backing(v100, *(&v100 + 1), v4, v10);
          outlined destroy of (_BPlistEncodingFormat.Reference.Backing, _BPlistEncodingFormat.Reference.Backing)(&v121);
          __break(1u);
        }

        _HashTable.UnsafeHandle.subscript.setter();
      }

      else
      {
        v93 = *(v19 + 24) & 0x3FLL;
        if (v92 > 0xF || v93)
        {
          goto LABEL_3;
        }

        v127 = 0;
      }
    }

    else if (v92 > 0xF)
    {
      v93 = 0;
LABEL_3:
      v6 = MEMORY[0x1865CA1B0](v92);
      if (v93 <= v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v93;
      }

      v8 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy10Foundation21_BPlistEncodingFormatV9ReferenceCG_Tt2g5Tm(v91, v7, 0, v93, specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));

      v127 = v8;
    }

    ++v4;

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    specialized ContiguousArray._endMutation()();

    if (v4 == v3)
    {
      goto LABEL_200;
    }
  }

  v102 = v4;
  while (1)
  {
    v17 = *(*v11 + 16);
    v5 = *(*v11 + 32);
    LODWORD(v16) = *(*v11 + 40);
    v18 = *(v9 + 16);
    v22 = *(v9 + 16);
    v4 = *(v9 + 32);
    LODWORD(v10) = *(v9 + 40);
    v121 = v17;
    v122 = v5;
    v123 = v16;
    v124 = v18;
    v125 = v4;
    v126 = v10;
    v23 = v16 >> 4;
    if (v16 >> 4 <= 2)
    {
      if (v23)
      {
        if (v23 == 1)
        {
          if ((v10 & 0xF0) == 0x10)
          {
            goto LABEL_61;
          }
        }

        else if (v23 == 2 && (v10 & 0xF0) == 0x20)
        {
LABEL_61:
          __s1e = v17.i64[0];
          result = outlined destroy of (_BPlistEncodingFormat.Reference.Backing, _BPlistEncodingFormat.Reference.Backing)(&v121);
          if (__s1e == v22)
          {
            goto LABEL_222;
          }

          goto LABEL_16;
        }
      }

      else if (v10 < 0x10)
      {
        v32 = v17.u64[1];
        if (v16)
        {
          if (v10)
          {
            v33 = vmovn_s64(vceqq_s64(v17, v18));
            if (v33.i32[0] & v33.i32[1])
            {
              goto LABEL_226;
            }

            v34 = v17.i64[0];
            __na = v18.u64[1];
            __s1c = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined copy of _BPlistEncodingFormat.Reference.Backing(v34, v32, v5, v16);
            outlined copy of _BPlistEncodingFormat.Reference.Backing(v22, __na, v4, v10);
            result = outlined destroy of (_BPlistEncodingFormat.Reference.Backing, _BPlistEncodingFormat.Reference.Backing)(&v121);
            if (__s1c)
            {
              goto LABEL_222;
            }

            goto LABEL_16;
          }
        }

        else if ((v10 & 1) == 0)
        {
          __s1f = v17.i64[0];
          __nb = v18.u64[1];
          v98 = type metadata accessor for NSObject();
          v96 = __s1f;
          LOBYTE(__s1f) = String._bridgeToObjectiveCImpl()();
          v97 = String._bridgeToObjectiveCImpl()();
          outlined copy of _BPlistEncodingFormat.Reference.Backing(v96, v32, v5, v16);
          outlined copy of _BPlistEncodingFormat.Reference.Backing(v22, __nb, v4, v10);

          LOBYTE(v16) = __s1f;
          v5 = v97;
          LOBYTE(v10) = v98;
          v37 = static NSObject.== infix(_:_:)();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          outlined destroy of (_BPlistEncodingFormat.Reference.Backing, _BPlistEncodingFormat.Reference.Backing)(&v121);

          if (v37)
          {
            goto LABEL_222;
          }

          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }

    if (v16 >> 4 <= 6)
    {
      if (v23 == 3)
      {
        if ((v10 & 0xF0) == 0x30)
        {
          __s1 = vzip1q_s64(v17, v18);
          result = outlined destroy of (_BPlistEncodingFormat.Reference.Backing, _BPlistEncodingFormat.Reference.Backing)(&v121);
          v17 = __s1;
          if (vmovn_s64(vceqq_f64(vdupq_laneq_s64(__s1, 1), __s1)).u8[0])
          {
            goto LABEL_222;
          }

          v18 = v104;
          v35 = vmovn_s64(vceqq_s64(vandq_s8(__s1, v104), v104));
          v36 = vuzp1_s16(v35, v35);
          v36.i32[1] = vuzp1_s16(v36, vmovn_s64(vtstq_s64(*&__s1, v103))).i32[1];
          if (vminv_u16(v36))
          {
            goto LABEL_222;
          }

          goto LABEL_16;
        }
      }

      else if (v23 == 4 && (v10 & 0xF0) == 0x40)
      {
        LODWORD(v10) = v17.i32[0];
        v24 = *v17.i32;
        result = outlined destroy of (_BPlistEncodingFormat.Reference.Backing, _BPlistEncodingFormat.Reference.Backing)(&v121);
        if (v24 == *&v22)
        {
          goto LABEL_222;
        }

        v25 = (~v10 & 0x7F800000) != 0 || (v10 & 0x7FFFFF) == 0;
        v26 = !v25 && (v22 & 0x7F800000) == 2139095040;
        if (v26 && (v22 & 0x7FFFFF) != 0)
        {
          goto LABEL_222;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v23 != 7)
    {
      break;
    }

    if ((v10 & 0xF0) == 0x70)
    {
      __s1d = vzip1q_s64(v17, v18);
      result = outlined destroy of (_BPlistEncodingFormat.Reference.Backing, _BPlistEncodingFormat.Reference.Backing)(&v121);
      if (vmovn_s64(vceqq_f64(vdupq_laneq_s64(__s1d, 1), __s1d)).u32[0])
      {
        goto LABEL_222;
      }

      goto LABEL_16;
    }

LABEL_15:
    __s1_8 = v18.u64[1];
    outlined copy of _BPlistEncodingFormat.Reference.Backing(v17.i64[0], v17.u64[1], v5, v16);
    outlined copy of _BPlistEncodingFormat.Reference.Backing(v22, __s1_8, v4, v10);
    result = outlined destroy of (_BPlistEncodingFormat.Reference.Backing, _BPlistEncodingFormat.Reference.Backing)(&v121);
LABEL_16:
    v11 += 8;
    if (!--v12)
    {
      LOBYTE(v16) = 0;
      v3 = v99;
      v5 = v101;
      v4 = v102;
      goto LABEL_187;
    }
  }

  if (v23 != 8 || (v10 & 0xF0) != 0x80)
  {
    goto LABEL_15;
  }

  v28 = v17.i64[1] >> 62;
  if (v17.i64[1] >> 62 == 3)
  {
    v29 = 0;
    v30 = vmovn_s64(vceqq_s64(v17, xmmword_181234410));
    if ((vand_s8(v30, vdup_lane_s32(v30, 1)).u32[0] & 1) != 0 && v18.i64[1] >> 62 == 3)
    {
      v31 = vmovn_s64(vceqq_s64(v18, xmmword_181234410));
      if (vand_s8(v31, vdup_lane_s32(v31, 1)).u32[0])
      {
        v95 = xmmword_181234410;
        goto LABEL_227;
      }

LABEL_73:
      v29 = 0;
    }
  }

  else if (v28 > 1)
  {
    if (v28 != 2)
    {
      goto LABEL_73;
    }

    v38 = *(v17.i64[0] + 16);
    v39 = *(v17.i64[0] + 24);
    v40 = __OFSUB__(v39, v38);
    v29 = v39 - v38;
    if (v40)
    {
      goto LABEL_204;
    }
  }

  else if (v28)
  {
    if (__OFSUB__(v17.i32[1], v17.i32[0]))
    {
      goto LABEL_203;
    }

    v29 = v17.i32[1] - v17.i32[0];
  }

  else
  {
    v29 = v17.u8[14];
  }

  v41 = v18.i64[1] >> 62;
  if ((v18.i64[1] >> 62) <= 1)
  {
    if (v41)
    {
      LODWORD(v42) = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
        goto LABEL_202;
      }

      v42 = v42;
      if (v29 == v42)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v42 = v18.u8[14];
      if (v29 == v18.u8[14])
      {
        goto LABEL_86;
      }
    }

    goto LABEL_15;
  }

  if (v41 != 2)
  {
    if (!v29)
    {
      goto LABEL_223;
    }

    goto LABEL_15;
  }

  v44 = *(v22 + 16);
  v43 = *(v22 + 24);
  v40 = __OFSUB__(v43, v44);
  v42 = v43 - v44;
  if (v40)
  {
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    v95 = v17;
    v100 = v18;
    goto LABEL_227;
  }

  if (v29 != v42)
  {
    goto LABEL_15;
  }

LABEL_86:
  if (v29 < 1)
  {
    goto LABEL_223;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      memset(v120, 0, 14);
      if (v41)
      {
        if (v41 == 2)
        {
          v45 = *(v22 + 16);
          v42 = *(v22 + 24);
          v61 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (!v61)
          {
            goto LABEL_234;
          }

          v62 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v40 = __OFSUB__(v45, v62);
          v63 = v45 - v62;
          if (v40)
          {
            goto LABEL_211;
          }

          v40 = __OFSUB__(v42, v45);
          v45 = v42 - v45;
          if (v40)
          {
            goto LABEL_236;
          }

          v48 = (v63 + v61);
          if (!(v63 + v61))
          {
            goto LABEL_235;
          }

          v64 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          if (v64 >= v45)
          {
            v64 = v45;
          }
        }

        else
        {
          v45 = v22;
          v64 = (v22 >> 32) - v22;
          if (v22 >> 32 < v22)
          {
            goto LABEL_209;
          }

          v42 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (!v42)
          {
            goto LABEL_229;
          }

          v85 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v45 = v22 - v85;
          if (__OFSUB__(v22, v85))
          {
            goto LABEL_214;
          }

          v48 = (v45 + v42);
          if (!(v45 + v42))
          {
            goto LABEL_229;
          }

          if (*((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v64)
          {
            v64 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          }
        }

        __s1a = v64;
        result = v17.i64[0];
LABEL_162:
        v86 = v16;
        v16 = v18.u64[1];
        outlined copy of _BPlistEncodingFormat.Reference.Backing(result, v17.u64[1], v5, v86);
        outlined copy of _BPlistEncodingFormat.Reference.Backing(v22, v16, v4, v10);

        v78 = v120;
        v79 = v48;
LABEL_168:
        v80 = __s1a;
        goto LABEL_184;
      }

      v116 = v22;
      v117 = v18.i32[2];
      v75 = v18.i64[1] >> 40;
      v118 = v18.i8[12];
      result = v17.i64[0];
LABEL_147:
      v76 = v18.u8[14];
      v119 = v75;
      v77 = v16;
      v16 = v18.u64[1];
      outlined copy of _BPlistEncodingFormat.Reference.Backing(result, v17.u64[1], v5, v77);
      outlined copy of _BPlistEncodingFormat.Reference.Backing(v22, v16, v4, v10);

      v78 = v120;
      v79 = &v116;
      v80 = v76;
      goto LABEL_184;
    }

    v45 = v17.i64[1] & 0x3FFFFFFFFFFFFFFFLL;
    v49 = *((v17.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v49)
    {
      v42 = *(v17.i64[0] + 16);
      v50 = *((v17.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v40 = __OFSUB__(v42, v50);
      v45 = v42 - v50;
      if (v40)
      {
        goto LABEL_206;
      }

      v21 = (v45 + v49);
      if (v41 != 2)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v21 = 0;
      if (v41 != 2)
      {
LABEL_102:
        if (v41 != 1)
        {
          v120[0] = v22;
          LODWORD(v120[1]) = v18.i32[2];
          WORD2(v120[1]) = v18.i16[6];
          if (!v21)
          {
            goto LABEL_230;
          }

          v87 = v21;
          __s1a = v18.u8[14];
          result = v17.i64[0];
          goto LABEL_167;
        }

        v45 = v22;
        v51 = (v22 >> 32) - v22;
        if (v22 >> 32 < v22)
        {
          goto LABEL_212;
        }

        v42 = v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL;
        v52 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (!v52)
        {
          goto LABEL_231;
        }

        v53 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v45 = v22 - v53;
        if (__OFSUB__(v22, v53))
        {
          goto LABEL_217;
        }

        v42 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v42 < v51)
        {
          v51 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        if (!v21)
        {
          goto LABEL_232;
        }

        v54 = (v45 + v52);
        if (!(v45 + v52))
        {
          goto LABEL_233;
        }

LABEL_174:
        __s1b = v21;
        if (v21 == v54)
        {
          goto LABEL_223;
        }

        __n = v51;
        result = v17.i64[0];
LABEL_183:
        v89 = v16;
        v16 = v18.u64[1];
        outlined copy of _BPlistEncodingFormat.Reference.Backing(result, v17.u64[1], v5, v89);
        outlined copy of _BPlistEncodingFormat.Reference.Backing(v22, v16, v4, v10);

        v78 = __s1b;
        v79 = v54;
        v80 = __n;
LABEL_184:
        v90 = memcmp(v78, v79, v80);
        outlined destroy of (_BPlistEncodingFormat.Reference.Backing, _BPlistEncodingFormat.Reference.Backing)(&v121);

        if (!v90)
        {
          goto LABEL_222;
        }

        goto LABEL_16;
      }
    }

    v65 = *(v22 + 16);
    v45 = *(v22 + 24);
    v42 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v42)
    {
      v66 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v40 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v40)
      {
        goto LABEL_220;
      }

      v54 = (v67 + v42);
      v40 = __OFSUB__(v45, v65);
      v68 = v45 - v65;
      if (v40)
      {
        goto LABEL_215;
      }
    }

    else
    {
      v54 = 0;
      v40 = __OFSUB__(v45, v65);
      v68 = v45 - v65;
      if (v40)
      {
        goto LABEL_215;
      }
    }

    v51 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v51 >= v68)
    {
      v51 = v68;
    }

    if (!v21)
    {
      goto LABEL_238;
    }

    if (!v54)
    {
      goto LABEL_237;
    }

    goto LABEL_174;
  }

  if (v28)
  {
    result = v17.i64[0];
    if (v17.i32[0] > v17.i64[0] >> 32)
    {
      goto LABEL_205;
    }

    v55 = *((v17.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v55)
    {
      v56 = *((v17.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if (__OFSUB__(v17.i32[0], v56))
      {
        goto LABEL_207;
      }

      v21 = (v17.i32[0] - v56 + v55);
      if (v41 != 2)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v21 = 0;
      if (v41 != 2)
      {
LABEL_115:
        if (v41 == 1)
        {
          v57 = (v22 >> 32) - v22;
          if (v22 >> 32 < v22)
          {
            goto LABEL_216;
          }

          v58 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (!v58)
          {
            goto LABEL_243;
          }

          v59 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v60 = v22 - v59;
          if (__OFSUB__(v22, v59))
          {
            goto LABEL_219;
          }

          if (*((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v57)
          {
            v57 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          }

          if (!v21)
          {
            goto LABEL_244;
          }

          v54 = (v60 + v58);
          if (!(v60 + v58))
          {
            goto LABEL_245;
          }

          goto LABEL_181;
        }

        v120[0] = v22;
        LODWORD(v120[1]) = v18.i32[2];
        WORD2(v120[1]) = v18.i16[6];
        if (!v21)
        {
          goto LABEL_242;
        }

        v87 = v21;
        __s1a = v18.u8[14];
LABEL_167:
        v88 = v16;
        v16 = v18.u64[1];
        outlined copy of _BPlistEncodingFormat.Reference.Backing(result, v17.u64[1], v5, v88);
        outlined copy of _BPlistEncodingFormat.Reference.Backing(v22, v16, v4, v10);

        v79 = v120;
        v78 = v87;
        goto LABEL_168;
      }
    }

    v69 = *(v22 + 16);
    v70 = *(v22 + 24);
    v71 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v71)
    {
      v72 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v40 = __OFSUB__(v69, v72);
      v73 = v69 - v72;
      if (v40)
      {
        goto LABEL_221;
      }

      v54 = (v73 + v71);
      v40 = __OFSUB__(v70, v69);
      v74 = v70 - v69;
      if (v40)
      {
        goto LABEL_218;
      }
    }

    else
    {
      v54 = 0;
      v40 = __OFSUB__(v70, v69);
      v74 = v70 - v69;
      if (v40)
      {
        goto LABEL_218;
      }
    }

    v57 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v57 >= v74)
    {
      v57 = v74;
    }

    if (!v21)
    {
      goto LABEL_247;
    }

    if (!v54)
    {
      goto LABEL_246;
    }

LABEL_181:
    __s1b = v21;
    if (v21 == v54)
    {
      goto LABEL_223;
    }

    __n = v57;
    goto LABEL_183;
  }

  result = v17.i64[0];
  v120[0] = v17.i64[0];
  LODWORD(v120[1]) = v17.i32[2];
  WORD2(v120[1]) = v17.i16[6];
  if (!v41)
  {
    v116 = v22;
    v117 = v18.i32[2];
    v75 = v18.i64[1] >> 40;
    v118 = v18.i8[12];
    goto LABEL_147;
  }

  if (v41 != 1)
  {
    v45 = *(v22 + 16);
    v42 = *(v22 + 24);
    v81 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (!v81)
    {
      goto LABEL_239;
    }

    v82 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v40 = __OFSUB__(v45, v82);
    v83 = v45 - v82;
    if (v40)
    {
      goto LABEL_208;
    }

    v40 = __OFSUB__(v42, v45);
    v84 = v42 - v45;
    if (v40)
    {
      goto LABEL_241;
    }

    v48 = (v83 + v81);
    if (!(v83 + v81))
    {
      goto LABEL_240;
    }

    v46 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v46 >= v84)
    {
      v46 = v84;
    }

LABEL_154:
    __s1a = v46;
    goto LABEL_162;
  }

  v45 = v22;
  v46 = (v22 >> 32) - v22;
  if (v22 >> 32 < v22)
  {
    goto LABEL_210;
  }

  v42 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (v42)
  {
    v47 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v45 = v22 - v47;
    if (__OFSUB__(v22, v47))
    {
      goto LABEL_213;
    }

    v48 = (v45 + v42);
    if (v45 + v42)
    {
      if (*((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v46)
      {
        v46 = *((v18.i64[1] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      }

      goto LABEL_154;
    }
  }

  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  if (!v21)
  {
LABEL_232:
    __break(1u);
  }

LABEL_233:
  __break(1u);
LABEL_234:
  if (!__OFSUB__(v42, v45))
  {
LABEL_235:
    __break(1u);
  }

LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  if (!__OFSUB__(v42, v45))
  {
LABEL_240:
    __break(1u);
  }

LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  if (!v21)
  {
LABEL_244:
    __break(1u);
  }

LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
  return result;
}

uint64_t specialized OrderedSet._reserveCapacity(_:persistent:)(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  v5 = result;
  specialized ContiguousArray.reserveCapacity(_:)();
  v6 = *v2;
  if (*v2)
  {
    v7 = *(v6 + 16) & 0x3FLL;
    v8 = MEMORY[0x1865CA1B0](v5);
    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(v6 + 24) & 0x3FLL;
    }
  }

  else
  {
    v8 = MEMORY[0x1865CA1B0](v5);
    v7 = 0;
    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = v3[1];
  if (v7 < v8)
  {
    if (v9 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

LABEL_23:
    v14 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy10Foundation21_BPlistEncodingFormatV9ReferenceCG_Tt2g5Tm(v10, v11, 0, v9, specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));

    *v3 = v14;
    return result;
  }

  if (v9 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  result = MEMORY[0x1865CA1B0](*(v10 + 16));
  if (result <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  if (v13 < v7)
  {
    if (v9 <= v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_23;
  }

  if (!v6 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v15 = *v3;
    if (*v3)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v9)
    {
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v3)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v15 = _HashTable.copy()();

  *v3 = v15;
  if (!v15)
  {
    goto LABEL_32;
  }

LABEL_28:
  if ((*(v15 + 24) & 0x3FLL) != v9)
  {
    *(v15 + 24) = *(v15 + 24) & 0xFFFFFFFFFFFFFFC0 | v9 & 0x3F;
  }

  return result;
}

{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1865CA1B0](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1865CA1B0](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  result = MEMORY[0x1865CA1B0](*(v7 + 16));
  if (result <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = result;
  }

  if (v17 < v11)
  {
    if (v13 <= v17)
    {
      v15 = v17;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v18 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy10Foundation21_BPlistEncodingFormatV9ReferenceCG_Tt2g5Tm(v7, v15, 0, v13, specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));

    *v3 = v18;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v19 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v19 = _HashTable.copy()();

  *v3 = v19;
  if (!v19)
  {
    goto LABEL_39;
  }

LABEL_35:
  if ((*(v19 + 24) & 0x3FLL) != v13)
  {
    *(v19 + 24) = *(v19 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v59 = a3;
  v60 = a5;
  v9 = *(a3 + 16);
  v65 = type metadata accessor for Optional();
  v61 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v11 = (&v56 - v10);
  v12 = *(a4 - 1);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = v5;
  v17 = *v5;
  (*(v12 + 16))(v16, a1, a4, v14);
  v18 = v17[5];
  v19 = *(v9 - 1);
  v20 = *(v19 + 16);
  v58 = a2;
  v20(v11, a2, v9);
  (*(v19 + 56))(v11, 0, 1, v9);
  v21 = *(v59 + 24);

  v22 = v62;
  v23 = __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(v16, v18, v11, a4, v9, v60, v21);
  if (v22)
  {

    (*(v61 + 8))(v11, v65);
    return (*(v12 + 8))(v16, a4);
  }

  else
  {
    v25 = v61;
    v60 = v17;
    v62 = 0;
    if (v23)
    {
      v59 = v23;

      (*(v25 + 8))(v11, v65);
    }

    else
    {
      v26 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v59 = v27;
      v56 = v28;

      (*(v25 + 8))(v11, v65);
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v29 = swift_allocObject();
      v30 = v59;
      *(v29 + 16) = v26;
      *(v29 + 24) = v30;
      *(v29 + 32) = v56;
      *(v29 + 40) = 96;
      v59 = v29;
      *(v29 + 48) = -1;
    }

    v31 = v57;
    (*(v12 + 8))(v16, a4);
    v32 = v31[1];
    v33 = dispatch thunk of CodingKey.stringValue.getter();
    v35 = v34;
    if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v33, v34))
    {

      v36 = MEMORY[0x1865CB280](v33, v35);
      v37 = 1;
    }

    else
    {
      v38 = String._bridgeToObjectiveCImpl()();

      v36 = [v38 hash];
      swift_unknownObjectRelease();
      v37 = 0;
    }

    v39 = v60;
    v40 = v60[11];
    v41 = *(v40 + 16);
    v42 = *(v40 + 24);
    v43 = *(v40 + 32);
    *(v40 + 16) = v33;
    *(v40 + 24) = v35;
    *(v40 + 32) = v36;
    v44 = *(v40 + 40);
    *(v40 + 40) = v37;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v41, v42, v43, v44);

    v45 = specialized Set._Variant.insert(_:)(&v63, v40);

    v46 = v63;
    if (v45)
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v47 = swift_allocObject();
      *(v47 + 24) = 0;
      *(v47 + 32) = 0;
      *(v47 + 16) = 2;
      *(v47 + 40) = -112;
      *(v47 + 48) = -1;

      v39[11] = v47;
    }

    v48 = *(v32 + 40);
    if ((v48 & 0xF0) == 0x60)
    {
      v50 = v32[3];
      v49 = v32[4];
      v63 = v32[2];
      v51 = v63;
      *&v64 = v50;
      *(&v64 + 1) = v49;
      v32[3] = 0;
      v32[4] = 0;
      v32[2] = 2;
      *(v32 + 40) = -112;

      outlined consume of _BPlistEncodingFormat.Reference.Backing(v51, v50, v49, v48);
      specialized OrderedDictionary.subscript.setter(v59, v46);
      v52 = v32[2];
      v53 = v32[3];
      v54 = v32[4];
      v32[2] = v63;
      *(v32 + 3) = v64;
      v55 = *(v32 + 40);
      *(v32 + 40) = 96;
      return outlined consume of _BPlistEncodingFormat.Reference.Backing(v52, v53, v54, v55);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v50 = a7;
  v8 = v7;
  v48 = a6;
  v49 = a5;
  v13 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  if (swift_dynamicCastMetatype())
  {
    (*(v13 + 16))(v21, a1, a4);
    swift_dynamicCast();
    v22 = *(v8 + 88);
    v23 = *(v22 + 16);
    v24 = *(v22 + 24);
    v25 = *(v22 + 32);
    *(v22 + 16) = v52;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    v26 = *(v22 + 40);
    *(v22 + 40) = 112;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v23, v24, v25, v26);
    v27 = *(v8 + 88);

    v28 = specialized Set._Variant.insert(_:)(&v54, v27);
    v29 = v54;
    if (v28)
    {
LABEL_3:
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v30 = swift_allocObject();
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      *(v30 + 16) = 2;
      *(v30 + 40) = -112;
      *(v30 + 48) = -1;
      *(v8 + 88) = v30;
    }
  }

  else
  {
    v46 = a2;
    v47 = a3;
    v33 = v48;
    v32 = v49;
    v34 = v50;
    if (swift_dynamicCastMetatype())
    {
      (*(v13 + 16))(v18, a1, a4);
      swift_dynamicCast();
      v35 = v52;
      v36 = v53;
      v37 = *(v8 + 88);
      v38 = *(v37 + 16);
      v39 = *(v37 + 24);
      v40 = *(v37 + 32);
      *(v37 + 16) = v52;
      *(v37 + 24) = v36;
      *(v37 + 32) = 0;
      v41 = *(v37 + 40);
      *(v37 + 40) = 0x80;
      outlined copy of Data._Representation(v35, v36);
      outlined consume of _BPlistEncodingFormat.Reference.Backing(v38, v39, v40, v41);
      v42 = *(v8 + 88);

      LOBYTE(v39) = specialized Set._Variant.insert(_:)(&v54, v42);
      outlined consume of Data._Representation(v35, v36);
      v29 = v54;
      if ((v39 & 1) == 0)
      {
        return v29;
      }

      goto LABEL_3;
    }

    if (swift_conformsToProtocol2())
    {
      (*(v13 + 16))(v15, a1, a4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSE_pGMd);
      swift_dynamicCast();
      v29 = __PlistEncoderBPlist.wrap<A>(_:for:_:)(v52, v46, v47, v32, v34);
    }

    else
    {
      MEMORY[0x1EEE9AC00](0);
      *(&v46 - 6) = a4;
      *(&v46 - 5) = v32;
      *(&v46 - 4) = v33;
      *(&v46 - 3) = v34;
      *(&v46 - 2) = a1;
      v43 = v34;
      v29 = v8;
      v44 = v51;
      v45 = __PlistEncoderBPlist._wrapGeneric<A>(_:for:_:)(partial apply for closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:), (&v46 - 8), v46, v47, v32, v43);
      if (!v44)
      {
        return v45;
      }
    }
  }

  return v29;
}

uint64_t __PlistEncoderBPlist._wrapGeneric<A>(_:for:_:)(void (*a1)(void *), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v7 = v6;
  v43 = a6;
  v49 = a3;
  v45 = a2;
  v46 = a1;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - v17;
  v19 = v7[2];
  v41 = v7 + 2;
  v44 = *(v19 + 16);
  v20 = *(v12 + 16);
  v20(&v41 - v17, v48, v11, v16);
  (v20)(v14, v18, v11);
  if ((*(v9 + 48))(v14, 1, a5) == 1)
  {
    v21 = *(v12 + 8);
    v21(v18, v11);
    v21(v14, v11);
    v22 = v49;

    goto LABEL_9;
  }

  v23 = *(v9 + 32);
  v24 = v42;
  v23(v42, v14, a5);
  v25 = v23;
  v22 = swift_allocObject();
  v26 = v43;
  *(v22 + 40) = a5;
  *(v22 + 48) = v26;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v22 + 16));
  v25(boxed_opaque_existential_0, v24, a5);
  (*(v12 + 8))(v18, v11);
  v28 = v49;
  *(v22 + 56) = v49;
  if (!(v28 >> 62))
  {
    v29 = v28 + 8;
LABEL_7:
    v30 = *v29;

    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return result;
    }

    goto LABEL_8;
  }

  if (v28 >> 62 == 1)
  {
    v29 = ((v28 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_7;
  }

  v32 = 1;
LABEL_8:
  *(v22 + 64) = v32;
LABEL_9:
  v34 = v7[5];
  v33 = v7[6];
  v7[5] = v22;
  if (!(v22 >> 62))
  {
    v35 = (v22 + 64);
    goto LABEL_13;
  }

  if (v22 >> 62 == 1)
  {
    v35 = ((v22 & 0x3FFFFFFFFFFFFFFFLL) + 32);
LABEL_13:
    v36 = *v35;

    goto LABEL_15;
  }

  v36 = 0;
LABEL_15:
  v37 = v46;
  v38 = v47;
  v7[6] = v36;
  v37(v7);
  if (v38)
  {

    v7[5] = v34;

    v7[6] = v33;
    if (v44 < *(v7[2] + 16))
    {
      v39 = v41;
      if (!specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew()))
      {
        specialized ContiguousArray.remove(at:)(*(*v39 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
      }
    }

    return swift_willThrow();
  }

  else
  {

    v7[5] = v34;

    v7[6] = v33;
    if (v44 >= *(v7[2] + 16))
    {
      return 0;
    }

    else
    {
      v40 = v41;
      result = specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew());
      if (!result)
      {
        return specialized ContiguousArray.remove(at:)(*(*v40 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
      }
    }
  }

  return result;
}

uint64_t closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(uint64_t a1)
{
  v4[3] = type metadata accessor for __PlistEncoderBPlist();
  v4[4] = lazy protocol witness table accessor for type _BPlistEncodingFormat.Reference and conformance _BPlistEncodingFormat.Reference(&lazy protocol witness table cache variable for type __PlistEncoderBPlist and conformance __PlistEncoderBPlist, v2, type metadata accessor for __PlistEncoderBPlist);
  v4[0] = a1;

  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 + 32;
  v8 = *(v5 + 16);
  if (*v2)
  {

    v9 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v7, v8, (v6 + 16), v6 + 32);
    v11 = v10;
    v13 = v12;

    if (v11)
    {
      if (a1)
      {
LABEL_4:
        specialized OrderedSet._appendNew(_:in:)();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        specialized ContiguousArray._endMutation()();
      }

LABEL_17:
    }
  }

  else
  {
    if (!v8)
    {
LABEL_10:
      if (!a1)
      {
        goto LABEL_17;
      }

      goto LABEL_4;
    }

    v9 = 0;
    while (1)
    {

      v15 = specialized static _BPlistEncodingFormat.Reference.== infix(_:_:)(v14, a2);

      if (v15)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_10;
      }
    }

    v13 = 0;
  }

  if (!a1)
  {
    specialized OrderedSet._removeExistingMember(at:in:)(v9, v13);

    specialized ContiguousArray.remove(at:)(v9, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    goto LABEL_17;
  }

  v18 = v2[2];
  v16 = v2 + 2;
  v17 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v18;
  if (isUniquelyReferenced_nonNull_native)
  {
  }

  else
  {
    v17 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v17);

    *v16 = v17;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v17 + 16))
  {
    *(v17 + 8 * v9 + 32) = a1;

    return specialized ContiguousArray._endMutation()();
  }

  __break(1u);
  return result;
}

uint64_t specialized OrderedSet._appendNew(_:in:)()
{

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v2 = *(v0[1] + 16);
  if (!*v0)
  {
    if (v2 < 0x10)
    {
      return result;
    }

    return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));
  }

  if (MEMORY[0x1865CA180](*(*v0 + 16) & 0x3FLL) < v2)
  {
    return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));
  }

  result = swift_isUniquelyReferenced_native();
  v3 = *v0;
  if ((result & 1) == 0)
  {
    if (!v3)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v4 = _HashTable.copy()();

    *v0 = v4;
    v3 = v4;
  }

  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

void _BPlistEncodingFormat.Writer.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v177 = *MEMORY[0x1E69E9840];
  v174 = *(a3 + 16);
  _BPlistEncodingFormat.Writer.append(_:count:)(9, v174);
  v172 = a2;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 32;
    v9 = v7;
    do
    {
      v10 = *(*v8 + 48);
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
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
      }

      if (HIDWORD(v10))
      {
        goto LABEL_347;
      }

      v11 = *(v3 + 8);
      LODWORD(__src) = bswap32(v10);
      _BPlistEncodingFormat.Writer.write(_:)(&__src - v11 + 4, v11);
      v8 += 8;
      --v9;
    }

    while (v9);
  }

  v12 = v174;
  if (v174)
  {

    v13 = 32;
    do
    {
      v14 = *(*(v5 + v13) + 48);
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_348;
      }

      if (HIDWORD(v14))
      {
        goto LABEL_349;
      }

      v15 = *(v3 + 8);
      LODWORD(__src) = bswap32(v14);
      _BPlistEncodingFormat.Writer.write(_:)(&__src - v15 + 4, v15);
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  v16 = &unk_181246000;
  v173 = v5;
  if (!v7)
  {
LABEL_201:
    v113 = v174;
    if (!v174)
    {
      return;
    }

    v114 = 32;
    v171 = v16[146];
    while (1)
    {
      v117 = *(v5 + v114);
      v118 = *(v117 + 48);
      v119 = *v4;
      if (v118 != *(*v4 + 2))
      {
        goto LABEL_206;
      }

      v121 = v4[4];
      v120 = v4[5];
      v122 = v4[6];
      v123 = v122 >> 62;
      v175 = v113;
      if ((v122 >> 62) > 1)
      {
        if (v123 == 2)
        {
          v126 = v120 + 16;
          v124 = *(v120 + 2);
          v125 = *(v126 + 1);
          v29 = __OFSUB__(v125, v124);
          v120 = (v125 - v124);
          if (v29)
          {
            goto LABEL_355;
          }
        }

        else
        {
          v120 = 0;
        }
      }

      else if (v123)
      {
        v29 = __OFSUB__(HIDWORD(v120), v120);
        LODWORD(v120) = HIDWORD(v120) - v120;
        if (v29)
        {
          goto LABEL_354;
        }

        v120 = v120;
      }

      else
      {
        v120 = BYTE6(v122);
      }

      v127 = &v121[v120];
      if (__OFADD__(v120, v121))
      {
        goto LABEL_351;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v118 + 1, 1, v119);
      }

      v129 = *(v119 + 2);
      v128 = *(v119 + 3);
      if (v129 >= v128 >> 1)
      {
        v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v119);
      }

      *(v119 + 2) = v129 + 1;
      *&v119[8 * v129 + 32] = v127;
      *v4 = v119;
      v130 = *(v117 + 16);
      v131 = *(v117 + 24);
      v132 = *(v117 + 32);
      v133 = *(v117 + 40);
      v134 = v133 >> 4;
      if (v133 >> 4 <= 4)
      {
        break;
      }

      if (v133 >> 4 <= 6)
      {
        if (v134 != 5)
        {

          _BPlistEncodingFormat.Writer.append(_:)(v130, v131, v132);

          goto LABEL_324;
        }

        _BPlistEncodingFormat.Writer.append(_:)(v139);

        outlined consume of _BPlistEncodingFormat.Reference.Backing(v130, v131, v132, v133);
LABEL_325:
        v5 = v173;
LABEL_326:
        v113 = v175;
        goto LABEL_206;
      }

      if (v134 == 7)
      {
        if (v121 == 0x2000)
        {
          v142 = v4[2];
          if (v142)
          {
            v143 = v142 + 0x2000;
          }

          else
          {
            v143 = 0;
          }

          Data._Representation.append(contentsOf:)(v142, v143);
          v121 = 0;
        }

        v121[v4[2]] = 51;
        v115 = v121 + 1;
        v5 = v173;
        v113 = v175;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_364;
        }

LABEL_204:
        v4[4] = v115;
        *&__src = bswap64(v130);
        v116 = 8;
        goto LABEL_205;
      }

      if (v134 == 8)
      {
        v137 = v131 >> 62;
        if ((v131 >> 62) > 1)
        {
          if (v137 == 2)
          {
            v158 = *(v130 + 16);
            v157 = *(v130 + 24);
            v138 = v157 - v158;
            if (__OFSUB__(v157, v158))
            {
              goto LABEL_381;
            }

            goto LABEL_321;
          }

          v138 = 0;
        }

        else
        {
          if (!v137)
          {
            v138 = BYTE6(v131);
            goto LABEL_323;
          }

          if (__OFSUB__(HIDWORD(v130), v130))
          {
            goto LABEL_383;
          }

          v138 = HIDWORD(v130) - v130;
LABEL_321:
          outlined copy of Data._Representation(*(v117 + 16), *(v117 + 24));
        }

LABEL_323:
        _BPlistEncodingFormat.Writer.append(_:count:)(5, v138);
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v130, v131);
        outlined consume of _BPlistEncodingFormat.Reference.Backing(v130, v131, v132, v133);
LABEL_324:

        goto LABEL_325;
      }

      v147 = v132 | v131;
      if (v132 | v131 | v130 || v133 != 144)
      {
        v5 = v173;
        if (v133 != 144 || v130 != 1 || v147)
        {
          __src = v171;
          _BPlistEncodingFormat.Writer.append(_:count:)(6, 5);
          _BPlistEncodingFormat.Writer.write(_:)(&__src, 5);

          goto LABEL_326;
        }

        if (v121 == 0x2000)
        {
          v155 = v4[2];
          if (v155)
          {
            v156 = v155 + 0x2000;
          }

          else
          {
            v156 = 0;
          }

          Data._Representation.append(contentsOf:)(v155, v156);
          v121 = 0;
        }

        v121[v4[2]] = 8;

        v150 = v121 + 1;
        v113 = v175;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_382;
        }
      }

      else
      {
        v5 = v173;
        if (v121 == 0x2000)
        {
          v148 = v4[2];
          if (v148)
          {
            v149 = v148 + 0x2000;
          }

          else
          {
            v149 = 0;
          }

          Data._Representation.append(contentsOf:)(v148, v149);
          v121 = 0;
        }

        v121[v4[2]] = 9;

        v150 = v121 + 1;
        v113 = v175;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_374;
        }
      }

      v4[4] = v150;
LABEL_206:
      v114 += 8;
      if (!--v113)
      {

        return;
      }
    }

    if (v133 >> 4 <= 1)
    {
      if (!v134)
      {
        if ((v133 & 1) == 0)
        {
          *&__src = 2415919360;

          v159 = String.data(using:allowLossyConversion:)(&__src, 0, v130, v131);
          if (v160 >> 60 == 15)
          {
            goto LABEL_397;
          }

          v161 = v159;
          v162 = v160;
          outlined consume of _BPlistEncodingFormat.Reference.Backing(v130, v131, v132, v133);
          v163 = v162 >> 62;
          if ((v162 >> 62) > 1)
          {
            v5 = v173;
            v113 = v175;
            if (v163 == 2)
            {
              v168 = *(v161 + 16);
              v167 = *(v161 + 24);
              v29 = __OFSUB__(v167, v168);
              v164 = v167 - v168;
              if (v29)
              {
                goto LABEL_388;
              }
            }

            else
            {
              v164 = 0;
            }
          }

          else
          {
            v5 = v173;
            v113 = v175;
            if (v163)
            {
              LODWORD(v164) = HIDWORD(v161) - v161;
              if (__OFSUB__(HIDWORD(v161), v161))
              {
                goto LABEL_389;
              }

              v164 = v164;
            }

            else
            {
              v164 = BYTE6(v162);
            }
          }

          _BPlistEncodingFormat.Writer.append(_:count:)(7, v164 / 2);
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v161, v162);

          outlined consume of Data?(v161, v162);
          goto LABEL_206;
        }

        *&__src = *(v117 + 16);
        *(&__src + 1) = v131;

        specialized String.withUTF8<A>(_:)(&__src);

        goto LABEL_325;
      }

      if (v121 == 0x2000)
      {
        v151 = v4[2];
        if (v151)
        {
          v152 = v151 + 0x2000;
        }

        else
        {
          v152 = 0;
        }

        Data._Representation.append(contentsOf:)(v151, v152);
        v121 = 0;
      }

      v121[v4[2]] = 20;
      v5 = v173;
      v113 = v175;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_365;
      }

      v4[4] = v121 + 1;
      *&__src = 0;
      _BPlistEncodingFormat.Writer.write(_:)(&__src, 8);
      *&__src = bswap64(v130);
      v116 = 8;
      goto LABEL_205;
    }

    if (v134 == 2)
    {
      v5 = v173;
      v113 = v175;
      if (v130 < 0x100)
      {
        if (v121 == 0x2000)
        {
          v153 = v4[2];
          if (v153)
          {
            v154 = v153 + 0x2000;
          }

          else
          {
            v154 = 0;
          }

          Data._Representation.append(contentsOf:)(v153, v154);
          v121 = 0;
        }

        v121[v4[2]] = 16;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_375;
        }

        v4[4] = v121 + 1;
        LOBYTE(__src) = v130;
        v116 = 1;
        goto LABEL_205;
      }

      if (!(v130 >> 16))
      {
        if (v121 == 0x2000)
        {
          v165 = v4[2];
          if (v165)
          {
            v166 = v165 + 0x2000;
          }

          else
          {
            v166 = 0;
          }

          Data._Representation.append(contentsOf:)(v165, v166);
          v121 = 0;
        }

        v121[v4[2]] = 17;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_380;
        }

        v4[4] = v121 + 1;
        LOWORD(__src) = bswap32(v130) >> 16;
        v116 = 2;
        goto LABEL_205;
      }

      if (HIDWORD(v130))
      {
        if (v121 == 0x2000)
        {
          v140 = v4[2];
          if (v140)
          {
            v141 = v140 + 0x2000;
          }

          else
          {
            v141 = 0;
          }

          Data._Representation.append(contentsOf:)(v140, v141);
          v121 = 0;
        }

        v121[v4[2]] = 19;
        v115 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_391;
        }

        goto LABEL_204;
      }

      if (v121 == 0x2000)
      {
        v169 = v4[2];
        if (v169)
        {
          v170 = v169 + 0x2000;
        }

        else
        {
          v170 = 0;
        }

        Data._Representation.append(contentsOf:)(v169, v170);
        v121 = 0;
      }

      v121[v4[2]] = 18;
      v146 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_390;
      }
    }

    else
    {
      v5 = v173;
      v113 = v175;
      if (v134 == 3)
      {
        if (v121 == 0x2000)
        {
          v135 = v4[2];
          if (v135)
          {
            v136 = v135 + 0x2000;
          }

          else
          {
            v136 = 0;
          }

          Data._Representation.append(contentsOf:)(v135, v136);
          v121 = 0;
        }

        v121[v4[2]] = 35;
        v115 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_366;
        }

        goto LABEL_204;
      }

      if (v121 == 0x2000)
      {
        v144 = v4[2];
        if (v144)
        {
          v145 = v144 + 0x2000;
        }

        else
        {
          v145 = 0;
        }

        Data._Representation.append(contentsOf:)(v144, v145);
        v121 = 0;
      }

      v121[v4[2]] = 34;
      v146 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_367;
      }
    }

    v4[4] = v146;
    LODWORD(__src) = bswap32(v130);
    v116 = 4;
LABEL_205:
    _BPlistEncodingFormat.Writer.write(_:)(&__src, v116);

    goto LABEL_206;
  }

  v17 = (v172 + 32);
  while (1)
  {
    v19 = *v17;
    v20 = *(*v17 + 48);
    v21 = *v4;
    if (v20 != *(*v4 + 2))
    {
      goto LABEL_17;
    }

    v23 = v4[4];
    v22 = v4[5];
    v24 = v4[6];
    v25 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v25 == 2)
      {
        v28 = v22 + 16;
        v26 = *(v22 + 2);
        v27 = *(v28 + 1);
        v29 = __OFSUB__(v27, v26);
        v22 = (v27 - v26);
        if (v29)
        {
          goto LABEL_353;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else if (v25)
    {
      v29 = __OFSUB__(HIDWORD(v22), v22);
      LODWORD(v22) = HIDWORD(v22) - v22;
      if (v29)
      {
        goto LABEL_352;
      }

      v22 = v22;
    }

    else
    {
      v22 = BYTE6(v24);
    }

    v30 = &v23[v22];
    if (__OFADD__(v22, v23))
    {
      goto LABEL_350;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 + 1, 1, v21);
    }

    v32 = *(v21 + 2);
    v31 = *(v21 + 3);
    if (v32 >= v31 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v21);
    }

    *(v21 + 2) = v32 + 1;
    *&v21[8 * v32 + 32] = v30;
    *v4 = v21;
    v33 = *(v19 + 16);
    v34 = *(v19 + 24);
    v35 = *(v19 + 32);
    v36 = *(v19 + 40);
    v37 = v36 >> 4;
    if (v36 >> 4 > 4)
    {
      if (v36 >> 4 <= 6)
      {
        if (v37 == 5)
        {

          _BPlistEncodingFormat.Writer.append(_:)(v18);
          outlined consume of _BPlistEncodingFormat.Reference.Backing(v33, v34, v35, v36);
        }

        else
        {

          _BPlistEncodingFormat.Writer.append(_:)(v33, v34, v35);
        }

        v5 = v173;
        goto LABEL_16;
      }

      if (v37 == 7)
      {
        if (v23 == 0x2000)
        {
          v56 = v4[2];
          if (v56)
          {
            v57 = v56 + 0x2000;
          }

          else
          {
            v57 = 0;
          }

          v58 = *(v19 + 16);
          Data._Representation.append(contentsOf:)(v56, v57);
          v33 = v58;
          v23 = 0;
        }

        v23[v4[2]] = 51;
        v55 = v23 + 1;
        v5 = v173;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_356;
        }

        goto LABEL_80;
      }

      if (v37 == 8)
      {
        v45 = v34 >> 62;
        if ((v34 >> 62) > 1)
        {
          v16 = &unk_181246000;
          if (v45 != 2)
          {
            v46 = *(v19 + 16);
            v47 = 0;
            goto LABEL_179;
          }

          v85 = *(v33 + 16);
          v84 = *(v33 + 24);
          v46 = *(v19 + 16);
          v47 = v84 - v85;
          if (__OFSUB__(v84, v85))
          {
            goto LABEL_379;
          }
        }

        else
        {
          v16 = &unk_181246000;
          if (!v45)
          {
            v46 = *(v19 + 16);
            v47 = BYTE6(v34);
LABEL_179:
            _BPlistEncodingFormat.Writer.append(_:count:)(5, v47);
            specialized Data._Representation.withUnsafeBytes<A>(_:)(v46, v34);
            outlined consume of _BPlistEncodingFormat.Reference.Backing(v46, v34, v35, v36);
            v5 = v173;
            goto LABEL_17;
          }

          if (__OFSUB__(HIDWORD(v33), v33))
          {
            goto LABEL_378;
          }

          v46 = *(v19 + 16);
          v47 = HIDWORD(v33) - v33;
        }

        outlined copy of Data._Representation(v46, v34);
        goto LABEL_179;
      }

      v69 = v35 | v34;
      if (v35 | v34 | v33 || v36 != 144)
      {
        v5 = v173;
        if (v36 != 144 || v33 != 1 || v69)
        {
          __src = xmmword_181246920;
          _BPlistEncodingFormat.Writer.append(_:count:)(6, 5);
          _BPlistEncodingFormat.Writer.write(_:)(&__src, 5);

          goto LABEL_16;
        }

        if (v23 == 0x2000)
        {
          v82 = v4[2];
          if (v82)
          {
            v83 = v82 + 0x2000;
          }

          else
          {
            v83 = 0;
          }

          Data._Representation.append(contentsOf:)(v82, v83);
          v23 = 0;
        }

        v23[v4[2]] = 8;
        v72 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_376;
        }
      }

      else
      {
        v5 = v173;
        if (v23 == 0x2000)
        {
          v70 = v4[2];
          if (v70)
          {
            v71 = v70 + 0x2000;
          }

          else
          {
            v71 = 0;
          }

          Data._Representation.append(contentsOf:)(v70, v71);
          v23 = 0;
        }

        v23[v4[2]] = 9;
        v72 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_369;
        }
      }

      v4[4] = v72;
LABEL_16:
      v16 = &unk_181246000;
      goto LABEL_17;
    }

    if (v36 >> 4 > 1)
    {
      if (v37 != 2)
      {
        v5 = v173;
        if (v37 != 3)
        {
          if (v23 == 0x2000)
          {
            v60 = v4[2];
            if (v60)
            {
              v61 = v60 + 0x2000;
            }

            else
            {
              v61 = 0;
            }

            v62 = *(v19 + 16);
            Data._Representation.append(contentsOf:)(v60, v61);
            LODWORD(v33) = v62;
            v23 = 0;
          }

          v23[v4[2]] = 34;
          v63 = (v23 + 1);
          if (__OFADD__(v23, 1))
          {
            goto LABEL_358;
          }

          v4[4] = v63;
          v64 = bswap32(v33);
          LODWORD(__src) = v64;
          if (__OFSUB__(0x2000, v63))
          {
            goto LABEL_361;
          }

          if (0x1FFF - v23 >= 4)
          {
            v95 = v4[2];
            v16 = &unk_181246000;
            if (!v95)
            {
              goto LABEL_393;
            }

            *&v95[v63] = v64;
            v29 = __OFADD__(v63, 4);
            v94 = v63 + 4;
            if (v29)
            {
              goto LABEL_370;
            }

            goto LABEL_167;
          }

          v16 = &unk_181246000;
          if (v63 > 0)
          {
            v65 = v4[2];
            v66 = &v65[v63];
            if (v65)
            {
              v67 = v66;
            }

            else
            {
              v67 = 0;
            }

            Data._Representation.append(contentsOf:)(v65, v67);
            v4[4] = 0;
          }

          v68 = &__src + 4;
          goto LABEL_164;
        }

        if (v23 == 0x2000)
        {
          v38 = v4[2];
          if (v38)
          {
            v39 = v38 + 0x2000;
          }

          else
          {
            v39 = 0;
          }

          v40 = *(v19 + 16);
          Data._Representation.append(contentsOf:)(v38, v39);
          v33 = v40;
          v23 = 0;
        }

        v23[v4[2]] = 35;
        v41 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          goto LABEL_357;
        }

        v4[4] = v41;
        v42 = bswap64(v33);
        *&__src = v42;
        if (__OFSUB__(0x2000, v41))
        {
          goto LABEL_362;
        }

        if (0x1FFF - v23 >= 8)
        {
          v93 = v4[2];
          v16 = &unk_181246000;
          if (!v93)
          {
            goto LABEL_394;
          }

          *&v93[v41] = v42;
          v29 = __OFADD__(v41, 8);
          v94 = v41 + 8;
          if (v29)
          {
            goto LABEL_372;
          }

LABEL_167:
          v4[4] = v94;
          goto LABEL_17;
        }

        v16 = &unk_181246000;
        if (v41 <= 0)
        {
LABEL_163:
          v68 = &__src + 8;
LABEL_164:
          Data._Representation.append(contentsOf:)(&__src, v68);
          goto LABEL_17;
        }

        v43 = v4[2];
        v44 = &v43[v41];
LABEL_159:
        if (v43)
        {
          v98 = v44;
        }

        else
        {
          v98 = 0;
        }

        Data._Representation.append(contentsOf:)(v43, v98);
        v4[4] = 0;
        goto LABEL_163;
      }

      v5 = v173;
      if (v33 < 0x100)
      {
        if (v23 == 0x2000)
        {
          v79 = v4[2];
          if (v79)
          {
            v80 = v79 + 0x2000;
          }

          else
          {
            v80 = 0;
          }

          v81 = *(v19 + 16);
          Data._Representation.append(contentsOf:)(v79, v80);
          LOBYTE(v33) = v81;
          v23 = 0;
        }

        v23[v4[2]] = 16;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_368;
        }

        v4[4] = v23 + 1;
        LOBYTE(__src) = v33;
        v59 = 1;
        goto LABEL_192;
      }

      if (!(v33 >> 16))
      {
        if (v23 == 0x2000)
        {
          v100 = v4[2];
          if (v100)
          {
            v101 = v100 + 0x2000;
          }

          else
          {
            v101 = 0;
          }

          v102 = *(v19 + 16);
          Data._Representation.append(contentsOf:)(v100, v101);
          LODWORD(v33) = v102;
          v23 = 0;
        }

        v23[v4[2]] = 17;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_377;
        }

        v4[4] = v23 + 1;
        LOWORD(__src) = bswap32(v33) >> 16;
        v59 = 2;
        goto LABEL_192;
      }

      if (!HIDWORD(v33))
      {
        if (v23 == 0x2000)
        {
          v105 = v4[2];
          if (v105)
          {
            v106 = v105 + 0x2000;
          }

          else
          {
            v106 = 0;
          }

          v107 = *(v19 + 16);
          Data._Representation.append(contentsOf:)(v105, v106);
          LODWORD(v33) = v107;
          v23 = 0;
        }

        v23[v4[2]] = 18;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_387;
        }

        v4[4] = v23 + 1;
        LODWORD(__src) = bswap32(v33);
        v59 = 4;
        goto LABEL_192;
      }

      if (v23 == 0x2000)
      {
        v52 = v4[2];
        if (v52)
        {
          v53 = v52 + 0x2000;
        }

        else
        {
          v53 = 0;
        }

        v54 = *(v19 + 16);
        Data._Representation.append(contentsOf:)(v52, v53);
        v33 = v54;
        v23 = 0;
      }

      v23[v4[2]] = 19;
      v55 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_385;
      }

LABEL_80:
      v4[4] = v55;
      *&__src = bswap64(v33);
      v59 = 8;
LABEL_192:
      _BPlistEncodingFormat.Writer.write(_:)(&__src, v59);
      goto LABEL_16;
    }

    if (v37)
    {
      if (v23 == 0x2000)
      {
        v73 = v4[2];
        if (v73)
        {
          v74 = v73 + 0x2000;
        }

        else
        {
          v74 = 0;
        }

        v75 = *(v19 + 16);
        Data._Representation.append(contentsOf:)(v73, v74);
        v33 = v75;
        v23 = 0;
      }

      v23[v4[2]] = 20;
      v76 = (v23 + 1);
      v5 = v173;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_359;
      }

      v4[4] = v76;
      *&__src = 0;
      if (__OFSUB__(0x2000, v76))
      {
        goto LABEL_360;
      }

      if (0x1FFF - v23 >= 8)
      {
        v96 = v4[2];
        v16 = &unk_181246000;
        if (!v96)
        {
          goto LABEL_395;
        }

        *&v96[v76] = 0;
        v29 = __OFADD__(v76, 8);
        v76 += 8;
        if (v29)
        {
          goto LABEL_371;
        }

        v4[4] = v76;
      }

      else
      {
        v16 = &unk_181246000;
        if (v76 > 0)
        {
          v77 = v4[2];
          if (v77)
          {
            v78 = &v77[v76];
          }

          else
          {
            v78 = 0;
          }

          Data._Representation.append(contentsOf:)(v77, v78);
          v76 = 0;
          v4[4] = 0;
        }

        Data._Representation.append(contentsOf:)(&__src, &__src + 8);
      }

      v97 = bswap64(v33);
      *&__src = v97;
      if (__OFSUB__(0x2000, v76))
      {
        goto LABEL_363;
      }

      if (0x2000 - v76 >= 8)
      {
        v99 = v4[2];
        if (!v99)
        {
          goto LABEL_396;
        }

        *&v99[v76] = v97;
        v94 = v76 + 8;
        if (__OFADD__(v76, 8))
        {
          goto LABEL_373;
        }

        goto LABEL_167;
      }

      if (v76 <= 0)
      {
        goto LABEL_163;
      }

      v43 = v4[2];
      v44 = &v43[v76];
      goto LABEL_159;
    }

    if (v36)
    {

      v16 = &unk_181246000;
      if ((v34 & 0x1000000000000000) != 0)
      {
        v108 = static String._copying(_:)();
        v109 = v33;
        v33 = v108;
        v111 = v110;
        outlined consume of _BPlistEncodingFormat.Reference.Backing(v109, v34, v35, v36);
        v34 = v111;
        v5 = v173;
        if ((v111 & 0x2000000000000000) != 0)
        {
          goto LABEL_198;
        }

LABEL_58:
        if ((v33 & 0x1000000000000000) != 0)
        {
          v48 = (v34 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v49 = v33 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = _StringObject.sharedUTF8.getter();
          v49 = v112;
        }

        _BPlistEncodingFormat.Writer.append(_:count:)(6, v49);
        p_src = v48;
        v51 = v49;
      }

      else
      {
        v5 = v173;
        if ((v34 & 0x2000000000000000) == 0)
        {
          goto LABEL_58;
        }

LABEL_198:
        *&__src = v33;
        *(&__src + 1) = v34 & 0xFFFFFFFFFFFFFFLL;
        _BPlistEncodingFormat.Writer.append(_:count:)(6, HIBYTE(v34) & 0xF);
        p_src = &__src;
        v51 = HIBYTE(v34) & 0xF;
      }

      _BPlistEncodingFormat.Writer.write(_:)(p_src, v51);

      goto LABEL_17;
    }

    *&__src = 2415919360;

    v86 = String.data(using:allowLossyConversion:)(&__src, 0, v33, v34);
    v16 = &unk_181246000;
    if (v87 >> 60 == 15)
    {
      break;
    }

    v88 = v86;
    v89 = v87;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v33, v34, v35, v36);
    v90 = v89 >> 62;
    if ((v89 >> 62) > 1)
    {
      v5 = v173;
      v91 = v88;
      if (v90 == 2)
      {
        v104 = *(v88 + 16);
        v103 = *(v88 + 24);
        v29 = __OFSUB__(v103, v104);
        v92 = v103 - v104;
        if (v29)
        {
          goto LABEL_384;
        }
      }

      else
      {
        v92 = 0;
      }
    }

    else
    {
      v5 = v173;
      v91 = v88;
      if (v90)
      {
        LODWORD(v92) = HIDWORD(v88) - v88;
        if (__OFSUB__(HIDWORD(v88), v88))
        {
          goto LABEL_386;
        }

        v92 = v92;
      }

      else
      {
        v92 = BYTE6(v89);
      }
    }

    _BPlistEncodingFormat.Writer.append(_:count:)(7, v92 / 2);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v91, v89);
    outlined consume of Data?(v91, v89);
LABEL_17:
    ++v17;
    if (!--v7)
    {
      goto LABEL_201;
    }
  }

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
}

NSNumber __swiftcall NSNumber.init(BOOLeanLiteral:)(Swift::Bool BOOLeanLiteral)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithBool_];
}

uint64_t specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E6530];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    return swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 88);
    v24 = lazy protocol witness table accessor for type Int and conformance Int();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E6530], &type metadata for _CodingKey, v24, v25, v15, v16);
    result = swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E7230];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    return swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 88);
    v24 = lazy protocol witness table accessor for type Int8 and conformance Int8();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E7230], &type metadata for _CodingKey, v24, v25, v15, v16);
    result = swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E6810];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    return swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 88);
    v24 = lazy protocol witness table accessor for type UInt and conformance UInt();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E6810], &type metadata for _CodingKey, v24, v25, v15, v16);
    result = swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E7290];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    return swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 88);
    v24 = lazy protocol witness table accessor for type Int16 and conformance Int16();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E7290], &type metadata for _CodingKey, v24, v25, v15, v16);
    result = swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E72F0];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    return swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 88);
    v24 = lazy protocol witness table accessor for type Int32 and conformance Int32();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E72F0], &type metadata for _CodingKey, v24, v25, v15, v16);
    result = swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E7360];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    return swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 88);
    v24 = lazy protocol witness table accessor for type Int64 and conformance Int64();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E7360], &type metadata for _CodingKey, v24, v25, v15, v16);
    result = swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E7508];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    return swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 88);
    v24 = lazy protocol witness table accessor for type UInt8 and conformance UInt8();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E7508], &type metadata for _CodingKey, v24, v25, v15, v16);
    result = swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E75F8];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    return swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 88);
    v24 = lazy protocol witness table accessor for type UInt16 and conformance UInt16();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E75F8], &type metadata for _CodingKey, v24, v25, v15, v16);
    result = swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E7668];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    return swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 88);
    v24 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E7668], &type metadata for _CodingKey, v24, v25, v15, v16);
    result = swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E76D8];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    return swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 88);
    v24 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E76D8], &type metadata for _CodingKey, v24, v25, v15, v16);
    result = swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

uint64_t _PlistDecoder.decode(_:)(uint64_t (*a1)(char *, uint64_t, void, void, void, uint64_t))
{
  v23 = a1;
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v22 = v2;
  v15 = *(v2 + 16);

  if (MEMORY[0x1865CB560](v16, AssociatedTypeWitness))
  {
    v21 = v14;
    v24 = v15;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v14 = v4;
    BidirectionalCollection.last.getter();
    (*(v5 + 16))(v7, v10, v4);
    if ((*(v11 + 48))(v7, 1, AssociatedTypeWitness) != 1)
    {

      (*(v5 + 8))(v10, v4);
      v17 = v21;
      (*(v11 + 32))(v21, v7, AssociatedTypeWitness);
      v18 = *(v22 + 40);

      v19 = v23(v17, v18, 0, 0, 0, 255);
      (*(v11 + 8))(v17, AssociatedTypeWitness);

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v5 + 8))(v7, v14);
  __break(1u);
  return result;
}

{
  v23 = a1;
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v22 = v2;
  v15 = *(v2 + 16);

  if (MEMORY[0x1865CB560](v16, AssociatedTypeWitness))
  {
    v21 = v14;
    v24 = v15;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v14 = v4;
    BidirectionalCollection.last.getter();
    (*(v5 + 16))(v7, v10, v4);
    if ((*(v11 + 48))(v7, 1, AssociatedTypeWitness) != 1)
    {

      (*(v5 + 8))(v10, v4);
      v17 = v21;
      (*(v11 + 32))(v21, v7, AssociatedTypeWitness);
      v18 = *(v22 + 40);

      v19 = v23(v17, v18, 0, 0, 0, 255);
      (*(v11 + 8))(v17, AssociatedTypeWitness);

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v5 + 8))(v7, v14);
  __break(1u);
  return result;
}

{
  v23 = a1;
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v22 = v2;
  v15 = *(v2 + 16);

  if (MEMORY[0x1865CB560](v16, AssociatedTypeWitness))
  {
    v21 = v14;
    v24 = v15;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v14 = v4;
    BidirectionalCollection.last.getter();
    (*(v5 + 16))(v7, v10, v4);
    if ((*(v11 + 48))(v7, 1, AssociatedTypeWitness) != 1)
    {

      (*(v5 + 8))(v10, v4);
      v17 = v21;
      (*(v11 + 32))(v21, v7, AssociatedTypeWitness);
      v18 = *(v22 + 40);

      v19 = v23(v17, v18, 0, 0, 0, 255);
      (*(v11 + 8))(v17, AssociatedTypeWitness);

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v5 + 8))(v7, v14);
  __break(1u);
  return result;
}

{
  v23 = a1;
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v22 = v2;
  v15 = *(v2 + 16);

  if (MEMORY[0x1865CB560](v16, AssociatedTypeWitness))
  {
    v21 = v14;
    v24 = v15;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v14 = v4;
    BidirectionalCollection.last.getter();
    (*(v5 + 16))(v7, v10, v4);
    if ((*(v11 + 48))(v7, 1, AssociatedTypeWitness) != 1)
    {

      (*(v5 + 8))(v10, v4);
      v17 = v21;
      (*(v11 + 32))(v21, v7, AssociatedTypeWitness);
      v18 = *(v22 + 40);

      v19 = v23(v17, v18, 0, 0, 0, 255);
      (*(v11 + 8))(v17, AssociatedTypeWitness);

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v5 + 8))(v7, v14);
  __break(1u);
  return result;
}

uint64_t __PlistEncoderBPlist.unkeyedContainer()@<X0>(uint64_t **a1@<X8>)
{
  v2 = v1;
  if (((*(*v1 + 240))() & 1) == 0)
  {
    result = specialized BidirectionalCollection.last.getter(v1[2]);
    if (result)
    {
      v5 = result;
      if ((*(result + 40) & 0xF0) == 0x50)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    return result;
  }

  v4 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC10Foundation21_BPlistEncodingFormatV9ReferenceC_Tt0g5(MEMORY[0x1E69E7CC0]);
  type metadata accessor for _BPlistEncodingFormat.Reference();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = v4;
  *(v5 + 40) = 80;
  *(v5 + 48) = -1;

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
LABEL_5:
  v7 = v2[5];
  a1[3] = &unk_1EEEEC460;
  a1[4] = lazy protocol witness table accessor for type _PlistUnkeyedEncodingContainerBPlist and conformance _PlistUnkeyedEncodingContainerBPlist();
  *a1 = v2;
  a1[1] = v5;
  a1[2] = v7;
}

void _BPlistEncodingFormat.Writer.append(_:)(uint64_t a1)
{
  v2 = v1;
  v212 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  _BPlistEncodingFormat.Writer.append(_:count:)(8, v4);
  if (!v4)
  {
    return;
  }

  v209 = a1 + 32;

  v5 = 0;
  do
  {
    v6 = *(*(a1 + 8 * v5 + 32) + 48);
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_413:
      __break(1u);
LABEL_414:
      __break(1u);
LABEL_415:
      __break(1u);
LABEL_416:
      __break(1u);
LABEL_417:
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
LABEL_420:
      __break(1u);
LABEL_421:
      __break(1u);
LABEL_422:
      __break(1u);
LABEL_423:
      __break(1u);
LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      __break(1u);
LABEL_427:
      __break(1u);
LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      __break(1u);
LABEL_432:
      __break(1u);
LABEL_433:
      __break(1u);
LABEL_434:
      __break(1u);
LABEL_435:
      __break(1u);
LABEL_436:
      __break(1u);
LABEL_437:
      __break(1u);
LABEL_438:
      __break(1u);
LABEL_439:
      __break(1u);
LABEL_440:
      __break(1u);
LABEL_441:
      __break(1u);
LABEL_442:
      __break(1u);
LABEL_443:
      __break(1u);
LABEL_444:
      __break(1u);
LABEL_445:
      __break(1u);
LABEL_446:
      __break(1u);
LABEL_447:
      __break(1u);
LABEL_448:
      __break(1u);
LABEL_449:
      __break(1u);
LABEL_450:
      __break(1u);
LABEL_451:
      __break(1u);
LABEL_452:
      __break(1u);
LABEL_453:
      __break(1u);
LABEL_454:
      __break(1u);
LABEL_455:
      __break(1u);
LABEL_456:
      __break(1u);
LABEL_457:
      __break(1u);
LABEL_458:
      __break(1u);
LABEL_459:
      __break(1u);
LABEL_460:
      __break(1u);
LABEL_461:
      __break(1u);
LABEL_462:
      __break(1u);
LABEL_463:
      __break(1u);
LABEL_464:
      __break(1u);
LABEL_465:
      __break(1u);
LABEL_466:
      __break(1u);
LABEL_467:
      __break(1u);
LABEL_468:
      __break(1u);
LABEL_469:
      __break(1u);
LABEL_470:
      __break(1u);
    }

    if (HIDWORD(v6))
    {
      goto LABEL_413;
    }

    ++v5;
    v7 = *(v1 + 8);
    LODWORD(__src) = bswap32(v6);
    _BPlistEncodingFormat.Writer.write(_:)(&__src - v7 + 4, v7);
  }

  while (v4 != v5);

  v8 = 0;
  v205 = v4;
  while (1)
  {
    v11 = *(v209 + 8 * v8);
    v12 = *(v11 + 48);
    v13 = *v2;
    if (v12 != *(*v2 + 16))
    {
      goto LABEL_13;
    }

    v15 = *(v2 + 32);
    v14 = *(v2 + 40);
    v16 = *(v2 + 48);
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v20 = v14 + 16;
        v18 = *(v14 + 16);
        v19 = *(v20 + 8);
        v21 = __OFSUB__(v19, v18);
        v14 = v19 - v18;
        if (v21)
        {
          goto LABEL_433;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v17)
    {
      v21 = __OFSUB__(HIDWORD(v14), v14);
      LODWORD(v14) = HIDWORD(v14) - v14;
      if (v21)
      {
        goto LABEL_434;
      }

      v14 = v14;
    }

    else
    {
      v14 = BYTE6(v16);
    }

    v22 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_430;
    }

    v208 = v8;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 + 1, 1, v13);
    }

    v24 = *(v13 + 2);
    v23 = *(v13 + 3);
    if (v24 >= v23 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v13);
    }

    *(v13 + 2) = v24 + 1;
    *&v13[8 * v24 + 32] = v22;
    *v2 = v13;
    v25 = *(v11 + 16);
    v26 = *(v11 + 24);
    v27 = *(v11 + 32);
    v28 = *(v11 + 40);
    v29 = v28 >> 4;
    v210 = v27;
    if (v28 >> 4 > 4)
    {
      if (v28 >> 4 > 6)
      {
        if (v29 == 7)
        {
          if (v15 == 0x2000)
          {
            v44 = *(v11 + 16);
            v45 = *(v2 + 16);
            if (v45)
            {
              v46 = v45 + 0x2000;
            }

            else
            {
              v46 = 0;
            }

            Data._Representation.append(contentsOf:)(v45, v46);
            v25 = v44;
            v15 = 0;
          }

          *(*(v2 + 16) + v15) = 51;
          v9 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_442;
          }

          goto LABEL_8;
        }

        if (v29 != 8)
        {
          if (!(v27 | v26 | v25) && v28 == 144)
          {
            if (v15 == 0x2000)
            {
              v55 = *(v2 + 16);
              if (v55)
              {
                v56 = v55 + 0x2000;
              }

              else
              {
                v56 = 0;
              }

              Data._Representation.append(contentsOf:)(v55, v56);
              v15 = 0;
              *(v2 + 32) = 0;
            }

            *(*(v2 + 16) + v15) = 9;

            v57 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_448;
            }

LABEL_141:
            *(v2 + 32) = v57;
            goto LABEL_12;
          }

          if (v28 == 144 && v25 == 1 && !(v27 | v26))
          {
            if (v15 == 0x2000)
            {
              v78 = *(v2 + 16);
              if (v78)
              {
                v79 = v78 + 0x2000;
              }

              else
              {
                v79 = 0;
              }

              Data._Representation.append(contentsOf:)(v78, v79);
              v15 = 0;
              *(v2 + 32) = 0;
            }

            *(*(v2 + 16) + v15) = 8;

            v57 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_454;
            }

            goto LABEL_141;
          }

          __src = xmmword_181246920;
          _BPlistEncodingFormat.Writer.append(_:count:)(6, 5);
          _BPlistEncodingFormat.Writer.write(_:)(&__src, 5);

          goto LABEL_11;
        }

        v33 = v26 >> 62;
        if ((v26 >> 62) > 1)
        {
          if (v33 != 2)
          {
            v34 = 0;
            goto LABEL_388;
          }

          v81 = *(v25 + 16);
          v80 = *(v25 + 24);
          v34 = v80 - v81;
          if (__OFSUB__(v80, v81))
          {
            goto LABEL_456;
          }
        }

        else
        {
          if (!v33)
          {
            v34 = BYTE6(v26);
LABEL_388:
            v195 = *(v11 + 16);
            goto LABEL_389;
          }

          if (__OFSUB__(HIDWORD(v25), v25))
          {
            goto LABEL_457;
          }

          v34 = HIDWORD(v25) - v25;
        }

        v195 = *(v11 + 16);
        outlined copy of Data._Representation(v25, v26);
LABEL_389:
        _BPlistEncodingFormat.Writer.append(_:count:)(5, v34);
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v195, v26);
        outlined consume of _BPlistEncodingFormat.Reference.Backing(v195, v26, v27, v28);
        goto LABEL_11;
      }

      if (v29 == 5)
      {
        v40 = *(v11 + 16);

        _BPlistEncodingFormat.Writer.append(_:)(v40);

        outlined consume of _BPlistEncodingFormat.Reference.Backing(v40, v26, v27, v28);
        goto LABEL_12;
      }

      v66 = *(v27 + 16);

      _BPlistEncodingFormat.Writer.append(_:count:)(9, v66);
      v67 = *(v26 + 16);
      if (v67)
      {

        v68 = 0;
        do
        {
          if (v68 >= *(v26 + 16))
          {
            goto LABEL_414;
          }

          v69 = *(*(v26 + 8 * v68 + 32) + 48);
          if ((v69 & 0x8000000000000000) != 0)
          {
            goto LABEL_415;
          }

          if (HIDWORD(v69))
          {
            goto LABEL_416;
          }

          ++v68;
          v70 = *(v2 + 8);
          LODWORD(__src) = bswap32(v69);
          _BPlistEncodingFormat.Writer.write(_:)(&__src - v70 + 4, v70);
        }

        while (v67 != v68);
      }

      v71 = *(v27 + 16);
      if (v71)
      {
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        v72 = 0;
        do
        {
          if (v72 >= *(v27 + 16))
          {
            goto LABEL_417;
          }

          v73 = *(*(v27 + 8 * v72 + 32) + 48);
          if ((v73 & 0x8000000000000000) != 0)
          {
            goto LABEL_418;
          }

          if (HIDWORD(v73))
          {
            goto LABEL_419;
          }

          ++v72;
          v74 = *(v2 + 8);
          LODWORD(__src) = bswap32(v73);
          _BPlistEncodingFormat.Writer.write(_:)(&__src - v74 + 4, v74);
        }

        while (v71 != v72);
      }

      else
      {
      }

      v90 = *(v26 + 16);
      v207 = v26;
      if (!v90)
      {
        goto LABEL_292;
      }

      v91 = v26 + 32;

      v92 = 0;
      v206 = v26 + 32;
      while (1)
      {
        if (v92 >= v90)
        {
          goto LABEL_421;
        }

        v95 = *(v91 + 8 * v92);
        v96 = *(v95 + 48);
        v97 = *v2;
        if (v96 != *(*v2 + 16))
        {
          goto LABEL_163;
        }

        v99 = *(v2 + 32);
        v98 = *(v2 + 40);
        v100 = *(v2 + 48);
        v101 = v100 >> 62;
        if ((v100 >> 62) > 1)
        {
          if (v101 == 2)
          {
            v104 = v98 + 16;
            v102 = *(v98 + 16);
            v103 = *(v104 + 8);
            v21 = __OFSUB__(v103, v102);
            v98 = v103 - v102;
            if (v21)
            {
              goto LABEL_438;
            }
          }

          else
          {
            v98 = 0;
          }
        }

        else if (v101)
        {
          v21 = __OFSUB__(HIDWORD(v98), v98);
          LODWORD(v98) = HIDWORD(v98) - v98;
          if (v21)
          {
            goto LABEL_437;
          }

          v98 = v98;
        }

        else
        {
          v98 = BYTE6(v100);
        }

        v105 = v98 + v99;
        if (__OFADD__(v98, v99))
        {
          goto LABEL_432;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96 + 1, 1, v97);
        }

        v107 = *(v97 + 2);
        v106 = *(v97 + 3);
        if (v107 >= v106 >> 1)
        {
          v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1, v97);
        }

        *(v97 + 2) = v107 + 1;
        *&v97[8 * v107 + 32] = v105;
        *v2 = v97;
        v108 = *(v95 + 16);
        v109 = *(v95 + 24);
        v110 = *(v95 + 32);
        v111 = *(v95 + 40);
        v112 = v111 >> 4;
        if (v111 >> 4 <= 4)
        {
          break;
        }

        if (v111 >> 4 <= 6)
        {
          if (v112 != 5)
          {
            v126 = *(v110 + 16);

            _BPlistEncodingFormat.Writer.append(_:count:)(9, v126);
            v127 = *(v109 + 16);
            if (v127)
            {

              v128 = 0;
              do
              {
                if (v128 >= *(v109 + 16))
                {
                  goto LABEL_422;
                }

                v129 = *(*(v109 + 8 * v128 + 32) + 48);
                if ((v129 & 0x8000000000000000) != 0)
                {
                  goto LABEL_423;
                }

                if (HIDWORD(v129))
                {
                  goto LABEL_424;
                }

                ++v128;
                v130 = *(v2 + 8);
                LODWORD(__src) = bswap32(v129);
                _BPlistEncodingFormat.Writer.write(_:)(&__src - v130 + 4, v130);
              }

              while (v127 != v128);
            }

            v131 = *(v110 + 16);
            if (v131)
            {
              swift_retain_n();
              swift_retain_n();

              v132 = 0;
              do
              {
                if (v132 >= *(v110 + 16))
                {
                  goto LABEL_426;
                }

                v133 = *(*(v110 + 32 + 8 * v132) + 48);
                if ((v133 & 0x8000000000000000) != 0)
                {
                  goto LABEL_427;
                }

                if (HIDWORD(v133))
                {
                  goto LABEL_428;
                }

                ++v132;
                v134 = *(v2 + 8);
                LODWORD(__src) = bswap32(v133);
                _BPlistEncodingFormat.Writer.write(_:)(&__src - v134 + 4, v134);
              }

              while (v131 != v132);

              v135 = *(v109 + 16);
              if (v135)
              {
LABEL_245:

                v136 = 0;
                do
                {
                  if (v136 >= *(v109 + 16))
                  {
                    goto LABEL_425;
                  }

                  ++v136;

                  _BPlistEncodingFormat.Writer.append(_:)(v137);
                }

                while (v135 != v136);
              }
            }

            else
            {

              v135 = *(v109 + 16);
              if (v135)
              {
                goto LABEL_245;
              }
            }

            v149 = *(v110 + 16);
            v27 = v210;
            if (v149)
            {
              v150 = 0;
              while (v150 < *(v110 + 16))
              {
                ++v150;

                _BPlistEncodingFormat.Writer.append(_:)(v151);
                v27 = v210;

                if (v149 == v150)
                {
                  goto LABEL_273;
                }
              }

              goto LABEL_429;
            }

LABEL_273:

            v91 = v206;
            v26 = v207;
            goto LABEL_163;
          }

          _BPlistEncodingFormat.Writer.append(_:)(v117);

          outlined consume of _BPlistEncodingFormat.Reference.Backing(v108, v109, v110, v111);
          goto LABEL_281;
        }

        if (v112 == 7)
        {
          if (v99 == 0x2000)
          {
            v118 = *(v2 + 16);
            if (v118)
            {
              v119 = v118 + 0x2000;
            }

            else
            {
              v119 = 0;
            }

            Data._Representation.append(contentsOf:)(v118, v119);
            v99 = 0;
          }

          *(*(v2 + 16) + v99) = 51;
          v93 = v99 + 1;
          v91 = v206;
          v26 = v207;
          v27 = v210;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_446;
          }

LABEL_161:
          *(v2 + 32) = v93;
          *&__src = bswap64(v108);
          v94 = 8;
          goto LABEL_162;
        }

        if (v112 == 8)
        {
          v115 = v109 >> 62;
          if ((v109 >> 62) > 1)
          {
            if (v115 == 2)
            {
              v141 = *(v108 + 16);
              v140 = *(v108 + 24);
              v116 = v140 - v141;
              if (__OFSUB__(v140, v141))
              {
                goto LABEL_462;
              }

              goto LABEL_277;
            }

            v116 = 0;
          }

          else
          {
            if (!v115)
            {
              v116 = BYTE6(v109);
              goto LABEL_279;
            }

            if (__OFSUB__(HIDWORD(v108), v108))
            {
              goto LABEL_460;
            }

            v116 = HIDWORD(v108) - v108;
LABEL_277:
            outlined copy of Data._Representation(*(v95 + 16), *(v95 + 24));
          }

LABEL_279:
          _BPlistEncodingFormat.Writer.append(_:count:)(5, v116);
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v108, v109);
          outlined consume of _BPlistEncodingFormat.Reference.Backing(v108, v109, v110, v111);
LABEL_280:

          goto LABEL_281;
        }

        v122 = v110 | v109;
        if (v110 | v109 | v108 || v111 != 144)
        {
          v91 = v206;
          v26 = v207;
          if (v111 != 144 || v108 != 1 || v122)
          {
            *&__src = 0x6C6C756E24;
            *(&__src + 1) = 0xE500000000000000;
            specialized String.withUTF8<A>(_:)(&__src);

            v27 = v210;
            goto LABEL_163;
          }

          if (v99 == 0x2000)
          {
            v138 = *(v2 + 16);
            if (v138)
            {
              v139 = v138 + 0x2000;
            }

            else
            {
              v139 = 0;
            }

            Data._Representation.append(contentsOf:)(v138, v139);
            v99 = 0;
            *(v2 + 32) = 0;
          }

          *(*(v2 + 16) + v99) = 8;

          v125 = v99 + 1;
          v27 = v210;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_461;
          }
        }

        else
        {
          v91 = v206;
          v26 = v207;
          if (v99 == 0x2000)
          {
            v123 = *(v2 + 16);
            if (v123)
            {
              v124 = v123 + 0x2000;
            }

            else
            {
              v124 = 0;
            }

            Data._Representation.append(contentsOf:)(v123, v124);
            v99 = 0;
            *(v2 + 32) = 0;
          }

          *(*(v2 + 16) + v99) = 9;

          v125 = v99 + 1;
          v27 = v210;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_453;
          }
        }

        *(v2 + 32) = v125;
LABEL_163:
        ++v92;
        v90 = *(v26 + 16);
        if (v92 == v90)
        {

LABEL_292:
          v154 = *(v27 + 16);
          if (!v154)
          {
LABEL_376:

            v4 = v205;
            goto LABEL_12;
          }

          v155 = 0;
          while (2)
          {
            if (v155 >= v154)
            {
              goto LABEL_420;
            }

            v157 = *(v27 + 8 * v155 + 32);
            v158 = *(v157 + 48);
            v159 = *v2;
            if (v158 != *(*v2 + 16))
            {
              goto LABEL_296;
            }

            v161 = *(v2 + 32);
            v160 = *(v2 + 40);
            v162 = *(v2 + 48);
            v163 = v162 >> 62;
            if ((v162 >> 62) > 1)
            {
              if (v163 == 2)
              {
                v166 = v160 + 16;
                v164 = *(v160 + 16);
                v165 = *(v166 + 8);
                v21 = __OFSUB__(v165, v164);
                v160 = v165 - v164;
                if (v21)
                {
                  goto LABEL_436;
                }
              }

              else
              {
                v160 = 0;
              }
            }

            else if (v163)
            {
              v21 = __OFSUB__(HIDWORD(v160), v160);
              LODWORD(v160) = HIDWORD(v160) - v160;
              if (v21)
              {
                goto LABEL_435;
              }

              v160 = v160;
            }

            else
            {
              v160 = BYTE6(v162);
            }

            v167 = v160 + v161;
            if (__OFADD__(v160, v161))
            {
              goto LABEL_431;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v158 + 1, 1, v159);
            }

            v169 = *(v159 + 2);
            v168 = *(v159 + 3);
            if (v169 >= v168 >> 1)
            {
              v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v168 > 1), v169 + 1, 1, v159);
            }

            *(v159 + 2) = v169 + 1;
            *&v159[8 * v169 + 32] = v167;
            *v2 = v159;
            v170 = *(v157 + 16);
            v171 = *(v157 + 24);
            v172 = *(v157 + 32);
            v173 = *(v157 + 40);
            v174 = v173 >> 4;
            if (v173 >> 4 <= 4)
            {
              if (v173 >> 4 > 1)
              {
                if (v174 == 2)
                {
                  v27 = v210;
                  v175 = 2;
                  if (v170 < 0x100)
                  {
                    _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 0);
                    LOBYTE(__src) = v170;
                    v156 = 1;
                  }

                  else if (v170 >> 16)
                  {
                    if (!HIDWORD(v170))
                    {
                      goto LABEL_294;
                    }

LABEL_318:
                    _BPlistEncodingFormat.Writer.write(_:subtype:)(v175, 3);
                    *&__src = bswap64(v170);
                    v156 = 8;
                  }

                  else
                  {
                    _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 1);
                    LOWORD(__src) = bswap32(v170) >> 16;
                    v156 = 2;
                  }
                }

                else
                {
                  v27 = v210;
                  v175 = 3;
                  if (v174 == 3)
                  {
                    goto LABEL_318;
                  }

LABEL_294:
                  _BPlistEncodingFormat.Writer.write(_:subtype:)(v175, 2);
                  LODWORD(__src) = bswap32(v170);
                  v156 = 4;
                }

                _BPlistEncodingFormat.Writer.write(_:)(&__src, v156);

LABEL_296:
                ++v155;
                v154 = *(v27 + 16);
                if (v155 == v154)
                {
                  goto LABEL_376;
                }

                continue;
              }

              if (!v174)
              {
                if ((v173 & 1) == 0)
                {
                  *&__src = 2415919360;

                  v183 = String.data(using:allowLossyConversion:)(&__src, 0, v170, v171);
                  if (v184 >> 60 == 15)
                  {
                    goto LABEL_474;
                  }

                  v185 = v183;
                  v186 = v184;
                  outlined consume of _BPlistEncodingFormat.Reference.Backing(v170, v171, v172, v173);
                  v187 = v186 >> 62;
                  if ((v186 >> 62) > 1)
                  {
                    v27 = v210;
                    if (v187 == 2)
                    {
                      v191 = *(v185 + 16);
                      v190 = *(v185 + 24);
                      v21 = __OFSUB__(v190, v191);
                      v189 = v190 - v191;
                      if (v21)
                      {
                        goto LABEL_468;
                      }

                      v188 = v185;
                    }

                    else
                    {
                      v188 = v185;
                      v189 = 0;
                    }
                  }

                  else
                  {
                    v27 = v210;
                    if (v187)
                    {
                      LODWORD(v189) = HIDWORD(v185) - v185;
                      if (__OFSUB__(HIDWORD(v185), v185))
                      {
                        goto LABEL_467;
                      }

                      v188 = v185;
                      v189 = v189;
                    }

                    else
                    {
                      v188 = v185;
                      v189 = BYTE6(v186);
                    }
                  }

                  _BPlistEncodingFormat.Writer.append(_:count:)(7, v189 / 2);
                  specialized Data._Representation.withUnsafeBytes<A>(_:)(v188, v186);

                  outlined consume of Data?(v188, v186);
                  goto LABEL_296;
                }

                *&__src = *(v157 + 16);
                *(&__src + 1) = v171;

                specialized String.withUTF8<A>(_:)(&__src);

                goto LABEL_367;
              }

              _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 4);
              *&__src = 0;
              _BPlistEncodingFormat.Writer.write(_:)(&__src, 8);
LABEL_345:
              *&__src = bswap64(v170);
              _BPlistEncodingFormat.Writer.write(_:)(&__src, 8);
LABEL_366:

LABEL_367:
              v27 = v210;
              goto LABEL_296;
            }

            break;
          }

          if (v173 >> 4 <= 6)
          {
            if (v174 != 5)
            {

              _BPlistEncodingFormat.Writer.append(_:)(v170, v171, v172);

              goto LABEL_366;
            }

            _BPlistEncodingFormat.Writer.append(_:)(v178);

            outlined consume of _BPlistEncodingFormat.Reference.Backing(v170, v171, v172, v173);
            goto LABEL_367;
          }

          if (v174 == 7)
          {
            _BPlistEncodingFormat.Writer.write(_:subtype:)(4, 0);
            goto LABEL_345;
          }

          if (v174 != 8)
          {
            if (!(v172 | v171 | v170) && v173 == 144)
            {
              if (v161 == 0x2000)
              {
                v179 = *(v2 + 16);
                if (v179)
                {
                  v180 = v179 + 0x2000;
                }

                else
                {
                  v180 = 0;
                }

                Data._Representation.append(contentsOf:)(v179, v180);
                v161 = 0;
                *(v2 + 32) = 0;
              }

              *(*(v2 + 16) + v161) = 9;

              v27 = v210;
              if (__OFADD__(v161, 1))
              {
                goto LABEL_452;
              }

              *(v2 + 32) = v161 + 1;
              goto LABEL_296;
            }

            if (v173 == 144 && v170 == 1 && !(v172 | v171))
            {
              _BPlistEncodingFormat.Writer.appendTrue()(8);
            }

            else
            {
              *&__src = 0x6C6C756E24;
              *(&__src + 1) = 0xE500000000000000;
              specialized String.withUTF8<A>(_:)(&__src);
            }

            goto LABEL_367;
          }

          v176 = v171 >> 62;
          if ((v171 >> 62) > 1)
          {
            if (v176 != 2)
            {
              v177 = 0;
              goto LABEL_365;
            }

            v182 = *(v170 + 16);
            v181 = *(v170 + 24);
            v177 = v181 - v182;
            if (__OFSUB__(v181, v182))
            {
              goto LABEL_458;
            }
          }

          else
          {
            if (!v176)
            {
              v177 = BYTE6(v171);
LABEL_365:
              _BPlistEncodingFormat.Writer.append(_:count:)(5, v177);
              specialized Data._Representation.withUnsafeBytes<A>(_:)(v170, v171);
              outlined consume of _BPlistEncodingFormat.Reference.Backing(v170, v171, v172, v173);
              goto LABEL_366;
            }

            if (__OFSUB__(HIDWORD(v170), v170))
            {
              goto LABEL_459;
            }

            v177 = HIDWORD(v170) - v170;
          }

          outlined copy of Data._Representation(*(v157 + 16), *(v157 + 24));
          goto LABEL_365;
        }
      }

      if (v111 >> 4 <= 1)
      {
        if (v112)
        {
          _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 4);
          *&__src = 0;
          _BPlistEncodingFormat.Writer.write(_:)(&__src, 8);
          *&__src = bswap64(v108);
          _BPlistEncodingFormat.Writer.write(_:)(&__src, 8);
          goto LABEL_280;
        }

        if ((v111 & 1) == 0)
        {
          *&__src = 2415919360;

          v142 = String.data(using:allowLossyConversion:)(&__src, 0, v108, v109);
          if (v143 >> 60 == 15)
          {
            goto LABEL_475;
          }

          v144 = v142;
          v145 = v143;
          outlined consume of _BPlistEncodingFormat.Reference.Backing(v108, v109, v110, v111);
          v146 = v145 >> 62;
          if ((v145 >> 62) > 1)
          {
            v91 = v206;
            v26 = v207;
            v27 = v210;
            if (v146 == 2)
            {
              v153 = *(v144 + 16);
              v152 = *(v144 + 24);
              v21 = __OFSUB__(v152, v153);
              v148 = v152 - v153;
              if (v21)
              {
                goto LABEL_469;
              }

              v147 = v144;
            }

            else
            {
              v147 = v144;
              v148 = 0;
            }
          }

          else
          {
            v91 = v206;
            v26 = v207;
            v27 = v210;
            if (v146)
            {
              LODWORD(v148) = HIDWORD(v144) - v144;
              if (__OFSUB__(HIDWORD(v144), v144))
              {
                goto LABEL_470;
              }

              v147 = v144;
              v148 = v148;
            }

            else
            {
              v147 = v144;
              v148 = BYTE6(v145);
            }
          }

          _BPlistEncodingFormat.Writer.append(_:count:)(7, v148 / 2);
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v147, v145);

          outlined consume of Data?(v147, v145);
          goto LABEL_163;
        }

        *&__src = *(v95 + 16);
        *(&__src + 1) = v109;

        specialized String.withUTF8<A>(_:)(&__src);

LABEL_281:
        v27 = v210;
        v91 = v206;
        v26 = v207;
        goto LABEL_163;
      }

      if (v112 == 2)
      {
        v91 = v206;
        v26 = v207;
        v27 = v210;
        if (v108 < 0x100)
        {
          _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 0);
          LOBYTE(__src) = v108;
          v94 = 1;
        }

        else if (v108 >> 16)
        {
          if (HIDWORD(v108))
          {
            _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 3);
            *&__src = bswap64(v108);
            v94 = 8;
          }

          else
          {
            _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 2);
            LODWORD(__src) = bswap32(v108);
            v94 = 4;
          }
        }

        else
        {
          _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 1);
          LOWORD(__src) = bswap32(v108) >> 16;
          v94 = 2;
        }
      }

      else
      {
        v91 = v206;
        v26 = v207;
        v27 = v210;
        if (v112 == 3)
        {
          if (v99 == 0x2000)
          {
            v113 = *(v2 + 16);
            if (v113)
            {
              v114 = v113 + 0x2000;
            }

            else
            {
              v114 = 0;
            }

            Data._Representation.append(contentsOf:)(v113, v114);
            v99 = 0;
          }

          *(*(v2 + 16) + v99) = 35;
          v93 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_447;
          }

          goto LABEL_161;
        }

        if (v99 == 0x2000)
        {
          v120 = *(v2 + 16);
          if (v120)
          {
            v121 = v120 + 0x2000;
          }

          else
          {
            v121 = 0;
          }

          Data._Representation.append(contentsOf:)(v120, v121);
          v99 = 0;
        }

        *(*(v2 + 16) + v99) = 34;
        if (__OFADD__(v99, 1))
        {
          goto LABEL_445;
        }

        *(v2 + 32) = v99 + 1;
        LODWORD(__src) = bswap32(v108);
        v94 = 4;
      }

LABEL_162:
      _BPlistEncodingFormat.Writer.write(_:)(&__src, v94);

      goto LABEL_163;
    }

    if (v28 >> 4 > 1)
    {
      if (v29 == 2)
      {
        if (v25 < 0x100)
        {
          if (v15 == 0x2000)
          {
            v75 = *(v11 + 16);
            v76 = *(v2 + 16);
            if (v76)
            {
              v77 = v76 + 0x2000;
            }

            else
            {
              v77 = 0;
            }

            Data._Representation.append(contentsOf:)(v76, v77);
            LOBYTE(v25) = v75;
            v15 = 0;
          }

          *(*(v2 + 16) + v15) = 16;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_449;
          }

          *(v2 + 32) = v15 + 1;
          LOBYTE(__src) = v25;
          v10 = 1;
          goto LABEL_10;
        }

        if (!(v25 >> 16))
        {
          if (v15 == 0x2000)
          {
            v192 = *(v11 + 16);
            v193 = *(v2 + 16);
            if (v193)
            {
              v194 = v193 + 0x2000;
            }

            else
            {
              v194 = 0;
            }

            Data._Representation.append(contentsOf:)(v193, v194);
            LODWORD(v25) = v192;
            v15 = 0;
          }

          *(*(v2 + 16) + v15) = 17;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_455;
          }

          *(v2 + 32) = v15 + 1;
          LOWORD(__src) = bswap32(v25) >> 16;
          v10 = 2;
          goto LABEL_10;
        }

        if (!HIDWORD(v25))
        {
          if (v15 == 0x2000)
          {
            v198 = *(v11 + 16);
            v199 = *(v2 + 16);
            if (v199)
            {
              v200 = v199 + 0x2000;
            }

            else
            {
              v200 = 0;
            }

            Data._Representation.append(contentsOf:)(v199, v200);
            LODWORD(v25) = v198;
            v15 = 0;
          }

          *(*(v2 + 16) + v15) = 18;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_464;
          }

          *(v2 + 32) = v15 + 1;
          LODWORD(__src) = bswap32(v25);
          v10 = 4;
          goto LABEL_10;
        }

        if (v15 == 0x2000)
        {
          v41 = *(v11 + 16);
          v42 = *(v2 + 16);
          if (v42)
          {
            v43 = v42 + 0x2000;
          }

          else
          {
            v43 = 0;
          }

          Data._Representation.append(contentsOf:)(v42, v43);
          v25 = v41;
          v15 = 0;
        }

        *(*(v2 + 16) + v15) = 19;
        v9 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_466;
        }
      }

      else
      {
        if (v29 != 3)
        {
          if (v15 == 0x2000)
          {
            v47 = *(v11 + 16);
            v48 = *(v2 + 16);
            if (v48)
            {
              v49 = v48 + 0x2000;
            }

            else
            {
              v49 = 0;
            }

            Data._Representation.append(contentsOf:)(v48, v49);
            LODWORD(v25) = v47;
            v15 = 0;
          }

          *(*(v2 + 16) + v15) = 34;
          v50 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_441;
          }

          *(v2 + 32) = v50;
          v51 = bswap32(v25);
          LODWORD(__src) = v51;
          if (__OFSUB__(0x2000, v50))
          {
            goto LABEL_444;
          }

          if (0x1FFF - v15 >= 4)
          {
            v88 = *(v2 + 16);
            if (!v88)
            {
              goto LABEL_473;
            }

            *(v88 + v50) = v51;
            if (__OFADD__(v50, 4))
            {
              goto LABEL_451;
            }

            *(v2 + 32) = v15 + 5;
          }

          else
          {
            if (v50 > 0)
            {
              v52 = *(v2 + 16);
              v53 = &v52[v50];
              if (v52)
              {
                v54 = v53;
              }

              else
              {
                v54 = 0;
              }

              Data._Representation.append(contentsOf:)(v52, v54);
              *(v2 + 32) = 0;
            }

            Data._Representation.append(contentsOf:)(&__src, &__src + 4);
          }

          goto LABEL_11;
        }

        if (v15 == 0x2000)
        {
          v30 = *(v11 + 16);
          v31 = *(v2 + 16);
          if (v31)
          {
            v32 = v31 + 0x2000;
          }

          else
          {
            v32 = 0;
          }

          Data._Representation.append(contentsOf:)(v31, v32);
          v25 = v30;
          v15 = 0;
        }

        *(*(v2 + 16) + v15) = 35;
        v9 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_439;
        }
      }

      goto LABEL_8;
    }

    if (!v29)
    {
      break;
    }

    if (v15 == 0x2000)
    {
      v58 = *(v11 + 16);
      v59 = *(v2 + 16);
      if (v59)
      {
        v60 = v59 + 0x2000;
      }

      else
      {
        v60 = 0;
      }

      Data._Representation.append(contentsOf:)(v59, v60);
      v25 = v58;
      v15 = 0;
    }

    *(*(v2 + 16) + v15) = 20;
    v61 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_440;
    }

    *(v2 + 32) = v61;
    *&__src = 0;
    if (__OFSUB__(0x2000, v61))
    {
      goto LABEL_443;
    }

    if (0x1FFF - v15 < 8)
    {
      v62 = v25;
      if (v61 > 0)
      {
        v63 = *(v2 + 16);
        v64 = &v63[v61];
        if (v63)
        {
          v65 = v64;
        }

        else
        {
          v65 = 0;
        }

        Data._Representation.append(contentsOf:)(v63, v65);
        *(v2 + 32) = 0;
      }

      Data._Representation.append(contentsOf:)(&__src, &__src + 8);
      v25 = v62;
      goto LABEL_9;
    }

    v89 = *(v2 + 16);
    if (!v89)
    {
      goto LABEL_472;
    }

    *(v89 + v61) = 0;
    v21 = __OFADD__(v61, 8);
    v9 = v15 + 9;
    if (v21)
    {
      goto LABEL_450;
    }

LABEL_8:
    *(v2 + 32) = v9;
LABEL_9:
    *&__src = bswap64(v25);
    v10 = 8;
LABEL_10:
    _BPlistEncodingFormat.Writer.write(_:)(&__src, v10);
LABEL_11:

LABEL_12:
    v8 = v208;
LABEL_13:
    if (++v8 == v4)
    {

      return;
    }
  }

  v35 = *(v11 + 16);
  if (v28)
  {

    if ((v26 & 0x1000000000000000) != 0)
    {
      v201 = v35;
      v35 = static String._copying(_:)();
      v203 = v202;
      outlined consume of _BPlistEncodingFormat.Reference.Backing(v201, v26, v210, v28);
      v26 = v203;
      if ((v203 & 0x2000000000000000) != 0)
      {
        goto LABEL_407;
      }

LABEL_52:
      if ((v35 & 0x1000000000000000) != 0)
      {
        v36 = (v26 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v37 = v35 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = _StringObject.sharedUTF8.getter();
        v37 = v204;
      }

      _BPlistEncodingFormat.Writer.append(_:count:)(6, v37);
      p_src = v36;
      v39 = v37;
    }

    else
    {
      if ((v26 & 0x2000000000000000) == 0)
      {
        goto LABEL_52;
      }

LABEL_407:
      *&__src = v35;
      *(&__src + 1) = v26 & 0xFFFFFFFFFFFFFFLL;
      _BPlistEncodingFormat.Writer.append(_:count:)(6, HIBYTE(v26) & 0xF);
      p_src = &__src;
      v39 = HIBYTE(v26) & 0xF;
    }

    _BPlistEncodingFormat.Writer.write(_:)(p_src, v39);

    goto LABEL_11;
  }

  *&__src = 2415919360;

  v82 = String.data(using:allowLossyConversion:)(&__src, 0, v35, v26);
  if (v83 >> 60 != 15)
  {
    v84 = v82;
    v85 = v83;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v35, v26, v210, v28);
    v86 = v85 >> 62;
    if ((v85 >> 62) > 1)
    {
      if (v86 == 2)
      {
        v197 = *(v84 + 16);
        v196 = *(v84 + 24);
        v21 = __OFSUB__(v196, v197);
        v87 = v196 - v197;
        if (v21)
        {
          goto LABEL_465;
        }
      }

      else
      {
        v87 = 0;
      }
    }

    else if (v86)
    {
      LODWORD(v87) = HIDWORD(v84) - v84;
      if (__OFSUB__(HIDWORD(v84), v84))
      {
        goto LABEL_463;
      }

      v87 = v87;
    }

    else
    {
      v87 = BYTE6(v85);
    }

    _BPlistEncodingFormat.Writer.append(_:count:)(7, v87 / 2);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v84, v85);

    outlined consume of Data?(v84, v85);
    goto LABEL_12;
  }

  __break(1u);
LABEL_472:
  __break(1u);
LABEL_473:
  __break(1u);
LABEL_474:
  __break(1u);
LABEL_475:
  __break(1u);
}

{
  v32[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *v1;
  if (v2 != *(*v1 + 2))
  {
    return;
  }

  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v6 = BYTE6(v7);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v8 != 2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v11 = v6 + 16;
  v9 = *(v6 + 2);
  v10 = *(v11 + 1);
  v12 = __OFSUB__(v10, v9);
  v6 = (v10 - v9);
  if (v12)
  {
    __break(1u);
LABEL_9:
    v12 = __OFSUB__(HIDWORD(v6), v6);
    LODWORD(v6) = HIDWORD(v6) - v6;
    if (v12)
    {
      __break(1u);
      goto LABEL_68;
    }

    v6 = v6;
  }

LABEL_12:
  v13 = &v5[v6];
  if (__OFADD__(v6, v5))
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_14;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 + 1, 1, v3);
LABEL_14:
  v15 = *(v3 + 2);
  v14 = *(v3 + 3);
  if (v15 >= v14 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v3);
  }

  *(v3 + 2) = v15 + 1;
  *&v3[8 * v15 + 32] = v13;
  *v1 = v3;
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = v19 >> 4;
  if (v19 >> 4 > 4)
  {
    if (v19 >> 4 <= 6)
    {
      if (v20 != 5)
      {

        _BPlistEncodingFormat.Writer.append(_:)(v16, v17, v18);

        return;
      }

      _BPlistEncodingFormat.Writer.append(_:)(v26);
LABEL_61:

      outlined consume of _BPlistEncodingFormat.Reference.Backing(v16, v17, v18, v19);
      return;
    }

    if (v20 == 7)
    {
      v21 = 4;
      v22 = 0;
LABEL_35:
      _BPlistEncodingFormat.Writer.write(_:subtype:)(v21, v22);
LABEL_41:
      v32[0] = bswap64(v16);
      v28 = 8;
      goto LABEL_42;
    }

    if (v20 != 8)
    {
      if (v18 | v17 | v16 || v19 != 144)
      {
        if (v19 != 144 || v16 != 1 || v18 | v17)
        {
          v32[0] = 0x6C6C756E24;
          v32[1] = 0xE500000000000000;
          specialized String.withUTF8<A>(_:)(v32);

          return;
        }

        v29 = 8;
      }

      else
      {
        v29 = 9;
      }

      _BPlistEncodingFormat.Writer.appendTrue()(v29);
      return;
    }

    v23 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v23 != 2)
      {
        v24 = 0;
        goto LABEL_60;
      }

      v31 = *(v16 + 16);
      v30 = *(v16 + 24);
      v24 = v30 - v31;
      if (!__OFSUB__(v30, v31))
      {
        goto LABEL_58;
      }

      __break(1u);
    }

    else if (!v23)
    {
      v24 = BYTE6(v17);
LABEL_60:
      _BPlistEncodingFormat.Writer.append(_:count:)(5, v24);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v16, v17);
      goto LABEL_61;
    }

    if (!__OFSUB__(HIDWORD(v16), v16))
    {
      v24 = HIDWORD(v16) - v16;
LABEL_58:
      outlined copy of _BPlistEncodingFormat.Reference.Backing(v16, v17, v18, v19);
      goto LABEL_60;
    }

LABEL_68:
    __break(1u);
  }

  if (v19 >> 4 <= 1)
  {
    if (v20)
    {
      _BPlistEncodingFormat.Writer.write(_:subtype:)(2, 4);
      v32[0] = 0;
      _BPlistEncodingFormat.Writer.write(_:)(v32, 8);
      goto LABEL_41;
    }

    v25._countAndFlagsBits = v16;
    v25._object = v17;
    _BPlistEncodingFormat.Writer.append(_:isASCII:)(v25, v19 & 1);
    goto LABEL_61;
  }

  if (v20 != 2)
  {
    v21 = 3;
    if (v20 != 3)
    {
      _BPlistEncodingFormat.Writer.write(_:subtype:)(3, 2);
      LODWORD(v32[0]) = bswap32(v16);
      v28 = 4;
LABEL_42:
      _BPlistEncodingFormat.Writer.write(_:)(v32, v28);
      return;
    }

    v22 = 3;
    goto LABEL_35;
  }

  v27 = *(a1 + 16);

  _BPlistEncodingFormat.Writer.append(_:)(v27);
}

uint64_t PropertyListEncoder.encodeToTopLevelContainerBPlist<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  type metadata accessor for __PlistEncoderBPlist();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  *(v10 + 16) = v11;
  *(v10 + 40) = xmmword_181248570;
  specialized _BPlistEncodingFormat.init()(v21);
  v12 = v21[1];
  *(v10 + 56) = v21[0];
  *(v10 + 72) = v12;
  *(v10 + 88) = v22;

  v13 = specialized __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(a1, 0x8000000000000000, 0, 0, 0, 0xFFu, a2, a3);
  if (v4)
  {
  }

  if (!v13)
  {
    v16 = type metadata accessor for EncodingError();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
    v18[3] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
    _StringGuts.grow(_:)(39);

    v20 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v20);

    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181482320);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B30], v16);
    swift_willThrow();
  }

  v15 = v13;

  return v15;
}

uint64_t specialized __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unint64_t a7, unint64_t a8)
{
  v49 = a8;
  v9 = v8;
  v47 = a6;
  v48 = a5;
  v46 = a4;
  v14 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  if (swift_dynamicCastMetatype())
  {
    (*(v14 + 16))(v22, a1, a7);
    swift_dynamicCast();
    v23 = *(v9 + 88);
    v24 = *(v23 + 16);
    v25 = *(v23 + 24);
    v26 = *(v23 + 32);
    *(v23 + 16) = v51;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    v27 = *(v23 + 40);
    *(v23 + 40) = 112;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v24, v25, v26, v27);
    v28 = *(v9 + 88);

    v29 = specialized Set._Variant.insert(_:)(&v53, v28);
    v30 = v53;
    if (v29)
    {
LABEL_3:
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v31 = swift_allocObject();
      *(v31 + 24) = 0;
      *(v31 + 32) = 0;
      *(v31 + 16) = 2;
      *(v31 + 40) = -112;
      *(v31 + 48) = -1;
      *(v9 + 88) = v31;
    }
  }

  else
  {
    v33 = v49;
    v45 = a2;
    if (swift_dynamicCastMetatype())
    {
      (*(v14 + 16))(v19, a1, a7);
      swift_dynamicCast();
      v34 = v51;
      v35 = v52;
      v36 = *(v9 + 88);
      v37 = *(v36 + 16);
      v38 = *(v36 + 24);
      v39 = *(v36 + 32);
      *(v36 + 16) = v51;
      *(v36 + 24) = v35;
      *(v36 + 32) = 0;
      v40 = *(v36 + 40);
      *(v36 + 40) = 0x80;
      outlined copy of Data._Representation(v34, v35);
      outlined consume of _BPlistEncodingFormat.Reference.Backing(v37, v38, v39, v40);
      v41 = *(v9 + 88);

      LOBYTE(v38) = specialized Set._Variant.insert(_:)(&v53, v41);
      outlined consume of Data._Representation(v34, v35);
      v30 = v53;
      if ((v38 & 1) == 0)
      {
        return v30;
      }

      goto LABEL_3;
    }

    if (swift_conformsToProtocol2())
    {
      (*(v14 + 16))(v16, a1, a7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSE_pGMd);
      swift_dynamicCast();
      v30 = specialized __PlistEncoderBPlist.wrap<A>(_:for:_:)(v51, v45, a3, v46, v48, v47);
    }

    else
    {
      MEMORY[0x1EEE9AC00](0);
      *(&v45 - 4) = a7;
      *(&v45 - 3) = v33;
      *(&v45 - 2) = a1;
      v42 = a3;
      v30 = v9;
      v43 = v50;
      v44 = specialized __PlistEncoderBPlist._wrapGeneric<A>(_:for:_:)(partial apply for specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:), (&v45 - 6), v45, v42, v46, v48, v47);
      if (!v43)
      {
        return v44;
      }
    }
  }

  return v30;
}

uint64_t specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(uint64_t a1)
{
  v4[3] = type metadata accessor for __PlistEncoderBPlist();
  v4[4] = lazy protocol witness table accessor for type _BPlistEncodingFormat.Reference and conformance _BPlistEncodingFormat.Reference(&lazy protocol witness table cache variable for type __PlistEncoderBPlist and conformance __PlistEncoderBPlist, v2, type metadata accessor for __PlistEncoderBPlist);
  v4[0] = a1;

  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t outlined consume of _BPlistEncodingFormat.Reference.Backing(uint64_t result, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = a4 >> 4;
  if (v5 > 5)
  {
    if (v5 == 6)
    {
    }

    if (v5 == 8)
    {

      return outlined consume of Data._Representation(result, a2);
    }
  }

  else if (a4 >> 4)
  {
    if (v5 == 5)
    {
    }
  }

  else
  {
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    Hasher.init(_seed:)();
    _BPlistEncodingFormat.Reference.hash(into:)(v85);
    v9 = Hasher._finalize()();
    v10 = -1 << *(v6 + 32);
    v11 = v9 & ~v10;
    if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v12 = ~v10;
      do
      {

        v14 = specialized static _BPlistEncodingFormat.Reference.== infix(_:_:)(v13, a2);

        if (v14)
        {

          *a1 = *(*(v6 + 48) + 8 * v11);

          return 0;
        }

        v11 = (v11 + 1) & v12;
      }

      while (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85[0] = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v11, isUniquelyReferenced_nonNull_native);
    *v2 = v85[0];
    goto LABEL_110;
  }

  v7 = __CocoaSet.member(for:)();

  if (v7)
  {

    type metadata accessor for _BPlistEncodingFormat.Reference();
    swift_dynamicCast();
    result = 0;
    *a1 = v85[0];
    return result;
  }

  v17 = __CocoaSet.count.getter();
  if (__OFADD__(v17, 1))
  {
    goto LABEL_116;
  }

  v82 = v2;
  v83 = a2;
  v81 = a1;
  if (v17 == -1)
  {

    v21 = MEMORY[0x1E69E7CD0];
    goto LABEL_79;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation21_BPlistEncodingFormatV9ReferenceCGMd);
  v21 = static _SetStorage.convert(_:capacity:)();
  __CocoaSet.makeIterator()();
  v22 = __CocoaSet.Iterator.next()();
  if (!v22)
  {
LABEL_76:

LABEL_79:
    if (*(v21 + 24) <= *(v21 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation21_BPlistEncodingFormatV9ReferenceCGMd);
      v60 = static _SetStorage.resize(original:capacity:move:)();
      v59 = v60;
      if (*(v21 + 16))
      {
        v61 = (v21 + 56);
        v62 = 1 << *(v21 + 32);
        if (v62 < 64)
        {
          v63 = ~(-1 << v62);
        }

        else
        {
          v63 = -1;
        }

        v64 = v63 & *(v21 + 56);
        v65 = (v62 + 63) >> 6;
        v66 = v60 + 56;

        v67 = 0;
        while (v64)
        {
          v69 = __clz(__rbit64(v64));
          v64 &= v64 - 1;
LABEL_95:
          v72 = *(*(v21 + 48) + 8 * (v69 | (v67 << 6)));
          Hasher.init(_seed:)();
          _BPlistEncodingFormat.Reference.hash(into:)(v85);
          v17 = Hasher._finalize()();
          v73 = -1 << *(v59 + 32);
          v74 = v17 & ~v73;
          v75 = v74 >> 6;
          if (((-1 << v74) & ~*(v66 + 8 * (v74 >> 6))) == 0)
          {
            v76 = 0;
            v77 = (63 - v73) >> 6;
            while (++v75 != v77 || (v76 & 1) == 0)
            {
              v78 = v75 == v77;
              if (v75 == v77)
              {
                v75 = 0;
              }

              v76 |= v78;
              v79 = *(v66 + 8 * v75);
              if (v79 != -1)
              {
                v68 = __clz(__rbit64(~v79)) + (v75 << 6);
                goto LABEL_87;
              }
            }

            goto LABEL_115;
          }

          v68 = __clz(__rbit64((-1 << v74) & ~*(v66 + 8 * (v74 >> 6)))) | v74 & 0x7FFFFFFFFFFFFFC0;
LABEL_87:
          *(v66 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
          *(*(v59 + 48) + 8 * v68) = v72;
          ++*(v59 + 16);
        }

        v70 = v67;
        while (1)
        {
          v67 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            goto LABEL_114;
          }

          if (v67 >= v65)
          {
            v80 = 1 << *(v21 + 32);
            if (v80 >= 64)
            {
              bzero((v21 + 56), ((v80 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
            }

            else
            {
              *v61 = -1 << v80;
            }

            v3 = v82;
            a2 = v83;
            *(v21 + 16) = 0;

            a1 = v81;
            goto LABEL_109;
          }

          v71 = v61[v67];
          ++v70;
          if (v71)
          {
            v69 = __clz(__rbit64(v71));
            v64 = (v71 - 1) & v71;
            goto LABEL_95;
          }
        }
      }
    }

    else
    {

      v59 = v21;
    }

LABEL_109:
    specialized _NativeSet._unsafeInsertNew(_:)(a2, v59);

    *v3 = v59;
LABEL_110:
    *a1 = a2;
    return 1;
  }

  v23 = v22;
  type metadata accessor for _BPlistEncodingFormat.Reference();
  v24 = v23;
  while (2)
  {
    v85[0] = v24;
    swift_dynamicCast();
    if (*(v21 + 24) > *(v21 + 16))
    {
      goto LABEL_16;
    }

    v17 = static _SetStorage.resize(original:capacity:move:)();
    v30 = v17;
    if (!*(v21 + 16))
    {
      goto LABEL_15;
    }

    v31 = 0;
    v32 = (v21 + 56);
    v33 = 1 << *(v21 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v21 + 56);
    v36 = (v33 + 63) >> 6;
    v37 = v17 + 56;
    while (v35)
    {
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
LABEL_34:
      v42 = *(*(v21 + 48) + 8 * (v39 | (v31 << 6)));
      Hasher.init(_seed:)();
      v18 = *(v42 + 16);
      v19 = *(v42 + 24);
      v17 = *(v42 + 32);
      v20 = *(v42 + 40);
      v43 = v20 >> 4;
      if (v20 >> 4 <= 2)
      {
        if (v43)
        {
          if (v43 != 1 && v43 != 2)
          {
            goto LABEL_117;
          }

          v46 = *(v42 + 16);
          goto LABEL_53;
        }

        MEMORY[0x1865CD060](v17, v18, v19);
      }

      else if (v20 >> 4 > 6)
      {
        if (v43 == 7)
        {
LABEL_50:
          if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v46 = *(v42 + 16);
          }

          else
          {
            v46 = 0;
          }

LABEL_53:
          MEMORY[0x1865CD090](v46, v18, v19);
          goto LABEL_54;
        }

        if (v43 != 8)
        {
          goto LABEL_117;
        }

        Data.hash(into:)(v85, v18, v19);
      }

      else
      {
        if (v43 == 3)
        {
          goto LABEL_50;
        }

        if (v43 != 4)
        {
          goto LABEL_117;
        }

        if ((v18 & 0x7FFFFF) == 0 && (*(v42 + 16) & 0x7F800000) == 0)
        {
          v45 = 0;
        }

        else
        {
          v45 = *(v42 + 16);
        }

        Hasher._combine(_:)(v45);
      }

LABEL_54:
      v17 = Hasher._finalize()();
      v47 = -1 << *(v30 + 32);
      v48 = v17 & ~v47;
      v49 = v48 >> 6;
      if (((-1 << v48) & ~*(v37 + 8 * (v48 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v47) >> 6;
        while (++v49 != v51 || (v50 & 1) == 0)
        {
          v52 = v49 == v51;
          if (v49 == v51)
          {
            v49 = 0;
          }

          v50 |= v52;
          v53 = *(v37 + 8 * v49);
          if (v53 != -1)
          {
            v38 = __clz(__rbit64(~v53)) + (v49 << 6);
            goto LABEL_26;
          }
        }

LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v38 = __clz(__rbit64((-1 << v48) & ~*(v37 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v37 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      *(*(v30 + 48) + 8 * v38) = v42;
      ++*(v30 + 16);
    }

    v40 = v31;
    while (1)
    {
      v31 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_112;
      }

      if (v31 >= v36)
      {
        break;
      }

      v41 = v32[v31];
      ++v40;
      if (v41)
      {
        v39 = __clz(__rbit64(v41));
        v35 = (v41 - 1) & v41;
        goto LABEL_34;
      }
    }

    v58 = 1 << *(v21 + 32);
    if (v58 >= 64)
    {
      bzero((v21 + 56), ((v58 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v58;
    }

    v3 = v82;
    a2 = v83;
    *(v21 + 16) = 0;
LABEL_15:

    v21 = v30;
LABEL_16:
    Hasher.init(_seed:)();
    _BPlistEncodingFormat.Reference.hash(into:)(v85);
    v17 = Hasher._finalize()();
    v25 = v21 + 56;
    v26 = -1 << *(v21 + 32);
    v27 = v17 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v21 + 56 + 8 * (v27 >> 6))) != 0)
    {
      v29 = __clz(__rbit64((-1 << v27) & ~*(v21 + 56 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_18:
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      *(*(v21 + 48) + 8 * v29) = v84;
      ++*(v21 + 16);
      v24 = __CocoaSet.Iterator.next()();
      if (!v24)
      {
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

  v54 = 0;
  v55 = (63 - v26) >> 6;
  while (++v28 != v55 || (v54 & 1) == 0)
  {
    v56 = v28 == v55;
    if (v28 == v55)
    {
      v28 = 0;
    }

    v54 |= v56;
    v57 = *(v25 + 8 * v28);
    if (v57 != -1)
    {
      v29 = __clz(__rbit64(~v57)) + (v28 << 6);
      goto LABEL_18;
    }
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  outlined copy of _BPlistEncodingFormat.Reference.Backing(v18, v19, v17, v20);
  _StringGuts.grow(_:)(79);
  MEMORY[0x1865CB0E0](0xD00000000000004DLL, 0x8000000181480E80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = *v2;
  v6 = MEMORY[0x1865CD030](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v5 = *v2;
  v6 = MEMORY[0x1865CD030](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}