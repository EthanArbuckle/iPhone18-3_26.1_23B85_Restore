uint64_t assignWithTake for MatchedGeometryEffect2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);
  *(v10 + 24) = *(v11 + 24);
  v12 = *(*(a3 + 24) - 8);
  v13 = *(v12 + 80);
  v14 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 25;
  (*(v12 + 40))((v14 + a1) & ~v13, (v14 + a2) & ~v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for MatchedGeometryEffect2(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0xFE)
  {
    v6 = 254;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 25;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v15 = (v13 & ~v11) + *(*(v7 - 8) + 64);
  v16 = 8 * v15;
  if (v15 > 3)
  {
    goto LABEL_10;
  }

  v18 = ((v14 + ~(-1 << v16)) >> v16) + 1;
  if (HIWORD(v18))
  {
    v17 = *(a1 + v15);
    if (v17)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v18 <= 0xFF)
    {
      if (v18 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

LABEL_17:
      v19 = (v17 - 1) << v16;
      if (v15 > 3)
      {
        v19 = 0;
      }

      if (v15)
      {
        if (v15 <= 3)
        {
          v20 = v15;
        }

        else
        {
          v20 = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v21 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v21 = *a1;
          }
        }

        else if (v20 == 1)
        {
          v21 = *a1;
        }

        else
        {
          v21 = *a1;
        }
      }

      else
      {
        v21 = 0;
      }

      return v12 + (v21 | v19) + 1;
    }

    v17 = *(a1 + v15);
    if (*(a1 + v15))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (v6 < v9)
  {
    return (*(v8 + 48))((a1 + v13) & ~v11, v9, v7);
  }

  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v23 = *(((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}

void storeEnumTagSinglePayload for MatchedGeometryEffect2(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
  v16 = ((v15 + v13) & ~v13) + *(*(v9 - 8) + 64);
  v17 = a3 >= v14;
  v18 = a3 - v14;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v16 < 4)
    {
      v21 = (v20 >> (8 * v16)) + 1;
      if (v16)
      {
        v24 = v20 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_53:
              if (v19 == 2)
              {
                *&a1[v16] = v21;
              }

              else
              {
                *&a1[v16] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v19)
    {
      a1[v16] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v19)
  {
    a1[v16] = 0;
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
  if (v8 >= v11)
  {
    if (v8 >= a2)
    {
      if (v7 < 0xFE)
      {
        v28 = ((&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
          *(v28 + 24) = 0;
          *v28 = a2 - 255;
        }

        else
        {
          *(v28 + 24) = a2 + 1;
        }
      }

      else
      {
        v27 = *(v6 + 56);

        v27(a1);
      }
    }

    else
    {
      v26 = ~v8 + a2;
      bzero(a1, ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25);
      if (v15 <= 3)
      {
        *a1 = v26;
      }

      else
      {
        *a1 = v26;
      }
    }
  }

  else
  {
    v25 = *(v10 + 56);

    v25(&a1[v15 + v13] & ~v13);
  }
}

uint64_t protocol witness for static _AttributeBody._destroySelf(_:) in conformance SharedFrame(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v4 = *(a1 + 24);
  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    v5 = result;
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_5:
      if (v5 < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x193AC03C0](i, v4);
        }

        else
        {
          v7 = *(v4 + 8 * i + 32);
        }

        (*(*v7 + 96))();
      }
    }
  }

  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t MatchedSharedFrame.destroy()()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    result = MatchedGeometryScope.releaseFrame(index:owner:)(*(v0 + 40), *(v0 + 52));
    *(v0 + 40) = 0;
    *(v0 + 48) = 1;
  }

  return result;
}

uint64_t static MatchedSharedFrame.willRemove(attribute:)()
{
  AGGraphGetAttributeInfo();
  v1 = v0;
  v2 = type metadata accessor for MatchedSharedFrame();
  if ((*(v1 + 48) & 1) == 0)
  {
    v2 = MatchedGeometryScope.releaseFrame(index:owner:)(*(v1 + 40), *(v1 + 52));
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
  }

  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  return AGGraphMutateAttribute();
}

uint64_t MatchedDisplayList.sharedFrame.getter(uint64_t a1)
{
  type metadata accessor for (ViewFrame?, AnyOptionalAttribute)();
  Value = AGGraphGetValue();
  v3 = *(Value + 48);
  v4 = *(Value + 52);
  v5 = *(Value + 16);
  *a1 = *Value;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(Value + 32);
  *(a1 + 48) = v3;
  return v4;
}

uint64_t MatchedDisplayList.transform.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
}

uint64_t MatchedDisplayList.clipShape.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(a1 + 16);
  if (v5 == *MEMORY[0x1E698D3F8])
  {
    v7 = *(v6 - 8);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v12 = *(v6 - 8);
    (*(v12 + 16))(a2, Value, v6);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a2, v8, 1, v6);
}

uint64_t assignWithCopy for MatchedSharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  v4 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

uint64_t assignWithTake for MatchedSharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

uint64_t getEnumTagSinglePayload for MatchedGeometryScope.Frame(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MatchedGeometryScope.Frame(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MatchedDisplayList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 37))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MatchedDisplayList(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 37) = v3;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MatchedFrame(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MatchedFrame and conformance MatchedFrame();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey()
{
  result = lazy protocol witness table cache variable for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey;
  if (!lazy protocol witness table cache variable for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey;
  if (!lazy protocol witness table cache variable for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey);
  }

  return result;
}

uint64_t assignWithCopy for SharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for SharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for SharedFrame(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t storeEnumTagSinglePayload for SharedFrame(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SharedFrame(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SharedFrame and conformance SharedFrame();
  *(a1 + 8) = result;
  return result;
}

unint64_t Color.ResolvedHDR.init(platformColor:)(void *a1)
{
  result = specialized Color.Resolved.init(platformColor:)(a1);
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t static PlatformColorDefinition.resolvedHDRColor(_:environment:)(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  result = (*(v2 + 96))(a1, &v5);
  if (v4)
  {
    return 0;
  }

  return result;
}

id specialized PlatformColorProvider.staticColor.getter(id result)
{
  v1 = result;
  if (one-time initialization token for safeDefinition != -1)
  {
    result = swift_once();
  }

  if (static UIKitPlatformColorProvider.safeDefinition)
  {
    v2 = *(static UIKitPlatformColorProvider.safeDefinition + 10);
    v2((&v3 + 1));
    if (CoreColorDependsOnEnvironment(v1, SBYTE1(v3)))
    {
      return 0;
    }

    else
    {
      v2(&v3);
      return CGColorForCoreColor(v3, v1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized PlatformColorProvider.staticColor.getter(void *a1)
{
  v2 = swift_beginAccess();
  v3 = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    v2 = swift_beginAccess();
    v3 = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      result = CoreColorGetKitColorClass(1);
      if (!result || (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), (result = swift_dynamicCastMetatype()) == 0) || (result = [swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition]) == 0)
      {
        __break(1u);
        goto LABEL_18;
      }

      type metadata accessor for PlatformColorDefinition();
      v2 = swift_dynamicCastMetatypeUnconditional();
      v3 = v2;
      static PlatformColorDefinition.appKit = v2;
    }
  }

  (v3)[10](v6 + 1, v2);
  if (CoreColorDependsOnEnvironment(a1, SBYTE1(v6[0])))
  {
    return 0;
  }

  v5 = static PlatformColorDefinition.appKitInternal;
  if (static PlatformColorDefinition.appKitInternal)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v5 = static PlatformColorDefinition.appKit;
  if (static PlatformColorDefinition.appKit)
  {
    goto LABEL_15;
  }

  result = CoreColorGetKitColorClass(1);
  if (!result || (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), (result = swift_dynamicCastMetatype()) == 0) || (result = [swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition]) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  type metadata accessor for PlatformColorDefinition();
  v5 = swift_dynamicCastMetatypeUnconditional();
  static PlatformColorDefinition.appKit = v5;
LABEL_15:
  (*(v5 + 10))(v6);
  return CGColorForCoreColor(LOBYTE(v6[0]), a1);
}

void *specialized static PlatformColorProvider.deserialize(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (one-time initialization token for safeDefinition != -1)
  {
    swift_once();
  }

  if (static UIKitPlatformColorProvider.safeDefinition)
  {
    v5 = (*(static UIKitPlatformColorProvider.safeDefinition + 11))();
    result = static NSSecureCoding.deserialize(from:)(a1, v5);
    if (!v2)
    {
      *a2 = result;
    }
  }

  else
  {
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B00], v7);
    return swift_willThrow();
  }

  return result;
}

{
  v5 = swift_beginAccess();
  v6 = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    v5 = swift_beginAccess();
    v6 = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      if (!CoreColorGetKitColorClass(1) || (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), !swift_dynamicCastMetatype()) || ![swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        dispatch thunk of Decoder.codingPath.getter();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6B00], v9);
        return swift_willThrow();
      }

      type metadata accessor for PlatformColorDefinition();
      v5 = swift_dynamicCastMetatypeUnconditional();
      v6 = v5;
      static PlatformColorDefinition.appKit = v5;
    }
  }

  v7 = v6[11](v5);
  result = static NSSecureCoding.deserialize(from:)(a1, v7);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id one-time initialization function for safeDefinition()
{
  result = swift_beginAccess();
  v1 = static PlatformColorDefinition.uiKitInternal;
  if (!static PlatformColorDefinition.uiKitInternal)
  {
    result = swift_beginAccess();
    v1 = static PlatformColorDefinition.uiKit;
    if (!static PlatformColorDefinition.uiKit)
    {
      result = CoreColorGetKitColorClass(0);
      if (result && (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), (result = swift_dynamicCastMetatype()) != 0))
      {
        result = [swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition];
        v1 = result;
        if (result)
        {
          type metadata accessor for PlatformColorDefinition();
          v1 = swift_dynamicCastMetatypeUnconditional();
          result = swift_beginAccess();
          static PlatformColorDefinition.uiKit = v1;
        }
      }

      else
      {
        v1 = 0;
      }
    }
  }

  static UIKitPlatformColorProvider.safeDefinition = v1;
  return result;
}

void *static PlatformColorDefinition.for (system:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    swift_beginAccess();
    result = static PlatformColorDefinition.appKitInternal;
    if (static PlatformColorDefinition.appKitInternal)
    {
      return result;
    }

    v2 = &static PlatformColorDefinition.appKit;
  }

  else
  {
    swift_beginAccess();
    result = static PlatformColorDefinition.uiKitInternal;
    if (static PlatformColorDefinition.uiKitInternal)
    {
      return result;
    }

    v2 = &static PlatformColorDefinition.uiKit;
  }

  swift_beginAccess();
  return *v2;
}

id static PlatformColorDefinition.for (_:)()
{
  type metadata accessor for NSObject();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    result = [swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition];
    if (result)
    {
      type metadata accessor for PlatformColorDefinition();
      return swift_dynamicCastMetatypeUnconditional();
    }
  }

  return result;
}

uint64_t static PlatformColorDefinition.uiKit.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static PlatformColorDefinition.uiKit = a1;
  return result;
}

void *static UIKitPlatformColorProvider.safeDefinition.getter()
{
  if (one-time initialization token for safeDefinition != -1)
  {
    swift_once();
  }

  return static UIKitPlatformColorProvider.safeDefinition;
}

uint64_t static PlatformColorDefinition.appKit.setter(void *a1)
{
  result = swift_beginAccess();
  static PlatformColorDefinition.appKit = a1;
  return result;
}

Swift::Int UIKitPlatformColorProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = NSObject.hashValue.getter();
  MEMORY[0x193AC11A0](v0);
  return Hasher._finalize()();
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance AppKitPlatformColorProvider@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PlatformColorProvider.resolveHDR(in:)(*a1, a1[1], *v2, &v5);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIKitPlatformColorProvider()
{
  Hasher.init(_seed:)();
  v0 = NSObject.hashValue.getter();
  MEMORY[0x193AC11A0](v0);
  return Hasher._finalize()();
}

uint64_t static PlatformColorDefinition.uiKitInternal.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static PlatformColorDefinition.uiKitInternal = a1;
  return result;
}

uint64_t static PlatformColorDefinition.appKitInternal.setter(void *a1)
{
  result = swift_beginAccess();
  static PlatformColorDefinition.appKitInternal = a1;
  return result;
}

uint64_t static PlatformColorDefinition.setDefinition(_:system:)(uint64_t result, _BYTE *a2)
{
  v2 = result;
  if (*a2 == 1)
  {
    v3 = &static PlatformColorDefinition.appKit;
  }

  else
  {
    if (*a2)
    {
      return result;
    }

    v3 = &static PlatformColorDefinition.uiKit;
  }

  result = swift_beginAccess();
  if (!*v3)
  {
    *v3 = v2;
  }

  return result;
}

uint64_t static PlatformColorDefinition.setInternalDefinition(_:system:)(uint64_t result, _BYTE *a2)
{
  v2 = result;
  if (*a2 == 1)
  {
    v3 = &static PlatformColorDefinition.appKitInternal;
  }

  else
  {
    if (*a2)
    {
      return result;
    }

    v3 = &static PlatformColorDefinition.uiKitInternal;
  }

  result = swift_beginAccess();
  if (!*v3)
  {
    *v3 = v2;
  }

  return result;
}

