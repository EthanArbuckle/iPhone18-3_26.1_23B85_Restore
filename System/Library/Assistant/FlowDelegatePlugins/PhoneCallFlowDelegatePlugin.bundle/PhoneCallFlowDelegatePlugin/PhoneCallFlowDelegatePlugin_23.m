unint64_t PhoneAppResolutionHelper.getSiriRememberVersionApps(apps:)(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_5_26();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = App.appIdentifier.getter();
      if (v6)
      {
        break;
      }

LABEL_22:
      if (v2 == ++v3)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    if (v5 == 0xD000000000000015 && v6 == 0x8000000000452BD0)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

LABEL_21:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_22;
      }
    }

    type metadata accessor for App();
    App.__allocating_init(appIdentifier:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall PhoneAppResolutionHelper.mapInCallServiceToMobile(appId:)(Swift::String appId)
{
  v1 = String.lowercased()();
  v2 = String.lowercased()();
  if (v1._countAndFlagsBits == v2._countAndFlagsBits && v1._object == v2._object)
  {
  }

  else
  {
    OUTLINED_FUNCTION_14_36();
    OUTLINED_FUNCTION_24_21();

    if ((v1._countAndFlagsBits & 1) == 0)
    {
    }
  }

  OUTLINED_FUNCTION_0();
  v4 = String.lowercased()();

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall PhoneAppResolutionHelper.mapMobileToInCallService(appId:)(Swift::String appId)
{
  v1 = String.lowercased()();
  v2 = String.lowercased()();
  if (v1._countAndFlagsBits == v2._countAndFlagsBits && v1._object == v2._object)
  {
  }

  else
  {
    OUTLINED_FUNCTION_14_36();
    OUTLINED_FUNCTION_24_21();

    if ((v1._countAndFlagsBits & 1) == 0)
    {
    }
  }

  v4 = OUTLINED_FUNCTION_0();
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t PhoneAppResolutionHelper.isSameAppId(app:appId:)()
{
  countAndFlagsBits = App.appIdentifier.getter();
  if (v1)
  {
    v2 = String.lowercased()();
    countAndFlagsBits = v2._countAndFlagsBits;
    object = v2._object;
  }

  else
  {
    object = 0;
  }

  v4 = String.lowercased()();
  if (object)
  {
    if (countAndFlagsBits == v4._countAndFlagsBits && object == v4._object)
    {
      v6 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0();
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *PhoneAppResolutionHelper.rankBasedOnAppUsageTime(apps:)(uint64_t a1)
{
  v2 = specialized Array.count.getter(a1);
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v2 == v3)
    {
      v15 = *(v19 + 144);
      OUTLINED_FUNCTION_2_0();
      v17 = (*(v16 + 80))(v4, 7);

      v20 = specialized Array._copyToContiguousArray()();
      specialized MutableCollection<>.sort(by:)(&v20, v19, v17);

      return v20;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = App.appIdentifier.getter();
    v8 = v7;

    if (!v8)
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = v4[2];
      OUTLINED_FUNCTION_92_0();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v13;
    }

    v10 = v4[2];
    v9 = v4[3];
    if (v10 >= v9 >> 1)
    {
      OUTLINED_FUNCTION_3_62(v9);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v14;
    }

    v4[2] = v10 + 1;
    v11 = &v4[2 * v10];
    v11[4] = v6;
    v11[5] = v8;
    ++v3;
  }

  __break(1u);
LABEL_17:
  __break(1u);

  __break(1u);
  return result;
}

double PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(uint64_t a1)
{
  v3 = App.appIdentifier.getter();
  v5 = 0.0;
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    v8 = v1[10];
    v9 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v8);
    (*(v9 + 256))(v26, v8, v9);
    v10 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_11_0();
    v14 = v13(v12, v10);
    if (v15)
    {
      if (v14 == v6 && v15 == v7)
      {

        __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_16:

        return INFINITY;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      __swift_destroy_boxed_opaque_existential_1(v26);
      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    if (*(a1 + 16) && (v18 = OUTLINED_FUNCTION_5_26(), specialized __RawDictionaryStorage.find<A>(_:)(v18, v19), (v20 & 1) != 0))
    {
      v21 = OUTLINED_FUNCTION_5_26();
      v23 = specialized Dictionary.subscript.getter(v21, v22, a1);

      if (v23)
      {
        [v23 doubleValue];
        v5 = v24;
      }
    }

    else
    {
    }
  }

  return v5;
}

uint64_t *PhoneAppResolutionHelper.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v2 = v0[18];

  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_appResolver;
  v4 = type metadata accessor for AppResolver();
  OUTLINED_FUNCTION_40(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix + 8);
  v7 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix + 24);

  return v0;
}

uint64_t PhoneAppResolutionHelper.__deallocating_deinit()
{
  PhoneAppResolutionHelper.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v7);
    *a1 = v7;
  }

  v9 = *(v7 + 16);
  v11[0] = v7 + 32;
  v11[1] = v9;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, a2, a3);
  specialized ContiguousArray._endMutation()();
  if (v3)
  {

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v7);
  if (result >= v7)
  {
    goto LABEL_5;
  }

  v9 = result;
  UninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5(v7 / 2);
  v12[0] = v11;
  v12[1] = (v7 / 2);

  result = specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v12, v13, a1, v9, a2, a3);
  if (!v3)
  {
    if (v7 < -1)
    {
      goto LABEL_13;
    }

LABEL_9:
    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

LABEL_11:

    return swift_bridgeObjectRelease_n();
  }

  if (v7 >= -1)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_5:
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v7, 1, a1, a2, a3);
    }

    else
    {
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = (*a4 + 8 * a3 - 8);
    v10 = a1 - a3;
    while (2)
    {
      v11 = *(v8 + 8 * v7);
      v12 = v10;
      v20 = v9;
      do
      {
        v13 = *v9;

        v14 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
        v15 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);

        if (v15 >= v14)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        v17 = *v9;
        *v9 = v9[1];
        v9[1] = v17;
        --v9;
      }

      while (!__CFADD__(v12++, 1));
      ++v7;
      v9 = v20 + 1;
      --v10;
      if (v7 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v115 = _swiftEmptyArrayStorage;
  v9 = a3[1];
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  if (v9 >= 1)
  {
    v114 = a5;
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    v100 = a4;
    v110 = a6;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v14 = v10;
        v15 = v10 + 1;
        v107 = v9;
        v16 = *(*a3 + 8 * v13);
        v17 = (*a3 + 8 * v10);
        v18 = 8 * v10;
        v20 = *v17;
        v19 = v17 + 2;

        v21 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
        v22 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
        v23 = v107;

        v102 = v14;
        v24 = v14 + 2;
        while (1)
        {
          v25 = v24;
          if (v15 + 1 >= v23)
          {
            break;
          }

          ++v15;
          v27 = *(v19 - 1);
          v26 = *v19;

          v28 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
          v29 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
          v23 = v107;

          ++v19;
          v24 = v25 + 1;
          if (v22 < v21 == v29 >= v28)
          {
            goto LABEL_9;
          }
        }

        v15 = v23;
LABEL_9:
        if (v22 >= v21)
        {
          a4 = v100;
          v13 = v15;
          v12 = v102;
        }

        else
        {
          v13 = v15;
          v12 = v102;
          if (v13 < v102)
          {
            goto LABEL_113;
          }

          if (v102 >= v13)
          {
            a4 = v100;
          }

          else
          {
            if (v23 >= v25)
            {
              v30 = v25;
            }

            else
            {
              v30 = v23;
            }

            v31 = 8 * v30 - 8;
            v32 = v13;
            v33 = v102;
            do
            {
              if (v33 != --v32)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_118;
                }

                v35 = *(v34 + v18);
                *(v34 + v18) = *(v34 + v31);
                *(v34 + v31) = v35;
              }

              ++v33;
              v31 -= 8;
              v18 += 8;
            }

            while (v33 < v32);
            a4 = v100;
          }
        }
      }

      v36 = a3[1];
      if (v13 < v36)
      {
        if (__OFSUB__(v13, v12))
        {
          goto LABEL_112;
        }

        if (v13 - v12 < a4)
        {
          v37 = v12 + a4;
          if (__OFADD__(v12, a4))
          {
            goto LABEL_114;
          }

          if (v37 >= v36)
          {
            v37 = a3[1];
          }

          if (v37 < v12)
          {
LABEL_115:
            __break(1u);
LABEL_116:
            swift_bridgeObjectRelease_n();

            __break(1u);
LABEL_117:
            swift_bridgeObjectRelease_n();

            __break(1u);
LABEL_118:
            swift_bridgeObjectRelease_n();

            __break(1u);
LABEL_119:
            swift_bridgeObjectRelease_n();

            __break(1u);
LABEL_120:
            swift_bridgeObjectRelease_n();

            __break(1u);
            return result;
          }

          if (v13 != v37)
          {
            v112 = v11;
            v38 = *a3;
            v39 = *a3 + 8 * v13 - 8;
            v103 = v12;
            v105 = v37;
            v40 = v12 - v13;
            do
            {
              v108 = v13;
              v41 = *(v38 + 8 * v13);
              v42 = v40;
              v43 = v39;
              do
              {
                v44 = *v43;

                v45 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
                v46 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);

                if (v46 >= v45)
                {
                  break;
                }

                if (!v38)
                {
                  goto LABEL_116;
                }

                v47 = *v43;
                *v43 = v43[1];
                v43[1] = v47;
                --v43;
              }

              while (!__CFADD__(v42++, 1));
              ++v13;
              v39 += 8;
              --v40;
            }

            while (v108 + 1 != v105);
            v13 = v105;
            v11 = v112;
            v12 = v103;
          }
        }
      }

      if (v13 < v12)
      {
        goto LABEL_111;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = *(v11 + 2);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v11 = v96;
      }

      v49 = *(v11 + 2);
      v50 = v49 + 1;
      if (v49 >= *(v11 + 3) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v11 = v97;
      }

      *(v11 + 2) = v50;
      v51 = v11 + 32;
      v52 = &v11[16 * v49 + 32];
      *v52 = v12;
      *(v52 + 1) = v13;
      v106 = *a1;
      if (!*a1)
      {
        goto LABEL_119;
      }

      if (v49)
      {
        v104 = v11 + 32;
        v113 = v11;
        while (1)
        {
          v53 = v50 - 1;
          v54 = &v51[2 * v50 - 2];
          v55 = &v11[16 * v50];
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v56 = *(v11 + 4);
            v57 = *(v11 + 5);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_60:
            if (v59)
            {
              goto LABEL_101;
            }

            v71 = *v55;
            v70 = *(v55 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_104;
            }

            v75 = v54[1];
            v76 = v75 - *v54;
            if (__OFSUB__(v75, *v54))
            {
              goto LABEL_107;
            }

            if (__OFADD__(v73, v76))
            {
              goto LABEL_109;
            }

            if (v73 + v76 >= v58)
            {
              if (v58 < v76)
              {
                v53 = v50 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          if (v50 < 2)
          {
            goto LABEL_103;
          }

          v78 = *v55;
          v77 = *(v55 + 1);
          v66 = __OFSUB__(v77, v78);
          v73 = v77 - v78;
          v74 = v66;
LABEL_75:
          if (v74)
          {
            goto LABEL_106;
          }

          v80 = *v54;
          v79 = v54[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_108;
          }

          if (v81 < v73)
          {
            goto LABEL_89;
          }

LABEL_82:
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
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
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          v85 = *a3;
          if (!*a3)
          {
            goto LABEL_117;
          }

          v86 = &v51[2 * v53 - 2];
          v87 = *v86;
          v88 = v53;
          v89 = &v51[2 * v53];
          v90 = *(v89 + 1);
          v91 = (v85 + 8 * *v86);
          v92 = (v85 + 8 * *v89);
          v93 = (v85 + 8 * v90);

          specialized _merge<A>(low:mid:high:buffer:by:)(v91, v92, v93, v106, v114, v110);
          if (v111)
          {
            goto LABEL_94;
          }

          if (v90 < v87)
          {
            goto LABEL_96;
          }

          v111 = 0;
          v94 = *(v113 + 2);
          if (v88 > v94)
          {
            goto LABEL_97;
          }

          *v86 = v87;
          v86[1] = v90;
          if (v88 >= v94)
          {
            goto LABEL_98;
          }

          v50 = v94 - 1;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)(v89 + 16, v94 - 1 - v88, v89);
          v11 = v113;
          *(v113 + 2) = v94 - 1;
          a6 = v110;
          v51 = v104;
          if (v94 <= 2)
          {
            goto LABEL_89;
          }
        }

        v60 = &v51[2 * v50];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_99;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_100;
        }

        v67 = *(v55 + 1);
        v68 = v67 - *v55;
        if (__OFSUB__(v67, *v55))
        {
          goto LABEL_102;
        }

        v66 = __OFADD__(v58, v68);
        v69 = v58 + v68;
        if (v66)
        {
          goto LABEL_105;
        }

        if (v69 >= v63)
        {
          v83 = *v54;
          v82 = v54[1];
          v66 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v66)
          {
            goto LABEL_110;
          }

          if (v58 < v84)
          {
            v53 = v50 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_60;
      }

LABEL_89:
      v10 = v13;
      v9 = a3[1];
      a4 = v100;
      if (v13 >= v9)
      {
        v115 = v11;
        a5 = v114;
        break;
      }
    }
  }

  v98 = *a1;
  if (!*a1)
  {
    goto LABEL_120;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v115, v98, a3, a5, a6);
LABEL_94:

  return swift_bridgeObjectRelease_n();
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  }

  for (*a1 = v8; ; v8 = *a1)
  {
    v9 = *(v8 + 2);
    if (v9 < 2)
    {
LABEL_11:
      swift_bridgeObjectRelease_n();

      return 1;
    }

    v10 = *a3;
    if (!*a3)
    {
      break;
    }

    v11 = *&v8[16 * v9];
    v12 = *&v8[16 * v9 + 24];
    v13 = (v10 + 8 * v11);
    v14 = (v10 + 8 * *&v8[16 * v9 + 16]);
    v15 = (v10 + 8 * v12);

    specialized _merge<A>(low:mid:high:buffer:by:)(v13, v14, v15, a2, a4, a5);
    if (v6)
    {
      goto LABEL_11;
    }

    if (v12 < v11)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    if (v9 - 2 >= *(v8 + 2))
    {
      goto LABEL_13;
    }

    v16 = &v8[16 * v9];
    *v16 = v11;
    *(v16 + 1) = v12;
    *a1 = v8;
    specialized Array.remove(at:)(v9 - 1);
  }

  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = a2 - a1;
  v11 = a3 - a2;
  if (v9 < v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2 - a1, a4);
    v12 = &v6[v9];
    while (1)
    {
      if (v6 >= v12 || v7 >= a3)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v14 = *v7;
      v15 = *v6;

      v16 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
      v17 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);

      if (v17 >= v16)
      {
        break;
      }

      v18 = v7;
      v19 = v8 == v7++;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
    }

    v18 = v6;
    v19 = v8 == v6++;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v18;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v12 = &v6[v11];
  v20 = a3;
  v34 = v8;
  v35 = v6;
LABEL_15:
  v21 = v7 - 1;
  v22 = v20 - 1;
  while (v12 > v6 && v7 > v8)
  {
    v24 = v22;
    v25 = *(v12 - 1);
    v26 = v21;
    v27 = *v21;

    v28 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);
    v29 = PhoneAppResolutionHelper.getUsageTime(relativeAppUsage:app:)(a6);

    v20 = v24;
    v30 = v24 + 1;
    if (v29 < v28)
    {
      v19 = v30 == v7;
      v7 = v26;
      v8 = v34;
      v6 = v35;
      if (!v19)
      {
        *v20 = *v26;
        v7 = v26;
      }

      goto LABEL_15;
    }

    if (v12 != v30)
    {
      *v24 = *(v12 - 1);
    }

    v22 = v24 - 1;
    --v12;
    v8 = v34;
    v6 = v35;
    v21 = v26;
  }

LABEL_28:
  v31 = v12 - v6;
  if (v7 != v6 || v7 >= &v6[v31])
  {
    memmove(v7, v6, 8 * v31);
  }

  return 1;
}

uint64_t specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53[3] = a8;
  v53[4] = a9;
  __swift_allocate_boxed_opaque_existential_1(v53);
  OUTLINED_FUNCTION_40(a8);
  (*(v16 + 32))();
  v17 = (a7 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix);
  *v17 = type metadata accessor for PhoneAppResolutionHelper();
  v17[1] = &outlined read-only object #0 of specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:);
  v17[2] = 0;
  v17[3] = 0;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a1, a7 + 56);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v53, a7 + 16);
  v18 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_appResolver;
  v19 = type metadata accessor for AppResolver();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a7 + v18, a6, v19);
  *(a7 + 144) = a5;
  if (a3)
  {

    v21 = a3;
  }

  else
  {
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a1, __src);
    v22 = objc_opt_self();

    v23 = [v22 clientWithIdentifier:112];
    type metadata accessor for TrialSmartAppSelectionConfigProvider();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    type metadata accessor for DiagnosticLogPermission();
    v25 = swift_allocObject();
    type metadata accessor for SmartAppSelectionFeatureManager();
    swift_allocObject();
    v21 = SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(__src, v24, v25);
  }

  *(a7 + 96) = v21;
  outlined init with copy of PhoneAppResolutionLogging?(a4, &v50);
  if (v51)
  {

    (*(v20 + 8))(a6, v19);
    outlined destroy of PhoneAppResolutionLogging?(a4);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v53);
    outlined init with take of SPHConversation(&v50, __src);
    v26 = __src;
  }

  else
  {
    v40 = a6;
    v41 = a4;

    outlined destroy of PhoneAppResolutionLogging?(&v50);
    v42 = a1;
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a1, v47);
    v27 = [objc_opt_self() sharedAnalytics];
    v39 = [v27 defaultMessageStream];

    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    v28 = static EligibleAppFinder.instance;
    v45 = type metadata accessor for EligibleAppFinder();
    v46 = &protocol witness table for EligibleAppFinder;
    *&v44 = v28;
    v51 = &type metadata for PhoneAppResolutionLogger;
    v52 = &protocol witness table for PhoneAppResolutionLogger;
    v29 = swift_allocObject();
    *&v50 = v29;
    v31 = v48;
    v30 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v32 = *(v30 + 112);

    if (v32(v31, v30))
    {
      v33 = CurrentRequest.executionRequestId.getter();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    __src[0] = v33;
    __src[1] = v35;
    __src[2] = v39;
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v47, &__src[3]);
    v36 = v48;
    v37 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    (*(v37 + 216))(&__src[8], v36, v37);
    outlined init with take of SPHConversation(&v44, &__src[13]);
    memcpy((v29 + 16), __src, 0x90uLL);

    (*(v20 + 8))(v40, v19);
    outlined destroy of PhoneAppResolutionLogging?(v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v26 = &v50;
  }

  outlined init with take of SPHConversation(v26, a7 + 104);
  return a7;
}

uint64_t type metadata accessor for PhoneAppResolutionHelper()
{
  result = type metadata singleton initialization cache for PhoneAppResolutionHelper;
  if (!type metadata singleton initialization cache for PhoneAppResolutionHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PhoneAppResolutionHelper()
{
  result = type metadata accessor for AppResolver();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of PhoneAppResolutionLogging?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PhoneAppResolutionLogging?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhoneAppResolutionLogger.init(sharedGlobals:messageStream:eligibleAppsFinder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = *(v8 + 112);
  v10 = OUTLINED_FUNCTION_123();
  if (v11(v10))
  {
    v12 = CurrentRequest.executionRequestId.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v20[0] = v12;
  v20[1] = v14;
  v20[2] = a2;
  outlined init with copy of SignalProviding(a1, &v20[3]);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = *(v15 + 216);
  v17 = OUTLINED_FUNCTION_11_0();
  v18(v17, v15);
  outlined init with take of SPHConversation(a3, &v20[13]);
  memcpy(a4, v20, 0x90uLL);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for ExperimentationAnalyticsManaging.cacheTrialExperimentIdentifiers(for:namespaces:) in conformance ExperimentationAnalyticsManager(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(&async function pointer to dispatch thunk of ExperimentationAnalyticsManager.cacheTrialExperimentIdentifiers(for:namespaces:) + 1);
  v10 = (&async function pointer to dispatch thunk of ExperimentationAnalyticsManager.cacheTrialExperimentIdentifiers(for:namespaces:) + async function pointer to dispatch thunk of ExperimentationAnalyticsManager.cacheTrialExperimentIdentifiers(for:namespaces:));
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for ExperimentationAnalyticsManaging.emitTriggerFromCache(for:requestID:) in conformance ExperimentationAnalyticsManager(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(&async function pointer to dispatch thunk of ExperimentationAnalyticsManager.emitTriggerFromCache(for:requestID:) + 1);
  v10 = (&async function pointer to dispatch thunk of ExperimentationAnalyticsManager.emitTriggerFromCache(for:requestID:) + async function pointer to dispatch thunk of ExperimentationAnalyticsManager.emitTriggerFromCache(for:requestID:));
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

NSUUID __swiftcall PhoneAppResolutionLogger.CodePathId.uuid()()
{
  v1 = "92AEB74E-8E18-4755-94E3-9885E5DD68B0";
  if (v0)
  {
    v1 = "4E65C8B8-AF70-4013-A282-D6BA8D882D28";
  }

  v2 = v1 - 32;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUUID, NSUUID_ptr);
  v3._object = (v2 | 0x8000000000000000);
  v3._countAndFlagsBits = 0xD000000000000024;
  result.super.isa = NSUUID.__allocating_init(uuidString:)(v3);
  if (!result.super.isa)
  {
    __break(1u);
  }

  return result;
}

NSUUID_optional __swiftcall NSUUID.__allocating_init(uuidString:)(Swift::String uuidString)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithUUIDString:v2];

  v5 = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneAppResolutionLogger::CodePathId_optional __swiftcall PhoneAppResolutionLogger.CodePathId.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneAppResolutionLogger.CodePathId.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneAppResolutionLogger_CodePathId_testing;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneAppResolutionLogger_CodePathId_unknownDefault;
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

PhoneCallFlowDelegatePlugin::PhoneAppResolutionLogger::CodePathId_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneAppResolutionLogger.CodePathId@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneAppResolutionLogger::CodePathId_optional *a2@<X8>)
{
  result.value = PhoneAppResolutionLogger.CodePathId.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneAppResolutionLogger.CodePathId@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = PhoneAppResolutionLogger.CodePathId.rawValue.getter();
  *a1 = 0xD000000000000024;
  a1[1] = v5;
  return result;
}

uint64_t ButtonConfigurationModel.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PhoneAppResolutionLogger.emitTriggeredLog(codePathId:)(char a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v4 = specialized PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(a1 & 1, v3, v1);

  return v4;
}

uint64_t PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(char a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return specialized PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(a1 & 1, v6, v2, v4, v5);
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 136) = a7;
  *(v7 + 56) = a5;
  *(v7 + 64) = a6;
  *(v7 + 48) = a4;
  return _swift_task_switch(closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:), 0, 0);
}

unint64_t closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  *(v0 + 72) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUUID, NSUUID_ptr);

  v3._countAndFlagsBits = OUTLINED_FUNCTION_20_0();
  v4 = NSUUID.__allocating_init(uuidString:)(v3);
  *(v0 + 80) = v4;
  if (v4)
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 64);
    v7 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v8 = "92AEB74E-8E18-4755-94E3-9885E5DD68B0";
    if (v5)
    {
      v8 = "4E65C8B8-AF70-4013-A282-D6BA8D882D28";
    }

    v9._object = ((v8 - 32) | 0x8000000000000000);
    v9._countAndFlagsBits = 0xD000000000000024;
    result = NSUUID.__allocating_init(uuidString:)(v9);
    *(v0 + 88) = result;
    if (result)
    {
      v11 = *(v7 + 8);
      v22 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 96) = v13;
      *v13 = v0;
      v13[1] = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
      v14 = OUTLINED_FUNCTION_14_37();

      return v22(v14);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v17))
    {
      v18 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v18);
      OUTLINED_FUNCTION_14_1(&dword_0, v19, v20, "#PhoneAppResolutionLogger emitTriggeredLog: Couldn't convert ID to a UUID, skipping triggered log");
      OUTLINED_FUNCTION_12_3();
    }

    OUTLINED_FUNCTION_11();

    return v21();
  }

  return result;
}

