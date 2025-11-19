void *specialized Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  return specialized Data.withContiguousStorageIfAvailable<A>(_:)(a1, a2, a3, closure #2 in String.init<A>(bytes:encoding:), closure #2 in String.init<A>(bytes:encoding:));
}

{
  return specialized Data.withContiguousStorageIfAvailable<A>(_:)(a1, a2, a3, closure #3 in String.init<A>(bytes:encoding:), closure #3 in String.init<A>(bytes:encoding:));
}

void *specialized Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, void *(*a4)(void *__return_ptr, void *, void), void *(*a5)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v23[0] = a1;
      LOWORD(v23[1]) = a2;
      BYTE2(v23[1]) = BYTE2(a2);
      BYTE3(v23[1]) = BYTE3(a2);
      BYTE4(v23[1]) = BYTE4(a2);
      BYTE5(v23[1]) = BYTE5(a2);
      result = a4(v24, v23, BYTE6(a2));
      if (!v5)
      {
        return v24[0];
      }

      return result;
    }

    v19 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v20 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v22 = a1 - v21;
      if (!__OFSUB__(a1, v21))
      {
        if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v19)
        {
          v19 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        v14 = v22 + v20;
        if (v22 + v20)
        {
          v18 = v19 + v14;
          return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v14, v18, a3, a5);
        }

LABEL_23:
        v14 = 0;
        v18 = 0;
        return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v14, v18, a3, a5);
      }

LABEL_31:
      __break(1u);
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v10)
    {
      v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v12 = __OFSUB__(v8, v11);
      v13 = v8 - v11;
      if (v12)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v14 = v13 + v10;
      v12 = __OFSUB__(v9, v8);
      v15 = v9 - v8;
      if (!v12)
      {
LABEL_9:
        v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v16 >= v15)
        {
          v16 = v15;
        }

        v17 = v16 + v14;
        if (v14)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v14, v18, a3, a5);
      }
    }

    else
    {
      v14 = 0;
      v12 = __OFSUB__(v9, v8);
      v15 = v9 - v8;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  memset(v23, 0, 14);
  result = a4(v24, v23, 0);
  if (!v5)
  {
    return v24[0];
  }

  return result;
}

id specialized Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v40[0] = a1;
      LOWORD(v40[1]) = a2;
      BYTE2(v40[1]) = BYTE2(a2);
      BYTE3(v40[1]) = BYTE3(a2);
      BYTE4(v40[1]) = BYTE4(a2);
      BYTE5(v40[1]) = BYTE5(a2);
      result = [objc_allocWithZone(NSString) initWithBytes:v40 length:BYTE6(a2) encoding:a3];
      if (result)
      {
        v6 = result;
        isTaggedPointer = _objc_isTaggedPointer(result);
        v8 = v6;
        v3 = v8;
        if (!isTaggedPointer)
        {
          goto LABEL_34;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v8);
        if (TaggedPointerTag)
        {
          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              goto LABEL_30;
            }

LABEL_34:
            v41 = 0;
            if (__CFStringIsCF())
            {
              if (v41)
              {
LABEL_58:
                v35 = String.init(_cocoaString:)();
LABEL_59:

                return v35;
              }

              goto LABEL_45;
            }

            goto LABEL_43;
          }

          result = [v3 UTF8String];
          if (!result)
          {
            __break(1u);
            goto LABEL_64;
          }

          result = String.init(utf8String:)(result);
          if (v36)
          {
LABEL_56:
            v38 = result;

            return v38;
          }

          __break(1u);
LABEL_54:
          result = [v3 UTF8String];
          if (result)
          {
            result = String.init(utf8String:)(result);
            if (v37)
            {
              goto LABEL_56;
            }

            goto LABEL_65;
          }

LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          return result;
        }

LABEL_47:
        _CFIndirectTaggedPointerStringGetContents();
        v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v34)
        {
          v35 = v33;
        }

        else
        {
          [v3 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v35 = v39;
        }

        goto LABEL_59;
      }

      return result;
    }

    v21 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v22 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v22)
      {
        goto LABEL_32;
      }

      v23 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v24 = a1 - v23;
      if (!__OFSUB__(a1, v23))
      {
        if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v21)
        {
          v21 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        v16 = v24 + v22;
        if (v24 + v22)
        {
          v20 = v21 + v16;
          return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v16, v20, a3);
        }

LABEL_32:
        v16 = 0;
        v20 = 0;
        return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v16, v20, a3);
      }

LABEL_62:
      __break(1u);
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 == 2)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v12)
    {
      v13 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v14 = __OFSUB__(v10, v13);
      v15 = v10 - v13;
      if (v14)
      {
        goto LABEL_61;
      }

      v16 = v15 + v12;
      v14 = __OFSUB__(v11, v10);
      v17 = v11 - v10;
      if (!v14)
      {
LABEL_13:
        v18 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v18 >= v17)
        {
          v18 = v17;
        }

        v19 = v18 + v16;
        if (v16)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v16, v20, a3);
      }
    }

    else
    {
      v16 = 0;
      v14 = __OFSUB__(v11, v10);
      v17 = v11 - v10;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  memset(v40, 0, 14);
  result = [objc_allocWithZone(NSString) initWithBytes:v40 length:0 encoding:a3];
  if (result)
  {
    v25 = result;
    v26 = _objc_isTaggedPointer(result);
    v27 = v25;
    v3 = v27;
    if (v26)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v27);
      switch(TaggedPointerTag)
      {
        case 0:
          goto LABEL_47;
        case 0x16:
          goto LABEL_54;
        case 2:
LABEL_30:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v28 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          return v28;
      }
    }

    v41 = 0;
    if (__CFStringIsCF())
    {
      if (v41)
      {
        goto LABEL_58;
      }

LABEL_45:

      return 0;
    }

LABEL_43:
    v29 = v3;
    v30 = String.init(_nativeStorage:)();
    if (v31)
    {
      v32 = v30;

      return v32;
    }

    v41 = [v29 length];
    if (v41)
    {
      goto LABEL_58;
    }

    return 0;
  }

  return result;
}

double specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (a1)
  {
    v8 = a2 - a1;
    *&v16 = _s10Foundation4DataV15_RepresentationO5countAESi_tcfC_0(a3);
    *(&v16 + 1) = v10;
    v11 = a3;
    v12 = a1;
    v13 = v8;
  }

  else
  {
    *&v16 = _s10Foundation4DataV15_RepresentationO5countAESi_tcfC_0(a3);
    *(&v16 + 1) = v14;
    v11 = a3;
    v12 = 0;
    v13 = 0;
  }

  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v16, v11, v12, v13, a4);
  result = *&v16;
  *a5 = v16;
  return result;
}

id specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    result = [objc_allocWithZone(NSString) initWithBytes:a1 length:a2 - a1 encoding:a3];
    if (result)
    {
      v4 = result;
      isTaggedPointer = _objc_isTaggedPointer(result);
      v6 = v4;
      v7 = v6;
      if (!isTaggedPointer)
      {
        goto LABEL_15;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v6);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            goto LABEL_13;
          }

LABEL_15:
          if (__CFStringIsCF())
          {
            goto LABEL_20;
          }

LABEL_18:
          v13 = v7;
          v14 = String.init(_nativeStorage:)();
          if (v15)
          {
            v16 = v14;

            return v16;
          }

          if (![v13 length])
          {

            return 0;
          }

          v21 = String.init(_cocoaString:)();
          goto LABEL_34;
        }

        result = [v7 UTF8String];
        if (result)
        {
          result = String.init(utf8String:)(result);
          if (!v20)
          {
            __break(1u);
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            v21 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_34:
            v19 = v21;
LABEL_35:

            return v19;
          }

LABEL_31:
          v23 = result;

          return v23;
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_22:
      _CFIndirectTaggedPointerStringGetContents();
      v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        [v7 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v19 = v24;
      }

      goto LABEL_35;
    }
  }

  else
  {
    result = [objc_allocWithZone(NSString) initWithBytes:0 length:0 encoding:a3];
    if (result)
    {
      v9 = result;
      v10 = _objc_isTaggedPointer(result);
      v11 = v9;
      v7 = v11;
      if (v10)
      {
        TaggedPointerTag = _objc_getTaggedPointerTag(v11);
        switch(TaggedPointerTag)
        {
          case 0:
            goto LABEL_22;
          case 0x16:
            result = [v7 UTF8String];
            if (result)
            {
              result = String.init(utf8String:)(result);
              if (v22)
              {
                goto LABEL_31;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return result;
          case 2:
LABEL_13:
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            return v12;
        }
      }

      if (__CFStringIsCF())
      {
LABEL_20:

        return 0;
      }

      goto LABEL_18;
    }
  }

  return result;
}

void *specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    result = a4(&v6, a1, a2 - a1);
    if (v4)
    {
      return result;
    }

    return v6;
  }

  result = a4(&v6, 0, 0);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t Data.startIndex.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v3 = 0;
    if (v2 == 2)
    {
      return *(a1 + 16);
    }
  }

  else
  {
    v3 = a1;
    if (!v2)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t Data.enumerateBytes(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4)
{

  return Data._Representation.enumerateBytes(_:)(a1, a2, a3, a4);
}

uint64_t Data._Representation.enumerateBytes(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      LOBYTE(v13) = 0;
      v8 = &v13;
      v7 = 0;
      v6 = 0;
      return (a1)(v7, v6, 0, v8);
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    return __DataStorage.enumerateBytes(in:_:)(v9, v10, a1);
  }

  if (v5)
  {
    v9 = a3;
    v10 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return __DataStorage.enumerateBytes(in:_:)(v9, v10, a1);
  }

  v13 = a3;
  v14 = a4;
  v15 = BYTE2(a4);
  v16 = BYTE3(a4);
  v17 = BYTE4(a4);
  v6 = BYTE6(a4);
  v18 = BYTE5(a4);
  v12 = 0;
  v7 = &v13;
  v8 = &v12;
  return (a1)(v7, v6, 0, v8);
}

{

  return Data.enumerateBytes(_:)(a1, a2, a3, a4);
}

void Data.append<A>(_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (!a1)
    {
      v4 = 0;
      goto LABEL_5;
    }

    v3 = *(*(a3 - 8) + 72);
    if ((a2 * v3) >> 64 == (a2 * v3) >> 63)
    {
      v4 = &a1[a2 * v3];
LABEL_5:
      Data._Representation.append(contentsOf:)(a1, v4);
      return;
    }

    __break(1u);
  }
}

Swift::Void __swiftcall Data.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v1 = *(contentsOf._rawValue + 2);
  if (v1)
  {
    Data._Representation.append(contentsOf:)(contentsOf._rawValue + 32, contentsOf._rawValue + v1 + 32);
  }
}

uint64_t Data.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49[5] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = v43 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v43 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(__src, v49);
    v18 = v49[4];
    v19 = __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v20 = MEMORY[0x1EEE9AC00](v19);
    v43[-2] = v3;
    (*(v18 + 8))(partial apply for closure #1 in Data.append<A>(contentsOf:), v20);
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v45 = v10;
  v48 = 0;
  memset(__src, 0, sizeof(__src));
  v22 = outlined destroy of ContiguousBytes?(__src);
  MEMORY[0x1EEE9AC00](v22);
  v43[-2] = v3;
  result = dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (LOBYTE(v49[0]) == 1)
  {
    v23 = dispatch thunk of Sequence.underestimatedCount.getter();
    v24 = *v3;
    v25 = v3[1];
    v26 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      if (v26 != 2)
      {
        v27 = 0;
        v44 = 0;
        goto LABEL_14;
      }

      v29 = v24 + 16;
      v28 = *(v24 + 16);
      v27 = *(v29 + 8);
      v30 = __OFSUB__(v27, v28);
      v24 = v27 - v28;
      v44 = v24;
      if (!v30)
      {
LABEL_14:
        v31 = v27 + v23;
        if (!__OFADD__(v27, v23))
        {
          if (v31 < v27)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          if (v27 < 0)
          {
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v32 = Data._Representation.resetBytes(in:)(v27, v31);
          v43[1] = v43;
          MEMORY[0x1EEE9AC00](v32);
          v43[-6] = a2;
          v43[-5] = a3;
          v43[-4] = v44;
          v43[-3] = v23;
          v43[-2] = a1;
          Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for closure #3 in Data.append<A>(contentsOf:));
          v33 = v45;
          v34 = *&v9[*(TupleTypeMetadata2 + 48)];
          (*(v45 + 32))(v13, v9, AssociatedTypeWitness);
          if (v34 != v23)
          {
            v36 = 0;
            v37 = *v3;
            v38 = v3[1];
            v39 = v38 >> 62;
            if ((v38 >> 62) > 1)
            {
              if (v39 == 2)
              {
                v36 = *(v37 + 16);
              }
            }

            else if (v39)
            {
              v36 = v37;
            }

            v30 = __OFADD__(v36, v44);
            v40 = v36 + v44;
            if (!v30)
            {
              v41 = v40 + v34;
              if (!__OFADD__(v40, v34))
              {
                if (v39 > 1)
                {
                  if (v39 == 2)
                  {
                    v42 = *(v37 + 24);
                  }

                  else
                  {
                    v42 = 0;
                  }
                }

                else if (v39)
                {
                  v42 = v37 >> 32;
                }

                else
                {
                  v42 = BYTE6(v38);
                }

                if (v42 >= v41)
                {
                  Data._Representation.replaceSubrange(_:with:count:)(v41, v42, 0, 0);
                  return (*(v33 + 8))(v13, AssociatedTypeWitness);
                }

                goto LABEL_50;
              }

LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          swift_getAssociatedConformanceWitness();
          memset(v49, 0, 15);
          dispatch thunk of IteratorProtocol.next()();
          if (BYTE1(__src[0]) == 1)
          {
            return (*(v33 + 8))(v13, AssociatedTypeWitness);
          }

          LOBYTE(v35) = 0;
          while (1)
          {
            *(v49 + v35) = __src[0];
            v35 = v35 + 1;
            if ((v35 >> 8))
            {
              break;
            }

            BYTE6(v49[1]) = v35;
            if (v35 == 14)
            {
              *&__src[0] = v49[0];
              *(__src + 6) = *(v49 + 6);
              Data._Representation.append(contentsOf:)(__src, __src + 14);
              LOBYTE(v35) = 0;
              BYTE6(v49[1]) = 0;
            }

            dispatch thunk of IteratorProtocol.next()();
            if (BYTE1(__src[0]) == 1)
            {
              if (v35)
              {
                *&__src[0] = v49[0];
                *(__src + 6) = *(v49 + 6);
                Data._Representation.append(contentsOf:)(__src, __src + v35);
              }

              return (*(v33 + 8))(v13, AssociatedTypeWitness);
            }
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_46;
      }

      __break(1u);
    }

    else if (!v26)
    {
      v27 = BYTE6(v25);
      v44 = BYTE6(v25);
      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(v24), v24))
    {
      goto LABEL_51;
    }

    v44 = HIDWORD(v24) - v24;
    v27 = v24 >> 32;
    goto LABEL_14;
  }

  return result;
}

uint64_t Data._Representation.endIndex.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2)
    {
      return *(a1 + 24);
    }

    else
    {
      return 0;
    }
  }

  else if (v2)
  {
    return a1 >> 32;
  }

  else
  {
    return BYTE6(a2);
  }
}

uint64_t Data.resetBytes(in:)(uint64_t a1, uint64_t a2)
{
  if (((a2 | a1) & 0x8000000000000000) == 0)
  {
    return Data._Representation.resetBytes(in:)(a1, a2);
  }

  __break(1u);
  return a1;
}

void closure #3 in Data.append<A>(contentsOf:)(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    if (__OFSUB__(v10 - v9, v11))
    {
      __break(1u);
      return;
    }

    v15 = v9 + v11;
  }

  else
  {
    v15 = 0;
  }

  (*(v7 + 16))(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12, a2, v13);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v7 + 32))(v17 + v16, v14, a2);
  if (v15)
  {
    swift_getAssociatedTypeWitness();
    v18 = *(swift_getTupleTypeMetadata2() + 48);
    *(a4 + v18) = implicit closure #3 in implicit closure #2 in closure #3 in Data.append<A>(contentsOf:)(a4);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    v20 = implicit closure #3 in implicit closure #2 in closure #3 in Data.append<A>(contentsOf:)(a4);

    *(a4 + v19) = v20;
  }
}

uint64_t implicit closure #3 in implicit closure #2 in closure #3 in Data.append<A>(contentsOf:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v5, v1);
  return dispatch thunk of Sequence._copyContents(initializing:)();
}

void Data.replaceSubrange<A>(_:with:)(int64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a3)
    {
      v5 = *(*(a5 - 8) + 72);
      if ((a4 * v5) >> 64 == (a4 * v5) >> 63)
      {
        Data._Representation.replaceSubrange(_:with:count:)(a1, a2, a3, a4 * v5);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t Data.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v15, v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(v25, v27);
    v17 = v27[4];
    v18 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v19 = MEMORY[0x1EEE9AC00](v18);
    *&v24[-32] = v6;
    *&v24[-24] = a1;
    *&v24[-16] = a2;
    (*(v17 + 8))(partial apply for closure #1 in Data.replaceSubrange<A>(_:with:), v19);
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v21 = outlined destroy of ContiguousBytes?(v25);
    MEMORY[0x1EEE9AC00](v21);
    *&v24[-32] = v6;
    *&v24[-24] = a1;
    *&v24[-16] = a2;
    result = dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
    if (LOBYTE(v27[0]) == 1)
    {
      v22 = dispatch thunk of Collection.count.getter();
      MEMORY[0x1EEE9AC00](v22);
      *&v24[-64] = a4;
      *&v24[-56] = a5;
      *&v24[-48] = a3;
      *&v24[-40] = v6;
      *&v24[-32] = a1;
      *&v24[-24] = a2;
      *&v24[-16] = v23;
      return _withStackOrHeapBuffer(capacity:_:)(v23, partial apply for closure #3 in Data.replaceSubrange<A>(_:with:));
    }
  }

  return result;
}

void closure #1 in Data.replaceSubrange<A>(_:with:)(char *__src, uint64_t a2, int a3, int64_t __n, uint64_t a5)
{
  if (__src)
  {
    v6 = a2 - __src;
  }

  else
  {
    v6 = 0;
  }

  Data._Representation.replaceSubrange(_:with:count:)(__n, a5, __src, v6);
}

uint64_t closure #3 in Data.replaceSubrange<A>(_:with:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  v24 = a4;
  v25 = a7;
  v22 = a5;
  v23 = a6;
  v12 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v21 - v18;
  (*(v12 + 16))(v14, a3, a8, v17);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  if (result == a2)
  {
    swift_getAssociatedConformanceWitness();
    result = dispatch thunk of IteratorProtocol.next()();
    if (v26 == 1)
    {
      Data._Representation.replaceSubrange(_:with:count:)(v22, v23, a1, v25);
      return (*(v16 + 8))(v19, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Data.subscript.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v134 = a2;
  v121 = a6;
  v122 = a1;
  v9 = *(a6 + 8);
  v10 = *(*(v9 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v114 = v10;
  v113 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v112 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v118 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v120 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v112 - v16;
  v119 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for Range();
  v20 = *(v19 - 8);
  v136 = v19;
  v137 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v133 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v124 = &v112 - v23;
  v125 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v126 = &v112 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v128 = &v112 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v132 = &v112 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v135 = &v112 - v33;
  v123 = a3;
  v34 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v34 == 2)
    {
      v39 = v134;
      v140 = *(v134 + 16);
      v40 = lazy protocol witness table accessor for type Int and conformance Int();
      v37 = v135;
      v127 = v40;
      dispatch thunk of BinaryInteger.init<A>(_:)();
LABEL_13:
      v38 = *(v39 + 24);
      goto LABEL_14;
    }
  }

  else if (v34)
  {
    v35 = v134;
    v140 = v134;
    v36 = lazy protocol witness table accessor for type Int and conformance Int();
    v37 = v135;
    v127 = v36;
    dispatch thunk of BinaryInteger.init<A>(_:)();
    v38 = v35 >> 32;
    goto LABEL_14;
  }

  v140 = 0;
  v127 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v39 = v134;
  if (v34 > 1)
  {
    if (v34 == 3)
    {
      v38 = 0;
      v37 = v135;
      goto LABEL_14;
    }

    v37 = v135;
    goto LABEL_13;
  }

  if (v34)
  {
    v37 = v135;
    v38 = v134 >> 32;
  }

  else
  {
    v38 = BYTE6(v123);
    v37 = v135;
  }

LABEL_14:
  v140 = v38;
  v41 = v132;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_66;
  }

  v115 = AssociatedConformanceWitness;
  v43 = v125;
  v131 = v9;
  v117 = a4;
  v44 = *(v125 + 16);
  v129 = v44;
  v130 = v125 + 16;
  v45 = v17;
  v44(v17, v37, AssociatedTypeWitness);
  v46 = TupleTypeMetadata2;
  v44(&v45[*(TupleTypeMetadata2 + 48)], v41, AssociatedTypeWitness);
  v47 = v118;
  v48 = v120;
  (*(v118 + 16))(v120, v45, v46);
  v49 = *(v46 + 48);
  v50 = *(v43 + 32);
  v50(v133, v48, AssociatedTypeWitness);
  v52 = *(v43 + 8);
  v51 = v43 + 8;
  v52(&v48[v49], AssociatedTypeWitness);
  (*(v47 + 32))(v48, v45, v46);
  v53 = v136;
  v54 = v133;
  v50(&v133[*(v136 + 36)], &v48[*(v46 + 48)], AssociatedTypeWitness);
  v52(v48, AssociatedTypeWitness);
  v55 = *(v131 + 32);
  swift_getAssociatedTypeWitness();
  v56 = swift_getAssociatedConformanceWitness();
  v138 = v55;
  v139 = v56;
  swift_getWitnessTable();
  v57 = v124;
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v58 = v52;
  v133 = *(v137 + 8);
  v137 += 8;
  (v133)(v54, v53);
  v59 = v128;
  v129(v128, v57, AssociatedTypeWitness);
  v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v61 = v126;
  if ((v60 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_29;
  }

  v140 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      v62 = v58;
      v63 = v116;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v64 = dispatch thunk of static Comparable.< infix(_:_:)();
      v65 = v63;
      v58 = v62;
      v59 = v128;
      result = (v58)(v65, AssociatedTypeWitness);
      if (v64)
      {
        goto LABEL_67;
      }

      goto LABEL_29;
    }

LABEL_28:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_29;
  }

  v66 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v67 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v66 & 1) == 0)
  {
    v59 = v128;
    if (v67 >= 64)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v68 = v58;
  if (v67 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v72 = v116;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v59 = v128;
    v73 = dispatch thunk of static Comparable.< infix(_:_:)();
    v74 = v72;
    v58 = v68;
    result = (v68)(v74, AssociatedTypeWitness);
    v57 = v124;
    if (v73)
    {
      goto LABEL_67;
    }

    goto LABEL_28;
  }

  v69 = v116;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v59 = v128;
  v70 = dispatch thunk of static Comparable.< infix(_:_:)();
  v71 = v69;
  v58 = v68;
  result = (v68)(v71, AssociatedTypeWitness);
  v57 = v124;
  if (v70)
  {
    goto LABEL_67;
  }

LABEL_29:
  v75 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v76 = v134;
  if (v75 <= 64)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v140 = 0x7FFFFFFFFFFFFFFFLL;
    v77 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v78 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v77 & 1) == 0)
    {
      break;
    }

    if (v78 < 65)
    {
      goto LABEL_38;
    }