id specialized static AppKitPlatformColorProvider.safeDefinition.getter()
{
  swift_beginAccess();
  result = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    swift_beginAccess();
    result = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      result = CoreColorGetKitColorClass(1);
      if (result)
      {
        swift_getObjCClassMetadata();
        type metadata accessor for NSObject();
        result = swift_dynamicCastMetatype();
        if (result)
        {
          result = [swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition];
          if (result)
          {
            type metadata accessor for PlatformColorDefinition();
            result = swift_dynamicCastMetatypeUnconditional();
            static PlatformColorDefinition.appKit = result;
          }
        }
      }
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AppKitPlatformColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider()
{
  result = lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider;
  if (!lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider;
  if (!lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider;
  if (!lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider);
  }

  return result;
}

void specialized GradientLayer.GradientGeometry.init(size:function:bounds:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>)
{
  v8 = a4;
  v9 = a3;
  v12 = *a1;
  v11 = *(a1 + 8);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v15 = *(a1 + 32);
  if (v15 <= 1)
  {
    v24 = *MEMORY[0x1E6979DA0];
    if (*(a1 + 32))
    {
      v25 = *a1;
      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v28 = *(a1 + 24);
    }

    else
    {
      v25 = v12 * a7 + a5;
      v26 = v11 * a8 + a6;
      v27 = v14 * a7 + a5;
      v28 = v13 * a8 + a6;
    }

    v16 = makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(v25, v26, v27, v28, v9, v8);
    v17 = v39;
    v21 = v40;
    v22 = v41;
    v23 = v24;
    goto LABEL_17;
  }

  if (v15 == 2)
  {
    if (v14 > v13)
    {
      v29 = *(a1 + 16);
    }

    else
    {
      v29 = *(a1 + 24);
    }

    v34 = *MEMORY[0x1E6979DB0];
    v45.origin.x = a5;
    v45.origin.y = a6;
    v45.size.width = a7;
    v45.size.height = a8;
    v42 = v29 / CGRectGetWidth(v45);
    v46.origin.x = a5;
    v46.origin.y = a6;
    v46.size.width = a7;
    v46.size.height = a8;
    v35 = v29 / CGRectGetHeight(v46);
    v16 = (v12 * a7 + a5) / a3;
    v17 = (v11 * a8 + a6) / a4;
    v36 = (v12 - v42) * a7 + a5;
    v9 = a3;
    v8 = a4;
    v37 = (v11 - v35) * a8 + a6;
    v21 = v36 / a3;
    v22 = v37 / a4;
  }

  else
  {
    if (v15 == 3)
    {
      v16 = (v12 * a7 + a5) / a3;
      v17 = (v11 * a8 + a6) / a4;
      if (v14 > v13)
      {
        v18 = *(a1 + 16);
      }

      else
      {
        v18 = *(a1 + 24);
      }

      v19 = v12 - v18;
      v20 = (v11 - v18) * a8 + a6;
      v21 = (v19 * a7 + a5) / v9;
      v22 = v20 / v8;
      v23 = *MEMORY[0x1E6979DB0];
LABEL_17:
      v34 = v23;
      goto LABEL_18;
    }

    v16 = (v12 * a7 + a5) / a3;
    v17 = (v11 * a8 + a6) / a4;
    v34 = *MEMORY[0x1E6979DA8];
    v38 = __sincos_stret(v14);
    v21 = v16 + v38.__cosval;
    v22 = v17 + v38.__sinval;
  }

LABEL_18:
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v34;
}

uint64_t initializeWithCopy for GradientLayer.GradientGeometry(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  v5 = v4;
  return a1;
}

void *assignWithCopy for GradientLayer.GradientGeometry(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  v3 = a2[6];
  v4 = a1[6];
  a1[6] = v3;
  v5 = v3;

  return a1;
}

uint64_t assignWithTake for GradientLayer.GradientGeometry(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AlignedTimelineSchedule.Entries(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = *(a3 + 24);
    *(a1 + v11) = *(a2 + v11);
    v13 = type metadata accessor for DateComponents();
    (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
  }

  return a1;
}

uint64_t destroy for AlignedTimelineSchedule.Entries(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 24);
  v7 = type metadata accessor for DateComponents();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *initializeWithCopy for AlignedTimelineSchedule.Entries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = *(a3 + 24);
  *&a1[v9] = *&a2[v9];
  v11 = type metadata accessor for DateComponents();
  (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
  return a1;
}

char *assignWithCopy for AlignedTimelineSchedule.Entries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v12 = *(a3 + 24);
  v13 = type metadata accessor for DateComponents();
  (*(*(v13 - 8) + 24))(&a1[v12], &a2[v12], v13);
  return a1;
}

char *initializeWithTake for AlignedTimelineSchedule.Entries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = *(a3 + 24);
  *&a1[v9] = *&a2[v9];
  v11 = type metadata accessor for DateComponents();
  (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
  return a1;
}

char *assignWithTake for AlignedTimelineSchedule.Entries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = *(a3 + 24);
  *&a1[v12] = *&a2[v12];
  v14 = type metadata accessor for DateComponents();
  (*(*(v14 - 8) + 40))(&a1[v13], &a2[v13], v14);
  return a1;
}

uint64_t type metadata accessor for AlignedTimelineSchedule.Entries()
{
  result = type metadata singleton initialization cache for AlignedTimelineSchedule.Entries;
  if (!type metadata singleton initialization cache for AlignedTimelineSchedule.Entries)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AlignedTimelineSchedule.Entries()
{
  _s10Foundation4DateVSgMaTm_1(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DateComponents();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t AlignedTimelineSchedule.Entries.init(startDate:alignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v54 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v50 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Calendar.SearchDirection();
  v49 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Calendar.MatchingPolicy();
  v46 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v41 - v11;
  v12 = type metadata accessor for Calendar();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v55 = v16;
  v18(a3, 1, 1);
  *(a3 + *(type metadata accessor for AlignedTimelineSchedule.Entries() + 20)) = a2;
  NSCalendarUnit.smallerUnits.getter(a2);
  DateComponents.init(zeroingUnits:)(v19);
  static Calendar.current.getter();
  v20 = Calendar.date(_:matchesComponents:)();
  v21 = *(v13 + 8);
  v47 = v12;
  v45 = v13 + 8;
  v21(v15, v12);
  if (v20)
  {
    outlined destroy of Date?(a3);
    v22 = v55;
    (*(v17 + 32))(a3, v59, v55);
    return (v18)(a3, 0, 1, v22);
  }

  else
  {
    v43 = v18;
    v44 = v17 + 56;
    static Calendar.current.getter();
    v24 = v46;
    (*(v46 + 104))(v56, *MEMORY[0x1E69698D0], v57);
    v26 = v48;
    v25 = v49;
    (*(v49 + 104))(v48, *MEMORY[0x1E69699A0], v58);
    v27 = *MEMORY[0x1E69699C8];
    v28 = v50;
    v29 = *(v50 + 104);
    v41 = v21;
    v42 = a3;
    v30 = v52;
    v31 = v54;
    v29(v52, v27, v54);
    v32 = v51;
    v33 = v56;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v28 + 8))(v30, v31);
    (*(v25 + 8))(v26, v58);
    (*(v24 + 8))(v33, v57);
    v41(v15, v47);
    v34 = *(v17 + 48);
    v35 = v55;
    v36 = v34(v32, 1, v55);
    v37 = v42;
    if (v36 == 1)
    {
      v38 = v53;
      (*(v17 + 32))(v53, v59, v35);
      v39 = v34(v32, 1, v35);
      v40 = v43;
      if (v39 != 1)
      {
        outlined destroy of Date?(v32);
      }
    }

    else
    {
      (*(v17 + 8))(v59, v35);
      v38 = v53;
      (*(v17 + 32))(v53, v32, v35);
      v40 = v43;
    }

    (v40)(v38, 0, 1, v35);
    return outlined assign with take of Date?(v38, v37);
  }
}

void NSCalendarUnit.smallerUnits.getter(uint64_t a1)
{
  if ((qword_1F0043CF8 & ~a1) == 0)
  {
    goto LABEL_9;
  }

  v1 = qword_1F0043D00;
  if ((qword_1F0043D00 & ~a1) != 0)
  {
    v1 = qword_1F0043D08;
    if ((qword_1F0043D08 & ~a1) != 0)
    {
      v1 = qword_1F0043D10;
      if ((qword_1F0043D10 & ~a1) != 0)
      {
        v1 = qword_1F0043D18;
        if ((qword_1F0043D18 & ~a1) != 0)
        {
          v1 = qword_1F0043D20;
          if ((qword_1F0043D20 & ~a1) != 0)
          {
            v1 = qword_1F0043D28;
            if ((qword_1F0043D28 & ~a1) != 0)
            {
              return;
            }
          }
        }
      }
    }
  }

  if (qword_1F0043CF8 != v1)
  {
    if (qword_1F0043D00 == v1)
    {
      v2 = 2;
    }

    else if (qword_1F0043D08 == v1)
    {
      v2 = 3;
    }

    else if (qword_1F0043D10 == v1)
    {
      v2 = 4;
    }

    else if (qword_1F0043D18 == v1)
    {
      v2 = 5;
    }

    else if (qword_1F0043D20 == v1)
    {
      v2 = 6;
    }

    else
    {
      if (qword_1F0043D28 != v1)
      {
        return;
      }

      v2 = 7;
    }
  }

  else
  {
LABEL_9:
    v2 = 1;
  }

  v3 = swift_unknownObjectRetain_n();

  specialized _copyCollectionToContiguousArray<A>(_:)(v3, v3 + 32, v2, 0xFuLL);
}

uint64_t DateComponents.init(zeroingUnits:)(uint64_t a1)
{
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Calendar();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for TimeZone();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v10 = 0;
  v11 = *(a1 + 16);
  while (v11 != v10)
  {
    v12 = a1 + 8 * v10++;
    if (*(v12 + 32) == 4)
    {
      DateComponents.year.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v13 = 0;
  while (v11 != v13)
  {
    v14 = a1 + 8 * v13++;
    if (*(v14 + 32) == 8)
    {
      DateComponents.month.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v15 = 0;
  while (v11 != v15)
  {
    v16 = a1 + 8 * v15++;
    if (*(v16 + 32) == 16)
    {
      DateComponents.day.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v17 = 0;
  while (v11 != v17)
  {
    v18 = a1 + 8 * v17++;
    if (*(v18 + 32) == 32)
    {
      DateComponents.hour.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v19 = 0;
  while (v11 != v19)
  {
    v20 = a1 + 8 * v19++;
    if (*(v20 + 32) == 64)
    {
      DateComponents.minute.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v21 = 0;
  while (v11 != v21)
  {
    v22 = a1 + 8 * v21++;
    if (*(v22 + 32) == 128)
    {
      DateComponents.second.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v23 = 32;
  while (v11)
  {
    v24 = *(a1 + v23);
    v23 += 8;
    --v11;
    if (v24 == 0x8000)
    {

      return DateComponents.nanosecond.setter();
    }
  }
}

uint64_t AlignedTimelineSchedule.Entries.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = type metadata accessor for Calendar.SearchDirection();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar.MatchingPolicy();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Calendar();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v56 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v45 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v55 = v2;
  outlined init with copy of Date?(v2, v16);
  v46 = *(v18 + 48);
  if (v46(v16, 1, v17) == 1)
  {
    outlined destroy of Date?(v16);
    return (*(v18 + 56))(a1, 1, 1, v17);
  }

  else
  {
    v43 = v18;
    v44 = a1;
    v40 = *(v18 + 32);
    v41 = v18 + 32;
    v40(v22, v16, v17);
    v38 = v11;
    static Calendar.current.getter();
    v24 = type metadata accessor for AlignedTimelineSchedule.Entries();
    v39 = v6;
    v42 = *(v24 + 24);
    v25 = v9;
    (*(v7 + 104))(v9, *MEMORY[0x1E69698D0], v6);
    v26 = v49;
    v27 = v47;
    (*(v49 + 104))(v47, *MEMORY[0x1E69699C8], v54);
    v28 = v51;
    v29 = v52;
    v30 = v53;
    (*(v51 + 104))(v52, *MEMORY[0x1E6969998], v53);
    v42 = v22;
    v31 = v38;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v28 + 8))(v29, v30);
    (*(v26 + 8))(v27, v54);
    (*(v7 + 8))(v25, v39);
    (*(v48 + 8))(v31, v50);
    if (v46(v56, 1, v17) == 1)
    {
      outlined destroy of Date?(v56);
      v32 = v55;
      outlined destroy of Date?(v55);
      v33 = 1;
      v34 = v40;
    }

    else
    {
      v35 = v45;
      v34 = v40;
      v40(v45, v56, v17);
      v32 = v55;
      outlined destroy of Date?(v55);
      v34(v32, v35, v17);
      v33 = 0;
    }

    v36 = *(v43 + 56);
    v36(v32, v33, 1, v17);
    v37 = v44;
    v34(v44, v42, v17);
    return (v36)(v37, 0, 1, v17);
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AlignedTimelineSchedule.Entries()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of AlignedTimelineSchedule.Entries(v0);
  return v1;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance AlignedTimelineSchedule@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  (*(v10 + 16))(v8, a1, v6);
  return AlignedTimelineSchedule.Entries.init(startDate:alignment:)(v8, v9, a2);
}

uint64_t outlined destroy of AlignedTimelineSchedule.Entries(uint64_t a1)
{
  v2 = type metadata accessor for AlignedTimelineSchedule.Entries();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of AlignedTimelineSchedule.Entries(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlignedTimelineSchedule.Entries();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlignedTimelineSchedule.Entries();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CollectionChanges.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CollectionChanges.Element();
  result = Array.init()();
  *a1 = result;
  return result;
}

uint64_t CollectionChanges.init<A, B>(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CollectionChanges.Element();
  *a7 = Array.init()();
  v13 = type metadata accessor for CollectionChanges();
  CollectionChanges.formChanges<A, B>(from:to:)(a1, a2, v13, a3, a4, a5, a6, a8);
  (*(*(a4 - 8) + 8))(a2, a4);
  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t CollectionChanges.removals.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v12 = 0;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = type metadata accessor for Range();
  v10 = a1[5];

  return CollectionChanges.Projection.init(kind:changes:)(&v12, v5, v6, v7, v9, v8, v10, a2);
}

uint64_t CollectionChanges.insertions.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v12 = 1;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[5];
  v9 = type metadata accessor for Range();
  v10 = a1[4];

  return CollectionChanges.Projection.init(kind:changes:)(&v12, v5, v6, v7, v9, v10, v8, a2);
}

uint64_t CollectionChanges.matches.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v12 = 2;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  type metadata accessor for Range();
  v9 = a1[5];
  type metadata accessor for Range();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return CollectionChanges.Projection.init(kind:changes:)(&v12, v5, v6, v7, TupleTypeMetadata2, v8, v9, a2);
}

Swift::Int CollectionChanges.Element.Kind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CollectionChanges<A, B>.Element.Kind()
{
  Hasher.init(_seed:)();
  CollectionChanges.Element.Kind.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int __swiftcall CollectionChanges.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall CollectionChanges.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance CollectionChanges<A, B>@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance CollectionChanges<A, B>(void *result)
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

uint64_t protocol witness for Collection.endIndex.getter in conformance CollectionChanges<A, B>@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionChanges.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CollectionChanges<A, B>(void *a1, uint64_t *a2, uint64_t a3))()
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
  v6[4] = CollectionChanges.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>;
}

void (*CollectionChanges.subscript.read(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 32);
  *v7 = *(a3 + 16);
  v7[1] = v9;
  v10 = type metadata accessor for CollectionChanges.Element();
  v8[5] = v10;
  v11 = *(v10 - 8);
  v8[6] = v11;
  if (v6)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v8[4] = *v3;
  v8[7] = v12;
  CollectionChanges.subscript.getter();
  return CollectionChanges.subscript.read;
}

void CollectionChanges.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  (*(*(*a1 + 48) + 8))(v2, *(*a1 + 40));
  free(v2);

  free(v1);
}

uint64_t protocol witness for Collection.indices.getter in conformance CollectionChanges<A, B>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

void *protocol witness for Collection.index(after:) in conformance CollectionChanges<A, B>@<X0>(void *result@<X0>, void *a2@<X8>)
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

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CollectionChanges<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance CollectionChanges<A, B>()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t CollectionChanges.description.getter()
{

  type metadata accessor for CollectionChanges.Element();
  swift_getWitnessTable();
  Array.init<A>(_:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();

  return v0;
}

Swift::Int __swiftcall CollectionChanges.Projection.index(before:)(Swift::Int before)
{
  if (__OFSUB__(before, 1))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for CollectionChanges.Element();
    type metadata accessor for Array();
    v1 = MEMORY[0x1E69E6ED0];
    type metadata accessor for PartialRangeThrough<Int>(0, &lazy cache variable for type metadata for PartialRangeThrough<Int>, MEMORY[0x1E69E6ED0]);
    swift_getWitnessTable();
    lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>, &lazy cache variable for type metadata for PartialRangeThrough<Int>, v1);
    v2 = MutableCollection.subscript.getter();
    MEMORY[0x1EEE9AC00](v2);
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    BidirectionalCollection.lastIndex(where:)();
    swift_unknownObjectRelease();
    if ((v6 & 1) == 0)
    {
      return v5;
    }
  }

  _StringGuts.grow(_:)(23);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v4);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall CollectionChanges.Projection.index(after:)(Swift::Int after)
{
  if (__OFADD__(after, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    if (after + 1 >= v2)
    {
      return v2;
    }

    type metadata accessor for CollectionChanges.Element();
    type metadata accessor for Array();
    v3 = MEMORY[0x1E69E6D08];
    type metadata accessor for PartialRangeThrough<Int>(0, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6D08]);
    swift_getWitnessTable();
    lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>, &lazy cache variable for type metadata for PartialRangeFrom<Int>, v3);
    v4 = MutableCollection.subscript.getter();
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection.firstIndex(where:)();
    swift_unknownObjectRelease();
    if ((v8 & 1) == 0)
    {
      return v7;
    }
  }

  _StringGuts.grow(_:)(23);

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v6);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CollectionChanges.Projection.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v65 = a3;
  v4 = a2[2];
  v5 = a2[5];
  v6 = type metadata accessor for Range();
  v7 = a2[3];
  v8 = a2[6];
  v9 = type metadata accessor for Range();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v57 = &v53 - v10;
  v59 = v9;
  v60 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v64 = a2[4];
  v16 = type metadata accessor for Optional();
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  v61 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v53 - v29;
  *&v31 = v4;
  *(&v31 + 1) = v7;
  *&v32 = v5;
  *(&v32 + 1) = v8;
  v67 = v31;
  v68 = v32;
  v33 = type metadata accessor for CollectionChanges.Element();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v53 - v34;
  Array.subscript.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v60 + 32))(v15, v35, v59);
      v37 = v64;
      v38 = swift_dynamicCast();
      v39 = *(*(v37 - 8) + 56);
      if (v38)
      {
        v40 = *(v37 - 8);
        v39(v20, 0, 1, v37);
        v23 = v20;
        return (*(v40 + 32))(v65, v23, v37);
      }

      v23 = v20;
      goto LABEL_12;
    }

    v41 = TupleTypeMetadata2;
    v42 = *(TupleTypeMetadata2 + 48);
    v43 = *(v24 + 32);
    v44 = v61;
    v43(v27, v35, v61);
    v45 = *(v60 + 32);
    v46 = &v35[v42];
    v47 = v55;
    v48 = v59;
    v45(v55, v46, v59);
    v62 = *(v41 + 48);
    v49 = v57;
    v43(v57, v27, v44);
    v45(&v49[v62], v47, v48);
    v23 = v56;
  }

  else
  {
    (*(v24 + 32))(v30, v35, v61);
  }

  v37 = v64;
  v50 = swift_dynamicCast();
  v39 = *(*(v37 - 8) + 56);
  if (v50)
  {
    v40 = *(v37 - 8);
    v39(v23, 0, 1, v37);
    return (*(v40 + 32))(v65, v23, v37);
  }

LABEL_12:
  v39(v23, 1, 1, v64);
  (*(v53 + 8))(v23, v54);
  *&v67 = 0;
  *(&v67 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  *&v67 = 0x2064696C61766E69;
  *(&v67 + 1) = 0xEF203A7865646E69;
  v66 = v63;
  v52 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v52);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.index(before:) in conformance CollectionChanges<A, B>.Projection<A1>@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = CollectionChanges.Projection.index(before:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.formIndex(before:) in conformance CollectionChanges<A, B>.Projection<A1>(Swift::Int *a1)
{
  result = CollectionChanges.Projection.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance CollectionChanges<A, B>.Projection<A1>@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionChanges.Projection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance CollectionChanges<A, B>.Projection<A1>@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionChanges.Projection.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CollectionChanges<A, B>.Projection<A1>(uint64_t **a1, uint64_t *a2, void *a3))()
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
  v6[4] = CollectionChanges.Projection.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance CollectionOfTwo<A>;
}

void (*CollectionChanges.Projection.subscript.read(uint64_t *a1, uint64_t a2, void *a3))(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = a3[4];
  *(v8 + 32) = v10;
  v11 = *(v10 - 8);
  *(v8 + 40) = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  *(v9 + 48) = v13;
  v14 = *(v3 + 8);
  *v9 = *v3;
  *(v9 + 8) = v14;
  *(v9 + 16) = *(v3 + 16);
  CollectionChanges.Projection.subscript.getter(a2, a3, v13);
  return CollectionChanges.Projection.subscript.read;
}

void CollectionChanges.Projection.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  (*(*(*a1 + 40) + 8))(v2, *(*a1 + 32));
  free(v2);

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance CollectionChanges<A, B>.Projection<A1>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance CollectionChanges<A, B>.Projection<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE68B98](a1, a2, a3, a4, WitnessTable);
}

void protocol witness for Collection.distance(from:to:) in conformance CollectionChanges<A, B>.Projection<A1>()
{
  swift_getWitnessTable();

  JUMPOUT(0x193ABE9B0);
}

Swift::Int protocol witness for Collection.index(after:) in conformance CollectionChanges<A, B>.Projection<A1>@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = CollectionChanges.Projection.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Collection.formIndex(after:) in conformance CollectionChanges<A, B>.Projection<A1>(Swift::Int *a1)
{
  result = CollectionChanges.Projection.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CollectionChanges<A, B>.Projection<A1>@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 16);
  result = CollectionChanges.Projection.startIndex.getter();
  *(a1 + 32) = result;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CollectionChanges<A, B>.Projection<A1>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance CollectionChanges<A, B>.Projection<A1>()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t specialized CollectionChanges.getOffset<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CollectionDifference.Change();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  (*(v10 + 16))(&v14 - v8, a1, v7);
  v11 = *v9;
  type metadata accessor for Int?(255, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6720]);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  (*(*(a4 - 8) + 8))(&v9[*(TupleTypeMetadata3 + 48)], a4);
  return v11;
}

