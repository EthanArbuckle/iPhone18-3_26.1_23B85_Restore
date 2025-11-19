uint64_t specialized static ApplicationCapabilities.RatingWarning.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
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

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    if (v10 && (a1[3] == a2[3] && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

BOOL specialized static ApplicationCapabilities.__derived_struct_equals(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || ((a1[24] ^ a2[24]))
  {
    return 0;
  }

  if ((_sSh2eeoiySbShyxG_ABtFZ9MusicCore23ApplicationCapabilitiesV7ServiceO_Tt1g5(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZ9MusicCore23ApplicationCapabilitiesV7ServiceO_Tt1g5(*(a1 + 5), *(a2 + 5)) & 1) == 0 || *(a1 + 6) != *(a2 + 6))
  {
    return 0;
  }

  v5 = a1;
  v6 = a2;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = *(a2 + 10);
  if (v7)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 7) != *(a2 + 7) || v7 != v10)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v6 = a2;
      v5 = a1;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v9)
  {
    if (!v12)
    {
      return 0;
    }

    if (v8 != v11 || v9 != v12)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v6 = a2;
      v5 = a1;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v15 = *(v5 + 11);
  v16 = *(v6 + 11);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for ICMusicSubscriptionStatus);
    v17 = v16;
    v18 = v15;
    v19 = static NSObject.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if ((specialized == infix<A>(_:_:)(a1[96], a2[96]) & 1) == 0)
  {
    return 0;
  }

  v20 = a1[112];
  v21 = *(a1 + 15);
  v22 = a2[112];
  v23 = *(a2 + 15);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore13TabIdentifierO_Tt1g5(*(a1 + 13), *(a2 + 13)) & 1) == 0)
  {
    return 0;
  }

  if (v20 == 7)
  {
    if (v22 != 7)
    {
      return 0;
    }
  }

  else if (v22 == 7 || (specialized == infix<A>(_:_:)(v20, v22) & 1) == 0)
  {
    return 0;
  }

  return (_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore23ApplicationCapabilitiesV4TabsV13Configuration33_3C92A9FA31E0FE3D8D536795352BB0D1LLV_Tt1g5(v21, v23) & 1) != 0;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = 0;
  v34 = result + 32;
  v4 = &_swiftEmptyArrayStorage;
  v31 = *(result + 16);
LABEL_3:
  v33 = v4;
  while (v3 < v2)
  {
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_63;
    }

    v6 = (v34 + 2 * v3);
    v7 = v6[1];
    ++v3;
    v8 = *v6;
    if (v8 == 2)
    {
      v21 = *(a2 + 32);
      if (!*(v21 + 16))
      {
        goto LABEL_6;
      }

      v32 = v6[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v21 + 32);
      v24 = v22 & ~v23;
      if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = *(*(v21 + 48) + v24);
          if (v26 <= 4)
          {
            if (v26 == 2)
            {
              goto LABEL_57;
            }
          }

          else if (*(*(v21 + 48) + v24) > 7u && v26 == 8 && 0x80000001004C4B80 == 0x80000001004C4BC0)
          {
LABEL_57:

LABEL_49:

            LOBYTE(v8) = 2;
LABEL_50:
            v2 = v31;
            v4 = v33;
            v7 = v32;
LABEL_51:
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1);
            }

            v29 = v4[2];
            v28 = v4[3];
            if (v29 >= v28 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
            }

            v4[2] = v29 + 1;
            v30 = v4 + 2 * v29;
            v30[32] = v8;
            v30[33] = v7;
            if (v5 == v2)
            {
              return v4;
            }

            goto LABEL_3;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            goto LABEL_49;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }
    }

    else
    {
      if (v8 == 6)
      {
        v15 = *(a2 + 32);
        if (!*(v15 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (*(*(v15 + 48) + v18) > 2u || !*(*(v15 + 48) + v18) || *(*(v15 + 48) + v18) == 2)
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v20)
            {
              goto LABEL_48;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_48:

          LOBYTE(v8) = 6;
          goto LABEL_50;
        }
      }

      else
      {
        if (v8 != 4)
        {
          goto LABEL_51;
        }

        v9 = *(a2 + 32);
        if (!*(v9 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();
        v11 = -1 << *(v9 + 32);
        v12 = v10 & ~v11;
        if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (*(*(v9 + 48) + v12) > 5u || *(*(v9 + 48) + v12) < 4u || *(*(v9 + 48) + v12) == 5)
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v14)
            {
              goto LABEL_47;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_47:

          LOBYTE(v8) = 4;
          goto LABEL_50;
        }
      }

LABEL_4:
      v2 = v31;
    }

    v4 = v33;
LABEL_6:
    if (v5 == v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

void specialized ApplicationCapabilities.RatingWarning.init(bag:)(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 numberForBagKey:v4];

    if (v5)
    {
      static Int._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    v10 = v3;
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 stringForBagKey:v11];

    if (v12)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v13;
    }

    else
    {

      v8 = 0;
      v9 = 0;
    }

    v14 = v10;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 stringForBagKey:v15];

    if (v16)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v17;
    }

    else
    {

      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = 0x7FFFFFFFFFFFFFFFLL;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v6;
  a2[4] = v7;
}

char *specialized ApplicationCapabilities.Tabs.init(configurations:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = &_swiftEmptyArrayStorage;
    do
    {
      v5 = *v2;
      v2 += 2;
      v4 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
      }

      v7 = *(v3 + 2);
      v6 = *(v3 + 3);
      if (v7 >= v6 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v3);
      }

      *(v3 + 2) = v7 + 1;
      v3[v7 + 32] = 0x5040302010100uLL >> (8 * v4);
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v29 = v3;
  if (one-time initialization token for mobileiPod != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    if (!static NSUserDefaults.mobileiPod)
    {
      goto LABEL_16;
    }

    lazy protocol witness table accessor for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod();
    lazy protocol witness table accessor for type String and conformance String();
    NSUserDefaults.subscript.getter(&v27);
    if (!v28)
    {
      outlined destroy of TaskPriority?(&v27, &_sypSgMd_0);
LABEL_16:
      v8 = 1;
      goto LABEL_17;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v8 = v26 ^ 1;
LABEL_17:
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 != 1 || (v11 = *(v3 + 2)) == 0)
    {
LABEL_28:
      v14 = *(v3 + 2);
      if (!v14)
      {
        return v3;
      }

      goto LABEL_29;
    }

    v12 = 0;
    while (1)
    {
      if (v12 >= *(v3 + 2))
      {
        goto LABEL_57;
      }

      if (v3[v12 + 32] > 2u && v3[v12 + 32] <= 4u && v3[v12 + 32] != 3)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_51;
      }

      if (v11 == ++v12)
      {
        goto LABEL_28;
      }
    }

LABEL_51:
    v22 = specialized Array.remove(at:)(v12);
    v3 = v29;
    v23 = *(v29 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v23 >= *(v3 + 3) >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v23 + 1, 1, v3);
      v29 = v3;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v22);
    v14 = *(v3 + 2);
    if (!v14)
    {
      return v3;
    }

LABEL_29:
    v15 = (v8 & 1) == 0;
    if (v8)
    {
      v16 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v16 = 0x7972617262696CLL;
    }

    if (v15)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE900000000000077;
    }

    v18 = 0;
    while (v18 < *(v3 + 2))
    {
      v19 = v3[v18 + 32];
      if (v19 > 2)
      {
        goto LABEL_38;
      }

      if (v3[v18 + 32])
      {
        if (v19 != 1)
        {
          goto LABEL_38;
        }

        v21 = 0xE900000000000077;
        if (v16 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v21 = 0xE700000000000000;
        if (v16 != 0x7972617262696CLL)
        {
          goto LABEL_38;
        }
      }

      if (v21 == v17)
      {

LABEL_40:

        return v3;
      }

LABEL_38:
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0 && v14 != ++v18)
      {
        continue;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }
}

uint64_t specialized Set.isSuperset<A>(of:)(uint64_t a1, uint64_t a2)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 1;
  }

  v3 = 0;
  v29 = a1 + 32;
  v4 = a2 + 56;
  while (*(a2 + 16))
  {
    v5 = *(v29 + v3);
    Hasher.init(_seed:)();
    ApplicationCapabilities.Service.description.getter(v5);
    String.hash(into:)();

    v6 = Hasher._finalize()();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      break;
    }

    v30 = v3 + 1;
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8);
      if (v10 <= 4)
      {
        v13 = 0x6C6169636F73;
        if (v10 != 3)
        {
          v13 = 0x6F69646172;
        }

        v14 = 0xE600000000000000;
        if (v10 != 3)
        {
          v14 = 0xE500000000000000;
        }

        if (v10 == 2)
        {
          v13 = 0xD000000000000013;
          v14 = 0x80000001004C4B80;
        }

        v15 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v8))
        {
          v15 = 0x636973756DLL;
        }

        v16 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v8))
        {
          v16 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v11 = v15;
        }

        else
        {
          v11 = v13;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }
      }

      else if (*(*(a2 + 48) + v8) > 7u)
      {
        if (v10 == 8)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004C4BC0;
        }

        else if (v10 == 9)
        {
          v11 = 0xD000000000000011;
          v12 = 0x80000001004C4BE0;
        }

        else
        {
          v11 = 0x6C62616E45696C6DLL;
          v12 = 0xEA00000000006465;
        }
      }

      else if (v10 == 5)
      {
        v12 = 0xE600000000000000;
        v11 = 0x73656E757469;
      }

      else
      {
        if (v10 == 6)
        {
          v11 = 0x74634170756F7267;
        }

        else
        {
          v11 = 0x746963696C707865;
        }

        if (v10 == 6)
        {
          v12 = 0xED00007974697669;
        }

        else
        {
          v12 = 0xEF746E65746E6F43;
        }
      }

      if (v5 > 4)
      {
        v17 = 0xD000000000000011;
        if (v5 != 9)
        {
          v17 = 0x6C62616E45696C6DLL;
        }

        v18 = 0xEA00000000006465;
        if (v5 == 9)
        {
          v18 = 0x80000001004C4BE0;
        }

        if (v5 == 8)
        {
          v17 = 0xD000000000000013;
          v18 = 0x80000001004C4BC0;
        }

        v19 = 0x746963696C707865;
        if (v5 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        v20 = 0xEF746E65746E6F43;
        if (v5 == 6)
        {
          v20 = 0xED00007974697669;
        }

        if (v5 == 5)
        {
          v19 = 0x73656E757469;
          v20 = 0xE600000000000000;
        }

        if (v5 <= 7)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v5 <= 7)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        if (v11 == v21)
        {
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (v5 <= 1)
      {
        break;
      }

      v23 = 0x6C6169636F73;
      if (v5 != 3)
      {
        v23 = 0x6F69646172;
      }

      v24 = 0xE600000000000000;
      if (v5 != 3)
      {
        v24 = 0xE500000000000000;
      }

      if (v5 == 2)
      {
        v25 = 0xD000000000000013;
      }

      else
      {
        v25 = v23;
      }

      if (v5 == 2)
      {
        v22 = 0x80000001004C4B80;
      }

      else
      {
        v22 = v24;
      }

      if (v11 == v25)
      {
        goto LABEL_74;
      }

LABEL_75:
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_80;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v5)
    {
      v22 = 0xE500000000000000;
      if (v11 == 0x636973756DLL)
      {
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    v22 = 0xEB00000000736F65;
    if (v11 != 0x646956636973756DLL)
    {
      goto LABEL_75;
    }

LABEL_74:
    if (v12 != v22)
    {
      goto LABEL_75;
    }

LABEL_80:
    v3 = v30;
    if (v30 == v28)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized static ICURLBag.tabConfigurations(for:in:)(unsigned __int8 a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_59:
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v43 = &outlined read-only object #2 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
        specialized Array.append<A>(contentsOf:)(&outlined read-only object #3 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter);
        return v43;
      }

      else
      {
        return &outlined read-only object #4 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
      }
    }

    else if (a1)
    {
      return &outlined read-only object #0 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
    }

    else
    {
      return &outlined read-only object #1 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
    }
  }

  v3 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v40 = v3;
  v41 = &_swiftEmptyArrayStorage;
  v37 = a1;
  if (!v7)
  {
    while (1)
    {
LABEL_5:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v11 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_9;
      }
    }

    result = v41;
    if (v41[2])
    {
      return result;
    }

    goto LABEL_59;
  }

  while (1)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);

    v18._countAndFlagsBits = v15;
    v18._object = v16;
    v19 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of static ICURLBag.tabConfigurations(for:in:), v18);

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v21 = 0x6269726373627573;
        v20 = 0xEA00000000007265;
      }

      else
      {
        if (v19 != 3)
        {
          goto LABEL_35;
        }

        v21 = 0x6275536563696F76;
        v20 = 0xEF72656269726373;
      }
    }

    else if (v19)
    {
      if (v19 != 1)
      {
        goto LABEL_35;
      }

      v20 = 0xE700000000000000;
      v21 = 0x63697373616C63;
    }

    else
    {
      v21 = 0x6564696365646E75;
      v20 = 0xE900000000000064;
    }

    v22 = 0x6275536563696F76;
    if (a1 == 2)
    {
      v22 = 0x6269726373627573;
    }

    v23 = 0xEF72656269726373;
    if (a1 == 2)
    {
      v23 = 0xEA00000000007265;
    }

    v24 = 0x6564696365646E75;
    if (a1)
    {
      v24 = 0x63697373616C63;
    }

    v25 = 0xE900000000000064;
    if (a1)
    {
      v25 = 0xE700000000000000;
    }

    v26 = a1 <= 1u ? v24 : v22;
    v27 = a1 <= 1u ? v25 : v23;
    if (v21 == v26 && v20 == v27)
    {
      break;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_38;
    }