{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (*(v0 + 136))
  {
    v3 = "4E65C8B8-AF70-4013-A282-D6BA8D882D28";
  }

  else
  {
    v3 = "92AEB74E-8E18-4755-94E3-9885E5DD68B0";
  }

  v4 = v3 - 32;
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v6._object = (v4 | 0x8000000000000000);
  v6._countAndFlagsBits = 0xD000000000000024;
  result = NSUUID.__allocating_init(uuidString:)(v6);
  *(v0 + 112) = result;
  if (result)
  {
    v8 = *(v5 + 16);
    v9 = *(v0 + 80);
    v14 = (v8 + *v8);
    v10 = v8[1];
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    *v11 = v0;
    v11[1] = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
    v12 = *(v0 + 80);
    v13 = OUTLINED_FUNCTION_14_37();

    return v14(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = *(v2 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    v7 = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
  }

  else
  {

    v7 = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = *(v2 + 120);
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    v7 = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
  }

  else
  {
    v8 = *(v3 + 80);

    v7 = closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  v20 = v0;
  v1 = *(v0 + 104);

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_42();
    v8 = OUTLINED_FUNCTION_36();
    v19 = v8;
    OUTLINED_FUNCTION_25_20(4.8149e-34);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v7 + 4) = v14;
    OUTLINED_FUNCTION_59_2(&dword_0, v15, v16, "#PhoneAppResolutionLogger emitTriggeredLog: got %s while trying to emit triggered log; gave up without sending");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_11();

  return v17();
}

{
  v20 = v0;

  v1 = *(v0 + 128);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_42();
    v8 = OUTLINED_FUNCTION_36();
    v19 = v8;
    OUTLINED_FUNCTION_25_20(4.8149e-34);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v7 + 4) = v14;
    OUTLINED_FUNCTION_59_2(&dword_0, v15, v16, "#PhoneAppResolutionLogger emitTriggeredLog: got %s while trying to emit triggered log; gave up without sending");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_11();

  return v17();
}

void PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &__src[-v5];
  static TaskPriority.utility.getter();
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  outlined init with copy of PhoneAppResolutionLogger(v1, __src);
  OUTLINED_FUNCTION_19_26();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a1;
  memcpy((v8 + 40), __src, 0x90uLL);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 88) = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v5 + 24) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v5 + 32) = v7;
  v8 = *(v7 - 8);
  *(v5 + 40) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();

  return _swift_task_switch(closure #1 in PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:), 0, 0);
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:)()
{
  v99 = v0;
  v1 = *(v0 + 16);
  v2 = PhoneAppResolutionLogger.EvaluationResult.toSelfSchema()(*(v0 + 88));
  if (!v1[1])
  {
    goto LABEL_4;
  }

  v3 = v2;
  v4 = *v1;
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_20_0();
  UUID.init(uuidString:)();
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(*(v0 + 24), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_4:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v7, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v9))
    {
      v10 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v10);
      OUTLINED_FUNCTION_14_1(&dword_0, v11, v12, "#PhoneAppResolutionLogger emitAndLinkExecutionResultMessage: Skipping SELF message emission due to missing requestID");
      OUTLINED_FUNCTION_12_3();
    }

    goto LABEL_9;
  }

  (*(*(v0 + 40) + 32))(*(v0 + 80), *(v0 + 24), *(v0 + 32));
  v21 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v23 = [v21 derivedIdentifierForComponentName:27 fromSourceIdentifier:isa];

  if (v23)
  {
    v24 = *(v0 + 72);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEvent) init];
    if (v25)
    {
      v26 = v25;
      v27 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEventMetadata) init];
      if (v27)
      {
        v28 = v27;
        v29 = [objc_allocWithZone(INFERENCESchemaINFERENCEABModelResultTriggered) init];
        if (v29)
        {
          v30 = v29;
          v31 = *(v0 + 16);
          v32 = PhoneAppResolutionLogger.linkMessage(inferenceID:requestID:)(*(v0 + 72), *(v0 + 80));
          if (v32)
          {
            v95 = v32;
            v34 = *(v0 + 64);
            v33 = *(v0 + 72);
            v36 = *(v0 + 32);
            v35 = *(v0 + 40);
            type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
            v93 = *(v35 + 16);
            v93(v34, v33, v36);
            v37 = SISchemaUUID.__allocating_init(nsuuid:)(v34);
            [v28 setInferenceId:v37];

            [v30 setTriggerReason:v3];
            [v30 setProjectIntent:5];
            v96 = v30;
            [v26 setAbModelResultTriggered:v30];
            v97 = v28;
            [v26 setEventMetadata:v28];
            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_6_2();
            }

            v39 = *(v0 + 72);
            v38 = *(v0 + 80);
            v41 = *(v0 + 48);
            v40 = *(v0 + 56);
            v42 = *(v0 + 32);
            v43 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);
            v93(v40, v39, v42);
            v93(v41, v38, v42);
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.debug.getter();
            v46 = os_log_type_enabled(v44, v45);
            v47 = *(v0 + 56);
            v94 = *(v0 + 48);
            v48 = *(v0 + 32);
            v49 = *(v0 + 40);
            if (v46)
            {
              v50 = OUTLINED_FUNCTION_36();
              v98 = swift_slowAlloc();
              *v50 = 136315650;
              v51 = INFERENCESchemaINFERENCEAppResolutionType.description.getter();
              v92 = v45;
              v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v98);

              *(v50 + 4) = v53;
              log = v44;
              *(v50 + 12) = 2080;
              lazy protocol witness table accessor for type UUID and conformance UUID();
              v54 = dispatch thunk of CustomStringConvertible.description.getter();
              v56 = v55;
              v57 = *(v49 + 8);
              v58 = OUTLINED_FUNCTION_1_12();
              v57(v58);
              v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v98);

              *(v50 + 14) = v59;
              *(v50 + 22) = 2080;
              v60 = dispatch thunk of CustomStringConvertible.description.getter();
              v62 = v61;
              (v57)(v94, v48);
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v98);
              OUTLINED_FUNCTION_11_0();

              *(v50 + 24) = v60;
              _os_log_impl(&dword_0, log, v92, "#PhoneAppResolutionLogger emitAndLinkExecutionResultMessage: Emitting message with reason %s, UUID %s and linking to %s", v50, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_26_0();
              OUTLINED_FUNCTION_26_0();
            }

            else
            {

              v57 = *(v49 + 8);
              (v57)(v94, v48);
              v85 = OUTLINED_FUNCTION_1_12();
              v57(v85);
            }

            v87 = *(v0 + 72);
            v86 = *(v0 + 80);
            v88 = *(v0 + 32);
            v89 = *(*(v0 + 16) + 16);
            [v89 emitMessage:{v26, log}];
            [v89 emitMessage:v95];

            (v57)(v87, v88);
            v90 = OUTLINED_FUNCTION_1_12();
            v57(v90);
            goto LABEL_9;
          }

          v26 = v28;
        }

        else
        {
          v30 = v28;
        }

        v26 = v30;
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v75 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v75, static Logger.siriPhone);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v78 = os_log_type_enabled(v76, v77);
    v80 = *(v0 + 72);
    v79 = *(v0 + 80);
    v81 = *(v0 + 32);
    v82 = *(v0 + 40);
    if (v78)
    {
      v83 = OUTLINED_FUNCTION_65_0();
      *v83 = 0;
      _os_log_impl(&dword_0, v76, v77, "#PhoneAppResolutionLogger emitAndLinkExecutionResultMessage: Unable to build top-level SELF messages", v83, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v84 = *(v82 + 8);
    v84(v80, v81);
    v84(v79, v81);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v63 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v63, static Logger.siriPhone);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 80);
    v68 = *(v0 + 32);
    v69 = *(v0 + 40);
    if (v66)
    {
      v70 = OUTLINED_FUNCTION_42();
      v71 = OUTLINED_FUNCTION_36();
      v98 = v71;
      *v70 = 136315138;
      v72 = OUTLINED_FUNCTION_20_0();
      *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v74);
      _os_log_impl(&dword_0, v64, v65, "#PhoneAppResolutionLogger:emitAndLinkExecutionResultMessage Failed to create inferenceId with requestId: %s. Not logging to SELF", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    (*(v69 + 8))(v67, v68);
  }

LABEL_9:
  v14 = *(v0 + 72);
  v13 = *(v0 + 80);
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);
  v17 = *(v0 + 48);
  v18 = *(v0 + 24);

  OUTLINED_FUNCTION_11();

  return v19();
}

void *PhoneAppResolutionLogger.linkMessage(inferenceID:requestID:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
      if (v13)
      {
        v14 = v13;
        [v13 setComponent:27];
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
        v15 = *(v5 + 16);
        v15(v8, a1, v4);
        v16 = SISchemaUUID.__allocating_init(nsuuid:)(v8);
        [v14 setUuid:v16];

        [v12 setComponent:1];
        v15(v8, a2, v4);
        v17 = SISchemaUUID.__allocating_init(nsuuid:)(v8);
        [v12 setUuid:v17];

        [v10 setSource:v14];
        [v10 setTarget:v12];

        return v10;
      }
    }

    else
    {
      v12 = v10;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "#PhoneAppResolutionLogger linkMessage: Failed to create RequestLink SELF message templates. Skipping Emission.", v21, 2u);
  }

  return 0;
}

void PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &__src[-v6];
  static TaskPriority.utility.getter();
  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  outlined init with copy of PhoneAppResolutionLogger(v2, __src);
  OUTLINED_FUNCTION_19_26();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  memcpy(v9 + 4, __src, 0x90uLL);
  v9[22] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v11 = type metadata accessor for AppResolverResult();
  v5[18] = v11;
  v12 = *(v11 - 8);
  v5[19] = v12;
  v13 = *(v12 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:), 0, 0);
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:)()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[6];
  v4 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v5 = *(v4 + 208);
  v6 = OUTLINED_FUNCTION_11_0();
  v8 = v7(v6, v4);
  (*(*v8 + 88))(v8);

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0[17], &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v9, static Logger.siriPhone);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v11))
    {
      v12 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v12);
      OUTLINED_FUNCTION_14_1(&dword_0, v13, v14, "#PhoneAppResolutionLogger emitAndLinkABEvaluationMessage: skipping emitting AB Evaluation message because no forced disambiguation prediction is in state");
      OUTLINED_FUNCTION_12_3();
    }

LABEL_15:
    OUTLINED_FUNCTION_13_38();

    OUTLINED_FUNCTION_11();

    return v37();
  }

  v15 = v0[6];
  v16 = *(v0[19] + 32);
  v16(v0[21], v0[17], v0[18]);
  if (!v15[1])
  {
LABEL_10:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v20, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v23);
      OUTLINED_FUNCTION_14_1(&dword_0, v24, v25, "#PhoneAppResolutionLogger emitAndLinkExecutionResultMessage: Skipping SELF message emission due to missing requestID");
      OUTLINED_FUNCTION_12_3();
    }

    v26 = v0[21];
    v27 = v0[18];
    v28 = v0[19];
    v29 = v0[16];

    v30 = v3[7];
    v31 = __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
    v32 = *(v30 + 208);
    v33 = v31;
    v34 = OUTLINED_FUNCTION_123();
    v35(v34);
    v36 = OUTLINED_FUNCTION_11_0();
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v27);
    (*(*v33 + 96))(v29);

    (*(v28 + 8))(v26, v27);
    goto LABEL_15;
  }

  v17 = *v15;
  v19 = v0[8];
  v18 = v0[9];
  OUTLINED_FUNCTION_20_0();
  UUID.init(uuidString:)();
  if (__swift_getEnumTagSinglePayload(v19, 1, v18) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0[8], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    goto LABEL_10;
  }

  (*(v0[10] + 32))(v0[15], v0[8], v0[9]);
  v39 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v41 = [v39 derivedIdentifierForComponentName:27 fromSourceIdentifier:isa];

  if (!v41)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v79 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v79, static Logger.siriPhone);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    v82 = os_log_type_enabled(v80, v81);
    v83 = v0[21];
    v85 = v0[18];
    v84 = v0[19];
    v117 = v0[15];
    v87 = v0[9];
    v86 = v0[10];
    if (v82)
    {
      v113 = v0[18];
      v88 = OUTLINED_FUNCTION_42();
      v119 = OUTLINED_FUNCTION_36();
      *v88 = 136315138;
      v89 = OUTLINED_FUNCTION_20_0();
      *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, v91);
      _os_log_impl(&dword_0, v80, v81, "#PhoneAppResolutionLogger:emitAndLinkABEvaluationMessage Failed to create inferenceId with requestId: %s. Not logging to SELF", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v119);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();

      (*(v86 + 8))(v117, v87);
      (*(v84 + 8))(v83, v113);
    }

    else
    {

      (*(v86 + 8))(v117, v87);
      (*(v84 + 8))(v83, v85);
    }

    goto LABEL_15;
  }

  v42 = v0[14];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEvent) init];
  v0[22] = v43;
  if (!v43)
  {
LABEL_34:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v92 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v92, static Logger.siriPhone);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v94))
    {
      v95 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v95);
      OUTLINED_FUNCTION_14_1(&dword_0, v96, v97, "#PhoneAppResolutionLogger emitAndLinkExecutionResultMessage: Unable to build top-level SELF messages");
      OUTLINED_FUNCTION_12_3();
    }

    v98 = v0[18];
    v99 = v0[19];
    v100 = v0[16];
    v114 = v0[15];
    v118 = v0[21];
    v111 = v0[14];
    v101 = v0[9];
    v102 = v0[10];

    v103 = v3[6];
    v104 = v3[7];
    v105 = __swift_project_boxed_opaque_existential_1(v3 + 3, v103);
    (*(v104 + 208))(v103, v104);
    v106 = OUTLINED_FUNCTION_11_0();
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v98);
    (*(*v105 + 96))(v100);

    v107 = *(v102 + 8);
    v107(v111, v101);
    v107(v114, v101);
    (*(v99 + 8))(v118, v98);
    goto LABEL_15;
  }

  v44 = v43;
  v45 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEventMetadata) init];
  v0[23] = v45;
  if (!v45)
  {
LABEL_33:

    goto LABEL_34;
  }

  v46 = v45;
  v47 = [objc_allocWithZone(INFERENCESchemaINFERENCEABModelEvaluated) init];
  v0[24] = v47;
  if (!v47)
  {
LABEL_32:

    v44 = v46;
    goto LABEL_33;
  }

  v48 = v47;
  v49 = v0[6];
  v50 = PhoneAppResolutionLogger.linkMessage(inferenceID:requestID:)(v0[14], v0[15]);
  v0[25] = v50;
  if (!v50)
  {

    v44 = v46;
    v46 = v48;
    goto LABEL_32;
  }

  v109 = v0[20];
  v110 = v0[21];
  v51 = v0[19];
  v108 = v0[18];
  v53 = v0[13];
  v52 = v0[14];
  v55 = v0[9];
  v54 = v0[10];
  v112 = v0[6];
  v115 = v0[7];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
  v56 = *(v54 + 16);
  v0[26] = v56;
  v0[27] = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v56(v53, v52, v55);
  v57 = SISchemaUUID.__allocating_init(nsuuid:)(v53);
  [v46 setInferenceId:v57];

  (*(v51 + 16))(v109, v110, v108);
  v58 = type metadata accessor for ModelDecisionEvaluator();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v0[28] = v61;
  v16(v61 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction, v109, v108);
  *(v61 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_userChosenApp) = v115;
  v62 = v112[16];
  v63 = v112[17];
  __swift_project_boxed_opaque_existential_1(v112 + 13, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v64 = swift_allocObject();
  v0[29] = v64;
  *(v64 + 16) = xmmword_424FF0;
  v65 = objc_allocWithZone(INStartCallIntent);

  v66 = [v65 init];
  v67 = [v66 _className];

  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  *(v64 + 32) = v68;
  *(v64 + 40) = v70;
  v71 = [objc_allocWithZone(INStartAudioCallIntent) init];
  v72 = [v71 _className];

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  *(v64 + 48) = v73;
  *(v64 + 56) = v75;
  v76 = *(v63 + 16);
  v116 = (v76 + *v76);
  v77 = v76[1];
  v78 = swift_task_alloc();
  v0[30] = v78;
  *v78 = v0;
  v78[1] = closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:);

  return v116(v64, v62, v63);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 240);
  v3 = *(v1 + 232);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v7 + 248) = v6;

  return _swift_task_switch(closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:), 0, 0);
}

{
  v171 = v0;
  v1 = *(v0 + 248);
  v170[0] = _swiftEmptyArrayStorage;
  v2 = specialized Array.count.getter(v1);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = *(v0 + 248);
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_65;
      }

      v4 = *(v1 + 32 + 8 * i);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      OUTLINED_FUNCTION_6_2();
LABEL_42:
      v34 = *(v0 + 56);
      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.siriPhone);
      OUTLINED_FUNCTION_11_0();

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 224);
      v40 = *(v0 + 192);
      v157 = *(v0 + 184);
      v152 = *(v0 + 176);
      v166 = *(v0 + 168);
      v41 = *(v0 + 144);
      v42 = *(v0 + 152);
      v43 = *(v0 + 120);
      v161 = *(v0 + 200);
      v164 = *(v0 + 112);
      v45 = *(v0 + 72);
      v44 = *(v0 + 80);
      if (v38)
      {
        v146 = *(v0 + 192);
        v46 = *(v0 + 56);
        v149 = *(v0 + 144);
        v47 = swift_slowAlloc();
        v170[0] = swift_slowAlloc();
        *v47 = 136315394;
        v48 = App.appIdentifier.getter();
        if (v49)
        {
          v50 = v49;
        }

        else
        {
          v48 = 7104878;
          v50 = 0xE300000000000000;
        }

        v143 = v45;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v170);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v52 = Array.description.getter();
        v54 = v53;

        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v170);

        *(v47 + 14) = v55;
        OUTLINED_FUNCTION_26_18(&dword_0, v56, v57, "#PhoneAppResolutionLogger:emitAndLinkABEvaluationMessage can't find chosen app:%s from candidate list:%s. Not logging to SELF");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();

        v58 = *(v44 + 8);
        v58(v164, v143);
        v58(v43, v143);
        (*(v42 + 8))(v166, v149);
      }

      else
      {

        v59 = *(v44 + 8);
        v59(v164, v45);
        v59(v43, v45);
        (*(v42 + 8))(v166, v41);
      }

      goto LABEL_61;
    }

    App.appIdentifier.getter();
    if (v5)
    {

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v170[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v8 = *(v0 + 248);

  v9 = v170[0];
  v10 = specialized Array.count.getter(v170[0]);
  v11 = 0;
  v12 = v170[0] & 0xC000000000000001;
  v13 = _swiftEmptyArrayStorage;
  while (v10 != v11)
  {
    if (v12)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_67;
      }

      v14 = *(v9 + 8 * v11 + 32);
    }

    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_66;
    }

    v16 = App.appIdentifier.getter();
    v18 = v17;

    ++v11;
    if (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = v13[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v22;
      }

      v19 = v13[2];
      if (v19 >= v13[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v23;
      }

      v13[2] = v19 + 1;
      v20 = &v13[2 * v19];
      v20[4] = v16;
      v20[5] = v18;
      v11 = v15;
    }
  }

  v24 = *(v0 + 56);
  v170[0] = v13;
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:));
  v25 = App.appIdentifier.getter();
  if (!v26 || (*(v0 + 16) = v25, *(v0 + 24) = v26, *(swift_task_alloc() + 16) = v0 + 16, v27 = specialized Sequence.contains(where:)(), , , !v27))
  {

    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_70;
    }

    goto LABEL_42;
  }

  v28 = *(v0 + 224);
  v29 = ModelDecisionEvaluator.getPredictedApp()();
  if (!v29.value._object)
  {
LABEL_30:

    v31 = 0;
    v170[0] = _swiftEmptyArrayStorage;
    while (v10 != v31)
    {
      if (v12)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *(v9 + 16))
        {
          goto LABEL_69;
        }

        v32 = *(v9 + 8 * v31 + 32);
      }

      if (__OFADD__(v31, 1))
      {
        goto LABEL_68;
      }

      if (App.isFirstParty()())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v33 = *(v170[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v31;
    }

    v60 = *(v0 + 224);
    v61 = *(v0 + 192);
    v62 = *(v0 + 48);
    v63 = specialized Array.count.getter(v170[0]);

    [v61 setIsDecisionCorrect:ModelDecisionEvaluator.isDecisionCorrect()()];
    [v61 setIsModelDisambiguation:ModelDecisionEvaluator.isDisambiguation()()];
    [v61 setIsModelConfirmation:ModelDecisionEvaluator.isConfirmation()()];
    v64 = v62[11];
    v65 = v62[12];
    __swift_project_boxed_opaque_existential_1(v62 + 8, v64);
    v66 = (*(v65 + 8))(v9, v64, v65);

    [v61 setUserPersona:v66];
    [v61 setProjectIntent:5];
    v67 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
    }

    else if (v67 >= 0xFFFFFFFF80000000)
    {
      if (v67 <= 0x7FFFFFFF)
      {
        v68 = *(v0 + 184);
        v69 = *(v0 + 192);
        v70 = *(v0 + 176);
        [v69 setNumCandidateApps:?];
        [v70 setAbModelEvaluated:v69];
        [v70 setEventMetadata:v68];
        if (one-time initialization token for siriPhone == -1)
        {
LABEL_52:
          v72 = *(v0 + 216);
          v71 = *(v0 + 224);
          v73 = *(v0 + 208);
          v74 = *(v0 + 112);
          v75 = *(v0 + 120);
          v77 = *(v0 + 88);
          v76 = *(v0 + 96);
          v78 = *(v0 + 72);
          v79 = type metadata accessor for Logger();
          __swift_project_value_buffer(v79, static Logger.siriPhone);
          v80 = OUTLINED_FUNCTION_20_0();
          v73(v80);
          (v73)(v77, v75, v78);

          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v158 = v82;
            v83 = *(v0 + 224);
            v84 = *(v0 + 96);
            v167 = *(v0 + 88);
            v85 = *(v0 + 72);
            v86 = *(v0 + 80);
            v87 = OUTLINED_FUNCTION_36();
            v170[0] = swift_slowAlloc();
            *v87 = 136315650;

            v89 = ModelDecisionEvaluator.description.getter(v88);
            v91 = v90;

            v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, v170);

            *(v87 + 4) = v92;
            *(v87 + 12) = 2080;
            lazy protocol witness table accessor for type UUID and conformance UUID();
            OUTLINED_FUNCTION_123();
            v93 = dispatch thunk of CustomStringConvertible.description.getter();
            v95 = v94;
            v96 = *(v86 + 8);
            v97 = OUTLINED_FUNCTION_1_12();
            v96(v97);
            v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, v170);

            *(v87 + 14) = v98;
            *(v87 + 22) = 2080;
            v99 = v167;
            OUTLINED_FUNCTION_123();
            v100 = dispatch thunk of CustomStringConvertible.description.getter();
            v102 = v101;
            v168 = v96;
            (v96)(v99, v85);
            v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, v170);

            *(v87 + 24) = v103;
            _os_log_impl(&dword_0, v81, v158, "#PhoneAppResolutionLogger emitAndLinkABEvaluationMessage: Emitting message with result %s), UUID %s and linking to %s", v87, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_26_0();
            OUTLINED_FUNCTION_26_0();
          }

          else
          {
            v105 = *(v0 + 88);
            v104 = *(v0 + 96);
            v106 = *(v0 + 72);
            v107 = *(v0 + 80);

            v108 = *(v107 + 8);
            (v108)(v105, v106);
            v168 = v108;
            (v108)(v104, v106);
          }

          v109 = *(v0 + 200);
          v110 = *(v0 + 176);
          v153 = *(v0 + 184);
          v155 = *(v0 + 192);
          v111 = *(v0 + 144);
          v112 = *(v0 + 152);
          v113 = *(v0 + 128);
          v159 = *(v0 + 120);
          v162 = *(v0 + 168);
          v150 = *(v0 + 112);
          v145 = *(v0 + 224);
          v147 = *(v0 + 72);
          v114 = *(v0 + 48);
          v115 = v114[2];
          [v115 emitMessage:v110];
          [v115 emitMessage:v109];
          v116 = v114[7];
          __swift_project_boxed_opaque_existential_1(v114 + 3, v114[6]);
          v117 = *(v116 + 208);
          v118 = OUTLINED_FUNCTION_11_0();
          v120 = v119(v118, v116);
          __swift_storeEnumTagSinglePayload(v113, 1, 1, v111);
          (*(*v120 + 96))(v113);

          (v168)(v150, v147);
          (v168)(v159, v147);
          (*(v112 + 8))(v162, v111);
          goto LABEL_61;
        }