uint64_t lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PartialRangeThrough<Int>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for PartialRangeThrough<Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for CollectionChanges.Element(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = v5 + v6;
  v8 = ((v5 + v6) & ~v6) + v5;
  v9 = *(*(a3 + 24) - 8);
  v10 = *(v9 + 64);
  v11 = *(v9 + 80);
  v12 = v10 + v11;
  v13 = (v12 & ~v11) + v10;
  if (v13 <= v8)
  {
    v14 = ((v5 + v6) & ~v6) + v5;
  }

  else
  {
    v14 = v13;
  }

  v15 = v8 + v11;
  if (v13 + (v15 & ~v11) <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13 + (v15 & ~v11);
  }

  if ((v11 | v6) > 7 || ((v11 | *(v4 + 80)) & 0x100000) != 0 || v16 + 1 > 0x18)
  {
    v19 = *a2;
    *v3 = *a2;
    v3 = (v19 + (((v11 | v6) + 16) & ~(v11 | v6)));

    return v3;
  }

  v20 = *(a2 + v16);
  v21 = v20 - 3;
  if (v20 >= 3)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *a2;
        if (v16 >= 4)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v22 == 3)
        {
          v23 = *a2 | (*(a2 + 2) << 16);
          if (v16 < 4)
          {
            goto LABEL_31;
          }

LABEL_29:
          v20 = v23 + 3;
          goto LABEL_32;
        }

        v23 = *a2;
        if (v16 >= 4)
        {
          goto LABEL_29;
        }
      }

LABEL_31:
      v20 = (v23 | (v21 << (8 * v16))) + 3;
      goto LABEL_32;
    }

    if (!v22)
    {
      goto LABEL_32;
    }

    v23 = *a2;
    if (v16 < 4)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_32:
  v24 = ~v6;
  v25 = ~v11;
  if (v20 == 2)
  {
    v37 = *(a3 + 24);
    v38 = *(v4 + 16);
    v36 = *(a3 + 16);
    (v38)(a1);
    v38((v3 + v7) & v24, (a2 + v7) & v24, v36);
    v30 = (a2 + v15) & v25;
    v31 = *(v9 + 16);
    v31((v3 + v15) & v25, v30, v37);
    v31((v12 + ((v3 + v15) & v25)) & v25, (v12 + v30) & v25, v37);
    *(v3 + v16) = 2;
  }

  else if (v20 == 1)
  {
    v26 = *(v9 + 16);
    v28 = *(a3 + 24);
    (v26)(a1);
    v26((v3 + v12) & v25, (a2 + v12) & v25, v28);
    *(v3 + v16) = 1;
  }

  else
  {
    v32 = *(v4 + 16);
    v34 = *(a3 + 16);
    (v32)(a1);
    v32((v3 + v7) & v24, (a2 + v7) & v24, v34);
    *(v3 + v16) = 0;
  }

  return v3;
}

uint64_t destroy for CollectionChanges.Element(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = *(v4 - 8);
  v9 = *(v8 + 64);
  v10 = v6 + v7;
  v11 = ((v6 + v7) & ~v7) + v6;
  v12 = *(v8 + 80);
  v13 = v9 + v12;
  v14 = ((v9 + v12) & ~v12) + v9;
  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  v16 = v11 + v12;
  v17 = v14 + ((v11 + v12) & ~v12);
  if (v17 <= v15)
  {
    v17 = v15;
  }

  v18 = a1[v17];
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = *a1;
    }

    else if (v20 == 2)
    {
      v21 = *a1;
    }

    else if (v20 == 3)
    {
      v21 = *a1 | (a1[2] << 16);
    }

    else
    {
      v21 = *a1;
    }

    v22 = (v21 | (v19 << (8 * v17))) + 3;
    v18 = v21 + 3;
    if (v17 < 4)
    {
      v18 = v22;
    }
  }

LABEL_20:
  v23 = ~v7;
  v24 = ~v12;
  if (v18 == 2)
  {
    v28 = *(v5 + 8);
    v33 = *(v4 - 8);
    v28(a1, v3);
    v28((&a1[v10] & v23), v3);
    v29 = &a1[v16] & v24;
    v32 = *(v33 + 8);
    v32(v29, v4);

    return (v32)((v13 + v29) & v24, v4);
  }

  else
  {
    if (v18 == 1)
    {
      v31 = *(v8 + 8);
      v31(a1, v4);
      v25 = &a1[v13] & v24;
      v26 = v4;
      v27 = v31;
    }

    else
    {
      v34 = *(v5 + 8);
      v34(a1, v3);
      v25 = &a1[v10] & v23;
      v26 = v3;
      v27 = v34;
    }

    return v27(v25, v26);
  }
}

uint64_t initializeWithCopy for CollectionChanges.Element(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  v14 = *(v12 + 80);
  v15 = v13 + v14;
  v16 = ((v13 + v14) & ~v14) + v13;
  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = v11 + v14;
  v19 = v16 + ((v11 + v14) & ~v14);
  if (v19 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  v21 = a2[v20];
  v22 = v21 - 3;
  if (v21 < 3)
  {
    goto LABEL_21;
  }

  if (v20 <= 3)
  {
    v23 = v20;
  }

  else
  {
    v23 = 4;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      goto LABEL_21;
    }

    v24 = *a2;
  }

  else if (v23 == 2)
  {
    v24 = *a2;
  }

  else if (v23 == 3)
  {
    v24 = *a2 | (a2[2] << 16);
  }

  else
  {
    v24 = *a2;
  }

  v25 = (v24 | (v22 << (8 * v20))) + 3;
  v21 = v24 + 3;
  if (v20 < 4)
  {
    v21 = v25;
  }

LABEL_21:
  v26 = ~v9;
  v27 = ~v14;
  if (v21 == 2)
  {
    v38 = v15;
    v39 = *(a3 + 24);
    v30 = *(v7 + 16);
    v37 = *(a3 + 16);
    v31 = v18;
    v30(a1, a2, v5);
    v30((v10 + a1) & v26, (&a2[v10] & v26), v37);
    v32 = &a2[v31] & v27;
    v33 = *(v12 + 16);
    v33((v31 + a1) & v27, v32, v39);
    v33((v38 + ((v31 + a1) & v27)) & v27, (v38 + v32) & v27, v39);
    v29 = 2;
  }

  else if (v21 == 1)
  {
    v28 = *(v12 + 16);
    v28(a1, a2, v6);
    v28((v15 + a1) & v27, (&a2[v15] & v27), v6);
    v29 = 1;
  }

  else
  {
    v34 = *(v7 + 16);
    v35 = *(a3 + 16);
    v34(a1, a2, v5);
    v34((v10 + a1) & v26, (&a2[v10] & v26), v35);
    v29 = 0;
  }

  *(a1 + v20) = v29;
  return a1;
}