LABEL_35:

    v3 = v40;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

LABEL_38:

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v43 = &outlined read-only object #2 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
      result = specialized Array.append<A>(contentsOf:)(&outlined read-only object #3 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter);
      a1 = v37;
      v29 = v43;
    }

    else
    {
      v29 = &outlined read-only object #4 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
    }

LABEL_44:
    v39 = v29;
  }

  else
  {
    v39 = &outlined read-only object #0 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
    if (!a1)
    {
      v29 = &outlined read-only object #1 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
      goto LABEL_44;
    }
  }

  v38 = *(v17 + 16);
  if (!v38)
  {
    v41 = &_swiftEmptyArrayStorage;
LABEL_56:

    goto LABEL_35;
  }

  v30 = 0;
  v41 = &_swiftEmptyArrayStorage;
  while (v30 < *(v17 + 16))
  {
    v43 = *(v17 + 32 + 8 * v30);

    closure #1 in static ICURLBag.tabConfigurations(for:in:)(&v43, v39, &v42);

    v32 = v42;
    if ((v42 & 0xFF00) != 0x200)
    {
      v33 = v41;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
        v33 = result;
      }

      v34 = v33;
      v35 = v33[2];
      v41 = v34;
      v36 = v34[3];
      if (v35 >= v36 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v35 + 1, 1, v41);
        v41 = result;
      }

      v41[2] = v35 + 1;
      v31 = v41 + 2 * v35;
      v31[32] = v32;
      v31[33] = HIBYTE(v32) & 1;
      a1 = v37;
    }

    if (v38 == ++v30)
    {
      goto LABEL_56;
    }
  }

LABEL_68:
  __break(1u);
  return result;
}

id specialized ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v6 = objc_opt_self();
  result = [v6 sharedCloudController];
  if (result)
  {
    v8 = result;
    v9 = [result hasProperNetworkConditionsToShowCloudMedia];

    *(&v85 + 1) = v9;
    *(&v85 + 1) = 0;
    *&v86 = 0;
    *&v87 = &_swiftEmptySetSingleton;
    *(&v87 + 1) = &_swiftEmptySetSingleton;
    *v88 = 0x7FFFFFFFFFFFFFFFLL;
    memset(&v88[8], 0, 32);
    v10 = objc_opt_self();
    v11 = [v10 sharedController];
    v12 = [v11 musicSubscriptionStatus];

    v13 = 1;
    LOBYTE(v89) = 1;
    *(&v89 + 1) = specialized ApplicationCapabilities.Tabs.init(configurations:)(&_swiftEmptyArrayStorage);
    LOBYTE(v90) = v14;
    *(&v90 + 1) = v15;
    v16 = [v10 sharedController];
    v17 = [objc_opt_self() sharedConnection];
    v72 = [v6 sharedCloudController];
    v74 = v16;
    v18 = [v16 musicSubscriptionStatus];
    v19 = v18;
    if (v18)
    {
      v71 = 2 * ([v18 capabilities] & 1);
    }

    else
    {
      v71 = 0;
    }

    v20 = [objc_opt_self() defaultIdentityStore];
    ICUserIdentityStore.accountDSID.getter();
    v22 = v21;

    LOBYTE(v85) = (v22 & 1) == 0;
    if (v19)
    {
      v23 = v19;
      *&v86 = [v23 statusType];
      v24 = [v23 capabilities];

      *(&v85 + 1) = v24;
      v13 = (v24 & 1) == 0;
    }

    v25 = [objc_opt_self() sharedPrivacyInfo];
    v26 = [v25 privacyAcknowledgementRequiredForMusic];

    BYTE8(v86) = v26 ^ 1;
    v27 = v74;
    if (closure #1 in implicit closure #1 in ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:)(v19, v74))
    {
      specialized Set._Variant.insert(_:)(v84, 2);
    }

    if (one-time initialization token for SharedRadioAvailabilityController != -1)
    {
      swift_once();
    }

    if ([SharedRadioAvailabilityController isRadioAvailable])
    {
      specialized Set._Variant.insert(_:)(v84, 4);
    }

    if (closure #2 in implicit closure #3 in ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:)(v17, a1))
    {
      specialized Set._Variant.insert(_:)(v84, 3);
    }

    if (a1)
    {
      v28 = String._bridgeToObjectiveC()();
      v29 = [a1 BOOLValueForBagKey:v28];

      if (v29)
      {
        specialized Set._Variant.insert(_:)(v84, 9);
      }
    }

    if (v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = String._bridgeToObjectiveC()();

      v31 = [v17 effectiveBoolValueForSetting:v30];

      if (v31 != 2)
      {
        specialized Set._Variant.insert(_:)(v84, 6);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = String._bridgeToObjectiveC()();

      v33 = [v17 effectiveBoolValueForSetting:v32];

      if (v33 != 2)
      {
        specialized Set._Variant.insert(_:)(v84, 0);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = String._bridgeToObjectiveC()();

      v35 = [v17 effectiveBoolValueForSetting:v34];

      if (v35 != 2)
      {
        specialized Set._Variant.insert(_:)(v84, 1);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = String._bridgeToObjectiveC()();

      v37 = [v17 effectiveBoolValueForSetting:v36];

      if (v37 != 2)
      {
        specialized Set._Variant.insert(_:)(v84, 5);
      }

      *&v88[40] = v19;
      v38 = v19;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = String._bridgeToObjectiveC()();

      v40 = [v17 effectiveBoolValueForSetting:v39];

      if (v40 != 2)
      {
        specialized Set._Variant.insert(_:)(v84, 8);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = String._bridgeToObjectiveC()();

      v42 = [v17 isBoolSettingLockedDownByRestrictions:v41];

      v27 = v74;
      if (v42)
      {
        specialized Set._Variant.insert(_:)(v84, 7);
      }
    }

    else
    {
      *&v88[40] = v19;
      v43 = v19;
    }

    v44 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore23ApplicationCapabilitiesV7ServiceOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = 2;
    LOBYTE(v44) = specialized Set.isSuperset<A>(of:)(inited, v44);
    swift_setDeallocating();
    if (v44)
    {
      LOBYTE(v89) = v71;
      if (v19)
      {
        v46 = v19;
        if ([v46 statusType] == 3)
        {
          if (one-time initialization token for capabilities != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          __swift_project_value_buffer(v47, static Logger.capabilities);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Unexpectedly found a Voice subscriber! 😡", v50, 2u);
            v27 = v74;
          }
        }
      }
    }

    else
    {
      v71 = 1;
    }

    if (a1)
    {
      v51 = v13;
    }

    else
    {
      v51 = 1;
    }

    if ((v51 & 1) == 0)
    {
      v52 = ICURLBag.ismliEnabled.getter();
      if (v52 != 2 && (v52 & 1) != 0)
      {
        v53 = ICURLBag.stringsFromServer.getter();
        if (v53 != 2 && (v53 & 1) != 0)
        {
          specialized Set._Variant.insert(_:)(v84, 10);
        }
      }
    }

    v54 = v72;
    if (v72)
    {
      v55 = v72;
      if ([v55 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        v56 = 0;
      }

      else
      {
        v56 = [v55 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      v56 = 0;
    }

    BYTE1(v85) = v56;
    BYTE2(v85) = [v27 isCloudLibraryEnabled];
    v57 = a1;
    specialized ApplicationCapabilities.RatingWarning.init(bag:)(a1, v88);
    if (a3)
    {
      *&v84[0] = &outlined read-only object #0 of ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:);
      specialized Array.append<A>(contentsOf:)(&outlined read-only object #1 of ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:));
      v59 = *&v84[0];
    }

    else
    {
      v60 = *(a2 + 16);
      __chkstk_darwin(v58);
      os_unfair_lock_lock((v60 + 44));
      partial apply for closure #1 in MusicTabsDictionaryProvider.musicTabs(fallingBackToBag:)((v60 + 16), v84);
      os_unfair_lock_unlock((v60 + 44));
      if (*&v84[0])
      {
        v59 = specialized static ICURLBag.tabConfigurations(for:in:)(v71, *&v84[0]);

        v54 = v72;
      }

      else
      {
        v54 = v72;
        if (v71)
        {
          if (v71 == 1)
          {
            v59 = &outlined read-only object #0 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
          }

          else
          {
            *&v84[0] = &outlined read-only object #2 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
            specialized Array.append<A>(contentsOf:)(&outlined read-only object #3 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter);
            v59 = *&v84[0];
          }
        }

        else
        {
          v59 = &outlined read-only object #1 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
        }
      }
    }

    v61 = specialized _ArrayProtocol.filter(_:)(v59, &v85);

    v62 = specialized ApplicationCapabilities.Tabs.init(configurations:)(v61);
    LOBYTE(v61) = v63;
    v65 = v64;

    *(&v89 + 1) = v62;
    LOBYTE(v90) = v61;
    *(&v90 + 1) = v65;
    v80 = *&v88[16];
    v81 = *&v88[32];
    v76 = v85;
    v77 = v86;
    v78 = v87;
    v79 = *v88;
    v82 = v89;
    v83 = v90;
    v84[6] = v89;
    v84[7] = v90;
    v84[2] = v87;
    v84[3] = *v88;
    v84[0] = v85;
    v84[1] = v86;
    v84[4] = *&v88[16];
    v84[5] = *&v88[32];
    outlined init with copy of ApplicationCapabilities(&v76, &v75);
    result = outlined destroy of ApplicationCapabilities(v84);
    v66 = v81;
    a4[4] = v80;
    a4[5] = v66;
    v67 = v83;
    a4[6] = v82;
    a4[7] = v67;
    v68 = v77;
    *a4 = v76;
    a4[1] = v68;
    v69 = v79;
    a4[2] = v78;
    a4[3] = v69;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized ApplicationCapabilities.Service.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ApplicationCapabilities.Service.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized ApplicationCapabilities.SubscriptionState.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ApplicationCapabilities.SubscriptionState.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void partial apply for closure #1 in ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if ((*(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) & 1) == 0)
  {
    **(v0 + 24) = 1;
    *(v1 + v2) = 1;
  }
}

uint64_t partial apply for closure #2 in ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service()
{
  result = lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service;
  if (!lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service;
  if (!lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ApplicationCapabilities.SubscriptionState and conformance ApplicationCapabilities.SubscriptionState()
{
  result = lazy protocol witness table cache variable for type ApplicationCapabilities.SubscriptionState and conformance ApplicationCapabilities.SubscriptionState;
  if (!lazy protocol witness table cache variable for type ApplicationCapabilities.SubscriptionState and conformance ApplicationCapabilities.SubscriptionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationCapabilities.SubscriptionState and conformance ApplicationCapabilities.SubscriptionState);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.Service(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.Service(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.RatingWarning(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.RatingWarning(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.Tabs(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.Tabs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ApplicationCapabilities.Controller()
{
  result = type metadata singleton initialization cache for ApplicationCapabilities.Controller;
  if (!type metadata singleton initialization cache for ApplicationCapabilities.Controller)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ApplicationCapabilities.Controller()
{
  type metadata accessor for Published<ApplicationCapabilities>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<ApplicationCapabilities>()
{
  if (!lazy cache variable for type metadata for Published<ApplicationCapabilities>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<ApplicationCapabilities>);
    }
  }
}

uint64_t sub_1000F23EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ApplicationCapabilities.Controller.safeCapabilities.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[21];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in ApplicationCapabilities.Controller.safeCapabilities.didset(a1, v4, v5, v6, (v1 + 5), v7);
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults.Key and conformance NSUserDefaults.Key()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Playlist.Entry and conformance Playlist.Entry(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F2640()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000F2678()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore23ApplicationCapabilitiesVs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ApplicationCapabilities.Controller.updated()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore23ApplicationCapabilitiesVs5NeverOGMd);

  return closure #1 in closure #1 in ApplicationCapabilities.Controller.updated()(a1);
}

uint64_t sub_1000F27C8()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ApplicationCapabilities.Controller.updateNetworkReachabilityIfNeeded()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in ApplicationCapabilities.Controller.updateNetworkReachabilityIfNeeded()(a1, v4, v5, v6);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F2990()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000F2A5C()
{

  return swift_deallocObject();
}

id partial apply for closure #1 in closure #5 in ApplicationCapabilities.Controller.beginObserving()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = v2;

  return v2;
}

unint64_t specialized NSUserDefaults.Key.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NSUserDefaults.Key.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t *BackgroundFetchManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BackgroundFetchManager.shared;
}

uint64_t BackgroundFetchManager.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = specialized BackgroundFetchManager.dictionary.getter();
  if (*(v6 + 16) && (v7 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(a1, a2), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), , , *(v9 + 16)) && (v10 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(7107189, 0xE300000000000000), (v11 & 1) != 0))
  {
    outlined init with copy of Any(*(v9 + 56) + 32 * v10, v14);

    if (swift_dynamicCast())
    {
      URL.init(string:)();
    }
  }

  else
  {
  }

  v13 = type metadata accessor for URL();
  return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

void (*BackgroundFetchManager.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v6);
    v7 = malloc(v6);
  }

  a1[3] = v7;
  BackgroundFetchManager.subscript.getter(a2, a3, v7);
  return BackgroundFetchManager.subscript.modify;
}

void BackgroundFetchManager.subscript.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    outlined init with copy of URL?(a1[3], v2);

    specialized BackgroundFetchManager.subscript.setter(v2, v5, v4);
    outlined destroy of TaskPriority?(v3, &_s10Foundation3URLVSgMd);
  }

  else
  {

    specialized BackgroundFetchManager.subscript.setter(v3, v5, v4);
  }

  free(v3);

  free(v2);
}

Swift::Void __swiftcall BackgroundFetchManager.removeAll()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];
}

void closure #1 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), int a4, int a5, int a6, dispatch_group_t group)
{
  if (a3)
  {
    a1 = a3(a1, a2);
  }

  if (a2)
  {
    __chkstk_darwin(a1);
    swift_errorRetain();
    UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #1 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:));
  }

  dispatch_group_leave(group);
}

uint64_t closure #1 in closure #1 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)(id **a1, void *a2)
{
  swift_beginAccess();
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    *a1 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    *a1 = v4;
  }

  v4[2] = (v7 + 1);
  v4[v7 + 4] = a2;
  swift_endAccess();
  return swift_errorRetain();
}

uint64_t closure #2 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)(uint64_t a1, uint64_t a2, void (*a3)())
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Error_pGMd);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #2 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:));
  a3();
}

void one-time initialization function for maximumTimeInterval()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v0 = v3;
  if (v3 && (closure #1 in variable initialization expression of static BackgroundFetchManager.Bag.maximumTimeInterval(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x4122750000000000;
  }

  static BackgroundFetchManager.Bag.maximumTimeInterval = v2;
  byte_1006028D8 = v1;
}

uint64_t closure #1 in variable initialization expression of static BackgroundFetchManager.Bag.maximumTimeInterval@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 valueForBagKey:ICURLBagKeyMusicCommon])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v10[0] = v11;
  v10[1] = v12;
  if (!*(&v12 + 1))
  {
    result = outlined destroy of TaskPriority?(v10, &_sypSgMd_0);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v11 + 16) || (v4 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD00000000000001ELL, 0x80000001004C8720), (v5 & 1) == 0))
  {

    goto LABEL_16;
  }

  outlined init with copy of Any(*(v11 + 56) + 32 * v4, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_16:
    *a2 = 0;
    v9 = 1;
    goto LABEL_17;
  }

  v6 = v11;
  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v8 & 1) == 0))
  {

    result = outlined destroy of AnyHashable(v10);
    goto LABEL_16;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v7, &v11);
  outlined destroy of AnyHashable(v10);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  v9 = result ^ 1;
LABEL_17:
  *(a2 + 8) = v9;
  return result;
}

unint64_t specialized BackgroundFetchManager.dictionary.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (v2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v3);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
  }

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSypGTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  return v6;
}