LABEL_32:
    v79 = v116;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v125 = v51;
    v80 = v76;
    v81 = v128;
    v82 = dispatch thunk of static Comparable.< infix(_:_:)();
    v83 = v79;
    v59 = v81;
    v76 = v80;
    v51 = v125;
    v58(v83, AssociatedTypeWitness);
    if (v82)
    {
      __break(1u);
LABEL_34:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_39;
  }

  if (v78 >= 64)
  {
    goto LABEL_32;
  }

LABEL_38:
  v59 = v128;
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_39:
  v84 = dispatch thunk of BinaryInteger._lowWord.getter();
  v85 = v59;
  v86 = v84;
  v58(v85, AssociatedTypeWitness);
  v129(v61, &v57[*(v136 + 36)], AssociatedTypeWitness);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v140 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
        v87 = v57;
        v88 = v58;
        v89 = v116;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v90 = dispatch thunk of static Comparable.< infix(_:_:)();
        v91 = v89;
        v58 = v88;
        v57 = v87;
        v76 = v134;
        result = (v58)(v91, AssociatedTypeWitness);
        if (v90)
        {
          goto LABEL_68;
        }

        goto LABEL_53;
      }
    }

    else
    {
      v92 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v93 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v92)
      {
        v94 = v58;
        if (v93 > 64)
        {
          v95 = v116;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v61 = v126;
          v96 = dispatch thunk of static Comparable.< infix(_:_:)();
          v97 = v95;
          v58 = v94;
          result = (v94)(v97, AssociatedTypeWitness);
          v57 = v124;
          if (v96)
          {
            goto LABEL_68;
          }

          goto LABEL_53;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v98 = v116;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v61 = v126;
        v99 = dispatch thunk of static Comparable.< infix(_:_:)();
        v100 = v98;
        v58 = v94;
        result = (v94)(v100, AssociatedTypeWitness);
        v57 = v124;
        if (v99)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v61 = v126;
        if (v93 >= 64)
        {
          goto LABEL_53;
        }
      }
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_53:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v140 = 0x7FFFFFFFFFFFFFFFLL;
    v101 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v102 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v101)
    {
      if (v102 < 65)
      {
        break;
      }

      goto LABEL_56;
    }

    if (v102 >= 64)
    {
LABEL_56:
      v103 = v57;
      v104 = v58;
      v105 = v116;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v61 = v126;
      v106 = dispatch thunk of static Comparable.< infix(_:_:)();
      v107 = v105;
      v58 = v104;
      v57 = v103;
      v76 = v134;
      v58(v107, AssociatedTypeWitness);
      if ((v106 & 1) == 0)
      {
        goto LABEL_63;
      }

      __break(1u);
LABEL_58:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  v61 = v126;
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_63:
  v108 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v58)(v61, AssociatedTypeWitness);
  if (v108 >= v86)
  {
    v109 = Data._Representation.subscript.getter(v86, v108, v76, v123);
    v110 = v58;
    v111 = v109;
    (v133)(v57, v136);
    v110(v132, AssociatedTypeWitness);
    v110(v135, AssociatedTypeWitness);
    return v111;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t (*Data.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = Data._Representation.subscript.getter(a2, *v2, *(v2 + 8));
  return Data.subscript.modify;
}

uint64_t Data.subscript.setter(uint64_t a1, unint64_t a2, int64_t __n, uint64_t a4)
{
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, v4, __n, a4);

  return outlined consume of Data._Representation(a1, a2);
}

void (*Data.subscript.modify(void *a1, uint64_t a2, int64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = Data._Representation.subscript.getter(a2, a3, *v3, *(v3 + 8));
  v8[1] = v9;
  return Data.subscript.modify;
}

void Data.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    outlined copy of Data._Representation(v3, v4);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v3, v4, v6, v7, v5);
    outlined consume of Data._Representation(v3, v4);
    v8 = *v2;
    v9 = v2[1];
  }

  else
  {
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v3, v4, v6, v7, v5);
    v8 = v3;
    v9 = v4;
  }

  outlined consume of Data._Representation(v8, v9);

  free(v2);
}

{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[6];
  v5 = (*a1)[7];
  v7 = (*a1)[4];
  v8 = (*a1)[2];
  v9 = (*a1)[3];
  if (a2)
  {
    outlined copy of Data._Representation(v3, v4);
    specialized Data.subscript.setter(v3, v4, v5, v8, v9, v7);
    (*(v6 + 8))(v5, v8);
    outlined consume of Data._Representation(v3, v4);
    v10 = *v2;
    v11 = v2[1];
  }

  else
  {
    specialized Data.subscript.setter(v3, v4, v5, v8, v9, v7);
    (*(v6 + 8))(v5, v8);
    v10 = v3;
    v11 = v4;
  }

  outlined consume of Data._Representation(v10, v11);
  free(v5);

  free(v2);
}

uint64_t key path setter for Data.subscript<A>(_:) : <A>DataA(uint64_t *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = a1[1];
  outlined copy of Data._Representation(*a1, v9);
  specialized Data.subscript.setter(v8, v9, a3, v5, v6, v7);

  return outlined consume of Data._Representation(v8, v9);
}

uint64_t Data.subscript.setter(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  specialized Data.subscript.setter(a1, a2, a3, a4, a5, a6);
  (*(*(a4 - 8) + 8))(a3, a4);

  return outlined consume of Data._Representation(a1, a2);
}

void (*Data.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x40uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[4] = a5;
  v12[5] = v5;
  v12[2] = a3;
  v12[3] = a4;
  v14 = *(a3 - 8);
  v15 = v14;
  v12[6] = v14;
  if (v11)
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(*(v14 + 64));
  }

  v13[7] = v16;
  (*(v15 + 16))();
  *v13 = Data.subscript.getter(a2, *v5, *(v5 + 8), a3, a4, a5);
  v13[1] = v17;
  return Data.subscript.modify;
}

Swift::Int __swiftcall Data.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Data.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t Data.indices.getter(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v3 = result;
    result = *(result + 16);
    v4 = *(v3 + 24);
  }

  else
  {
    if (!v2)
    {
      return 0;
    }

    v5 = result;
    result = result;
    v4 = v5 >> 32;
  }

  if (v4 < result)
  {
    __break(1u);
  }

  return result;
}

double Data.makeIterator()@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v7 = 0;
    if (v6 == 2)
    {
      v7 = *(a1 + 16);
    }
  }

  else if (v6)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  outlined copy of Data._Representation(a1, a2);

  return Data.Iterator.init(_:at:)(a1, a2, v7, a3);
}

uint64_t Data.Iterator._data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t Data.Iterator._buffer.setter(uint64_t result, char a2, char a3, char a4, char a5, char a6, char a7, char a8, uint64_t a9, __int128 a10)
{
  *(v10 + 16) = result;
  *(v10 + 17) = a2;
  *(v10 + 18) = a3;
  *(v10 + 19) = a4;
  *(v10 + 20) = a5;
  *(v10 + 21) = a6;
  *(v10 + 22) = a7;
  *(v10 + 23) = a8;
  *(v10 + 24) = a9;
  *(v10 + 32) = a10;
  return result;
}

Swift::Int Data.hashValue.getter(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Data()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Data.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

void (*protocol witness for MutableCollection.subscript.modify in conformance Data(uint64_t a1, uint64_t *a2))(uint64_t a1)
{
  v4 = *a2;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = Data._Representation.subscript.getter(v4, *v2, *(v2 + 8));
  return protocol witness for MutableCollection.subscript.modify in conformance Data;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance Data(uint64_t *a1, int64_t *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  specialized Data._Representation.withUnsafeBytes<A>(_:)(*a1, v5, v3, *a2, a2[1]);

  return outlined consume of Data._Representation(v4, v5);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance Data(uint64_t *a1, uint64_t *a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = a2[1];
  v6[2] = v2;
  v6[3] = v7;
  v6[4] = v8;
  *v6 = Data._Representation.subscript.getter(v7, v8, *v2, *(v2 + 8));
  v6[1] = v9;
  return protocol witness for MutableCollection.subscript.modify in conformance Data;
}

void protocol witness for MutableCollection.subscript.modify in conformance Data(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    outlined copy of Data._Representation(v3, v4);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v3, v4, v7, v6, v5);
    outlined consume of Data._Representation(v3, v4);
    v8 = *v2;
    v9 = v2[1];
  }

  else
  {
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v3, v4, v7, v6, v5);
    v8 = v3;
    v9 = v4;
  }

  outlined consume of Data._Representation(v8, v9);

  free(v2);
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance Data@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void protocol witness for MutableCollection.swapAt(_:_:) in conformance Data(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 != *a2)
  {
    v5 = Data._Representation.subscript.getter(*a1, *v2, *(v2 + 8));
    v6 = Data._Representation.subscript.getter(v4, *v2, *(v2 + 8));
    Data._Representation.subscript.setter(v6, v3);

    Data._Representation.subscript.setter(v5, v4);
  }
}

double protocol witness for RangeReplaceableCollection.init() in conformance Data@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_181234410;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance Data(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Data.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

double protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance Data@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  *&v7 = _s10Foundation4DataV15_RepresentationO5countAESi_tcfC_0(a2);
  *(&v7 + 1) = v5;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v7, v4);
  result = *&v7;
  *a3 = v7;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance Data@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = specialized Data.init<A>(_:)(a1, a2, a3);
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  a4[1] = v9;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance Data(char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd);
  v13 = &protocol witness table for <A> CollectionOfOne<A>;
  LOBYTE(v11[0]) = v2;
  __src = *__swift_project_boxed_opaque_existential_1(v11, v12);
  Data._Representation.replaceSubrange(_:with:count:)(v8, v8, &__src, 1);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t protocol witness for RangeReplaceableCollection.append<A>(contentsOf:) in conformance Data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Data.append<A>(contentsOf:)(a1, a2, a3);
  v5 = *(*(a2 - 8) + 8);

  return v5(a1, a2);
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance Data(char *a1, int64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd);
  v8 = &protocol witness table for <A> CollectionOfOne<A>;
  LOBYTE(v6[0]) = v2;
  __src = *__swift_project_boxed_opaque_existential_1(v6, v7);
  Data._Representation.replaceSubrange(_:with:count:)(v3, v3, &__src, 1);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t protocol witness for RangeReplaceableCollection.insert<A>(contentsOf:at:) in conformance Data(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(a1, *a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a1, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.remove(at:) in conformance Data@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized RangeReplaceableCollection.remove(at:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection._customRemoveLast() in conformance Data@<X0>(_BYTE *a1@<X8>)
{
  result = specialized RangeReplaceableCollection<>._customRemoveLast()();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t specialized RangeReplaceableCollection<>._customRemoveLast()()
{
  result = specialized BidirectionalCollection.last.getter(*v0, *(v0 + 8));
  if ((result & 0x100) == 0)
  {
    v2 = result;
    v3 = *v0;
    v4 = *(v0 + 8);
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 == 2)
      {
        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }
    }

    else
    {
      if (v5)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }

      if (v5)
      {
        v7 = v3 >> 32;
      }

      else
      {
        v7 = BYTE6(v4);
      }
    }

    outlined copy of Data._Representation(*v0, *(v0 + 8));
    result = outlined consume of Data._Representation(v3, v4);
    v8 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
    }

    else if (v8 >= v6)
    {
      v9 = Data._Representation.subscript.getter(v6, v8, v3, v4);
      v11 = v10;
      outlined consume of Data._Representation(v3, v4);
      *v0 = v9;
      *(v0 + 8) = v11;
      return v2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection<>._customRemoveLast(_:)(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v2 >> 32;
  }

  else
  {
    v5 = BYTE6(v3);
  }

  v6 = -result;
  if (__OFSUB__(0, result))
  {
    __break(1u);
  }

  else
  {
    if (v4 > 1)
    {
      v7 = 0;
      if (v4 == 2)
      {
        v7 = *(v2 + 16);
      }
    }

    else if (v4)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    result = specialized RandomAccessCollection<>.distance(from:to:)(v5, v7, *v1, v1[1]);
    if (v6 < 1)
    {
      if (result <= 0 && v6 < result)
      {
        goto LABEL_31;
      }
    }

    else if ((result & 0x8000000000000000) == 0 && result < v6)
    {
      goto LABEL_31;
    }

    v8 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v5, v6, v2, v3);
    v9 = *v1;
    v10 = v1[1];
    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      v12 = 0;
      if (v11 == 2)
      {
        v12 = *(v9 + 16);
      }
    }

    else if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    outlined copy of Data._Representation(*v1, v1[1]);
    result = outlined consume of Data._Representation(v9, v10);
    if (v8 >= v12)
    {
      v13 = Data._Representation.subscript.getter(v12, v8, v9, v10);
      v15 = v14;
      outlined consume of Data._Representation(v9, v10);
      *v1 = v13;
      v1[1] = v15;
      return 1;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.removeFirst() in conformance Data@<X0>(_BYTE *a1@<X8>)
{
  result = specialized RangeReplaceableCollection<>.removeFirst()();
  *a1 = result;
  return result;
}

uint64_t specialized RangeReplaceableCollection<>.removeFirst()()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(result + 16) == *(result + 24))
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    if (v3)
    {
      v4 = result >> 32;
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v4)
    {
      goto LABEL_29;
    }
  }

  result = specialized Collection.first.getter(result, v2);
  if ((result & 0x100) == 0)
  {
    v6 = result;
    v7 = *v0;
    v8 = *(v0 + 8);
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      v10 = 0;
      if (v9 == 2)
      {
        v10 = *(v7 + 16);
      }
    }

    else
    {
      v10 = v7;
      if (!v9)
      {
        v10 = 0;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v12 = *(v7 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v9)
      {
        v12 = v7 >> 32;
      }

      else
      {
        v12 = BYTE6(v8);
      }

      outlined copy of Data._Representation(*v0, *(v0 + 8));
      result = outlined consume of Data._Representation(v7, v8);
      if (v12 >= v11)
      {
        v13 = Data._Representation.subscript.getter(v11, v12, v7, v8);
        v15 = v14;
        outlined consume of Data._Representation(v7, v8);
        *v0 = v13;
        *(v0 + 8) = v15;
        return v6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t specialized RangeReplaceableCollection<>.removeFirst(_:)(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      v4 = v1[1];
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v6 = *(v3 + 16);
          v7 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v3 >> 32;
        }

        else
        {
          v7 = BYTE6(v4);
        }
      }

      result = specialized RandomAccessCollection<>.distance(from:to:)(v6, v7, *v1, v1[1]);
      if (result < v2)
      {
        goto LABEL_26;
      }

      v8 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v6, v2, v3, v4);
      v9 = *v1;
      v10 = v1[1];
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v9 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v9 >> 32;
      }

      else
      {
        v12 = BYTE6(v10);
      }

      outlined copy of Data._Representation(*v1, v1[1]);
      result = outlined consume of Data._Representation(v9, v10);
      if (v12 >= v8)
      {
        v13 = Data._Representation.subscript.getter(v8, v12, v9, v10);
        v15 = v14;
        result = outlined consume of Data._Representation(v9, v10);
        *v1 = v13;
        v1[1] = v15;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void protocol witness for RangeReplaceableCollection.removeAll(where:) in conformance Data(uint64_t (*a1)(_BYTE *), uint64_t a2)
{
  v4 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a1, a2);
  if (!v3)
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        v10 = *(v5 + 24);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v8 = BYTE6(v6);
      v9 = v5 >> 32;
      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }
    }

    if (v10 < v4)
    {
      __break(1u);
    }

    else
    {
      Data._Representation.replaceSubrange(_:with:count:)(v4, v10, 0, 0);
    }
  }
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Data@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Data(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Data@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  v9 = v4[1];
  v10 = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3, *v4, v9);
  if (a2 < 1)
  {
    if (v10 <= 0 && v10 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v7, a2, v8, v9);
    v12 = 0;
    goto LABEL_11;
  }

  if (v10 < 0 || v10 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  result = 0;
  v12 = 1;
LABEL_11:
  *a4 = result;
  *(a4 + 8) = v12;
  return result;
}

void protocol witness for Collection.indices.getter in conformance Data(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = 0;
      v6 = BYTE6(v3);
LABEL_4:
      *a1 = v5;
      a1[1] = v6;
      return;
    }

    v5 = v2;
    v6 = v2 >> 32;
    if (v6 >= v5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v6 >= v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
  }

  *a1 = 0;
  a1[1] = 0;
}

BOOL protocol witness for Collection.isEmpty.getter in conformance Data()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    v5 = v1;
    v6 = v1 >> 32;
    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v6 = v4;
      v7 = 0;
    }
  }

  return v7 == v6;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance Data(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
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

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance Data(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance Data@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

double protocol witness for Sequence.makeIterator() in conformance Data@<D0>(_OWORD *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v5 = 0;
    if (v4 == 2)
    {
      v5 = *(v2 + 16);
    }
  }

  else if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return Data.Iterator.init(_:at:)(v2, v3, v5, a1);
}

_OWORD *protocol witness for Sequence._copyContents(initializing:) in conformance Data(_OWORD *a1, void *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = Data._copyContents(initializing:)(a1, a2, a3, v4, v5);
  outlined consume of Data._Representation(v4, v5);
  return v6;
}

void protocol witness for Decodable.init(from:) in conformance Data(void *a1@<X0>, void *a2@<X8>)
{
  specialized Data.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

id @nonobjc NSData.init(contentsOf:options:)(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 432))(ObjectType, v4);
  v11[0] = 0;
  v7 = [v2 initWithContentsOfURL:v6 options:a2 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    if (v11[0])
    {
      v11[0];
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

  swift_unknownObjectRelease();
  return v7;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(_BYTE *), uint64_t a2)
{
  v5 = v2;
  v6 = a1;
  v157 = *MEMORY[0x1E69E9840];
  result = specialized Collection.firstIndex(where:)(a1, a2, *v5, v5[1]);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    v9 = *v2;
    v10 = v2[1];
    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v11 == 2)
      {
        return *(v9 + 24);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v12 = BYTE6(v10);
      v13 = v9 >> 32;
      if (v11)
      {
        return v13;
      }

      else
      {
        return v12;
      }
    }
  }

  v4 = result;
  v14 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_241;
  }

  v147 = v2;
  v148 = v6;
  while (1)
  {
    v22 = *v5;
    v21 = v5[1];
    v23 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v23 == 2)
      {
        if (v14 == *(v22 + 24))
        {
          return v4;
        }

        goto LABEL_29;
      }

      if (!v14)
      {
        return v4;
      }

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
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
    }

    v24 = BYTE6(v21);
    if (v23)
    {
      v24 = v22 >> 32;
    }

    if (v14 == v24)
    {
      return v4;
    }