unsigned __int16 *assignWithCopy for CollectionChanges.Element(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    v9 = *(v7 + 80);
    v44 = v8 + v9;
    v10 = ((v8 + v9) & ~v9) + v8;
    v11 = *(*(v6 - 8) + 64);
    v42 = *(v6 - 8);
    v12 = *(v42 + 80);
    v13 = v11 + v12;
    v14 = ((v11 + v12) & ~v12) + v11;
    if (v14 <= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v14;
    }

    v41 = v10 + v12;
    v16 = v14 + ((v10 + v12) & ~v12);
    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v18 = *(a1 + v17);
    v19 = v18 - 3;
    if (v18 < 3)
    {
LABEL_24:
      v22 = ~v9;
      v43 = ~v12;
      if (v18 == 2)
      {
        v24 = *(v7 + 8);
        v24(a1, v5);
        v24(((a1 + v44) & v22), v5);
        v40 = v7;
        v25 = v5;
        v26 = *(v42 + 8);
        v26((a1 + v41) & v43, v6);
        v26((v13 + ((a1 + v41) & v43)) & v43, v6);
        v5 = v25;
        v7 = v40;
      }

      else if (v18 == 1)
      {
        v23 = *(v42 + 8);
        v23(a1, v6);
        v23(((a1 + v13) & v43), v6);
      }

      else
      {
        v27 = *(v7 + 8);
        v27(a1, v5);
        v27(((a1 + v44) & v22), v5);
      }

      v28 = a2[v17];
      v29 = v28 - 3;
      if (v28 >= 3)
      {
        if (v17 <= 3)
        {
          v30 = v17;
        }

        else
        {
          v30 = 4;
        }

        if (v30 <= 1)
        {
          if (!v30)
          {
            goto LABEL_43;
          }

          v31 = *a2;
          if (v17 < 4)
          {
LABEL_48:
            v35 = v31 | (v29 << (8 * v17));
            v28 = v35 + 3;
            if (v35 == -1)
            {
              goto LABEL_49;
            }

            goto LABEL_44;
          }
        }

        else if (v30 == 2)
        {
          v31 = *a2;
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        else if (v30 == 3)
        {
          v31 = *a2 | (a2[2] << 16);
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v31 = *a2;
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        v28 = v31 + 3;
      }

LABEL_43:
      if (v28 == 2)
      {
LABEL_49:
        v36 = *(v7 + 16);
        v36(a1, a2, v5);
        v36(((a1 + v44) & v22), (&a2[v44] & v22), v5);
        v37 = &a2[v41] & v43;
        v38 = *(v42 + 16);
        v38((a1 + v41) & v43, v37, v6);
        v38((v13 + ((a1 + v41) & v43)) & v43, (v13 + v37) & v43, v6);
        v33 = 2;
LABEL_50:
        *(a1 + v17) = v33;
        return a1;
      }

LABEL_44:
      if (v28 == 1)
      {
        v32 = *(v42 + 16);
        v32(a1, a2, v6);
        v32(((a1 + v13) & v43), (&a2[v13] & v43), v6);
        v33 = 1;
      }

      else
      {
        v34 = *(v7 + 16);
        v34(a1, a2, v5);
        v34(((a1 + v44) & v22), (&a2[v44] & v22), v5);
        v33 = 0;
      }

      goto LABEL_50;
    }

    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = *a1 | (*(a1 + 2) << 16);
          if (v17 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v18 = v21 + 3;
          goto LABEL_24;
        }

        v21 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v18 = (v21 | (v19 << (8 * v17))) + 3;
      goto LABEL_24;
    }

    if (!v20)
    {
      goto LABEL_24;
    }

    v21 = *a1;
    if (v17 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  return a1;
}

uint64_t initializeWithTake for CollectionChanges.Element(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  v14 = *(v12 + 80);
  v15 = v13 + v14;
  v16 = ((v13 + v14) & ~v14) + v13;
  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = v11 + v14;
  v19 = v16 + ((v11 + v14) & ~v14);
  if (v19 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  v21 = a2[v20];
  v22 = v21 - 3;
  if (v21 < 3)
  {
    goto LABEL_21;
  }

  if (v20 <= 3)
  {
    v23 = v20;
  }

  else
  {
    v23 = 4;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      goto LABEL_21;
    }

    v24 = *a2;
  }

  else if (v23 == 2)
  {
    v24 = *a2;
  }

  else if (v23 == 3)
  {
    v24 = *a2 | (a2[2] << 16);
  }

  else
  {
    v24 = *a2;
  }

  v25 = (v24 | (v22 << (8 * v20))) + 3;
  v21 = v24 + 3;
  if (v20 < 4)
  {
    v21 = v25;
  }

LABEL_21:
  v26 = ~v9;
  v27 = ~v14;
  if (v21 == 2)
  {
    v38 = v15;
    v39 = *(a3 + 24);
    v30 = *(v7 + 32);
    v37 = *(a3 + 16);
    v31 = v18;
    v30(a1, a2, v5);
    v30((v10 + a1) & v26, (&a2[v10] & v26), v37);
    v32 = &a2[v31] & v27;
    v33 = *(v12 + 32);
    v33((v31 + a1) & v27, v32, v39);
    v33((v38 + ((v31 + a1) & v27)) & v27, (v38 + v32) & v27, v39);
    v29 = 2;
  }

  else if (v21 == 1)
  {
    v28 = *(v12 + 32);
    v28(a1, a2, v6);
    v28((v15 + a1) & v27, (&a2[v15] & v27), v6);
    v29 = 1;
  }

  else
  {
    v34 = *(v7 + 32);
    v35 = *(a3 + 16);
    v34(a1, a2, v5);
    v34((v10 + a1) & v26, (&a2[v10] & v26), v35);
    v29 = 0;
  }

  *(a1 + v20) = v29;
  return a1;
}

unsigned __int16 *assignWithTake for CollectionChanges.Element(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    v9 = *(v7 + 80);
    v44 = v8 + v9;
    v10 = ((v8 + v9) & ~v9) + v8;
    v11 = *(*(v6 - 8) + 64);
    v42 = *(v6 - 8);
    v12 = *(v42 + 80);
    v13 = v11 + v12;
    v14 = ((v11 + v12) & ~v12) + v11;
    if (v14 <= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v14;
    }

    v41 = v10 + v12;
    v16 = v14 + ((v10 + v12) & ~v12);
    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v18 = *(a1 + v17);
    v19 = v18 - 3;
    if (v18 < 3)
    {
LABEL_24:
      v22 = ~v9;
      v43 = ~v12;
      if (v18 == 2)
      {
        v24 = *(v7 + 8);
        v24(a1, v5);
        v24(((a1 + v44) & v22), v5);
        v40 = v7;
        v25 = v5;
        v26 = *(v42 + 8);
        v26((a1 + v41) & v43, v6);
        v26((v13 + ((a1 + v41) & v43)) & v43, v6);
        v5 = v25;
        v7 = v40;
      }

      else if (v18 == 1)
      {
        v23 = *(v42 + 8);
        v23(a1, v6);
        v23(((a1 + v13) & v43), v6);
      }

      else
      {
        v27 = *(v7 + 8);
        v27(a1, v5);
        v27(((a1 + v44) & v22), v5);
      }

      v28 = a2[v17];
      v29 = v28 - 3;
      if (v28 >= 3)
      {
        if (v17 <= 3)
        {
          v30 = v17;
        }

        else
        {
          v30 = 4;
        }

        if (v30 <= 1)
        {
          if (!v30)
          {
            goto LABEL_43;
          }

          v31 = *a2;
          if (v17 < 4)
          {
LABEL_48:
            v35 = v31 | (v29 << (8 * v17));
            v28 = v35 + 3;
            if (v35 == -1)
            {
              goto LABEL_49;
            }

            goto LABEL_44;
          }
        }

        else if (v30 == 2)
        {
          v31 = *a2;
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        else if (v30 == 3)
        {
          v31 = *a2 | (a2[2] << 16);
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v31 = *a2;
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        v28 = v31 + 3;
      }

LABEL_43:
      if (v28 == 2)
      {
LABEL_49:
        v36 = *(v7 + 32);
        v36(a1, a2, v5);
        v36(((a1 + v44) & v22), (&a2[v44] & v22), v5);
        v37 = &a2[v41] & v43;
        v38 = *(v42 + 32);
        v38((a1 + v41) & v43, v37, v6);
        v38((v13 + ((a1 + v41) & v43)) & v43, (v13 + v37) & v43, v6);
        v33 = 2;
LABEL_50:
        *(a1 + v17) = v33;
        return a1;
      }

LABEL_44:
      if (v28 == 1)
      {
        v32 = *(v42 + 32);
        v32(a1, a2, v6);
        v32(((a1 + v13) & v43), (&a2[v13] & v43), v6);
        v33 = 1;
      }

      else
      {
        v34 = *(v7 + 32);
        v34(a1, a2, v5);
        v34(((a1 + v44) & v22), (&a2[v44] & v22), v5);
        v33 = 0;
      }

      goto LABEL_50;
    }

    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = *a1 | (*(a1 + 2) << 16);
          if (v17 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v18 = v21 + 3;
          goto LABEL_24;
        }

        v21 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v18 = (v21 | (v19 << (8 * v17))) + 3;
      goto LABEL_24;
    }

    if (!v20)
    {
      goto LABEL_24;
    }

    v21 = *a1;
    if (v17 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for CollectionChanges.Element(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  v5 = ((v3 + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + v3;
  v6 = *(v4 + 80);
  v7 = ((*(v4 + 64) + v6) & ~v6) + *(v4 + 64);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = v7 + ((v5 + v6) & ~v6);
  if (v9 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_29;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 253) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_29:
      v17 = *(a1 + v10);
      if (v17 >= 3)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_18:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + 254;
}

void storeEnumTagSinglePayload for CollectionChanges.Element(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 80);
  v8 = ((*(v6 + 64) + v7) & ~v7) + *(v6 + 64);
  if (v8 <= v5)
  {
    v9 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v9 = v8;
  }

  v10 = v8 + ((v5 + v7) & ~v7);
  if (v10 <= v9)
  {
    v10 = v9;
  }

  v11 = v10 + 1;
  if (a3 < 0xFE)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 253) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFD)
  {
    v13 = a2 - 254;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_42:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v10] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_27;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t getEnumTag for CollectionChanges.Element(unsigned __int8 *a1, uint64_t a2)
{
  v2 = ((*(*(*(a2 + 16) - 8) + 64) + *(*(*(a2 + 16) - 8) + 80)) & ~*(*(*(a2 + 16) - 8) + 80)) + *(*(*(a2 + 16) - 8) + 64);
  v3 = *(*(a2 + 24) - 8);
  v4 = *(v3 + 80);
  v5 = ((*(v3 + 64) + v4) & ~v4) + *(v3 + 64);
  if (v5 <= v2)
  {
    v6 = ((*(*(*(a2 + 16) - 8) + 64) + *(*(*(a2 + 16) - 8) + 80)) & ~*(*(*(a2 + 16) - 8) + 80)) + *(*(*(a2 + 16) - 8) + 64);
  }

  else
  {
    v6 = v5;
  }

  v7 = v5 + ((v2 + v4) & ~v4);
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a1[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        return v9;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    LODWORD(v9) = v12 + 3;
    if (v8 >= 4)
    {
      return v9;
    }

    else
    {
      return v13;
    }
  }

  return v9;
}

void destructiveInjectEnumTag for CollectionChanges.Element(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 2)
  {
    v3 = *(*(a3 + 16) - 8);
    v10 = ((*(v3 + 64) + *(v3 + 80)) & ~*(v3 + 80)) + *(v3 + 64);
    v11 = *(*(a3 + 24) - 8);
    v12 = *(v11 + 80);
    v13 = ((*(v11 + 64) + v12) & ~v12) + *(v11 + 64);
    if (v13 <= v10)
    {
      v14 = ((*(v3 + 64) + *(v3 + 80)) & ~*(v3 + 80)) + *(v3 + 64);
    }

    else
    {
      v14 = v13;
    }

    v15 = v13 + ((v10 + v12) & ~v12);
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v17 = a2 - 3;
    if (v16 < 4)
    {
      a1[v16] = (v17 >> (8 * v16)) + 3;
      if (v16)
      {
        v19 = v17 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v16 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      a1[v16] = 3;
      bzero(a1, v16);
      *a1 = v17;
    }
  }

  else
  {
    v4 = *(*(a3 + 24) - 8);
    v5 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
    v6 = *(v4 + 80);
    v7 = (v5 + v6) & ~v6;
    v8 = ((*(v4 + 64) + v6) & ~v6) + *(v4 + 64);
    v9 = v7 + v8;
    if (v8 > v5)
    {
      v5 = v8;
    }

    if (v9 > v5)
    {
      v5 = v9;
    }

    a1[v5] = a2;
  }
}

uint64_t initializeWithCopy for CollectionChanges.Projection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for CollectionChanges.Projection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for CollectionChanges.Projection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = specialized CollectionChanges.getOffset<A>(from:)(a1, v5, v6, AssociatedTypeWitness);
  *a2 = result;
  return result;
}

{
  return partial apply for closure #2 in closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(a1, a2);
}

uint64_t _EnvironmentKeyWritingModifier.keyPath.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance ChildEnvironment<A>()
{
  return specialized ChildEnvironment.description.getter();
}

{
  return 0xD000000000000027;
}

void *initializeBufferWithCopyOfBuffer for _EnvironmentKeyWritingModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v10 = a2 + v6 + 8;
    v11 = *(v5 + 16);

    v11((v3 + v6 + 8) & ~v6, v10 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

void *initializeBufferWithCopyOfBuffer for ChildEnvironment(_DWORD *a1, int *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((v7 + 8) & ~v7) + *(v5 + 64);
  if (v7 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v7) | v7 | 7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v13 = *a2;
    v12 = a2 + 7;
    *a1 = v13;
    v14 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *(v12 & 0xFFFFFFFFFFFFFFFCLL);
    v15 = v14 + 11;
    v16 = (((v12 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v19 = (*(v5 + 48))(v16 + 1, v6, v4);
      v18 = (v15 & 0xFFFFFFFFFFFFFFF8);
      if (v19)
      {
LABEL_13:
        memcpy(v18, v16, v8);
        return v3;
      }
    }

    else
    {
      v17 = *v16;
      if (*v16 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = (v15 & 0xFFFFFFFFFFFFFFF8);
      if (v17 != -1)
      {
        goto LABEL_13;
      }
    }

    *v18 = *v16;
    v20 = *(v5 + 16);
    v21 = v18 + 1;

    v20(v21, v16 + 1, v4);
    return v3;
  }

  v11 = *a2;
  *v3 = *a2;
  v3 = (v11 + ((v7 + 16) & ~(v7 | 7)));

  return v3;
}

_DWORD *assignWithCopy for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = ((v4 + v9) & ~(v8 | 7));
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = *(v7 + 84);
  v13 = ~v8;
  v14 = v8 + 8;
  v15 = *(v7 + 64);
  v16 = (v8 + 8) & ~v8;
  if ((v12 & 0x80000000) != 0)
  {
    v23 = *(v7 + 64);
    v19 = *(v7 + 48);
    v22 = v19((v10 + v14) & v13, v12, v6);
    v18 = v19((v11 + v14) & v13, v12, v6);
    v15 = v23;
    v3 = a1;
    if (!v22)
    {
LABEL_5:
      if (!v18)
      {
        *v10 = *v11;

        (*(v7 + 24))((v10 + v14) & v13, (v11 + v14) & v13, v6);
        return v3;
      }

      (*(v7 + 8))((v10 + v14) & v13, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = *v11;
    if (*v11 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v10 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v18)
  {
    *v10 = *v11;
    v20 = *(v7 + 16);

    v20((v10 + v14) & v13, (v11 + v14) & v13, v6);
    return v3;
  }

LABEL_9:
  memcpy(v10, v11, v16 + v15);
  return v3;
}

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

  *((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *initializeWithTake for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = ((v4 + v9) & ~(v8 | 7));
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = ~v8;
  v13 = *(v7 + 64);
  v14 = v8 + 8;
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v15 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    if (v15 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v10 = *v11;
    (*(v7 + 32))((v10 + v14) & v12, (v11 + v14) & v12, v6);
    return a1;
  }

  if (!(*(v7 + 48))((v11 + v14) & v12))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v10, v11, (v14 & ~v8) + v13);
  return a1;
}

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

  *((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = ((v4 + v9) & ~(v8 | 7));
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = *(v7 + 84);
  v13 = ~v8;
  v14 = v8 + 8;
  v15 = *(v7 + 64);
  v16 = (v8 + 8) & ~v8;
  if ((v12 & 0x80000000) != 0)
  {
    v19 = *(v7 + 48);
    v21 = v19((v10 + v14) & v13, v12, v6);
    v18 = v19((v11 + v14) & v13, v12, v6);
    v3 = a1;
    if (!v21)
    {
LABEL_5:
      if (!v18)
      {
        *v10 = *v11;

        (*(v7 + 40))((v10 + v14) & v13, (v11 + v14) & v13, v6);
        return v3;
      }

      (*(v7 + 8))((v10 + v14) & v13, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = *v11;
    if (*v11 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v10 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v18)
  {
    *v10 = *v11;
    (*(v7 + 32))((v10 + v14) & v13, (v11 + v14) & v13, v6);
    return v3;
  }

LABEL_9:
  memcpy(v10, v11, v16 + v15);
  return v3;
}

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

  *((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ChildEnvironment(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = v6 | 7;
  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
  v10 = 8 * v9;
  if (v9 > 3)
  {
    goto LABEL_7;
  }

  v13 = (((1 << v10) + a2 - v7) >> v10) + 1;
  if (HIWORD(v13))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_28:
    v17 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8);
    if ((v5 & 0x80000000) != 0)
    {
      v19 = (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v19 = v18 + 1;
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 > 0xFF)
  {
    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v13 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (*(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) == 2)
  {
    v16 = 0;
  }

  else
  {
    if (v9 <= 3)
    {
      v15 = *(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v16 = *a1;
      }
    }

    else if (v15 == 1)
    {
      v16 = *a1;
    }

    else
    {
      v16 = *a1;
    }
  }

  return (v16 | v14) + v7;
}

void storeEnumTagSinglePayload for ChildEnvironment(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(*(a4 + 16) - 8) + 64) + ((v10 + 8) & ~(v10 | 7));
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + (v10 | 7) + 4) & ~(v10 | 7));
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

unint64_t specialized ChildEnvironment.description.getter()
{
  _StringGuts.grow(_:)(22);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  return 0xD000000000000014;
}

double resolvedDistance(from:to:pixelLength:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v50.origin.x = a5;
  v50.origin.y = a6;
  v50.size.width = a7;
  v50.size.height = a8;
  v48 = CGRectGetWidth(v50) * 0.5 + a5;
  v51.origin.x = a5;
  v51.origin.y = a6;
  v51.size.width = a7;
  v51.size.height = a8;
  CGRectGetHeight(v51);
  v52.origin.x = a1;
  v52.origin.y = a2;
  v52.size.width = a3;
  v52.size.height = a4;
  v47 = CGRectGetWidth(v52) * 0.5 + a1;
  v53.origin.x = a1;
  v53.origin.y = a2;
  v53.size.width = a3;
  v53.size.height = a4;
  CGRectGetHeight(v53);
  v49 = vabdd_f64(v48, v47);
  v54.origin.x = a5;
  v54.origin.y = a6;
  v54.size.width = a7;
  v54.size.height = a8;
  CGRectGetWidth(v54);
  v55.origin.x = a5;
  v55.origin.y = a6;
  v46 = a7;
  v55.size.width = a7;
  v55.size.height = a8;
  v25 = CGRectGetHeight(v55) * 0.5 + a6;
  v56.origin.x = a1;
  v56.origin.y = a2;
  v56.size.width = a3;
  v56.size.height = a4;
  CGRectGetWidth(v56);
  v57.origin.x = a1;
  v57.origin.y = a2;
  v45 = a3;
  v57.size.width = a3;
  v26 = a4;
  v57.size.height = a4;
  v27 = vabdd_f64(v25, CGRectGetHeight(v57) * 0.5 + a2);
  v28 = byte_1F0044740;
  v29 = v49;
  if (byte_1F0044740)
  {
    v29 = v27;
  }

  v44 = a5;
  if (v29 <= 0.0)
  {
    v30 = a9;
    v35 = v45;
    v36 = v49;
  }

  else
  {
    CGRect.minDistance(to:in:)(byte_1F0044740, a5, a6, v46, a8, a1, a2, v45, v26);
    v30 = a9;
    v32 = round(v31 / a9) * a9;
    v33 = round(v31);
    if (a9 != 1.0)
    {
      v33 = v32;
    }

    if (v28)
    {
      v27 = v33;
    }

    v34 = v49;
    if (!v28)
    {
      v34 = v33;
    }

    v35 = v45;
    v36 = v34;
  }

  v37 = byte_1F0044741;
  if (byte_1F0044741)
  {
    v38 = v27;
  }

  else
  {
    v38 = v36;
  }

  if (v38 > 0.0)
  {
    v39 = v30;
    CGRect.minDistance(to:in:)(byte_1F0044741, v44, a6, v46, a8, a1, a2, v35, v26);
    v41 = round(v40);
    v42 = round(v40 / v39) * v39;
    if (v39 == 1.0)
    {
      v42 = v41;
    }

    if (v37)
    {
      v27 = v42;
    }

    else
    {
      v36 = v42;
    }
  }

  return sqrt(v27 * v27 + v36 * v36);
}

uint64_t GlassContainer.Item.matchingResult(to:context:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 8);
  v7 = *(a2 + 40);
  v8 = *(a2 + 80);
  v68 = *(a2 + 64);
  v69 = v8;
  v70 = *(a2 + 96);
  v71 = *(a2 + 112);
  v9 = *(a2 + 120);
  v10 = *v3;
  if (*(v6 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(*v3);
    if (v12)
    {
      v13 = *(v6 + 56) + 40 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      v65 = *v13;
      v66 = v15;
      v67 = v14;
      type metadata accessor for Anchor<CGRect>(0);
      outlined init with copy of GlassContainer.ItemData(&v65, v64);
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        goto LABEL_8;
      }

      outlined destroy of GlassContainer.ItemData(&v65);
    }
  }

  if (!*(v7 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v18 & 1) == 0))
  {
LABEL_11:
    v22 = 0;
    if (!*(v6 + 16))
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v19 = *(v7 + 56) + 40 * v17;
  v20 = *(v19 + 32);
  v21 = *(v19 + 16);
  v65 = *v19;
  v66 = v21;
  v67 = v20;
  type metadata accessor for Anchor<CGRect>(0);
  outlined init with copy of GlassContainer.ItemData(&v65, v64);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    outlined destroy of GlassContainer.ItemData(&v65);
    goto LABEL_11;
  }

LABEL_8:
  v22 = *WeakValue;

  outlined destroy of GlassContainer.ItemData(&v65);
  if (!*(v6 + 16))
  {
    goto LABEL_15;
  }

LABEL_12:
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  if (v24)
  {
    v25 = *(v6 + 56) + 40 * v23;
    v26 = *(v25 + 32);
    v27 = *(v25 + 16);
    v65 = *v25;
    v66 = v27;
    v67 = v26;
    type metadata accessor for Anchor<CGRect>(0);
    outlined init with copy of GlassContainer.ItemData(&v65, v64);
    v28 = AGGraphGetWeakValue();
    if (v28)
    {
      goto LABEL_18;
    }

    outlined destroy of GlassContainer.ItemData(&v65);
  }

LABEL_15:
  if (!*(v7 + 16) || (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v30 & 1) == 0))
  {
LABEL_21:
    v34 = 0;
    if (!v22)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v31 = *(v7 + 56) + 40 * v29;
  v32 = *(v31 + 32);
  v33 = *(v31 + 16);
  v65 = *v31;
  v66 = v33;
  v67 = v32;
  type metadata accessor for Anchor<CGRect>(0);
  outlined init with copy of GlassContainer.ItemData(&v65, v64);
  v28 = AGGraphGetWeakValue();
  if (!v28)
  {
    outlined destroy of GlassContainer.ItemData(&v65);
    goto LABEL_21;
  }

LABEL_18:
  v34 = *v28;

  outlined destroy of GlassContainer.ItemData(&v65);
  if (!v22)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (!v34)
  {
LABEL_32:

    v51 = 0.0;
    v55 = 1;
    v36 = 0.0;
    v38 = 0.0;
    v56 = 0x7FF0000000000000;
    v40 = 0.0;
    v41 = 0.0;
    v43 = 0.0;
    v45 = 0.0;
    v47 = 0.0;
    v54 = 0.0;
    v52 = 0.0;
    goto LABEL_33;
  }

  v58 = specialized GeometryProxy.subscript.getter(v22);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = specialized GeometryProxy.subscript.getter(v34);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v63 = resolvedDistance(from:to:pixelLength:)(v58, v36, v38, v40, v41, v42, v44, v46, v9);
  v72.origin.x = v41;
  v72.origin.y = v43;
  v72.size.width = v45;
  v72.size.height = v47;
  Width = CGRectGetWidth(v72);
  v73.origin.x = v41;
  v73.origin.y = v43;
  v73.size.width = v45;
  v73.size.height = v47;
  Height = CGRectGetHeight(v73);
  v74.origin.x = v58;
  v74.origin.y = v36;
  v74.size.width = v38;
  v74.size.height = v40;
  v60 = CGRectGetWidth(v74);
  v75.origin.x = v58;
  v75.origin.y = v36;
  v75.size.width = v38;
  v75.size.height = v40;
  v59 = CGRectGetHeight(v75);
  v76.origin.x = v58;
  v76.origin.y = v36;
  v76.size.width = v38;
  v76.size.height = v40;
  v78.origin.x = v41;
  v78.origin.y = v43;
  v78.size.width = v45;
  v78.size.height = v47;
  v77 = CGRectIntersection(v76, v78);
  v57 = v77.size.width;
  v48 = v77.size.height;
  v49 = CGRectEqualToRect(v77, *MEMORY[0x1E695F050]);

  v51 = v58;
  v52 = v43 + Height * 0.5 - (v36 + v59 * 0.5);
  v53 = v38 * v40;
  if (v45 * v47 < v38 * v40)
  {
    v53 = v45 * v47;
  }

  if (v49)
  {
    v54 = v41 + Width * 0.5 - (v58 + v60 * 0.5);
  }

  else
  {
    v54 = 0.0;
  }

  if (v49)
  {
    v55 = 1;
  }

  else
  {
    v52 = 0.0;
    v55 = v53 * 0.5 > v57 * v48;
  }

  v56 = *&v63;
LABEL_33:
  *a3 = v56;
  *(a3 + 8) = v55;
  *(a3 + 16) = v51;
  *(a3 + 24) = v36;
  *(a3 + 32) = v38;
  *(a3 + 40) = v40;
  *(a3 + 48) = v41;
  *(a3 + 56) = v43;
  *(a3 + 64) = v45;
  *(a3 + 72) = v47;
  *(a3 + 80) = v54;
  *(a3 + 88) = v52;
  *(a3 + 96) = 0;
  *(a3 + 104) = 1;
  return result;
}

uint64_t GlassContainer.MatchingResult.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(19);
  MEMORY[0x193ABEDD0](0x28686374614DLL, 0xE600000000000000);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](0x203A646E696B202CLL, 0xE800000000000000);
  if (*(v1 + *(a1 + 28)))
  {
    v3 = 0x724F747265736E69;
  }

  else
  {
    v3 = 0x6573756572;
  }

  if (*(v1 + *(a1 + 28)))
  {
    v4 = 0xEE0065766F6D6552;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v3, v4);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GlassContainer.MatchingKind()
{
  if (*v0)
  {
    return 0x724F747265736E69;
  }

  else
  {
    return 0x6573756572;
  }
}

uint64_t destroy for GlassContainer.Entry.DistanceContext()
{
}

uint64_t initializeWithCopy for GlassContainer.Entry.DistanceContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for GlassContainer.Entry.DistanceContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for GlassContainer.Entry.DistanceContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.Entry.DistanceContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for GlassContainer.Entry.DistanceContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for GlassContainer.Item.DistanceContext()
{
}

uint64_t initializeWithCopy for GlassContainer.Item.DistanceContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  v9 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 64) = v7;
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithCopy for GlassContainer.Item.DistanceContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Item.DistanceContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t type metadata completion function for GlassContainer.MatchingResult()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for GlassContainer.MatchingResult(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (((((((v5 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v10 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 8);
    *(v10 + 24) = *(v11 + 24);
    *(v10 + 8) = v12;
    v13 = ((v10 + 47) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v11 + 47) & 0xFFFFFFFFFFFFFFF8);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
    v16 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((v14 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v18 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(v19 + 8);
    *v18 = *v19;
    *(v18 + 8) = v20;
  }

  return v3;
}

uint64_t initializeWithCopy for GlassContainer.MatchingResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 24) = v9;
  v10 = ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  *(v15 + 8) = *(v16 + 8);
  *v15 = v17;
  return a1;
}

uint64_t assignWithCopy for GlassContainer.MatchingResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 32) = *(v8 + 32);
  v9 = ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v9[3] = v10[3];
  v11 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 8);
  *v13 = *v14;
  *(v13 + 8) = v15;
  return a1;
}

uint64_t initializeWithTake for GlassContainer.MatchingResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 24) = v9;
  v10 = ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  *(v15 + 8) = *(v16 + 8);
  *v15 = v17;
  return a1;
}

uint64_t assignWithTake for GlassContainer.MatchingResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 32) = *(v8 + 32);
  v9 = ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v9[3] = v10[3];
  v11 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 8);
  *v13 = *v14;
  *(v13 + 8) = v15;
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.MatchingResult(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v8 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = a1[v6];
    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for GlassContainer.MatchingResult(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((((v9 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        a1[v9] = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (((((((v9 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t lazy protocol witness table accessor for type GlassContainer.MatchingKind and conformance GlassContainer.MatchingKind()
{
  result = lazy protocol witness table cache variable for type GlassContainer.MatchingKind and conformance GlassContainer.MatchingKind;
  if (!lazy protocol witness table cache variable for type GlassContainer.MatchingKind and conformance GlassContainer.MatchingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.MatchingKind and conformance GlassContainer.MatchingKind);
  }

  return result;
}

uint64_t _ViewOutputs.setIndirectDependency(_:)()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *MEMORY[0x1E698D3F8];

    v5 = 48;
    do
    {
      AGGraphSetIndirectDependency();
      v5 += 24;
      --v3;
    }

    while (v3);

    if (v2 == v4)
    {
      return result;
    }
  }

  else if (v2 == *MEMORY[0x1E698D3F8])
  {
    return result;
  }

  return AGGraphSetIndirectDependency();
}

Swift::Void __swiftcall _ViewOutputs.detachIndirectOutputs()()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = *(*v0 + 16);
  v4 = *MEMORY[0x1E698D3F8];
  if (v3)
  {
    v5 = v1 + 48;
    do
    {
      v5 += 24;
      AGGraphSetIndirectAttribute();
      --v3;
    }

    while (v3);
  }

  if (v2 != v4)
  {

    AGGraphSetIndirectAttribute();
  }
}

uint64_t OpenURLAction.SystemHandlerInput.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OpenURLAction.SystemHandlerInput.completion.getter()
{
  v1 = *(v0 + *(type metadata accessor for OpenURLAction.SystemHandlerInput(0) + 24));

  return v1;
}

uint64_t one-time initialization function for handled(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for OpenURLAction.Result(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v8 = *(*(v7 - 8) + 56);

  return v8(v6, a3, 2, v7);
}

uint64_t one-time initialization function for systemAction()
{
  v0 = type metadata accessor for OpenURLAction.Result(0);
  __swift_allocate_value_buffer(v0, static OpenURLAction.Result.systemAction);
  v1 = __swift_project_value_buffer(v0, static OpenURLAction.Result.systemAction);
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v3 = v2;
  v4 = *(v2 + 48);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  *(v1 + v4) = 0;
  v6 = *(*(v3 - 8) + 56);

  return v6(v1, 0, 2, v3);
}

uint64_t static OpenURLAction.Result.handled.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OpenURLAction.Result(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return outlined init with copy of OpenURLAction.Result(v6, a3, type metadata accessor for OpenURLAction.Result);
}

uint64_t static OpenURLAction.Result.systemAction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v5 = v4;
  v6 = *(v4 + 48);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a2, a1, v7);
  (*(v8 + 56))(a2, 0, 1, v7);
  *(a2 + v6) = 0;
  v9 = *(*(v5 - 8) + 56);

  return v9(a2, 0, 2, v5);
}

void type metadata accessor for (url: URL?, prefersInApp: Bool)()
{
  if (!lazy cache variable for type metadata for (url: URL?, prefersInApp: Bool))
  {
    type metadata accessor for URL?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (url: URL?, prefersInApp: Bool));
    }
  }
}

uint64_t static OpenURLAction.Result.systemAction(_:prefersInApp:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v7 = v6;
  v8 = *(v6 + 48);
  outlined init with copy of OpenURLAction.Result(a1, a3, type metadata accessor for URL?);
  *(a3 + v8) = a2;
  v9 = *(*(v7 - 8) + 56);

  return v9(a3, 0, 2, v7);
}

uint64_t outlined init with copy of OpenURLAction.Result(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t OpenURLAction.init(handler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

__n128 OpenURLAction.init(handler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t OpenURLAction.init(isDefault:handler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 33) = result;
  return result;
}

uint64_t OpenURLAction.init(_handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = partial apply for closure #1 in OpenURLAction.init(_handler:);
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t specialized OpenURLAction._open(_:prefersInApp:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v62 = a4;
  v64 = a2;
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v57 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v65 = type metadata accessor for OpenURLAction.SystemHandlerInput(0);
  MEMORY[0x1EEE9AC00](v65);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  v22 = type metadata accessor for OpenURLAction.Result.ActionResult(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OpenURLAction.Result(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a3;
  v29 = *(a3 + 16);
  v30 = *(a3 + 24);
  if (*(a3 + 32))
  {

    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v29);
    v28(a1);
    outlined init with copy of OpenURLAction.Result(v27, v24, type metadata accessor for OpenURLAction.Result.ActionResult);
    type metadata accessor for (url: URL?, prefersInApp: Bool)();
    v32 = v31;
    if ((*(*(v31 - 8) + 48))(v24, 2, v31))
    {

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v29);
    }

    else
    {
      v62 = a1;
      v41 = v24[*(v32 + 48)];
      v42 = v63;
      outlined init with take of URL?(v24, v63);
      if (v29)
      {
        v57 = v30;
        v58 = v27;
        if (v64 == 2)
        {
          v43 = v41;
        }

        else
        {
          v43 = v64;
        }

        v44 = v59;
        outlined init with copy of OpenURLAction.Result(v42, v59, type metadata accessor for URL?);
        v45 = v66;
        v46 = v67;
        v47 = *(v67 + 48);
        if (v47(v44, 1, v66) == 1)
        {
          v48 = v61;
          (*(v46 + 16))(v61, v62, v45);
          v49 = v48;
          if (v47(v44, 1, v45) != 1)
          {
            outlined destroy of OpenURLAction.SystemHandlerInput(v44, type metadata accessor for URL?);
          }
        }

        else
        {
          v49 = v61;
          (*(v46 + 32))(v61, v44, v45);
        }

        (*(v46 + 32))(v18, v49, v45);
        v55 = v65;
        v18[*(v65 + 20)] = v43 & 1;
        v56 = &v18[*(v55 + 24)];
        *v56 = v60;
        *(v56 + 1) = 0;
        v29(v18);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v29);
        outlined destroy of OpenURLAction.SystemHandlerInput(v18, type metadata accessor for OpenURLAction.SystemHandlerInput);
        outlined destroy of OpenURLAction.SystemHandlerInput(v63, type metadata accessor for URL?);
        v33 = type metadata accessor for OpenURLAction.Result;
        v34 = v58;
        return outlined destroy of OpenURLAction.SystemHandlerInput(v34, v33);
      }

      type metadata accessor for OpenURLAction?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_18DDA6EB0;
      v69 = 0;
      v70 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v69 = 0xD00000000000002ELL;
      v70 = 0x800000018DD79470;
      v51 = StaticString.description.getter();
      MEMORY[0x193ABEDD0](v51);

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);
      v68 = 84;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v52);

      MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
      v53 = v69;
      v54 = v70;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 32) = v53;
      *(v50 + 40) = v54;
      print(_:separator:terminator:)();

      outlined destroy of OpenURLAction.SystemHandlerInput(v42, type metadata accessor for URL?);
    }

    v33 = type metadata accessor for OpenURLAction.Result;
    v34 = v27;
    return outlined destroy of OpenURLAction.SystemHandlerInput(v34, v33);
  }

  v35 = *(a3 + 8);

  if ((URL.isFileURL.getter() & 1) == 0)
  {
    v38 = v66;
    v37 = v67;
    (*(v67 + 16))(v16, a1, v66);
    (*(v37 + 32))(v21, v16, v38);
    v39 = v65;
    v21[*(v65 + 20)] = v64 & 1;
    v40 = &v21[*(v39 + 24)];
    *v40 = v62;
    *(v40 + 1) = 0;
    v28(v21);
    outlined consume of OpenURLAction.Handler(v28, v35, v29, v30, 0);
    v33 = type metadata accessor for OpenURLAction.SystemHandlerInput;
    v34 = v21;
    return outlined destroy of OpenURLAction.SystemHandlerInput(v34, v33);
  }

  return outlined consume of OpenURLAction.Handler(v28, v35, v29, v30, 0);
}

uint64_t OpenURLAction._open(_:prefersInApp:completion:)(uint64_t a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v73 = a3;
  v74 = a4;
  v70 = a2;
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v62 - v9;
  v10 = type metadata accessor for OpenURLAction.Result.ActionResult(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OpenURLAction.Result(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v71 = *(v16 - 8);
  v72 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  v69 = type metadata accessor for OpenURLAction.SystemHandlerInput(0);
  MEMORY[0x1EEE9AC00](v69);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v26 = *v4;
  v28 = *(v4 + 16);
  v27 = *(v4 + 24);
  if (*(v4 + 32))
  {
    v29 = *(v4 + 8);

    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v28);
    v65 = v29;
    v26(a1);
    outlined init with copy of OpenURLAction.Result(v15, v12, type metadata accessor for OpenURLAction.Result.ActionResult);
    type metadata accessor for (url: URL?, prefersInApp: Bool)();
    v31 = v30;
    v32 = (*(*(v30 - 8) + 48))(v12, 2, v30);
    v33 = v28;
    if (v32)
    {
      if (v32 != 1)
      {
        v32 = 0;
      }

      v73(v32);

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v28);
    }

    else
    {
      v44 = v12[*(v31 + 48)];
      v45 = v68;
      outlined init with take of URL?(v12, v68);
      if (v33)
      {
        v63 = v33;
        v64 = v15;
        if (v70 == 2)
        {
          v46 = v44;
        }

        else
        {
          v46 = v70;
        }

        v47 = v66;
        outlined init with copy of OpenURLAction.Result(v45, v66, type metadata accessor for URL?);
        v48 = v71;
        v49 = v72;
        v50 = *(v71 + 48);
        if (v50(v47, 1, v72) == 1)
        {
          v51 = v67;
          (*(v48 + 16))();
          if (v50(v47, 1, v49) != 1)
          {
            outlined destroy of OpenURLAction.SystemHandlerInput(v47, type metadata accessor for URL?);
          }
        }

        else
        {
          v51 = v67;
          (*(v48 + 32))(v67, v47, v49);
        }

        v57 = swift_allocObject();
        v58 = v74;
        *(v57 + 16) = v73;
        *(v57 + 24) = v58;
        (*(v48 + 32))(v22, v51, v49);
        v59 = v69;
        v22[*(v69 + 20)] = v46 & 1;
        v60 = &v22[*(v59 + 24)];
        *v60 = partial apply for closure #1 in OpenURLAction._open(_:prefersInApp:completion:);
        v60[1] = v57;

        v61 = v63;
        v63(v22);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v61);
        outlined destroy of OpenURLAction.SystemHandlerInput(v22, type metadata accessor for OpenURLAction.SystemHandlerInput);
        outlined destroy of OpenURLAction.SystemHandlerInput(v45, type metadata accessor for URL?);
        v34 = type metadata accessor for OpenURLAction.Result;
        v35 = v64;
        return outlined destroy of OpenURLAction.SystemHandlerInput(v35, v34);
      }

      type metadata accessor for OpenURLAction?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_18DDA6EB0;
      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v76 = 0xD00000000000002ELL;
      v77 = 0x800000018DD79470;
      v53 = StaticString.description.getter();
      MEMORY[0x193ABEDD0](v53);

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);
      v75 = 84;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v54);

      MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
      v55 = v76;
      v56 = v77;
      *(v52 + 56) = MEMORY[0x1E69E6158];
      *(v52 + 32) = v55;
      *(v52 + 40) = v56;
      print(_:separator:terminator:)();

      outlined destroy of OpenURLAction.SystemHandlerInput(v45, type metadata accessor for URL?);
    }

    v34 = type metadata accessor for OpenURLAction.Result;
    v35 = v15;
    return outlined destroy of OpenURLAction.SystemHandlerInput(v35, v34);
  }

  v36 = *(v4 + 8);

  if ((URL.isFileURL.getter() & 1) == 0)
  {
    v38 = a1;
    v40 = v71;
    v39 = v72;
    (*(v71 + 16))(v20, v38, v72);
    (*(v40 + 32))(v25, v20, v39);
    v41 = v69;
    v25[*(v69 + 20)] = v70 & 1;
    v42 = &v25[*(v41 + 24)];
    v43 = v74;
    *v42 = v73;
    *(v42 + 1) = v43;

    v26(v25);
    outlined consume of OpenURLAction.Handler(v26, v36, v28, v27, 0);
    v34 = type metadata accessor for OpenURLAction.SystemHandlerInput;
    v35 = v25;
    return outlined destroy of OpenURLAction.SystemHandlerInput(v35, v34);
  }

  v73(0);

  return outlined consume of OpenURLAction.Handler(v26, v36, v28, v27, 0);
}

uint64_t OpenURLAction.callAsFunction(_:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  v4 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v4;
  v7 = v2;
  v8 = v3;
  return specialized OpenURLAction._open(_:prefersInApp:completion:)(a1, 2, v6, _ViewInputs.base.modify, _ViewInputs.base.modify);
}

uint64_t OpenURLAction.callAsFunction(_:prefersInApp:)(uint64_t a1, char a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 33);
  v5 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v5;
  v8 = v3;
  v9 = v4;
  return specialized OpenURLAction._open(_:prefersInApp:completion:)(a1, a2 & 1, v7, _ViewInputs.base.modify, _ViewInputs.base.modify);
}

uint64_t static OpenURLAction.defaultSystemAction(handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = partial apply for closure #1 in static OpenURLAction.defaultSystemAction(handler:);
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 256;
}

uint64_t partial apply for closure #1 in OpenURLAction.init(_handler:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for OpenURLAction.SystemHandlerInput(0);
  return v3(a1, *(a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 8));
}

void static OpenURLAction.invalidAction.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in static OpenURLAction.invalidAction.getter;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t closure #1 in static OpenURLAction.invalidAction.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for discarded != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OpenURLAction.Result(0);
  v3 = __swift_project_value_buffer(v2, static OpenURLAction.Result.discarded);
  return outlined init with copy of OpenURLAction.Result(v3, a1, type metadata accessor for OpenURLAction.Result);
}

unint64_t EnvironmentValues.hasSystemOpenURLAction.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v1) & 1;
  }

  HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v1);

  return HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 & 1;
}

uint64_t key path getter for EnvironmentValues.hasSystemOpenURLAction : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(*a1);
    HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = result;
  }

  *a2 = HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.hasSystemOpenURLAction : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v4, *a2);
  }
}