uint64_t specialized BackgroundFetchManager.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of TaskPriority?(v8, &_s10Foundation3URLVSgMd);
    v26 = specialized BackgroundFetchManager.dictionary.getter();
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3);

    v13 = [objc_opt_self() standardUserDefaults];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v15 = String._bridgeToObjectiveC()();
    [v13 setObject:isa forKey:v15];

    return outlined destroy of TaskPriority?(a1, &_s10Foundation3URLVSgMd);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = 7107189;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = URL.absoluteString.getter();
    *(inited + 56) = v18;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 1702125924;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 120) = type metadata accessor for Date();
    __swift_allocate_boxed_opaque_existential_1((inited + 96));
    Date.init()();
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd_0);
    swift_arrayDestroy();
    v20 = specialized BackgroundFetchManager.dictionary.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v20;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, a2, a3, isUniquelyReferenced_nonNull_native);

    v22 = [objc_opt_self() standardUserDefaults];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0);
    v23 = Dictionary._bridgeToObjectiveC()().super.isa;

    v24 = String._bridgeToObjectiveC()();
    [v22 setObject:v23 forKey:v24];

    outlined destroy of TaskPriority?(a1, &_s10Foundation3URLVSgMd);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t specialized BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v98 = a5;
  v97 = a4;
  v80 = a3;
  v79 = a2;
  v103 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v104 = *(v5 - 8);
  v105 = v5;
  __chkstk_darwin(v5);
  v101 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for DispatchQoS();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for URLRequest();
  v8 = *(v78 - 8);
  __chkstk_darwin(v78);
  v84 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v10 - 8);
  v92 = v72 - v11;
  v93 = type metadata accessor for Date();
  v12 = *(v93 - 8);
  v13 = __chkstk_darwin(v93);
  v86 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v87 = v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v16 - 8);
  v109 = v72 - v17;
  v106 = type metadata accessor for URL();
  v18 = *(v106 - 8);
  v19 = __chkstk_darwin(v106);
  v83 = v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v96 = v72 - v21;
  v108 = dispatch_group_create();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v107 = UnfairLock.init()();
  v22 = swift_allocObject();
  *(v22 + 16) = _swiftEmptyArrayStorage;
  if (one-time initialization token for maximumTimeInterval != -1)
  {
LABEL_30:
    swift_once();
  }

  v23 = *&static BackgroundFetchManager.Bag.maximumTimeInterval;
  v24 = specialized BackgroundFetchManager.dictionary.getter();
  v25 = v24;
  v26 = 0;
  v27 = v24 + 64;
  v28 = 1 << *(v24 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v24 + 64);
  v31 = (v28 + 63) >> 6;
  v95 = (v18 + 6);
  v91 = (v18 + 4);
  v90 = (v12 + 7);
  v88 = (v12 + 6);
  v85 = (v12 + 4);
  ++v12;
  v89 = (v18 + 1);
  v82 = (v18 + 2);
  v81 = "com.apple.mobileipod";
  v18 = &v112;
  v77 = (v8 + 8);
  v8 = v109;
  while (1)
  {
    while (1)
    {
      do
      {
        if (!v30)
        {
          while (1)
          {
            v32 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v32 >= v31)
            {

              v65 = swift_allocObject();
              v65[2] = v107;
              v65[3] = v22;
              v66 = v98;
              v65[4] = v97;
              v65[5] = v66;
              v114 = partial apply for closure #2 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:);
              v115 = v65;
              aBlock = _NSConcreteStackBlock;
              v111 = 1107296256;
              v112 = thunk for @escaping @callee_guaranteed () -> ();
              v113 = &block_descriptor_13;
              v67 = _Block_copy(&aBlock);

              v68 = v99;
              static DispatchQoS.unspecified.getter();
              v116 = _swiftEmptyArrayStorage;
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
              lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
              v69 = v101;
              v70 = v105;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v71 = v108;
              OS_dispatch_group.notify(qos:flags:queue:execute:)();
              _Block_release(v67);

              (*(v104 + 8))(v69, v70);
              (*(v100 + 8))(v68, v102);
            }

            v30 = *(v27 + 8 * v32);
            ++v26;
            if (v30)
            {
              v26 = v32;
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_11:
        v33 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v34 = *(*(v25 + 56) + ((v26 << 9) | (8 * v33)));
      }

      while (!*(v34 + 16));

      v35 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(7107189, 0xE300000000000000);
      if (v36)
      {
        outlined init with copy of Any(*(v34 + 56) + 32 * v35, &aBlock);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

    v94 = v18;
    URL.init(string:)();

    v37 = v106;
    if ((*v95)(v8, 1, v106) == 1)
    {

      v38 = v8;
      v39 = &_s10Foundation3URLVSgMd;
      goto LABEL_22;
    }

    (*v91)(v96, v8, v37);
    v40 = v92;
    if (!*(v34 + 16) || (v41 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(1702125924, 0xE400000000000000), (v42 & 1) == 0))
    {

      (*v89)(v96, v106);
      (*v90)(v40, 1, 1, v93);
LABEL_21:
      v38 = v40;
      v39 = &_s10Foundation4DateVSgMd;
LABEL_22:
      outlined destroy of TaskPriority?(v38, v39);
      goto LABEL_23;
    }

    outlined init with copy of Any(*(v34 + 56) + 32 * v41, &aBlock);

    v43 = v93;
    v44 = swift_dynamicCast();
    (*v90)(v40, v44 ^ 1u, 1, v43);
    if ((*v88)(v40, 1, v43) == 1)
    {
      (*v89)(v96, v106);
      v8 = v109;
      goto LABEL_21;
    }

    (*v85)(v87, v40, v43);
    v45 = v86;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v47 = v46;
    v48 = v45;
    v49 = *v12;
    (*v12)(v48, v43);
    if (v47 < v23)
    {
      break;
    }

    v49(v87, v43);
    (*v89)(v96, v106);
    v8 = v109;
LABEL_23:
    v18 = v94;
  }

  v76 = v49;
  (*v82)(v83, v96, v106);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v50._object = (v81 | 0x8000000000000000);
  v51._countAndFlagsBits = 1702195828;
  v51._object = 0xE400000000000000;
  v50._countAndFlagsBits = 0xD00000000000001ALL;
  URLRequest.addValue(_:forHTTPHeaderField:)(v51, v50);
  v52 = objc_allocWithZone(ICMusicKitRequestContext);
  v114 = specialized thunk for @callee_guaranteed (@guaranteed ICRequestContext) -> ();
  v115 = 0;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v113 = &block_descriptor_15;
  v53 = _Block_copy(&aBlock);
  v54 = [v52 initWithBlock:v53];
  _Block_release(v53);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    v75 = objc_allocWithZone(ICMusicKitURLRequest);
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v75 = [v75 initWithURLRequest:isa requestContext:v54];

    dispatch_group_enter(v108);
    v74 = [objc_opt_self() highPrioritySession];
    v57 = swift_allocObject();
    v58 = v79;
    v59 = v80;
    v57[2] = v79;
    v57[3] = v59;
    v60 = v108;
    v57[4] = v107;
    v57[5] = v22;
    v57[6] = v60;
    v114 = partial apply for closure #1 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:);
    v115 = v57;
    aBlock = _NSConcreteStackBlock;
    v111 = 1107296256;
    v112 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
    v113 = &block_descriptor_7;
    v73 = _Block_copy(&aBlock);
    v72[1] = v115;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v58);

    v61 = v60;

    v62 = v74;
    v63 = v75;
    v64 = v73;
    [v74 enqueueDataRequest:v75 withCompletionHandler:v73];
    _Block_release(v64);

    (*v77)(v84, v78);
    v76(v87, v93);
    (*v89)(v96, v106);
    v8 = v109;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F4814()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F4864()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000F48CC()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *v3;
}

uint64_t *BackgroundRefreshController.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BackgroundRefreshController.shared;
}

uint64_t static BackgroundRefreshController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  return v1;
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);
}

Swift::Void __swiftcall BackgroundRefreshController.registerAllTasks()()
{
  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2400;
  *(v0 + 56) = &type metadata for String;
  v1 = lazy protocol witness table accessor for type String and conformance String();
  *(v0 + 64) = v1;
  *(v0 + 32) = 0xD00000000000002FLL;
  *(v0 + 40) = 0x80000001004C87A0;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log);
  v2 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v3 = objc_opt_self();
  v4 = [v3 sharedScheduler];
  v5 = String._bridgeToObjectiveC()();
  aBlock[4] = closure #1 in BackgroundRefreshController.registerAllTasks();
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_16;
  v6 = _Block_copy(aBlock);
  [v4 registerForTaskWithIdentifier:v5 usingQueue:0 launchHandler:v6];
  _Block_release(v6);

  static os_log_type_t.default.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004F2400;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = v1;
  *(v7 + 32) = 0xD000000000000041;
  *(v7 + 40) = 0x80000001004C8830;
  v8 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v9 = [v3 sharedScheduler];
  v10 = String._bridgeToObjectiveC()();
  [v9 cancelTaskRequestWithIdentifier:v10];
}

uint64_t closure #1 in BackgroundRefreshController.registerAllTasks()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  return BackgroundRefreshController.executeBackgroundUpdates(task:)(v0);
}