LABEL_29:
    if (v23 == 2)
    {
      if (v14 < *(v22 + 16))
      {
        goto LABEL_213;
      }

      if (v14 >= *(v22 + 24))
      {
        goto LABEL_216;
      }

      v29 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v26 = *((v21 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v26)
      {
        goto LABEL_254;
      }

      v30 = *(v29 + 40);
      v18 = __OFSUB__(v14, v30);
      v28 = v14 - v30;
      if (v18)
      {
        goto LABEL_218;
      }

      goto LABEL_41;
    }

    if (v23 == 1)
    {
      break;
    }

    if (v14 >= BYTE6(v21))
    {
      goto LABEL_214;
    }

    LOWORD(v153) = *v5;
    BYTE2(v153) = BYTE2(v22);
    BYTE3(v153) = BYTE3(v22);
    BYTE4(v153) = BYTE4(v22);
    BYTE5(v153) = BYTE5(v22);
    BYTE6(v153) = BYTE6(v22);
    HIBYTE(v153) = HIBYTE(v22);
    LOWORD(v154) = v21;
    BYTE2(v154) = BYTE2(v21);
    HIBYTE(v154) = BYTE3(v21);
    LOBYTE(v155) = BYTE4(v21);
    HIBYTE(v155) = BYTE5(v21);
    v31 = *(&v153 + v14);
LABEL_44:
    LOBYTE(v153) = v31;
    result = v6(&v153);
    if ((result & 1) == 0)
    {
      if (v14 == v4)
      {
        goto LABEL_20;
      }

      v16 = *v5;
      v32 = v5[1];
      v33 = v32 >> 62;
      v150 = v14;
      if ((v32 >> 62) > 1)
      {
        if (v33 != 2)
        {
          goto LABEL_255;
        }

        v35 = *(v16 + 16);
        if (v4 < v35)
        {
          goto LABEL_221;
        }

        v36 = *(v16 + 24);
        if (v4 >= v36)
        {
          goto LABEL_223;
        }

        v37 = v32 & 0x3FFFFFFFFFFFFFFFLL;
        v38 = *((v32 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (!v38)
        {
          goto LABEL_257;
        }

        v39 = *((v32 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        if (__OFSUB__(v4, v39))
        {
          goto LABEL_225;
        }

        if (v14 < v35)
        {
          goto LABEL_228;
        }

        if (v14 >= v36)
        {
          goto LABEL_229;
        }

        if (__OFSUB__(v14, v39))
        {
          goto LABEL_231;
        }

        v149 = *(v38 + v4 - v39);
        v40 = *(v38 + v14 - v39);

        outlined consume of Data._Representation(v16, v32);
        *v5 = xmmword_181234410;
        outlined consume of Data._Representation(0, 0xC000000000000000);
        if (v4 < *(v16 + 16))
        {
          goto LABEL_235;
        }

        if (v4 >= *(v16 + 24))
        {
          goto LABEL_237;
        }

        v41 = v32 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = *(v16 + 16);
          v42 = *(v16 + 24);
          v44 = *(v37 + 16);
          if (v44)
          {
            v45 = *(v37 + 40);
            v18 = __OFSUB__(v43, v45);
            v46 = v43 - v45;
            if (v18)
            {
              goto LABEL_249;
            }

            v47 = v40;
            v141 = v46 + v44;
            v48 = v42 - v43;
            if (__OFSUB__(v42, v43))
            {
              goto LABEL_243;
            }
          }

          else
          {
            v47 = v40;
            v141 = 0;
            v48 = v42 - v43;
            if (__OFSUB__(v42, v43))
            {
              goto LABEL_243;
            }
          }

          v69 = v16;
          type metadata accessor for __DataStorage();
          v70 = swift_allocObject();
          *(v70 + 16) = 0;
          v71 = (v70 + 16);
          *(v70 + 48) = 0;
          *(v70 + 56) = 0;
          if (v48 > 0x3FFFFFFFFFFFFFFELL)
          {
            goto LABEL_245;
          }

          v41 = v70;
          *(v70 + 40) = v43;
          if (v48)
          {
            if (one-time initialization token for vmOpsThreshold != -1)
            {
              swift_once();
            }

            if (v48 >= static __DataStorage.vmOpsThreshold)
            {
              *(v41 + 24) = v48;
              *(v41 + 32) = v48;
              *(v41 + 64) = 1;
              LODWORD(v153) = 0;
              _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
              result = malloc_type_malloc(v48, v153 << 32);
              if (!result)
              {
                goto LABEL_272;
              }

              *v71 = result;
            }

            else
            {
              *(v41 + 24) = v48;
              LODWORD(v153) = 0;
              _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
              result = malloc_type_malloc(v48, v153 << 32);
              if (!result)
              {
                goto LABEL_274;
              }

              *(v41 + 16) = result;
              *(v41 + 32) = v48;
              *(v41 + 64) = 1;
            }

            specialized static __DataStorage.move(_:_:_:)(result, v141, v48);
          }

          else
          {
            *(v70 + 64) = 0;
            *(v70 + 24) = 0;
            *(v70 + 32) = 0;
            *v71 = 0;
          }

          v16 = v69;

          v40 = v47;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          v72 = v16;
          v73 = *(v16 + 16);
          v74 = *(v72 + 24);
          type metadata accessor for Data.RangeReference();
          v75 = swift_allocObject();
          *(v75 + 16) = v73;
          *(v75 + 24) = v74;

          v16 = v75;
        }

        if (*(v41 + 32))
        {
          v76 = *(v41 + 16);
          if (!v76)
          {
            goto LABEL_261;
          }
        }

        else
        {
          v77 = v40;
          v78 = malloc_good_size(*(v41 + 24));
          LODWORD(v153) = 0;
          _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
          result = malloc_type_malloc(v78, v153 << 32);
          if (!result)
          {
            goto LABEL_266;
          }

          v79 = *(v41 + 16);
          if (!v79)
          {
            goto LABEL_265;
          }

          v76 = result;
          specialized static __DataStorage.move(_:_:_:)(result, v79, *(v41 + 24));
          v80 = *(v41 + 16);
          if (v80)
          {
            v81 = *(v41 + 48);
            if (v81)
            {
              v143 = *(v41 + 24);

              v81(v80, v143);
              outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v81);
            }

            else
            {
              free(*(v41 + 16));
            }
          }

          v91 = *(v41 + 48);
          *(v41 + 48) = 0;
          *(v41 + 56) = 0;
          result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v91);
          *(v41 + 16) = v76;
          *(v41 + 32) = v78;
          *(v41 + 64) = 0;
          v40 = v77;
        }

        v92 = *(v41 + 40);
        v18 = __OFSUB__(v4, v92);
        v93 = v4 - v92;
        if (v18)
        {
          goto LABEL_240;
        }

        *(v76 + v93) = v40;
        v34 = v41 | 0x8000000000000000;
      }

      else
      {
        if (!v33)
        {
          if (v4 >= BYTE6(v32))
          {
            goto LABEL_220;
          }

          LOWORD(v153) = *v5;
          BYTE2(v153) = BYTE2(v16);
          BYTE3(v153) = BYTE3(v16);
          BYTE4(v153) = BYTE4(v16);
          BYTE5(v153) = BYTE5(v16);
          BYTE6(v153) = BYTE6(v16);
          HIBYTE(v153) = HIBYTE(v16);
          LOWORD(v154) = v32;
          BYTE2(v154) = BYTE2(v32);
          HIBYTE(v154) = BYTE3(v32);
          LOBYTE(v155) = BYTE4(v32);
          HIBYTE(v155) = BYTE5(v32);
          if (v14 >= BYTE6(v32))
          {
            goto LABEL_222;
          }

          v149 = *(&v153 + v4);
          v153 = v16;
          LOWORD(v154) = v32;
          BYTE2(v154) = BYTE2(v32);
          HIBYTE(v154) = BYTE3(v32);
          LOBYTE(v155) = BYTE4(v32);
          HIBYTE(v155) = BYTE5(v32);
          v140 = *(&v153 + v14);
          result = outlined consume of Data._Representation(v16, v32);
          v153 = v16;
          LOWORD(v154) = v32;
          BYTE2(v154) = BYTE2(v32);
          HIBYTE(v154) = BYTE3(v32);
          LOBYTE(v155) = BYTE4(v32);
          HIBYTE(v155) = BYTE5(v32);
          v156 = BYTE6(v32);
          *(&v153 + v4) = v140;
          v16 = v153;
          v5 = v147;
          v34 = v146 & 0xF00000000000000 | v154 | ((v155 | (v156 << 16)) << 32);
          *v147 = v153;
          v147[1] = v34;
          v146 = v34;
LABEL_154:
          v103 = v34 >> 62;
          if ((v34 >> 62) > 1)
          {
            v14 = v150;
            if (v103 != 2)
            {
              goto LABEL_258;
            }

            outlined consume of Data._Representation(v16, v34);
            *v5 = xmmword_181234410;
            outlined consume of Data._Representation(0, 0xC000000000000000);
            if (v150 < *(v16 + 16))
            {
              goto LABEL_232;
            }

            if (v150 >= *(v16 + 24))
            {
              goto LABEL_236;
            }

            v105 = v34 & 0x3FFFFFFFFFFFFFFFLL;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v107 = *(v16 + 16);
              v106 = *(v16 + 24);
              v108 = *((v34 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              if (v108)
              {
                v109 = *((v34 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
                v18 = __OFSUB__(v107, v109);
                v110 = v107 - v109;
                if (v18)
                {
                  goto LABEL_248;
                }

                v111 = v110 + v108;
                v112 = v106 - v107;
                if (__OFSUB__(v106, v107))
                {
                  goto LABEL_242;
                }
              }

              else
              {
                v111 = 0;
                v112 = v106 - v107;
                if (__OFSUB__(v106, v107))
                {
                  goto LABEL_242;
                }
              }

              v124 = v16;
              type metadata accessor for __DataStorage();
              v125 = swift_allocObject();
              *(v125 + 16) = 0;
              v126 = (v125 + 16);
              *(v125 + 48) = 0;
              *(v125 + 56) = 0;
              if (v112 > 0x3FFFFFFFFFFFFFFELL)
              {
                goto LABEL_244;
              }

              v105 = v125;
              *(v125 + 40) = v107;
              if (v112)
              {
                v14 = v150;
                if (one-time initialization token for vmOpsThreshold != -1)
                {
                  swift_once();
                }

                if (v112 >= static __DataStorage.vmOpsThreshold)
                {
                  *(v105 + 24) = v112;
                  *(v105 + 32) = v112;
                  *(v105 + 64) = 1;
                  LODWORD(v153) = 0;
                  _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
                  result = malloc_type_malloc(v112, v153 << 32);
                  if (!result)
                  {
                    goto LABEL_271;
                  }

                  *v126 = result;
                }

                else
                {
                  *(v105 + 24) = v112;
                  LODWORD(v153) = 0;
                  _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
                  result = malloc_type_malloc(v112, v153 << 32);
                  if (!result)
                  {
                    goto LABEL_273;
                  }

                  *(v105 + 16) = result;
                  *(v105 + 32) = v112;
                  *(v105 + 64) = 1;
                }

                specialized static __DataStorage.move(_:_:_:)(result, v111, v112);
              }

              else
              {
                *(v125 + 64) = 0;
                *(v125 + 24) = 0;
                *(v125 + 32) = 0;
                *v126 = 0;
                v14 = v150;
              }

              v16 = v124;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              v127 = v16;
              v128 = *(v16 + 16);
              v129 = *(v127 + 24);
              type metadata accessor for Data.RangeReference();
              v130 = swift_allocObject();
              *(v130 + 16) = v128;
              *(v130 + 24) = v129;
              v14 = v150;

              v16 = v130;
            }

            if (*(v105 + 32))
            {
              v131 = *(v105 + 16);
              if (!v131)
              {
                goto LABEL_262;
              }
            }

            else
            {
              v132 = malloc_good_size(*(v105 + 24));
              LODWORD(v153) = 0;
              _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
              result = malloc_type_malloc(v132, v153 << 32);
              if (!result)
              {
                goto LABEL_268;
              }

              v133 = *(v105 + 16);
              if (!v133)
              {
                goto LABEL_267;
              }

              v131 = result;
              specialized static __DataStorage.move(_:_:_:)(result, v133, *(v105 + 24));
              v134 = *(v105 + 16);
              if (v134)
              {
                v135 = *(v105 + 48);
                if (v135)
                {
                  v152 = *(v105 + 24);

                  v135(v134, v152);
                  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v135);
                }

                else
                {
                  free(*(v105 + 16));
                }
              }

              v136 = *(v105 + 48);
              *(v105 + 48) = 0;
              *(v105 + 56) = 0;
              result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v136);
              *(v105 + 16) = v131;
              *(v105 + 32) = v132;
              *(v105 + 64) = 0;
            }

            v137 = *(v105 + 40);
            v18 = __OFSUB__(v14, v137);
            v138 = v14 - v137;
            if (v18)
            {
              goto LABEL_239;
            }

            *(v131 + v138) = v149;
            v20 = v105 | 0x8000000000000000;
          }

          else
          {
            if (!v103)
            {
              result = outlined consume of Data._Representation(v16, v34);
              v153 = v16;
              LOWORD(v154) = v34;
              BYTE2(v154) = BYTE2(v34);
              HIBYTE(v154) = BYTE3(v34);
              LOBYTE(v155) = BYTE4(v34);
              HIBYTE(v155) = BYTE5(v34);
              v14 = v150;
              v156 = BYTE6(v34);
              if (v150 >= BYTE6(v34))
              {
                goto LABEL_233;
              }

              *(&v153 + v150) = v149;
              v104 = v139 & 0xF00000000000000 | v154 | ((v155 | (v156 << 16)) << 32);
              v5 = v147;
              *v147 = v153;
              v147[1] = v104;
              v139 = v104;
              goto LABEL_19;
            }

            outlined consume of Data._Representation(v16, v34);
            *v5 = xmmword_181234410;
            outlined consume of Data._Representation(0, 0xC000000000000000);
            v113 = v16;
            v114 = v16 >> 32;
            v14 = v150;
            if (v150 >= v114)
            {
              goto LABEL_234;
            }

            v115 = v113;
            if (v150 < v113)
            {
              goto LABEL_234;
            }

            v145 = v113;
            result = swift_isUniquelyReferenced_nonNull_native();
            v116 = v34 & 0x3FFFFFFFFFFFFFFFLL;
            if ((result & 1) == 0)
            {
              v117 = *((v34 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              if (v117)
              {
                v118 = *((v34 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
                v18 = __OFSUB__(v115, v118);
                v119 = v115 - v118;
                if (v18)
                {
                  goto LABEL_247;
                }

                v120 = v119 + v117;
              }

              else
              {
                v120 = 0;
              }

              type metadata accessor for __DataStorage();
              v121 = swift_allocObject();
              v116 = v121;
              *(v121 + 16) = 0;
              v122 = (v121 + 16);
              *(v121 + 48) = 0;
              *(v121 + 56) = 0;
              *(v121 + 40) = v115;
              v123 = v114 - v115;
              if (v114 == v115)
              {
                *(v121 + 64) = 0;
                *(v121 + 24) = 0;
                *(v121 + 32) = 0;
                *v122 = 0;
              }

              else
              {
                if (one-time initialization token for vmOpsThreshold != -1)
                {
                  swift_once();
                }

                if (v123 >= static __DataStorage.vmOpsThreshold)
                {
                  *(v116 + 24) = v123;
                  *(v116 + 32) = v123;
                  *(v116 + 64) = 1;
                  LODWORD(v153) = 0;
                  _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
                  result = malloc_type_malloc(v114 - v115, v153 << 32);
                  if (!result)
                  {
                    goto LABEL_277;
                  }

                  *v122 = result;
                }

                else
                {
                  *(v116 + 24) = v123;
                  LODWORD(v153) = 0;
                  _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
                  result = malloc_type_malloc(v114 - v115, v153 << 32);
                  if (!result)
                  {
                    goto LABEL_278;
                  }

                  *(v116 + 16) = result;
                  *(v116 + 32) = v123;
                  *(v116 + 64) = 1;
                }

                specialized static __DataStorage.move(_:_:_:)(result, v120, v114 - v115);
              }

              v14 = v150;
            }

            if (*(v116 + 32))
            {
              v15 = *(v116 + 16);
              v16 = v145;
              if (!v15)
              {
                goto LABEL_260;
              }
            }

            else
            {
              v62 = malloc_good_size(*(v116 + 24));
              LODWORD(v153) = 0;
              _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
              result = malloc_type_malloc(v62, v153 << 32);
              v16 = v145;
              if (!result)
              {
                goto LABEL_270;
              }

              v63 = *(v116 + 16);
              if (!v63)
              {
                goto LABEL_269;
              }

              v15 = result;
              specialized static __DataStorage.move(_:_:_:)(result, v63, *(v116 + 24));
              v64 = *(v116 + 16);
              if (v64)
              {
                v65 = *(v116 + 48);
                if (v65)
                {
                  v151 = *(v116 + 24);

                  v65(v64, v151);
                  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v65);
                }

                else
                {
                  free(*(v116 + 16));
                }
              }

              v90 = *(v116 + 48);
              *(v116 + 48) = 0;
              *(v116 + 56) = 0;
              result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v90);
              *(v116 + 16) = v15;
              *(v116 + 32) = v62;
              *(v116 + 64) = 0;
            }

            v17 = *(v116 + 40);
            v18 = __OFSUB__(v14, v17);
            v19 = v14 - v17;
            if (v18)
            {
              goto LABEL_238;
            }

            *(v15 + v19) = v149;
            v20 = v116 | 0x4000000000000000;
          }

          *v5 = v16;
          v5[1] = v20;
LABEL_19:
          v6 = v148;
LABEL_20:
          ++v4;
          goto LABEL_21;
        }

        v49 = v16 >> 32;
        if (v4 >= v16 >> 32)
        {
          goto LABEL_219;
        }

        v50 = v16;
        if (v4 < v16)
        {
          goto LABEL_219;
        }

        v51 = v32 & 0x3FFFFFFFFFFFFFFFLL;
        v52 = *((v32 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (!v52)
        {
          goto LABEL_256;
        }

        v53 = *((v32 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v54 = v4 - v53;
        if (__OFSUB__(v4, v53))
        {
          goto LABEL_224;
        }

        if (v14 >= v49 || v14 < v16)
        {
          goto LABEL_226;
        }

        v18 = __OFSUB__(v14, v53);
        v55 = v14 - v53;
        if (v18)
        {
          goto LABEL_227;
        }

        v149 = *(v52 + v54);
        v56 = *(v52 + v55);

        outlined consume of Data._Representation(v16, v32);
        *v5 = xmmword_181234410;
        outlined consume of Data._Representation(0, 0xC000000000000000);
        result = swift_isUniquelyReferenced_nonNull_native();
        v57 = v32 & 0x3FFFFFFFFFFFFFFFLL;
        if ((result & 1) == 0)
        {
          v58 = *(v51 + 16);
          if (v58)
          {
            v59 = *(v51 + 40);
            v18 = __OFSUB__(v16, v59);
            v60 = v16 - v59;
            if (v18)
            {
              goto LABEL_246;
            }

            v61 = v16;
            v142 = v60 + v58;
          }

          else
          {
            v61 = v16;
            v142 = 0;
          }

          type metadata accessor for __DataStorage();
          v66 = swift_allocObject();
          v57 = v66;
          *(v66 + 16) = 0;
          v67 = (v66 + 16);
          *(v66 + 48) = 0;
          *(v66 + 56) = 0;
          *(v66 + 40) = v50;
          v68 = v49 - v50;
          if (v68)
          {
            if (one-time initialization token for vmOpsThreshold != -1)
            {
              swift_once();
            }

            if (v68 >= static __DataStorage.vmOpsThreshold)
            {
              *(v57 + 24) = v68;
              *(v57 + 32) = v68;
              *(v57 + 64) = 1;
              LODWORD(v153) = 0;
              _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
              result = malloc_type_malloc(v68, v153 << 32);
              if (!result)
              {
                goto LABEL_275;
              }

              *v67 = result;
            }

            else
            {
              *(v57 + 24) = v68;
              LODWORD(v153) = 0;
              _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
              result = malloc_type_malloc(v68, v153 << 32);
              if (!result)
              {
                goto LABEL_276;
              }

              *(v57 + 16) = result;
              *(v57 + 32) = v68;
              *(v57 + 64) = 1;
            }

            specialized static __DataStorage.move(_:_:_:)(result, v142, v68);
          }

          else
          {
            *(v66 + 64) = 0;
            *(v66 + 24) = 0;
            *(v66 + 32) = 0;
            *v67 = 0;
          }

          v16 = v61;
        }

        if (*(v57 + 32))
        {
          v82 = *(v57 + 16);
          if (!v82)
          {
            goto LABEL_259;
          }
        }

        else
        {
          v83 = malloc_good_size(*(v57 + 24));
          LODWORD(v153) = 0;
          _So30malloc_type_layout_semantics_ta_generic_data_setter(&v153 + 1);
          v144 = v83;
          result = malloc_type_malloc(v83, v153 << 32);
          if (!result)
          {
            goto LABEL_264;
          }

          v84 = *(v57 + 16);
          if (!v84)
          {
            goto LABEL_263;
          }

          v82 = result;
          v85 = *(v57 + 24);
          if (one-time initialization token for vmOpsThreshold != -1)
          {
            swift_once();
          }

          if (v85 >= static __DataStorage.vmOpsThreshold)
          {
            v87 = v56;
            v88 = v16;
            if (one-time initialization token for _pageSize != -1)
            {
              swift_once();
            }

            v89 = _pageSize - 1;
            if (__OFSUB__(_pageSize, 1))
            {
              goto LABEL_250;
            }

            if ((v89 & (v84 | v82)) != 0)
            {
              v86 = v82;
              v16 = v88;
            }

            else
            {
              v94 = _platform_mach_task_self();
              v95 = v85 & ~v89;
              if (v95 < 0 != v18)
              {
                goto LABEL_251;
              }

              if (vm_copy(v94, v84, v95, v82))
              {
                memmove(v82, v84, v95);
              }

              v18 = __OFSUB__(v85, v95);
              v85 -= v95;
              if (v18)
              {
                goto LABEL_252;
              }

              v96 = v95;
              v16 = v88;
              v84 += v96;
              v86 = (v82 + v96);
            }

            v56 = v87;
          }

          else
          {
            v86 = v82;
          }

          if (v85 >= 1)
          {
            memmove(v86, v84, v85);
          }

          v97 = *(v57 + 16);
          if (v97)
          {
            v98 = *(v57 + 48);
            if (v98)
            {
              v99 = *(v57 + 24);

              v98(v97, v99);
              outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v98);
            }

            else
            {
              free(*(v57 + 16));
            }
          }

          v100 = *(v57 + 48);
          *(v57 + 48) = 0;
          *(v57 + 56) = 0;
          result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v100);
          *(v57 + 16) = v82;
          *(v57 + 32) = v144;
          *(v57 + 64) = 0;
        }

        v101 = *(v57 + 40);
        v18 = __OFSUB__(v4, v101);
        v102 = v4 - v101;
        if (v18)
        {
          goto LABEL_230;
        }

        *(v82 + v102) = v56;
        v34 = v57 | 0x4000000000000000;
      }

      *v5 = v16;
      v5[1] = v34;
      goto LABEL_154;
    }

LABEL_21:
    ++v14;
  }

  if (v14 >= v22 >> 32 || v14 < v22)
  {
    goto LABEL_215;
  }

  v25 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v26 = *((v21 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (v26)
  {
    v27 = *(v25 + 40);
    v18 = __OFSUB__(v14, v27);
    v28 = v14 - v27;
    if (v18)
    {
      goto LABEL_217;
    }

LABEL_41:
    v31 = *(v26 + v28);
    goto LABEL_44;
  }

  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  __break(1u);
LABEL_276:
  __break(1u);
LABEL_277:
  __break(1u);
LABEL_278:
  __break(1u);
  return result;
}

uint64_t specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.LargeSlice.withUnsafeBytes<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(result + 16);
  v8 = *(result + 24);
  v9 = *(a2 + 16);
  if (!v9)
  {
    v13 = 0;
    if (!__OFSUB__(v8, v7))
    {
LABEL_4:
      v16[0] = v5;
      v16[1] = v6;
      v5 = v16;
      closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v15);
      if (v4)
      {
        return v14 & 1;
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    v14 = *(v5 - 1);
    return v14 & 1;
  }

  v10 = *(a2 + 40);
  v11 = __OFSUB__(v7, v10);
  v12 = v7 - v10;
  if (!v11)
  {
    v13 = (v12 + v9);
    if (!__OFSUB__(v8, v7))
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

double specialized Data.init(from:)(void *a1)
{
  v2 = a1;
  v90 = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(v87, v88);
  v4 = dispatch thunk of UnkeyedDecodingContainer.count.getter();
  if (v5)
  {
    v89 = xmmword_181234410;
LABEL_146:
    __swift_project_boxed_opaque_existential_1(v87, v88);
    while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
      LOBYTE(__src) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      Data._Representation.append(contentsOf:)(&__src, &__src + 1);
      __swift_project_boxed_opaque_existential_1(v87, v88);
    }

    __swift_destroy_boxed_opaque_existential_1(v87);
    __swift_destroy_boxed_opaque_existential_1(v2);
    return result;
  }

  v80 = v4;
  v6 = _s10Foundation4DataV15_RepresentationO5countAESi_tcfC_0(v4);
  v8 = v80;
  *&v89 = v6;
  *(&v89 + 1) = v7;
  if (v80 < 0)
  {
LABEL_160:
    __break(1u);
LABEL_161:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_162:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_163:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_164:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_165:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_166:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_167:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_168:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_169:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_170:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_171:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_172:
    v89 = xmmword_181234410;
    __break(1u);
LABEL_173:
    __break(1u);
  }

  v9 = v6;
  v10 = v7;
  if (!v80)
  {
    goto LABEL_146;
  }

  v11 = 0;
  v78 = v2;
LABEL_8:
  v13 = *(&v89 + 1);
  v12 = v89;
  while (1)
  {
    if (v11 >= v8)
    {
      *&v89 = v12;
      *(&v89 + 1) = v13;
      __break(1u);
LABEL_150:
      *&v89 = v12;
      *(&v89 + 1) = v13;
      __break(1u);
LABEL_151:
      v89 = xmmword_181234410;
      __break(1u);
LABEL_152:
      v89 = xmmword_181234410;
      __break(1u);
LABEL_153:
      v89 = xmmword_181234410;
      __break(1u);
LABEL_154:
      v89 = xmmword_181234410;
      __break(1u);
LABEL_155:
      v89 = xmmword_181234410;
      __break(1u);
LABEL_156:
      v89 = xmmword_181234410;
      __break(1u);
LABEL_157:
      v89 = xmmword_181234410;
      __break(1u);
LABEL_158:
      v89 = xmmword_181234410;
      __break(1u);
LABEL_159:
      v89 = xmmword_181234410;
      __break(1u);
      goto LABEL_160;
    }

    if (__OFADD__(v11, 1))
    {
      goto LABEL_150;
    }

    v82 = v11 + 1;
    __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
    v81 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if ((v10 >> 62) > 1)
    {
      break;
    }

    if (v10 >> 62 != 1)
    {
      *&v89 = v12;
      *(&v89 + 1) = v13;
      outlined consume of Data._Representation(v9, v10);
      __src = v9;
      LOWORD(v84) = v10;
      BYTE2(v84) = BYTE2(v10);
      HIBYTE(v84) = BYTE3(v10);
      LOBYTE(v85) = BYTE4(v10);
      HIBYTE(v85) = BYTE5(v10);
      v86 = BYTE6(v10);
      if (v11 >= BYTE6(v10))
      {
        goto LABEL_173;
      }

      *(&__src + v11) = v81;
      v9 = __src;
      v2 = v78;
      v10 = v79 & 0xF00000000000000 | v84 | ((v85 | (v86 << 16)) << 32);
      *&v89 = __src;
      *(&v89 + 1) = v10;
      ++v11;
      v79 = v10;
      v8 = v80;
      if (v82 == v80)
      {
        goto LABEL_146;
      }

      goto LABEL_8;
    }

    v19 = v10 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v9, v10);
    outlined consume of Data._Representation(0, 0xC000000000000000);
    if (v11 >= v9 >> 32 || v11 < v9)
    {
      goto LABEL_152;
    }

    v20 = v10 & 0x3FFFFFFFFFFFFFFFLL;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = *(v19 + 16);
      if (v21)
      {
        v22 = *(v19 + 40);
        v16 = __OFSUB__(v9, v22);
        v23 = v9 - v22;
        if (v16)
        {
          goto LABEL_158;
        }

        v24 = v23 + v21;
      }

      else
      {
        v24 = 0;
      }

      v42 = (v9 >> 32) - v9;
      type metadata accessor for __DataStorage();
      v43 = swift_allocObject();
      v20 = v43;
      *(v43 + 16) = 0;
      v44 = (v43 + 16);
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 40) = v9;
      if (v42)
      {
        v45 = one-time initialization token for vmOpsThreshold;

        if (v45 != -1)
        {
          swift_once();
        }

        if (v42 >= static __DataStorage.vmOpsThreshold)
        {
          *(v20 + 24) = v42;
          *(v20 + 32) = v42;
          *(v20 + 64) = 1;
          LODWORD(__src) = 0;
          _So30malloc_type_layout_semantics_ta_generic_data_setter(&__src + 1);
          v50 = malloc_type_malloc((v9 >> 32) - v9, __src << 32);
          if (!v50)
          {
            goto LABEL_181;
          }

          v51 = v50;
          *v44 = v50;
          if (one-time initialization token for _pageSize != -1)
          {
            swift_once();
          }

          v52 = _pageSize - 1;
          if (__OFSUB__(_pageSize, 1))
          {
            goto LABEL_163;
          }

          if ((v52 & (v24 | v51)) != 0)
          {
            if (v42 < 1)
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (!v24)
            {
              goto LABEL_189;
            }

            v59 = v42 & ~v52;
            v60 = _platform_mach_task_self();
            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_169;
            }

            if (vm_copy(v60, v24, v59, v51))
            {
              memmove(v51, v24, v59);
            }

            v16 = __OFSUB__(v42, v59);
            v42 -= v59;
            if (v16)
            {
              goto LABEL_170;
            }

            v24 += v59;
            v51 += v59;
            if (v42 < 1)
            {
              goto LABEL_101;
            }
          }

          if (!v24)
          {
            goto LABEL_185;
          }

          v46 = v51;
LABEL_100:
          memmove(v46, v24, v42);
        }

        else
        {
          *(v20 + 24) = v42;
          LODWORD(__src) = 0;
          _So30malloc_type_layout_semantics_ta_generic_data_setter(&__src + 1);
          v46 = malloc_type_malloc((v9 >> 32) - v9, __src << 32);
          if (!v46)
          {
            goto LABEL_182;
          }

          *(v20 + 16) = v46;
          *(v20 + 32) = v42;
          *(v20 + 64) = 1;
          if (v42 >= 1)
          {
            if (!v24)
            {
              goto LABEL_186;
            }

            goto LABEL_100;
          }
        }

LABEL_101:
      }

      else
      {
        *(v43 + 64) = 0;
        *(v43 + 24) = 0;
        *(v43 + 32) = 0;
        *v44 = 0;
      }
    }

    if (*(v20 + 32))
    {
      v14 = *(v20 + 16);
      if (!v14)
      {
        goto LABEL_175;
      }

      goto LABEL_13;
    }

    v33 = malloc_good_size(*(v20 + 24));
    LODWORD(__src) = 0;
    _So30malloc_type_layout_semantics_ta_generic_data_setter(&__src + 1);
    v34 = malloc_type_malloc(v33, __src << 32);
    if (!v34)
    {
      goto LABEL_177;
    }

    v35 = *(v20 + 16);
    if (!v35)
    {
      goto LABEL_178;
    }

    v14 = v34;
    v36 = *(v20 + 24);
    if (one-time initialization token for vmOpsThreshold != -1)
    {
      swift_once();
    }

    if (v36 >= static __DataStorage.vmOpsThreshold)
    {
      if (one-time initialization token for _pageSize != -1)
      {
        swift_once();
      }

      v37 = _pageSize - 1;
      if (__OFSUB__(_pageSize, 1))
      {
        goto LABEL_161;
      }

      if ((v37 & (v35 | v14)) == 0)
      {
        v57 = _platform_mach_task_self();
        v58 = v36 & ~v37;
        if (v58 < 0 != v16)
        {
          goto LABEL_165;
        }

        if (vm_copy(v57, v35, v58, v14))
        {
          memmove(v14, v35, v58);
        }

        v16 = __OFSUB__(v36, v58);
        v36 -= v58;
        if (v16)
        {
          goto LABEL_166;
        }

        v35 += v58;
        v38 = (v14 + v58);
        if (v36 < 1)
        {
          goto LABEL_47;
        }

LABEL_46:
        memmove(v38, v35, v36);
        goto LABEL_47;
      }
    }

    v38 = v14;
    if (v36 >= 1)
    {
      goto LABEL_46;
    }

LABEL_47:
    v39 = *(v20 + 16);
    if (v39)
    {
      v40 = *(v20 + 48);
      if (v40)
      {
        v41 = *(v20 + 24);

        v40(v39, v41);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v40);
      }

      else
      {
        free(*(v20 + 16));
      }
    }

    v56 = *(v20 + 48);
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v56);
    *(v20 + 16) = v14;
    *(v20 + 32) = v33;
    *(v20 + 64) = 0;
LABEL_13:
    v15 = *(v20 + 40);
    v16 = __OFSUB__(v11, v15);
    v17 = v11 - v15;
    if (v16)
    {
      goto LABEL_154;
    }

    v18 = 0x4000000000000000;
    v12 = v9;
LABEL_15:
    *(v14 + v17) = v81;
    v13 = v18 | v20;
    ++v11;
    v10 = v18 | v20;
    v8 = v80;
    if (v82 == v80)
    {
      *&v89 = v12;
      *(&v89 + 1) = v13;
      v2 = v78;
      goto LABEL_146;
    }
  }

  if (v10 >> 62 == 2)
  {
    v25 = v10 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v9, v10);
    outlined consume of Data._Representation(0, 0xC000000000000000);
    if (v11 < *(v9 + 16))
    {
      goto LABEL_151;
    }

    if (v11 >= *(v9 + 24))
    {
      goto LABEL_153;
    }

    v20 = v10 & 0x3FFFFFFFFFFFFFFFLL;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v9 + 16);
      v26 = *(v9 + 24);
      v28 = *(v25 + 16);
      if (v28)
      {
        v29 = *(v25 + 40);
        v16 = __OFSUB__(v27, v29);
        v30 = v27 - v29;
        if (v16)
        {
          goto LABEL_159;
        }

        v31 = v30 + v28;
        v32 = v26 - v27;
        if (__OFSUB__(v26, v27))
        {
          goto LABEL_156;
        }
      }

      else
      {
        v31 = 0;
        v32 = v26 - v27;
        if (__OFSUB__(v26, v27))
        {
          goto LABEL_156;
        }
      }

      type metadata accessor for __DataStorage();
      v47 = swift_allocObject();
      *(v47 + 16) = 0;
      v48 = (v47 + 16);
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      if (v32 > 0x3FFFFFFFFFFFFFFELL)
      {
        goto LABEL_157;
      }

      v20 = v47;
      *(v47 + 40) = v27;
      if (!v32)
      {
        *(v47 + 64) = 0;
        *(v47 + 24) = 0;
        *(v47 + 32) = 0;
        *v48 = 0;
        goto LABEL_111;
      }

      if (one-time initialization token for vmOpsThreshold != -1)
      {
        swift_once();
      }

      if (v32 >= static __DataStorage.vmOpsThreshold)
      {
        *(v20 + 24) = v32;
        *(v20 + 32) = v32;
        *(v20 + 64) = 1;
        LODWORD(__src) = 0;
        _So30malloc_type_layout_semantics_ta_generic_data_setter(&__src + 1);
        v53 = malloc_type_malloc(v32, __src << 32);
        if (!v53)
        {
          goto LABEL_183;
        }

        v54 = v53;
        *v48 = v53;
        if (one-time initialization token for _pageSize != -1)
        {
          swift_once();
        }

        v55 = _pageSize - 1;
        if (__OFSUB__(_pageSize, 1))
        {
          goto LABEL_164;
        }

        if ((v55 & (v31 | v54)) != 0)
        {
          if (v32 < 1)
          {
            goto LABEL_111;
          }
        }

        else
        {
          if (!v31)
          {
            goto LABEL_190;
          }

          v61 = v32 & ~v55;
          v62 = _platform_mach_task_self();
          if ((v61 & 0x8000000000000000) != 0)
          {
            goto LABEL_171;
          }

          if (vm_copy(v62, v31, v61, v54))
          {
            memmove(v54, v31, v61);
          }

          v16 = __OFSUB__(v32, v61);
          v32 -= v61;
          if (v16)
          {
            goto LABEL_172;
          }

          v31 += v61;
          v54 += v61;
          if (v32 < 1)
          {
            goto LABEL_111;
          }
        }

        if (!v31)
        {
          goto LABEL_188;
        }

        v49 = v54;
LABEL_110:
        memmove(v49, v31, v32);
      }

      else
      {
        *(v20 + 24) = v32;
        LODWORD(__src) = 0;
        _So30malloc_type_layout_semantics_ta_generic_data_setter(&__src + 1);
        v49 = malloc_type_malloc(v32, __src << 32);
        if (!v49)
        {
          goto LABEL_184;
        }

        *(v20 + 16) = v49;
        *(v20 + 32) = v32;
        *(v20 + 64) = 1;
        if (v32 >= 1)
        {
          if (!v31)
          {
            goto LABEL_187;
          }

          goto LABEL_110;
        }
      }

LABEL_111:
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v12 = v9;
      if (*(v20 + 32))
      {
LABEL_114:
        v14 = *(v20 + 16);
        if (!v14)
        {
          goto LABEL_176;
        }

        goto LABEL_133;
      }
    }

    else
    {
      v63 = *(v9 + 16);
      v64 = *(v9 + 24);
      type metadata accessor for Data.RangeReference();
      v12 = swift_allocObject();
      *(v12 + 16) = v63;
      *(v12 + 24) = v64;

      if (*(v20 + 32))
      {
        goto LABEL_114;
      }
    }

    v65 = malloc_good_size(*(v20 + 24));
    LODWORD(__src) = 0;
    _So30malloc_type_layout_semantics_ta_generic_data_setter(&__src + 1);
    v66 = malloc_type_malloc(v65, __src << 32);
    if (!v66)
    {
      goto LABEL_180;
    }

    v67 = *(v20 + 16);
    if (!v67)
    {
      goto LABEL_179;
    }

    v14 = v66;
    v68 = *(v20 + 24);
    if (one-time initialization token for vmOpsThreshold != -1)
    {
      swift_once();
    }

    if (v68 < static __DataStorage.vmOpsThreshold)
    {
      goto LABEL_126;
    }

    if (one-time initialization token for _pageSize != -1)
    {
      swift_once();
    }

    v69 = _pageSize - 1;
    if (__OFSUB__(_pageSize, 1))
    {
      goto LABEL_162;
    }

    if ((v69 & (v67 | v14)) != 0)
    {
LABEL_126:
      v70 = v14;
      if (v68 >= 1)
      {
        goto LABEL_127;
      }
    }

    else
    {
      v76 = _platform_mach_task_self();
      v77 = v68 & ~v69;
      if (v77 < 0 != v16)
      {
        goto LABEL_167;
      }

      if (vm_copy(v76, v67, v77, v14))
      {
        memmove(v14, v67, v77);
      }

      v16 = __OFSUB__(v68, v77);
      v68 -= v77;
      if (v16)
      {
        goto LABEL_168;
      }

      v67 += v77;
      v70 = (v14 + v77);
      if (v68 >= 1)
      {
LABEL_127:
        memmove(v70, v67, v68);
      }
    }

    v71 = *(v20 + 16);
    if (v71)
    {
      v72 = *(v20 + 48);
      if (v72)
      {
        v73 = *(v20 + 24);

        v72(v71, v73);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v72);
      }

      else
      {
        free(*(v20 + 16));
      }
    }

    v74 = *(v20 + 48);
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v74);
    *(v20 + 16) = v14;
    *(v20 + 32) = v65;
    *(v20 + 64) = 0;