void (*EnvironmentValues.hasSystemOpenURLAction.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v5);
  }

  else
  {
    HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 & 1;
  return EnvironmentValues.hasSystemOpenURLAction.modify;
}

void EnvironmentValues.hasSystemOpenURLAction.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

double static OpenURLActionKey.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 255;
  return result;
}

void (*EnvironmentValues.openURL.modify(void *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  *a1 = v3;
  v3[17] = v1;
  v3[18] = *v1;
  v3[19] = v1[1];
  EnvironmentValues._openURL.getter((v3 + 10));
  return EnvironmentValues.openURL.modify;
}

uint64_t (*EnvironmentValues._openURL.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  *a1 = v3;
  v3[17] = v1;
  v3[18] = *v1;
  v3[19] = v1[1];
  EnvironmentValues._openURL.getter((v3 + 10));
  return EnvironmentValues._openURL.modify;
}

uint64_t EnvironmentValues._defaultOpenURL.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v10 = *(a1 + 32);
  v4 = *v1;
  outlined init with copy of OpenURLAction?(v9, v8);
  swift_retain_n();
  outlined init with copy of OpenURLAction?(v9, v8);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(v1, v9);

  outlined destroy of OpenURLAction?(v9);
  v5 = v1[1];
  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV020DefaultOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v4, *v2);
  }

  result = outlined destroy of OpenURLAction?(v9);
  if (v10 != 0xFF)
  {
    outlined destroy of OpenURLAction?(v9);
    v7 = *v2;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v2, 1);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v7, *v2);
    }
  }

  return result;
}