LABEL_74:
        OUTLINED_FUNCTION_6_2();
        goto LABEL_52;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    __break(1u);
    goto LABEL_73;
  }

  *(v0 + 32) = v29;
  *(swift_task_alloc() + 16) = v0 + 32;
  v30 = specialized Sequence.contains(where:)();

  if (v30)
  {

    goto LABEL_30;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v121 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v121, static Logger.siriPhone);

  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.debug.getter();

  v124 = os_log_type_enabled(v122, v123);
  v160 = *(v0 + 200);
  v163 = *(v0 + 192);
  v154 = *(v0 + 224);
  v156 = *(v0 + 184);
  v125 = *(v0 + 168);
  v127 = *(v0 + 144);
  v126 = *(v0 + 152);
  v128 = *(v0 + 112);
  v129 = *(v0 + 120);
  v130 = *(v0 + 80);
  v165 = v128;
  v169 = *(v0 + 72);
  if (v124)
  {
    v144 = *(v0 + 176);
    v148 = *(v0 + 168);
    v131 = swift_slowAlloc();
    v170[0] = swift_slowAlloc();
    *v131 = 136315394;
    v151 = v129;
    v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29.value._countAndFlagsBits, v29.value._object, v170);

    *(v131 + 4) = v132;
    *(v131 + 12) = 2080;
    v133 = Array.description.getter();
    v135 = v134;

    v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v135, v170);

    *(v131 + 14) = v136;
    OUTLINED_FUNCTION_26_18(&dword_0, v137, v138, "#PhoneAppResolutionLogger:emitAndLinkABEvaluationMessage can't find predicted app:%s from candidate list:%s. Not logging to SELF");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();

    v139 = *(v130 + 8);
    v139(v165, v169);
    v139(v151, v169);
    (*(v126 + 8))(v148, v127);
  }

  else
  {

    v140 = *(v130 + 8);
    v140(v165, v169);
    v140(v129, v169);
    (*(v126 + 8))(v125, v127);
  }

LABEL_61:
  OUTLINED_FUNCTION_13_38();

  OUTLINED_FUNCTION_11();

  return v141();
}

uint64_t specialized PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(char a1, void *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v24 - v8;
  v25[3] = type metadata accessor for ExperimentationAnalyticsManager();
  v25[4] = &protocol witness table for ExperimentationAnalyticsManager;
  v25[0] = a2;
  v10 = a3[1];
  if (v10)
  {
    v11 = *a3;
    v12 = a2;

    static TaskPriority.utility.getter();
    v13 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
    outlined init with copy of SignalProviding(v25, v24);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    outlined init with take of SPHConversation(v24, v14 + 48);
    *(v14 + 88) = a1 & 1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    v16 = v15;
  }

  else
  {
    v17 = one-time initialization token for siriPhone;
    v18 = a2;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "#PhoneAppResolutionLogger emitTriggeredLog: no request ID in context, skipping triggered log", v22, 2u);
    }

    v16 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v16;
}

uint64_t specialized PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(char a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v28[3] = a4;
  v28[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  v15 = a3[1];
  if (v15)
  {
    v16 = *a3;
    v17 = a3[1];

    static TaskPriority.utility.getter();
    v18 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
    outlined init with copy of SignalProviding(v28, v27);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v16;
    *(v19 + 40) = v15;
    outlined init with take of SPHConversation(v27, v19 + 48);
    *(v19 + 88) = a1 & 1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    v21 = v20;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "#PhoneAppResolutionLogger emitTriggeredLog: no request ID in context, skipping triggered log", v25, 2u);
    }

    v21 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v21;
}

uint64_t partial apply for closure #1 in PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:)()
{
  OUTLINED_FUNCTION_23_19();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18(v2);
  *v3 = v4;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();
  v5 = OUTLINED_FUNCTION_59_1();

  return closure #1 in PhoneAppResolutionLogger.emitAndLinkExecutionResultMessage(_:)(v5, v6, v7, v1, v8);
}

uint64_t partial apply for closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:)()
{
  OUTLINED_FUNCTION_23_19();
  v1 = *(v0 + 176);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18(v2);
  *v3 = v4;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();
  v5 = OUTLINED_FUNCTION_59_1();

  return closure #1 in PhoneAppResolutionLogger.emitAndLinkABEvaluationMessage(chosenApp:)(v5, v6, v7, v8, v1);
}

unint64_t lazy protocol witness table accessor for type PhoneAppResolutionLogger.EvaluationResult and conformance PhoneAppResolutionLogger.EvaluationResult()
{
  result = lazy protocol witness table cache variable for type PhoneAppResolutionLogger.EvaluationResult and conformance PhoneAppResolutionLogger.EvaluationResult;
  if (!lazy protocol witness table cache variable for type PhoneAppResolutionLogger.EvaluationResult and conformance PhoneAppResolutionLogger.EvaluationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneAppResolutionLogger.EvaluationResult and conformance PhoneAppResolutionLogger.EvaluationResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneAppResolutionLogger.CodePathId and conformance PhoneAppResolutionLogger.CodePathId()
{
  result = lazy protocol witness table cache variable for type PhoneAppResolutionLogger.CodePathId and conformance PhoneAppResolutionLogger.CodePathId;
  if (!lazy protocol witness table cache variable for type PhoneAppResolutionLogger.CodePathId and conformance PhoneAppResolutionLogger.CodePathId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneAppResolutionLogger.CodePathId and conformance PhoneAppResolutionLogger.CodePathId);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PhoneAppResolutionLogger.CodePathId] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PhoneAppResolutionLogger.CodePathId] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PhoneAppResolutionLogger.CodePathId] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0A19AppResolutionLoggerV10CodePathIdOGMd, &_sSay27PhoneCallFlowDelegatePlugin0A19AppResolutionLoggerV10CodePathIdOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PhoneAppResolutionLogger.CodePathId] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneAppResolutionLogger(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneAppResolutionLogger(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneAppResolutionLogger.EvaluationResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneAppResolutionLogger.CodePathId(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t partial apply for closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_19();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 88);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18(v4);
  *v5 = v6;
  v5[1] = closure #1 in ActionableCallControlFlow.execute();
  v7 = OUTLINED_FUNCTION_59_1();

  return closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(v7, v8, v9, v1, v2, v10, v3);
}

uint64_t objectdestroy_26Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)partial apply()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_19();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 88);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18(v4);
  *v5 = v6;
  v5[1] = closure #2 in ActionableCallControlFlow.execute();
  v7 = OUTLINED_FUNCTION_59_1();

  return closure #1 in PhoneAppResolutionLogger.emitTriggeredLog(codePathId:experimentationAnalyticsManager:)(v7, v8, v9, v1, v2, v10, v3);
}

void OUTLINED_FUNCTION_26_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x16u);
}

void PhoneAppResolutionOnDeviceFlowStrategy.__allocating_init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v47 = v8;
  v48 = v9;
  v45 = v10;
  v46 = v11;
  v44 = v12;
  swift_allocObject();
  v13 = v7[3];
  v43 = v7[4];
  __swift_mutable_project_boxed_opaque_existential_1(v7, v13);
  OUTLINED_FUNCTION_9_1();
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v18 = OUTLINED_FUNCTION_122_1(v17);
  v19(v18);
  v20 = v5[3];
  v42 = v5[4];
  v21 = OUTLINED_FUNCTION_53_1();
  __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  OUTLINED_FUNCTION_9_1();
  v24 = *(v23 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  (*(v29 + 16))(v27 - v26);
  v30 = v3[3];
  v31 = v3[4];
  __swift_mutable_project_boxed_opaque_existential_1(v3, v30);
  OUTLINED_FUNCTION_9_1();
  v33 = *(v32 + 64);
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_4();
  v36 = OUTLINED_FUNCTION_29_5(v35);
  v37(v36);
  OUTLINED_FUNCTION_118_2();
  specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:)(v44, v45, v46, v47, v48, v0, v28, v1, v38, v39, v40, v41, v30, v20, v13, v31, v42, v43);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_65();
}

void PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:)()
{
  OUTLINED_FUNCTION_66();
  v46 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v47 = v9;
  v44 = v10;
  v45 = v11;
  v43 = v12;
  v13 = *(v7 + 24);
  v42 = *(v7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v13);
  OUTLINED_FUNCTION_9_1();
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v18 = OUTLINED_FUNCTION_122_1(v17);
  v19(v18);
  v20 = v6[3];
  v41 = v6[4];
  __swift_mutable_project_boxed_opaque_existential_1(v6, v20);
  OUTLINED_FUNCTION_9_1();
  v22 = *(v21 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  (*(v27 + 16))(v25 - v24);
  v28 = *(v4 + 24);
  v29 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v28);
  OUTLINED_FUNCTION_9_1();
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_4();
  v34 = OUTLINED_FUNCTION_29_5(v33);
  v35(v34);
  OUTLINED_FUNCTION_118_2();
  specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:)(v43, v44, v45, v46, v47, v0, v26, v1, v37, v38, v39, v40, v28, v20, v13, v29, v41, v42);
  v36 = OUTLINED_FUNCTION_5();
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v8);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.resolveApp(input:)()
{
  *(v1 + 248) = v0;
  v2 = OUTLINED_FUNCTION_10();
  return _swift_task_switch(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 248);
  v3 = v2[29];
  __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_40_0();
  v7 = v6(v5, v3);
  *(v0 + 256) = v7;
  (*(*v7 + 216))();
  if (*(v0 + 48))
  {
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v0 + 64, v0 + 144, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of TransformationResult(v0 + 16);
    if (*(v0 + 168))
    {
      v8 = *(v0 + 248);
      outlined init with take of SPHConversation((v0 + 144), v0 + 104);
      outlined init with copy of SignalProviding(v0 + 104, v0 + 184);
      swift_beginAccess();
      outlined assign with take of PhoneCallNLIntent?(v0 + 184, v8 + 456);
      swift_endAccess();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 264) = v9;
      *v9 = v10;
      v9[1] = PhoneAppResolutionOnDeviceFlowStrategy.resolveApp(input:);
      v11 = *(v0 + 248);

      return PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:)();
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 16, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 144, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v13 = *(v0 + 248);
  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v14, static Logger.siriPhone);

  v15 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();
  OUTLINED_FUNCTION_158();
  if (OUTLINED_FUNCTION_157())
  {
    v16 = *(v0 + 248);
    OUTLINED_FUNCTION_42();
    v17 = OUTLINED_FUNCTION_14_2();
    *v13 = 136315138;
    v18 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v16[53], v16[54], v16[55], v16[56]);
    OUTLINED_FUNCTION_127(v18, v19, v20, v21, v22, v23, v24, v25, v17, 0, 0xE000000000000000);
    OUTLINED_FUNCTION_125();
    *(v13 + 4) = v1;
    OUTLINED_FUNCTION_112_2();
    _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_14_0();
  }

  type metadata accessor for AppResolutionAction();
  static AppResolutionAction.noAppFound()();
  OUTLINED_FUNCTION_40_0();

  v31 = OUTLINED_FUNCTION_3_20();

  return v32(v31);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 264);
  *v2 = *v0;
  *(v1 + 272) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[32];
  if (v0[34])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  }

  else
  {
    v2 = v0[31];
    PhoneAppResolutionOnDeviceFlowStrategy.resolveAppByQuery(phoneCallIntent:)(v0 + 13);
    OUTLINED_FUNCTION_40_0();

    __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  }

  v3 = OUTLINED_FUNCTION_3_20();

  return v4(v3);
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.resolveAppByQuery(phoneCallIntent:)(void *a1)
{
  v2 = v1;
  PhoneAppResolutionOnDeviceFlowStrategy.tryAppQueryFromCallNotifications(phoneCallNLIntent:sharedGlobals:)(a1, (v1 + 25));
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = a1[3];
    v7 = a1[4];
    OUTLINED_FUNCTION_86(a1);
    OUTLINED_FUNCTION_142_0();
    if (PhoneCallNLIntent.isAnswerCall()())
    {
      goto LABEL_6;
    }

    v8 = a1[3];
    v9 = a1[4];
    OUTLINED_FUNCTION_86(a1);
    OUTLINED_FUNCTION_142_0();
    if (PhoneCallNLIntent.isHangUpCall()() || (v10 = a1[3], v11 = a1[4], OUTLINED_FUNCTION_86(a1), OUTLINED_FUNCTION_142_0(), PhoneCallNLIntent.isIncomingCallSearch()()))
    {
LABEL_6:
      v12 = OUTLINED_FUNCTION_121_1();
      PhoneAppResolutionOnDeviceFlowStrategy.makeAppQueryForIncomingCall(phoneCallNLIntent:sharedGlobals:)(v12, v13);
    }

    else
    {
      v72 = OUTLINED_FUNCTION_121_1();
      PhoneAppResolutionOnDeviceFlowStrategy.makeAppQuery(phoneCallNLIntent:sharedGlobals:)(v72, v73);
    }

    v5 = v14;
  }

  v15 = a1[3];
  v16 = a1[4];
  OUTLINED_FUNCTION_86(a1);
  v74 = a1;
  if (PhoneCallNLIntent.isFaceTimeCall()())
  {
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v18 = *(v17 + 32);
    v19 = OUTLINED_FUNCTION_3_13();
    v20(v19);
  }

  v21 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v22 = v2[29];
  __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
  v23 = *(v22 + 8);
  v24 = OUTLINED_FUNCTION_61();
  v25(v24, v22);
  v26 = *(v21 + 8);
  OUTLINED_FUNCTION_143_0();
  v27();

  __swift_destroy_boxed_opaque_existential_1(&v83);
  if (v79)
  {
    v84[0] = v80;
    v84[1] = v81;
    v83 = v79;
    v85 = v82;
    v28 = v2[24];
    v29 = OUTLINED_FUNCTION_146_0();
    if (specialized Set._isDisjoint<A>(with:)(v29, v30))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        OUTLINED_FUNCTION_86_1();
        v75[0] = OUTLINED_FUNCTION_55_4();
        *v22 = 136315394;
        v34 = OUTLINED_FUNCTION_109_1();
        v76[0] = 0;
        v76[1] = v35;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v34, v36, v37, v38);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v76[1], v75);
        OUTLINED_FUNCTION_40_0();

        *(v22 + 4) = v76;
        OUTLINED_FUNCTION_99_0();
        v39 = Array.description.getter();
        v2 = v40;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v75);
        OUTLINED_FUNCTION_40_0();

        *(v22 + 14) = v76;
        _os_log_impl(&dword_0, v32, v33, "%s App found but doesn't support requested intents: %s", v22, 0x16u);
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_14_0();
      }

      type metadata accessor for AppResolutionAction();
      static AppResolutionAction.appNotSupported(app:)();
      OUTLINED_FUNCTION_125_1();

      *v76 = *(v84 + 8);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v76, &_sSSSgMd, &_sSSSgMR);
      v75[0] = v85;
      v41 = v75;
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v51 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v51, static Logger.siriPhone);
      v86 = *(v84 + 8);
      v87[0] = v85;

      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v86, v76, &_sSSSgMd, &_sSSSgMR);
      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v87, v76, &_sShySSGMd, &_sShySSGMR);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v86, &_sSSSgMd, &_sSSSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v87, &_sShySSGMd, &_sShySSGMR);
      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_86_1();
        v75[0] = OUTLINED_FUNCTION_16_13();
        *v54 = 136315394;
        v55 = OUTLINED_FUNCTION_109_1();
        v76[0] = 0;
        v76[1] = v56;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v55, v57, v58, v59);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76[0], v76[1], v75);
        OUTLINED_FUNCTION_34_0();

        *(v54 + 4) = &_sSSSgMd;
        *(v54 + 12) = 2080;

        _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v86, v76, &_sSSSgMd, &_sSSSgMR);
        _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v87, v76, &_sShySSGMd, &_sShySSGMR);
        v60 = AnnotatedApp.description.getter();
        v62 = v61;

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v86, &_sSSSgMd, &_sSSSgMR);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v87, &_sShySSGMd, &_sShySSGMR);
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v75);

        *(v54 + 14) = v63;
        OUTLINED_FUNCTION_155(&dword_0, v64, v65, "%s Selecting and caching app: %s with current NL intent");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_36_16();
      }

      v66 = v2[29];
      __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
      v67 = *(v66 + 152);
      v68 = OUTLINED_FUNCTION_61();
      v69(v68, v66);
      v2 = v77;
      v70 = v78;
      OUTLINED_FUNCTION_28_0(v76, v77);
      outlined init with copy of SignalProviding(v74, v75);
      (*(v70 + 8))(&v83, v75, v2, v70);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v75, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(v76);
      type metadata accessor for AppResolutionAction();
      static AppResolutionAction.select(app:)();
      OUTLINED_FUNCTION_125_1();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v86, &_sSSSgMd, &_sSSSgMR);
      v41 = v87;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_sShySSGMd, &_sShySSGMR);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v43 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_162();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      v76[0] = OUTLINED_FUNCTION_83();
      *v5 = 136315138;
      v44 = OUTLINED_FUNCTION_109_1();
      v83 = 0;
      *&v84[0] = v45;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v44, v46, v47, v48);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, *&v84[0], v76);
      OUTLINED_FUNCTION_40_0();

      *(v5 + 4) = &v83;
      OUTLINED_FUNCTION_26(&dword_0, v49, v50, "%s No matching app");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppResolutionAction();
    return static AppResolutionAction.noAppFound()();
  }

  return v2;
}

void PhoneAppResolutionOnDeviceFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v180 = v3;
  v4 = type metadata accessor for AppResolutionResult();
  v5 = OUTLINED_FUNCTION_7(v4);
  v176 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v11 = (v10 - v9);
  v178 = type metadata accessor for Parse();
  v12 = OUTLINED_FUNCTION_7(v178);
  v181 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v177 = v16 - v17;
  __chkstk_darwin(v18);
  v179 = v174 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v21 = OUTLINED_FUNCTION_21(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_12_5();
  v26 = v24 - v25;
  v28 = __chkstk_darwin(v27);
  v30 = v174 - v29;
  __chkstk_darwin(v28);
  v182 = v174 - v31;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Logger.siriPhone);

  v34 = v33;
  v35 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_131_1();
  v36 = os_log_type_enabled(v35, v1);
  v175 = v11;
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_42();
    v174[1] = v33;
    v38 = v37;
    v174[0] = OUTLINED_FUNCTION_36();
    *&v184 = v174[0];
    *v38 = 136315138;
    v39 = v30;
    v40 = v26;
    v42 = v2[45];
    v41 = v2[46];
    OUTLINED_FUNCTION_114();
    *&v186[0] = 0;
    *(&v186[0] + 1) = v43;

    v44 = v42;
    v26 = v40;
    v30 = v39;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v44, v41, 0xD000000000000021, v34 | 0x8000000000000000);

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v186[0], *(&v186[0] + 1), &v184);
    OUTLINED_FUNCTION_40_0();

    *(v38 + 4) = v186;
    _os_log_impl(&dword_0, v35, v1, "%s", v38, 0xCu);
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_26_0();
  }

  outlined init with copy of SignalProviding((v2 + 25), v186);
  type metadata accessor for YesNoConfirmationParser();
  v45 = swift_allocObject();
  *(v45 + 16) = 5;
  outlined init with take of SPHConversation(v186, v45 + 24);
  v46 = v182;
  v47 = v180;
  YesNoConfirmationParser.parseConfirmationResponse(input:)(v182);

  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v46, v30, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v48 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v48);
  v50 = v181;
  if (EnumTagSinglePayload != 1)
  {
    v76 = OUTLINED_FUNCTION_103_0();
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v76, v77, v78, v79);
    v80 = *(v48 - 8);
    v81 = (*(v80 + 88))(v26, v48);
    if (v81 == enum case for ConfirmationResponse.confirmed(_:))
    {
      v82 = v2[3];
      if (v82)
      {

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v83, v84))
        {
          OUTLINED_FUNCTION_86_1();
          *&v184 = OUTLINED_FUNCTION_55_4();
          *v4 = 136315394;
          v85 = OUTLINED_FUNCTION_20_27();
          OUTLINED_FUNCTION_92_2(v85, v86, v87, v88, v89);
          OUTLINED_FUNCTION_38_13();
          OUTLINED_FUNCTION_34_0();

          *(v4 + 4) = v47;
          OUTLINED_FUNCTION_99_0();
          *&v186[0] = v82;
          v90 = type metadata accessor for App();
          OUTLINED_FUNCTION_1_75();
          _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v91, 255, v92);
          v93 = dispatch thunk of CustomStringConvertible.description.getter();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v184);
          OUTLINED_FUNCTION_34_0();

          *(v4 + 14) = v90;
          _os_log_impl(&dword_0, v83, v84, "%s parseConfirmationResponse: yes -> select app: %s", v4, 0x16u);
          OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_36_16();
          OUTLINED_FUNCTION_14_0();
        }

        PhoneAppResolutionOnDeviceFlowStrategy.selectAppConfirmation(by:)();
        OUTLINED_FUNCTION_40_0();
      }

      else
      {

        v136 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_131_1();
        if (OUTLINED_FUNCTION_156())
        {
          OUTLINED_FUNCTION_42();
          v137 = OUTLINED_FUNCTION_14_2();
          *&v184 = v137;
          *v4 = 136315138;
          v138 = OUTLINED_FUNCTION_20_27();
          OUTLINED_FUNCTION_92_2(v138, v139, v140, v141, v142);
          OUTLINED_FUNCTION_38_13();
          OUTLINED_FUNCTION_107_1();
          *(v4 + 4) = v2;
          OUTLINED_FUNCTION_91_4(&dword_0, v143, v144, "%s parseConfirmationResponse: yes -> found no app to confirm");
          __swift_destroy_boxed_opaque_existential_1(v137);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_14_0();
        }

        type metadata accessor for AppConfirmationResponse();
        static AppConfirmationResponse.select()();
      }
    }

    else
    {
      if (v81 != enum case for ConfirmationResponse.rejected(_:))
      {
        (*(v80 + 8))(v26, v48);
        goto LABEL_6;
      }

      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = OUTLINED_FUNCTION_86_1();
        *&v184 = OUTLINED_FUNCTION_16_13();
        v107 = OUTLINED_FUNCTION_18_20(4.8151e-34);
        OUTLINED_FUNCTION_92_2(v107, v108, v109, v110, v111);
        OUTLINED_FUNCTION_38_13();
        OUTLINED_FUNCTION_34_0();

        *(v106 + 4) = v47;
        *(v106 + 12) = 2080;
        v112 = v2[2];
        type metadata accessor for App();
        OUTLINED_FUNCTION_34_0();

        v113 = Array.description.getter();
        v115 = v114;

        v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, &v184);

        *(v106 + 14) = v116;
        _os_log_impl(&dword_0, v104, v105, "%s parseConfirmationResponse: no -> disambiguate app list '%s'", v106, 0x16u);
        OUTLINED_FUNCTION_97_1();
        OUTLINED_FUNCTION_5_7();
        OUTLINED_FUNCTION_35();
      }

      type metadata accessor for AppConfirmationResponse();
      v117 = v2[2];

      static AppConfirmationResponse.disambiguate(apps:)();
      OUTLINED_FUNCTION_40_0();
    }

    OUTLINED_FUNCTION_144_0();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v145, v146, v147);
    OUTLINED_FUNCTION_144_0();
    goto LABEL_51;
  }