uint64_t BackgroundRefreshController.executeBackgroundUpdates(task:)(void *a1)
{
  v3 = *v1;
  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004F2400;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = 0xD00000000000002FLL;
  *(v4 + 40) = 0x80000001004C87A0;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log);
  v5 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  v7 = a1;
  BackgroundRefreshController.executeAllEligibleSubtasks(completion:)(partial apply for closure #1 in BackgroundRefreshController.executeBackgroundUpdates(task:), v6);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall BackgroundRefreshController.scheduleAllTasks()()
{
  v82 = *v0;
  v88 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4 = __chkstk_darwin(v3 - 8);
  v106 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v105 = &v81 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v95 = &v81 - v12;
  v13 = __chkstk_darwin(v11);
  v104 = &v81 - v14;
  v15 = __chkstk_darwin(v13);
  v103 = &v81 - v16;
  v17 = __chkstk_darwin(v15);
  v110 = &v81 - v18;
  v19 = __chkstk_darwin(v17);
  v102 = &v81 - v20;
  v21 = __chkstk_darwin(v19);
  v101 = &v81 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v81 - v24;
  __chkstk_darwin(v23);
  v27 = &v81 - v26;
  if (one-time initialization token for all != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v28 = static BackgroundTaskConfiguration.all;
    static Date.distantFuture.getter();
    v93 = v8;
    v29 = *(v8 + 16);
    v92 = v27;
    v90 = v8 + 16;
    v89 = v29;
    v29(v25, v27, v7);
    v107 = v28;
    v94 = v28[2];
    if (v94)
    {
      v100 = objc_opt_self();
      v99 = (v93 + 56);
      v30 = (v93 + 48);
      v27 = (v93 + 8);
      v31 = v107 + 49;
      v108 = (v93 + 32);
      v97 = (v93 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v32 = v94;
      v98 = (v93 + 48);
      do
      {
        v109 = v32;
        v43 = *v31;
        v44 = [v100 standardUserDefaults];
        LOBYTE(v111) = v43;
        lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
        lazy protocol witness table accessor for type String and conformance String();
        NSUserDefaults.subscript.getter(&aBlock);

        if (v114)
        {
          v45 = v105;
          v46 = swift_dynamicCast();
          (*v99)(v45, v46 ^ 1u, 1, v7);
        }

        else
        {
          outlined destroy of TaskPriority?(&aBlock, &_sypSgMd_0);
          v45 = v105;
          (*v99)(v105, 1, 1, v7);
        }

        v47 = v106;
        outlined init with copy of Date?(v45, v106);
        v48 = *v30;
        if ((*v30)(v47, 1, v7) == 1)
        {
          v96 = v31;
          v49 = v103;
          Date.init()();
          v50 = v48(v47, 1, v7);
          v31 = v96;
          if (v50 != 1)
          {
            outlined destroy of TaskPriority?(v47, &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          v49 = v103;
          (*v108)(v103, v47, v7);
        }

        outlined destroy of TaskPriority?(v45, &_s10Foundation4DateVSgMd);
        static Date.+ infix(_:_:)();
        v51 = *v27;
        (*v27)(v49, v7);
        v52 = v104;
        Date.init()();
        if (static Date.< infix(_:_:)())
        {
          v33 = v95;
          static Date.+ infix(_:_:)();
          v51(v52, v7);
          v34 = v110;
          v51(v110, v7);
          v35 = *v108;
          (*v108)(v34, v33, v7);
        }

        else
        {
          v51(v52, v7);
          v35 = *v108;
        }

        v36 = v109;
        v31 += 24;
        v37 = v102;
        v35(v102, v110, v7);
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
        v38 = dispatch thunk of static Comparable.< infix(_:_:)();
        v39 = (v38 & 1) == 0;
        if (v38)
        {
          v40 = v25;
        }

        else
        {
          v40 = v37;
        }

        if (v39)
        {
          v41 = v25;
        }

        else
        {
          v41 = v37;
        }

        v51(v40, v7);
        v42 = v101;
        v35(v101, v41, v7);
        v35(v25, v42, v7);
        v32 = v36 - 1;
        v30 = v98;
      }

      while (v32);
    }

    v109 = swift_allocBox();
    v54 = v53;
    v8 = v93;
    v108 = *(v93 + 8);
    (v108)(v92, v7);
    v55 = *(v8 + 32);
    v110 = v54;
    v55(v54, v25, v7);
    if (!v94)
    {
LABEL_37:
      v61 = 0;
      goto LABEL_38;
    }

    if (v107[2])
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v56 = 0;
  v8 = 0;
  v57 = v107 + 50;
  v58 = v94 - 1;
  v27 = &unk_1005B0E48;
  v25 = &type metadata for Bool;
  while ((v56 & 1) != 0)
  {
    if (v58 == v8)
    {
      goto LABEL_36;
    }

    v56 = 1;
LABEL_25:
    ++v8;
    v57 += 24;
    if (v8 >= v107[2])
    {
      goto LABEL_44;
    }
  }

  v59 = *v57;
  v60 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v111) = v59;
  lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&aBlock);

  if (!v114)
  {
    outlined destroy of TaskPriority?(&aBlock, &_sypSgMd_0);
    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v56 = 0;
    v61 = 0;
    if (v58 == v8)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v56 = v111;
  if (v58 != v8)
  {
    goto LABEL_25;
  }

  if ((v111 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_36:
  v62 = v95;
  Date.init()();
  (*(v93 + 40))(v110, v62, v7);
  v61 = 1;
LABEL_38:
  v63 = v95;
  v64 = v89;
  v89(v95, v110, v7);
  v65 = v91;
  static Date.distantFuture.getter();
  v66 = static Date.< infix(_:_:)();
  v67 = v108;
  (v108)(v65, v7);
  (v67)(v63, v7);
  if (v61 & 1) != 0 || (v66)
  {
    v68 = objc_allocWithZone(BGAppRefreshTaskRequest);
    v69 = String._bridgeToObjectiveC()();
    v70 = [v68 initWithIdentifier:v69];

    v71 = v95;
    v64(v95, v110, v7);
    v72 = v70;
    isa = Date._bridgeToObjectiveC()().super.isa;
    (v67)(v71, v7);
    [v72 setEarliestBeginDate:isa];

    if (one-time initialization token for taskSchedulerQueue != -1)
    {
      swift_once();
    }

    v74 = swift_allocObject();
    v75 = v109;
    *(v74 + 16) = v72;
    *(v74 + 24) = v75;
    *(v74 + 32) = v61;
    *(v74 + 40) = v82;
    v115 = partial apply for closure #3 in BackgroundRefreshController.scheduleAllTasks();
    v116 = v74;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v113 = thunk for @escaping @callee_guaranteed () -> ();
    v114 = &block_descriptor_3_0;
    v76 = _Block_copy(&aBlock);
    v77 = v72;

    v78 = v83;
    static DispatchQoS.unspecified.getter();
    v111 = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v79 = v85;
    v80 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v76);

    (*(v87 + 8))(v79, v80);
    (*(v84 + 8))(v78, v86);
  }
}

void closure #3 in BackgroundRefreshController.scheduleAllTasks()(void *a1, uint64_t a2, int a3)
{
  v39 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  static os_log_type_t.default.getter();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v9 = swift_allocObject();
  v37 = xmmword_1004F2EF0;
  *(v9 + 16) = xmmword_1004F2EF0;
  v10 = [a1 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v9 + 56) = &type metadata for String;
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 64) = v14;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  v17 = v15;
  (*(v5 + 8))(v7, v4);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v16 >= 9.22337204e18)
  {
    goto LABEL_12;
  }

  *(v9 + 96) = &type metadata for Int;
  *(v9 + 104) = &protocol witness table for Int;
  *(v9 + 72) = v16;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v19 = objc_opt_self();
  v20 = [v19 sharedScheduler];
  v40 = 0;
  v21 = [v20 submitTaskRequest:a1 error:&v40];

  if (v21)
  {
    v22 = v40;
    if ((v39 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v23 = v40;
    v24 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.error.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v37;
    v26 = [a1 identifier];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = v14;
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    v40 = v24;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v30 = String.init<A>(describing:)();
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v14;
    *(v25 + 72) = v30;
    *(v25 + 80) = v31;
    v32 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    if ((v39 & 1) == 0)
    {
      return;
    }
  }

  static os_log_type_t.default.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1004F2400;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = v14;
  *(v33 + 32) = 0xD00000000000002FLL;
  *(v33 + 40) = 0x80000001004C87A0;
  v34 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v35 = [v19 sharedScheduler];
  v36 = String._bridgeToObjectiveC()();
  [v35 _simulateLaunchForTaskWithIdentifier:v36];
}

uint64_t closure #1 in BackgroundRefreshController.executeBackgroundUpdates(task:)(char a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for taskSchedulerQueue != -1)
  {
    swift_once();
  }

  v17[1] = static BackgroundRefreshController.taskSchedulerQueue;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundRefreshController.executeBackgroundUpdates(task:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_45;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void closure #1 in closure #1 in BackgroundRefreshController.executeBackgroundUpdates(task:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a2)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  [a1 setTaskCompletedWithSuccess:a2 & 1];
  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004F2EF0;
  *(v4 + 56) = &type metadata for String;
  v5 = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = 0xD00000000000002FLL;
  *(v4 + 40) = 0x80000001004C87A0;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 64) = v5;
  *(v4 + 72) = v2;
  *(v4 + 80) = v3;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log);
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t BackgroundRefreshController.executeAllEligibleSubtasks(completion:)(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v66 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v8 = __chkstk_darwin(v7 - 8);
  v81 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v62 - v10;
  v12 = type metadata accessor for Date();
  v71 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v72 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v80 = &v62 - v16;
  v17 = __chkstk_darwin(v15);
  v79 = &v62 - v18;
  v19 = __chkstk_darwin(v17);
  v78 = &v62 - v20;
  v21 = __chkstk_darwin(v19);
  v77 = &v62 - v22;
  __chkstk_darwin(v21);
  v82 = &v62 - v23;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v100[4] = v96;
  v100[5] = v97;
  v101 = v98;
  v102 = v99;
  v100[0] = v92;
  v100[1] = v93;
  v100[2] = v94;
  v100[3] = v95;
  outlined destroy of ApplicationCapabilities(v100);
  v69 = v3;
  v70 = v2;
  v68 = v5;
  if (v101 == 2)
  {
    v88 = 1;
  }

  else
  {
    v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  Date.init()();
  v84 = dispatch_group_create();
  v85 = swift_allocObject();
  *(v85 + 16) = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v83 = UnfairLock.init()();
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  v24 = static BackgroundTaskConfiguration.all;
  v25 = *(static BackgroundTaskConfiguration.all + 2);
  if (v25)
  {
    v90 = objc_opt_self();
    v75 = (v71 + 48);
    v76 = (v71 + 56);
    v26 = v24 + 50;
    v86 = (v71 + 32);
    v87 = v11;
    v73 = (v71 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v74 = (v71 + 8);
    do
    {
      v89 = *(v26 - 18);
      v30 = *v26;
      if (v88 & 1 | ((*(v26 - 17) & 1) == 0))
      {
        v31 = *(v26 - 10);
        v32 = *(v26 - 1);
        v33 = [v90 standardUserDefaults];
        LOBYTE(v91) = v32;
        lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
        lazy protocol witness table accessor for type String and conformance String();
        NSUserDefaults.subscript.getter(&v92);

        if (*(&v93 + 1))
        {
          v34 = swift_dynamicCast();
          (*v76)(v11, v34 ^ 1u, 1, v12);
        }

        else
        {
          outlined destroy of TaskPriority?(&v92, &_sypSgMd_0);
          (*v76)(v11, 1, 1, v12);
        }

        v36 = v81;
        v37 = v75;
        outlined init with copy of Date?(v11, v81);
        v38 = *v37;
        if ((*v37)(v36, 1, v12) == 1)
        {
          v39 = v79;
          Date.init()();
          if (v38(v36, 1, v12) != 1)
          {
            outlined destroy of TaskPriority?(v36, &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          v39 = v79;
          (*v86)(v79, v36, v12);
        }

        outlined destroy of TaskPriority?(v11, &_s10Foundation4DateVSgMd);
        v40 = v78;
        static Date.+ infix(_:_:)();
        v41 = *v74;
        (*v74)(v39, v12);
        v42 = v80;
        Date.init()();
        if (static Date.< infix(_:_:)())
        {
          v43 = v72;
          static Date.+ infix(_:_:)();
          v41(v42, v12);
          v41(v40, v12);
          v44 = *v86;
          (*v86)(v40, v43, v12);
        }

        else
        {
          v41(v42, v12);
          v44 = *v86;
        }

        v45 = v77;
        v44(v77, v40, v12);
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
        v46 = dispatch thunk of static Comparable.< infix(_:_:)();
        v41(v45, v12);
        v35 = (v31 > 0.0) & ~v46;
      }

      else
      {
        v35 = 0;
      }

      v47 = [v90 standardUserDefaults];
      LOBYTE(v91) = v30;
      lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
      lazy protocol witness table accessor for type String and conformance String();
      NSUserDefaults.subscript.getter(&v92);

      if (*(&v93 + 1))
      {
        if (swift_dynamicCast() & 1) != 0 && (v91)
        {
          v48 = [v90 standardUserDefaults];
          *(&v93 + 1) = &type metadata for Bool;
          LOBYTE(v92) = 0;
          LOBYTE(v91) = v30;
          NSUserDefaults.subscript.setter(&v92, &v91, &unk_1005B0E48);

LABEL_32:
          v49 = v84;
          dispatch_group_enter(v84);
          if (v89)
          {
            v27 = swift_allocObject();
            v28 = v85;
            v27[2] = v83;
            v27[3] = v28;
            v27[4] = v49;

            v29 = v49;
            BackgroundRefreshController.updateServerLandingPagesCache(completion:)(partial apply for taskCompletion #1 (taskSucceeded:) in BackgroundRefreshController.executeAllEligibleSubtasks(completion:), v27);
          }

          else
          {
            v50 = swift_allocObject();
            v51 = v85;
            v50[2] = v83;
            v50[3] = v51;
            v50[4] = v49;

            v52 = v49;
            BackgroundRefreshController.updatePinnedSubscribedPlaylists(completion:)(taskCompletion #1 (taskSucceeded:) in BackgroundRefreshController.executeAllEligibleSubtasks(completion:)partial apply, v50);
          }

          goto LABEL_12;
        }
      }

      else
      {
        outlined destroy of TaskPriority?(&v92, &_sypSgMd_0);
      }

      if (v35)
      {
        goto LABEL_32;
      }

LABEL_12:
      v26 += 24;
      --v25;
      v11 = v87;
    }

    while (v25);
  }

  if (one-time initialization token for taskSchedulerQueue != -1)
  {
    swift_once();
  }

  v90 = static BackgroundRefreshController.taskSchedulerQueue;
  v53 = swift_allocObject();
  v54 = v85;
  v53[2] = v83;
  v53[3] = v54;
  v55 = v64;
  v53[4] = v63;
  v53[5] = v55;
  *&v94 = partial apply for closure #1 in BackgroundRefreshController.executeAllEligibleSubtasks(completion:);
  *(&v94 + 1) = v53;
  *&v92 = _NSConcreteStackBlock;
  *(&v92 + 1) = 1107296256;
  *&v93 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v93 + 1) = &block_descriptor_23;
  v56 = _Block_copy(&v92);

  v57 = v65;
  static DispatchQoS.unspecified.getter();
  v91 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v58 = v67;
  v59 = v70;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v60 = v84;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v56);

  (*(v69 + 8))(v58, v59);
  (*(v66 + 8))(v57, v68);
  (*(v71 + 8))(v82, v12);
}

uint64_t closure #1 in taskCompletion #1 (taskSucceeded:) in BackgroundRefreshController.executeAllEligibleSubtasks(completion:)(_BYTE *a1, char a2)
{
  swift_beginAccess();
  v4 = *a1 & a2;
  result = swift_beginAccess();
  *a1 = v4 & 1;
  return result;
}

void BackgroundRefreshController.updatePinnedSubscribedPlaylists(completion:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for updateSubscribedPlaylists != -1)
  {
    swift_once();
  }

  v7 = static BackgroundTaskConfiguration.updateSubscribedPlaylists;
  v8 = HIBYTE(static BackgroundTaskConfiguration.updateSubscribedPlaylists);
  v9 = qword_100602998;
  v10 = word_1006029A0;
  v11 = HIBYTE(word_1006029A0);
  HIDWORD(v23) = byte_1006029A2;
  Date.init()();
  v12 = [objc_opt_self() standardUserDefaults];
  v27 = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
  (*(v4 + 16))(boxed_opaque_existential_1, v6, v3);
  v30 = v11;
  lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.setter(aBlock, &v30, &unk_1005B0E48);

  (*(v4 + 8))(v6, v3);
  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_1004F2400;
  v16 = "updateSubscribedPlaylists";
  if (v7)
  {
    v17 = 0xD000000000000018;
  }

  else
  {
    v17 = 0xD000000000000019;
  }

  if (!v7)
  {
    v16 = "allowsPumpkinContent";
  }

  v18 = v16 | 0x8000000000000000;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v17;
  *(v15 + 40) = v18;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v20 = *(v24 + 32);
  v21 = swift_allocObject();
  *(v21 + 16) = v7;
  *(v21 + 17) = v8;
  *(v21 + 24) = v9;
  *(v21 + 32) = v10;
  *(v21 + 33) = v11;
  *(v21 + 34) = BYTE4(v23);
  *(v21 + 40) = v25;
  *(v21 + 48) = a2;
  v28 = partial apply for specialized closure #1 in BackgroundRefreshController.updatePinnedSubscribedPlaylists(completion:);
  v29 = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v27 = &block_descriptor_36_0;
  v22 = _Block_copy(aBlock);

  [v20 updatePinnedSubscribedPlaylistsWithCompletion:v22];
  _Block_release(v22);
}

uint64_t BackgroundRefreshController.updateServerLandingPagesCache(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for updateServerLandingPagesCache != -1)
  {
    swift_once();
  }

  v9 = static BackgroundTaskConfiguration.updateServerLandingPagesCache;
  v10 = qword_1006029B0;
  v26 = byte_1006029B8;
  v27 = HIBYTE(static BackgroundTaskConfiguration.updateServerLandingPagesCache);
  v11 = byte_1006029B9;
  v12 = byte_1006029BA;
  Date.init()();
  v13 = [objc_opt_self() standardUserDefaults];
  v30[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
  v29 = v11;
  lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.setter(v30, &v29, &unk_1005B0E48);

  (*(v6 + 8))(v8, v5);
  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = xmmword_1004F2400;
  v17 = "updateSubscribedPlaylists";
  if (v9)
  {
    v18 = 0xD000000000000018;
  }

  else
  {
    v18 = 0xD000000000000019;
  }

  if (!v9)
  {
    v17 = "allowsPumpkinContent";
  }

  v19 = v17 | 0x8000000000000000;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = v18;
  *(v16 + 40) = v19;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log);
  v20 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  if (one-time initialization token for taskSchedulerQueue != -1)
  {
    swift_once();
  }

  v21 = static BackgroundRefreshController.taskSchedulerQueue;
  v22 = swift_allocObject();
  *(v22 + 16) = v9;
  v23 = v26;
  *(v22 + 17) = v27;
  *(v22 + 24) = v10;
  *(v22 + 32) = v23;
  *(v22 + 33) = v11;
  *(v22 + 34) = v12;
  *(v22 + 40) = v28;
  *(v22 + 48) = a2;

  specialized BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)(v21, partial apply for closure #1 in BackgroundRefreshController.updateServerLandingPagesCache(completion:), v3, partial apply for specialized closure #2 in BackgroundRefreshController.updateServerLandingPagesCache(completion:), v22);
}

uint64_t specialized closure #1 in BackgroundRefreshController.updatePinnedSubscribedPlaylists(completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v7 = 0xD000000000000018;
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    v9 = v8;
    *(v8 + 16) = xmmword_1004F2EF0;
    v10 = "updateSubscribedPlaylists";
    if ((a2 & 1) == 0)
    {
      v7 = 0xD000000000000019;
      v10 = "allowsPumpkinContent";
    }

    v11 = v10 | 0x8000000000000000;
    *(v8 + 56) = &type metadata for String;
    v12 = lazy protocol witness table accessor for type String and conformance String();
    v9[8] = v12;
    v9[4] = v7;
    v9[5] = v11;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v13 = String.init<A>(describing:)();
    v9[12] = &type metadata for String;
    v9[13] = v12;
    v9[9] = v13;
    v9[10] = v14;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log);
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v16 = swift_allocObject();
    v17 = v16;
    *(v16 + 16) = xmmword_1004F2400;
    v18 = "updateSubscribedPlaylists";
    v19 = (a2 & 1) == 0;
    if (a2)
    {
      v20 = 0xD000000000000018;
    }

    else
    {
      v20 = 0xD000000000000019;
    }

    if (v19)
    {
      v18 = "allowsPumpkinContent";
    }

    v21 = v18 | 0x8000000000000000;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 32) = v20;
    *(v17 + 40) = v21;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log);
    v22 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  return a4(a1 == 0);
}

uint64_t closure #1 in BackgroundRefreshController.updateServerLandingPagesCache(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v6 = *(a3 + 16);
  if (v6)
  {

    v6(a1);
  }

  return result;
}

uint64_t specialized closure #2 in BackgroundRefreshController.updateServerLandingPagesCache(completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = xmmword_1004F2400;
  v8 = "updateSubscribedPlaylists";
  if (a2)
  {
    v9 = 0xD000000000000018;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if ((a2 & 1) == 0)
  {
    v8 = "allowsPumpkinContent";
  }

  v10 = v8 | 0x8000000000000000;
  *(v6 + 56) = &type metadata for String;
  v11 = lazy protocol witness table accessor for type String and conformance String();
  v7[8] = v11;
  v7[4] = v9;
  v7[5] = v10;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log);
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v21 = *(a1 + 16);
  if (v21)
  {
    v13 = a1 + 32;
    v14 = *(a1 + 16);
    do
    {
      v13 += 8;
      swift_errorRetain();
      static os_log_type_t.error.getter();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1004F2EF0;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = v11;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v16 = String.init<A>(describing:)();
      *(v15 + 96) = &type metadata for String;
      *(v15 + 104) = v11;
      *(v15 + 72) = v16;
      *(v15 + 80) = v17;
      v18 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      --v14;
    }

    while (v14);
  }

  return a4(v21 == 0);
}