uint64_t EnvironmentValues._defaultOpenURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (!v1[1])
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV020DefaultOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v2, a1);
}

double key path getter for EnvironmentValues._defaultOpenURL : EnvironmentValues@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV020DefaultOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v3, v7);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(*a1, v7);
  }

  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues._defaultOpenURL : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v10 = *(a1 + 32);
  v4 = *a2;
  swift_retain_n();
  outlined init with copy of OpenURLAction?(v9, v8);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(a2, v9);

  outlined destroy of OpenURLAction?(v9);
  v5 = a2[1];
  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV020DefaultOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v4, *a2);
  }

  if (v10 != 0xFF)
  {
    v7 = *a2;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a2, 1);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v7, *a2);
    }
  }

  return result;
}

void (*EnvironmentValues._defaultOpenURL.modify(void *a1))(unsigned __int8 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[24] = v1;
  v5 = *v1;
  v3[25] = *v1;
  v6 = *(v1 + 8);
  v3[26] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV020DefaultOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v5, (v4 + 10));
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV020DefaultOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(v5, v15);
    if (v8)
    {
      v10 = v8[9];
      v9 = v8[10];
      v11 = v8[11];
      v12 = v8[12];
      v13 = *(v8 + 52);
      v4[10] = v10;
      v4[11] = v9;
      v4[12] = v11;
      v4[13] = v12;
      *(v4 + 56) = v13;
      outlined copy of OpenURLAction?(v10, v9, v11, v12, v13);
    }

    else
    {
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 56) = 255;
    }
  }

  return EnvironmentValues._defaultOpenURL.modify;
}

void EnvironmentValues._defaultOpenURL.modify(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 26);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = *(v2 + 6);
    *v2 = *(v2 + 5);
    *(v2 + 1) = v5;
    *(v2 + 16) = *(v2 + 56);

    outlined init with copy of OpenURLAction?(v2, (v2 + 120));

    outlined init with copy of OpenURLAction?(v2, (v2 + 120));
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(v4, v2);

    outlined destroy of OpenURLAction?(v2);
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV020DefaultOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(*(v2 + 25), **(v2 + 24));
    }

    if (v2[32] != 0xFF)
    {
      v6 = *(v2 + 26);
      v7 = *(v2 + 24);
      outlined destroy of OpenURLAction?(v2);
      v8 = *v7;
      swift_retain_n();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v7, 1);

      if (v6)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v8, **(v2 + 24));
      }
    }

    outlined consume of OpenURLAction?(*(v2 + 10), *(v2 + 11), *(v2 + 12), *(v2 + 13), *(v2 + 56));
  }

  else
  {
    v9 = *(v2 + 6);
    *(v2 + 40) = *(v2 + 5);
    *(v2 + 56) = v9;
    *(v2 + 36) = *(v2 + 56);
    outlined init with copy of OpenURLAction?((v2 + 40), (v2 + 120));
    swift_retain_n();
    outlined init with copy of OpenURLAction?((v2 + 40), (v2 + 120));
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(v4, (v2 + 40));

    outlined destroy of OpenURLAction?((v2 + 40));
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV020DefaultOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(*(v2 + 25), **(v2 + 24));
    }

    outlined destroy of OpenURLAction?((v2 + 40));
    if (v2[72] != 0xFF)
    {
      v10 = *(v2 + 26);
      v11 = *(v2 + 24);
      outlined destroy of OpenURLAction?((v2 + 40));
      v12 = *v11;
      swift_retain_n();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v11, 1);

      if (v10)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v12, **(v2 + 24));
      }
    }
  }

  free(v2);
}