LABEL_133:
    v75 = *(v20 + 40);
    v16 = __OFSUB__(v11, v75);
    v17 = v11 - v75;
    if (v16)
    {
      goto LABEL_155;
    }

    v18 = 0x8000000000000000;
    v9 = v12;
    goto LABEL_15;
  }

  *&v89 = v12;
  *(&v89 + 1) = v13;
  __break(1u);
LABEL_175:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_176:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_177:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_178:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_179:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_180:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_181:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_182:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_183:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_184:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_185:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_186:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_187:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_188:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_189:
  v89 = xmmword_181234410;
  __break(1u);
LABEL_190:
  result = 0.0;
  v89 = xmmword_181234410;
  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  return specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(a1, a2, a3, a4, AttributedString.CharacterView.replaceSubrange<A>(_:with:));
}

{
  return specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(a1, a2, a3, a4, AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:));
}

uint64_t specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t))
{
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v8;
  v10[5] = v10[0];
  v10[6] = v5;
  v10[7] = v6;
  v10[8] = v7;
  v10[9] = v8;
  return a5(v10, a1);
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd);
  v10 = &protocol witness table for <A> [A];
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t partial apply for closure #1 in Data.withUnsafeBytes<A, B>(_:)(uint64_t a1)
{
  if (!a1)
  {
    a1 = 47824;
  }

  return (*(v1 + 32))(a1);
}

uint64_t partial apply for closure #1 in Data.withUnsafeMutableBytes<A, B>(_:)(uint64_t a1)
{
  if (!a1)
  {
    a1 = 47824;
  }

  return (*(v1 + 32))(a1);
}

void partial apply for closure #2 in Data.append<A>(contentsOf:)(_BYTE *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = &a1[a2];
  }

  else
  {
    v2 = 0;
  }

  Data._Representation.append(contentsOf:)(a1, v2);
}

void partial apply for closure #1 in Data.replaceSubrange<A>(_:with:)(char *__src, uint64_t a2)
{
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  Data._Representation.replaceSubrange(_:with:count:)(*(v2 + 24), *(v2 + 32), __src, v3);
}