uint64_t one-time initialization function for taskSchedulerQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static BackgroundRefreshController.taskSchedulerQueue = result;
  return result;
}

uint64_t BackgroundRefreshController.deinit()
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 16));

  return v0;
}

uint64_t BackgroundRefreshController.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 16));

  return swift_deallocClassInstance();
}

double one-time initialization function for all()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore27BackgroundTaskConfiguration33_C5107C6093080E21BBD9EFF6A17F9EE2LLVGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EF0;
  if (one-time initialization token for updateSubscribedPlaylists != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  v1 = HIBYTE(static BackgroundTaskConfiguration.updateSubscribedPlaylists);
  v2 = qword_100602998;
  v3 = word_1006029A0;
  v4 = *(&word_1006029A0 + 1);
  *(v0 + 32) = static BackgroundTaskConfiguration.updateSubscribedPlaylists;
  *(v0 + 33) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 49) = v4;
  if (one-time initialization token for updateServerLandingPagesCache != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  v5 = HIBYTE(static BackgroundTaskConfiguration.updateServerLandingPagesCache);
  result = *&qword_1006029B0;
  v7 = byte_1006029B8;
  v8 = *&byte_1006029B9;
  *(v0 + 56) = static BackgroundTaskConfiguration.updateServerLandingPagesCache;
  *(v0 + 57) = v5;
  *(v0 + 64) = result;
  *(v0 + 72) = v7;
  *(v0 + 73) = v8;
  static BackgroundTaskConfiguration.all = v0;
  return result;
}

unint64_t lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey()
{
  result = lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey;
  if (!lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey;
  if (!lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey);
  }

  return result;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F8418()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for BackgroundRefreshController.PerformanceMetricsRecorder(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundRefreshController.PerformanceMetricsRecorder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void one-time initialization function for updateSubscribedPlaylists()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd);
  UnfairLock.locked<A>(_:)(closure #1 in BagProvider.bag.getterpartial apply);

  static BackgroundTaskConfiguration.updateSubscribedPlaylists = 256;
  qword_100602998 = 0x40E5180000000000;
  word_1006029A0 = 257;
  byte_1006029A2 = 0;
}

void one-time initialization function for updateServerLandingPagesCache()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v0 = v3;
  if (v3 && (closure #1 in variable initialization expression of static BackgroundTaskConfiguration.updateServerLandingPagesCache(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x40D5180000000000;
  }

  static BackgroundTaskConfiguration.updateServerLandingPagesCache = 257;
  qword_1006029B0 = v2;
  byte_1006029B8 = v1;
  *&byte_1006029B9 = 515;
}

void closure #1 in variable initialization expression of static BackgroundTaskConfiguration.updateServerLandingPagesCache(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 dictionaryForBagKey:v4];

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v6);

  if (!v7)
  {
    goto LABEL_12;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_11;
  }

  v8 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD00000000000001ELL, 0x80000001004C8720);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v8, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *a2 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  if (!*(v14 + 16) || (v10 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD00000000000001DLL, 0x80000001004C89E0), (v11 & 1) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  outlined init with copy of Any(*(v14 + 56) + 32 * v10, v15);

  v12 = swift_dynamicCast();
  if ((v12 & 1) == 0)
  {
    *a2 = 0;
  }

  v13 = v12 ^ 1;
LABEL_13:
  *(a2 + 8) = v13;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BackgroundTaskConfiguration.Identifier(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "allowsPumpkinContent";
  }

  else
  {
    v4 = "updateSubscribedPlaylists";
  }

  if (*a2)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (*a2)
  {
    v6 = "updateSubscribedPlaylists";
  }

  else
  {
    v6 = "allowsPumpkinContent";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundTaskConfiguration.Identifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BackgroundTaskConfiguration.Identifier()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundTaskConfiguration.Identifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BackgroundTaskConfiguration.Identifier@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BackgroundTaskConfiguration.Identifier.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance BackgroundTaskConfiguration.Identifier(unint64_t *a1@<X8>)
{
  v2 = "updateSubscribedPlaylists";
  v3 = 0xD000000000000018;
  if (!*v1)
  {
    v3 = 0xD000000000000019;
    v2 = "allowsPumpkinContent";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundTaskConfiguration.UserDefaultsKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BackgroundTaskConfiguration.UserDefaultsKey()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundTaskConfiguration.UserDefaultsKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BackgroundTaskConfiguration.UserDefaultsKey@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized BackgroundTaskConfiguration.UserDefaultsKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance BackgroundTaskConfiguration.UserDefaultsKey(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "ribedPlaylistsDate";
  if (v2 == 2)
  {
    v4 = 0xD000000000000028;
  }

  else
  {
    v4 = 0xD000000000000027;
  }

  if (v2 != 2)
  {
    v3 = "efreshServerLandingPages";
  }

  v5 = 0xD000000000000032;
  if (*v1)
  {
    v6 = "efreshPinnedSubscribedPlaylists";
  }

  else
  {
    v5 = 0xD00000000000002FLL;
    v6 = "updateServerLandingPages";
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v5 = v4;
    v7 = v3;
  }

  *a1 = v5;
  a1[1] = v7 | 0x8000000000000000;
}

unint64_t specialized BackgroundTaskConfiguration.UserDefaultsKey.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BackgroundTaskConfiguration.UserDefaultsKey.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F8F6C()
{

  return swift_deallocObject();
}

uint64_t sub_1000F8FC4()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in BackgroundRefreshController.executeAllEligibleSubtasks(completion:)()
{
  v1 = *(v0 + 32);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #1 in BackgroundRefreshController.executeAllEligibleSubtasks(completion:));
  return v1(v3);
}

uint64_t objectdestroy_25Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1000F90E0()
{

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in BackgroundRefreshController.updatePinnedSubscribedPlaylists(completion:)(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, __n128), __n128 a3)
{
  if (*(v3 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  a3.n128_u64[0] = *(v3 + 24);
  return a2(a1, v4 | *(v3 + 16), *(v3 + 32) | (*(v3 + 33) << 8) | (*(v3 + 34) << 16), *(v3 + 40), *(v3 + 48), a3);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundRefreshController.executeAllEligibleSubtasks(completion:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  *a1 = *v3;
  return result;
}

uint64_t sub_1000F9208()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[19])
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

uint64_t storeEnumTagSinglePayload for BackgroundTaskConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BackgroundTaskConfiguration.Identifier and conformance BackgroundTaskConfiguration.Identifier()
{
  result = lazy protocol witness table cache variable for type BackgroundTaskConfiguration.Identifier and conformance BackgroundTaskConfiguration.Identifier;
  if (!lazy protocol witness table cache variable for type BackgroundTaskConfiguration.Identifier and conformance BackgroundTaskConfiguration.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundTaskConfiguration.Identifier and conformance BackgroundTaskConfiguration.Identifier);
  }

  return result;
}

uint64_t BagControlledValue.init(fallback:reader:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17 = a2;
  v18 = a1;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a3 - 8);
  __chkstk_darwin(v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v14 = v19;
  if (!v19)
  {
    goto LABEL_6;
  }

  v17(v19);

  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    (*(v7 + 8))(v10, v6);
LABEL_6:
    *(a4 + *(type metadata accessor for BagControlledValue() + 28)) = 1;
    return (*(v11 + 32))(a4, v18, a3);
  }

  (*(v11 + 8))(v18, a3);
  v16 = *(v11 + 32);
  v16(v13, v10, a3);
  *(a4 + *(type metadata accessor for BagControlledValue() + 28)) = 0;
  return (v16)(a4, v13, a3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BagControlledValue<A>.Source()
{
  Hasher.init(_seed:)();
  LaunchURL.Resolver.PerformOption.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t type metadata completion function for BagControlledValue()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BagControlledValue.Source();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BagControlledValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
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
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return v15 - 1;
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

unsigned int *storeEnumTagSinglePayload for BagControlledValue(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t *BagProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BagProvider.shared;
}

uint64_t BagProvider.createObserver(handler:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BagProvider.Observer();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  swift_weakAssign();
  v5 = *(v4 + 24);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.createObserver(handler:));
  BagProvider.fetchBag(forceReload:)(0);
  return v4;
}

uint64_t BagProvider.bag.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd);
  UnfairLock.locked<A>(_:)(_s9MusicCore11BagProviderC3bagSo8ICURLBagCSgvgAGyXEfU_TA_0);
  return v1;
}

void BagProvider.getBag(completion:)(void (*a1)(), uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd);
  UnfairLock.locked<A>(_:)(closure #1 in BagProvider.bag.getterpartial apply);
  if (v9)
  {
    a1();
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v4 = swift_allocObject();
    swift_weakInit();
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    swift_weakAssign();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v6[2] = a1;
    v6[3] = a2;
    v6[4] = v5;
    v6[5] = v4;
    v7 = *(v4 + 24);
    *(v4 + 24) = partial apply for closure #1 in BagProvider.getBag(completion:);
    *(v4 + 32) = v6;

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v7);

    __chkstk_darwin(v8);
    UnfairLock.locked<A>(_:)(partial apply for closure #2 in BagProvider.getBag(completion:));
    BagProvider.fetchBag(forceReload:)(0);
  }
}

void one-time initialization function for shared()
{
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  v0 = static ICClientInfo.music;
  type metadata accessor for BagProvider();
  swift_allocObject();
  v1 = v0;
  v2 = specialized BagProvider.init(clientInfo:)(v1);

  static BagProvider.shared = v2;
}

uint64_t static BagProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

_BYTE *closure #1 in BagProvider.bag.getter@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  v3 = &result[OBJC_IVAR____TtC9MusicCore11BagProvider_result];
  if (result[OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8] == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t closure #1 in BagProvider.getBag(completion:)(uint64_t a1, void (*a2)(void))
{
  a2();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    __chkstk_darwin(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
    UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #1 in BagProvider.getBag(completion:));
  }

  return result;
}

uint64_t closure #1 in closure #1 in BagProvider.getBag(completion:)@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v6 = result;
  if (!result)
  {
    goto LABEL_6;
  }

  v7 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  v8 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v6 + v7), a1);
  if (!v2)
  {
    v9 = v8;

    v10 = *(v6 + v7);
    if (v10 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11 >= v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 >= v9)
      {
LABEL_5:
        specialized Array.replaceSubrange<A>(_:with:)(v9, v11);
        swift_endAccess();

LABEL_6:
        *a2 = v6 == 0;
        return result;
      }
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t closure #2 in BagProvider.getBag(completion:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void BagProvider.fetchBag(forceReload:)(char a1)
{
  v2 = v1;
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.shouldFetch.getter);
  if (LOBYTE(aBlock[0]) == 1)
  {
    UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.fetchBag(forceReload:));
    v4 = [objc_opt_self() activeAccount];
    v5 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v4 clientInfo:*(v1 + 16)];

    v6 = [objc_opt_self() sharedBagProvider];
    aBlock[4] = partial apply for closure #2 in BagProvider.fetchBag(forceReload:);
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_17;
    v7 = _Block_copy(aBlock);

    [v6 getBagForRequestContext:v5 forceRefetch:a1 & 1 withCompletionHandler:v7];
    _Block_release(v7);
  }
}

void closure #1 in BagProvider.createObserver(handler:)(uint64_t a1, uint64_t a2, void **a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities9WeakArrayVy0A4Core11BagProviderC8ObserverCGMd);
  WeakArray.append(_:)();
  swift_endAccess();
  v5 = 0;
  v6 = (a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) == 1)
  {
    v5 = *v6;
    v7 = *v6;
  }

  v8 = *a3;
  *a3 = v5;
}