uint64_t EnvironmentValues.openURL.setter(uint64_t a1, void (*a2)(void *, void *, _BYTE *), void (*a3)(uint64_t, void))
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (*(a1 + 33))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v15[0] = *a1;
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v16 = v10 | v9;
  v11 = *v3;
  swift_retain_n();
  outlined copy of OpenURLAction.Handler(v5, v6, v7, v8, v9);
  a2(v3, v15, v14);

  outlined consume of OpenURLAction.Handler(v5, v6, v7, v8, v9);
  if (v3[1])
  {
    a3(v11, *v3);
  }

  return outlined consume of OpenURLAction.Handler(v5, v6, v7, v8, v9);
}

void (*EnvironmentValues._openSensitiveURL.modify(void *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  *a1 = v3;
  v3[17] = v1;
  v3[18] = *v1;
  v3[19] = v1[1];
  EnvironmentValues._openSensitiveURL.getter((v3 + 10));
  return EnvironmentValues._openSensitiveURL.modify;
}

void EnvironmentValues.openURL.modify(char **a1, char a2, void (*a3)(uint64_t, char *, char *), void (*a4)(void, void))
{
  v5 = *a1;
  v6 = *(*a1 + 10);
  v8 = *(*a1 + 11);
  v7 = *(*a1 + 12);
  v9 = *(*a1 + 13);
  v10 = (*a1)[112];
  if ((*a1)[113])
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | v10;
  v13 = *(v5 + 19);
  v14 = *(v5 + 17);
  if (a2)
  {
    *v5 = v6;
    *(v5 + 1) = v8;
    *(v5 + 2) = v7;
    *(v5 + 3) = v9;
    *(v5 + 16) = v12;

    outlined copy of OpenURLAction.Handler(v6, v8, v7, v9, v10);

    outlined copy of OpenURLAction.Handler(v6, v8, v7, v9, v10);
    a3(v14, v5, v5 + 120);

    outlined consume of OpenURLAction.Handler(v6, v8, v7, v9, v10);
    if (v13)
    {
      a4(*(v5 + 18), **(v5 + 17));
    }

    outlined consume of OpenURLAction.Handler(v6, v8, v7, v9, v10);
    v15 = *(v5 + 10);
    v16 = *(v5 + 11);
    v17 = *(v5 + 12);
    v18 = *(v5 + 13);
    v19 = v5[112];
  }

  else
  {
    *(v5 + 5) = v6;
    *(v5 + 6) = v8;
    *(v5 + 7) = v7;
    *(v5 + 8) = v9;
    *(v5 + 36) = v12;
    swift_retain_n();
    outlined copy of OpenURLAction.Handler(v6, v8, v7, v9, v10);
    a3(v14, v5 + 40, v5 + 128);

    outlined consume of OpenURLAction.Handler(v6, v8, v7, v9, v10);
    if (v13)
    {
      a4(*(v5 + 18), **(v5 + 17));
    }

    v15 = v6;
    v16 = v8;
    v17 = v7;
    v18 = v9;
    v19 = v10;
  }

  outlined consume of OpenURLAction.Handler(v15, v16, v17, v18, v19);

  free(v5);
}

uint64_t View.onOpenURL(prefersInApp:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v9 = partial apply for closure #1 in View.onOpenURL(prefersInApp:);
  v10 = v7;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  View.environment<A>(_:_:)(KeyPath, &v9, a2, a3);

  return outlined consume of OpenURLAction.Handler(v9, v10, v11, v12, v13);
}

uint64_t closure #1 in View.onOpenURL(prefersInApp:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v9 = v8;
  v10 = *(v8 + 48);
  outlined init with take of URL?(v6, a2);
  *(a2 + v10) = a1;
  return (*(*(v9 - 8) + 56))(a2, 0, 2, v9);
}

uint64_t outlined init with copy of OpenURLAction?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OpenURLAction?(0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of OpenURLAction?(uint64_t a1)
{
  type metadata accessor for OpenURLAction?(0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeBufferWithCopyOfBuffer for OpenURLAction.SystemHandlerInput(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  return a1;
}

uint64_t destroy for OpenURLAction.SystemHandlerInput(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t initializeWithCopy for OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t assignWithCopy for OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v7 = *(a3 + 24);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t initializeWithTake for OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t assignWithTake for OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t type metadata completion function for OpenURLAction.SystemHandlerInput()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for OpenURLAction.Handler(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of OpenURLAction.Handler(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for OpenURLAction.Handler(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of OpenURLAction.Handler(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  outlined consume of OpenURLAction.Handler(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for OpenURLAction.Handler(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  outlined consume of OpenURLAction.Handler(v4, v6, v5, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for OpenURLAction.Handler(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OpenURLAction.Handler(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for OpenURLAction.Result(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for OpenURLAction.Result.ActionResult(0) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 2, v7))
  {
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2, 1, v13))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(a1, a2, v13);
      (*(v14 + 56))(a1, 0, 1, v13);
    }

    *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
    (*(v9 + 56))(a1, 0, 2, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

void *initializeWithCopy for OpenURLAction.Result(void *a1, const void *a2)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 2, v4))
  {
    v7 = *(*(type metadata accessor for OpenURLAction.Result.ActionResult(0) - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(a1, a2, v9);
      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *(a1 + *(v5 + 48)) = *(a2 + *(v5 + 48));
    (*(v6 + 56))(a1, 0, 2, v5);
    return a1;
  }
}

_BYTE *assignWithCopy for OpenURLAction.Result(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 2, v4);
  v9 = v7(a2, 2, v5);
  if (!v8)
  {
    if (v9)
    {
      outlined destroy of OpenURLAction.SystemHandlerInput(a1, type metadata accessor for (url: URL?, prefersInApp: Bool));
      goto LABEL_7;
    }

    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    v18 = v17(a1, 1, v15);
    v19 = v17(a2, 1, v15);
    if (v18)
    {
      if (!v19)
      {
        (*(v16 + 16))(a1, a2, v15);
        (*(v16 + 56))(a1, 0, 1, v15);
LABEL_18:
        a1[*(v5 + 48)] = a2[*(v5 + 48)];
        return a1;
      }
    }

    else
    {
      if (!v19)
      {
        (*(v16 + 24))(a1, a2, v15);
        goto LABEL_18;
      }

      (*(v16 + 8))(a1, v15);
    }

    type metadata accessor for URL?(0);
    memcpy(a1, a2, *(*(v20 - 8) + 64));
    goto LABEL_18;
  }

  if (!v9)
  {
    v10 = type metadata accessor for URL();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2, 1, v10))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(a1, a2, v10);
      (*(v11 + 56))(a1, 0, 1, v10);
    }

    a1[*(v5 + 48)] = a2[*(v5 + 48)];
    (*(v6 + 56))(a1, 0, 2, v5);
    return a1;
  }

LABEL_7:
  v13 = *(*(type metadata accessor for OpenURLAction.Result.ActionResult(0) - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t outlined destroy of OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *initializeWithTake for OpenURLAction.Result(void *a1, const void *a2)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 2, v4))
  {
    v7 = *(*(type metadata accessor for OpenURLAction.Result.ActionResult(0) - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 32))(a1, a2, v9);
      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *(a1 + *(v5 + 48)) = *(a2 + *(v5 + 48));
    (*(v6 + 56))(a1, 0, 2, v5);
    return a1;
  }
}

_BYTE *assignWithTake for OpenURLAction.Result(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 2, v4);
  v9 = v7(a2, 2, v5);
  if (!v8)
  {
    if (v9)
    {
      outlined destroy of OpenURLAction.SystemHandlerInput(a1, type metadata accessor for (url: URL?, prefersInApp: Bool));
      goto LABEL_7;
    }

    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    v18 = v17(a1, 1, v15);
    v19 = v17(a2, 1, v15);
    if (v18)
    {
      if (!v19)
      {
        (*(v16 + 32))(a1, a2, v15);
        (*(v16 + 56))(a1, 0, 1, v15);
LABEL_18:
        a1[*(v5 + 48)] = a2[*(v5 + 48)];
        return a1;
      }
    }

    else
    {
      if (!v19)
      {
        (*(v16 + 40))(a1, a2, v15);
        goto LABEL_18;
      }

      (*(v16 + 8))(a1, v15);
    }

    type metadata accessor for URL?(0);
    memcpy(a1, a2, *(*(v20 - 8) + 64));
    goto LABEL_18;
  }

  if (!v9)
  {
    v10 = type metadata accessor for URL();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2, 1, v10))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))(a1, a2, v10);
      (*(v11 + 56))(a1, 0, 1, v10);
    }

    a1[*(v5 + 48)] = a2[*(v5 + 48)];
    (*(v6 + 56))(a1, 0, 2, v5);
    return a1;
  }

LABEL_7:
  v13 = *(*(type metadata accessor for OpenURLAction.Result.ActionResult(0) - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t *initializeBufferWithCopyOfBuffer for OpenURLAction.Result.ActionResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 2, v7))
  {
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2, 1, v13))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(a1, a2, v13);
      (*(v14 + 56))(a1, 0, 1, v13);
    }

    *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
    (*(v9 + 56))(a1, 0, 2, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for OpenURLAction.Result(uint64_t a1)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = type metadata accessor for URL();
    v6 = *(v4 - 8);
    result = (*(v6 + 48))(a1, 1, v4);
    if (!result)
    {
      v5 = *(v6 + 8);

      return v5(a1, v4);
    }
  }

  return result;
}

void *initializeWithCopy for OpenURLAction.Result.ActionResult(void *a1, const void *a2, uint64_t a3)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(a2, 1, v11))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(a1, a2, v11);
      (*(v12 + 56))(a1, 0, 1, v11);
    }

    *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }
}

_BYTE *assignWithCopy for OpenURLAction.Result.ActionResult(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (!v10)
  {
    if (v11)
    {
      outlined destroy of OpenURLAction.SystemHandlerInput(a1, type metadata accessor for (url: URL?, prefersInApp: Bool));
      goto LABEL_7;
    }

    v17 = type metadata accessor for URL();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    v20 = v19(a1, 1, v17);
    v21 = v19(a2, 1, v17);
    if (v20)
    {
      if (!v21)
      {
        (*(v18 + 16))(a1, a2, v17);
        (*(v18 + 56))(a1, 0, 1, v17);
LABEL_18:
        a1[*(v7 + 48)] = a2[*(v7 + 48)];
        return a1;
      }
    }

    else
    {
      if (!v21)
      {
        (*(v18 + 24))(a1, a2, v17);
        goto LABEL_18;
      }

      (*(v18 + 8))(a1, v17);
    }

    type metadata accessor for URL?(0);
    memcpy(a1, a2, *(*(v22 - 8) + 64));
    goto LABEL_18;
  }

  if (!v11)
  {
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2, 1, v12))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(a1, a2, v12);
      (*(v13 + 56))(a1, 0, 1, v12);
    }

    a1[*(v7 + 48)] = a2[*(v7 + 48)];
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

LABEL_7:
  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

void *initializeWithTake for OpenURLAction.Result.ActionResult(void *a1, const void *a2, uint64_t a3)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(a2, 1, v11))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v12 + 32))(a1, a2, v11);
      (*(v12 + 56))(a1, 0, 1, v11);
    }

    *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }
}

_BYTE *assignWithTake for OpenURLAction.Result.ActionResult(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (!v10)
  {
    if (v11)
    {
      outlined destroy of OpenURLAction.SystemHandlerInput(a1, type metadata accessor for (url: URL?, prefersInApp: Bool));
      goto LABEL_7;
    }

    v17 = type metadata accessor for URL();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    v20 = v19(a1, 1, v17);
    v21 = v19(a2, 1, v17);
    if (v20)
    {
      if (!v21)
      {
        (*(v18 + 32))(a1, a2, v17);
        (*(v18 + 56))(a1, 0, 1, v17);
LABEL_18:
        a1[*(v7 + 48)] = a2[*(v7 + 48)];
        return a1;
      }
    }

    else
    {
      if (!v21)
      {
        (*(v18 + 40))(a1, a2, v17);
        goto LABEL_18;
      }

      (*(v18 + 8))(a1, v17);
    }

    type metadata accessor for URL?(0);
    memcpy(a1, a2, *(*(v22 - 8) + 64));
    goto LABEL_18;
  }

  if (!v11)
  {
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2, 1, v12))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 32))(a1, a2, v12);
      (*(v13 + 56))(a1, 0, 1, v12);
    }

    a1[*(v7 + 48)] = a2[*(v7 + 48)];
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

LABEL_7:
  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

uint64_t getEnumTag for OpenURLAction.Result.ActionResult(uint64_t a1)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t destructiveInjectEnumTag for OpenURLAction.Result.ActionResult(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

void type metadata accessor for OpenURLAction?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

Swift::Int LeafContentType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t key path setter for _GraphInputs.requestedLeafContentType : _GraphInputs(char *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(a2, v3);
}

uint64_t _GraphInputs.requestedLeafContentType.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(v1, a1);
}

void (*_GraphInputs.requestedLeafContentType.modify(uint64_t *a1))(uint64_t ***a1)
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
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _GraphInputs.requestedLeafContentType.modify;
}

void _GraphInputs.requestedLeafContentType.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(v1[2], v2);

  free(v1);
}

unint64_t lazy protocol witness table accessor for type LeafContentType and conformance LeafContentType()
{
  result = lazy protocol witness table cache variable for type LeafContentType and conformance LeafContentType;
  if (!lazy protocol witness table cache variable for type LeafContentType and conformance LeafContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LeafContentType and conformance LeafContentType);
  }

  return result;
}