LABEL_6:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v51 = v179;
  Input.parse.getter();
  v52 = v178;
  v53 = (*(v50 + 88))(v51, v178);
  if (v53 != enum case for Parse.NLv3IntentOnly(_:) && v53 != enum case for Parse.NLv4IntentOnly(_:) && v53 != enum case for Parse.uso(_:))
  {

    v95 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_163();
    if (OUTLINED_FUNCTION_161())
    {
      OUTLINED_FUNCTION_42();
      v97 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_138_1(v97);
      v98 = OUTLINED_FUNCTION_18_20(4.8149e-34);
      OUTLINED_FUNCTION_92_2(v98, v99, v100, v101, v102);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_63_1();
      *(v1 + 4) = v50;
      v50 = v181;
      OUTLINED_FUNCTION_33_14(&dword_0, v103, v47, "%s parseConfirmationResponse: unsupported parse");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    (*(v50 + 8))(v179, v52);
LABEL_43:

    v118 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_163();
    if (OUTLINED_FUNCTION_161())
    {
      OUTLINED_FUNCTION_42();
      v127 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_138_1(v127);
      v128 = OUTLINED_FUNCTION_18_20(4.8149e-34);
      OUTLINED_FUNCTION_92_2(v128, v129, v130, v131, v132);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_107_1();
      *(v1 + 4) = v2;
      v126 = "%s parseConfirmationResponse: unable to confirm. Ignoring..";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v1 = *(v50 + 8);
  (v1)(v51, v52);
  v56 = v2[29];
  __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
  v57 = *(v56 + 72);
  v58 = OUTLINED_FUNCTION_40_0();
  v59(v58, v56);
  v47 = v177;
  Input.parse.getter();
  OUTLINED_FUNCTION_41_0();
  v61 = *(v60 + 192);
  v62 = OUTLINED_FUNCTION_121_1();
  v63(v62);

  (v1)(v47, v52);
  if (v185)
  {
    outlined init with take of SPHConversation(&v184, v186);
    OUTLINED_FUNCTION_1_3();
    if (!PhoneCallNLIntent.hasApplicationNameOrId()())
    {
      __swift_destroy_boxed_opaque_existential_1(v186);
      goto LABEL_43;
    }

    v64 = OUTLINED_FUNCTION_1_3();
    v66 = PhoneCallNLIntent.applicationId.getter(v64, v65);
    if (!v67)
    {
      v68 = OUTLINED_FUNCTION_1_3();
      v66 = PhoneCallNLIntent.appName.getter(v68, v69);
    }

    v70 = v66;
    v71 = v67;
    if (v2[3])
    {
      v72 = v2[3];

      v73 = App.appIdentifier.getter();
      if (v74)
      {
        if (v71)
        {
          if (v73 == v70 && v74 == v71)
          {
          }

          else
          {
            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v70 & 1) == 0)
            {

LABEL_58:
              PhoneAppResolutionOnDeviceFlowStrategy.resolveAppByQuery(phoneCallIntent:)(v186);
              v148 = v175;
              AppResolutionAction.result.getter();

              v149 = v176;
              if ((*(v176 + 88))(v148, v4) != enum case for AppResolutionResult.selected(_:))
              {
                (*(v149 + 8))(v148, v4);

                v167 = Logger.logObject.getter();
                static os_log_type_t.debug.getter();
                OUTLINED_FUNCTION_163();
                if (OUTLINED_FUNCTION_161())
                {
                  OUTLINED_FUNCTION_42();
                  v183 = OUTLINED_FUNCTION_83();
                  *&v184 = 0;
                  v168 = OUTLINED_FUNCTION_18_20(4.8149e-34);
                  *(&v184 + 1) = v169;
                  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v168, v170, v171, v172);
                  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, *(&v184 + 1), &v183);
                  OUTLINED_FUNCTION_107_1();
                  *(v70 + 4) = v2;
                  OUTLINED_FUNCTION_33_14(&dword_0, v173, v148, "%s parseConfirmationResponse: User changed to an invalid app, re-run Flow to present error dialog");
                  OUTLINED_FUNCTION_3_7();
                  OUTLINED_FUNCTION_35();
                }

                type metadata accessor for AppConfirmationResponse();
                static AppConfirmationResponse.ignore()();
                goto LABEL_68;
              }

              (*(v149 + 96))(v148, v4);
              v150 = *v148;

              v151 = Logger.logObject.getter();
              static os_log_type_t.debug.getter();

              if (OUTLINED_FUNCTION_31_13())
              {
                OUTLINED_FUNCTION_86_1();
                v183 = OUTLINED_FUNCTION_55_4();
                *&v184 = 0;
                *v4 = 136315394;
                v152 = OUTLINED_FUNCTION_20_27();
                *(&v184 + 1) = v153;
                DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v152, v154, v155, v156);
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, *(&v184 + 1), &v183);
                OUTLINED_FUNCTION_107_1();
                *(v4 + 4) = v2;
                OUTLINED_FUNCTION_99_0();
                *&v184 = v150;
                v157 = type metadata accessor for App();
                OUTLINED_FUNCTION_1_75();
                _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v158, 255, v159);
                v160 = dispatch thunk of CustomStringConvertible.description.getter();
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v161, &v183);
                OUTLINED_FUNCTION_107_1();
                *(v4 + 14) = v157;
                OUTLINED_FUNCTION_9_38();
                _os_log_impl(v162, v163, v164, v165, v166, 0x16u);
                OUTLINED_FUNCTION_97_1();
                OUTLINED_FUNCTION_5_7();
                OUTLINED_FUNCTION_14_0();
              }

              type metadata accessor for AppConfirmationResponse();
              OUTLINED_FUNCTION_40_0();
              static AppConfirmationResponse.select(app:)();
LABEL_67:
              OUTLINED_FUNCTION_40_0();

LABEL_68:
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v182, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
              __swift_destroy_boxed_opaque_existential_1(v186);
              goto LABEL_52;
            }
          }

LABEL_66:
          PhoneAppResolutionOnDeviceFlowStrategy.selectAppConfirmation(by:)();
          goto LABEL_67;
        }
      }

      else
      {
        if (!v71)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_58;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v184, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);

  v118 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_163();
  if (OUTLINED_FUNCTION_161())
  {
    OUTLINED_FUNCTION_42();
    v119 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_138_1(v119);
    v120 = OUTLINED_FUNCTION_18_20(4.8149e-34);
    OUTLINED_FUNCTION_92_2(v120, v121, v122, v123, v124);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_107_1();
    *(v1 + 4) = v2;
    v126 = "%s parseConfirmationResponse: could not transform input to NLIntent, ignoring input";
LABEL_45:
    OUTLINED_FUNCTION_33_14(&dword_0, v125, v47, v126);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

LABEL_46:

  type metadata accessor for AppConfirmationResponse();
  static AppConfirmationResponse.ignore()();
  v133 = &_s11SiriKitFlow20ConfirmationResponseOSgMd;
  v134 = &_s11SiriKitFlow20ConfirmationResponseOSgMR;
  v135 = v182;
LABEL_51:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v135, v133, v134);
LABEL_52:
  OUTLINED_FUNCTION_65();
}

void PhoneAppResolutionOnDeviceFlowStrategy.parseDisambiguationResponse(input:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v260 = v2;
  v252 = type metadata accessor for AppResolutionResult();
  v3 = OUTLINED_FUNCTION_7(v252);
  v251 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v250 = (v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  v254 = (v13 - v14);
  v16 = __chkstk_darwin(v15);
  v18 = &v248 - v17;
  __chkstk_darwin(v16);
  v20 = (&v248 - v19);
  v255 = type metadata accessor for Parse.DirectInvocation();
  v21 = OUTLINED_FUNCTION_7(v255);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  v29 = type metadata accessor for Parse();
  v30 = OUTLINED_FUNCTION_7(v29);
  v259 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_12_5();
  v257 = v34 - v35;
  __chkstk_darwin(v36);
  v261 = (&v248 - v37);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v38 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v38, static Logger.siriPhone);

  v258 = v0;
  v39 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_126())
  {
    v40 = OUTLINED_FUNCTION_42();
    v253 = v18;
    v41 = v40;
    v42 = OUTLINED_FUNCTION_36();
    v249 = v29;
    OUTLINED_FUNCTION_95_2(v42);
    *v41 = 136315138;
    v256 = v28;
    v43 = v20;
    v44 = v23;
    v45 = v0[45];
    v46 = v0[46];
    OUTLINED_FUNCTION_114();
    v268 = 0;
    v269 = v47;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v45, v46, 0xD000000000000023, 0x8000000000426000);
    v1 = v0;

    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_34_0();

    *(v41 + 4) = v45;
    v23 = v44;
    v20 = v43;
    v28 = v256;
    OUTLINED_FUNCTION_24_22();
    _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v29 = v249;
    OUTLINED_FUNCTION_26_0();
    v18 = v253;
    OUTLINED_FUNCTION_26_0();
  }

  v53 = v261;
  Input.parse.getter();
  v54 = v259;
  v55 = (*(v259 + 88))(v53, v29);
  if (v55 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v55 != enum case for Parse.directInvocation(_:))
    {
      v98 = v55 == enum case for Parse.NLv4IntentOnly(_:) || v55 == enum case for Parse.uso(_:);
      if (!v98)
      {

        v99 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_137_1();
        if (OUTLINED_FUNCTION_108())
        {
          OUTLINED_FUNCTION_42();
          v100 = OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_95_2(v100);
          *v53 = 136315138;
          v101 = OUTLINED_FUNCTION_9_43();
          OUTLINED_FUNCTION_92_2(v101, v102, v103, v104, v105);
          OUTLINED_FUNCTION_38_13();
          OUTLINED_FUNCTION_128_0();
          *(v53 + 4) = v54;
          v54 = v259;
          OUTLINED_FUNCTION_26(&dword_0, v106, v107, "%s parseDisambiguationResponse: unrecognized parse type, ignoring input");
          OUTLINED_FUNCTION_9_28();
          OUTLINED_FUNCTION_35();
        }

        type metadata accessor for AppDisambiguationResponse();
        static AppDisambiguationResponse.ignore()();
        (*(v54 + 8))(v261, v29);
        goto LABEL_54;
      }

      goto LABEL_6;
    }

    v82 = *(v54 + 96);
    v83 = v261;
    v84 = OUTLINED_FUNCTION_0();
    v85(v84);
    v86 = v255;
    (*(v23 + 4))(v28, v83, v255);
    static CommonDirectAction.from(_:)(v20);
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v20, v18, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
    type metadata accessor for CommonDirectAction();
    OUTLINED_FUNCTION_1_0(v18);
    v256 = v28;
    if (!v98)
    {
      v87 = v254;
      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v18, v254, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
      OUTLINED_FUNCTION_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 3)
      {
        v147 = v23;
        v253 = v18;
        v148 = *v87;
        v149 = v87[1];

        v150 = v258;
        v151 = Logger.logObject.getter();
        v152 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v151, v152))
        {
          v153 = OUTLINED_FUNCTION_86_1();
          v261 = v20;
          v154 = v153;
          v155 = OUTLINED_FUNCTION_16_13();
          OUTLINED_FUNCTION_138_1(v155);
          *v154 = 136315394;
          v156 = OUTLINED_FUNCTION_9_43();
          OUTLINED_FUNCTION_92_2(v156, v157, v158, v159, v160);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v268, v269, &v265);
          OUTLINED_FUNCTION_40_0();

          *(v154 + 4) = v150;
          *(v154 + 12) = 2080;
          v161 = OUTLINED_FUNCTION_72();
          *(v154 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v162, v163);
          _os_log_impl(&dword_0, v151, v152, "%s parseDisambiguationResponse: item selected by button tap: %s", v154, 0x16u);
          OUTLINED_FUNCTION_60_4();
          OUTLINED_FUNCTION_14_0();
          v20 = v261;
          v86 = v255;
          OUTLINED_FUNCTION_26_0();
        }

        type metadata accessor for App();
        OUTLINED_FUNCTION_5();
        App.__allocating_init(appIdentifier:)();
        PhoneAppResolutionOnDeviceFlowStrategy.selectAppDisambiguation(by:)();
        OUTLINED_FUNCTION_125_1();

        OUTLINED_FUNCTION_20_6(v20);
        v147[1](v256, v86);
        v164 = v253;
        goto LABEL_53;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v261 = v23;

        v89 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_137_1();
        if (OUTLINED_FUNCTION_108())
        {
          OUTLINED_FUNCTION_42();
          v90 = OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_95_2(v90);
          *v53 = 136315138;
          v91 = OUTLINED_FUNCTION_9_43();
          OUTLINED_FUNCTION_92_2(v91, v92, v93, v94, v95);
          OUTLINED_FUNCTION_38_13();
          OUTLINED_FUNCTION_128_0();
          *(v53 + 4) = v86;
          OUTLINED_FUNCTION_26(&dword_0, v96, v97, "%s parseDisambiguationResponse: directInvocation .no -> cancel");
          OUTLINED_FUNCTION_9_28();
          OUTLINED_FUNCTION_35();
        }

        type metadata accessor for AppDisambiguationResponse();
        static AppDisambiguationResponse.cancel()();
        OUTLINED_FUNCTION_20_6(v20);
        (v261[1])(v256, v86);
LABEL_52:
        v164 = v18;
LABEL_53:
        OUTLINED_FUNCTION_20_6(v164);
        goto LABEL_54;
      }

      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v87, type metadata accessor for CommonDirectAction);
    }

    v261 = v23;

    v165 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_137_1();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      v166 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_95_2(v166);
      *v53 = 136315138;
      v167 = OUTLINED_FUNCTION_9_43();
      OUTLINED_FUNCTION_92_2(v167, v168, v169, v170, v171);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_128_0();
      *(v53 + 4) = v86;
      OUTLINED_FUNCTION_26(&dword_0, v172, v173, "%s parseDisambiguationResponse: unsupported direct invocation, ignoring");
      OUTLINED_FUNCTION_9_28();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppDisambiguationResponse();
    static AppDisambiguationResponse.ignore()();
    OUTLINED_FUNCTION_20_6(v20);
    (v261[1])(v256, v86);
    goto LABEL_52;
  }

LABEL_6:
  v58 = *(v54 + 8);
  v57 = v54 + 8;
  v56 = v58;
  (v58)(v261, v29);
  v59 = v1[29];
  __swift_project_boxed_opaque_existential_1(v1 + 25, v1[28]);
  v60 = *(v59 + 72);
  v61 = OUTLINED_FUNCTION_40_0();
  v62(v61, v59);
  Input.parse.getter();
  OUTLINED_FUNCTION_41_0();
  v64 = *(v63 + 192);
  v65 = OUTLINED_FUNCTION_121_1();
  v66(v65);

  v67 = OUTLINED_FUNCTION_8_2();
  (v56)(v67);
  if (!v266)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v265, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);

    v108 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_137_1();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      v109 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_95_2(v109);
      *v56 = 136315138;
      v110 = OUTLINED_FUNCTION_9_43();
      OUTLINED_FUNCTION_92_2(v110, v111, v112, v113, v114);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_128_0();
      *(v56 + 4) = v57;
      OUTLINED_FUNCTION_26(&dword_0, v115, v116, "%s could not transform input to NLIntent, ignoring input");
      OUTLINED_FUNCTION_9_28();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppDisambiguationResponse();
    static AppDisambiguationResponse.ignore()();
    goto LABEL_54;
  }

  outlined init with take of SPHConversation(&v265, &v268);
  __swift_project_boxed_opaque_existential_1(&v268, v270);
  if (PhoneCallNLIntent.hasCallConfirmation(_:)(PhoneCallFlowDelegatePlugin_PhoneCallConfirmation_no) || (__swift_project_boxed_opaque_existential_1(&v268, v270), PhoneCallNLIntent.hasCallConfirmation(_:)(PhoneCallFlowDelegatePlugin_PhoneCallConfirmation_cancel)))
  {
    outlined init with copy of SignalProviding(&v268, &v265);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_157())
    {
      v70 = OUTLINED_FUNCTION_86_1();
      v264 = OUTLINED_FUNCTION_16_13();
      *v70 = 136315394;
      v71 = OUTLINED_FUNCTION_9_43();
      v262 = 0;
      v263 = v72;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v71, v73, v74, v75);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v262, v263, &v264);
      OUTLINED_FUNCTION_40_0();

      *(v70 + 4) = &v262;
      *(v70 + 12) = 2080;
      v76 = v267;
      __swift_project_boxed_opaque_existential_1(&v265, v266);
      v77 = *(v76 + 64);
      v78 = OUTLINED_FUNCTION_40_0();
      v80 = v79(v78, v76);
      if (v80 == 5)
      {
        v81 = 7104878;
      }

      else
      {
        v81 = PhoneCallConfirmation.rawValue.getter(v80);
      }

      __swift_destroy_boxed_opaque_existential_1(&v265);
      v127 = OUTLINED_FUNCTION_0();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, v129);
      OUTLINED_FUNCTION_40_0();

      *(v70 + 14) = v81;
      _os_log_impl(&dword_0, v68, v69, "%s Received %s -> cancel", v70, 0x16u);
      OUTLINED_FUNCTION_60_4();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v265);
    }

    type metadata accessor for AppDisambiguationResponse();
    static AppDisambiguationResponse.cancel()();
    goto LABEL_38;
  }

  v117 = v271;
  __swift_project_boxed_opaque_existential_1(&v268, v270);
  v118 = *(v117 + 96);
  v119 = OUTLINED_FUNCTION_40_0();
  v121 = v120(v119, v117);
  if (v121 != 35)
  {
    v122 = v121;
    if (v121 == 25 && (v123 = v1[2], v124 = , v117 = specialized BidirectionalCollection.last.getter(v124), , v117))
    {

      v125 = v258;
      v126 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_131_1();

      if (!OUTLINED_FUNCTION_31_13())
      {
LABEL_43:

        PhoneAppResolutionOnDeviceFlowStrategy.selectAppDisambiguation(by:)();
        OUTLINED_FUNCTION_125_1();
        goto LABEL_44;
      }
    }

    else
    {
      PhoneCallReference.ordinalIndex.getter(v122);
      if ((v130 & 1) != 0 || (v131 = v1[2], , v132 = OUTLINED_FUNCTION_19_0(), specialized Array.subscript.getter(v132, v133), OUTLINED_FUNCTION_107_1(), !v117))
      {

        v191 = v258;
        v192 = Logger.logObject.getter();
        v193 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v192, v193))
        {
          v194 = OUTLINED_FUNCTION_36();
          v262 = swift_slowAlloc();
          *v194 = 136315650;
          v195 = OUTLINED_FUNCTION_9_43();
          OUTLINED_FUNCTION_136_1(v195, v196, v197, v198, v199);
          OUTLINED_FUNCTION_94_4();
          OUTLINED_FUNCTION_40_0();

          *(v194 + 4) = v191;
          *(v194 + 12) = 2080;
          LOBYTE(v265) = v122;
          v200 = String.init<A>(describing:)();
          OUTLINED_FUNCTION_164(v200, v201);
          OUTLINED_FUNCTION_40_0();

          *(v194 + 14) = v191;
          *(v194 + 22) = 2080;
          v202 = v1[2];
          type metadata accessor for App();
          OUTLINED_FUNCTION_40_0();

          v203 = Array.description.getter();
          v205 = v204;

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v205, &v262);
          OUTLINED_FUNCTION_141_0();

          *(v194 + 24) = v202;
          _os_log_impl(&dword_0, v192, v193, "%s parseDisambiguationResponse: unable to resolve reference value '%s' in app list: '%s'", v194, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_5_7();
          OUTLINED_FUNCTION_35();
        }

        type metadata accessor for AppDisambiguationResponse();
        v206 = v1[2];

        static AppDisambiguationResponse.disambiguate(apps:)();
        OUTLINED_FUNCTION_125_1();

        goto LABEL_38;
      }

      v125 = v258;
      v126 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_131_1();

      if (!OUTLINED_FUNCTION_31_13())
      {
        goto LABEL_43;
      }
    }

    OUTLINED_FUNCTION_86_1();
    v262 = OUTLINED_FUNCTION_55_4();
    *v57 = 136315394;
    v134 = OUTLINED_FUNCTION_9_43();
    OUTLINED_FUNCTION_136_1(v134, v135, v136, v137, v138);
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_40_0();

    *(v57 + 4) = v125;
    OUTLINED_FUNCTION_99_0();
    *&v265 = App.appIdentifier.getter();
    *(&v265 + 1) = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v140 = String.init<A>(describing:)();
    OUTLINED_FUNCTION_164(v140, v141);
    OUTLINED_FUNCTION_40_0();

    *(v57 + 14) = v117;
    OUTLINED_FUNCTION_9_38();
    _os_log_impl(v142, v143, v144, v145, v146, 0x16u);
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_14_0();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_1_3();
  if (!PhoneCallNLIntent.hasApplicationNameOrId()())
  {
    __swift_destroy_boxed_opaque_existential_1(&v268);

    v207 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_137_1();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      v208 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_95_2(v208);
      *v56 = 136315138;
      v209 = OUTLINED_FUNCTION_9_43();
      OUTLINED_FUNCTION_92_2(v209, v210, v211, v212, v213);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_128_0();
      *(v56 + 4) = v57;
      OUTLINED_FUNCTION_26(&dword_0, v214, v215, "%s parseDisambiguationResponse: unable to disambiguate");
      OUTLINED_FUNCTION_9_28();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppDisambiguationResponse();
    v216 = v1[2];

    static AppDisambiguationResponse.disambiguate(apps:)();
    OUTLINED_FUNCTION_125_1();

    goto LABEL_54;
  }

  v174 = OUTLINED_FUNCTION_1_3();
  v176 = PhoneCallNLIntent.applicationId.getter(v174, v175);
  if (!v177)
  {
    v178 = OUTLINED_FUNCTION_1_3();
    v176 = PhoneCallNLIntent.appName.getter(v178, v179);
  }

  v180 = v176;
  v261 = v177;
  v181 = v1[2];
  v182 = specialized Array.count.getter(v181);
  v183 = v181 & 0xC000000000000001;

  for (i = 0; ; ++i)
  {
    if (v182 == i)
    {

      PhoneAppResolutionOnDeviceFlowStrategy.resolveAppByQuery(phoneCallIntent:)(&v268);
      v217 = v250;
      AppResolutionAction.result.getter();

      v218 = v251;
      v219 = v252;
      if ((*(v251 + 88))(v217, v252) != enum case for AppResolutionResult.selected(_:))
      {
        (*(v218 + 8))(v217, v219);

        v237 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();

        if (OUTLINED_FUNCTION_31_13())
        {
          OUTLINED_FUNCTION_42();
          v262 = OUTLINED_FUNCTION_14_2();
          *v182 = 136315138;
          v238 = OUTLINED_FUNCTION_9_43();
          OUTLINED_FUNCTION_136_1(v238, v239, v240, v241, v242);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v265, *(&v265 + 1), &v262);
          OUTLINED_FUNCTION_63_1();
          *(v182 + 4) = v183;

          OUTLINED_FUNCTION_9_38();
          _os_log_impl(v243, v244, v245, v246, v247, 0xCu);
          OUTLINED_FUNCTION_9_28();
          OUTLINED_FUNCTION_14_0();
        }

        else
        {
        }

        type metadata accessor for AppDisambiguationResponse();
        static AppDisambiguationResponse.ignore()();
        goto LABEL_38;
      }

      (*(v218 + 96))(v217, v219);
      v220 = *v217;

      v221 = v258;
      v222 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_147_0();

      if (OUTLINED_FUNCTION_126())
      {
        OUTLINED_FUNCTION_86_1();
        v262 = OUTLINED_FUNCTION_54_1();
        *v183 = 136315394;
        v223 = OUTLINED_FUNCTION_9_43();
        OUTLINED_FUNCTION_136_1(v223, v224, v225, v226, v227);
        OUTLINED_FUNCTION_94_4();
        OUTLINED_FUNCTION_40_0();

        *(v183 + 4) = v221;
        OUTLINED_FUNCTION_98_3();
        *&v265 = v220;
        type metadata accessor for App();
        OUTLINED_FUNCTION_1_75();
        _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v228, 255, v229);
        v230 = dispatch thunk of CustomStringConvertible.description.getter();
        OUTLINED_FUNCTION_164(v230, v231);
        OUTLINED_FUNCTION_40_0();

        *(v183 + 14) = &v265;

        OUTLINED_FUNCTION_24_22();
        _os_log_impl(v232, v233, v234, v235, v236, 0x16u);
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_5_7();
      }

      else
      {
      }

      type metadata accessor for AppDisambiguationResponse();
      OUTLINED_FUNCTION_61();
      static AppDisambiguationResponse.select(app:)();
      OUTLINED_FUNCTION_141_0();
LABEL_44:

LABEL_38:
      __swift_destroy_boxed_opaque_existential_1(&v268);
LABEL_54:
      OUTLINED_FUNCTION_65();
      return;
    }

    if (v183)
    {
      v185 = v1;
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v181 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_95;
      }

      v185 = v1;
      v186 = *(v181 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v187 = App.appIdentifier.getter();
    if (!v188)
    {
      if (!v261)
      {
        goto LABEL_89;
      }

LABEL_73:

      goto LABEL_75;
    }

    if (v261)
    {
      if (v187 == v180 && v188 == v261)
      {

        goto LABEL_89;
      }

      v190 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v190)
      {

LABEL_89:

        PhoneAppResolutionOnDeviceFlowStrategy.selectAppDisambiguation(by:)();
        goto LABEL_44;
      }

      goto LABEL_73;
    }

LABEL_75:
    v1 = v185;
  }

  __break(1u);