id _s9MusicCore11BagProviderC3bagSo8ICURLBagCSgvgAGyXEfU_TA_0@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1000FA5F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000FA628()
{

  return swift_deallocObject();
}

uint64_t BagProvider.signpost.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost;
  swift_beginAccess();
  outlined init with copy of Signpost?(v1 + v9, v8);
  v10 = type metadata accessor for Signpost();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return outlined init with take of Signpost(v8, a1);
  }

  outlined destroy of Signpost?(v8);
  if (one-time initialization token for musicBag != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.musicBag;

  Signpost.init(name:object:log:)("Bag", 3, 2, v12, a1);
  outlined init with copy of Signpost(a1, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of Signpost?(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t closure #1 in BagProvider.init(clientInfo:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    BagProvider.handleStorefrontChange()();
  }

  return result;
}

void BagProvider.handleStorefrontChange()()
{
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.handleStorefrontChange());

  if (v5 == 1)
  {
    UnfairLock.locked<A>(_:)(partial apply for closure #2 in BagProvider.handleStorefrontChange());
    __chkstk_darwin(v0);
    UnfairLock.locked<A>(_:)(closure #1 in BagProvider.lockedSet(result:notify:)partial apply);

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Notification triggered to update bag: storefrontChanged", v3, 2u);
    }

    BagProvider.fetchBag(forceReload:)(1);
  }
}

void closure #2 in BagProvider.fetchBag(forceReload:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Signpost();
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + OBJC_IVAR____TtC9MusicCore11BagProvider_lock);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #2 in BagProvider.fetchBag(forceReload:));
  if (v27)
  {
    BagProvider.fetchBag(forceReload:)(1);
    v11 = closure #1 in $defer #1 () in closure #2 in BagProvider.fetchBag(forceReload:)partial apply;
LABEL_19:
    UnfairLock.locked<A>(_:)(v11);
    return;
  }

  v12 = a1;
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    swift_errorRetain();
    v12 = _convertErrorToNSError(_:)();

    v10 = v12;
  }

  v27 = &_swiftEmptyArrayStorage;
  __chkstk_darwin(v10);
  *(&v23 - 4) = a3;
  *(&v23 - 3) = v12;
  LOBYTE(v21) = v13;
  BYTE1(v21) = 1;
  v22 = &v27;
  v14 = a1;
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.lockedSet(result:notify:));
  if (!a1)
  {
    goto LABEL_18;
  }

  v15 = v27;
  if (v27 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (!v16)
    {
LABEL_18:

      BagProvider.signpost.getter(v8);
      Signpost.end(dso:)(&_mh_execute_header);

      outlined destroy of Signpost(v8);
      v11 = partial apply for closure #1 in $defer #1 () in closure #2 in BagProvider.fetchBag(forceReload:);
      goto LABEL_19;
    }
  }

  else
  {
    v16 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  v25 = v8;
  v26 = v9;
  if (v16 >= 1)
  {
    v24 = v12;
    v17 = v12;
    v18 = 0;
    while ((v15 & 0xC000000000000001) == 0)
    {
      v20 = *(v15 + 8 * v18 + 32);

      v19 = *(v20 + 24);
      if (v19)
      {
        goto LABEL_16;
      }

LABEL_11:
      ++v18;

      if (v16 == v18)
      {

        v8 = v25;
        v12 = v24;
        goto LABEL_18;
      }
    }

    v19 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 24);
    if (!v19)
    {
      goto LABEL_11;
    }

LABEL_16:

    v19(v17);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v19);
    goto LABEL_11;
  }

  __break(1u);
LABEL_23:
  LODWORD(v22) = 0;
  v21 = 149;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t closure #1 in BagProvider.removeObserver(observer:)()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities9WeakArrayVy0A4Core11BagProviderC8ObserverCGMd);
  WeakArray.remove(_:)();
  return swift_endAccess();
}

void BagProvider.result.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) != 1)
    {
      return;
    }

    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully loaded a bag from iTunesCloud", v6, 2u);
    }

    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    Strong = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v7;
    BagProvider.Retry.provider.didset(Strong);
  }

  else
  {
    v3 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v3 code];
      _os_log_impl(&_mh_execute_header, v10, v11, "Error retrieving bag: %ld", v12, 0xCu);
    }

    v13 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    v14 = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v13;
    BagProvider.Retry.provider.didset(v14);
  }
}

void closure #1 in BagProvider.lockedSet(result:notify:)(uint64_t a1, void *a2, char a3, char a4, uint64_t *a5)
{
  v7 = a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  v8 = *(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  *v7 = a2;
  *(v7 + 8) = a3;
  v9 = a2;

  BagProvider.result.didset();
  if (a4)
  {
    swift_beginAccess();
    type metadata accessor for BagProvider.Observer();

    v10 = WeakArray.allElements.getter();

    swift_beginAccess();

    specialized Array.append<A>(contentsOf:)(v11);
    *a5 = v10;
  }
}

uint64_t BagProvider.Observer.deinit()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.removeObserver(observer:));
  }

  swift_weakDestroy();
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 24));
  return v0;
}

uint64_t BagProvider.Observer.__deallocating_deinit()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    UnfairLock.locked<A>(_:)(closure #1 in BagProvider.removeObserver(observer:)partial apply);
  }

  swift_weakDestroy();
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 24));
  return swift_deallocClassInstance();
}

void BagProvider.Retry.provider.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  Strong = swift_weakLoadStrong();
  if (!a1)
  {
    if (!Strong)
    {
      return;
    }

LABEL_7:
    if (swift_weakLoadStrong())
    {

      v13 = swift_weakLoadStrong();
      if (v13)
      {
        (*(v5 + 16))(v10, v13 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v4);

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v14, v15))
        {
          v17 = &selRef_registerObserver_;
          goto LABEL_19;
        }

        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Beginning observation to retry loading bag", v16, 2u);
        v17 = &selRef_registerObserver_;
LABEL_14:

LABEL_19:

        (*(v5 + 8))(v10, v4);
        goto LABEL_20;
      }

      v17 = &selRef_registerObserver_;
    }

    else
    {
      v18 = swift_weakLoadStrong();
      if (v18)
      {
        (*(v5 + 16))(v8, v18 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v4);

        v14 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v14, v19))
        {
          v17 = &selRef_unregisterObserver_;
          v10 = v8;
          goto LABEL_19;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v14, v19, "Stopping observation to retry loading bag", v20, 2u);
        v17 = &selRef_unregisterObserver_;
        v10 = v8;
        goto LABEL_14;
      }

      v17 = &selRef_unregisterObserver_;
    }

LABEL_20:
    v21 = [objc_opt_self() sharedMonitor];
    [v21 *v17];

    return;
  }

  if (!Strong)
  {
    goto LABEL_7;
  }

  v12 = Strong;

  if (v12 != a1)
  {
    goto LABEL_7;
  }
}