ValueMetadata *Font.DynamicModifierTag.type.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = &type metadata for Font.WidthModifier;
      lazy protocol witness table accessor for type Font.WidthModifier and conformance Font.WidthModifier();
      break;
    case 2:
      v1 = &type metadata for Font.GradeModifier;
      lazy protocol witness table accessor for type Font.GradeModifier and conformance Font.GradeModifier();
      break;
    case 3:
      v1 = &type metadata for Font.DesignModifier;
      lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier();
      break;
    case 4:
      v1 = &type metadata for Font.StylisticAlternativeModifier;
      lazy protocol witness table accessor for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier();
      break;
    case 5:
      v1 = &type metadata for Font.LeadingModifier;
      lazy protocol witness table accessor for type Font.LeadingModifier and conformance Font.LeadingModifier();
      break;
    case 6:
      v1 = &type metadata for Font.VariationModifier;
      lazy protocol witness table accessor for type Font.VariationModifier and conformance Font.VariationModifier();
      break;
    case 7:
      v1 = &type metadata for Font.FeatureSettingModifier;
      lazy protocol witness table accessor for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier();
      break;
    case 8:
      v1 = &type metadata for Font.OpenTypeFeatureSettingModifier;
      lazy protocol witness table accessor for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier();
      break;
    case 9:
      v1 = &type metadata for Font.FeatureDictionariesSettingModifier;
      lazy protocol witness table accessor for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier();
      break;
    case 0xA:
      v1 = &type metadata for LanguageFontModifier;
      lazy protocol witness table accessor for type LanguageFontModifier and conformance LanguageFontModifier();
      break;
    case 0xB:
      v1 = &type metadata for LanguageAwareLineHeightRatioFontModifier;
      lazy protocol witness table accessor for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier();
      break;
    case 0xC:
      v1 = &type metadata for Font.ScalePointSizeModifier;
      lazy protocol witness table accessor for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier();
      break;
    case 0xD:
      v1 = &type metadata for Font.PointSizeModifier;
      lazy protocol witness table accessor for type Font.PointSizeModifier and conformance Font.PointSizeModifier();
      break;
    default:
      v1 = &type metadata for Font.WeightModifier;
      lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier();
      break;
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type Font.PointSizeModifier and conformance Font.PointSizeModifier()
{
  result = lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier;
  if (!lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier;
  if (!lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier;
  if (!lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier;
  if (!lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier()
{
  result = lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier;
  if (!lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier;
  if (!lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier;
  if (!lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier;
  if (!lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier()
{
  result = lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier;
  if (!lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier;
  if (!lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier;
  if (!lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LanguageFontModifier and conformance LanguageFontModifier()
{
  result = lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier;
  if (!lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier;
  if (!lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier;
  if (!lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier()
{
  result = lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier()
{
  result = lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier;
  if (!lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.VariationModifier and conformance Font.VariationModifier()
{
  result = lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier;
  if (!lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier;
  if (!lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier;
  if (!lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier;
  if (!lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier()
{
  result = lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier;
  if (!lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier;
  if (!lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier;
  if (!lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier;
  if (!lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier()
{
  result = lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier;
  if (!lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier;
  if (!lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier;
  if (!lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.GradeModifier and conformance Font.GradeModifier()
{
  result = lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier;
  if (!lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier;
  if (!lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier;
  if (!lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.WidthModifier and conformance Font.WidthModifier()
{
  result = lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier;
  if (!lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier;
  if (!lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier;
  if (!lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier;
  if (!lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier);
  }

  return result;
}

uint64_t Font.DynamicModifierTag.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Font.DynamicModifierTag.init(rawValue:), v3);

  v7 = 14;
  if (v5 < 0xE)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

unint64_t Font.DynamicModifierTag.rawValue.getter()
{
  result = 0x746867696577;
  switch(*v0)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 0x6564617267;
      break;
    case 3:
      result = 0x6E6769736564;
      break;
    case 4:
      v2 = 5;
      goto LABEL_7;
    case 5:
      result = 0x676E696461656CLL;
      break;
    case 6:
      result = 0x6F69746169726176;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      v2 = 10;
LABEL_7:
      result = v2 | 0xD000000000000010;
      break;
    case 0xA:
      result = 0x65676175676E616CLL;
      break;
    case 0xB:
      result = 0x67696548656E696CLL;
      break;
    case 0xC:
      result = 0x696F50656C616373;
      break;
    case 0xD:
      result = 0x746E696F50746573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Font.DynamicModifierTag()
{
  v0 = Font.DynamicModifierTag.rawValue.getter();
  v2 = v1;
  if (v0 == Font.DynamicModifierTag.rawValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font.DynamicModifierTag()
{
  Hasher.init(_seed:)();
  Font.DynamicModifierTag.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Font.DynamicModifierTag()
{
  Font.DynamicModifierTag.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.DynamicModifierTag()
{
  Hasher.init(_seed:)();
  Font.DynamicModifierTag.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Font.DynamicModifierTag@<X0>(unint64_t *a1@<X8>)
{
  result = Font.DynamicModifierTag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double Font.WeightModifier.codingProxy.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double static Font.WeightModifier.unwrap(codingProxy:)@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void Font.DesignModifier.codingProxy.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      goto LABEL_8;
    }

    v1 = MEMORY[0x1E69658B8];
    v2 = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
LABEL_11:
      v3 = v2;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }

    __break(1u);
  }

  if (v1 != 2)
  {
    goto LABEL_10;
  }

  v2 = *MEMORY[0x1E69658C8];
  if (*MEMORY[0x1E69658C8])
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_8:
  v2 = *MEMORY[0x1E69658D0];
  if (*MEMORY[0x1E69658D0])
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_10:
  v2 = *MEMORY[0x1E69658C0];
  if (*MEMORY[0x1E69658C0])
  {
    goto LABEL_11;
  }

  __break(1u);
}

void static Font.DesignModifier.unwrap(codingProxy:)(char *a1@<X8>)
{
  v2 = MEMORY[0x193ABEC20]();
  Font.Design.init(ctDesignIdentifier:)(v2, &v4);
  v3 = v4;
  if (v4 == 4)
  {
    v3 = 0;
  }

  *a1 = v3;
}

void static Font.Design.unwrap(codingProxy:)(char *a1@<X8>)
{
  v2 = MEMORY[0x193ABEC20]();
  Font.Design.init(ctDesignIdentifier:)(v2, &v4);
  v3 = v4;
  if (v4 == 4)
  {
    v3 = 0;
  }

  *a1 = v3;
}

void protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.DesignModifier(void *a1@<X0>, char *a2@<X8>)
{
  v3 = MEMORY[0x193ABEC20](*a1, a1[1]);
  Font.Design.init(ctDesignIdentifier:)(v3, &v5);
  v4 = v5;
  if (v5 == 4)
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t static Font.LeadingModifier.unwrap(codingProxy:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 0x10000)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if (result == 0x8000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!result)
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

_DWORD *protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.LeadingModifier@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  v2 = *result == 0x8000;
  if (*result == 0x10000)
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

double Font.VariationModifier.codingProxy.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  return result;
}

double static Font.VariationModifier.unwrap(codingProxy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance Font.VariationModifier@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.VariationModifier@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

__n128 Font.FeatureSettingModifier.codingProxy.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 static Font.FeatureSettingModifier.unwrap(codingProxy:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *Font.FeatureDictionariesSettingModifier.codingProxy.getter()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193AC03C0](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v8 = *(v10 + 16);
      v7 = *(v10 + 24);
      if (v8 >= v7 >> 1)
      {
        v9 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v9;
      }

      ++v5;
      *(v10 + 16) = v8 + 1;
      *(v10 + 8 * v8 + 32) = v6;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static Font.FeatureDictionariesSettingModifier.unwrap(codingProxy:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = result;
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = (v5 + 32);
    do
    {
      v7 = *v6++;
      v8 = v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
    v4 = v9;
  }

  *a2 = v4;
  return result;
}

void *protocol witness for CodableByProxy.codingProxy.getter in conformance Font.FeatureDictionariesSettingModifier@<X0>(void *a1@<X8>)
{
  result = Font.FeatureDictionariesSettingModifier.codingProxy.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance LanguageFontModifier@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance LanguageFontModifier@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Font.VariationDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.VariationDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.VariationDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.VariationDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.VariationDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys, &unk_1F005D4F8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v8;
  v15 = 0;
  type metadata accessor for ProxyCodable<Font.VariationAxisIdentifier>();
  lazy protocol witness table accessor for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Font.VariationAxisIdentifier>);
  v10 = v12;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v10)
  {
    v14 = v9;
    v13 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Font.VariationDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  type metadata accessor for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.VariationDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys, &unk_1F005D4F8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v14[0];
    type metadata accessor for ProxyCodable<Font.VariationAxisIdentifier>();
    v16 = 0;
    lazy protocol witness table accessor for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Font.VariationAxisIdentifier>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v17;
    v15 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v8, v5);
    v13 = v14[1];
    *v10 = v11;
    *(v10 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Font.FeatureSettingDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x726F7463656C6573;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.FeatureSettingDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.FeatureSettingDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.FeatureSettingDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.FeatureSettingDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.FeatureSettingDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys, &unk_1F005D468, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v10[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  v8 = v10[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v8)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Font.FeatureSettingDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  type metadata accessor for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.FeatureSettingDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys, &unk_1F005D468, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v14;
    v16 = 0;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
    v9[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableFontWeight.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t CodableFontWeight.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v7[6];
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys);
  }

  return result;
}

void type metadata accessor for ProxyCodable<Font.VariationAxisIdentifier>()
{
  if (!lazy cache variable for type metadata for ProxyCodable<Font.VariationAxisIdentifier>)
  {
    v0 = type metadata accessor for ProxyCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProxyCodable<Font.VariationAxisIdentifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag()
{
  result = lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag;
  if (!lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag;
  if (!lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag;
  if (!lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag;
  if (!lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag);
  }

  return result;
}

void type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>()
{
  if (!lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>)
  {
    lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative();
    v0 = type metadata accessor for RawRepresentableProxy();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>);
    }
  }
}

void type metadata accessor for [JSONCodable<CFDictionaryRef>](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type JSONCodable<CFDictionaryRef> and conformance JSONCodable<A>()
{
  return lazy protocol witness table accessor for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type JSONCodable<CFDictionaryRef> and conformance JSONCodable<A>, type metadata accessor for JSONCodable<CFDictionaryRef>);
}

{
  return lazy protocol witness table accessor for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type JSONCodable<CFDictionaryRef> and conformance JSONCodable<A>, type metadata accessor for JSONCodable<CFDictionaryRef>);
}

uint64_t lazy protocol witness table accessor for type [JSONCodable<CFDictionaryRef>] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [JSONCodable<CFDictionaryRef>](255, &lazy cache variable for type metadata for [JSONCodable<CFDictionaryRef>], type metadata accessor for JSONCodable<CFDictionaryRef>, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CodableFontWeight(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight();
  result = lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Font.VariationDefinition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[16])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Font.VariationDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t RemovedElementsCollection.removedIndices.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for RangeSet();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RemovedElementsCollection.init(base:removedIndices:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a1;
  v53 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v38 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for Range();
  v12 = type metadata accessor for Optional();
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v38 - v16;
  v17 = type metadata accessor for RangeSet.Ranges();
  v48 = *(v17 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - v19;
  v45 = *(a3 - 8);
  (*(v45 + 16))(a5, v52, a3, v18);
  v47 = a4;
  v21 = type metadata accessor for RemovedElementsCollection();
  v22 = v21[9];
  v40 = AssociatedConformanceWitness;
  v23 = type metadata accessor for RangeSet();
  v42 = *(v23 - 8);
  v24 = *(v42 + 16);
  v50 = a5;
  v24(a5 + v22, v53, v23);
  v44 = v23;
  RangeSet.ranges.getter();
  swift_getWitnessTable();
  Collection.first.getter();
  v25 = *(v51 + 48);
  v46 = v11;
  if (v25(v14, 1, v11) == 1)
  {
    v26 = v49;
    (*(v38 + 8))(v14, v39);
    v27 = v52;
LABEL_6:
    dispatch thunk of Collection.startIndex.getter();
    v34 = RangeSet.Ranges.startIndex.getter();
    goto LABEL_7;
  }

  v39 = v21;
  (*(v51 + 32))(v43, v14, v46);
  v28 = v49;
  v29 = v52;
  dispatch thunk of Collection.startIndex.getter();
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v41 + 8))(v28, AssociatedTypeWitness);
  v27 = v29;
  if ((v30 & 1) == 0)
  {
    v26 = v28;
    (*(v51 + 8))(v43, v46);
    v21 = v39;
    goto LABEL_6;
  }

  v54 = RangeSet.Ranges.startIndex.getter();
  swift_getWitnessTable();
  RandomAccessCollection<>.index(after:)();
  v31 = v55;
  v32 = v46;
  v33 = v43;
  (*(v41 + 16))(v28, &v43[*(v46 + 36)], AssociatedTypeWitness);
  (*(v51 + 8))(v33, v32);
  v34 = v31;
  v26 = v28;
  v21 = v39;
LABEL_7:
  v35 = v50;
  RemovedElementsCollection.Index.init(base:nextRangeIndex:)(v26, v34, v50 + v21[10]);
  dispatch thunk of Collection.endIndex.getter();
  v36 = RangeSet.Ranges.count.getter();
  (*(v42 + 8))(v53, v44);
  (*(v45 + 8))(v27, a3);
  (*(v48 + 8))(v20, v17);
  return RemovedElementsCollection.Index.init(base:nextRangeIndex:)(v26, v36, v35 + v21[11]);
}

uint64_t RemovedElementsCollection.Index.init(base:nextRangeIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  result = type metadata accessor for RemovedElementsCollection.Index();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t static RemovedElementsCollection.Index.< infix(_:_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
}

uint64_t static RemovedElementsCollection.Index.== infix(_:_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t RemovedElementsCollection.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for RemovedElementsCollection.Index();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RemovedElementsCollection.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for RemovedElementsCollection.Index();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RemovedElementsCollection.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = dispatch thunk of Collection.subscript.read();
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v4, AssociatedTypeWitness);
  return v2(&v7, 0);
}

uint64_t RemovedElementsCollection.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v41 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Range();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v32 - v8;
  v38 = type metadata accessor for RangeSet.Ranges();
  v42 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v32 - v9;
  v44 = type metadata accessor for RemovedElementsCollection.Index();
  v10 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v12 = &v32 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v43 = v3;
  dispatch thunk of Collection.endIndex.getter();
  v37 = AssociatedConformanceWitness;
  v17 = dispatch thunk of static Comparable.< infix(_:_:)();
  v33 = v13;
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  if ((v17 & 1) == 0)
  {
    return (*(v10 + 16))(v41, v43 + *(v40 + 44), v44);
  }

  v32 = v10;
  v18 = v44;
  (*(v10 + 16))(v12, a1, v44);
  dispatch thunk of Collection.formIndex(after:)();
  v19 = *(a1 + *(v18 + 36));
  v20 = *(v40 + 36);
  type metadata accessor for RangeSet();
  v21 = v39;
  RangeSet.ranges.getter();
  v22 = v38;
  v23 = RangeSet.Ranges.count.getter();
  v24 = *(v42 + 8);
  v42 += 8;
  v24(v21, v22);
  if (v19 < v23)
  {
    v40 = v20;
    v25 = v24;
    v26 = v39;
    RangeSet.ranges.getter();
    v27 = v34;
    RangeSet.Ranges.subscript.getter();
    v25(v26, v22);
    v28 = v27;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v29 = v36;
      (*(v33 + 24))(v12, &v27[*(v36 + 36)], AssociatedTypeWitness);
      v30 = v39;
      RangeSet.ranges.getter();
      v45 = *&v12[*(v44 + 36)];
      swift_getWitnessTable();
      dispatch thunk of Collection.index(after:)();
      v25(v30, v22);
      (*(v35 + 8))(v28, v29);
    }

    else
    {
      (*(v35 + 8))(v27, v36);
    }
  }

  return (*(v32 + 32))(v41, v12, v44);
}