uint64_t specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{

  Data.InlineSlice.ensureUniqueReference()();
  v11 = *a1;
  v12 = a1[1];
  if (v12 < v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = *(a1 + 1);
  v14 = v13[2];
  if (v14)
  {
    v15 = v13[5];
    v16 = __OFSUB__(v11, v15);
    v17 = v11 - v15;
    if (!v16)
    {
      v18 = (v12 - v11);
      if (v13[3] >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v13[3];
      }

      v20 = v14 + v17;
      v23[0] = v14 + v17;
      v23[1] = a2;
      v24 = 0;

      closure #1 in String.data(using:allowLossyConversion:)(v23, a3, a4, a5);
      if (v5)
      {
        swift_willThrow();
LABEL_13:
        swift_bridgeObjectRelease_n();
        return a1;
      }

      a1 = v24;
      v21 = v19 - v24;
      if (v19 >= v24)
      {
        if (v19 == v24)
        {
          goto LABEL_13;
        }

        if (v21 >= 1)
        {
          bzero(v24 + v20, v21);
          goto LABEL_13;
        }

        goto LABEL_17;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_18:

  __break(1u);
  return result;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, unint64_t a2, unint64_t a3, char a4)
{
  Data.InlineSlice.ensureUniqueReference()();
  v8 = *a1;
  v9 = a1[1];
  if (v9 < v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = *(a1 + 1);
  v11 = v10[2];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v10[5];
  v13 = v8 - v12;
  if (__OFSUB__(v8, v12))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v9 - v8;
  if (v10[3] >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10[3];
  }

  specialized UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(a2, a3, (v13 + v11), v15);
  if (a4 == 2)
  {
    _allASCII(_:)((v13 + v11), v15);
  }
}

uint64_t specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{

  Data.LargeSlice.ensureUniqueReference()();
  v11 = *(a1 + 1);
  v12 = v11[2];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = *(*a1 + 16);
  v14 = v11[5];
  v15 = __OFSUB__(v13, v14);
  v16 = v13 - v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(*a1 + 24);
  v15 = __OFSUB__(v17, v13);
  v18 = (v17 - v13);
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v11[3];
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = v12 + v16;
  v24[0] = v12 + v16;
  v24[1] = a2;
  v25 = 0;

  closure #1 in String.data(using:allowLossyConversion:)(v24, a3, a4, a5);
  if (v5)
  {
    swift_willThrow();
LABEL_13:
    swift_bridgeObjectRelease_n();
    return a1;
  }

  a1 = v25;
  v22 = v20 - v25;
  if (v20 >= v25)
  {
    if (v20 == v25)
    {
      goto LABEL_13;
    }

    if (v22 >= 1)
    {
      bzero(&v25[v21], v22);
      goto LABEL_13;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:

  __break(1u);
  return result;
}

void specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(void *a1, unint64_t a2, unint64_t a3, char a4)
{
  Data.LargeSlice.ensureUniqueReference()();
  v8 = a1[1];
  v9 = v8[2];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = *(*a1 + 16);
  v11 = v8[5];
  v12 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = *(*a1 + 24);
  v14 = __OFSUB__(v13, v10);
  v15 = v13 - v10;
  if (v14)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v16 = v8[3];
  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  specialized UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(a2, a3, (v12 + v9), v17);
  if (a4 == 2)
  {
    _allASCII(_:)((v12 + v9), v17);
  }
}

unint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = a5;
  v29[2] = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v11 = a1[1];
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v29, 0, 15);
      v26 = v29;
      v27 = a2;
      v28 = 0;
      swift_bridgeObjectRetain_n();
      closure #1 in String.data(using:allowLossyConversion:)(&v26, a3, a4, v6);
      if (v5)
      {
        swift_willThrow();
        swift_bridgeObjectRelease_n();
        goto LABEL_23;
      }

      if (!v28)
      {
        swift_bridgeObjectRelease_n();
        v6 = 0;
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    swift_bridgeObjectRetain_n();
    outlined copy of Data._Representation(v12, v11);
    outlined consume of Data._Representation(v12, v11);
    v26 = v12;
    v27 = v11 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);

    v15 = specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(&v26, a2, a3, a4, v6);
    if (v5)
    {
      swift_bridgeObjectRelease_n();
      v16 = v26;
      v17 = v27 | 0x8000000000000000;
LABEL_10:
      *a1 = v16;
      a1[1] = v17;
      goto LABEL_23;
    }

    v6 = v15;
    swift_bridgeObjectRelease_n();
    v22 = v26;
    v23 = v27 | 0x8000000000000000;
LABEL_20:
    *a1 = v22;
    a1[1] = v23;
    goto LABEL_23;
  }

  v25 = a5;
  if (v13)
  {
    v6 = HIDWORD(v12);
    swift_bridgeObjectRetain_n();
    outlined copy of Data._Representation(v12, v11);
    outlined consume of Data._Representation(v12, v11);
    v26 = v12;
    v27 = v11 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);

    v18 = specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v26, a2, a3, a4, v25);
    if (v5)
    {
      swift_bridgeObjectRelease_n();
      v16 = v26;
      v17 = v27 | 0x4000000000000000;
      goto LABEL_10;
    }

    v6 = v18;
    swift_bridgeObjectRelease_n();
    v22 = v26;
    v23 = v27 | 0x4000000000000000;
    goto LABEL_20;
  }

  swift_bridgeObjectRetain_n();
  outlined consume of Data._Representation(v12, v11);
  v29[0] = v12;
  LOWORD(v29[1]) = v11;
  BYTE2(v29[1]) = BYTE2(v11);
  BYTE3(v29[1]) = BYTE3(v11);
  BYTE4(v29[1]) = BYTE4(v11);
  BYTE5(v29[1]) = BYTE5(v11);
  BYTE6(v29[1]) = BYTE6(v11);
  v26 = v29;
  v27 = a2;
  v28 = 0;

  closure #1 in String.data(using:allowLossyConversion:)(&v26, a3, a4, v25);
  if (!v5)
  {
    v6 = v28;
    v19 = BYTE6(v11) - v28;
    if (BYTE6(v11) >= v28)
    {
      if (BYTE6(v11) == v28)
      {
LABEL_17:

        v20 = v29[0];
        v21 = LODWORD(v29[1]) | ((WORD2(v29[1]) | (BYTE6(v29[1]) << 16)) << 32);
        swift_bridgeObjectRelease_n();
        *a1 = v20;
        a1[1] = v21;
        goto LABEL_23;
      }

      if (v19 >= 1)
      {
        bzero(v29 + v28, v19);
        goto LABEL_17;
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_willThrow();

  v6 = v29[0];
  v14 = LODWORD(v29[1]) | ((WORD2(v29[1]) | (BYTE6(v29[1]) << 16)) << 32);
  swift_bridgeObjectRelease_n();
  *a1 = v6;
  a1[1] = v14;
LABEL_23:
  swift_bridgeObjectRelease_n();
  return v6;
}

uint64_t specialized Data.subscript.setter(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v124 = a3;
  v114 = a2;
  v113 = a1;
  v123 = a6;
  v10 = *(a6 + 8);
  v11 = *(*(v10 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = v11;
  v107 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v107);
  v106[1] = v106 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v119 = *(TupleTypeMetadata2 - 8);
  v120 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v121 = v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v118 = v106 - v17;
  v122 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v130 = type metadata accessor for Range();
  v132 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v131 = v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v133 = v106 - v21;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v111 = v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v125 = v106 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v117 = v106 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v129 = v106 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v106 - v32;
  v34 = 0;
  v35 = *v7;
  v36 = v7[1] >> 62;
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v34 = *(v35 + 16);
    }
  }

  else if (v36)
  {
    v34 = v35;
  }

  v136 = v34;
  v37 = lazy protocol witness table accessor for type Int and conformance Int();
  v128 = v33;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v38 = *v7;
  v39 = v7[1];
  v40 = v39 >> 62;
  v41 = v10;
  if ((v39 >> 62) > 1)
  {
    if (v40 == 2)
    {
      v42 = *(v38 + 24);
    }

    else
    {
      v42 = 0;
    }
  }

  else if (v40)
  {
    v42 = v38 >> 32;
  }

  else
  {
    v42 = BYTE6(v39);
  }

  v136 = v42;
  v43 = v129;
  v109 = v37;
  v44 = v41;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v45 = v128;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  v110 = AssociatedConformanceWitness;
  v112 = v7;
  v115 = a5;
  v47 = v22[2];
  v126 = v47;
  v127 = v22 + 2;
  v48 = v118;
  v47(v118, v45, AssociatedTypeWitness);
  v49 = v120;
  v47(&v48[*(v120 + 48)], v43, AssociatedTypeWitness);
  v50 = v119;
  v51 = v121;
  (*(v119 + 16))(v121, v48, v49);
  v52 = *(v49 + 48);
  v116 = v44;
  v53 = v22[4];
  v53(v131, v51, AssociatedTypeWitness);
  v54 = v22[1];
  v54(&v51[v52], AssociatedTypeWitness);
  (*(v50 + 32))(v51, v48, v49);
  v55 = *(v49 + 48);
  v57 = v130;
  v56 = v131;
  v53(&v131[*(v130 + 36)], &v51[v55], AssociatedTypeWitness);
  v58 = v132;
  v59 = v116;
  v54(v51, AssociatedTypeWitness);
  v60 = *(v59 + 32);
  swift_getAssociatedTypeWitness();
  v61 = swift_getAssociatedConformanceWitness();
  v134 = v60;
  v135 = v61;
  swift_getWitnessTable();
  v62 = v133;
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v64 = *(v58 + 8);
  v63 = v58 + 8;
  v65 = v117;
  v131 = v64;
  (v64)(v56, v57);
  v126(v65, v62, AssociatedTypeWitness);
  v66 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v67 = v125;
  if ((v66 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_28;
  }

  v136 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      v132 = v63;
      v68 = v54;
      v69 = v111;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v70 = dispatch thunk of static Comparable.< infix(_:_:)();
      v71 = v69;
      v54 = v68;
      v63 = v132;
      result = (v68)(v71, AssociatedTypeWitness);
      if (v70)
      {
        goto LABEL_66;
      }

      goto LABEL_28;
    }

LABEL_27:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_28;
  }

  v72 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v73 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v72 & 1) == 0)
  {
    if (v73 >= 64)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v124 = v54;
  if (v73 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v77 = v111;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v78 = dispatch thunk of static Comparable.< infix(_:_:)();
    v79 = v77;
    v54 = v124;
    result = (v124)(v79, AssociatedTypeWitness);
    if (v78)
    {
      goto LABEL_66;
    }

    goto LABEL_27;
  }

  v74 = v111;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v75 = dispatch thunk of static Comparable.< infix(_:_:)();
  v76 = v74;
  v54 = v124;
  result = (v124)(v76, AssociatedTypeWitness);
  if (v75)
  {
    goto LABEL_66;
  }

LABEL_28:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v136 = 0x7FFFFFFFFFFFFFFFLL;
    v80 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v81 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v80 & 1) == 0)
    {
      break;
    }

    if (v81 < 65)
    {
      goto LABEL_37;
    }

LABEL_31:
    v132 = v63;
    v124 = v54;
    v82 = v111;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v83 = dispatch thunk of static Comparable.< infix(_:_:)();
    v84 = v82;
    v54 = v124;
    v63 = v132;
    v124(v84, AssociatedTypeWitness);
    if (v83)
    {
      __break(1u);
LABEL_33:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_38;
  }

  if (v81 >= 64)
  {
    goto LABEL_31;
  }

LABEL_37:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_38:
  v85 = dispatch thunk of BinaryInteger._lowWord.getter();
  v54(v65, AssociatedTypeWitness);
  v86 = v130;
  v126(v67, &v133[*(v130 + 36)], AssociatedTypeWitness);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v136 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
        v132 = v63;
        v87 = v54;
        v88 = v111;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v89 = dispatch thunk of static Comparable.< infix(_:_:)();
        v90 = v88;
        v54 = v87;
        v63 = v132;
        result = (v87)(v90, AssociatedTypeWitness);
        if (v89)
        {
          goto LABEL_67;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v91 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v92 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v91)
      {
        v124 = v54;
        if (v92 > 64)
        {
          v93 = v111;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v67 = v125;
          v94 = dispatch thunk of static Comparable.< infix(_:_:)();
          v95 = v93;
          v54 = v124;
          result = (v124)(v95, AssociatedTypeWitness);
          if (v94)
          {
            goto LABEL_67;
          }

          goto LABEL_52;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v96 = v111;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v67 = v125;
        v97 = dispatch thunk of static Comparable.< infix(_:_:)();
        v98 = v96;
        v54 = v124;
        result = (v124)(v98, AssociatedTypeWitness);
        if (v97)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v67 = v125;
        if (v92 >= 64)
        {
          goto LABEL_52;
        }
      }
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_52:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v136 = 0x7FFFFFFFFFFFFFFFLL;
    v99 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v100 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v99)
    {
      if (v100 < 65)
      {
        break;
      }

      goto LABEL_55;
    }

    if (v100 >= 64)
    {
LABEL_55:
      v132 = v63;
      v101 = v54;
      v102 = v111;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v67 = v125;
      v103 = dispatch thunk of static Comparable.< infix(_:_:)();
      v104 = v102;
      v54 = v101;
      v63 = v132;
      v101(v104, AssociatedTypeWitness);
      if ((v103 & 1) == 0)
      {
        goto LABEL_62;
      }

      __break(1u);
LABEL_57:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_62;
      }

      continue;
    }

    break;
  }

  v67 = v125;
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_62:
  v105 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v54)(v67, AssociatedTypeWitness);
  if (v105 >= v85)
  {
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v113, v114, v112, v85, v105);
    (v131)(v133, v86);
    v54(v129, AssociatedTypeWitness);
    return (v54)(v128, AssociatedTypeWitness);
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for Data(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Data and conformance Data();
  a1[2] = lazy protocol witness table accessor for type Data and conformance Data();
  result = lazy protocol witness table accessor for type Data and conformance Data();
  a1[3] = result;
  return result;
}

{
  a1[1] = lazy protocol witness table accessor for type Data and conformance Data();
  a1[2] = lazy protocol witness table accessor for type Data and conformance Data();
  a1[3] = lazy protocol witness table accessor for type Data and conformance Data();
  result = lazy protocol witness table accessor for type Data and conformance Data();
  a1[4] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator()
{
  result = lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator;
  if (!lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator);
  }

  return result;
}

void *__swift_memcpy15_1(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Data.InlineData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 15))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Data.InlineData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 14) = 0;
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 15) = v3;
  return result;
}

void *destructiveInjectEnumTag for Data._Representation(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0xC000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Data.Deallocator(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Data.Deallocator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Data.Iterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Data.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UnsafeMutableRawPointer, @in_guaranteed Int) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

void *partial apply for specialized closure #1 in UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!__src)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return __src;
  }

  if (*(v3 + 40) >= a2)
  {
    __src = memcpy(*(v3 + 32), __src, 8 * a2);
    goto LABEL_6;
  }

  __break(1u);
  return __src;
}

unint64_t _s10Foundation6Base64O6decode6string7optionsAA4DataVSS_So06NSDataB15DecodingOptionsVtAC0H5ErrorOYKFZ(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v88 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v34 = HIBYTE(a2) & 0xF;
      *&v87 = a1;
      *(&v87 + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
      if (v34)
      {
        v35 = 3 * ((v34 + 3) >> 2);
        v36 = malloc(v35);
        v10 = v36;
        v85 = v35;
        if ((a3 & 1) == 0)
        {
          v37 = HIBYTE(a2) & 0xF;
          while (v37)
          {
            v38 = v37 - 1;
            v39 = *(&v86 + v37-- + 15);
            if (v39 != 61)
            {
              v40 = v38 + 4;
              if (v34 >= ((v38 + 4) & 0xFFFFFFFFFFFFFFFCLL))
              {
                v41 = v40 >> 2;
                if (v35 >= (3 * (v40 >> 2)))
                {
                  v42 = 0;
                  v43 = v41 - 1;
                  if (v40 >= 8 && v41 != 1)
                  {
                    v44 = 0;
                    v45 = v36 + 2;
                    v46 = v41 - 1;
                    v47 = &v87 + 3;
                    if (v41 <= 1)
                    {
                      v41 = 1;
                    }

                    v48 = v41 - 1;
                    do
                    {
                      if (!v48)
                      {
                        goto LABEL_134;
                      }

                      if (v44 == 0xA000000000000000)
                      {
                        goto LABEL_135;
                      }

                      v49 = *(v47 - 3);
                      v50 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + *(v47 - 2) + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v49 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + *(v47 - 1) + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding3 + *v47 + 8);
                      if (v50 >= 0x1FFFFFF)
                      {
                        goto LABEL_116;
                      }

                      *(v45 - 2) = v50;
                      v47 += 4;
                      *(v45 - 1) = BYTE1(v50);
                      *v45 = BYTE2(v50);
                      v45 += 3;
                      v44 -= 3;
                      --v48;
                      --v46;
                    }

                    while (v46);
                    v42 = -v44;
                  }

                  v51 = 4 * v43;
                  v52 = &v87 + 4 * v43;
                  v49 = *v52;
                  v53 = v52[1];
                  v54 = (4 * v43) | 2;
                  if (v54 >= v34)
                  {
                    v57 = 0;
                    v56 = 1;
                  }

                  else
                  {
                    v55 = *(&v87 + v54);
                    v56 = v55 == 61;
                    if (v55 == 61)
                    {
                      v57 = 0;
                    }

                    else
                    {
                      v57 = *(&v87 + v54);
                    }
                  }

                  v71 = v51 | 3;
                  if (v71 >= v34)
                  {
                    v75 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + v53 + 8);
                    if (v56)
                    {
                      v57 = 65;
                    }

                    v73 = v75 | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v49 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + v57 + 8);
                  }

                  else
                  {
                    LOBYTE(v71) = *(&v87 + v71);
                    if (v56)
                    {
                      v57 = 65;
                    }

                    v72 = v71;
                    v73 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + v53 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v49 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + v57 + 8);
                    if (v71 == 61)
                    {
                      LOBYTE(v71) = 0;
                    }

                    if (v72 != 61)
                    {
                      v74 = 0;
                      v71 = v71;
                      goto LABEL_102;
                    }
                  }

                  v74 = 1;
                  v71 = 65;
LABEL_102:
                  v76 = *(&outlined read-only object #0 of one-time initialization function for decoding3 + v71 + 8) | v73;
                  if (v76 <= 0x1FFFFFE)
                  {
                    v36[v42] = v76;
                    v61 = v42 + 1;
                    if (__OFADD__(v42, 1))
                    {
                      goto LABEL_142;
                    }

                    if (!v56)
                    {
                      v36[v61] = BYTE1(v76);
                      v15 = __OFADD__(v61, 1);
                      v61 = v42 + 2;
                      if (v15)
                      {
                        goto LABEL_144;
                      }
                    }

                    if ((v74 & 1) != 0 || (v36[v61] = BYTE2(v76), v15 = __OFADD__(v61, 1), ++v61, !v15))
                    {
LABEL_65:
                      v86 = xmmword_18121D490;
                      v62 = &v86;
                      goto LABEL_68;
                    }

                    __break(1u);
                  }

LABEL_116:
                  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                  swift_willThrowTypedImpl();
                  LOWORD(v86) = v49;
                  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                  swift_willThrowTypedImpl();
                  v59 = 0;
LABEL_117:
                  free(v10);
                  LOBYTE(v86) = v49;
                  BYTE1(v86) = v59 & 1;
                  if (v59)
                  {
                    v77 = 256;
                  }

                  else
                  {
                    v77 = 0;
                  }

                  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                  swift_willThrowTypedImpl();
                  v78 = v49;
                  goto LABEL_121;
                }

LABEL_137:
                __break(1u);
                goto LABEL_138;
              }

LABEL_57:
              LOWORD(v86) = 256;
              lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
              swift_willThrowTypedImpl();
              LODWORD(v49) = 0;
              v59 = 1;
              goto LABEL_117;
            }
          }

          if (v34 >= 4)
          {
            *v36 = 0;
            v61 = 1;
            goto LABEL_65;
          }

          goto LABEL_57;
        }

        result = _s10Foundation6Base64O21_decodeIgnoringErrors4from4into6length7optionsySRys5UInt8VG_SryAJGSizSo06NSDataB15DecodingOptionsVtAC0L5ErrorOYKFZySRys6UInt32VG_A3StAPYKXEfU_(&unk_1EEECF7A8, 256, &unk_1EEECFBC8, 256, &unk_1EEECFFE8, 256, &unk_1EEED0408, 256, &v87, HIBYTE(a2) & 0xF, a3, v36, v35, &v85, &v84);
        if (v3)
        {
          LODWORD(v49) = v84;
          v59 = HIBYTE(v84);
          LOWORD(v86) = v84 & 0x1FF;
          lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
          swift_willThrowTypedImpl();
          goto LABEL_117;
        }

        if (v10)
        {
          v61 = v85;
          goto LABEL_65;
        }

        __break(1u);