LABEL_95:
  __break(1u);
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeConfirmationPrompt(app:)()
{
  OUTLINED_FUNCTION_15();
  v1[36] = v2;
  v1[37] = v0;
  v1[35] = v3;
  v4 = type metadata accessor for PhoneError();
  v1[38] = v4;
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[39] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v1[40] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[41] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[42] = v11;
  v13 = *(v12 + 64);
  v1[43] = OUTLINED_FUNCTION_45();
  v14 = type metadata accessor for PhoneSnippetDataModels();
  v1[44] = v14;
  OUTLINED_FUNCTION_21(v14);
  v16 = *(v15 + 64);
  v1[45] = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for CommonDirectAction();
  v1[46] = v17;
  OUTLINED_FUNCTION_21(v17);
  v19 = *(v18 + 64);
  v1[47] = OUTLINED_FUNCTION_45();
  v20 = type metadata accessor for YesNoConfirmationModel();
  v1[48] = v20;
  OUTLINED_FUNCTION_21(v20);
  v22 = *(v21 + 64);
  v1[49] = OUTLINED_FUNCTION_45();
  v23 = type metadata accessor for Locale();
  v1[50] = v23;
  OUTLINED_FUNCTION_13_2(v23);
  v1[51] = v24;
  v26 = *(v25 + 64);
  v1[52] = OUTLINED_FUNCTION_45();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v27);
  v29 = *(v28 + 64);
  v1[53] = OUTLINED_FUNCTION_45();
  v30 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v30, v31, v32);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 440);
  *v3 = *v1;
  *(v2 + 448) = v6;
  *(v2 + 456) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[36];
  v2 = *(v0[37] + 248);
  v0[58] = v2;
  v3 = App.appIdentifier.getter();
  static PhoneCallAppNameConstants.isPhone(appId:)(v3, v4);

  v5 = *(*v2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 336);
  OUTLINED_FUNCTION_24_5();
  v13 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[59] = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_81_3(v9);

  return v11(v10);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 472);
  v7 = *v1;
  *v4 = v7;
  *(v3 + 480) = v8;
  *(v3 + 488) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(**(v3 + 464) + class metadata base offset for PhoneCallDisplayTextCATsSimple + 80);
    OUTLINED_FUNCTION_24_5();
    v19 = (v13 + *v13);
    v15 = *(v14 + 4);
    v16 = swift_task_alloc();
    *(v3 + 496) = v16;
    *v16 = v7;
    v16[1] = PhoneAppResolutionOnDeviceFlowStrategy.makeConfirmationPrompt(app:);
    v17 = *(v3 + 464);

    return v19();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 496);
  *v3 = *v1;
  *(v2 + 504) = v6;
  *(v2 + 512) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v2 = *(v0 + 432);
  v3 = *(v0 + 296);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v5 = *(v0 + 296);
    OUTLINED_FUNCTION_42();
    v158 = OUTLINED_FUNCTION_83();
    v6 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    v161 = v7;
    v11 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    OUTLINED_FUNCTION_132(v11, v12, v13, v14, v15, v16, v17, v18, v137, v139, v141, v143, v145, v147, v149, v151, v152, v154, v156, v158, 0, v161);
    OUTLINED_FUNCTION_63_1();
    *(v3 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v24 = [*(v0 + 480) dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  OUTLINED_FUNCTION_5();
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v25))
  {
    v26 = OUTLINED_FUNCTION_3_36();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v26, v27, v25);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(v25 + 32);
    }

    v29 = v28;
    v30 = *(v0 + 504);

    v31 = [v29 fullPrint];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = [v30 dialog];
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v36))
    {
      v148 = v34;
      v37 = OUTLINED_FUNCTION_3_36();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v37, v38, v36);
      v144 = v32;
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v36 + 32);
      }

      v40 = v39;
      v41 = *(v0 + 384);
      v42 = *(v0 + 392);
      v43 = *(v0 + 368);
      v44 = *(v0 + 376);
      v146 = *(v0 + 360);
      v150 = *(v0 + 352);
      v155 = *(v0 + 344);
      v157 = *(v0 + 448);
      v153 = *(v0 + 320);
      v45 = *(v0 + 296);

      v46 = [v40 fullPrint];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v140 = v48;
      v142 = v47;

      swift_storeEnumTagMultiPayload();
      v50 = v45[28];
      v49 = v45[29];
      __swift_project_boxed_opaque_existential_1(v45 + 25, v50);
      (*(v49 + 8))(v50, v49);
      v138 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 56));
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v44, type metadata accessor for CommonDirectAction);
      swift_storeEnumTagMultiPayload();
      v51 = v45[29];
      __swift_project_boxed_opaque_existential_1(v45 + 25, v45[28]);
      v52 = *(v51 + 8);
      v53 = OUTLINED_FUNCTION_40_0();
      v54(v53, v51);
      v55 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 96));
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v44, type metadata accessor for CommonDirectAction);
      v56 = v41[8];
      *(v0 + 224) = 0;
      *(v0 + 216) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      Loggable.init(wrappedValue:)();
      v57 = (v42 + v41[9]);
      *v57 = 0xD000000000000011;
      v57[1] = 0x8000000000456DF0;
      *(v0 + 232) = v144;
      *(v0 + 240) = v148;
      Loggable.init(wrappedValue:)();
      v58 = v41[5];
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
      v59 = v138;
      CodableAceObject.init(wrappedValue:)();
      v60 = v41[6];
      *(v0 + 248) = v142;
      *(v0 + 256) = v140;
      Loggable.init(wrappedValue:)();
      v61 = v41[7];
      v62 = v55;
      CodableAceObject.init(wrappedValue:)();
      *(v0 + 264) = 0;
      *(v0 + 272) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
      Loggable.wrappedValue.setter();

      outlined init with copy of YesNoConfirmationModel(v42, v146, type metadata accessor for YesNoConfirmationModel);
      swift_storeEnumTagMultiPayload();
      *(v0 + 160) = v41;
      *(v0 + 168) = _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, 255, type metadata accessor for YesNoConfirmationModel);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
      outlined init with copy of YesNoConfirmationModel(v42, boxed_opaque_existential_1, type metadata accessor for YesNoConfirmationModel);
      static DialogPhase.confirmation.getter();
      *(swift_task_alloc() + 16) = v0 + 136;
      OutputGenerationManifest.init(dialogPhase:_:)();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 136, &_s27PhoneCallFlowDelegatePlugin0A12SnippetModel_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A12SnippetModel_pSgMR);
      v64 = v45[35];
      v65 = v45[36];
      OUTLINED_FUNCTION_28_0(v45 + 32, v64);
      *(v0 + 200) = v150;
      OUTLINED_FUNCTION_14_38();
      *(v0 + 208) = _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v66, 255, v67);
      __swift_allocate_boxed_opaque_existential_1((v0 + 176));
      OUTLINED_FUNCTION_11_37();
      outlined init with copy of YesNoConfirmationModel(v146, v68, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v70 = OUTLINED_FUNCTION_48_0();
      *(v0 + 520) = v70;
      *(v70 + 16) = xmmword_426260;
      *(v70 + 32) = v157;
      v71 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
      v72 = v157;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 528) = v73;
      *v73 = v74;
      v73[1] = PhoneAppResolutionOnDeviceFlowStrategy.makeConfirmationPrompt(app:);
      v75 = *(v0 + 344);
      v76 = *(v0 + 280);

      return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v76, v0 + 176, v70, v75, v64, v65);
    }

    v103 = *(v0 + 432);
    v104 = *(v0 + 296);

    v105 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      v106 = *(v0 + 296);
      OUTLINED_FUNCTION_42();
      v160 = OUTLINED_FUNCTION_83();
      v107 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      v163 = v108;
      v112 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v107, v109, v110, v111);
      OUTLINED_FUNCTION_132(v112, v113, v114, v115, v116, v117, v118, v119, v137, v139, v141, v143, v145, v147, v149, v151, v152, v154, v156, v160, 0, v163);
      OUTLINED_FUNCTION_63_1();
      *(v104 + 4) = v32;
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v120, v121, v122, v123, v124, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    v100 = *(v0 + 504);
    v102 = *(v0 + 480);
    v101 = 235;
    v99 = v100;
  }

  else
  {
    v77 = *(v0 + 432);
    v78 = *(v0 + 296);

    v79 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      v80 = *(v0 + 296);
      OUTLINED_FUNCTION_42();
      v159 = OUTLINED_FUNCTION_83();
      v81 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      v162 = v82;
      v86 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v81, v83, v84, v85);
      OUTLINED_FUNCTION_132(v86, v87, v88, v89, v90, v91, v92, v93, v137, v139, v141, v143, v145, v147, v149, v151, v152, v154, v156, v159, 0, v162);
      OUTLINED_FUNCTION_63_1();
      *(v78 + 4) = v1;
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v94, v95, v96, v97, v98, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    v99 = *(v0 + 504);
    v100 = *(v0 + 480);
    v101 = 230;
    v102 = v100;
  }

  v125 = *(v0 + 448);
  v126 = *(v0 + 304);
  v127 = *(v0 + 312);
  v128 = [v100 catId];
  v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v131 = v130;

  *v127 = v129;
  v127[1] = v131;
  v127[2] = 0xD000000000000048;
  v127[3] = 0x800000000045D560;
  v127[4] = 0xD00000000000001CLL;
  v127[5] = 0x800000000045D5B0;
  v127[6] = v101;
  OUTLINED_FUNCTION_0();
  swift_storeEnumTagMultiPayload();
  _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v132);
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v127, type metadata accessor for PhoneError);
  swift_willThrow();

  v134 = *(v0 + 416);
  v133 = *(v0 + 424);
  OUTLINED_FUNCTION_19_27();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v133, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();

  return v135();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *(v4 + 520);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_39_4();
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 392);
  v6 = *(v0 + 360);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v9 = *(v0 + 328);
  v13 = *(v0 + 376);
  v14 = *(v0 + 320);
  v15 = *(v0 + 312);

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_48_15();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v6, v10);
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v5, type metadata accessor for YesNoConfirmationModel);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();

  return v11();
}

void PhoneAppResolutionOnDeviceFlowStrategy.makeConfirmationPrompt(app:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = v0[37];
  v3 = type metadata accessor for Logger();
  v0[54] = OUTLINED_FUNCTION_9_0(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v5 = v0[37];
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_56_5();
    v6 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    v10 = OUTLINED_FUNCTION_104_0(v6, v7, v8, v9);
    OUTLINED_FUNCTION_39_15(v10, v11, v12, v13, v14, v15, v16, v17, v54, v55, v56, v58, v59, v60);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v24 = v0[51];
  v23 = v0[52];
  v25 = v0[50];
  v26 = v0[36];
  v27 = v0[37];
  v28 = v27[29];
  __swift_project_boxed_opaque_existential_1(v27 + 25, v27[28]);
  v29 = *(v28 + 8);
  v30 = OUTLINED_FUNCTION_25_0();
  v31(v30);
  v32 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_25_0();
  dispatch thunk of DeviceState.siriLocale.getter();
  v33 = v27[13];
  OUTLINED_FUNCTION_28_0(v27 + 9, v27[12]);
  v34 = *(v33 + 16);
  OUTLINED_FUNCTION_139();
  v35();
  v37 = v36;
  (*(v24 + 8))(v23, v25);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v37)
  {
    v38 = v0[53];
    OUTLINED_FUNCTION_53_1();
    SpeakableString.init(print:speak:)();
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = v0[53];
  v41 = v0[36];
  v42 = v0[37];
  v43 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v40, v39, 1, v43);
  v44 = *(v42 + 240);
  v45 = App.appIdentifier.getter();
  static PhoneCallAppNameConstants.isPhone(appId:)(v45, v46);

  v47 = *(*v44 + class metadata base offset for StartCallCATsSimple + 16);
  OUTLINED_FUNCTION_24_5();
  v57 = v48 + *v48;
  v50 = *(v49 + 4);
  v51 = swift_task_alloc();
  v0[55] = v51;
  *v51 = v0;
  OUTLINED_FUNCTION_81_3(v51);
  OUTLINED_FUNCTION_152();

  __asm { BRAA            X2, X16 }
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeConfirmationPrompt(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[57];
  v15 = v12[52];
  v14 = v12[53];
  OUTLINED_FUNCTION_19_27();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();

  v13 = *(v12 + 488);
  v15 = *(v12 + 416);
  v14 = *(v12 + 424);
  OUTLINED_FUNCTION_19_27();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 448);

  v14 = *(v12 + 512);
  v16 = *(v12 + 416);
  v15 = *(v12 + 424);
  OUTLINED_FUNCTION_19_27();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:)()
{
  OUTLINED_FUNCTION_15();
  v1[12] = v2;
  v1[13] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[16] = v7;
  v9 = *(v8 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for PhoneSnippetDataModels();
  v1[18] = v10;
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  v1[19] = OUTLINED_FUNCTION_45();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMd, &_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  v1[20] = OUTLINED_FUNCTION_45();
  v16 = type metadata accessor for AppDescription();
  v1[21] = v16;
  OUTLINED_FUNCTION_13_2(v16);
  v1[22] = v17;
  v19 = *(v18 + 64);
  v1[23] = OUTLINED_FUNCTION_45();
  v20 = type metadata accessor for ResponseMode();
  v1[24] = v20;
  OUTLINED_FUNCTION_13_2(v20);
  v1[25] = v21;
  v23 = *(v22 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v24 = type metadata accessor for NLContextUpdate();
  v1[28] = v24;
  OUTLINED_FUNCTION_13_2(v24);
  v1[29] = v25;
  v27 = *(v26 + 64);
  v1[30] = OUTLINED_FUNCTION_45();
  v28 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v28, v29, v30);
}

{
  v50 = v0;
  v2 = *(v0 + 240);
  v3 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMR);
  v4 = *(v3 + 16);

  specialized static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)(v5, (v3 + 152), v2);

  v44 = v3;
  v6 = *(v3 + 16);
  v7 = specialized Array.count.getter(v6);
  v8 = (v6 & 0xFFFFFFFFFFFFFF8);

  for (i = 0; v7 != i; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_92();
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_42;
      }

      v10 = *(v6 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (App.isFaceTime()())
    {
      goto LABEL_31;
    }

    v11 = App.appIdentifier.getter();
    if (!v12)
    {

      break;
    }

    v1 = v11;
    v13 = v12;
    v14 = v11 == 0xD000000000000017 && v12 == 0x8000000000459750;
    if (v14 || (OUTLINED_FUNCTION_103_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v1 == 0xD000000000000012 ? (v15 = v13 == 0x800000000045B700) : (v15 = 0), v15 || (OUTLINED_FUNCTION_103_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v1 == 0xD000000000000013 ? (v16 = v13 == 0x800000000045B720) : (v16 = 0), v16 || (OUTLINED_FUNCTION_103_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v1 == 0xD000000000000015 ? (v17 = v13 == 0x8000000000452BD0) : (v17 = 0), v17))))
    {

LABEL_31:

      continue;
    }

    OUTLINED_FUNCTION_103_0();
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      break;
    }
  }

  v8 = v45;
  v18 = v45[13];

  v19 = *(v44 + 16);

  PhoneAppResolutionOnDeviceFlowStrategy.getAppSpeakableString(apps:)();
  v45[31] = v20;

  if (one-time initialization token for siriPhone == -1)
  {
    goto LABEL_36;
  }

LABEL_43:
  OUTLINED_FUNCTION_6_2();
LABEL_36:
  v21 = v8[13];
  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v22, static Logger.siriPhone);

  v23 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_126())
  {
    v24 = v8[13];
    v25 = OUTLINED_FUNCTION_42();
    v26 = OUTLINED_FUNCTION_36();
    v47 = v26;
    v48 = 0;
    *v25 = 136315138;
    v27 = OUTLINED_FUNCTION_4_47();
    v49 = v28;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v27, v29, v30, v31);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v47);
    OUTLINED_FUNCTION_111_2();
    *(v25 + 4) = v1;
    OUTLINED_FUNCTION_24_22();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_36_16();
    OUTLINED_FUNCTION_5_7();
  }

  v8[32] = *(v8[13] + 240);
  OUTLINED_FUNCTION_41_0();
  v38 = *(v37 + class metadata base offset for StartCallCATsSimple + 96);
  OUTLINED_FUNCTION_24_5();
  v46 = (v39 + *v39);
  v41 = *(v40 + 4);
  v42 = swift_task_alloc();
  v8[33] = v42;
  *v42 = v8;
  v42[1] = PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:);

  return v46(v7 == i);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 264);
  *v4 = *v1;
  v3[34] = v7;
  v3[35] = v0;

  if (v0)
  {
    v8 = v3[31];
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  v4 = *(v0 + 104);
  v5 = v4[29];
  __swift_project_boxed_opaque_existential_1(v4 + 25, v4[28]);
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_40_0();
  if (v8(v7, v5))
  {
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v1 = *(v0 + 192);
    v11 = *(v0 + 200);
    CurrentRequest.responseMode.getter();

    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_143_0();
    v13();
    if (ResponseMode.isVoiceMode()())
    {
      v14 = *(**(v0 + 256) + class metadata base offset for StartCallCATsSimple + 112);
      OUTLINED_FUNCTION_24_5();
      v94 = v15 + *v15;
      v17 = *(v16 + 4);
      v18 = swift_task_alloc();
      *(v0 + 288) = v18;
      *v18 = v0;
      v18[1] = PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:);
      v19 = *(v0 + 256);
      OUTLINED_FUNCTION_100_2(*(v0 + 248));
      OUTLINED_FUNCTION_46_6();

      __asm { BRAA            X1, X16 }
    }

    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  }

  v22 = *(v0 + 272);
  v23 = *(v0 + 248);

  v24 = *(v0 + 272);
  *(v0 + 312) = v24;
  OUTLINED_FUNCTION_123_2();
  v25 = v22;
  specialized Array.count.getter(v1);
  OUTLINED_FUNCTION_151_0();
  v87 = v24;

  v26 = 0;
  v89 = _swiftEmptyArrayStorage;
  while (v93 != v26)
  {
    if (v92)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *(v91 + 16))
      {
        goto LABEL_31;
      }

      v3 = v1[v26 + 4];
    }

    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_25;
    }

    v28 = *(v0 + 160);
    v27 = *(v0 + 168);
    v29 = *(v0 + 104);
    v2 = v29[28];
    v30 = v29[29];
    __swift_project_boxed_opaque_existential_1(v29 + 25, v2);
    v31 = *(v30 + 8);
    v32 = OUTLINED_FUNCTION_3_13();
    v34 = v33(v32);
    OUTLINED_FUNCTION_133_1(v34, v35, v36, v37, v38, v39, v40, v41, v86, v87, v89, v90);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    OUTLINED_FUNCTION_1_0(v28);
    if (v42)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 160), &_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMd, &_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMR);
      ++v26;
    }

    else
    {
      outlined init with take of AppDescription(*(v0 + 160), *(v0 + 184));
      v43 = v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v53 = v89[2];
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = isUniquelyReferenced_nonNull_native;
      }

      v52 = v43[3];
      if (v43[2] >= v52 >> 1)
      {
        OUTLINED_FUNCTION_3_62(v52);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_70_4(isUniquelyReferenced_nonNull_native, v45, v46, v47, v48, v49, v50, v51, v86);
      ++v26;
    }
  }

  v54 = *(v0 + 272);

  v55 = [v54 dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v56))
  {
    v57 = OUTLINED_FUNCTION_3_36();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v57, v58, v56);
    if ((v56 & 0xC000000000000001) != 0)
    {
      goto LABEL_32;
    }

    v59 = *(v56 + 32);
LABEL_25:
    OUTLINED_FUNCTION_160();
    v56 = [v1 fullPrint];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_27;
  }

LABEL_27:
  OUTLINED_FUNCTION_62_12(v60, v61, v62, v63, v64, v65, v66, v67, v86, v87, v89);

  static DialogPhase.clarification.getter();
  v68 = swift_task_alloc();
  OUTLINED_FUNCTION_43_16(v68);

  v69 = v3[36];
  __swift_project_boxed_opaque_existential_1(v3 + 32, v3[35]);
  *(v0 + 80) = v2;
  OUTLINED_FUNCTION_14_38();
  *(v0 + 88) = _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v70, 255, v71);
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  OUTLINED_FUNCTION_11_37();
  outlined init with copy of YesNoConfirmationModel(v56, v72, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v74 = OUTLINED_FUNCTION_48_0();
  *(v0 + 320) = v74;
  *(v74 + 16) = xmmword_426260;
  *(v74 + 32) = v88;
  v75 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 328) = v76;
  *v76 = v77;
  OUTLINED_FUNCTION_35_13(v76);
  OUTLINED_FUNCTION_46_6();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v78, v79, v80, v81, v82, v83);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 288);
  v9 = *(v7 + 248);
  v10 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v11 = v10;
  *(v5 + 296) = v0;

  if (!v0)
  {
    *(v5 + 304) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v12, v13, v14);
}

{
  (*(v0[25] + 8))(v0[27], v0[24]);
  v4 = v0[38];
  v0[39] = v4;
  OUTLINED_FUNCTION_123_2();
  specialized Array.count.getter(v1);
  OUTLINED_FUNCTION_151_0();
  v66 = v4;

  v5 = 0;
  v68 = _swiftEmptyArrayStorage;
  while (v72 != v5)
  {
    if (v71)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v70 + 16))
      {
        goto LABEL_25;
      }

      v3 = v1[v5 + 4];
    }

    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_19;
    }

    v7 = v0[20];
    v6 = v0[21];
    v8 = v0[13];
    v2 = v8[28];
    v9 = v8[29];
    __swift_project_boxed_opaque_existential_1(v8 + 25, v2);
    v10 = *(v9 + 8);
    v11 = OUTLINED_FUNCTION_3_13();
    v13 = v12(v11);
    OUTLINED_FUNCTION_133_1(v13, v14, v15, v16, v17, v18, v19, v20, v65, v66, v68, v69);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_1_0(v7);
    if (v21)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[20], &_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMd, &_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMR);
      ++v5;
    }

    else
    {
      outlined init with take of AppDescription(v0[20], v0[23]);
      v22 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v68[2];
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = isUniquelyReferenced_nonNull_native;
      }

      v31 = v22[3];
      if (v22[2] >= v31 >> 1)
      {
        OUTLINED_FUNCTION_3_62(v31);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_70_4(isUniquelyReferenced_nonNull_native, v24, v25, v26, v27, v28, v29, v30, v65);
      ++v5;
    }
  }

  v33 = v0[34];

  v34 = [v33 dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v35))
  {
    v36 = OUTLINED_FUNCTION_3_36();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v36, v37, v35);
    if ((v35 & 0xC000000000000001) != 0)
    {
      goto LABEL_26;
    }

    v38 = *(v35 + 32);
LABEL_19:
    OUTLINED_FUNCTION_160();
    v35 = [v1 fullPrint];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_21;
  }