id BagProvider.Retry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BagProvider.Retry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BagProvider.deinit()
{
  outlined destroy of Signpost?(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost);

  v1 = OBJC_IVAR____TtC9MusicCore11BagProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t outlined destroy of Signpost?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BagProvider.__deallocating_deinit()
{
  BagProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BagProvider()
{
  result = type metadata singleton initialization cache for BagProvider;
  if (!type metadata singleton initialization cache for BagProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for BagProvider()
{
  type metadata accessor for Signpost?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Signpost?()
{
  if (!lazy cache variable for type metadata for Signpost?)
  {
    type metadata accessor for Signpost();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Signpost?);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9MusicCore11BagProviderC6Result33_D1F028703756EAFCB4E62A24E619467FLLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BagProvider.Result(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BagProvider.Result(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for BagProvider.Result(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

NSString one-time initialization function for storefrontChanged()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.storefrontChanged = result;
  return result;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t specialized BagProvider.init(clientInfo:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Signpost();
  __chkstk_darwin(v4);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 56))(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost, 1, 1);
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_bindings) = &_swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + v8) = UnfairLock.init()();
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers) = &_swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC9MusicCore11BagProvider_durableObservers;
  v10 = type metadata accessor for BagProvider.Observer();
  *(v2 + v9) = WeakArray.init(_:)(&_swiftEmptyArrayStorage, v10);
  if (one-time initialization token for musicBag != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.musicBag;
  Logger.init(_:)();
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_isFetching) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_deferReload) = 0;
  v12 = OBJC_IVAR____TtC9MusicCore11BagProvider_retry;
  *(v2 + v12) = [objc_allocWithZone(type metadata accessor for BagProvider.Retry()) init];
  *(v2 + 16) = a1;
  v13 = v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  *v13 = 0;
  *(v13 + 8) = 2;
  v14 = a1;
  BagProvider.signpost.getter(v6);
  Signpost.begin(dso:)(&_mh_execute_header);
  outlined destroy of Signpost(v6);
  BagProvider.fetchBag(forceReload:)(0);
  type metadata accessor for Whitetail.Binding();
  if (one-time initialization token for storefrontChanged != -1)
  {
    swift_once();
  }

  v16 = static NSNotificationName.storefrontChanged;
  v17 = static NSNotificationName.storefrontChanged;
  location = CFRange.init(_:)(*(&v15 - 1)).location;
  v24[3] = &type metadata for DistributedNotificationTrigger;
  v24[4] = &protocol witness table for DistributedNotificationTrigger;
  v24[0] = location;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v16;
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v24, 0, partial apply for closure #1 in BagProvider.init(clientInfo:), v19);
  v21 = OBJC_IVAR____TtC9MusicCore11BagProvider_bindings;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v2;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void partial apply for closure #1 in BagProvider.lockedSet(result:notify:)()
{
  partial apply for closure #1 in BagProvider.lockedSet(result:notify:)();
}

{
  closure #1 in BagProvider.lockedSet(result:notify:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 33), *(v0 + 40));
}

uint64_t outlined destroy of Signpost(uint64_t a1)
{
  v2 = type metadata accessor for Signpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Signpost?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Signpost(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Signpost?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Signpost(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id partial apply for closure #1 in BagProvider.handleStorefrontChange()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  v3 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t TabIdentifier.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7972617262696CLL;
  v2 = 0x736F65646976;
  if (a1 != 5)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0x6F69646172;
  if (a1 != 3)
  {
    v3 = 0x686372616573;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6F4E6E657473696CLL;
  if (a1 != 1)
  {
    v4 = 0x6573776F7262;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TabIdentifier()
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TabIdentifier@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TabIdentifier.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TabIdentifier@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  v5 = 0xE600000000000000;
  v6 = 0x736F65646976;
  if (v2 != 5)
  {
    v6 = 0x7473696C79616C70;
    v5 = 0xE900000000000073;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F69646172;
  result = 0x686372616573;
  if (v2 != 3)
  {
    v8 = 0x686372616573;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xE900000000000077;
  v11 = 0x6F4E6E657473696CLL;
  if (v2 != 1)
  {
    v11 = 0x6573776F7262;
    v10 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 2);
  v12 = v2 == 2;
  v13 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BagTabIdentifier()
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BagTabIdentifier@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized BagTabIdentifier.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance BagTabIdentifier(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x636973756D5F796DLL;
  v5 = 0xE600000000000000;
  v6 = 0x686372616573;
  if (v2 != 5)
  {
    v6 = 0x6F65646976;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6573776F7262;
  if (v2 != 3)
  {
    v8 = 0x6F69646172;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x756F795F726F66;
  if (v2 != 1)
  {
    v10 = 0x6E5F6E657473696CLL;
    v9 = 0xEA0000000000776FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t specialized BagTabIdentifier.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BagTabIdentifier.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized TabIdentifier.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TabIdentifier.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type TabIdentifier and conformance TabIdentifier()
{
  result = lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier;
  if (!lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier;
  if (!lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [TabIdentifier] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TabIdentifier] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TabIdentifier] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MusicCore13TabIdentifierOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TabIdentifier] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TabIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TabIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BagTabIdentifier and conformance BagTabIdentifier()
{
  result = lazy protocol witness table cache variable for type BagTabIdentifier and conformance BagTabIdentifier;
  if (!lazy protocol witness table cache variable for type BagTabIdentifier and conformance BagTabIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BagTabIdentifier and conformance BagTabIdentifier);
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10, &_sScPSgMd_0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd_0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10, &_sScPSgMd_0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd_0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSbSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10, &_sScPSgMd_0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd_0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10, &_sScPSgMd_0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd_0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t specialized Set.contains(_:)(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), ActionType.rawValue.getter(a1), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = ActionType.rawValue.getter(*(*(a2 + 48) + v6));
      v10 = v9;
      if (v8 == ActionType.rawValue.getter(a1) && v10 == v11)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), Library.Menu.Identifier.rawValue.getter(a1), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xD000000000000029;
      v9 = "orites";
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 0xA:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 0xC:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "orites";
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

{
  v2 = *(a2 + 16);
  if (v2)
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1 & 1);
    v5 = Hasher._finalize()();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), ApplicationCapabilities.Service.rawValue.getter(a1), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v30 = ~v5;
    v7 = 0x646956636973756DLL;
    v29 = a1;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004C4B80;
        }

        v13 = *(*(a2 + 48) + v6) ? v7 : 0x636973756DLL;
        v14 = *(*(a2 + 48) + v6) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(a2 + 48) + v6) <= 1u ? v13 : v11;
        v10 = *(*(a2 + 48) + v6) <= 1u ? v14 : v12;
      }

      else if (*(*(a2 + 48) + v6) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x80000001004C4BC0;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x80000001004C4BE0;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a1 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a1 == 9)
      {
        v16 = 0x80000001004C4BE0;
      }

      if (a1 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x80000001004C4BC0;
      }

      v17 = 0x746963696C707865;
      if (a1 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a1 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a1 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a1 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a1 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a1 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a1 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x80000001004C4B80;
      }

      if (a1)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a1)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a1 <= 4u ? v19 : v15;
      v24 = a1 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = v6;
      v26 = v7;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        v6 = (v25 + 1) & v30;
        LOBYTE(a1) = v29;
        v7 = v26;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v27 & 1;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

{
  v3 = type metadata accessor for AudioVariant();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

{
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type UIView.Corner and conformance UIView.Corner(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type UIView.Corner and conformance UIView.Corner(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(a1);
  String.hash(into:)();

  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(a2 + 48) + v6);
    v9 = v8 >> 6;
    if (v8 >> 6 > 1)
    {
      break;
    }

    if (v9)
    {
      if ((a1 & 0xC0) == 0x40)
      {
        if (((v8 ^ a1) & 0x3F) == 0)
        {
          return 1;
        }

        goto LABEL_5;
      }
    }

    else if (a1 < 0x40u)
    {
      if (((v8 ^ a1) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_5;
    }

LABEL_18:
    Hasher.init(_seed:)();
    String.hash(into:)();

    v10 = Hasher._finalize()();
    Hasher.init(_seed:)();
    String.hash(into:)();

    if (v10 == Hasher._finalize()())
    {
      return 1;
    }

LABEL_5:
    v6 = (v6 + 1) & v7;
    if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  if (v9 == 2 || v8 != 192 || a1 != 192)
  {
    goto LABEL_18;
  }

  return 1;
}

BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t Playlist.hasActiveCollaboration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  Playlist.collaboration.getter();
  v9 = type metadata accessor for Playlist.Collaboration();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {
    outlined destroy of TaskPriority?(v2, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd);
    v11 = type metadata accessor for Playlist.Collaborator.Status();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  Playlist.Collaboration.collaboratorStatus.getter();
  (*(v10 + 8))(v2, v9);
  v12 = type metadata accessor for Playlist.Collaborator.Status();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    goto LABEL_13;
  }

  outlined init with copy of TaskPriority?(v8, v6, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd);
  v14 = (*(v13 + 88))(v6, v12);
  if (v14 != enum case for Playlist.Collaborator.Status.host(_:) && v14 != enum case for Playlist.Collaborator.Status.joined(_:) && v14 != enum case for Playlist.Collaborator.Status.pending(_:))
  {
    (*(v13 + 8))(v6, v12);
    goto LABEL_13;
  }

  v17 = 1;
LABEL_14:
  outlined destroy of TaskPriority?(v8, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd);
  return v17;
}

BOOL Playlist.Collaboration.hasPendingCollaborators.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = v7 - v1;
  Playlist.Collaboration.pendingCollaborators.getter();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMd);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of TaskPriority?(v2, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGSgMd);
    return 0;
  }

  else
  {
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Collaborator> and conformance MusicItemCollection<A>, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMd);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v5 = v7[1] != v7[0];
    (*(v4 + 8))(v2, v3);
  }

  return v5;
}

uint64_t static Collaboration.Setup.contextualImageName(active:hasPendingCollaborators:)(char a1)
{
  if (a1)
  {
    return 0x322E6E6F73726570;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t one-time initialization function for artworkCaching()
{
  type metadata accessor for Collaboration.ArtworkCachingReference();
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000027;
  *(v0 + 24) = 0x80000001004C5380;
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();

  [v1 setCacheLimit:100 forCacheIdentifier:v2 cacheReference:v0];

  static Collaboration.artworkCaching = v0;
  return result;
}

uint64_t *Collaboration.artworkCaching.unsafeMutableAddressor()
{
  if (one-time initialization token for artworkCaching != -1)
  {
    swift_once();
  }

  return &static Collaboration.artworkCaching;
}

uint64_t static Collaboration.artworkCaching.getter()
{
  if (one-time initialization token for artworkCaching != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Collaboration.artworkCaching.setter(uint64_t a1)
{
  if (one-time initialization token for artworkCaching != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Collaboration.artworkCaching = a1;
}

uint64_t (*static Collaboration.artworkCaching.modify())()
{
  if (one-time initialization token for artworkCaching != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ArtworkVideoReportingController.videoArtworkContextProviding.modify;
}

unint64_t static Collaboration.Setup.imageName(active:hasPendingCollaborators:)(char a1, char a2)
{
  v2 = 0x322E6E6F73726570;
  v3 = 0xD000000000000013;
  if ((a2 & 1) == 0)
  {
    v3 = 0x322E6E6F73726570;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t Collaboration.Error.errorDescription.getter(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    v9 = 0;
    if (a3)
    {
      _StringGuts.grow(_:)(17);
      v5 = 0x74694B636973754DLL;
      v4 = 0xEF3D726F72726520;
    }

    else
    {
      _StringGuts.grow(_:)(25);
      v4 = 0x80000001004C8EA0;
      v5 = 0xD000000000000017;
    }

    String.append(_:)(*&v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    _print_unlocked<A, B>(_:_:)();
    return v9;
  }

  if (a3 == 2)
  {
    _StringGuts.grow(_:)(38);

    v9 = 0xD000000000000024;
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.append(_:)(v7);
    return v9;
  }

  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 ^ 5 | a2)
      {
        return 0xD000000000000019;
      }

      else
      {
        return 0xD000000000000016;
      }
    }

    else if (a1 ^ 7 | a2)
    {
      if (a1 ^ 8 | a2)
      {
        return 0x73736F7020746F4ELL;
      }

      else
      {
        return 0xD000000000000032;
      }
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else if (a1 <= 1)
  {
    if (a1 | a2)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0x636120726F6E694DLL;
    }
  }

  else if (a1 ^ 2 | a2)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t static Collaboration.Error.tapToRadarAlert()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v0 - 8);
  v2 = &v38 - v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v19 = &v38 - v18;
  if (one-time initialization token for isInternalInstall != -1)
  {
    result = swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v38 = v6;
    v39 = v4;
    v40 = v3;
    v41 = v2;
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0gq5Tf4g_n(_swiftEmptyArrayStorage);
    static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(0xD00000000000001FLL, 0x80000001004C8F50, 0xD000000000000032, 0x80000001004C8F70, _swiftEmptyArrayStorage, v20, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v19, 1u);

    outlined init with copy of TaskPriority?(v19, v16, &_s10Foundation3URLVSgMd);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      outlined destroy of TaskPriority?(v19, &_s10Foundation3URLVSgMd);
      v21 = v16;
    }

    else
    {
      v22 = *(v8 + 32);
      v22(v12, v16, v7);
      v23 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v24);
      v26 = v25;
      v27 = [v23 canOpenURL:v25];

      if (v27)
      {
        v28 = v42;
        (*(v8 + 16))(v42, v12, v7);
        v29 = (*(v8 + 80) + 16) & ~*(v8 + 80);
        v30 = swift_allocObject();
        v22((v30 + v29), v28, v7);
        v31 = v38;
        UUID.init()();
        v32 = UUID.uuidString.getter();
        v34 = v33;
        (*(v39 + 8))(v31, v40);
        (*(v8 + 8))(v12, v7);
        outlined destroy of TaskPriority?(v19, &_s10Foundation3URLVSgMd);
        v35 = type metadata accessor for TaskPriority();
        v36 = v41;
        (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
        v37 = swift_allocObject();
        *(v37 + 16) = 0;
        *(v37 + 24) = 0;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        strcpy((v37 + 48), "File a Radar");
        *(v37 + 61) = 0;
        *(v37 + 62) = -5120;
        *(v37 + 64) = 2;
        *(v37 + 65) = *v43;
        *(v37 + 68) = *&v43[3];
        *(v37 + 72) = &async function pointer to partial apply for closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:);
        *(v37 + 80) = v30;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v36, &async function pointer to partial apply for closure #1 in static Collaboration.Error.tapToRadarAlert(), v37);
      }

      (*(v8 + 8))(v12, v7);
      v21 = v19;
    }

    return outlined destroy of TaskPriority?(v21, &_s10Foundation3URLVSgMd);
  }

  return result;
}

uint64_t closure #1 in static Collaboration.Error.tapToRadarAlert()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 32) = 0u;
  v5 = *(a4 + 40);
  if (v5)
  {
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    *(v4 + 88) = v7;
    *v7 = v4;
    v7[1] = closure #1 in static Collaboration.Error.tapToRadarAlert();

    return v10(a4, v4 + 16);
  }

  else
  {
    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t closure #1 in static Collaboration.Error.tapToRadarAlert()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Collaboration.Manager.__allocating_init(coordinator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of ActionPerforming(a1, v2 + 16);
  return v2;
}

id Collaboration.Manager.participantProfile.getter()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 activeUserState];

  v2 = [v1 music];
  v3 = [v2 userProfile];

  return v3;
}

uint64_t Playlist.isEditable.getter()
{
  v0 = type metadata accessor for Playlist.EditableComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  Playlist.editableComponents.getter();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    outlined destroy of TaskPriority?(v6, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd);
  }

  else
  {
    static Playlist.EditableComponents.tracklist.getter();
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents, &type metadata accessor for Playlist.EditableComponents);
    v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v8(v6, v0);
    if (v7)
    {
      return [objc_opt_self() isRunningInStoreDemoMode] ^ 1;
    }
  }

  return 0;
}

id Collaboration.Manager.canCollaborate(for:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  v13[7] = v12;
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  if ((BYTE8(v5) & 1) == 0)
  {
    v0 = 3;
    goto LABEL_10;
  }

  if (BYTE2(v13[0]) != 1)
  {
    v0 = 6;
    goto LABEL_10;
  }

  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v2 = result;
    v3 = [result isInitialImport];

    if ((v3 & 1) == 0)
    {
      return outlined destroy of ApplicationCapabilities(v13);
    }

    v0 = 7;
LABEL_10:
    lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
    swift_allocError();
    *v4 = v0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    swift_willThrow();
    return outlined destroy of ApplicationCapabilities(v13);
  }

  __break(1u);
  return result;
}

uint64_t Logger.collaboration.unsafeMutableAddressor()
{
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.collaboration);
}

uint64_t static Collaboration.Manager.DeepLinkType.actionKey.getter(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;

  return v2;
}

uint64_t static Collaboration.Manager.DeepLinkType.actionKey.setter(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  if (*(a1._rawValue + 2) && (v2 = static Collaboration.Manager.DeepLinkType.actionKey, v3 = qword_100602EE8, , v4 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v2, v3), v6 = v5, , (v6 & 1) != 0))
  {
    v7 = (*(a1._rawValue + 7) + 16 * v4);
    v8 = *v7;
    v9 = v7[1];

    v10._countAndFlagsBits = v8;
    v10._object = v9;
    v11 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Collaboration.Manager.DeepLinkType.init(rawValue:), v10);

    if (v11 == 1)
    {
      v12.value = MusicCore_Collaboration_Manager_DeepLinkType_pending;
    }

    else
    {
      v12.value = MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault;
    }

    if (v11)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 2;
  }
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Collaboration.Manager.DeepLinkType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MusicCore_Collaboration_Manager_DeepLinkType_pending;
  }

  else
  {
    v4.value = MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Collaboration.Manager.DeepLinkType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x676E69646E6570;
  }

  else
  {
    return 1852403562;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Collaboration.Manager.DeepLinkType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E69646E6570;
  }

  else
  {
    v3 = 1852403562;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E69646E6570;
  }

  else
  {
    v5 = 1852403562;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Collaboration.Manager.DeepLinkType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Collaboration.Manager.DeepLinkType()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Collaboration.Manager.DeepLinkType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Collaboration.Manager.DeepLinkType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Collaboration.Manager.DeepLinkType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Collaboration.Manager.DeepLinkType(uint64_t *a1@<X8>)
{
  v2 = 1852403562;
  if (*v1)
  {
    v2 = 0x676E69646E6570;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Collaboration.Manager.queryItemsDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for URLComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of TaskPriority?(v2, &_s10Foundation13URLComponentsVSgMd);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = URLComponents.queryItemsDictionary.getter();
  if (!v7)
  {
    (*(v4 + 8))(v6, v3);
    return v7;
  }

  v8 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of Collaboration.Manager.queryItemsDictionary(for:));
  swift_arrayDestroy();
  swift_beginAccess();
  if (!*(v7 + 16) || (v9 = static Collaboration.Manager.DeepLinkType.actionKey, v10 = qword_100602EE8, , v11 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v9, v10), v13 = v12, , (v13 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  v14 = (*(v7 + 56) + 16 * v11);
  v15 = *v14;
  v16 = v14[1];

  LOBYTE(v15) = specialized Set.contains(_:)(v15, v16, v8);

  (*(v4 + 8))(v6, v3);
  if ((v15 & 1) == 0)
  {

    return 0;
  }

  return v7;
}

uint64_t Collaboration.Manager.start(_:isOpen:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 200) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd);
  *(v3 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *(v3 + 48) = swift_task_alloc();
  v4 = type metadata accessor for Playlist.Collaboration.InvitationMode();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  started = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest();
  *(v3 + 112) = started;
  *(v3 + 120) = *(started - 8);
  *(v3 + 128) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 136) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 144) = v8;
  *(v3 + 152) = v7;

  return _swift_task_switch(Collaboration.Manager.start(_:isOpen:), v8, v7);
}

uint64_t Collaboration.Manager.start(_:isOpen:)()
{
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 160) = __swift_project_value_buffer(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start called - isOpenInvite=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  v12 = *(v0 + 200);
  v13 = *(v0 + 32);

  v14 = *(v8 + 16);
  *(v0 + 168) = v14;
  *(v0 + 176) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v6, v13, v7);
  v15 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
  if (!v12)
  {
    v15 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
  }

  (*(v10 + 104))(v9, *v15, v11);
  MusicCollaborativePlaylist.StartCollaborationRequest.init(playlist:invitationMode:)();
  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = Collaboration.Manager.start(_:isOpen:);
  v17 = *(v0 + 24);

  return MusicCollaborativePlaylist.StartCollaborationRequest.response()(v17);
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = Collaboration.Manager.start(_:isOpen:);
  }

  else
  {
    v5 = Collaboration.Manager.start(_:isOpen:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v47 = v0;
  v1 = v0[5];

  Playlist.collaboration.getter();
  v2 = type metadata accessor for Playlist.Collaboration();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[5];
  v5 = v0[6];
  if (v4 == 1)
  {
    outlined destroy of TaskPriority?(v0[5], &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd);
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  else
  {
    Playlist.Collaboration.invitationURL.getter();
    (*(v3 + 8))(v6, v2);
    v8 = type metadata accessor for URL();
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
    {
      v43 = v0[6];
      (*(v0[15] + 8))(v0[16], v0[14]);
      outlined destroy of TaskPriority?(v43, &_s10Foundation3URLVSgMd);

      v42 = v0[1];
      goto LABEL_11;
    }
  }

  v9 = v0[21];
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[3];
  outlined destroy of TaskPriority?(v0[6], &_s10Foundation3URLVSgMd);
  v9(v10, v12, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46[0] = v45;
    *v19 = 136446210;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = v18;
    v24 = *(v17 + 8);
    v24(v16, v23);
    v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, v46);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "invitationURL missing for=%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  else
  {

    v26 = v18;
    v24 = *(v17 + 8);
    v24(v16, v26);
  }

  v27 = v0[10];
  v28 = v0[3];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  v29 = swift_allocError();
  *v30 = xmmword_1004F2F30;
  *(v30 + 16) = 3;
  swift_willThrow();
  v24(v28, v27);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46[0] = v34;
    *v33 = 136446210;
    v0[2] = v29;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v35 = String.init<A>(describing:)();
    v37 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v35, v36, v46);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Start failed with error=%{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  v39 = v0[15];
  v38 = v0[16];
  v40 = v0[14];
  swift_allocError();
  *v41 = v29;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  swift_willThrow();
  (*(v39 + 8))(v38, v40);

  v42 = v0[1];
LABEL_11:

  return v42();
}

{
  v16 = v0;

  v1 = v0[24];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.validate(_:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Playlist();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v8;
  v3[18] = v7;

  return _swift_task_switch(Collaboration.Manager.validate(_:url:), v8, v7);
}

uint64_t Collaboration.Manager.validate(_:url:)()
{
  v29 = v0;
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL);
    v26 = v8;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Validate called with url=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[5];
  (*(v0[7] + 16))(v0[8], v0[4], v0[6]);
  v6(v20, v22, v21);
  MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = Collaboration.Manager.validate(_:url:);
  v24 = v0[3];

  return MusicCollaborativePlaylist.JoinRequest.validate()(v24);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = Collaboration.Manager.validate(_:url:);
  }

  else
  {
    v5 = Collaboration.Manager.validate(_:url:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v17 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v9 = String.init<A>(describing:)();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Validate failed with error=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v12 = v0[21];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.join(_:url:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(Collaboration.Manager.join(_:url:), v7, v6);
}

uint64_t Collaboration.Manager.join(_:url:)()
{
  v29 = v0;
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL);
    v26 = v8;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Join called with url=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[4];
  (*(v0[6] + 16))(v0[8], v0[3], v0[5]);
  v6(v20, v22, v21);
  MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = Collaboration.Manager.join(_:url:);
  v24 = v0[7];

  return MusicCollaborativePlaylist.JoinRequest.response()(v24);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = Collaboration.Manager.join(_:url:);
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = v2[17];
    v4 = v2[18];
    v5 = Collaboration.Manager.join(_:url:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Join failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[21];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.end(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.EndCollaborationRequest();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(Collaboration.Manager.end(_:), v6, v5);
}

uint64_t Collaboration.Manager.end(_:)()
{
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = __swift_project_value_buffer(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "End called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  MusicCollaborativePlaylist.EndCollaborationRequest.init(playlist:)();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = Collaboration.Manager.end(_:);
  v10 = v0[3];

  return MusicCollaborativePlaylist.EndCollaborationRequest.response()(v10);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = Collaboration.Manager.end(_:);
  }

  else
  {
    v5 = Collaboration.Manager.end(_:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "End failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.moderate(_:collaborator:in:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 193) = a1;
  v4 = type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Collaborator();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 128) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 136) = v8;
  *(v3 + 144) = v7;

  return _swift_task_switch(Collaboration.Manager.moderate(_:collaborator:in:), v8, v7);
}

uint64_t Collaboration.Manager.moderate(_:collaborator:in:)()
{
  v44 = v0;
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = type metadata accessor for Logger();
  *(v0 + 152) = __swift_project_value_buffer(v9, static Logger.collaboration);
  v42 = *(v3 + 16);
  v42(v1, v8, v2);
  v41 = *(v6 + 16);
  v41(v4, v7, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 120);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);
  v16 = *(v0 + 88);
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  if (v12)
  {
    v40 = v11;
    v19 = *(v0 + 193);
    log = v10;
    v20 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v20 = 136446722;
    *(v0 + 192) = v19 & 1;
    v21 = String.init<A>(describing:)();
    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v21, v22, &v43);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v14 + 8))(v13, v15);
    v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v43);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v17 + 8))(v16, v18);
    v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v43);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v40, "    Moderate called for:\n        - type=%{public}s\n        - collaborator=%{public}s\n        - playlist=%{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 64);
  v34 = *(v0 + 32);
  v35 = *(v0 + 193);
  v42(*(v0 + 112), *(v0 + 24), *(v0 + 96));
  v41(v32, v34, v33);
  MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.init(collaborator:playlist:)();
  if (v35)
  {
    v36 = swift_task_alloc();
    *(v0 + 176) = v36;
    *v36 = v0;
    v36[1] = Collaboration.Manager.moderate(_:collaborator:in:);

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.reject()();
  }

  else
  {
    v37 = swift_task_alloc();
    *(v0 + 160) = v37;
    *v37 = v0;
    v37[1] = Collaboration.Manager.moderate(_:collaborator:in:);

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.approve()();
  }
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = Collaboration.Manager.moderate(_:collaborator:in:);
  }

  else
  {
    v5 = Collaboration.Manager.moderate(_:collaborator:in:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = Collaboration.Manager.moderate(_:collaborator:in:);
  }

  else
  {
    v5 = Collaboration.Manager.moderate(_:collaborator:in:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v16 = v0;
  v1 = v0[21];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

{
  v16 = v0;
  v1 = v0[23];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.remove(collaborator:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Collaborator();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v8;
  v3[19] = v7;

  return _swift_task_switch(Collaboration.Manager.remove(collaborator:in:), v8, v7);
}

uint64_t Collaboration.Manager.remove(collaborator:in:)()
{
  v39 = v0;
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];
  v9 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v9, static Logger.collaboration);
  v37 = *(v3 + 16);
  v37(v1, v8, v2);
  v10 = *(v6 + 16);
  v10(v4, v7, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  v18 = v0[10];
  v36 = v0[9];
  if (v13)
  {
    log = v11;
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v19 = 136446466;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v12;
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v38);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v18 + 8))(v17, v36);
    v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v38);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v34, "    Remove called for:\n        - collaborator=%{public}s\n        - playlist=%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v18 + 8))(v17, v36);
    (*(v15 + 8))(v14, v16);
  }

  v28 = v0[11];
  v29 = v0[9];
  v30 = v0[5];
  v37(v0[15], v0[4], v0[13]);
  v10(v28, v30, v29);
  MusicCollaborativePlaylist.RemoveCollaboratorRequest.init(collaborator:playlist:)();
  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = Collaboration.Manager.remove(collaborator:in:);
  v32 = v0[3];

  return MusicCollaborativePlaylist.RemoveCollaboratorRequest.response()(v32);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = Collaboration.Manager.remove(collaborator:in:);
  }

  else
  {
    v5 = Collaboration.Manager.remove(collaborator:in:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Remove failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[22];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.resetInvitationURL(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.ResetInvitationLinkRequest();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(Collaboration.Manager.resetInvitationURL(_:), v6, v5);
}

uint64_t Collaboration.Manager.resetInvitationURL(_:)()
{
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = __swift_project_value_buffer(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reset URL called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  MusicCollaborativePlaylist.ResetInvitationLinkRequest.init(playlist:)();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = Collaboration.Manager.resetInvitationURL(_:);
  v10 = v0[3];

  return MusicCollaborativePlaylist.ResetInvitationLinkRequest.response()(v10);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = Collaboration.Manager.resetInvitationURL(_:);
  }

  else
  {
    v5 = Collaboration.Manager.resetInvitationURL(_:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reset failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}