LABEL_146:
        __break(1u);
        return result;
      }
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v7 = a1 & 0xFFFFFFFFFFFFLL;
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
LABEL_5:
        if (__OFADD__(v7, 3))
        {
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v8 = 3 * ((v7 + 3) >> 2);
        v9 = malloc(v8);
        v10 = v9;
        *&v86 = v8;
        if ((a3 & 1) == 0)
        {
          v11 = v7;
          do
          {
            if (!v11)
            {
              if (v7 >= 4)
              {
                *v9 = 0;
                v61 = 1;
                goto LABEL_67;
              }

              goto LABEL_59;
            }

            v12 = v11 - 1;
            v13 = *(v6 - 1 + v11--);
          }

          while (v13 == 61);
          v14 = v12 + 1;
          if (((v12 + 1) & 3) == 0 || (v15 = __OFADD__(v14 & 0xFFFFFFFFFFFFFFFCLL, 4), v14 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 4, !v15))
          {
            if (v7 >= v14)
            {
              v16 = v14 + 3;
              if (!__OFADD__(v14, 3))
              {
                if (v16 < 0)
                {
                  v16 = v14 + 6;
                }

                v17 = 3 * (v16 >> 2);
                v18 = v14 + 3;
                if (v14 >= 0)
                {
                  v18 = v14;
                }

                if (v8 >= v17)
                {
                  v19 = 0;
                  v20 = v18 >> 2;
                  v21 = (v18 >> 2) - 1;
                  if (v14 >= 8 && v21)
                  {
                    v22 = 0;
                    v23 = v9 + 2;
                    v24 = (v6 + 3);
                    v25 = v21;
                    do
                    {
                      if (!(3 * (v21 & ~(v21 >> 63)) + v22))
                      {
                        goto LABEL_133;
                      }

                      v26 = *(v24 - 3);
                      v27 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + *(v24 - 2) + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v26 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + *(v24 - 1) + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding3 + *v24 + 8);
                      if (v27 >= 0x1FFFFFF)
                      {
                        goto LABEL_111;
                      }

                      *(v23 - 1) = v27;
                      *v23 = BYTE2(v27);
                      v23 += 3;
                      v24 += 4;
                      v22 -= 3;
                      --v25;
                    }

                    while (v25);
                    v19 = -v22;
                  }

                  if ((v20 - 0x2000000000000001) >> 62 == 3)
                  {
                    v28 = 4 * v21;
                    v29 = (v6 + 4 * v21);
                    v26 = *v29;
                    v30 = v29[1];
                    if ((v28 | 2) >= v7)
                    {
                      v33 = 0;
                      v32 = 1;
                    }

                    else
                    {
                      v31 = *(v6 + (v28 | 2));
                      v32 = v31 == 61;
                      if (v31 == 61)
                      {
                        v33 = 0;
                      }

                      else
                      {
                        v33 = *(v6 + (v28 | 2));
                      }
                    }

                    v65 = v28 | 3;
                    if (v65 >= v7)
                    {
                      v69 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + v30 + 8);
                      if (v32)
                      {
                        v33 = 65;
                      }

                      v67 = v69 | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v26 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + v33 + 8);
                    }

                    else
                    {
                      LOBYTE(v65) = *(v6 + v65);
                      if (v32)
                      {
                        v33 = 65;
                      }

                      v66 = v65;
                      v67 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + v30 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v26 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + v33 + 8);
                      if (v65 == 61)
                      {
                        LOBYTE(v65) = 0;
                      }

                      if (v66 != 61)
                      {
                        v68 = 0;
                        v65 = v65;
                        goto LABEL_81;
                      }
                    }

                    v68 = 1;
                    v65 = 65;
LABEL_81:
                    v70 = *(&outlined read-only object #0 of one-time initialization function for decoding3 + v65 + 8) | v67;
                    if (v70 > 0x1FFFFFE)
                    {
                      goto LABEL_111;
                    }

                    v9[v19] = v70;
                    v61 = v19 + 1;
                    if (!__OFADD__(v19, 1))
                    {
                      if (v32 || (v9[v61] = BYTE1(v70), v15 = __OFADD__(v61, 1), v61 = v19 + 2, !v15))
                      {
                        if ((v68 & 1) != 0 || (v9[v61] = BYTE2(v70), v15 = __OFADD__(v61, 1), ++v61, !v15))
                        {
LABEL_67:
                          v87 = xmmword_18121D490;
                          v62 = &v87;
LABEL_68:
                          v63 = specialized Data.init(bytesNoCopy:count:deallocator:)(v10, v61, v62);
                          v64 = 0;
LABEL_125:
                          if (v64)
                          {
                            v83 = (v63 >> 8) & 1;
                            LOWORD(v87) = v63 & 0x1FF;
                            lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                            swift_willThrowTypedImpl();
                            goto LABEL_129;
                          }

                          return v63;
                        }

                        __break(1u);
LABEL_111:
                        lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                        swift_willThrowTypedImpl();
                        LOWORD(v87) = v26;
                        lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                        swift_willThrowTypedImpl();
                        v60 = 0;
LABEL_112:
                        free(v10);
                        LOBYTE(v87) = v26;
                        BYTE1(v87) = v60 & 1;
                        if (v60)
                        {
                          v77 = 256;
                        }

                        else
                        {
                          v77 = 0;
                        }

                        lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                        swift_willThrowTypedImpl();
                        v78 = v26;
LABEL_121:
                        v63 = v77 | v78;
                        v64 = 1;
                        goto LABEL_125;
                      }

LABEL_143:
                      __break(1u);
LABEL_144:
                      __break(1u);
                    }

LABEL_141:
                    __break(1u);
LABEL_142:
                    __break(1u);
                    goto LABEL_143;
                  }

LABEL_140:
                  __break(1u);
                  goto LABEL_141;
                }

LABEL_139:
                __break(1u);
                goto LABEL_140;
              }

LABEL_138:
              __break(1u);
              goto LABEL_139;
            }

LABEL_59:
            LOWORD(v87) = 256;
            lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
            swift_willThrowTypedImpl();
            LODWORD(v26) = 0;
            v60 = 1;
            goto LABEL_112;
          }

LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        result = _s10Foundation6Base64O21_decodeIgnoringErrors4from4into6length7optionsySRys5UInt8VG_SryAJGSizSo06NSDataB15DecodingOptionsVtAC0L5ErrorOYKFZySRys6UInt32VG_A3StAPYKXEfU_(&unk_1EEECF7A8, 256, &unk_1EEECFBC8, 256, &unk_1EEECFFE8, 256, &unk_1EEED0408, 256, v6, v7, a3, v9, v8, &v86, &v85);
        if (v3)
        {
          LODWORD(v26) = v85;
          v60 = BYTE1(v85);
          LOWORD(v87) = v85 & 0x1FF;
          lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
          swift_willThrowTypedImpl();
          goto LABEL_112;
        }

        if (v10)
        {
          v61 = v86;
          goto LABEL_67;
        }

        goto LABEL_146;
      }
    }

    else
    {
      v6 = _StringObject.sharedUTF8.getter();
      v7 = v82;
      if (v82 >= 1)
      {
        goto LABEL_5;
      }
    }

    v63 = 0;
    v64 = 0;
    goto LABEL_125;
  }

  v79 = static String._copying(_:)();
  v81 = v80;

  v63 = _s10Foundation6Base64O6decode6string7optionsAA4DataVSS_So06NSDataB15DecodingOptionsVtAC0H5ErrorOYKFZ(v79, v81, a3);
  if (v3)
  {

    v83 = (v63 >> 8) & 1;
LABEL_129:
    LOBYTE(v87) = v83;
    return v63 | (v83 << 8);
  }

  else
  {
  }

  return v63;
}

uint64_t _s10Foundation6Base64O12encodeToData5bytes7optionsAA0E0Vx_So06NSDataB15EncodingOptionsVtSlRzs5UInt8V7ElementRtzlFZAH_Tt1g5(uint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    result = 0;
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v7 = *(v5 + 24);
    result = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    result = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    return result;
  }

  result = HIDWORD(v5) - v5;
LABEL_10:
  v9 = specialized static Base64.encodeComputeCapacity(bytes:options:)(result, a3);
  specialized Data.withContiguousStorageIfAvailable<A>(_:)(v5, a2, v9, a3, &v15);
  if (*(&v15 + 1) >> 60 != 15)
  {
    return v15;
  }

  outlined copy of Data._Representation(v5, a2);
  v10 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v5, a2);
  v11 = *(v10 + 16);
  v12 = specialized static Base64.encodeComputeCapacity(bytes:options:)(v11, a3);
  *&v15 = specialized Data.init(count:)(v12);
  *(&v15 + 1) = v13;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v15, v12, v10 + 32, v11, a3);
  v14 = v15;

  return v14;
}

uint64_t closure #1 in closure #1 in static Base64.encodeToData<A>(bytes:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  if (result)
  {
    if (a4)
    {
      v21 = 48;
      if ((a4 & 0x10) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((a4 & 2) == 0)
      {
        v5 = 3 * (a3 / 3);
        v6 = a3 % 3;
        if (v5 >= 1)
        {
          v7 = 0;
          v8 = 0;
          v9 = (result + 3);
          while (1)
          {
            v10 = __OFADD__(v8, 3) ? 0x7FFFFFFFFFFFFFFFLL : v8 + 3;
            v11 = v8 + 2;
            if (__OFADD__(v8, 2))
            {
              break;
            }

            v12 = (a2 + v8);
            v13 = v12[1];
            v14 = *v12;
            v15 = *(a2 + v11);
            *(v9 - 3) = outlined read-only object #0 of one-time initialization function for encoding0[v14 + 32];
            *(v9 - 2) = byte_1EEED2F38[(v13 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v14 & 3))];
            *(v9 - 1) = byte_1EEED2F38[(v15 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v13 & 0xF))];
            *v9 = byte_1EEED2F38[v15];
            v16 = v7 + 4;
            if (__OFADD__(v7, 4))
            {
              goto LABEL_243;
            }

            v9 += 4;
            v7 += 4;
            v8 = v10;
            if (v10 >= v5)
            {
              if (v6 >= 1)
              {
                goto LABEL_184;
              }

              goto LABEL_230;
            }
          }

LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
          goto LABEL_255;
        }

        goto LABEL_182;
      }

      v21 = 57;
      if ((a4 & 0x10) != 0)
      {
LABEL_33:
        if ((a4 & 0x20) == 0)
        {
          v22 = 0;
          v23 = 13;
LABEL_35:
          v26 = 1;
          if (a3 >= v21)
          {
            goto LABEL_36;
          }

          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    if ((a4 & 0x20) != 0)
    {
      v22 = 0;
      v23 = 10;
      goto LABEL_35;
    }

LABEL_44:
    v26 = 0;
    v23 = 13;
    v22 = 10;
    if (a3 >= v21)
    {
LABEL_36:
      v27 = 0;
      a4 = 0;
      v28 = (result + 3);
      while (1)
      {
        v29 = __OFADD__(a4, 3) ? 0x7FFFFFFFFFFFFFFFLL : a4 + 3;
        v30 = a4 + 2;
        if (__OFADD__(a4, 2))
        {
          break;
        }

        v31 = (a2 + a4);
        v32 = v31[1];
        v33 = *v31;
        v34 = *(a2 + v30);
        *(v28 - 3) = outlined read-only object #0 of one-time initialization function for encoding0[v33 + 32];
        *(v28 - 2) = byte_1EEED2F38[(v32 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v33 & 3))];
        *(v28 - 1) = byte_1EEED2F38[(v34 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v32 & 0xF))];
        *v28 = byte_1EEED2F38[v34];
        v16 = v27 + 4;
        if (__OFADD__(v27, 4))
        {
          goto LABEL_232;
        }

        v28 += 4;
        v27 += 4;
        a4 = v29;
        if (v29 >= v21)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

LABEL_45:
    v16 = 0;
LABEL_46:
    v35 = a3 / v21 * v21;
    if ((a3 / v21 * v21) >> 64 != v35 >> 63)
    {
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    if (v21 < v35)
    {
      v36 = v21;
      do
      {
        v37 = v36 + v21;
        v38 = __OFADD__(v36, v21);
        a4 = __OFADD__(v36, v21) ? 0x7FFFFFFFFFFFFFFFLL : v36 + v21;
        *(result + v16) = v23;
        v39 = __OFADD__(v16++, 1);
        if (v39)
        {
          goto LABEL_240;
        }

        if ((v26 & 1) == 0)
        {
          *(result + v16) = v22;
          v39 = __OFADD__(v16++, 1);
          if (v39)
          {
            goto LABEL_253;
          }
        }

        if (v38)
        {
          goto LABEL_241;
        }

        if (v36 < v37)
        {
          while (1)
          {
            v40 = v36 + 3;
            if (__OFADD__(v36, 3))
            {
              v40 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (__OFADD__(v36, 2))
            {
              break;
            }

            v41 = a2 + v36;
            v42 = *(a2 + v36);
            v43 = *(a2 + v36 + 2);
            v44 = *(v41 + 1);
            *(result + v16) = outlined read-only object #0 of one-time initialization function for encoding0[v42 + 32];
            if (__OFADD__(v16, 1))
            {
              goto LABEL_216;
            }

            *(result + v16 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v44 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v42 & 3))) + 32);
            if (__OFADD__(v16, 2))
            {
              goto LABEL_217;
            }

            *(result + v16 + 2) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v43 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v44 & 0xF))) + 32);
            if (__OFADD__(v16, 3))
            {
              goto LABEL_218;
            }

            *(result + v16 + 3) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + v43 + 32);
            v45 = v16 + 4;
            if (__OFADD__(v16, 4))
            {
              goto LABEL_219;
            }

            v16 += 4;
            v36 = v40;
            if (v40 >= v37)
            {
              v16 = v45;
              v37 = a4;
              goto LABEL_49;
            }
          }

          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
          goto LABEL_220;
        }

LABEL_49:
        v36 = v37;
      }

      while (v37 < v35);
    }

    if (a3 / v21 >= 1 && v35 < a3)
    {
      *(result + v16) = v23;
      v39 = __OFADD__(v16++, 1);
      if (v39)
      {
LABEL_258:
        __break(1u);
        goto LABEL_259;
      }

      if ((v26 & 1) == 0)
      {
        *(result + v16) = v22;
        v39 = __OFADD__(v16++, 1);
        if (v39)
        {
          goto LABEL_264;
        }
      }
    }

    v46 = 3 * (a3 / 3);
    if (v35 < v46)
    {
      while (1)
      {
        v47 = v35 + 3;
        if (__OFADD__(v35, 3))
        {
          v47 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (__OFADD__(v35, 2))
        {
          break;
        }

        v48 = a2 + v35;
        v49 = *(a2 + v35);
        v50 = *(a2 + v35 + 2);
        v51 = *(v48 + 1);
        *(result + v16) = outlined read-only object #0 of one-time initialization function for encoding0[v49 + 32];
        if (__OFADD__(v16, 1))
        {
          goto LABEL_234;
        }

        *(result + v16 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v51 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v49 & 3))) + 32);
        if (__OFADD__(v16, 2))
        {
          goto LABEL_235;
        }

        *(result + v16 + 2) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v50 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v51 & 0xF))) + 32);
        if (__OFADD__(v16, 3))
        {
          goto LABEL_236;
        }

        *(result + v16 + 3) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + v50 + 32);
        v52 = v16 + 4;
        if (__OFADD__(v16, 4))
        {
          goto LABEL_237;
        }

        v16 += 4;
        v35 = v47;
        if (v47 >= v46)
        {
          v16 = v52;
          goto LABEL_85;
        }
      }

LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
      goto LABEL_238;
    }

LABEL_85:
    if (a3 % 3 < 1)
    {
      goto LABEL_230;
    }

    v53 = (v46 + 1);
    if (v46 + 1 >= a3)
    {
      v54 = 0;
    }

    else
    {
      v54 = v53[a2];
    }

    v55 = v46 + 2;
    if (__OFADD__(v46, 2))
    {
      goto LABEL_257;
    }

    v56 = *(a2 + v46);
    if (v55 < a3)
    {
      v57 = *(a2 + v55);
      *(result + v16) = outlined read-only object #0 of one-time initialization function for encoding0[v56 + 32];
      if (v53 >= a3)
      {
LABEL_105:
        if (__OFADD__(v16, 1))
        {
LABEL_260:
          __break(1u);
          goto LABEL_261;
        }

        *(result + v16 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + 16 * (v56 & 3) + 32);
        v39 = __OFADD__(v16, 2);
        v59 = v16 + 2;
        if (v39)
        {
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        *(result + v59) = 61;
        if (__OFADD__(v59, 1))
        {
LABEL_262:
          __break(1u);
          goto LABEL_263;
        }

        *(result + v59 + 1) = 61;
        v39 = __OFADD__(v59, 2);
        v16 = v59 + 2;
        if (!v39)
        {
          goto LABEL_230;
        }

        __break(1u);
        goto LABEL_111;
      }

      if (__OFADD__(v16, 1))
      {
LABEL_268:
        __break(1u);
        goto LABEL_269;
      }

      v53 = &outlined read-only object #0 of one-time initialization function for encoding1;
      *(result + v16 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v54 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v56 & 3))) + 32);
      if (__OFADD__(v16, 2))
      {
LABEL_270:
        __break(1u);
        goto LABEL_271;
      }

      *(result + v16 + 2) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v57 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v54 & 0xF))) + 32);
      v56 = v16 + 3;
      if (__OFADD__(v16, 3))
      {
LABEL_272:
        __break(1u);
        goto LABEL_273;
      }

      v54 = *(&outlined read-only object #0 of one-time initialization function for encoding1 + v57 + 32);
      *(result + v56) = v54;
      v39 = __OFADD__(v16, 4);
      v16 += 4;
      if (!v39)
      {
        goto LABEL_230;
      }

      __break(1u);
    }

    *(result + v16) = outlined read-only object #0 of one-time initialization function for encoding0[v56 + 32];
    if (v53 < a3)
    {
      if (__OFADD__(v16, 1))
      {
LABEL_269:
        __break(1u);
        goto LABEL_270;
      }

      *(result + v16 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v54 >> 4) & 0xFFFFFFCF | (16 * (v56 & 3))) + 32);
      if (__OFADD__(v16, 2))
      {
LABEL_271:
        __break(1u);
        goto LABEL_272;
      }

      *(result + v16 + 2) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + 4 * (v54 & 0xF) + 32);
      v39 = __OFADD__(v16, 3);
      v58 = v16 + 3;
      if (v39)
      {
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
        goto LABEL_275;
      }

      LOBYTE(v56) = 61;
      *(result + v58) = 61;
      v39 = __OFADD__(v58, 1);
      v16 = v58 + 1;
      if (!v39)
      {
        goto LABEL_230;
      }

      __break(1u);
    }

    goto LABEL_105;
  }

  if (a4)
  {
    v24 = 48;
    if ((a4 & 0x10) != 0)
    {
      goto LABEL_112;
    }

    goto LABEL_30;
  }

  if ((a4 & 2) != 0)
  {
LABEL_111:
    v24 = 57;
    if ((a4 & 0x10) != 0)
    {
LABEL_112:
      if ((a4 & 0x20) != 0)
      {
        goto LABEL_113;
      }

      goto LABEL_31;
    }

LABEL_30:
    if ((a4 & 0x20) == 0)
    {
LABEL_113:
      v25 = 0;
LABEL_114:
      v5 = 0x7FFFFFFFFFFFFFFDLL;
      if (a3 >= v24)
      {
        v60 = 0;
        v61 = 0;
        while (1)
        {
          v62 = __OFADD__(v61, 3) ? 0x7FFFFFFFFFFFFFFFLL : v61 + 3;
          if (v61 > 0x7FFFFFFFFFFFFFFDLL)
          {
            break;
          }

          v16 = v60 + 4;
          if (__OFADD__(v60, 4))
          {
            goto LABEL_239;
          }

          v60 += 4;
          v61 = v62;
          if (v62 >= v24)
          {
            goto LABEL_123;
          }
        }

LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
        goto LABEL_242;
      }

      v16 = 0;
LABEL_123:
      v63 = a3 / v24 * v24;
      if ((a3 / v24 * v24) >> 64 != v63 >> 63)
      {
        goto LABEL_256;
      }

      if (v24 < v63)
      {
        result = v24;
        do
        {
          v64 = result + v24;
          v65 = __OFADD__(result, v24);
          v66 = __OFADD__(result, v24) ? 0x7FFFFFFFFFFFFFFFLL : result + v24;
          v39 = __OFADD__(v16++, 1);
          if (v39)
          {
            goto LABEL_249;
          }

          if ((v25 & 1) == 0)
          {
            v39 = __OFADD__(v16++, 1);
            if (v39)
            {
              goto LABEL_254;
            }
          }

          if (v65)
          {
            goto LABEL_250;
          }

          if (result < v64)
          {
            while (1)
            {
              v67 = result + 3;
              if (__OFADD__(result, 3))
              {
                v67 = 0x7FFFFFFFFFFFFFFFLL;
              }

              if (result > 0x7FFFFFFFFFFFFFFDLL)
              {
                break;
              }

              if (__OFADD__(v16, 1))
              {
                goto LABEL_224;
              }

              if (__OFADD__(v16, 2))
              {
                goto LABEL_225;
              }

              if (__OFADD__(v16, 3))
              {
                goto LABEL_226;
              }

              v68 = v16 + 4;
              if (__OFADD__(v16, 4))
              {
                goto LABEL_227;
              }

              v16 += 4;
              result = v67;
              if (v67 >= v64)
              {
                v16 = v68;
                v64 = v66;
                goto LABEL_126;
              }
            }

            __break(1u);
LABEL_224:
            __break(1u);
LABEL_225:
            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
            goto LABEL_228;
          }

LABEL_126:
          result = v64;
        }

        while (v64 < v63);
      }

      if (a3 / v24 >= 1 && v63 < a3)
      {
        v39 = __OFADD__(v16++, 1);
        if (v39)
        {
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
          goto LABEL_265;
        }

        if ((v25 & 1) == 0)
        {
          v39 = __OFADD__(v16++, 1);
          if (v39)
          {
            goto LABEL_274;
          }
        }
      }

      v69 = 3 * (a3 / 3);
      if (v63 < v69)
      {
        v25 = -1;
        while (1)
        {
          v70 = v63 + 3;
          if (__OFADD__(v63, 3))
          {
            v70 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v63 > 0x7FFFFFFFFFFFFFFDLL)
          {
            goto LABEL_244;
          }

          if (__OFADD__(v16, 1))
          {
            goto LABEL_245;
          }

          if (__OFADD__(v16, 2))
          {
            goto LABEL_246;
          }

          if (__OFADD__(v16, 3))
          {
            goto LABEL_247;
          }

          v71 = v16 + 4;
          if (__OFADD__(v16, 4))
          {
            goto LABEL_248;
          }

          v16 += 4;
          v63 = v70;
          if (v70 >= v69)
          {
            v16 = v71;
            break;
          }
        }
      }

      if (a3 % 3 >= 1)
      {
        v5 = v69 + 2;
        if (__OFADD__(v69, 2))
        {
LABEL_259:
          __break(1u);
          goto LABEL_260;
        }

        v6 = v69 + 1;
        if (v6 >= a3)
        {
LABEL_176:
          if (__OFADD__(v16, 1))
          {
LABEL_265:
            __break(1u);
            goto LABEL_266;
          }

          v39 = __OFADD__(v16, 2);
          v72 = v16 + 2;
          if (v39)
          {
LABEL_266:
            __break(1u);
            goto LABEL_267;
          }

          if (__OFADD__(v72, 1))
          {
LABEL_267:
            __break(1u);
            goto LABEL_268;
          }

          v39 = __OFADD__(v72, 2);
          v16 = v72 + 2;
          if (v39)
          {
            __break(1u);
LABEL_182:
            if (v6 < 1)
            {
              v16 = 0;
              goto LABEL_230;
            }

            v16 = 0;
LABEL_184:
            v73 = *(a2 + v5);
            v74 = v5 + 1;
            if (v5 + 1 >= a3)
            {
              v75 = 0;
            }

            else
            {
              v75 = *(a2 + v74);
            }

            v76 = v5 + 2;
            if (v5 + 2 >= a3)
            {
              v77 = 0u;
            }

            else
            {
              v77 = *(a2 + v76);
            }

            v78 = v73;
            v79 = outlined read-only object #0 of one-time initialization function for encoding0[v73 + 32];
            v35 = result + v16;
            *(result + v16) = v79;
            v80 = 16 * (v78 & 3);
            if (v74 >= a3)
            {
              goto LABEL_195;
            }

            v26 = &outlined read-only object #0 of one-time initialization function for encoding1;
            v80 = *(&outlined read-only object #0 of one-time initialization function for encoding1 + (v80 | (v75 >> 4)) + 32);
            *(v35 + 1) = v80;
            v22 = 4 * (v75 & 0xF);
            if (v76 < a3)
            {
              *(v35 + 2) = byte_1EEED2F38[v22 | (v77 >> 6)];
              *(v35 + 3) = byte_1EEED2F38[v77];
              v39 = __OFADD__(v16, 4);
              v16 += 4;
              if (!v39)
              {
                goto LABEL_230;
              }

              __break(1u);
LABEL_195:
              *(v35 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + v80 + 32);
              *(v35 + 2) = 15677;
              v16 += 4;
              goto LABEL_230;
            }

LABEL_220:
            *(v35 + 2) = *(v26 + v22 + 32);
            v39 = __OFADD__(v16, 3);
            v86 = v16 + 3;
            if (v39)
            {
LABEL_281:
              __break(1u);
              goto LABEL_282;
            }

            *(result + v86) = 61;
LABEL_229:
            v16 = v86 + 1;
            goto LABEL_230;
          }

          goto LABEL_230;
        }

        v6 = __OFADD__(v16, 1);
        if (v5 < a3)
        {
          if (v6)
          {
LABEL_275:
            __break(1u);
            goto LABEL_276;
          }

          if (__OFADD__(v16, 2))
          {
LABEL_277:
            __break(1u);
            goto LABEL_278;
          }

          if (__OFADD__(v16, 3))
          {
LABEL_279:
            __break(1u);
            goto LABEL_280;
          }

          v39 = __OFADD__(v16, 4);
          v16 += 4;
          if (!v39)
          {
            goto LABEL_230;
          }

          __break(1u);
          goto LABEL_176;
        }

        if (v6)
        {
LABEL_276:
          __break(1u);
          goto LABEL_277;
        }

        if (__OFADD__(v16, 2))
        {
LABEL_278:
          __break(1u);
          goto LABEL_279;
        }

        v39 = __OFADD__(v16, 3);
        v82 = v16 + 3;
        if (v39)
        {
LABEL_280:
          __break(1u);
          goto LABEL_281;
        }

        v39 = __OFADD__(v82, 1);
        v16 = v82 + 1;
        if (!v39)
        {
          goto LABEL_230;
        }

        __break(1u);
        goto LABEL_205;
      }

LABEL_230:
      *a5 = v16;
      return result;
    }

LABEL_31:
    v25 = 1;
    goto LABEL_114;
  }

  v6 = 3 * (a3 / 3);
  v17 = a3 % 3;
  if (v6 >= 1)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = __OFADD__(v19, 3) ? 0x7FFFFFFFFFFFFFFFLL : v19 + 3;
      if (v19 > 0x7FFFFFFFFFFFFFFDLL)
      {
        goto LABEL_251;
      }

      v5 = v18 + 4;
      if (__OFADD__(v18, 4))
      {
        goto LABEL_252;
      }

      v18 += 4;
      v19 = v20;
      if (v20 >= v6)
      {
        v16 = v5;
        if (v17 >= 1)
        {
          goto LABEL_197;
        }

        goto LABEL_230;
      }
    }
  }

  v5 = 0;
  v16 = 0;
  if (v17 <= 0)
  {
    goto LABEL_230;
  }