LABEL_21:
  OUTLINED_FUNCTION_62_12(v39, v40, v41, v42, v43, v44, v45, v46, v65, v66, v68);

  static DialogPhase.clarification.getter();
  v47 = swift_task_alloc();
  OUTLINED_FUNCTION_43_16(v47);

  v48 = v3[36];
  __swift_project_boxed_opaque_existential_1(v3 + 32, v3[35]);
  v0[10] = v2;
  OUTLINED_FUNCTION_14_38();
  v0[11] = _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v49, 255, v50);
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  OUTLINED_FUNCTION_11_37();
  outlined init with copy of YesNoConfirmationModel(v35, v51, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v53 = OUTLINED_FUNCTION_48_0();
  v0[40] = v53;
  *(v53 + 16) = xmmword_426260;
  *(v53 + 32) = v67;
  v54 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[41] = v55;
  *v55 = v56;
  OUTLINED_FUNCTION_35_13(v55);
  OUTLINED_FUNCTION_46_6();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v57, v58, v59, v60, v61, v62);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *(v4 + 320);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = *(v0 + 272);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v19 = *(v0 + 208);
  v20 = *(v0 + 184);
  v6 = *(v0 + 152);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = *(v0 + 120);
  v21 = *(v0 + 160);
  v22 = *(v0 + 112);

  v10 = *(v8 + 8);
  v11 = OUTLINED_FUNCTION_19_0();
  v12(v11);
  OUTLINED_FUNCTION_48_15();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v6, v13);
  v14 = *(v3 + 8);
  v15 = OUTLINED_FUNCTION_92();
  v16(v15);

  OUTLINED_FUNCTION_11();

  return v17();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 280);
  v14 = OUTLINED_FUNCTION_58_7();
  v15(v14);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 216);
  v14 = *(v12 + 192);
  v15 = *(v12 + 200);

  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_0();
  v18(v17);
  v19 = *(v12 + 296);
  v20 = OUTLINED_FUNCTION_58_7();
  v21(v20);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t specialized static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v53 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v53);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v47 - v16;
  v17 = type metadata accessor for NLContextUpdate();
  v50 = *(v17 - 8);
  v51 = v17;
  v18 = *(v50 + 64);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v58 = a2;
  _s27PhoneCallFlowDelegatePlugin0A25ContactDisplayHintFactoryV5build3for11deviceState14appInfoBuilderSay07SiriKitC00gH0VGSay0Q13AppResolution0S0CG_AH06DeviceM0_pAA0sO8Building_ptFZTf4nnen_nAA0soP0C_Tt1t2g5();
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_426980;
  if (one-time initialization token for appName != -1)
  {
    swift_once();
  }

  *(v21 + 32) = TerminalOntologyNode.name.getter();
  *(v21 + 40) = v22;
  if (one-time initialization token for reference != -1)
  {
    swift_once();
  }

  *(v21 + 48) = TerminalOntologyNode.name.getter();
  *(v21 + 56) = v23;
  if (one-time initialization token for confirmation != -1)
  {
    swift_once();
  }

  *(v21 + 64) = TerminalOntologyNode.name.getter();
  *(v21 + 72) = v24;
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v25 = swift_allocObject();
  v49 = xmmword_424FD0;
  *(v25 + 16) = xmmword_424FD0;
  v61 = String.uppercased()();
  v59 = 32;
  v60 = 0xE100000000000000;
  v62 = 95;
  v63 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v61._countAndFlagsBits = PhoneCallNLConstants.canonicalName.getter(6);
  v61._object = v26;
  v27._countAndFlagsBits = 0x2E65756C61562ELL;
  v27._object = 0xE700000000000000;
  String.append(_:)(v27);
  v28 = String.uppercased()();
  String.append(_:)(v28);

  object = v61._object;
  *(v25 + 32) = v61._countAndFlagsBits;
  *(v25 + 40) = object;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  v30 = NLContextUpdate.displayHints.setter();
  __chkstk_darwin(v30);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17SiriAppResolution0E0CG_0D8NLUTypes0D27_Nlu_External_UserDialogActVs5NeverOTg5();
  v31 = v54;
  Siri_Nlu_External_SystemGaveOptions.init()();
  Siri_Nlu_External_SystemGaveOptions.choices.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v55 + 16))(v15, v31, v56);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.siriPhone);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v53;
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v61._countAndFlagsBits = v38;
    *v37 = 136315138;
    swift_beginAccess();
    v39 = v48;
    (*(v5 + 16))(v48, v10, v36);
    v40 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v39);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v61._countAndFlagsBits);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_0, v33, v34, "#PhoneCallNLContextProvider makeNLContextUpdateForDisambiguation: sending disambiguation system dialog acts: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v43 = *(v5 + 72);
  v44 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v49;
  swift_beginAccess();
  (*(v5 + 16))(v45 + v44, v10, v36);
  NLContextUpdate.nluSystemDialogActs.setter();
  static PhoneReferenceResolution.appsToRrEntities(apps:device:)(v57, v58);
  NLContextUpdate.rrEntities.setter();
  (*(v55 + 8))(v54, v56);
  (*(v50 + 32))(v52, v20, v51);
  return (*(v5 + 8))(v10, v36);
}

uint64_t closure #3 in PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ResponseType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v12 = type metadata accessor for NLContextUpdate();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  OutputGenerationManifest.nlContextUpdate.setter();
  (*(v4 + 104))(v7, enum case for ResponseType.disambiguation(_:), v3);
  OutputGenerationManifest.responseType.setter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.getAppResolutionSourceMap(source:)(char a1)
{
  v44[4] = a1;
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = *(v1 + 16);
  v43 = specialized Array.count.getter(v3);
  if (!v43)
  {
    return v2;
  }

  v42 = v3 & 0xC000000000000001;
  v40 = v3 & 0xFFFFFFFFFFFFFF8;

  v4 = 0;
  v41 = v3;
  while (1)
  {
    if (v42)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v40 + 16))
      {
        goto LABEL_28;
      }

      v5 = *(v3 + 8 * v4 + 32);
    }

    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = App.appIdentifier.getter();
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v2;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
    v14 = *(v2 + 16);
    v15 = (v13 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_26;
    }

    v17 = v12;
    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS27PhoneCallFlowDelegatePlugin19AppResolutionSourceOGMd, &_ss17_NativeDictionaryVySS27PhoneCallFlowDelegatePlugin19AppResolutionSourceOGMR);
    v19 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16);
    if (v19)
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_29;
      }

      v17 = v19;
    }

    if (v18)
    {

      v2 = v45;
      OUTLINED_FUNCTION_154(v27, v28, v29, v30, v31, v32, v33, v34, v40, v41, v42, v43, *v44, v44[4]);
    }

    else
    {
      v2 = v45;
      *(v45 + 8 * (v17 >> 6) + 64) |= 1 << v17;
      v35 = (*(v45 + 48) + 16 * v17);
      *v35 = v9;
      v35[1] = v10;
      OUTLINED_FUNCTION_154(v19, v20, v21, v22, v23, v24, v25, v26, v40, v41, v42, v43, *v44, v44[4]);
      v36 = *(v45 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_27;
      }

      *(v45 + 16) = v38;
    }

    ++v4;
    v3 = v41;
    if (v6 == v43)
    {

      return v2;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.selectAppConfirmation(by:)()
{
  v3 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);

  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_147_0();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_86_1();
    v55[0] = OUTLINED_FUNCTION_54_1();
    *v1 = 136315394;
    v6 = OUTLINED_FUNCTION_17_27();
    v50 = v7;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v50, v55);
    OUTLINED_FUNCTION_111_2();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_98_3();
    v48 = App.appIdentifier.getter();
    v49 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v12 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v55);
    OUTLINED_FUNCTION_111_2();
    *(v1 + 14) = v2;
    OUTLINED_FUNCTION_24_22();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_36_16();
    OUTLINED_FUNCTION_5_7();
  }

  App.appIdentifier.getter();
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v21 = *(v0 + 344);

  v22 = OUTLINED_FUNCTION_53_1();
  specialized Dictionary.subscript.getter(v22, v23, v21);

  v24 = OUTLINED_FUNCTION_121_1();
  PhoneAppResolutionOnDeviceFlowStrategy.findAndCacheAppForAppSelection(app:source:)(v24, v25, v26);
  if (v48)
  {
    type metadata accessor for AppConfirmationResponse();
    OUTLINED_FUNCTION_61();
    static AppConfirmationResponse.select(app:)();
    OUTLINED_FUNCTION_141_0();

    v54 = v49;
    OUTLINED_FUNCTION_20_6(&v54);
    *v55 = v51;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v55, &_sSSSgMd, &_sSSSgMR);
    v56 = v52;
    OUTLINED_FUNCTION_20_6(&v56);
  }

  else if (*(v0 + 24))
  {

    v27 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_157())
    {
      OUTLINED_FUNCTION_42();
      v28 = OUTLINED_FUNCTION_14_2();
      v53[0] = v28;
      *v21 = 136315138;
      v29 = OUTLINED_FUNCTION_17_27();
      v55[0] = 0;
      v55[1] = v30;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v29, v31, v32, v33);
      v3 = v55[1];
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55[0], v55[1], v53);
      OUTLINED_FUNCTION_40_0();

      *(v21 + 4) = v55;
      OUTLINED_FUNCTION_112_2();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_14_0();
    }

    type metadata accessor for AppConfirmationResponse();
    OUTLINED_FUNCTION_61();
    static AppConfirmationResponse.confirm(app:)();
    OUTLINED_FUNCTION_141_0();
  }

  else
  {

    v39 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_162();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      v53[0] = OUTLINED_FUNCTION_83();
      *v20 = 136315138;
      v40 = OUTLINED_FUNCTION_17_27();
      v55[0] = 0;
      v55[1] = v41;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v40, v42, v43, v44);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55[0], v55[1], v53);
      OUTLINED_FUNCTION_40_0();

      *(v20 + 4) = v55;
      OUTLINED_FUNCTION_26(&dword_0, v45, v46, "%s selectAppConfirmation: no app to reprompt with, cancelling");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppConfirmationResponse();
    return static AppConfirmationResponse.cancel()();
  }

  return v3;
}

void PhoneAppResolutionOnDeviceFlowStrategy.selectAppDisambiguation(by:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v11 = v0[28];
  v12 = v0[29];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v11);
  v13 = *(v12 + 208);
  v14 = OUTLINED_FUNCTION_3_13();
  v16 = v15(v14);
  v17 = OUTLINED_FUNCTION_24_2(v16);
  (*(v18 + 88))(v17);

  v19 = type metadata accessor for AppResolverResult();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v19);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  if (EnumTagSinglePayload != 1)
  {
    v21 = v2[42];
    OUTLINED_FUNCTION_28_0(v2 + 38, v2[41]);
    v22 = *(v21 + 24);
    v23 = OUTLINED_FUNCTION_72();
    v24(v23);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.siriPhone);

  v26 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_86_1();
    *&v64 = OUTLINED_FUNCTION_54_1();
    *v11 = 136315394;
    v27 = OUTLINED_FUNCTION_17_27();
    v58 = 0;
    v59 = v28;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v27, v29, v30, v31);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v64);
    OUTLINED_FUNCTION_111_2();
    *(v11 + 4) = v1;
    OUTLINED_FUNCTION_98_3();
    v58 = App.appIdentifier.getter();
    v59 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v33 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v64);
    OUTLINED_FUNCTION_111_2();
    *(v11 + 14) = v1;
    OUTLINED_FUNCTION_24_22();
    _os_log_impl(v35, v36, v37, v38, v39, 0x16u);
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_36_16();
    OUTLINED_FUNCTION_5_7();
  }

  App.appIdentifier.getter();
  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  v42 = v2[44];

  v43 = OUTLINED_FUNCTION_53_1();
  v45 = specialized Dictionary.subscript.getter(v43, v44, v42);

  if (v45 == 5)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  PhoneAppResolutionOnDeviceFlowStrategy.findAndCacheAppForAppSelection(app:source:)(v4, v46, &v58);
  if (v58)
  {
    v47 = v59;
    v48 = v61;
    v62 = v60;
    type metadata accessor for AppDisambiguationResponse();
    OUTLINED_FUNCTION_5();
    static AppDisambiguationResponse.select(app:)();
    OUTLINED_FUNCTION_125_1();

    v63 = v47;
    OUTLINED_FUNCTION_20_6(&v63);
    v64 = v62;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v64, &_sSSSgMd, &_sSSSgMR);
    v65 = v48;
    OUTLINED_FUNCTION_20_6(&v65);
  }

  else
  {

    v49 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      *&v62 = OUTLINED_FUNCTION_83();
      *v41 = 136315138;
      v50 = OUTLINED_FUNCTION_17_27();
      *&v64 = 0;
      *(&v64 + 1) = v51;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v50, v52, v53, v54);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, *(&v64 + 1), &v62);
      OUTLINED_FUNCTION_63_1();
      *(v41 + 4) = v45;
      OUTLINED_FUNCTION_26(&dword_0, v55, v56, "%s selectAppDisambiguation: reprompt");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppDisambiguationResponse();
    v57 = v2[2];

    static AppDisambiguationResponse.disambiguate(apps:)();
    OUTLINED_FUNCTION_125_1();
  }

  OUTLINED_FUNCTION_65();
}

void PhoneAppResolutionOnDeviceFlowStrategy.findAndCacheAppForAppSelection(app:source:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = v3[7];
  v9 = v3[8];
  v10 = __swift_project_boxed_opaque_existential_1(v3 + 4, v8);
  v11 = v3[29];
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_103_0();
  v14(v13);
  (*(v9 + 16))(&v73, a1, &v79, a2, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(&v79);
  v15 = v73;
  if (v73)
  {
    v66 = v74;
    v67 = v73;
    v79 = v73;
    v80 = v74;
    v64 = *(&v75 + 1);
    v65 = v75;
    v81 = v75;
    v62 = v78;
    v63 = v76;
    v82 = v76;
    *v83 = *v77;
    *&v83[3] = *&v77[3];
    v84 = v78;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v16, static Logger.siriPhone);
    v85 = v80;
    v86 = v81;
    v87[0] = v84;

    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v85, &v69, &_sShySSGMd, &_sShySSGMR);
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v86, &v69, &_sSSSgMd, &_sSSSgMR);
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v87, &v69, &_sShySSGMd, &_sShySSGMR);
    v17 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_158();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v85, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v86, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v87, &_sShySSGMd, &_sShySSGMR);
    if (os_log_type_enabled(v17, a2))
    {
      v18 = OUTLINED_FUNCTION_36();
      v68[0] = swift_slowAlloc();
      *v18 = 136315650;
      v19 = v4[45];
      v20 = v4[46];
      log = v17;
      OUTLINED_FUNCTION_114();
      v69 = 0;
      v70 = v21;

      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v19, v20, 0xD00000000000002BLL, v17 | 0x8000000000000000);

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v68);
      OUTLINED_FUNCTION_63_1();
      *(v18 + 4) = v19;
      *(v18 + 12) = 2080;
      v69 = a1;
      v22 = type metadata accessor for App();
      OUTLINED_FUNCTION_1_75();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v23, 255, v24);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v68);
      OUTLINED_FUNCTION_34_0();

      *(v18 + 14) = v22;
      *(v18 + 22) = 2080;

      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v85, &v69, &_sShySSGMd, &_sShySSGMR);
      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v86, &v69, &_sSSSgMd, &_sSSSgMR);
      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v87, &v69, &_sShySSGMd, &_sShySSGMR);
      AnnotatedApp.description.getter();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v85, &_sShySSGMd, &_sShySSGMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v86, &_sSSSgMd, &_sSSSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v87, &_sShySSGMd, &_sShySSGMR);
      v27 = OUTLINED_FUNCTION_53_1();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v29);

      *(v18 + 24) = v30;
      v17 = log;
      _os_log_impl(&dword_0, log, a2, "%s for %s: %s with current NL intent", v18, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_36_16();
    }

    v31 = v4[29];
    __swift_project_boxed_opaque_existential_1(v4 + 25, v4[28]);
    v32 = *(v31 + 152);
    v33 = OUTLINED_FUNCTION_61();
    v34(v33, v31);
    v35 = v71;
    v36 = v72;
    OUTLINED_FUNCTION_28_0(&v69, v71);
    swift_beginAccess();
    OUTLINED_FUNCTION_139();
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v37, v38, v39, v40);
    (*(v36 + 8))(&v79, v68, v35, v36);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v68, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v69);
    v41 = v66;
    v15 = v67;
    v43 = v64;
    v42 = v65;
    v45 = v62;
    v44 = v63;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v46 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v46, static Logger.siriPhone);

    v47 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_147_0();

    if (OUTLINED_FUNCTION_126())
    {
      OUTLINED_FUNCTION_86_1();
      v69 = OUTLINED_FUNCTION_54_1();
      *v9 = 136315394;
      v49 = v3[45];
      v48 = v3[46];
      OUTLINED_FUNCTION_114();
      v79 = 0;
      v80 = v50;

      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v49, v48, 0xD00000000000002BLL, v10 | 0x8000000000000000);

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v69);
      OUTLINED_FUNCTION_107_1();
      *(v9 + 4) = v48;
      OUTLINED_FUNCTION_98_3();
      v79 = a1;
      v51 = type metadata accessor for App();
      OUTLINED_FUNCTION_1_75();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v52, 255, v53);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v69);
      OUTLINED_FUNCTION_107_1();
      *(v9 + 14) = v51;
      OUTLINED_FUNCTION_24_22();
      _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_36_16();
      OUTLINED_FUNCTION_5_7();
    }

    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  *a3 = v15;
  a3[1] = v41;
  a3[2] = v42;
  a3[3] = v43;
  a3[4] = v44;
  a3[5] = v45;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for AppResolverResult();
  v1[5] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for AppResolutionResult();
  v1[8] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_39_4();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  *(v0 + 88) = OUTLINED_FUNCTION_9_0(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v5 = *(v0 + 24);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_56_5();
    v6 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    v10 = OUTLINED_FUNCTION_104_0(v6, v7, v8, v9);
    OUTLINED_FUNCTION_39_15(v10, v11, v12, v13, v14, v15, v16, v17, v67, v68, v69, v71, v72, v73);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v23 = *(v0 + 16);
  v24 = *(*(v0 + 24) + 296);
  OUTLINED_FUNCTION_41_0();
  if ((*(v25 + 176))())
  {
    v26 = swift_task_alloc();
    *(v0 + 96) = v26;
    *v26 = v0;
    v26[1] = PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:);
    v27 = *(v0 + 24);
    OUTLINED_FUNCTION_100_2(*(v0 + 16));

    return PhoneAppResolutionOnDeviceFlowStrategy.executeForceAppDisambiguate(phoneCallNLIntent:)();
  }

  else
  {
    v29 = *(v0 + 16);
    OUTLINED_FUNCTION_41_0();
    if ((*(v30 + 192))())
    {
      static Signpost.begin(_:)();
      *(v0 + 112) = v31;
      *(v0 + 120) = v32;
      *(v0 + 128) = v33;
      *(v0 + 192) = v34;
      OUTLINED_FUNCTION_41_0();
      v36 = *(v35 + 168);
      v70 = (v36 + *v36);
      v37 = v36[1];
      v38 = swift_task_alloc();
      *(v0 + 136) = v38;
      *v38 = v0;
      v38[1] = PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:);
      v39 = OUTLINED_FUNCTION_100_2(*(v0 + 16));

      return v70(v39);
    }

    else
    {
      v40 = *(v0 + 16);
      v41 = v40[3];
      v42 = v40[4];
      OUTLINED_FUNCTION_86(v40);
      OUTLINED_FUNCTION_142_0();
      if (PhoneCallNLIntent.hasApplicationNameOrId()())
      {
        v44 = *(v0 + 16);
        v43 = *(v0 + 24);
        v45 = v43[41];
        v46 = v43[42];
        OUTLINED_FUNCTION_28_0(v43 + 38, v45);
        (*(v46 + 16))(4, v45, v46);

        v47 = v43[28];
        v48 = v43[29];
        OUTLINED_FUNCTION_165(v43 + 25);
        v50 = *(v49 + 192);
        v51 = OUTLINED_FUNCTION_25_0();
        v53 = v52(v51);
        type metadata accessor for App();
        v54 = v40[3];
        v55 = v40[4];
        OUTLINED_FUNCTION_86(v44);
        OUTLINED_FUNCTION_120_1();
        PhoneCallNLIntent.applicationId.getter(v56, v57);
        App.__allocating_init(appIdentifier:)();
        v58 = PhoneAppResolutionOnDeviceFlowStrategy.buildUpInputIntent(phoneCallNLIntent:sharedGlobals:app:)(v44, v43 + 25);

        v59 = *(*v53 + 176);
        v60 = OUTLINED_FUNCTION_19_0();
        v61(v60);
      }

      else if ((*(*v24 + 208))())
      {
        v62 = *(v0 + 24);
        v63 = v62[42];
        OUTLINED_FUNCTION_28_0(v62 + 38, v62[41]);
        v64 = *(v63 + 16);
        OUTLINED_FUNCTION_144_0();
        v65();
      }

      OUTLINED_FUNCTION_129_1();

      OUTLINED_FUNCTION_17_5();

      return v66(0);
    }
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  if (v0[13])
  {
    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[8];
    v4 = v0[13];

    AppResolutionAction.result.getter();
    v5 = *(v2 + 88);
    v6 = OUTLINED_FUNCTION_92();
    v8 = v7(v6);
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    if (v8 == enum case for AppResolutionResult.needsDisambiguation(_:))
    {
      v13 = v0[2];
      v12 = v0[3];
      v14 = *(v10 + 8);
      v15 = OUTLINED_FUNCTION_146_0();
      v16(v15);
      PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)(v13);
      v17 = v12[42];
      OUTLINED_FUNCTION_28_0(v12 + 38, v12[41]);
      v18 = *(v17 + 16);
      OUTLINED_FUNCTION_143_0();
      v19();

      goto LABEL_6;
    }

    v20 = *(v10 + 8);
    v21 = OUTLINED_FUNCTION_146_0();
    v22(v21);
  }

  v23 = v0[3];
  v24 = v23[42];
  OUTLINED_FUNCTION_28_0(v23 + 38, v23[41]);
  v25 = *(v24 + 16);
  OUTLINED_FUNCTION_144_0();
  v26();
LABEL_6:

  v27 = v0[13];
  v28 = v0[10];
  v29 = v0[7];
  v30 = v0[4];

  v31 = OUTLINED_FUNCTION_3_20();

  return v32(v31);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 136);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 144) = v0;

  if (!v0)
  {
    *(v5 + 152) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[19];

  v3 = *(v1 + 16);
  v0[20] = v3;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[21] = v4;
  *v4 = v5;
  v4[1] = PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:);
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  return PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:)(v6, v8, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 168);
  v3 = *(v1 + 160);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_1();
  v28 = v0;
  v3 = v0[4];
  v2 = v0[5];
  OUTLINED_FUNCTION_1_0(v3);
  if (v4)
  {
    v5 = v0[11];
    v6 = v0[3];
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);

    v7 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      v8 = v0[3];
      OUTLINED_FUNCTION_42();
      v26[0] = OUTLINED_FUNCTION_83();
      v26[1] = 0;
      v9 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      v27 = v10;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v9, v11, v12, v13);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v27, v26);
      OUTLINED_FUNCTION_63_1();
      *(v6 + 4) = v1;
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    v19 = v0[14];
    v20 = v0[3];
    PhoneAppResolutionOnDeviceFlowStrategy.logAppSelectionActionToSelf(action:)(0);

    OUTLINED_FUNCTION_129_1();

    OUTLINED_FUNCTION_17_5();

    return v21(0);
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v3, v2);
    v23 = swift_task_alloc();
    v0[22] = v23;
    *v23 = v0;
    v23[1] = PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:);
    v24 = v0[7];
    v25 = v0[3];

    return PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelectAction(phoneCallNLIntent:recommendation:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 176);
  *v2 = *v0;
  *(v1 + 184) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  Signpost.OpenSignpost.end()();
  PhoneAppResolutionOnDeviceFlowStrategy.logAppSelectionActionToSelf(action:)(v1);

  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_92();
  v12(v11);
  v13 = *(v0 + 184);
  v14 = *(v0 + 80);
  v15 = *(v0 + 56);
  v16 = *(v0 + 32);

  v17 = OUTLINED_FUNCTION_3_20();

  return v18(v17);
}

{
  OUTLINED_FUNCTION_39_4();
  v22 = v0;
  v2 = v0[11];
  v3 = v0[3];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  v8 = v0[14];
  if (v6)
  {
    v9 = v0[3];
    v10 = OUTLINED_FUNCTION_42();
    v11 = OUTLINED_FUNCTION_36();
    v19 = v11;
    v20 = 0;
    *v10 = 136315138;
    v12 = OUTLINED_FUNCTION_4_47();
    v21 = v13;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v12, v14, v15, v16);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v19);
    OUTLINED_FUNCTION_111_2();
    *(v10 + 4) = v1;
    _os_log_impl(&dword_0, v4, v5, "%s shouldSmartAppSelectOrForceAppDisambiguate: Couldn't get intent to find eligible apps. Skipping Smart App Selection ..", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_36_16();
    OUTLINED_FUNCTION_5_7();
  }

  OUTLINED_FUNCTION_129_1();

  OUTLINED_FUNCTION_17_5();

  return v17(0);
}

void *PhoneAppResolutionOnDeviceFlowStrategy.buildUpInputIntent(phoneCallNLIntent:sharedGlobals:app:)(void *a1, void *a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_36();
    v47 = v9;
    v48 = 0;
    *v8 = 136315138;
    v10 = OUTLINED_FUNCTION_17_27();
    v49 = v11;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v10, v12, v13, v14);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v47);
    OUTLINED_FUNCTION_160();
    *(v8 + 4) = v2;
    OUTLINED_FUNCTION_110_1();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  (*(v21 + 80))(&v48, v20, v21);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  OUTLINED_FUNCTION_72();
  specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
  v24 = v23;

  outlined destroy of SKTransformer(&v48);
  if (v24)
  {
    v25 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v24);
    if (v25)
    {
      v26 = v25;
      if (specialized Array.count.getter(v25))
      {
        v27 = (v26 & 0xC000000000000001);
        v28 = OUTLINED_FUNCTION_3_36();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v28, v29, v26);
        if ((v26 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v30 = *(v26 + 32);
        }

        OUTLINED_FUNCTION_40_0();

        v31 = INPerson.asBase64()();
        outlined bridged method (mbnn) of @objc INPerson.contactIdentifier.setter(v31._countAndFlagsBits, v31._object, (v26 & 0xC000000000000001));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v32 = OUTLINED_FUNCTION_48_0();
        *(v32 + 16) = xmmword_426260;
        *(v32 + 32) = v27;
        v33 = v27;
        INStartCallIntent.overwriteContacts(newContacts:)(v32);
      }
    }
  }

  else
  {

    v34 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_31_13())
    {
      OUTLINED_FUNCTION_42();
      v35 = OUTLINED_FUNCTION_14_2();
      v47 = v35;
      v48 = 0;
      *a2 = 136315138;
      v36 = OUTLINED_FUNCTION_17_27();
      v49 = v37;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v36, v38, v39, v40);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v47);
      OUTLINED_FUNCTION_40_0();

      *(a2 + 4) = &v48;
      OUTLINED_FUNCTION_9_38();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_14_0();
    }
  }

  return v24;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = OUTLINED_FUNCTION_10();
  return _swift_task_switch(v5, v6, v7);
}

void PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:)()
{
  v5 = specialized Array.count.getter(*(v0 + 48));
  if (v5 >= 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v7 = *(v0 + 48);
      v6 = *(v0 + 56);
      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.siriPhone);

      v9 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_158();

      if (OUTLINED_FUNCTION_157())
      {
        v11 = *(v0 + 48);
        v10 = *(v0 + 56);
        OUTLINED_FUNCTION_86_1();
        v155 = OUTLINED_FUNCTION_55_4();
        v156 = 0;
        *v6 = 136315394;
        v12 = OUTLINED_FUNCTION_4_47();
        v16 = OUTLINED_FUNCTION_104_0(v12, v13, v14, v15);
        OUTLINED_FUNCTION_39_15(v16, v17, v18, v19, v20, v21, v22, v23, v151, v152, v153, v155, v156, v157);
        OUTLINED_FUNCTION_111_2();
        *(v6 + 4) = v4;
        OUTLINED_FUNCTION_99_0();
        type metadata accessor for App();
        v24 = Array.description.getter();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v155);
        OUTLINED_FUNCTION_125();
        *(v6 + 14) = v11;
        OUTLINED_FUNCTION_112_2();
        _os_log_impl(v26, v27, v28, v29, v30, 0x16u);
        OUTLINED_FUNCTION_97_1();
        OUTLINED_FUNCTION_5_7();
        OUTLINED_FUNCTION_14_0();
      }

      v31 = *(v0 + 48);
      v32 = specialized Array.count.getter(v31);
      v1 = 0;
      v33 = v31 & 0xC000000000000001;
      v34 = v31 & 0xFFFFFFFFFFFFFF8;
      v4 = v31 + 32;
      while (1)
      {
        if (v32 == v1)
        {
          v69 = *(v0 + 56);

          v40 = Logger.logObject.getter();
          static os_log_type_t.error.getter();
          OUTLINED_FUNCTION_87();
          if (OUTLINED_FUNCTION_86_0())
          {
            v70 = *(v0 + 56);
            OUTLINED_FUNCTION_42();
            OUTLINED_FUNCTION_83();
            OUTLINED_FUNCTION_56_5();
            v71 = OUTLINED_FUNCTION_2_72(4.8149e-34);
            v75 = OUTLINED_FUNCTION_104_0(v71, v72, v73, v74);
            OUTLINED_FUNCTION_39_15(v75, v76, v77, v78, v79, v80, v81, v82, v151, v152, v153, v155, v156, v157);
            OUTLINED_FUNCTION_63_1();
            *(v69 + 4) = v33;
            goto LABEL_27;
          }

          goto LABEL_29;
        }

        if (v33)
        {
          v36 = *(v0 + 48);
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v1 >= *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_41;
          }

          v35 = *(v4 + 8 * v1);
        }

        *(v0 + 64) = v35;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (App.isFirstParty()())
        {
          v107 = *(v0 + 56);
          v108 = PhoneAppResolutionOnDeviceFlowStrategy.buildUpInputIntent(phoneCallNLIntent:sharedGlobals:app:)(*(v0 + 40), (v107 + 200));
          *(v0 + 72) = v108;
          v110 = *(v0 + 56);
          if (v108)
          {
            v111 = v108;
            v112 = v109;
            v113 = *(v0 + 48);
            v114 = *(v110 + 232);
            __swift_project_boxed_opaque_existential_1((v107 + 200), *(v110 + 224));
            v115 = *(v114 + 192);
            v116 = OUTLINED_FUNCTION_40_0();
            v118 = v117(v116, v114);
            OUTLINED_FUNCTION_24_2(v118);
            v120 = *(v119 + 176);
            v121 = v111;
            v120(v111, v112);

            v122 = *(v110 + 296);
            OUTLINED_FUNCTION_2_0();
            *(v0 + 80) = (*(v123 + 240))(v113);
            OUTLINED_FUNCTION_2_0();
            v125 = *(v124 + 216);
            v154 = v125 + *v125;
            v126 = v125[1];
            swift_task_alloc();
            OUTLINED_FUNCTION_25();
            *(v0 + 88) = v127;
            *v127 = v128;
            v127[1] = PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:);
            v129 = *(v0 + 32);
            v130 = *(v0 + 40);
            OUTLINED_FUNCTION_152();

            __asm { BRAA            X5, X16 }
          }

          v133 = *(v0 + 56);

          v134 = Logger.logObject.getter();
          static os_log_type_t.error.getter();
          OUTLINED_FUNCTION_158();
          if (OUTLINED_FUNCTION_156())
          {
            v135 = *(v0 + 56);
            OUTLINED_FUNCTION_42();
            v136 = OUTLINED_FUNCTION_14_2();
            v155 = v136;
            v156 = 0;
            *v110 = 136315138;
            v137 = OUTLINED_FUNCTION_4_47();
            v141 = OUTLINED_FUNCTION_104_0(v137, v138, v139, v140);
            OUTLINED_FUNCTION_39_15(v141, v142, v143, v144, v145, v146, v147, v148, v151, v152, v153, v155, v156, v157);
            OUTLINED_FUNCTION_125();
            *(v110 + 4) = v34;
            OUTLINED_FUNCTION_91_4(&dword_0, v149, v150, "%s executeSmartAppSelect: couldn't convert phoneCallNLIntent to an INStartCallIntent (using a 1P Phone app)..");
            __swift_destroy_boxed_opaque_existential_1(v136);
            OUTLINED_FUNCTION_5_7();
            OUTLINED_FUNCTION_14_0();
          }

LABEL_30:
          v103 = *(v0 + 32);
          v104 = type metadata accessor for AppResolverResult();
          __swift_storeEnumTagSinglePayload(v103, 1, 1, v104);
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_152();

          __asm { BRAA            X1, X16 }
        }

        v1 = (v1 + 1);
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      OUTLINED_FUNCTION_6_2();
    }
  }

  if (v5 == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v38 = *(v0 + 48);
    v37 = *(v0 + 56);
    v39 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v39, static Logger.siriPhone);

    v40 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_87();

    if (!OUTLINED_FUNCTION_86_0())
    {
      goto LABEL_29;
    }

    v42 = *(v0 + 48);
    v41 = *(v0 + 56);
    v43 = OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_56_5();
    v44 = OUTLINED_FUNCTION_2_72(4.8151e-34);
    v48 = OUTLINED_FUNCTION_104_0(v44, v45, v46, v47);
    OUTLINED_FUNCTION_39_15(v48, v49, v50, v51, v52, v53, v54, v55, v151, v152, v153, v155, v156, v157);
    OUTLINED_FUNCTION_125();
    *(v43 + 4) = v3;
    *(v43 + 12) = 2080;
    v56 = OUTLINED_FUNCTION_3_36();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v56, v57, v42);
    if ((v42 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v58 = *(*(v0 + 48) + 32);
    }

    v59 = App.appIdentifier.getter();
    v61 = v60;

    *(v0 + 16) = v59;
    *(v0 + 24) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v62 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v155);
    OUTLINED_FUNCTION_63_1();
    *(v43 + 14) = v59;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v64, v65, v66, v67, v68, 0x16u);
    OUTLINED_FUNCTION_60_4();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v83 = *(v0 + 56);
    v84 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v84, static Logger.siriPhone);

    v40 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (!OUTLINED_FUNCTION_86_0())
    {
      goto LABEL_29;
    }

    v85 = *(v0 + 56);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_56_5();
    v86 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    v90 = OUTLINED_FUNCTION_104_0(v86, v87, v88, v89);
    OUTLINED_FUNCTION_39_15(v90, v91, v92, v93, v94, v95, v96, v97, v151, v152, v153, v155, v156, v157);
    OUTLINED_FUNCTION_63_1();
    *(v83 + 4) = v2;
LABEL_27:
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v98, v99, v100, v101, v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v1);
  }

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_35();
LABEL_29:

  goto LABEL_30;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];

  v4 = type metadata accessor for AppResolverResult();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelectAction(phoneCallNLIntent:recommendation:)()
{
  OUTLINED_FUNCTION_15();
  v1[10] = v2;
  v1[11] = v0;
  v3 = type metadata accessor for AppResolverResult();
  v1[12] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[13] = v4;
  v6 = *(v5 + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  v259 = v0;
  object = v0[6]._object;
  countAndFlagsBits = v0[7]._countAndFlagsBits;
  v3 = v0[6]._countAndFlagsBits;
  object[2](countAndFlagsBits, v0[5]._countAndFlagsBits, v3);
  v4 = object[11];
  v5 = OUTLINED_FUNCTION_0();
  v7 = v6(v5);
  v8 = &dword_54B000;
  v255 = v0;
  if (v7 != enum case for AppResolverResult.resolved(_:))
  {
    if (v7 == enum case for AppResolverResult.needsConfirmation(_:))
    {
      v44 = OUTLINED_FUNCTION_140_1();
      v45(v44);
      v46 = *countAndFlagsBits;
      v47 = countAndFlagsBits[1];
      v17 = *(v3 + 296);
      OUTLINED_FUNCTION_41_0();
      v14 = v17;
      v12 = (*(v48 + 248))();
      v13 = v49;

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v50 = v0[5]._object;
      v51 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v51, static Logger.siriPhone);

      v254 = v17;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v14 = v0[5]._object;
        v54 = OUTLINED_FUNCTION_86_1();
        v256 = OUTLINED_FUNCTION_16_13();
        v257 = 0;
        *v54 = 136315394;
        v55 = OUTLINED_FUNCTION_4_47();
        v59 = OUTLINED_FUNCTION_105_2(v55, v56, v57, v58);
        OUTLINED_FUNCTION_41_15(v59, v60, v61, v62, v63, v64, v65, v66, v249, v250, v251, v17, v0, v256, v257, v258);
        OUTLINED_FUNCTION_128_0();
        *(v54 + 4) = v47;
        *(v54 + 12) = 2080;

        v67 = OUTLINED_FUNCTION_146_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v69);
        OUTLINED_FUNCTION_5();

        *(v54 + 14) = v14;
        OUTLINED_FUNCTION_110_1();
        _os_log_impl(v70, v71, v72, v73, v74, 0x16u);
        OUTLINED_FUNCTION_134();
        v0 = v255;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v75 = *(v0[5]._object + 2);
      v76 = specialized Array.count.getter(v75);
      v0 = (v75 & 0xC000000000000001);
      v15 = v75 & 0xFFFFFFFFFFFFFF8;

      for (i = 0; v76 != i; ++i)
      {
        if (v0)
        {
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_93;
          }

          v78 = *(v75 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        OUTLINED_FUNCTION_41_0();
        v14 = v17;
        if ((*(v79 + 264))(v78, v12, v13))
        {
          v0 = v255;
          v123 = v255[5]._object;

          v124 = v123[3];
          v123[3] = v78;

          v125 = PhoneAppResolutionOnDeviceFlowStrategy.getAppResolutionSourceMap(source:)(3);
          v126 = v123[43];
          v123[43] = v125;

          type metadata accessor for AppResolutionAction();
          static AppResolutionAction.confirmAfterAuthorizationChecks(app:)();
          goto LABEL_82;
        }
      }

      v0 = v255;
      v96 = v255[5]._object;

      v80 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_87();
      if (!OUTLINED_FUNCTION_86_0())
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_93_4();
      v97 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      v101 = OUTLINED_FUNCTION_105_2(v97, v98, v99, v100);
      OUTLINED_FUNCTION_41_15(v101, v102, v103, v104, v105, v106, v107, v108, v249, v250, v251, v254, v255, v256, v257, v258);
      OUTLINED_FUNCTION_63_1();
      *(v96 + 4) = v75;
    }

    else if (v7 == enum case for AppResolverResult.needsDisambiguation(_:))
    {
      v81 = v0[7]._countAndFlagsBits;
      (*(v0[6]._object + 12))(v81, v0[6]._countAndFlagsBits);
      v17 = *v81;
      v82 = *(*v81 + 16);
      if (v82)
      {
        v83 = v0[5]._object;
        v257 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v84 = _swiftEmptyArrayStorage;
        v85 = *(*v83[37] + 248);
        v86 = (v17 + 40);
        do
        {
          v87 = v84;
          v88 = *(v86 - 1);
          v89 = *v86;

          v90 = v85(v88, v89);
          v84 = v87;
          v91 = v90;
          v93 = v92;

          v257 = v87;
          v17 = v87[2];
          if (v17 >= v84[3] >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v84 = v257;
          }

          v84[2] = v17 + 1;
          v94 = &v84[2 * v17];
          v94[4] = v91;
          v94[5] = v93;
          v86 += 2;
          --v82;
        }

        while (v82);

        v0 = v255;
        v8 = &dword_54B000;
      }

      else
      {
        v166 = *v81;

        v84 = _swiftEmptyArrayStorage;
      }

      if (*(v8 + 369) != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v250 = &v0[4];
      v167 = v0[5]._object;
      v168 = type metadata accessor for Logger();
      v169 = __swift_project_value_buffer(v168, static Logger.siriPhone);

      v251 = v169;
      v253 = v84;
      v14 = v169;
      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = v0[5]._object;
        OUTLINED_FUNCTION_86_1();
        v256 = OUTLINED_FUNCTION_54_1();
        v257 = 0;
        *v167 = 136315394;
        v173 = OUTLINED_FUNCTION_4_47();
        v177 = OUTLINED_FUNCTION_105_2(v173, v174, v175, v176);
        OUTLINED_FUNCTION_41_15(v177, v178, v179, v180, v181, v182, v183, v184, v249, v250, v251, v253, v255, v256, v257, v258);
        OUTLINED_FUNCTION_111_2();
        *(v167 + 4) = &unk_426000;
        OUTLINED_FUNCTION_98_3();
        v185 = Array.description.getter();
        v14 = v186;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v186, &v256);
        OUTLINED_FUNCTION_111_2();
        *(v167 + 14) = &unk_426000;
        _os_log_impl(&dword_0, v170, v171, "%s executeSmartAppSelect: AppSelection recommends to disambiguate apps: '%s'.", v167, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_5_7();
      }

      v249 = v0[5]._object;
      v15 = *(v249 + 16);
      v257 = _swiftEmptyArrayStorage;
      v187 = specialized Array.count.getter(v15);
      v0 = (v15 & 0xC000000000000001);

      v13 = 0;
      v12 = 0;
LABEL_61:
      for (j = v12; v187 != j; ++j)
      {
        if (v0)
        {
          v189 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_95;
          }

          v189 = *(v15 + 8 * j + 32);
        }

        v12 = j + 1;
        if (__OFADD__(j, 1))
        {
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v14 = v189;
        v190 = App.appIdentifier.getter();
        if (v191)
        {
          v14 = v191;
          v192 = HIBYTE(v191) & 0xF;
          if ((v191 & 0x2000000000000000) == 0)
          {
            v192 = v190 & 0xFFFFFFFFFFFFLL;
          }

          if (v192)
          {
            v193 = String.lowercased()();
            v17 = v193._object;

            v255[4] = v193;
            v14 = swift_task_alloc();
            v14[2] = v250;
            v194 = specialized Sequence.contains(where:)();

            if (v194)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v195 = v257[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v14 = &v257;
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            goto LABEL_61;
          }
        }

        else
        {
        }
      }

      v0 = v255;
      v196 = v255[5]._object;

      v197 = v257;

      v198 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v198, v20))
      {
        v199 = v255[5]._object;
        v200 = OUTLINED_FUNCTION_86_1();
        v256 = OUTLINED_FUNCTION_16_13();
        v257 = 0;
        *v200 = 136315394;
        v201 = OUTLINED_FUNCTION_4_47();
        v205 = OUTLINED_FUNCTION_105_2(v201, v202, v203, v204);
        v213 = OUTLINED_FUNCTION_41_15(v205, v206, v207, v208, v209, v210, v211, v212, v249, v250, v251, v253, v255, v256, v257, v258);

        *(v200 + 4) = v213;
        *(v200 + 12) = 2080;
        type metadata accessor for App();
        v214 = Array.description.getter();
        v216 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v214, v215, &v256);

        *(v200 + 14) = v216;
        v0 = v255;
        OUTLINED_FUNCTION_155(&dword_0, v217, v218, "%s executeSmartAppSelect: disambiguateApps after filter out: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_36_16();
      }

      v219 = specialized Array.count.getter(v197);
      v220 = *(v253 + 16);

      v221 = v0[5]._object;
      if (v219 == v220)
      {
        v222 = v221[37];
        OUTLINED_FUNCTION_2_0();
        v224 = (*(v223 + 272))(v197);
        v225 = *(v249 + 16);
        *(v249 + 16) = v224;

        v226 = PhoneAppResolutionOnDeviceFlowStrategy.getAppResolutionSourceMap(source:)(3);
        v227 = v221[44];
        v221[44] = v226;

        type metadata accessor for AppResolutionAction();
        OUTLINED_FUNCTION_5();
        static AppResolutionAction.disambiguateAfterAuthorizationChecks(apps:)();
        OUTLINED_FUNCTION_5();
LABEL_82:

        goto LABEL_87;
      }

      v80 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (!OUTLINED_FUNCTION_86_0())
      {
        goto LABEL_86;
      }

LABEL_84:
      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_93_4();
      v228 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      v232 = OUTLINED_FUNCTION_105_2(v228, v229, v230, v231);
      OUTLINED_FUNCTION_41_15(v232, v233, v234, v235, v236, v237, v238, v239, v249, v250, v251, v253, v255, v256, v257, v258);
      OUTLINED_FUNCTION_63_1();
      *(v12 + 4) = v20;
    }

    else
    {
      if (v7 != enum case for AppResolverResult.noMatchFound(_:))
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v146 = v0[5]._object;
        v147 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v147, static Logger.siriPhone);

        v148 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_87();
        if (OUTLINED_FUNCTION_86_0())
        {
          OUTLINED_FUNCTION_67_7();
          OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_93_4();
          v149 = OUTLINED_FUNCTION_2_72(4.8149e-34);
          v153 = OUTLINED_FUNCTION_105_2(v149, v150, v151, v152);
          OUTLINED_FUNCTION_41_15(v153, v154, v155, v156, v157, v158, v159, v160, v249, v250, v251, v252, v0, v256, v257, v258);
          OUTLINED_FUNCTION_63_1();
          *(v146 + 4) = &dword_54B000;
          OUTLINED_FUNCTION_7_44();
          _os_log_impl(v161, v162, v163, v164, v165, 0xCu);
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_35();
        }

        (*(v0[6]._object + 1))(v0[7]._countAndFlagsBits, v0[6]._countAndFlagsBits);
        goto LABEL_87;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v109 = v0[5]._object;
      v110 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v110, static Logger.siriPhone);

      v80 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_87();
      if (!OUTLINED_FUNCTION_86_0())
      {
LABEL_86:

        goto LABEL_87;
      }

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_93_4();
      v111 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      v115 = OUTLINED_FUNCTION_105_2(v111, v112, v113, v114);
      OUTLINED_FUNCTION_41_15(v115, v116, v117, v118, v119, v120, v121, v122, v249, v250, v251, v252, v0, v256, v257, v258);
      OUTLINED_FUNCTION_63_1();
      *(v109 + 4) = &dword_54B000;
    }

    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v240, v241, v242, v243, v244, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
    goto LABEL_86;
  }

  v9 = OUTLINED_FUNCTION_140_1();
  v10(v9);
  v11 = *countAndFlagsBits;
  v12 = countAndFlagsBits[1];
  v13 = *(v3 + 296);
  v14 = v13;
  v15 = ((*v13)[31])(v11, v12);
  v17 = v16;

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_96:
    OUTLINED_FUNCTION_6_2();
  }

  v18 = v0[5]._object;
  v19 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v19, static Logger.siriPhone);

  v253 = v14;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v0[5]._object;
    v23 = OUTLINED_FUNCTION_86_1();
    v256 = OUTLINED_FUNCTION_16_13();
    v257 = 0;
    *v23 = 136315394;
    v24 = OUTLINED_FUNCTION_4_47();
    v28 = OUTLINED_FUNCTION_105_2(v24, v25, v26, v27);
    OUTLINED_FUNCTION_41_15(v28, v29, v30, v31, v32, v33, v34, v35, v249, v250, v251, v253, v255, v256, v257, v258);
    OUTLINED_FUNCTION_160();
    *(v23 + 4) = v12;
    *(v23 + 12) = 2080;

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v256);
    OUTLINED_FUNCTION_40_0();

    *(v23 + 14) = v22;
    OUTLINED_FUNCTION_110_1();
    _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    OUTLINED_FUNCTION_134();
    v0 = v255;
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v14 = *(v0[5]._object + 2);

  PhoneAppResolutionOnDeviceFlowStrategy.getSeASPredictableAppsList(apps:)(v41);
  OUTLINED_FUNCTION_125();
  v42 = specialized Array.count.getter(v21);
  v43 = 0;
  v0 = (v21 & 0xC000000000000001);
  v12 = v21 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v42 == v43)
    {
      v0 = v255;
      v12 = v255[5]._object;

      v80 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_87();
      if (!OUTLINED_FUNCTION_86_0())
      {
        goto LABEL_86;
      }

      goto LABEL_84;
    }

    if (v0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v43 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_91;
      }

      v20 = *(v21 + 8 * v43 + 32);
    }

    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v14 = v13;
    if (((*v13)[33])(v20, v15, v17))
    {
      break;
    }

    ++v43;
  }

  v0 = v255;
  v95 = v255[5]._object;

  PhoneAppResolutionOnDeviceFlowStrategy.findAndCacheAppForAppSelection(app:source:)(v20, 3, &v255[1]._countAndFlagsBits);
  if (v255[1]._countAndFlagsBits)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v255[1], &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
    type metadata accessor for AppResolutionAction();
    static AppResolutionAction.select(app:)();
    goto LABEL_82;
  }

  v127 = v255[5]._object;

  v128 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_67_7();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_93_4();
    v129 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    v133 = OUTLINED_FUNCTION_105_2(v129, v130, v131, v132);
    OUTLINED_FUNCTION_41_15(v133, v134, v135, v136, v137, v138, v139, v140, v249, v250, v251, v253, v255, v256, v257, v258);
    OUTLINED_FUNCTION_125();
    *(v127 + 4) = v21;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v141, v142, v143, v144, v145, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

LABEL_87:
  v245 = v0[7]._countAndFlagsBits;

  v246 = OUTLINED_FUNCTION_3_20();

  return v247(v246);
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.executeForceAppDisambiguate(phoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[12] = v2;
  v1[13] = v0;
  v3 = type metadata accessor for Date();
  v1[14] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  v0[17] = *(v0[13] + 296);
  OUTLINED_FUNCTION_2_0();
  v2 = *(v1 + 168);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = PhoneAppResolutionOnDeviceFlowStrategy.executeForceAppDisambiguate(phoneCallNLIntent:);
  v5 = OUTLINED_FUNCTION_100_2(v0[12]);

  return v7(v5);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  v123 = v0;
  v3 = *(v0 + 104);
  v4 = *(v3 + 16);
  *(v3 + 16) = *(v0 + 160);

  v5 = specialized Array.count.getter(*(v3 + 16));
  v6 = *(v3 + 16);
  if (v5 < 2)
  {
    if (specialized Array.count.getter(*(v3 + 16)) == 1)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v14 = *(v0 + 104);
      v15 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);

      v13 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_131_1();
      if (!OUTLINED_FUNCTION_156())
      {
        goto LABEL_36;
      }

      v16 = *(v0 + 104);
      v17 = OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_16_13();
      OUTLINED_FUNCTION_56_5();
      *v17 = 136315394;
      v18 = OUTLINED_FUNCTION_4_47();
      v22 = OUTLINED_FUNCTION_104_0(v18, v19, v20, v21);
      OUTLINED_FUNCTION_39_15(v22, v23, v24, v25, v26, v27, v28, v29, v117, v118, v119, v120, v121, v122);
      OUTLINED_FUNCTION_63_1();
      *(v17 + 4) = v2;
      *(v17 + 12) = 2080;
      v30 = *(v3 + 16);
      v31 = v30 & 0xC000000000000001;
      v32 = OUTLINED_FUNCTION_3_36();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v32, v33, v30);
      if ((v30 & 0xC000000000000001) != 0)
      {

        specialized _ArrayBuffer._getElementSlowPath(_:)();
        OUTLINED_FUNCTION_63_1();
      }

      else
      {
        v31 = *(v30 + 32);
      }

      v34 = App.appIdentifier.getter();
      v36 = v35;

      *(v0 + 80) = v34;
      *(v0 + 88) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v37 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v120);
      OUTLINED_FUNCTION_63_1();
      *(v17 + 14) = v31;
      _os_log_impl(&dword_0, v13, v1, "%s executeForceAppDisambiguate: Found a single app '%s'. Skipping Forced App disambiguation..", v17, 0x16u);
      OUTLINED_FUNCTION_60_4();
      OUTLINED_FUNCTION_14_0();
      goto LABEL_35;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v11 = *(v0 + 104);
    v79 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v79, static Logger.siriPhone);

    v13 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (!OUTLINED_FUNCTION_86_0())
    {
      goto LABEL_36;
    }