LABEL_197:
  v25 = *(a2 + v6);
  v63 = v6 + 1;
  if (v6 + 1 < a3)
  {
    v81 = *(a2 + v63);
    goto LABEL_206;
  }

LABEL_205:
  v81 = 0;
LABEL_206:
  v83 = v6 + 2;
  if (v6 + 2 >= a3)
  {
    v84 = 0u;
  }

  else
  {
    v84 = *(a2 + v83);
  }

  v85 = 16 * (v25 & 3);
  if (v63 >= a3)
  {
LABEL_214:
    *(v5 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + v85 + 32);
    *(v5 + 3) = 61;
    v16 = v5 + 4;
    goto LABEL_230;
  }

  v63 = &outlined read-only object #0 of one-time initialization function for encoding1;
  *(v5 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + (v85 | (v81 >> 4)) + 32);
  v16 = 4 * (v81 & 0xF);
  if (v83 < a3)
  {
    v85 = byte_1EEED2F38;
    *(v5 + 2) = byte_1EEED2F38[v16 | (v84 >> 6)];
    *(v5 + 3) = byte_1EEED2F38[v84];
    v16 = v5 + 4;
    if (!__OFADD__(v5, 4))
    {
      goto LABEL_230;
    }

    __break(1u);
    goto LABEL_214;
  }

LABEL_228:
  *(v5 + 2) = *(v63 + v16 + 32);
  v86 = v5 + 3;
  if (!__OFADD__(v5, 3))
  {
    goto LABEL_229;
  }