LABEL_34:
    v80 = *(v0 + 104);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_56_5();
    v81 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    v85 = OUTLINED_FUNCTION_104_0(v81, v82, v83, v84);
    OUTLINED_FUNCTION_39_15(v85, v86, v87, v88, v89, v90, v91, v92, v117, v118, v119, v120, v121, v122);
    OUTLINED_FUNCTION_63_1();
    *(v11 + 4) = v2;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
    OUTLINED_FUNCTION_3_7();
LABEL_35:
    OUTLINED_FUNCTION_26_0();
    goto LABEL_36;
  }

  v7 = *(v0 + 136);
  OUTLINED_FUNCTION_2_0();
  v9 = *(v8 + 184);

  LOBYTE(v7) = v9(v10);

  if (v7)
  {
    if (one-time initialization token for siriPhone == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v39 = *(v0 + 104);
    v40 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v40, static Logger.siriPhone);

    v41 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      v42 = *(v0 + 104);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_56_5();
      v43 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      v47 = OUTLINED_FUNCTION_104_0(v43, v44, v45, v46);
      OUTLINED_FUNCTION_39_15(v47, v48, v49, v50, v51, v52, v53, v54, v117, v118, v119, v120, v121, v122);
      OUTLINED_FUNCTION_63_1();
      *(v39 + 4) = v2;
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    v60 = *(v0 + 136);
    v119 = v0;
    v61 = *(v0 + 104);
    v62 = *(v3 + 16);
    OUTLINED_FUNCTION_2_0();
    v0 = *(v63 + 272);

    (v0)(v64);
    OUTLINED_FUNCTION_5();

    v65 = *(v3 + 16);
    *(v3 + 16) = v60;

    v66 = PhoneAppResolutionOnDeviceFlowStrategy.getAppResolutionSourceMap(source:)(4);
    v67 = *(v61 + 352);
    *(v61 + 352) = v66;

    v118 = v3;
    v68 = *(v3 + 16);
    v69 = specialized Array.count.getter(v68);

    v70 = 0;
    v71 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v69 == v70)
      {
        v0 = v119;
        v99 = *(v119 + 120);
        v98 = *(v119 + 128);
        v100 = *(v119 + 104);
        v101 = *(v119 + 112);

        v102 = v100[29];
        __swift_project_boxed_opaque_existential_1(v100 + 25, v100[28]);
        v103 = *(v102 + 64);
        v104 = OUTLINED_FUNCTION_5();
        v105(v104, v102);
        v106 = *(v119 + 40);
        v107 = *(v119 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        Date.init()();
        Date.timeIntervalSince1970.getter();
        v109 = v108;
        (*(v99 + 8))(v98, v101);
        *(v119 + 56) = 0;
        *(v119 + 64) = v109;
        *(v119 + 72) = v71;
        v110 = *(v107 + 16);
        v111 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
        v110(2, v119 + 56, &type metadata for ForcedAppDisambiguationHistory, v111, v106, v107);

        __swift_destroy_boxed_opaque_existential_1((v119 + 16));
        type metadata accessor for AppResolutionAction();
        v112 = *(v118 + 16);

        static AppResolutionAction.disambiguateAfterAuthorizationChecks(apps:)();
        OUTLINED_FUNCTION_40_0();

        goto LABEL_38;
      }

      if ((v68 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v70 >= *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_42;
        }

        v72 = *(v68 + 8 * v70 + 32);
      }

      if (__OFADD__(v70, 1))
      {
        break;
      }

      v2 = App.appIdentifier.getter();
      v74 = v73;

      if (!v74)
      {
        v2 = 0;
        v74 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = v71[2];
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v71 = v77;
      }

      v0 = v71[2];
      if (v0 >= v71[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v71 = v78;
      }

      v71[2] = v0 + 1;
      v75 = &v71[2 * v0];
      v75[4] = v2;
      v75[5] = v74;
      ++v70;
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }

  OUTLINED_FUNCTION_6_2();
LABEL_4:
  v11 = *(v0 + 104);
  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v12, static Logger.siriPhone);

  v13 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    goto LABEL_34;
  }

LABEL_36:

LABEL_38:
  v113 = *(v0 + 128);

  v114 = OUTLINED_FUNCTION_3_20();

  return v115(v114);
}

{
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v3 = v0[13];
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v4, static Logger.siriPhone);

  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_131_1();
  v6 = OUTLINED_FUNCTION_156();
  v7 = v0[19];
  if (v6)
  {
    v8 = v0[13];
    OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_14_2();
    *v1 = 136315138;
    v10 = OUTLINED_FUNCTION_4_47();
    v28 = v11;
    v15 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v10, v12, v13, v14);
    OUTLINED_FUNCTION_127(v15, v16, v17, v18, v19, v20, v21, v22, v9, 0, v28);
    OUTLINED_FUNCTION_125();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_91_4(&dword_0, v23, v24, "%s executeForceAppDisambiguate: Couldn't get intent to find eligible apps. Skipping Forced App disambiguation ..");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_14_0();
  }

  v25 = v0[16];

  OUTLINED_FUNCTION_17_5();

  return v26(0);
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.tryAppQueryFromCallNotifications(phoneCallNLIntent:sharedGlobals:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = a1[3];
  v7 = a1[4];
  OUTLINED_FUNCTION_86(a1);
  OUTLINED_FUNCTION_120_1();
  PhoneCallNLIntent.applicationId.getter(v8, v9);
  if (v10)
  {
    goto LABEL_3;
  }

  v11 = a1[3];
  v12 = a1[4];
  OUTLINED_FUNCTION_86(a1);
  OUTLINED_FUNCTION_120_1();
  PhoneCallNLIntent.appName.getter(v13, v14);
  if (v15)
  {
    goto LABEL_3;
  }

  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = OUTLINED_FUNCTION_72();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v21 = *(v18 + 56);
  v22 = OUTLINED_FUNCTION_61();
  v24 = v23(v22, v18);
  v25 = OUTLINED_FUNCTION_24_2(v24);
  LOBYTE(v17) = (*(v26 + 176))(v25);

  if (v17)
  {
    v27 = *(a2 + 24);
    v28 = *(a2 + 32);
    v29 = OUTLINED_FUNCTION_72();
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v31 = *(v28 + 112);
    v32 = OUTLINED_FUNCTION_61();
    if (v33(v32, v28))
    {
      v34 = CurrentRequest.refId.getter();
      v36 = v35;

      if (v36)
      {
        OUTLINED_FUNCTION_116_1();
        v38 = *(v37 + 160);
        v39 = OUTLINED_FUNCTION_25_0();
        v40(v39);
        v41 = v82;
        OUTLINED_FUNCTION_28_0(&v79, v81);
        v42 = *(v41 + 16);
        OUTLINED_FUNCTION_139();
        v44 = v43();
        __swift_destroy_boxed_opaque_existential_1(&v79);
        if ((v44 & 1) == 0)
        {
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_116_1();
        v46 = *(v45 + 120);
        v47 = OUTLINED_FUNCTION_25_0();
        v48(v47);
        v49 = v82;
        __swift_project_boxed_opaque_existential_1(&v79, v81);
        v50 = *(v49 + 16);
        v51 = OUTLINED_FUNCTION_25_0();
        v52(v51);
        v53 = v78[4];
        OUTLINED_FUNCTION_165(v78);
        v55 = *(v54 + 8);
        v56 = OUTLINED_FUNCTION_25_0();
        v58 = v57(v56);
        __swift_destroy_boxed_opaque_existential_1(v78);
        __swift_destroy_boxed_opaque_existential_1(&v79);
        if (v58)
        {
LABEL_3:

          return OUTLINED_FUNCTION_72();
        }

        OUTLINED_FUNCTION_116_1();
        v60 = *(v59 + 160);
        v61 = OUTLINED_FUNCTION_25_0();
        v62(v61);
        v63 = v81;
        v64 = v82;
        OUTLINED_FUNCTION_28_0(&v79, v81);
        (*(v64 + 24))(v34, v36, v63, v64);

        __swift_destroy_boxed_opaque_existential_1(&v79);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v65 = type metadata accessor for Logger();
        __swift_project_value_buffer(v65, static Logger.siriPhone);
        OUTLINED_FUNCTION_40_0();

        v66 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_147_0();

        if (OUTLINED_FUNCTION_126())
        {
          OUTLINED_FUNCTION_86_1();
          v78[0] = OUTLINED_FUNCTION_54_1();
          *v53 = 136315394;
          v68 = *(v3 + 360);
          v67 = *(v3 + 368);
          OUTLINED_FUNCTION_114();
          v79 = 0;
          v80 = v69;

          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v68, v67, 0xD000000000000042, 0x8000000000000000);

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v78);
          OUTLINED_FUNCTION_40_0();

          *(v53 + 4) = &v79;
          OUTLINED_FUNCTION_98_3();
          v70 = OUTLINED_FUNCTION_72();
          *(v53 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v72);
          OUTLINED_FUNCTION_24_22();
          _os_log_impl(v73, v74, v75, v76, v77, 0x16u);
          OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_36_16();
          OUTLINED_FUNCTION_5_7();
        }
      }
    }
  }

  return OUTLINED_FUNCTION_72();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeAppQueryForIncomingCall(phoneCallNLIntent:sharedGlobals:)(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for AppQuery.Builder();
  outlined init with copy of SignalProviding(a1, v54);
  v6 = AppQuery.Builder.__allocating_init(intent:)(v54);
  v7 = OUTLINED_FUNCTION_24_2(v6);
  (*(v8 + 160))(v7);
  v10 = v9;
  v12 = v11;

  if (!v10 || (type metadata accessor for App(), OUTLINED_FUNCTION_40_0(), , OUTLINED_FUNCTION_5_26(), App.__allocating_init(appIdentifier:)(), v13 = App.isFirstParty()(), , v13))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v14 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v14, static Logger.siriPhone);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_8(v16))
    {
      goto LABEL_21;
    }

    v17 = OUTLINED_FUNCTION_42();
    v54[0] = OUTLINED_FUNCTION_36();
    *v17 = 136315138;
    OUTLINED_FUNCTION_119();
    *(v17 + 4) = OUTLINED_FUNCTION_159(v18, v19, v54);
    v20 = "#PhoneAppResolutionOnDeviceFlowStrategy %s Not a 3P-specific incoming call request, use existing query";
    goto LABEL_20;
  }

  v21 = one-time initialization token for siriPhone;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v51 = v12;
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_86_1();
    v26 = OUTLINED_FUNCTION_16_13();
    v54[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = OUTLINED_FUNCTION_159(v26, 0x800000000045D760, v54);
    *(v25 + 12) = 2080;
    v27 = OUTLINED_FUNCTION_5_26();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v29);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_0, v23, v24, "#PhoneAppResolutionOnDeviceFlowStrategy %s Requested 3P app %s", v25, 0x16u);
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  v31 = v3[7];
  v32 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v31);
  v34 = a2[3];
  v33 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v34);
  (*(v33 + 8))(v53, v34, v33);
  v35 = OUTLINED_FUNCTION_5_26();
  AnnotatedAppFinding.find(appQuery:device:)(v35, v36, v51, v37, v31, v32, v38);
  __swift_destroy_boxed_opaque_existential_1(v53);
  if (!v54[0])
  {
LABEL_18:
    v15 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_8(v47))
    {
LABEL_21:

      return OUTLINED_FUNCTION_5_26();
    }

    v17 = OUTLINED_FUNCTION_42();
    v52 = OUTLINED_FUNCTION_36();
    *v17 = 136315138;
    OUTLINED_FUNCTION_119();
    *(v17 + 4) = OUTLINED_FUNCTION_159(v48, v49, &v52);
    v20 = "#PhoneAppResolutionOnDeviceFlowStrategy %s 3P app has support, so use their SiriKit implementation";
LABEL_20:
    _os_log_impl(&dword_0, v15, v3, v20, v17, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_26_0();
    goto LABEL_21;
  }

  v39 = v56;
  v57 = v55;
  if ((specialized Set._isDisjoint<A>(with:)(v3[24], v54[1]) & 1) == 0)
  {

    *v53 = v55;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v53, &_sSSSgMd, &_sSSSgMR);
    v58[0] = v39;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v58, &_sShySSGMd, &_sShySSGMR);
    goto LABEL_18;
  }

  v40 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v41 = OUTLINED_FUNCTION_86_1();
    v53[0] = OUTLINED_FUNCTION_16_13();
    *v41 = 136315394;
    OUTLINED_FUNCTION_119();
    *(v41 + 4) = OUTLINED_FUNCTION_159(v42, v43, v53);
    *(v41 + 12) = 2080;
    v44 = Array.description.getter();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v53);

    *(v41 + 14) = v46;
    _os_log_impl(&dword_0, v40, v54, "#PhoneAppResolutionOnDeviceFlowStrategy %s 3P app does not declare support for %s, so fallback to system extension", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  *v53 = v57;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v53, &_sSSSgMd, &_sSSSgMR);
  v58[0] = v39;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v58, &_sShySSGMd, &_sShySSGMR);
  return OUTLINED_FUNCTION_5_26();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeAppQuery(phoneCallNLIntent:sharedGlobals:)(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for AppQuery.Builder();
  outlined init with copy of SignalProviding(a1, v32);
  v6 = AppQuery.Builder.__allocating_init(intent:)(v32);
  v7 = a2[3];
  v8 = a2[4];
  OUTLINED_FUNCTION_165(a2);
  v10 = *(v9 + 56);
  v11 = OUTLINED_FUNCTION_25_0();
  v13 = *v12(v11);
  v14 = (*(v13 + 264))();

  if (v14)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_8(v18))
    {
      OUTLINED_FUNCTION_42();
      v19 = OUTLINED_FUNCTION_14_2();
      v32[0] = v19;
      *v7 = 136315138;
      OUTLINED_FUNCTION_119();
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, v20, v32);
      _os_log_impl(&dword_0, v17, v14, "#PhoneAppResolutionOnDeviceFlowStrategy %s Request requires a userFacingAppId override", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_14_0();
    }

    v21 = a1[3];
    v22 = a1[4];
    OUTLINED_FUNCTION_86(a1);
    OUTLINED_FUNCTION_120_1();
    if (PhoneCallNLIntent.isOutgoingCallExcludeCallBackAndRedial()() && (v23 = a1[3], v24 = a1[4], OUTLINED_FUNCTION_86(a1), OUTLINED_FUNCTION_120_1(), PhoneCallNLIntent.isFaceTimeCall()()))
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(v25, (v3 + 152));
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideOGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_424FD0;
    *(v29 + 32) = v26;
    *(v29 + 40) = v28;
    (*(*v6 + 152))();
  }

  v30 = (*(*v6 + 160))(v15);

  return v30;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.logAppSelectionActionToSelf(action:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppResolutionResult();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  if (a1)
  {

    AppResolutionAction.result.getter();

    v10 = *(v7 + 88);
    v11 = OUTLINED_FUNCTION_8_2();
    v13 = v12(v11);
    if (v13 == enum case for AppResolutionResult.needsConfirmation(_:))
    {
      v14 = *(v7 + 8);
      v15 = OUTLINED_FUNCTION_8_2();
      v16(v15);
      v17 = 1;
    }

    else
    {
      v18 = v13;
      if (v13 == enum case for AppResolutionResult.needsDisambiguation(_:))
      {
        v19 = *(v7 + 8);
        v20 = OUTLINED_FUNCTION_8_2();
        v21(v20);
        v17 = 2;
      }

      else
      {
        v22 = enum case for AppResolutionResult.selected(_:);
        v23 = *(v7 + 8);
        v24 = OUTLINED_FUNCTION_8_2();
        v25(v24);
        if (v18 == v22)
        {
          v17 = 0;
        }

        else
        {
          v17 = 6;
        }
      }
    }
  }

  else
  {
    v17 = 5;
  }

  v26 = v2[41];
  v27 = v2[42];
  __swift_project_boxed_opaque_existential_1(v2 + 38, v26);
  (*(v27 + 16))(v17, v26, v27);
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  outlined init with copy of SignalProviding(a1, v13);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  outlined init with take of SPHConversation(v13, (v10 + 5));

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:), 0, 0);
}

uint64_t closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0[2] + 16);
  v0[8] = v1;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v2;
  *v2 = v3;
  v2[1] = closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:);
  v4 = v0[7];
  v6 = v0[2];
  v5 = v0[3];

  return PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:)(v4, v5, v1);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_39_4();
  v58 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  v5 = OUTLINED_FUNCTION_0();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v5, v6, v7, v8);

  v9 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  v10 = OUTLINED_FUNCTION_86_0();
  v11 = v0[6];
  if (v10)
  {
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[2];
    v15 = OUTLINED_FUNCTION_86_1();
    v56 = OUTLINED_FUNCTION_16_13();
    v16 = OUTLINED_FUNCTION_2_72(4.8151e-34);
    v57 = v17;
    v21 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v16, v18, v19, v20);
    v29 = OUTLINED_FUNCTION_127(v21, v22, v23, v24, v25, v26, v27, v28, v56, 0, v57);

    *(v15 + 4) = v29;
    *(v15 + 12) = 2080;
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v11, v12, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v56);

    *(v15 + 14) = v33;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    OUTLINED_FUNCTION_60_4();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  }

  v40 = v0[6];
  v39 = v0[7];
  v41 = v0[5];
  v42 = v0[2];
  v43 = v42[28];
  v44 = v42[29];
  OUTLINED_FUNCTION_165(v42 + 25);
  v46 = *(v45 + 208);
  v47 = OUTLINED_FUNCTION_25_0();
  v48(v47);
  OUTLINED_FUNCTION_139();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v49, v50, v51, v52);
  OUTLINED_FUNCTION_2_0();
  (*(v53 + 96))(v41);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);

  OUTLINED_FUNCTION_11();

  return v54();
}

void PhoneAppResolutionOnDeviceFlowStrategy.getAppSpeakableString(apps:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v55 = type metadata accessor for Locale();
  v4 = OUTLINED_FUNCTION_7(v55);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  v60 = type metadata accessor for SpeakableString();
  v18 = OUTLINED_FUNCTION_7(v60);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v53 = (v24 - v23);
  v25 = specialized Array.count.getter(v3);
  v58 = v3;
  v59 = v25;
  v26 = 0;
  v56 = v3 & 0xFFFFFFFFFFFFFF8;
  v57 = v3 & 0xC000000000000001;
  v51 = v20;
  v52 = (v20 + 32);
  v54 = _swiftEmptyArrayStorage;
  while (v59 != v26)
  {
    if (v57)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *(v56 + 16))
      {
        goto LABEL_22;
      }

      v27 = *(v58 + 8 * v26 + 32);
    }

    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      OUTLINED_FUNCTION_6_2();
      goto LABEL_17;
    }

    v29 = v1[29];
    __swift_project_boxed_opaque_existential_1(v1 + 25, v1[28]);
    v30 = *(v29 + 8);
    v31 = OUTLINED_FUNCTION_61();
    v32(v31, v29);
    __swift_project_boxed_opaque_existential_1(&v62, v64);
    OUTLINED_FUNCTION_5();
    dispatch thunk of DeviceState.siriLocale.getter();
    App.toSpeakableStringAppName(forLocale:appInfoBuilder:)(v11, v1 + 9, v17);

    (*(v6 + 8))(v11, v55);
    __swift_destroy_boxed_opaque_existential_1(&v62);
    if (__swift_getEnumTagSinglePayload(v17, 1, v60) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      ++v26;
    }

    else
    {
      v33 = *v52;
      (*v52)(v53, v17, v60);
      v34 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = v34[2];
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v39;
      }

      v36 = v34[2];
      v35 = v34[3];
      if (v36 >= v35 >> 1)
      {
        OUTLINED_FUNCTION_3_62(v35);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v40;
      }

      v34[2] = v36 + 1;
      v37 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v54 = v34;
      v33(v34 + v37 + *(v51 + 72) * v36, v53, v60);
      v26 = v28;
    }
  }

  v41 = specialized Array.count.getter(v58);
  if (v41 == v54[2])
  {
    goto LABEL_20;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_23;
  }

LABEL_17:
  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v43 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_162();
  if (OUTLINED_FUNCTION_108())
  {
    OUTLINED_FUNCTION_42();
    v61 = OUTLINED_FUNCTION_83();
    v62 = 0;
    *v11 = 136315138;
    v44 = OUTLINED_FUNCTION_17_27();
    v63 = v45;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v44, v46, v47, v48);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v61);
    OUTLINED_FUNCTION_40_0();

    *(v11 + 4) = &v62;
    OUTLINED_FUNCTION_26(&dword_0, v49, v50, "%s error on finding all app names, set app names as an empty array");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

LABEL_20:
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.getSeASPredictableAppsList(apps:)(uint64_t a1)
{
  type metadata accessor for App();
  OUTLINED_FUNCTION_119();
  v2 = App.__allocating_init(appIdentifier:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_426260;
  *(inited + 32) = v2;

  specialized Array.append<A>(contentsOf:)(inited);
  return a1;
}

uint64_t *PhoneAppResolutionOnDeviceFlowStrategy.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  v3 = v0[24];

  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  v4 = v0[30];

  v5 = v0[31];

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v6 = v0[37];

  __swift_destroy_boxed_opaque_existential_1(v0 + 38);
  v7 = v0[43];

  v8 = v0[44];

  v9 = v0[46];
  v10 = v0[48];

  v11 = v0[50];
  v12 = v0[52];

  v13 = v0[54];
  v14 = v0[56];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>((v0 + 57), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  return v0;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.__deallocating_deinit()
{
  PhoneAppResolutionOnDeviceFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.resolveApp(input:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1)
{
  v4 = *(**v1 + 360);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentContinueInAppStrategy<A, B>;

  return v8(a1);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationPrompt(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 392);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #2 in ActionableCallControlFlow.execute();

  return AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationPrompt(apps:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 400);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)(a1, a2, a3, a4, a5);
}

uint64_t specialized closure #1 in static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v47 = a3;
  v42 = type metadata accessor for PhoneError();
  v4 = *(*(v42 - 8) + 64);
  v5 = __chkstk_darwin(v42);
  v41 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v40 = &v40 - v7;
  v8 = type metadata accessor for Locale();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  Siri_Nlu_External_UserStatedTask.init()();
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v23 = v46;
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC14createUsoGraph33_3C2ABB69DDB872D121E37A32A4E694A93for6locale12SiriNLUTypes0v14_Nlu_External_iJ0V0V13AppResolution0Z0C_10Foundation6LocaleVtKFZSo8INIntentC_So16INIntentResponseCTt2g5();
  if (v23)
  {
    v25 = v40;
    v26 = v41;
    (*(v43 + 8))(v11, v44);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.siriPhone);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SIRINLUUserWantedToProceedCmMd, &_sSo26SIRINLUUserWantedToProceedCmMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SIRINLUUserWantedToProceedCmmMd, &_sSo26SIRINLUUserWantedToProceedCmmMR);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    swift_getErrorValue();
    v31 = Error.localizedDescription.getter();
    *v26 = v28;
    v26[1] = v30;
    v26[2] = v31;
    v26[3] = v32;
    swift_storeEnumTagMultiPayload();
    PhoneError.logged()(v25);
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v26, type metadata accessor for PhoneError);
    _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError);
    v33 = Error.localizedDescription.getter();
    v35 = v34;
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v25, type metadata accessor for PhoneError);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v38 = 136315138;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v48);
      _os_log_impl(&dword_0, v36, v37, "%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v43 + 8))(v11, v44);
    Siri_Nlu_External_UserStatedTask.task.setter();
    Siri_Nlu_External_UserDialogAct.init()();
    (*(v15 + 16))(v19, v21, v14);
    Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
    return (*(v15 + 8))(v21, v14);
  }

  return result;
}