LABEL_282:
  __break(1u);
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Base64.DecodingError(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = a2[1];
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = a2[1];
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t _s10Foundation6Base64O6decode4data7optionsAA4DataVSgAH_So06NSDataB15DecodingOptionsVtAC0H5ErrorOYKFZs6ResultOyAhMGSRys5UInt8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a2 < 1)
  {
    result = 0;
    v35 = 0;
    v36 = 0xC000000000000000;
    goto LABEL_62;
  }

  if (__OFADD__(a2, 3))
  {
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v9 = 3 * ((a2 + 3) >> 2);
  v10 = malloc(v9);
  v11 = v10;
  v46 = v9;
  if ((a3 & 1) == 0)
  {
    v12 = a2;
    do
    {
      if (!v12)
      {
        if (a2 >= 4)
        {
          *v10 = 0;
          v38 = 1;
          goto LABEL_36;
        }

        goto LABEL_32;
      }

      v13 = v12 - 1;
      v14 = *(a1 - 1 + v12--);
    }

    while (v14 == 61);
    v15 = v13 + 1;
    if (((v13 + 1) & 3) == 0 || (v16 = __OFADD__(v15 & 0xFFFFFFFFFFFFFFFCLL, 4), v15 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + 4, !v16))
    {
      if (v15 <= a2)
      {
        v17 = v15 + 3;
        if (!__OFADD__(v15, 3))
        {
          if (v17 < 0)
          {
            v17 = v15 + 6;
          }

          v18 = 3 * (v17 >> 2);
          v19 = v15 + 3;
          if (v15 >= 0)
          {
            v19 = v15;
          }

          if (v9 >= v18)
          {
            v20 = 0;
            v21 = (v19 >> 2) - 1;
            if (v15 >= 8 && v19 >> 2 != 1)
            {
              v22 = 0;
              v23 = v10 + 2;
              v24 = (a1 + 3);
              v25 = (v19 >> 2) - 1;
              do
              {
                if (!(3 * (v21 & ~(v21 >> 63)) + v22))
                {
                  goto LABEL_64;
                }

                v26 = *(v24 - 3);
                v27 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + *(v24 - 2) + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v26 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + *(v24 - 1) + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding3 + *v24 + 8);
                if (v27 >= 0x1FFFFFF)
                {
                  goto LABEL_57;
                }

                *(v23 - 1) = v27;
                *v23 = BYTE2(v27);
                v23 += 3;
                v24 += 4;
                v22 -= 3;
                --v25;
              }

              while (v25);
              v20 = -v22;
            }

            if (((v19 >> 2) - 0x2000000000000001) >> 62 == 3)
            {
              v28 = 4 * v21;
              v29 = (a1 + 4 * v21);
              v26 = *v29;
              v30 = v29[1];
              if ((v28 | 2) >= a2)
              {
                v33 = 0;
                v32 = 1;
              }

              else
              {
                v31 = *(a1 + (v28 | 2));
                v32 = v31 == 61;
                if (v31 == 61)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = *(a1 + (v28 | 2));
                }
              }

              v39 = v28 | 3;
              if (v39 >= a2)
              {
                v43 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + v30 + 8);
                if (v32)
                {
                  v33 = 65;
                }

                v41 = v43 | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v26 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + v33 + 8);
              }

              else
              {
                LOBYTE(v39) = *(a1 + v39);
                if (v32)
                {
                  v33 = 65;
                }

                v40 = v39;
                v41 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + v30 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v26 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + v33 + 8);
                if (v39 == 61)
                {
                  LOBYTE(v39) = 0;
                }

                if (v40 != 61)
                {
                  v42 = 0;
                  v39 = v39;
                  goto LABEL_49;
                }
              }

              v42 = 1;
              v39 = 65;
LABEL_49:
              v44 = *(&outlined read-only object #0 of one-time initialization function for decoding3 + v39 + 8) | v41;
              if (v44 > 0x1FFFFFE)
              {
                goto LABEL_57;
              }

              v10[v20] = v44;
              v38 = v20 + 1;
              if (!__OFADD__(v20, 1))
              {
                if (v32 || (v10[v38] = BYTE1(v44), v16 = __OFADD__(v38, 1), v38 = v20 + 2, !v16))
                {
                  if ((v42 & 1) != 0 || (v10[v38] = BYTE2(v44), v16 = __OFADD__(v38, 1), ++v38, !v16))
                  {
LABEL_36:
                    v48 = xmmword_18121D490;
                    result = specialized Data.init(bytesNoCopy:count:deallocator:)(v11, v38, &v48);
                    v35 = 0;
                    goto LABEL_62;
                  }

                  __break(1u);
LABEL_57:
                  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                  swift_willThrowTypedImpl();
                  LOWORD(v48) = v26;
                  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                  swift_willThrowTypedImpl();
                  v37 = 0;
LABEL_58:
                  free(v11);
                  LOBYTE(v48) = v26;
                  BYTE1(v48) = v37 & 1;
                  if (v37)
                  {
                    v45 = 256;
                  }

                  else
                  {
                    v45 = 0;
                  }

                  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
                  swift_willThrowTypedImpl();
                  v36 = 0;
                  result = v45 | v26;
                  v35 = 1;
LABEL_62:
                  *a4 = result;
                  *(a4 + 8) = v36;
                  *(a4 + 16) = v35;
                  return result;
                }

LABEL_70:
                __break(1u);
              }

LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_32:
      LOWORD(v48) = 256;
      lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
      swift_willThrowTypedImpl();
      LODWORD(v26) = 0;
      v37 = 1;
      goto LABEL_58;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  result = _s10Foundation6Base64O21_decodeIgnoringErrors4from4into6length7optionsySRys5UInt8VG_SryAJGSizSo06NSDataB15DecodingOptionsVtAC0L5ErrorOYKFZySRys6UInt32VG_A3StAPYKXEfU_(&unk_1EEECF7A8, 256, &unk_1EEECFBC8, 256, &unk_1EEECFFE8, 256, &unk_1EEED0408, 256, a1, a2, a3, v10, v9, &v46, &v47);
  if (v4)
  {
    LODWORD(v26) = v47;
    v37 = HIBYTE(v47);
    LOWORD(v48) = v47 & 0x1FF;
    lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
    swift_willThrowTypedImpl();
    goto LABEL_58;
  }

  if (v11)
  {
    v38 = v46;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

unint64_t _s10Foundation6Base64O6decode5bytes7optionsAA4DataVx_So06NSDataB15DecodingOptionsVtAC0H5ErrorOYKSlRzs5UInt8V7ElementRtzlFZSayANG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  if (__OFADD__(v3, 3))
  {
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v6 = a1 + 32;
  v7 = 3 * ((v3 + 3) >> 2);
  v8 = malloc(v7);
  v9 = v8;
  v45 = v7;
  if (a2)
  {
    result = _s10Foundation6Base64O21_decodeIgnoringErrors4from4into6length7optionsySRys5UInt8VG_SryAJGSizSo06NSDataB15DecodingOptionsVtAC0L5ErrorOYKFZySRys6UInt32VG_A3StAPYKXEfU_(&unk_1EEECF7A8, 256, &unk_1EEECFBC8, 256, &unk_1EEECFFE8, 256, &unk_1EEED0408, 256, v6, v3, a2, v8, v7, &v45, &v46);
    if (v2)
    {
      LODWORD(v24) = v46;
      v33 = HIBYTE(v46);
      LOWORD(v47) = v46 & 0x1FF;
      lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
      swift_willThrowTypedImpl();
      goto LABEL_58;
    }

    if (v9)
    {
      v34 = v45;
      goto LABEL_36;
    }

    __break(1u);
    return result;
  }

  v10 = v3;
  do
  {
    if (!v10)
    {
      if (v3 >= 4)
      {
        *v8 = 0;
        v34 = 1;
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    v11 = v10 - 1;
    v12 = *(a1 + 31 + v10--);
  }

  while (v12 == 61);
  v13 = v11 + 1;
  if (((v11 + 1) & 3) != 0)
  {
    v14 = __OFADD__(v13 & 0xFFFFFFFFFFFFFFFCLL, 4);
    v13 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    if (v14)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }
  }

  if (v3 < v13)
  {
LABEL_32:
    LOWORD(v47) = 256;
    lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
    swift_willThrowTypedImpl();
    LODWORD(v24) = 0;
    v33 = 1;
    goto LABEL_58;
  }

  v15 = v13 + 3;
  if (__OFADD__(v13, 3))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v15 < 0)
  {
    v15 = v13 + 6;
  }

  v16 = 3 * (v15 >> 2);
  v17 = v13 + 3;
  if (v13 >= 0)
  {
    v17 = v13;
  }

  if (v7 < v16)
  {
    goto LABEL_66;
  }

  v18 = 0;
  v19 = (v17 >> 2) - 1;
  if (v13 >= 8 && v17 >> 2 != 1)
  {
    v20 = 0;
    v21 = v8 + 2;
    v22 = (a1 + 35);
    v23 = (v17 >> 2) - 1;
    do
    {
      if (!(3 * (v19 & ~(v19 >> 63)) + v20))
      {
        goto LABEL_63;
      }

      v24 = *(v22 - 3);
      v25 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + *(v22 - 2) + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v24 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + *(v22 - 1) + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding3 + *v22 + 8);
      if (v25 >= 0x1FFFFFF)
      {
        goto LABEL_57;
      }

      *(v21 - 1) = v25;
      *v21 = BYTE2(v25);
      v21 += 3;
      v22 += 4;
      v20 -= 3;
      --v23;
    }

    while (v23);
    v18 = -v20;
  }

  if (((v17 >> 2) - 0x2000000000000001) >> 62 != 3)
  {
    goto LABEL_67;
  }

  v26 = 4 * v19;
  v27 = (v6 + 4 * v19);
  v24 = *v27;
  v28 = v27[1];
  if ((v26 | 2) >= v3)
  {
    v31 = 0;
    v30 = 1;
  }

  else
  {
    v29 = *(v6 + (v26 | 2));
    v30 = v29 == 61;
    if (v29 == 61)
    {
      v31 = 0;
    }

    else
    {
      v31 = *(v6 + (v26 | 2));
    }
  }

  v38 = v26 | 3;
  if (v38 >= v3)
  {
    v42 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + v28 + 8);
    if (v30)
    {
      v31 = 65;
    }

    v40 = v42 | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v24 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + v31 + 8);
  }

  else
  {
    LOBYTE(v38) = *(v6 + v38);
    if (v30)
    {
      v31 = 65;
    }

    v39 = v38;
    v40 = *(&outlined read-only object #0 of one-time initialization function for decoding1 + v28 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding0 + v24 + 8) | *(&outlined read-only object #0 of one-time initialization function for decoding2 + v31 + 8);
    if (v38 == 61)
    {
      LOBYTE(v38) = 0;
    }

    if (v39 != 61)
    {
      v41 = 0;
      v38 = v38;
      goto LABEL_49;
    }
  }

  v41 = 1;
  v38 = 65;
LABEL_49:
  v43 = *(&outlined read-only object #0 of one-time initialization function for decoding3 + v38 + 8) | v40;
  if (v43 > 0x1FFFFFE)
  {
    goto LABEL_57;
  }

  v8[v18] = v43;
  v34 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    goto LABEL_68;
  }

  if (!v30)
  {
    v8[v34] = BYTE1(v43);
    v14 = __OFADD__(v34, 1);
    v34 = v18 + 2;
    if (v14)
    {
LABEL_69:
      __break(1u);
    }
  }

  if ((v41 & 1) != 0 || (v8[v34] = BYTE2(v43), v14 = __OFADD__(v34, 1), ++v34, !v14))
  {
LABEL_36:
    v47 = xmmword_18121D490;
    v35 = specialized Data.init(bytesNoCopy:count:deallocator:)(v9, v34, &v47);
    v37 = v36;
    outlined copy of Data._Representation(v35, v36);
    outlined consume of Result<Data, Base64.DecodingError>?(v35, v37, 0);
    return v35;
  }

  __break(1u);
LABEL_57:
  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
  swift_willThrowTypedImpl();
  LOWORD(v47) = v24;
  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
  swift_willThrowTypedImpl();
  v33 = 0;
LABEL_58:
  free(v9);
  LOBYTE(v47) = v24;
  BYTE1(v47) = v33 & 1;
  if (v33)
  {
    v44 = 256;
  }

  else
  {
    v44 = 0;
  }

  lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
  swift_willThrowTypedImpl();
  LOBYTE(v47) = v24;
  BYTE1(v47) = v33 & 1;
  swift_willThrowTypedImpl();
  outlined consume of Result<Data, Base64.DecodingError>?(v44 | v24, 0, 1);
  LOBYTE(v47) = v33 & 1;
  return v24 | ((v33 & 1) << 8);
}

unint64_t lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError()
{
  result = lazy protocol witness table cache variable for type Base64.DecodingError and conformance Base64.DecodingError;
  if (!lazy protocol witness table cache variable for type Base64.DecodingError and conformance Base64.DecodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Base64.DecodingError and conformance Base64.DecodingError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Base64.DecodingError(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for Base64.DecodingError(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTag for Base64.DecodingError(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for Base64.DecodingError(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t _s10Foundation6Base64O21_decodeIgnoringErrors4from4into6length7optionsySRys5UInt8VG_SryAJGSizSo06NSDataB15DecodingOptionsVtAC0L5ErrorOYKFZySRys6UInt32VG_A3StAPYKXEfU_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, _BYTE *a15)
{
  v16 = a14;
  v17 = a10;
  if (a10 < 4)
  {
    if (a10 > 0)
    {
      v18 = 0;
      v19 = 0;
      goto LABEL_51;
    }

    *a14 = 0;
    return result;
  }

  v18 = 0;
  v19 = 0;
  v20 = a10 - 1;
  v21 = a9 + 1;
  v22 = 3;
  v23 = 0x1FFFFFF;
  do
  {
    v24 = *(a9 + v18);
    v25 = *(a9 + v18 + 1);
    v26 = __OFADD__(v18, 2);
    v27 = *(a9 + v18 + 2);
    v28 = *(a9 + v18 + 3);
    v29 = *(result + 4 * *(a9 + v18));
    v30 = *(a3 + 4 * *(a9 + v18 + 1)) | v29;
    v31 = *(a5 + 4 * v27) | *(a7 + 4 * *(a9 + v18 + 3)) | v30;
    if (v31 < 0x1FFFFFF)
    {
      v18 += 4;
      goto LABEL_32;
    }

    v32 = v27 == 61;
    if (v27 == 61 || v24 == 61 || v25 == 61 || v28 == 61)
    {
      goto LABEL_63;
    }

    if ((v24 - 58) <= 0xFFFFFFF5 && (v24 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && (v24 | 4) != 0x2F)
    {
      if ((v25 - 58) > 0xFFFFFFF5 || (v25 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5 || (v25 | 4) == 0x2F)
      {
        ++v18;
      }

      else if ((v27 - 58) > 0xFFFFFFF5 || (v27 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5 || (v27 | 4) == 0x2F)
      {
        v18 += 2;
      }

      else if ((v28 - 58) > 0xFFFFFFF5 || (v28 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5 || (v28 | 4) == 0x2F)
      {
        v18 += 3;
      }

      else
      {
        v18 += 4;
      }

      goto LABEL_33;
    }

    if (v18 + 1 >= a10)
    {
LABEL_59:
      lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
      result = swift_willThrowTypedImpl();
      LOBYTE(v45) = 0;
      goto LABEL_60;
    }

    v33 = 0;
    v34 = 0;
    v35 = -2 - v18;
    v36 = v20 - v18;
    v37 = (v21 + v18);
    v38 = 1;
    v39 = 1;
    while (1)
    {
      v41 = *v37++;
      v40 = v41;
      if ((v41 - 58) > 0xF5u || ((v40 & 0xDF) - 91) > 0xE5u || v40 == 43 || v40 == 47)
      {
        break;
      }

      if (v40 == 61)
      {
        v32 = 0;
LABEL_63:
        if (v18 == a10)
        {
          goto LABEL_85;
        }

        if ((v26 & 1) == 0)
        {
          v48 = *(a9 + v22);
          LOBYTE(v20) = v48 == 61;
          if (v48 == 61)
          {
            v49 = 65;
          }

          else
          {
            v49 = *(a9 + v22);
          }

          if (v48 != 61 && ((v32 ^ 1) & 1) == 0)
          {
            if ((v48 - 58) > 0xF5u || ((v48 & 0xDF) - 91) > 0xE5u || ((v48 - 43) & 0xFB) == 0)
            {
              goto LABEL_128;
            }

            LOBYTE(v20) = 0;
            v49 = *(a9 + v22);
          }

          v50 = 65;
          if (!v32)
          {
            v50 = v27;
          }

          v51 = *(a5 + 4 * v50) | *(a7 + 4 * v49) | v30;
          if (v51 < 0x1FFFFFF)
          {
            goto LABEL_77;
          }

          if (v18 < a10)
          {
            LODWORD(v15) = 0;
            LODWORD(v21) = 0;
            v23 = 0;
            v53 = 1;
            v54 = 1;
            v55 = 1;
            do
            {
              v26 = *(a9 + v18);
              v56 = v26 - 58 > 0xFFFFFFF5 || (v26 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
              if (v56 || v26 == 43 || v26 == 47)
              {
                if (v55)
                {
                  v55 = 0;
                  v23 = *(a9 + v18);
                }

                else if (v54)
                {
                  v54 = 0;
                  v55 = 0;
                  LODWORD(v21) = *(a9 + v18);
                }

                else
                {
                  if ((v53 & 1) == 0)
                  {
                    goto LABEL_127;
                  }

                  v53 = 0;
                  v54 = 0;
                  v55 = 0;
                  LODWORD(v15) = *(a9 + v18);
                }
              }

              else if (v26 == 61)
              {
                if (v55)
                {
                  while (1)
                  {
                    v45 = *(a9 + v18);
                    v58 = (v45 - 58) > 0xFFFFFFF5 || (v45 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
                    if (v58 || (v45 | 4) == 0x2F)
                    {
                      goto LABEL_124;
                    }

                    if (++v18 >= a10)
                    {
                      if (v19)
                      {
                        goto LABEL_117;
                      }

                      goto LABEL_59;
                    }
                  }
                }

                if (v54)
                {
                  goto LABEL_59;
                }

                if ((v53 & 1) == 0)
                {
                  LOBYTE(v20) = 1;
                  v26 = 65;
                  goto LABEL_132;
                }

                if (++v18 >= a10)
                {
                  goto LABEL_59;
                }

                v57 = *(a9 + v18);
                if ((v57 - 58) > 0xFFFFFFF5 || (v57 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5 || v57 == 43 || v57 == 47)
                {
                  goto LABEL_128;
                }

                LODWORD(v15) = 65;
                LOBYTE(v32) = 1;
                if (v57 == 61)
                {
                  v26 = 65;
                  LOBYTE(v20) = 1;
                  goto LABEL_132;
                }

                v53 = 0;
                v54 = 0;
                v55 = 0;
              }

              ++v18;
            }

            while (v18 < a10);
            if ((v55 & 1) == 0)
            {
              goto LABEL_59;
            }
          }

LABEL_117:
          *a14 = v19;
          return result;
        }

        __break(1u);
        goto LABEL_136;
      }

LABEL_18:
      --v35;
      if (!--v36)
      {
        goto LABEL_59;
      }
    }

    if (v39)
    {
      v42 = v33;
    }

    else
    {
      v42 = v40;
    }

    if (v39)
    {
      v43 = v40;
    }

    else
    {
      v43 = v34;
    }

    if ((v39 | v38))
    {
      v38 &= v39;
      v33 = v42;
      v34 = v43;
      v39 = 0;
      goto LABEL_18;
    }

    v18 = -v35;
    v31 = *(a3 + 4 * v34) | *(a5 + 4 * v33) | *(a7 + 4 * v40) | v29;
LABEL_32:
    v44 = v31 >> 8;
    v15 = (a12 + v19);
    *v15 = v31;
    v32 = HIWORD(v31);
    v15[1] = v44;
    v15[2] = v32;
    v19 += 3;
LABEL_33:
    v22 = v18 + 3;
    if (__OFADD__(v18, 3))
    {
      __break(1u);
LABEL_127:
      if (v32)
      {
LABEL_128:
        lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
        result = swift_willThrowTypedImpl();
        LOBYTE(v45) = 1;
LABEL_60:
        v47 = 1;
LABEL_125:
        *a15 = v45;
        a15[1] = v47;
        return result;
      }

      LOBYTE(v32) = 0;
LABEL_132:
      v17 = *(a7 + 4 * v26);
      v51 = *(a3 + 4 * v21) | *(result + 4 * v23) | *(a5 + 4 * v15) | v17;
LABEL_77:
      *(a12 + v19) = v51;
      v52 = __OFADD__(v19++, 1);
      if (!v52)
      {
        if ((v32 & 1) != 0 || (*(a12 + v19) = BYTE1(v51), v52 = __OFADD__(v19, 1), ++v19, !v52))
        {
          if ((v20 & 1) == 0)
          {
            *(a12 + v19) = BYTE2(v51);
            v52 = __OFADD__(v19++, 1);
            if (v52)
            {
              __break(1u);
              break;
            }
          }

          goto LABEL_117;
        }

LABEL_137:
        __break(1u);
      }

LABEL_136:
      __break(1u);
      goto LABEL_137;
    }
  }

  while (v22 < a10);
  if (v18 == v17)
  {
LABEL_85:
    v16 = a14;
    goto LABEL_86;
  }

  v16 = a14;
  if (v18 < v17)
  {
LABEL_51:
    while (1)
    {
      v45 = *(a9 + v18);
      v46 = (v45 - 58) > 0xFFFFFFF5 || (v45 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
      if (v46 || (v45 | 4) == 0x2F)
      {
        break;
      }

      if (++v18 >= v17)
      {
        goto LABEL_57;
      }
    }

LABEL_124:
    lazy protocol witness table accessor for type Base64.DecodingError and conformance Base64.DecodingError();
    result = swift_willThrowTypedImpl();
    v47 = 0;
    goto LABEL_125;
  }

LABEL_57:
  if (v17 >= 1 && !v19)
  {
    goto LABEL_59;
  }

LABEL_86:
  *v16 = v19;
  return result;
}

uint64_t outlined consume of Result<Data, Base64.DecodingError>?(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of Result<Data, Base64.DecodingError>(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined consume of Result<Data, Base64.DecodingError>(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

Swift::Void __swiftcall logFileIOErrno(_:at:)(Swift::Int32 _, Swift::String at)
{
  object = at._object;
  countAndFlagsBits = at._countAndFlagsBits;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!strerror(_))
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = String.init(cString:)();
  v11 = v10;
  if (!_NSOSLog())
  {
LABEL_8:
    __break(1u);
    return;
  }

  Logger.init(_:)();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v5;
    v15 = v9;
    v16 = v14;
    v17 = swift_slowAlloc();
    v18 = countAndFlagsBits;
    v19 = v17;
    v22 = v17;
    *v16 = 136315650;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, object, &v22);
    *(v16 + 12) = 1024;
    *(v16 + 14) = _;
    *(v16 + 18) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v11, &v22);

    *(v16 + 20) = v20;
    _os_log_impl(&dword_18075C000, v12, v13, "Encountered %s failure %d %s", v16, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1865D2690](v19, -1, -1);
    MEMORY[0x1865D2690](v16, -1, -1);

    (*(v6 + 8))(v8, v21);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

id closure #1 in readBytesFromFile(path:reportProgress:maxLength:options:attributesToRead:attributes:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (a1)
  {
    result = open(_:_:_:)();
    *a2 = result;
    return result;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v5 = @"NSCocoaErrorDomain";
  v6 = v5;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v5);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_21;
        }

        goto LABEL_8;
      }

      result = [(__CFString *)v6 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      String.init(utf8String:)(result);
      if (v10)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v11)
    {
      goto LABEL_9;
    }

    [(__CFString *)v6 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_21;
  }

LABEL_8:
  LOBYTE(v43) = 0;
  if (__CFStringIsCF())
  {
LABEL_9:

    goto LABEL_21;
  }

  v8 = v6;
  String.init(_nativeStorage:)();
  if (!v9 && [(__CFString *)v8 length])
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_21:
  v12 = objc_allocWithZone(NSError);
  v13 = String._bridgeToObjectiveCImpl()();

  v14 = [v12 initWithDomain:v13 code:258 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = [v14 domain];
  if (!v15)
  {
LABEL_31:
    v21 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_42;
  }

  v16 = v15;
  v17 = _objc_isTaggedPointer(v15);
  v18 = v16;
  v19 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_27;
  }

  v20 = _objc_getTaggedPointerTag(v18);
  switch(v20)
  {
    case 0:
      goto LABEL_35;
    case 0x16:
      result = [v19 UTF8String];
      if (!result)
      {
LABEL_68:
        __break(1u);
        return result;
      }

      v27 = String.init(utf8String:)(result);
      if (v28)
      {
LABEL_36:
        v21 = v27;
        v23 = v28;

        goto LABEL_41;
      }

      __break(1u);
LABEL_35:
      _CFIndirectTaggedPointerStringGetContents();
      v27 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v28)
      {
        [v19 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v21 = v43;
        v23 = v44;
        goto LABEL_41;
      }

      goto LABEL_36;
    case 2:
      MEMORY[0x1EEE9AC00](v20);
      v21 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v23 = v22;

      goto LABEL_42;
  }

LABEL_27:
  LOBYTE(v43) = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_31;
  }

  v24 = v19;
  v25 = String.init(_nativeStorage:)();
  if (v26)
  {
    v21 = v25;
    v23 = v26;

    goto LABEL_42;
  }

  if (![v24 length])
  {

    goto LABEL_31;
  }

  v21 = String.init(_cocoaString:)();
  v23 = v29;
LABEL_41:

LABEL_42:
  v30 = v6;
  v31 = v30;
  if (!isTaggedPointer)
  {
    goto LABEL_47;
  }

  v32 = _objc_getTaggedPointerTag(v30);
  if (!v32)
  {
    goto LABEL_54;
  }

  if (v32 != 22)
  {
    if (v32 == 2)
    {
      MEMORY[0x1EEE9AC00](v32);
      v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v35 = v34;

      goto LABEL_60;
    }

LABEL_47:
    if (__CFStringIsCF())
    {
      v33 = 0;

      v35 = 0xE000000000000000;
    }

    else
    {
      v36 = v31;
      v37 = String.init(_nativeStorage:)();
      if (v38)
      {
        v33 = v37;
        v35 = v38;
      }

      else if ([(__CFString *)v36 length])
      {
        v33 = String.init(_cocoaString:)();
        v35 = v41;
      }

      else
      {

        v33 = 0;
        v35 = 0xE000000000000000;
      }
    }

    goto LABEL_60;
  }

  result = [(__CFString *)v31 UTF8String];
  if (!result)
  {
    goto LABEL_67;
  }

  v39 = String.init(utf8String:)(result);
  if (v40)
  {
LABEL_55:
    v33 = v39;
    v35 = v40;

    goto LABEL_60;
  }

  __break(1u);
LABEL_54:
  _CFIndirectTaggedPointerStringGetContents();
  v39 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v40)
  {
    goto LABEL_55;
  }

  [(__CFString *)v31 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v33 = v43;
  v35 = v44;
LABEL_60:
  if (v21 == v33 && v23 == v35)
  {
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      __break(1u);
    }
  }

  return swift_willThrow();
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    result = 1;
    goto LABEL_5;
  }

  if (a1)
  {
    result = _NSFileCompressionTypeIsSafeForMapping(a1);
LABEL_5:
    *a5 = result;
    return result;
  }

  __break(1u);
  return result;
}

{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    __break(1u);
    return result;
  }

  result = closure #1 in _FileManagerImpl._fileExists(_:)(a1, v11);
  if (!v5)
  {
    v9 = v11[0];
    v10 = v11[1];
LABEL_6:
    *a5 = v9;
    a5[1] = v10;
  }

  return result;
}

uint64_t @objc static NSData._writeData(toPath:data:options:stringEncodingAttributeData:reportProgress:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, int a7)
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v13 = v12;
  v14 = a4;
  v15 = a6;
  v16 = specialized Data.init(referencing:)(v15);
  v18 = v17;

  specialized static NSData._writeData(toPath:data:options:stringEncodingAttributeData:reportProgress:)(v11, v13, v14, a5, v16, v18, a7);
  outlined consume of Data._Representation(v16, v18);

  return 1;
}

id closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(std::__fs::filesystem::path *a1, std::error_code *a2, __CFString *a3, std::__fs::filesystem::path *a4, char a5, void *a6, uint64_t *a7, __int128 *a8, std::__fs::filesystem::path *a9, uint64_t a10, uint64_t a11, int *a12)
{
  v98 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v91 = a8;
    v92 = a6;
    v20 = *&a2->__val_;
    cat = a2->__cat_;
    v90 = *&a2->__val_;
    if ((cat & 0x1000000000000000) != 0)
    {
      v12 = v13;
      v14 = a7;
      v22 = String.UTF8View._foreignCount()();
      a7 = v14;
    }

    else if ((cat & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(cat) & 0xF;
    }

    else
    {
      v22 = v20 & 0xFFFFFFFFFFFFLL;
    }

    v23 = 3 * v22;
    if ((v22 * 3) >> 64 != (3 * v22) >> 63)
    {
      __break(1u);
LABEL_98:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v84 = swift_slowAlloc();
        outlined copy of PathOrURL(a3, a4, a5 & 1);

        specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v84, v12, v90, cat, a1, a2, a3, a4, a5 & 1, v92, v88, v91, v86, v14, v87, v85);
        MEMORY[0x1865D2690](v84, -1, -1);
        outlined consume of PathOrURL(a3, a4, a5 & 1);

        if (!v89)
        {
          v35 = a3;
          v36 = a4;
          v34 = a5 & 1;
          goto LABEL_23;
        }

LABEL_22:
        v34 = a5 & 1;
        v35 = a3;
        v36 = a4;
LABEL_23:
        outlined consume of PathOrURL(v35, v36, v34);
      }

LABEL_9:
      v84 = &v83;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v26 = (&v83 - v25);
      if (String._fileSystemRepresentation(into:)(&v83 - v25, v12, v90, cat))
      {
        v82 = v85;
        v27 = a5 & 1;
        v80 = v14;
        v81 = v87;
        v79 = v86;
        v78 = v91;
        v28 = v26;
      }

      else
      {
        v82 = v85;
        v27 = a5 & 1;
        v80 = v14;
        v81 = v87;
        v79 = v86;
        v78 = v91;
        v28 = 0;
      }

      v33 = v89;
      closure #1 in closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(v28, a1, a2, a3, a4, v27, v92, v88, v78, v79, v80, v81, v82);
      if (v33)
      {
        swift_willThrow();
      }

      outlined consume of PathOrURL(a3, a4, a5 & 1);

      goto LABEL_22;
    }

    if (v23 >= -1)
    {
      v88 = a7;
      v89 = v13;
      v87 = a11;
      v12 = v23 + 1;
      v14 = a10;
      v85 = a12;
      v86 = a9;
      outlined copy of PathOrURL(a3, a4, a5 & 1);

      outlined copy of PathOrURL(a3, a4, a5 & 1);

      if (v23 < 1024)
      {
        goto LABEL_9;
      }

      goto LABEL_98;
    }

    __break(1u);
LABEL_102:
    __break(1u);
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v30 = @"NSCocoaErrorDomain";
  v31 = v30;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v30);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_35;
        }

        goto LABEL_19;
      }

      result = [(__CFString *)v31 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      String.init(utf8String:)(result);
      if (v40)
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    v95 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v41)
    {
      goto LABEL_20;
    }

    [(__CFString *)v31 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_35;
  }

LABEL_19:
  LOBYTE(v93) = 0;
  v97 = 0;
  LOBYTE(v95) = 0;
  v96 = 0;
  if (__CFStringIsCF())
  {
LABEL_20:

    goto LABEL_35;
  }

  v38 = v31;
  String.init(_nativeStorage:)();
  if (!v39 && (v97 = [(__CFString *)v38 length]) != 0)
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_35:
  v42 = objc_allocWithZone(NSError);
  v43 = String._bridgeToObjectiveCImpl()();

  v44 = [v42 initWithDomain:v43 code:514 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v45 = [v44 domain];
  if (!v45)
  {
LABEL_45:
    v51 = 0;
    v53 = 0xE000000000000000;
    goto LABEL_56;
  }

  v46 = v45;
  v47 = _objc_isTaggedPointer(v45);
  v48 = v46;
  v49 = v48;
  if ((v47 & 1) == 0)
  {
    goto LABEL_41;
  }

  v50 = _objc_getTaggedPointerTag(v48);
  switch(v50)
  {
    case 0:
      goto LABEL_49;
    case 0x16:
      result = [v49 UTF8String];
      if (!result)
      {
LABEL_105:
        __break(1u);
        return result;
      }

      v57 = String.init(utf8String:)(result);
      if (v58)
      {
LABEL_50:
        v51 = v57;
        v53 = v58;

        goto LABEL_55;
      }

      __break(1u);
LABEL_49:
      v95 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v57 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v58)
      {
        [v49 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v51 = v93;
        v53 = v94;
        goto LABEL_55;
      }

      goto LABEL_50;
    case 2:
      MEMORY[0x1EEE9AC00](v50);
      v51 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v53 = v52;

      goto LABEL_56;
  }

LABEL_41:
  LOBYTE(v93) = 0;
  v97 = 0;
  LOBYTE(v95) = 0;
  v96 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_45;
  }

  v54 = v49;
  v55 = String.init(_nativeStorage:)();
  if (v56)
  {
    v51 = v55;
    v53 = v56;

    goto LABEL_56;
  }

  v97 = [v54 length];
  if (!v97)
  {

    goto LABEL_45;
  }

  v51 = String.init(_cocoaString:)();
  v53 = v59;
LABEL_55:

LABEL_56:
  v60 = v31;
  v61 = v60;
  if (!isTaggedPointer)
  {
    goto LABEL_61;
  }

  v62 = _objc_getTaggedPointerTag(v60);
  switch(v62)
  {
    case 0:
      goto LABEL_73;
    case 0x16:
      result = [(__CFString *)v61 UTF8String];
      if (result)
      {
        v70 = String.init(utf8String:)(result);
        if (v71)
        {
          goto LABEL_74;
        }

        __break(1u);
LABEL_73:
        v95 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v70 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v71)
        {
          [(__CFString *)v61 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v63 = v93;
          v65 = v94;
          goto LABEL_91;
        }

LABEL_74:
        v63 = v70;
        v65 = v71;

        goto LABEL_91;
      }

      goto LABEL_104;
    case 2:
      MEMORY[0x1EEE9AC00](v62);
      v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v65 = v64;

      goto LABEL_91;
  }

LABEL_61:
  LOBYTE(v93) = 0;
  v97 = 0;
  LOBYTE(v95) = 0;
  v96 = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v67 = v61;
    v68 = String.init(_nativeStorage:)();
    if (v69)
    {
      v63 = v68;
      v65 = v69;

      goto LABEL_91;
    }

    v97 = [(__CFString *)v67 length];
    if (v97)
    {
      goto LABEL_89;
    }

LABEL_69:
    v63 = 0;
    v65 = 0xE000000000000000;
    goto LABEL_91;
  }

  if (!v97)
  {

    goto LABEL_69;
  }

  if (v96 == 1)
  {
    if (v93)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v72 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_90;
  }

  if (v95)
  {
    if (v93 != 1)
    {
      IsCF = [(__CFString *)v61 lengthOfBytesUsingEncoding:4];
    }

    MEMORY[0x1EEE9AC00](IsCF);
    v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v65 = v75;
    v76 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v76 = v74 & 0xFFFFFFFFFFFFLL;
    }

    if (v76)
    {
      v63 = v74;

      goto LABEL_91;
    }
  }

LABEL_89:
  v72 = String.init(_cocoaString:)();
LABEL_90:
  v63 = v72;
  v65 = v73;
LABEL_91:
  if (v51 == v63 && v53 == v65)
  {
  }

  else
  {
    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v77 & 1) == 0)
    {
      goto LABEL_102;
    }
  }

  return swift_willThrow();
}