uint64_t sub_100070F04()
{
  v2 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v36 = _swiftEmptyArrayStorage;
    v4 = (v3 & 0xFFFFFFFFFFFFFF8);
    if (v3 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= v4[2])
          {
            goto LABEL_42;
          }

          v8 = *(v3 + 8 * v6 + 32);
        }

        v1 = v8;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (dispatch thunk of CAFMediaSourceObservable.disabled.getter())
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v7 = v36[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v6;
        if (v9 == i)
        {
          v10 = v36;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_17:

    if ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (v3)
      {
LABEL_20:
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v10 + 16))
          {
            __break(1u);
LABEL_56:
            swift_once();
LABEL_26:
            v13 = type metadata accessor for Logger();
            sub_100006928(v13, qword_1000F3BD0);
            v14 = v1;
            v15 = Logger.logObject.getter();
            v16 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              *v17 = 136446466;
              v18 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
              v20 = sub_100043AF0(v18, v19, &v36);

              *(v17 + 4) = v20;
              *(v17 + 12) = 2082;
              dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
              v21 = CAFMediaSourceSemanticType.description.getter();
              v23 = sub_100043AF0(v21, v22, &v36);

              *(v17 + 14) = v23;
              _os_log_impl(&_mh_execute_header, v15, v16, "Selecting first known media source: %{public}s of type %{public}s", v17, 0x16u);
              swift_arrayDestroy();
            }

            v24 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
            sub_100069AE0(v24, v25);
          }

          v11 = *(v10 + 32);
        }

        v12 = v11;
        if (v3 != 1)
        {
          v27 = 1;
          while (1)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v27 & 0x8000000000000000) != 0)
              {
                goto LABEL_44;
              }

              if (v27 >= *(v10 + 16))
              {
                goto LABEL_45;
              }

              v28 = *(v10 + 8 * v27 + 32);
            }

            v1 = v28;
            v29 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_43;
            }

            v4 = CAFMediaSourceObservable.observed.getter();
            v30 = CAFMediaSourceObservable.observed.getter();
            v31 = [v4 typeCompare:v30];

            if (v31 == -1)
            {

              v12 = v1;
              ++v27;
              if (v29 == v3)
              {
                goto LABEL_25;
              }
            }

            else
            {

              ++v27;
              if (v29 == v3)
              {
                break;
              }
            }
          }
        }

        v1 = v12;
LABEL_25:

        if (qword_1000EAD00 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v3 = *(v10 + 16);
      if (v3)
      {
        goto LABEL_20;
      }
    }
  }

  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006928(v32, qword_1000F3BD0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "No available source to change to.", v35, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v36 = 0;

  return static Published.subscript.setter();
}

void *sub_100071400()
{
  v1 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_33;
    }

    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      v23 = v2;
      v24 = v2 & 0xC000000000000001;
      v21 = v4;
      v22 = v3;
      while (1)
      {
        if (v24)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v3 + 16))
          {
            goto LABEL_32;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v3 = v6;
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v4 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        sub_100083338();
        v7 = dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
        sub_100083720(v7);
        v8 = CAFMediaSourceObservable.observed.getter();
        v9 = [v8 mediaSourceSemanticType];
        v10 = v9 > 8 || ((1 << v9) & 0x14E) == 0;
        if (v10)
        {
          [v8 disabled];
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (!v25)
        {
          break;
        }

        v11 = [v25 identifier];

        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
        if (!v14)
        {
          goto LABEL_21;
        }

        if (v12 == v15 && v14 == v16)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

LABEL_23:
        sub_100005A50(0, &unk_1000EEC10, UIAction_ptr);
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        *(v18 + 24) = v3;
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v5;
        v3 = v22;
        v10 = v2 == v21;
        v2 = v23;
        if (v10)
        {
          goto LABEL_29;
        }
      }

      dispatch thunk of CAFMediaSourceObservable.identifier.getter();
LABEL_21:

      goto LABEL_23;
    }

LABEL_29:
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100071790()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    sub_100069AE0(v1, v2);
  }

  return result;
}

uint64_t sub_100071808(void (*a1)(uint64_t))
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    v2 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_100005A50(0, &qword_1000EDFE0, UIMenuElement_ptr);

    v3 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_4;
  }

  v2 = sub_100071400();

  if (v2 >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_100005A50(0, &qword_1000EDFE0, UIMenuElement_ptr);
  v3 = v2;
LABEL_4:

  a1(v3);
}

uint64_t sub_10007192C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100071968()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100071790();
}

uint64_t *sub_100071970(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1000274CC(v2, 0);

    v1 = sub_100072674(&v5, v3 + 4, v2, v1);
    sub_100073104();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

Swift::Int sub_100071A20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002BCFC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100071A8C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100071A8C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100071C54(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100071B84(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100071B84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100071C54(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10002B800(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100072230((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002B814(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10002B814((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100072230((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10002B800(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10002B774(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_100072230(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

id sub_100072458()
{
  v1 = v0;
  sub_10000368C(&unk_1000EC610, &unk_1000B6700);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000725CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100072620(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100072674(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for TerrestrialRadioStation();
  sub_10007310C(&qword_1000EDFF8, type metadata accessor for TerrestrialRadioStation);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      type metadata accessor for TerrestrialRadioStation();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_1000728A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v9 = a1 <= a2;
    if (a3 > 0)
    {
      v9 = a1 >= a2;
    }

    if (v9)
    {
      if ((a1 != a2) | v5 & 1 || !(v7 & 1 | (v6 != 0x8000000000000000)))
      {
        return result;
      }

      v5 = 1;
    }

    else
    {
      v8 = __OFADD__(a1, a3);
      a1 += a3;
      if (v8)
      {
        a1 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = !v8;
    }

    v8 = __OFADD__(result++, 1);
  }

  while (!v8);
  __break(1u);
  return result;
}

void *sub_100072930(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = sub_1000728A0(a1, a2, a3);
  result = sub_1000A2C90(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    if (!v7)
    {
      v31 = 0;
      v10 = 0;
      goto LABEL_25;
    }

    v31 = 0;
    v10 = 0;
    v11 = v6;
    while (1)
    {
      v12 = v11 <= a2;
      if (a3 > 0)
      {
        v12 = v11 >= a2;
      }

      if (v12)
      {
        if (v9 & 1 | (v11 != a2))
        {
          goto LABEL_50;
        }

        if (!v10 && v31 == 0x8000000000000000)
        {
          goto LABEL_51;
        }

        v9 = 1;
        v6 = a2;
      }

      else
      {
        v10 = !__OFADD__(v11, a3);
        v13 = 0x8000000000000000;
        if (!__OFADD__(v11, a3))
        {
          v13 = 0;
        }

        v31 = v13;
        v6 = __OFADD__(v11, a3) ? ((v11 + a3) >> 63) ^ 0x8000000000000000 : v11 + a3;
      }

      if (v11 < 0)
      {
        break;
      }

      if (HIDWORD(v11))
      {
        goto LABEL_49;
      }

      [a4 mediaSourceSemanticType];
      result = UInt32.formattedUserEnteredFrequency(mediaSourceType:)();
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        v26 = v14;
        v28 = result;
        sub_1000A2C90((v15 > 1), v16 + 1, 1);
        v14 = v26;
        result = v28;
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      *(v17 + 4) = result;
      *(v17 + 5) = v14;
      v11 = v6;
      if (!--v7)
      {
        while (1)
        {
LABEL_25:
          v18 = v6 <= a2;
          if (a3 > 0)
          {
            v18 = v6 >= a2;
          }

          if (v18)
          {
            if ((v6 != a2) | v9 & 1 || !v10 && v31 == 0x8000000000000000)
            {
              return _swiftEmptyArrayStorage;
            }

            v9 = 1;
            v19 = v6;
          }

          else
          {
            v20 = __OFADD__(v6, a3);
            if (v20)
            {
              v19 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v6 + a3;
            }

            v21 = 0x8000000000000000;
            if (!v20)
            {
              v21 = 0;
            }

            v31 = v21;
            v10 = !v20;
          }

          if (v6 < 0)
          {
            break;
          }

          if (HIDWORD(v6))
          {
            goto LABEL_47;
          }

          [a4 mediaSourceSemanticType];
          result = UInt32.formattedUserEnteredFrequency(mediaSourceType:)();
          v24 = _swiftEmptyArrayStorage[2];
          v23 = _swiftEmptyArrayStorage[3];
          if (v24 >= v23 >> 1)
          {
            v27 = v22;
            v29 = result;
            sub_1000A2C90((v23 > 1), v24 + 1, 1);
            v22 = v27;
            result = v29;
          }

          _swiftEmptyArrayStorage[2] = v24 + 1;
          v25 = &_swiftEmptyArrayStorage[2 * v24];
          *(v25 + 4) = result;
          *(v25 + 5) = v22;
          v6 = v19;
        }

        __break(1u);
LABEL_47:
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100072BE0(unint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v25 = a1;
  v23 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  v8 = a1;
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = _swiftEmptyArrayStorage;
  a1 = specialized ContiguousArray.reserveCapacity(_:)();
  if (!v10)
  {
    v12 = v8;
    goto LABEL_16;
  }

  v22 = a2;
  a2 = a3;
  v21 = *(v9 + 16);
  while (1)
  {
    v11 = 0;
    v12 = v8;
    while (v11 < v10)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_34;
      }

      if (v21 == v11)
      {
        goto LABEL_35;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v9 + 16))
        {
          goto LABEL_36;
        }

        v14 = *(v12 + 8 * v11 + 32);
      }

      v26 = v14;
      sub_10008406C(&v26, v22, a2, a4, &v27);
      if (v5)
      {
        goto LABEL_40;
      }

      v5 = 0;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a3 = v28[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = specialized ContiguousArray._endMutation()();
      ++v11;
      v12 = v25;
      if (v13 == v10)
      {
        a3 = a2;
        a2 = v22;
        goto LABEL_16;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v28 = _swiftEmptyArrayStorage;
    v16 = &v28;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_39:

      __break(1u);
LABEL_40:

      v20 = v26;

      __break(1u);
    }

    v22 = a2;
    a2 = a3;
    if (!v10)
    {
      break;
    }

    a1 = _CocoaArrayWrapper.endIndex.getter();
    v21 = a1;
    v8 = v25;
  }

  a2 = v22;
  v12 = v25;
LABEL_16:
  v15 = v12 & 0xC000000000000001;
  if (v23)
  {
    while (1)
    {
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (v10 == a1)
      {
        break;
      }

LABEL_20:
      if (v15)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v10 >= *(v9 + 16))
        {
          goto LABEL_32;
        }

        a1 = *(v25 + 8 * v10 + 32);
      }

      v16 = a1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_31;
      }

      v27 = a1;
      sub_10008406C(&v27, a2, a3, a4, &v26);
      if (v5)
      {
        goto LABEL_39;
      }

      v5 = 0;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = v28[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v10;
      if (!v23)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    a1 = *(v9 + 16);
    if (v10 != a1)
    {
      goto LABEL_20;
    }
  }

  v18 = v28;

  return v18;
}

uint64_t *sub_100072F1C(void *a1, unint64_t a2)
{
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v5 = v14;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = [a1 mediaItemImages];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 mediaItemImages];

    sub_100005A50(0, &qword_1000EDFF0, CAFMediaItemImage_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a1;

  sub_100072BE0(a2, v4, v9, v5);

  swift_bridgeObjectRelease_n();

  v14 = sub_10002BC68(v10);
  sub_100027D28(&v14);

  v11 = sub_10007D7D4(v14);

  v12 = sub_100071970(v11);

  return v12;
}

uint64_t sub_10007310C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100073154()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100073230@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
  sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr);
  result = CAFObserved<>.observable.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000732E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10006C1DC();
}

uint64_t sub_1000732F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007333C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100073374(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t sub_1000733DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10007345C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t CallObserver.isCallActive.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100073548(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_1000735C0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t CallObserver.$isCallActive.getter()
{
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.getter();
  return swift_endAccess();
}

char *sub_1000737B8()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v1 - 8);
  v24 = v1;
  v2 = *(v23 + 64);
  __chkstk_darwin(v1);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = OBJC_IVAR____TtC5Media12CallObserver__isCallActive;
  LOBYTE(v26) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(&v0[v13], v12, v8);
  v14 = [objc_allocWithZone(CXCallObserver) init];
  *&v0[OBJC_IVAR____TtC5Media12CallObserver_callObserver] = v14;
  sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100074600(&qword_1000EE1A8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000368C(&qword_1000EE1B0, &qword_1000B82D0);
  sub_100074648(&qword_1000EE1B8, &qword_1000EE1B0, &qword_1000B82D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  *&v0[OBJC_IVAR____TtC5Media12CallObserver_callQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = type metadata accessor for CallObserver();
  v25.receiver = v0;
  v25.super_class = v15;
  v16 = objc_msgSendSuper2(&v25, "init");
  v17 = *&v16[OBJC_IVAR____TtC5Media12CallObserver_callObserver];
  v18 = v16;
  v19 = v17;
  v20 = static OS_dispatch_queue.main.getter();
  [v19 setDelegate:v18 queue:v20];

  _s5Media12CallObserverC04callC0_0D7ChangedySo06CXCallC0C_So0F0CtF_0();
  return v18;
}

uint64_t _s5Media12CallObserverC04callC0_0D7ChangedySo06CXCallC0C_So0F0CtF_0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC5Media12CallObserver_callQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000745E0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = &unk_1000E14F8;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100074600(&qword_1000EB840, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_100074648(&qword_1000EB850, &unk_1000EC7D0, &qword_1000B5D50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

uint64_t sub_100073ECC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC5Media12CallObserver_callObserver) calls];
    sub_100005A50(0, &unk_1000EE1C0, CXCall_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = v4 != 0;
    sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
    v6 = static OS_dispatch_queue.main.getter();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1000746D4;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1000746F0;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000743B4;
    aBlock[3] = &unk_1000E1570;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    dispatch_sync(v6, v9);

    _Block_release(v9);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1000740F8(char a1, void *a2)
{
  v4 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v20 == v4)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006928(v14, qword_1000F3BD0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67240192;
      *(v17 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v15, v16, "Call is already active: %{BOOL,public}d", v17, 8u);
    }
  }

  else
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006928(v5, qword_1000F3BD0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136446210;
      if (a1)
      {
        v10 = 7562617;
      }

      else
      {
        v10 = 28526;
      }

      if (a1)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE200000000000000;
      }

      v12 = sub_100043AF0(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "[Call observer] call is active: %{public}s", v8, 0xCu);
      sub_100006960(v9);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = a1 & 1;
    v13 = a2;
    static Published.subscript.setter();
  }
}

id CallObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CallObserver()
{
  result = qword_1000EE198;
  if (!qword_1000EE198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100074508()
{
  sub_10000B5F0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000745A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000745E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100074648(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007469C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000746F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100074720()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100074794(unsigned __int8 a1)
{
  v2 = v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle];
  if (v2 != a1 && v2 != 0)
  {
    if (v2 == 1)
    {
      v4 = [objc_allocWithZone(CPUIFocusRingView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v4 setCornerRadius:8.0];
      [v4 setRingGap:0.0];
      [v4 setRingWidth:3.0];
      [v1 addSubview:v4];
      v5 = objc_opt_self();
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1000B4FB0;
      v7 = [v4 topAnchor];
      v8 = [v1 topAnchor];
      v9 = [v7 constraintEqualToAnchor:v8];

      *(v6 + 32) = v9;
      v10 = [v4 bottomAnchor];
      v11 = [v1 bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];

      *(v6 + 40) = v12;
      v13 = [v4 leadingAnchor];
      v14 = [v1 leadingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];

      *(v6 + 48) = v15;
      v16 = [v4 trailingAnchor];
      v17 = [v1 trailingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];

      *(v6 + 56) = v18;
      sub_100075A4C();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 activateConstraints:isa];

      v20 = *&v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusRing];
      *&v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusRing] = v4;
      v21 = v4;

      [v21 setHidden:1];
    }

    else
    {
      v21 = [v1 layer];
      [v21 setMasksToBounds:1];
    }
  }
}

void sub_100074B08()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for WidgetFocusableView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle) == 2)
  {
    [v0 frame];
    v2 = v1;
    [v0 frame];
    v4 = v3;
    v5 = [v0 layer];
    v6 = 8.0;
    if (v4 <= v2)
    {
      [v0 frame];
      v6 = v7 * 0.5;
    }

    [v5 setCornerRadius:v6];
  }
}

void sub_100074C28(char a1)
{
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006928(v3, qword_1000F3BA0);
  v4 = v1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    *(v6 + 4) = a1 & 1;
    *(v6 + 8) = 2112;
    *(v6 + 10) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Pressed %{BOOL}d %@", v6, 0x12u);
    sub_1000113D0(v7);
  }
}

void sub_100074DD4()
{
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006928(v1, qword_1000F3BA0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Selected %@", v5, 0xCu);
    sub_1000113D0(v6);
  }

  v8 = &v2[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
  v9 = *&v2[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
  if (v9)
  {
    v10 = *(v8 + 1);

    v9(v11);

    sub_10003DEF8(v9);
  }
}

void sub_100074F9C(char a1)
{
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006928(v3, qword_1000F3BA0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2112;
    *(v7 + 10) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Focused %{BOOL}d %@", v7, 0x12u);
    sub_1000113D0(v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4;
  static Published.subscript.setter();
  sub_100075184();
}

void sub_100075184()
{
  if (v0[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle])
  {
    if (v0[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle] == 1)
    {
      v1 = *&v0[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusRing];
      if (!v1)
      {
        return;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v2 = v1;
      static Published.subscript.getter();

      [v2 setHidden:(v5 & 1) == 0];
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v3 = objc_opt_self();
      v4 = &selRef_radio_carSystemFocusColor;
      if (!v6)
      {
        v4 = &selRef_clearColor;
      }

      v2 = [v3 *v4];
      [v0 setBackgroundColor:v2];
    }
  }
}

id sub_1000752DC(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = &v4[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC5Media19WidgetFocusableView__crs_focused;
  v20 = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(&v4[v15], v13, v9);
  *&v4[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusRing] = 0;
  v4[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle] = 0;
  v16 = type metadata accessor for WidgetFocusableView();
  v19.receiver = v4;
  v19.super_class = v16;
  return objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100075464(void *a1)
{
  v3 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = &v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC5Media19WidgetFocusableView__crs_focused;
  v15 = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(&v1[v9], v7, v3);
  *&v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusRing] = 0;
  v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle] = 0;
  v10 = type metadata accessor for WidgetFocusableView();
  v14.receiver = v1;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

id sub_1000755E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetFocusableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WidgetFocusableView()
{
  result = qword_1000EE210;
  if (!qword_1000EE210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007570C()
{
  sub_10000B5F0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1000757D0()
{
  result = qword_1000EE228;
  if (!qword_1000EE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE228);
  }

  return result;
}

uint64_t sub_100075824@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WidgetFocusableView();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100075864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100075B00();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000758C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100075B00();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10007592C()
{
  sub_100075B00();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100075954@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1000759D8(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

unint64_t sub_100075A4C()
{
  result = qword_1000EBDD8;
  if (!qword_1000EBDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EBDD8);
  }

  return result;
}

unint64_t sub_100075AAC()
{
  result = qword_1000EE240;
  if (!qword_1000EE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE240);
  }

  return result;
}

unint64_t sub_100075B00()
{
  result = qword_1000EE248;
  if (!qword_1000EE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE248);
  }

  return result;
}

uint64_t sub_100075B54(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t RadioFilteringStrategy.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x636973754DLL;
  v2 = 1802264916;
  v3 = 1937204558;
  if (a1 != 3)
  {
    v3 = 0x726568744FLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7374726F7053;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100075C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a1 + 8);
    if (v4)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      v7 = *(a2 + 16);
    }

    else
    {
      v7 = 0xE000000000000000;
    }

    if (v2 == 0xE100000000000000 && v5 == 35)
    {
      goto LABEL_18;
    }

    v8 = *(a1 + 16);
  }

  else
  {
    v5 = 0;
    if (v4)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    v8 = 0xE000000000000000;
    if (v4)
    {
      v7 = *(a2 + 16);
    }

    else
    {
      v7 = 0xE000000000000000;
    }
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v6 == 35 && v7 == 0xE100000000000000)
    {
      v9 = 1;
      goto LABEL_19;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v9 = 1;
      goto LABEL_19;
    }

    if (v5 != v6 || v8 != v7)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_19;
    }
  }

LABEL_18:
  v9 = 0;
LABEL_19:

  return v9 & 1;
}

Swift::Int sub_100075D78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100075E40()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100075EF4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100075FB8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s5Media22RadioFilteringStrategyO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100075FE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x636973754DLL;
  v5 = 0xE400000000000000;
  v6 = 1802264916;
  v7 = 0xE400000000000000;
  v8 = 1937204558;
  if (v2 != 3)
  {
    v8 = 0x726568744FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7374726F7053;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_1000762E4(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      goto LABEL_8;
    }

    v2 = String._bridgeToObjectiveC()();
    v3 = [objc_opt_self() systemImageNamed:v2];

    if (v3)
    {
      return;
    }

    __break(1u);
  }

  if (v1 != 2)
  {
    goto LABEL_10;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() systemImageNamed:v4];

  if (v5)
  {
    return;
  }

  __break(1u);
LABEL_8:
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  if (v7)
  {
    return;
  }

  __break(1u);
LABEL_10:
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t sub_10007647C(uint64_t a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  if (*(a1 + v7) == 3)
  {
    v8 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
    swift_beginAccess();
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v11 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v12 = *(a1 + v11);
    v13 = CAFMediaItem.primaryDisplayName(in:)();
    v15 = v14;

    sub_100075B54(v13, v15);
    v17 = v16;

    if (v17)
    {
LABEL_6:
      v22 = Character.uppercased()();
      countAndFlagsBits = v22._countAndFlagsBits;
      object = v22._object;

      goto LABEL_8;
    }

    v18 = *(a1 + v11);
    v9 = CAFMediaItem.secondaryDisplayName.getter();
    v10 = v19;
  }

  sub_100075B54(v9, v10);
  v21 = v20;

  if (v21)
  {
    goto LABEL_6;
  }

  countAndFlagsBits = 0;
  object = 0xE000000000000000;
LABEL_8:
  v25 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v25 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v25 || (sub_10007699C(countAndFlagsBits, object) & 0x100000000) == 0 && sub_100076AEC(countAndFlagsBits, object) == 1 && (static CharacterSet.decimalDigits.getter(), v26 = CharacterSet.contains(_:)(), (*(v3 + 8))(v6, v2), (v26 & 1) != 0))
  {

    return 35;
  }

  return countAndFlagsBits;
}

uint64_t sub_1000766E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v3 = [*(a1 + v2) mediaItemCategoryUserVisibleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }
  }

  return sub_1000820E4([*(a1 + v2) mediaItemCategory]);
}

uint64_t sub_1000767A8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v3 = [*(a1 + v2) ensemble];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

Swift::Int sub_10007683C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000768B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000768F4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007752C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100076920(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10007699C(unint64_t a1, unint64_t a2)
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
    v5 = sub_100076D3C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_100076AEC(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_100076DD4(0xFuLL, a1, a2);
  v8 = sub_100076DD4(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_41;
        }

        if ((a2 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = String.UnicodeScalarView._foreignIndex(before:)();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_36;
        }
      }

      else
      {
        v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = _StringObject.sharedUTF8.getter();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_36;
        }
      }

      v25 = -1;
LABEL_36:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v14 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = _StringObject.sharedUTF8.getter();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_100076D3C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100077004(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_100076EE0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100076DD4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100076E6C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_100076EE0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100076E6C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_100076920(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100076EE0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

unint64_t sub_100077004(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_100076920(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _s5Media22RadioFilteringStrategyO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DF280, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000770C8()
{
  result = qword_1000EE250;
  if (!qword_1000EE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE250);
  }

  return result;
}

unint64_t sub_100077120()
{
  result = qword_1000EE258;
  if (!qword_1000EE258)
  {
    sub_100005780(&qword_1000EE260, &qword_1000B8610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE258);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadioFilteringStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RadioFilteringStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1000772D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000772E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100077330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadioGroupingStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RadioGroupingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000774D8()
{
  result = qword_1000EE268;
  if (!qword_1000EE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE268);
  }

  return result;
}

uint64_t sub_10007752C(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100077540()
{
  v0 = sub_10007760C()[2];

  qword_1000F3CC0 = v0 / 3;
  return result;
}

uint64_t sub_100077580()
{
  if (qword_1000EAD30 != -1)
  {
    result = swift_once();
  }

  v0 = 40 * qword_1000F3CC0;
  if ((qword_1000F3CC0 * 40) >> 64 == (40 * qword_1000F3CC0) >> 63)
  {
    v1 = 6 * qword_1000F3CC0 - 6;
    v2 = __OFADD__(v0, v1);
    v3 = v0 + v1;
    if (!v2)
    {
      qword_1000F3CC8 = v3;
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

void *sub_10007760C()
{
  v13 = _swiftEmptyArrayStorage;
  v1 = 9;
  sub_1000A2D78(0, 9, 0);
  v3 = 1;
  v4 = _swiftEmptyArrayStorage;
  do
  {
    if (v3 > 0xFF)
    {
      __break(1u);
      goto LABEL_16;
    }

    v13 = v4;
    v6 = v4[2];
    v5 = v4[3];
    v0 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      sub_1000A2D78((v5 > 1), v6 + 1, 1);
      v4 = v13;
    }

    v4[2] = v0;
    v7 = v4 + 2 * v6;
    v7[32] = v3;
    v7[33] = 0;
    if (v3 == 9)
    {
      v3 = 0;
    }

    else
    {
      ++v3;
    }

    --v1;
  }

  while (v1);
  sub_10009EF2C(v4);
  v13 = _swiftEmptyArrayStorage;
  sub_1000A2D78(0, 3, 0);
  v8 = _swiftEmptyArrayStorage;
  v1 = _swiftEmptyArrayStorage[2];
  v2 = _swiftEmptyArrayStorage[3];
  v9 = v2 >> 1;
  v0 = v1 + 1;
  if (v2 >> 1 > v1)
  {
    goto LABEL_10;
  }

LABEL_16:
  sub_1000A2D78((v2 > 1), v0, 1);
  v8 = v13;
  v2 = v13[3];
  v9 = v2 >> 1;
LABEL_10:
  v8[2] = v0;
  *(v8 + v1 + 16) = 256;
  v10 = v1 + 2;
  if (v9 < (v1 + 2))
  {
    sub_1000A2D78((v2 > 1), v1 + 2, 1);
    v8 = v13;
  }

  v8[2] = v10;
  *(v8 + v0 + 16) = 0;
  v11 = v8[3];
  if ((v1 + 3) > (v11 >> 1))
  {
    sub_1000A2D78((v11 > 1), v1 + 3, 1);
  }

  v13[2] = v1 + 3;
  *(v13 + v10 + 16) = 257;
  sub_10009EF2C(v13);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000777F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v155 = a3;
  v149 = sub_10000368C(&qword_1000EE270, &qword_1000B8858);
  v5 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v150 = &v135[-v6];
  v151 = sub_10000368C(&qword_1000EE278, &qword_1000B8860);
  v145 = *(v151 - 8);
  v7 = *(v145 + 64);
  v8 = __chkstk_darwin(v151);
  v140 = &v135[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v139 = &v135[-v10];
  v141 = sub_10000368C(&qword_1000EE280, &qword_1000B8868);
  v11 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v143 = &v135[-v12];
  v142 = sub_10000368C(&qword_1000EE288, &qword_1000B8870);
  v13 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v138 = &v135[-v14];
  v147 = sub_10000368C(&qword_1000EE290, &qword_1000B8878);
  v15 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v144 = &v135[-v16];
  v154 = sub_10000368C(&qword_1000EE298, &qword_1000B8880);
  v17 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v148 = &v135[-v18];
  v19 = type metadata accessor for Image.ResizingMode();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v135[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = sub_10000368C(&qword_1000EE2A0, &qword_1000B8888);
  v24 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v146 = &v135[-v25];
  v152 = sub_10000368C(&qword_1000EE2A8, &qword_1000B8890);
  v26 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v153 = &v135[-v27];
  v28 = type metadata accessor for EnvironmentValues();
  v157 = *(v28 - 8);
  v158 = v28;
  v29 = *(v157 + 64);
  __chkstk_darwin(v28);
  v31 = &v135[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v32 = a1;
  v160 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v157 + 8))(v31, v158);
    v32 = v165;
  }

  swift_getKeyPath();
  *&v165 = v32;
  v159 = sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = *(v32 + 24);
  v35 = *(v32 + 32);
  v36 = *(v32 + 40);
  sub_10000C964(v34, v35, *(v32 + 40));

  if (v36 == 2 && !(v35 | v34))
  {
    KeyPath = swift_getKeyPath();
    v38 = [objc_allocWithZone(ISIcon) initWithType:CRSNowPlayingIconIdentifier];
    v39 = v153;
    *v153 = KeyPath;
    *(v39 + 8) = 0;
    v39[2] = v38;
    swift_storeEnumTagMultiPayload();
    sub_100079D04();
    sub_100079D58(&qword_1000EE318, &qword_1000EE298, &qword_1000B8880, sub_100079C1C);
    return _ConditionalContent<>.init(storage:)();
  }

  sub_10000C9C0(v34, v35, v36);

  v41 = a1;
  if ((v160 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v157 + 8))(v31, v158);
    v41 = v165;
  }

  swift_getKeyPath();
  *&v165 = v41;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v41 + 24);
  v44 = *(v41 + 32);
  v45 = *(v41 + 40);
  sub_10000C964(v43, v44, v45);

  sub_100009930(v43, v44, v45);
  sub_10000C9C0(v43, v44, v45);
  Image.init(uiImage:)();
  (*(v20 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v19);
  v137 = Image.resizable(capInsets:resizingMode:)();

  (*(v20 + 8))(v23, v19);

  v46 = a1;
  if ((v160 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v157 + 8))(v31, v158);
    v46 = v165;
  }

  v48 = 0x6D696E694D616364;
  swift_getKeyPath();
  *&v165 = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = *(v46 + 17);

  v50 = 0xE400000000000000;
  v51 = 0x756964654D616364;
  v52 = 0xE90000000000006DLL;
  if (v49 != 5)
  {
    v51 = 0x6C6C6154616364;
    v52 = 0xE700000000000000;
  }

  v53 = 0xEA00000000006C61;
  if (v49 != 3)
  {
    v53 = 0xEE00656469576C61;
  }

  if (v49 <= 4)
  {
    v51 = 0x6D696E694D616364;
    v52 = v53;
  }

  v54 = 0x4D646E417370616DLL;
  v55 = 0xEC00000061696465;
  if (v49 != 1)
  {
    v54 = 0xD000000000000010;
    v55 = 0x80000001000BAEF0;
  }

  if (v49)
  {
    v50 = v55;
  }

  else
  {
    v54 = 1701736302;
  }

  if (v49 <= 2)
  {
    v56 = v54;
  }

  else
  {
    v56 = v51;
  }

  if (v49 <= 2)
  {
    v57 = v50;
  }

  else
  {
    v57 = v52;
  }

  if (v56 == 0x6D696E694D616364 && v57 == 0xEA00000000006C61)
  {
    goto LABEL_29;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
    v136 = 1;
    goto LABEL_33;
  }

  if (v49 <= 2)
  {
    v129 = 0x4D646E417370616DLL;
    v130 = 0xEC00000061696465;
    if (v49 != 1)
    {
      v129 = 0xD000000000000010;
      v130 = 0x80000001000BAEF0;
    }

    v128 = v49 ? v129 : 1701736302;
    v127 = v49 ? v130 : 0xE400000000000000;
  }

  else if (v49 > 4)
  {
    if (v49 == 5)
    {
      v128 = 0x756964654D616364;
      v127 = 0xE90000000000006DLL;
    }

    else
    {
      v127 = 0xE700000000000000;
      v128 = 0x6C6C6154616364;
    }
  }

  else
  {
    v127 = v49 == 3 ? 0xEA00000000006C61 : 0xEE00656469576C61;
    v128 = 0x6D696E694D616364;
  }

  if (v128 == 0x6D696E694D616364 && v127 == 0xEE00656469576C61)
  {
LABEL_29:
    v136 = 1;
  }

  else
  {
    v136 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_33:

  v59 = a1;
  if ((v160 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v60 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v157 + 8))(v31, v158);
    v59 = v165;
  }

  swift_getKeyPath();
  *&v165 = v59;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v61 = *(v59 + 17);

  v62 = 0xE400000000000000;
  v63 = 0x756964654D616364;
  v64 = 0xE90000000000006DLL;
  if (v61 != 5)
  {
    v63 = 0x6C6C6154616364;
    v64 = 0xE700000000000000;
  }

  v65 = 0xEA00000000006C61;
  if (v61 != 3)
  {
    v65 = 0xEE00656469576C61;
  }

  if (v61 <= 4)
  {
    v63 = 0x6D696E694D616364;
    v64 = v65;
  }

  v66 = 0x4D646E417370616DLL;
  v67 = 0xEC00000061696465;
  if (v61 != 1)
  {
    v66 = 0xD000000000000010;
    v67 = 0x80000001000BAEF0;
  }

  if (v61)
  {
    v62 = v67;
  }

  else
  {
    v66 = 1701736302;
  }

  if (v61 <= 2)
  {
    v68 = v66;
  }

  else
  {
    v68 = v63;
  }

  if (v61 <= 2)
  {
    v69 = v62;
  }

  else
  {
    v69 = v64;
  }

  if (v68 == 0x6D696E694D616364 && v69 == 0xEA00000000006C61)
  {
    goto LABEL_56;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v70)
  {
    goto LABEL_58;
  }

  if (v61 <= 2)
  {
    v132 = 0x4D646E417370616DLL;
    v133 = 0xEC00000061696465;
    if (v61 != 1)
    {
      v132 = 0xD000000000000010;
      v133 = 0x80000001000BAEF0;
    }

    v48 = v61 ? v132 : 1701736302;
    v131 = v61 ? v133 : 0xE400000000000000;
  }

  else if (v61 > 4)
  {
    if (v61 == 5)
    {
      v48 = 0x756964654D616364;
      v131 = 0xE90000000000006DLL;
    }

    else
    {
      v131 = 0xE700000000000000;
      v48 = 0x6C6C6154616364;
    }
  }

  else
  {
    v131 = v61 == 3 ? 0xEA00000000006C61 : 0xEE00656469576C61;
  }

  if (v48 == 0x6D696E694D616364 && v131 == 0xEE00656469576C61)
  {
LABEL_56:

LABEL_58:

    v71 = a1;
    if ((v160 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v72 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v157 + 8))(v31, v158);
      v71 = v165;
    }

    swift_getKeyPath();
    *&v165 = v71;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v73 = *(v71 + 17);

    goto LABEL_61;
  }

  v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v134)
  {
    goto LABEL_58;
  }

LABEL_61:

  v74 = a1;
  if ((v160 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v75 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v157 + 8))(v31, v158);
    v74 = v165;
  }

  swift_getKeyPath();
  *&v165 = v74;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v76 = *(v74 + 17);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v163[54] = v168;
  *&v163[70] = v169;
  *&v163[86] = v170;
  *&v163[102] = v171;
  *&v163[6] = v165;
  *&v163[22] = v166;
  v164 = 1;
  v77 = v136 & 1;
  v78 = v146;
  v79 = &v146[*(v156 + 36)];
  *&v163[38] = v167;
  v80 = *(type metadata accessor for RoundedRectangle() + 20);
  v81 = enum case for RoundedCornerStyle.continuous(_:);
  v82 = type metadata accessor for RoundedCornerStyle();
  (*(*(v82 - 8) + 104))(&v79[v80], v81, v82);
  __asm { FMOV            V0.2D, #6.0 }

  *v79 = _Q0;
  *&v79[*(sub_10000368C(&qword_1000EBB38, &qword_1000B4B80) + 36)] = 256;
  *(v78 + 82) = *&v163[64];
  v88 = *&v163[96];
  *(v78 + 98) = *&v163[80];
  *(v78 + 114) = v88;
  v89 = *&v163[16];
  *(v78 + 18) = *v163;
  *(v78 + 34) = v89;
  v90 = *&v163[48];
  *(v78 + 50) = *&v163[32];
  *v78 = v137;
  *(v78 + 8) = 0;
  *(v78 + 16) = 1;
  *(v78 + 17) = v77;
  *(v78 + 128) = *&v163[110];
  *(v78 + 66) = v90;
  *(v78 + 136) = 0;

  v91 = a1;
  if ((v160 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v92 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v157 + 8))(v31, v158);
    v91 = v161;
  }

  swift_getKeyPath();
  v161 = v91;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v93 = *(v91 + 17);

  if ((v93 - 3) >= 4)
  {
    sub_10000368C(&qword_1000EE2B0, &qword_1000B88F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B5700;
    v108 = static Axis.Set.horizontal.getter();
    *(inited + 32) = v108;
    v109 = static Axis.Set.vertical.getter();
    *(inited + 33) = v109;
    Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    v110 = Axis.Set.init(rawValue:)();
    v111 = v156;
    if (v110 != v108)
    {
      Axis.Set.init(rawValue:)();
    }

    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v109)
    {
      Axis.Set.init(rawValue:)();
    }

    v112 = swift_allocObject();
    *(v112 + 16) = a1;
    *(v112 + 24) = v160 & 1;

    static Alignment.center.getter();
    v113 = sub_100079A20();
    v114 = v140;
    View.containerRelativeFrame(_:alignment:_:)();

    v115 = v145;
    v116 = v151;
    (*(v145 + 16))(v150, v114, v151);
    swift_storeEnumTagMultiPayload();
    sub_100079C1C();
    v161 = v111;
    v162 = v113;
    swift_getOpaqueTypeConformance2();
    v117 = v148;
    _ConditionalContent<>.init(storage:)();
    (*(v115 + 8))(v114, v116);
  }

  else
  {

    v94 = a1;
    v95 = v156;
    if ((v160 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v96 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v157 + 8))(v31, v158);
      v94 = v161;
    }

    swift_getKeyPath();
    v161 = v94;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v97 = *(v94 + 16);

    if (v97 == 1)
    {
      v98 = static Alignment.center.getter();
      v100 = v99;
      sub_1000794E4(a1, v160 & 1, &v161);
      v101 = v161;
      v102 = v162;
      v103 = v138;
      sub_1000077CC(v78, v138, &qword_1000EE2A0, &qword_1000B8888);
      v104 = &v103[*(v142 + 36)];
      *v104 = v101;
      v104[1] = v102;
      v104[2] = v98;
      v104[3] = v100;
      sub_1000077CC(v103, v143, &qword_1000EE288, &qword_1000B8870);
      swift_storeEnumTagMultiPayload();
      sub_100079C4C();
      v105 = sub_100079A20();
      v161 = v95;
      v162 = v105;
      swift_getOpaqueTypeConformance2();
      v106 = v144;
      _ConditionalContent<>.init(storage:)();
      sub_100007834(v103, &qword_1000EE288, &qword_1000B8870);
    }

    else
    {
      v118 = static Axis.Set.vertical.getter();
      Axis.Set.init(rawValue:)();
      Axis.Set.init(rawValue:)();
      if (Axis.Set.init(rawValue:)() != v118)
      {
        Axis.Set.init(rawValue:)();
      }

      v119 = swift_allocObject();
      *(v119 + 16) = a1;
      *(v119 + 24) = v160 & 1;

      static Alignment.center.getter();
      v120 = sub_100079A20();
      v121 = v139;
      v122 = v156;
      View.containerRelativeFrame(_:alignment:_:)();

      v123 = v145;
      v124 = v151;
      (*(v145 + 16))(v143, v121, v151);
      swift_storeEnumTagMultiPayload();
      sub_100079C4C();
      v161 = v122;
      v162 = v120;
      swift_getOpaqueTypeConformance2();
      v106 = v144;
      _ConditionalContent<>.init(storage:)();
      v125 = v121;
      v95 = v122;
      (*(v123 + 8))(v125, v124);
    }

    sub_1000077CC(v106, v150, &qword_1000EE290, &qword_1000B8878);
    swift_storeEnumTagMultiPayload();
    sub_100079C1C();
    v126 = sub_100079A20();
    v161 = v95;
    v162 = v126;
    swift_getOpaqueTypeConformance2();
    v117 = v148;
    _ConditionalContent<>.init(storage:)();
    sub_100007834(v106, &qword_1000EE290, &qword_1000B8878);
  }

  sub_1000077CC(v117, v153, &qword_1000EE298, &qword_1000B8880);
  swift_storeEnumTagMultiPayload();
  sub_100079D04();
  sub_100079D58(&qword_1000EE318, &qword_1000EE298, &qword_1000B8880, sub_100079C1C);
  _ConditionalContent<>.init(storage:)();
  sub_100007834(v117, &qword_1000EE298, &qword_1000B8880);
  return sub_100007834(v78, &qword_1000EE2A0, &qword_1000B8888);
}

uint64_t sub_10007930C(double a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Axis.rawValue.getter();
  result = Axis.rawValue.getter();
  if (v12 == result)
  {

    if ((a4 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v8 + 8))(v11, v7);
      a3 = v18;
    }

    swift_getKeyPath();
    v18 = a3;
    sub_100007530();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(a3 + 17);

    v16 = dbl_1000B5A60[(v15 - 1) < 2] * a1;
  }

  return result;
}

uint64_t sub_1000794E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, id (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v21;
  }

  swift_getKeyPath();
  v21 = a1;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(a1 + 48);

  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v19 = *(v18 + 40);
    v16 = v19;
    swift_unknownObjectRelease();
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);

    v15 = *(v14 + 40);
    v16 = v15;

    if (v15)
    {
LABEL_8:
      result = swift_allocObject();
      *(result + 16) = v16;
      v17 = sub_100079E78;
LABEL_12:
      *a3 = v17;
      a3[1] = result;
      return result;
    }

LABEL_11:
    v17 = 0;
    result = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_10007975C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = a1;
  __asm { FMOV            V0.2D, #-3.0 }

  *(a2 + 8) = _Q0;
  *(a2 + 24) = v10;
  *(a2 + 40) = v11;
  *(a2 + 56) = v12;

  return a1;
}

double sub_100079810(double a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v7);
    a3 = v16;
  }

  swift_getKeyPath();
  v16 = a3;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(a3 + 17);

  return dbl_1000B5A60[(v13 - 1) < 2] * a1;
}

uint64_t sub_1000799D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100079A20()
{
  result = qword_1000EE2B8;
  if (!qword_1000EE2B8)
  {
    sub_100005780(&qword_1000EE2A0, &qword_1000B8888);
    sub_100079AD8();
    sub_100005870(&qword_1000EBB48, &qword_1000EBB38, &qword_1000B4B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2B8);
  }

  return result;
}

unint64_t sub_100079AD8()
{
  result = qword_1000EE2C0;
  if (!qword_1000EE2C0)
  {
    sub_100005780(&qword_1000EE2C8, &qword_1000B88F8);
    sub_100079B90();
    sub_100005870(&qword_1000EE2E0, &qword_1000EE2E8, &qword_1000B8910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2C0);
  }

  return result;
}

unint64_t sub_100079B90()
{
  result = qword_1000EE2D0;
  if (!qword_1000EE2D0)
  {
    sub_100005780(&qword_1000EE2D8, &unk_1000B8900);
    sub_10005BE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2D0);
  }

  return result;
}

unint64_t sub_100079C4C()
{
  result = qword_1000EE2F8;
  if (!qword_1000EE2F8)
  {
    sub_100005780(&qword_1000EE288, &qword_1000B8870);
    sub_100079A20();
    sub_100005870(&qword_1000EE300, &qword_1000EE308, &qword_1000B8918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2F8);
  }

  return result;
}

unint64_t sub_100079D04()
{
  result = qword_1000EE310;
  if (!qword_1000EE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE310);
  }

  return result;
}

uint64_t sub_100079D58(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    a4();
    sub_100005780(&qword_1000EE2A0, &qword_1000B8888);
    sub_100079A20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100079E40()
{

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_100079E80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100079E94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100079EDC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_100079F30()
{
  result = qword_1000EE320;
  if (!qword_1000EE320)
  {
    sub_100005780(&qword_1000EE328, &qword_1000B8A20);
    sub_100079D04();
    sub_100079D58(&qword_1000EE318, &qword_1000EE298, &qword_1000B8880, sub_100079C1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE320);
  }

  return result;
}

uint64_t sub_10007A004@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a1;
  v33 = a4;
  v5 = sub_10000368C(&qword_1000EE330, &qword_1000B8A78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-v8];
  v10 = sub_10000368C(&qword_1000EE338, &qword_1000B8A80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28[-v13];
  v15 = sub_10000368C(&qword_1000EE340, &qword_1000B8A88);
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v28[-v18];
  v20 = kISImageDescriptorCarNotification;
  v21 = objc_opt_self();
  v22 = a3;
  v23 = [v21 imageDescriptorNamed:v20];
  AsyncIconLayer.init<>(icon:descriptor:)();
  sub_10007A374(v30, v29 & 1);
  v24 = sub_100005870(&qword_1000EE348, &qword_1000EE330, &qword_1000B8A78);
  View.iconLayerSize(_:)();
  (*(v6 + 8))(v9, v5);
  v34 = v5;
  v35 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.increaseLegibility(_:)();
  (*(v11 + 8))(v14, v10);
  v34 = v10;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v31;
  View.useIconGlassColorScheme(_:)();
  return (*(v32 + 8))(v19, v26);
}

double sub_10007A374(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v9 = v17;
  }

  swift_getKeyPath();
  v17 = v9;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v9 + 17);

  if ((v11 - 3) < 2)
  {
    return 40.0;
  }

  if (v11 != 5)
  {
    return 60.0;
  }

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    a1 = v17;
  }

  swift_getKeyPath();
  v17 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(a1 + 16);

  result = 60.0;
  if (v14)
  {
    return 40.0;
  }

  return result;
}

uint64_t sub_10007A620()
{
  sub_100005780(&qword_1000EE340, &qword_1000B8A88);
  sub_100005780(&qword_1000EE338, &qword_1000B8A80);
  sub_100005780(&qword_1000EE330, &qword_1000B8A78);
  sub_100005870(&qword_1000EE348, &qword_1000EE330, &qword_1000B8A78);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for RadioSettingsViewController()
{
  result = qword_1000EE350;
  if (!qword_1000EE350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007A7C8(char *a1, uint64_t a2)
{
  v5 = sub_10000368C(&qword_1000EE3A0, &qword_1000B8AB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v73 - v7;
  v9 = type metadata accessor for CAFUIAutomakerSettingsSection();
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = *(v84 + 64);
  __chkstk_darwin(v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*&a1[OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus] currentSession];
  if (!v13)
  {
    goto LABEL_60;
  }

  v14 = v13;
  v15 = [*&a1[OBJC_IVAR____TtC5Media15RadioCarManager_carManager] currentCar];
  if (!v15)
  {
    goto LABEL_60;
  }

  v16 = v15;
  v76 = v8;
  v77 = v2;
  v74 = a1;
  v17 = type metadata accessor for CAFUIRequestContentManager();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v75 = v14;
  v82 = CAFUIRequestContentManager.init(session:)();
  v20 = CAFUISettingsCache.categorySettings(for:)();
  v21 = CAFUISettingsCache.categorySettings(for:)();
  v22 = *(v21 + 16);
  v23 = _swiftEmptyArrayStorage;
  v78 = v16;
  v79 = v20;
  v80 = a2;
  v81 = v21;
  if (v22)
  {
    v24 = v21;
    v86 = _swiftEmptyArrayStorage;
    sub_1000A2D98(0, v22, 0);
    v23 = v86;
    v25 = v84 + 16;
    v26 = *(v84 + 16);
    v27 = v24 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v83 = *(v84 + 72);
    v84 = v26;
    v28 = (v25 - 8);
    do
    {
      v29 = v85;
      (v84)(v12, v27, v85);
      v30 = CAFUIAutomakerSettingsSection.settings.getter();
      (*v28)(v12, v29);
      v86 = v23;
      v32 = v23[2];
      v31 = v23[3];
      if (v32 >= v31 >> 1)
      {
        sub_1000A2D98((v31 > 1), v32 + 1, 1);
        v23 = v86;
      }

      v23[2] = v32 + 1;
      v23[v32 + 4] = v30;
      v27 += v83;
      --v22;
    }

    while (v22);
    v20 = v79;
    a2 = v80;
    v16 = v78;
  }

  v33 = sub_10007B28C(v23);
  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = __CocoaSet.count.getter();
  }

  else
  {
    v34 = *(v33 + 16);
  }

  v35 = v81;

  if (!v34 || (type metadata accessor for CAFUITileViewController(), static CAFUITileViewController.collapseCategoryThreshold.getter() >= v34))
  {
  }

  v36 = _swiftEmptyArrayStorage;
  if (!*(v35 + 16))
  {
    v37 = _swiftEmptyArrayStorage;
    if (!*(v20 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v37 = sub_1000A2934(0, 1, 1, _swiftEmptyArrayStorage);
  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1000A2934((v38 > 1), v39 + 1, 1, v37);
  }

  *(v37 + 2) = v39 + 1;
  v37[v39 + 32] = 1;
  v16 = v78;
  if (*(v20 + 16))
  {
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1000A2934(0, *(v37 + 2) + 1, 1, v37);
    }

    v41 = *(v37 + 2);
    v40 = *(v37 + 3);
    if (v41 >= v40 >> 1)
    {
      v37 = sub_1000A2934((v40 > 1), v41 + 1, 1, v37);
    }

    *(v37 + 2) = v41 + 1;
    v37[v41 + 32] = 3;
  }

LABEL_26:
  v42 = type metadata accessor for CAFUISettingsCache();
  v43 = *(v42 - 8);
  v44 = v76;
  (*(v43 + 16))(v76, a2, v42);
  v84 = v43;
  v85 = v42;
  (*(v43 + 56))(v44, 0, 1, v42);
  v45 = qword_1000EAD50;
  v46 = v75;

  if (v45 != -1)
  {
    swift_once();
  }

  v47 = CAFUITileViewController.init(carSession:prominentCategories:listItems:settingsSections:settingsCache:assetManager:requestContentManager:preventVolumeNotification:)();
  v48 = v47;
  v86 = _swiftEmptyArrayStorage;
  if (v34)
  {
    v49 = [v16 audioSettings];
    v50 = CAFUITileViewController.createAudioListItem(audioSettings:)();

    if (v50)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v69 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v36 = v86;
    }

    else
    {
      v36 = _swiftEmptyArrayStorage;
    }

    v57 = v80;
    type metadata accessor for CAFUITileViewController();
    if (static CAFUITileViewController.collapseCategoryThreshold.getter() < v34 && CAFUITileViewController.createRadioListItem()())
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v70 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v36 = v86;
      if (v86 >> 62)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_50:
    if (v36 >> 62)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

  v51 = [v47 navigationItem];
  v52 = CAFUITileViewController.createAudioLogoButtonIfApplicable()();
  [v51 setRightBarButtonItem:v52];

  v53 = [v16 audioSettings];
  if (!v53)
  {
    v57 = v80;
    goto LABEL_50;
  }

  v54 = v53;
  if (CAFUITileViewController.createSoundItem(audioSettings:)())
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v71 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v36 = v86;
  }

  v55 = [v54 volumes];
  sub_100005A50(0, &qword_1000EEBF0, CAFVolume_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = CAFUITileViewController.createVolumeListItem(volumes:)();

  if (v56)
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v57 = v80;
    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v72 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v36 = v86;
  }

  else
  {

    v57 = v80;
  }

  v16 = v78;
  if (v36 >> 62)
  {
LABEL_57:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_51:
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    dispatch thunk of CAFUITileViewController.setListItems(_:)();
  }

LABEL_53:
  v58 = objc_opt_self();
  v59 = v48;
  v60 = [v58 mainBundle];
  v87._object = 0xE000000000000000;
  v61._countAndFlagsBits = 0x45535F414944454DLL;
  v61._object = 0xEE0053474E495454;
  v62.value._countAndFlagsBits = 0x6F69646152;
  v62.value._object = 0xE500000000000000;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v60, v63, v87);

  String.init(format:_:)();

  v64 = String._bridgeToObjectiveC()();

  [v59 setTitle:v64];

  v65 = [v59 tabBarItem];
  if (v65)
  {

    v66 = String._bridgeToObjectiveC()();
    v67 = [objc_opt_self() systemImageNamed:v66];

    [v65 setImage:v67];

    (*(v84 + 8))(v57, v85);
    return v59;
  }

  __break(1u);
LABEL_60:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10007B28C(uint64_t a1)
{
  sub_100005A50(0, &qword_1000EE3A8, CAFAutomakerSetting_ptr);
  sub_10007D76C();
  result = Set.init(minimumCapacity:)();
  v6 = 0;
  v8 = result;
LABEL_12:
  while (1)
  {
    v4 = *(a1 + 16);
    if (v6 == v4)
    {
      break;
    }

    if (v6 >= v4)
    {
      goto LABEL_19;
    }

    v5 = *(a1 + 32 + 8 * v6);

    ++v6;
    if (v5)
    {
      v3 = 0;
      if (v5 >> 62)
      {
        goto LABEL_9;
      }

      while (1)
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3 == result)
        {
          break;
        }

        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            result = *(v5 + 8 * v3 + 32);
          }

          if (__OFADD__(v3, 1))
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
            return result;
          }

          sub_10007B7BC(&v7, result, &qword_1000EE3A8, CAFAutomakerSetting_ptr, &qword_1000EE3B8, &qword_1000B8AB8);

          ++v3;
          if (!(v5 >> 62))
          {
            break;
          }

LABEL_9:
          result = _CocoaArrayWrapper.endIndex.getter();
          if (v3 == result)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  return v8;
}

id sub_10007B470()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioSettingsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007B4B0(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_10002F414();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v32 = ~v7;
    while (1)
    {
      v9 = *(*(v4 + 48) + v8);
      if (v9 > 3)
      {
        if (*(*(v4 + 48) + v8) > 5u)
        {
          if (v9 == 6)
          {
            v14 = 0xD000000000000021;
            v15 = 0x80000001000BAE60;
          }

          else
          {
            v14 = 0xD00000000000001ELL;
            v15 = 0x80000001000BAE90;
          }
        }

        else
        {
          v14 = v9 == 4 ? 0x657A696C616E6966 : 0xD00000000000001FLL;
          v15 = v9 == 4 ? 0xE900000000000064 : 0x80000001000BAE40;
        }
      }

      else
      {
        if (v9 == 2)
        {
          v10 = 0x656E656373;
        }

        else
        {
          v10 = 0x64657265646E6572;
        }

        if (v9 == 2)
        {
          v11 = 0xE500000000000000;
        }

        else
        {
          v11 = 0xE800000000000000;
        }

        v12 = 0xE90000000000006ELL;
        if (*(*(v4 + 48) + v8))
        {
          v13 = 0x4F746E6174736E69;
        }

        else
        {
          v13 = 0x646568636E75616CLL;
        }

        if (!*(*(v4 + 48) + v8))
        {
          v12 = 0xE800000000000000;
        }

        v14 = *(*(v4 + 48) + v8) <= 1u ? v13 : v10;
        v15 = *(*(v4 + 48) + v8) <= 1u ? v12 : v11;
      }

      v16 = 0xD000000000000021;
      if (a2 != 6)
      {
        v16 = 0xD00000000000001ELL;
      }

      v17 = 0x80000001000BAE90;
      if (a2 == 6)
      {
        v17 = 0x80000001000BAE60;
      }

      v18 = 0x657A696C616E6966;
      if (a2 != 4)
      {
        v18 = 0xD00000000000001FLL;
      }

      v19 = 0x80000001000BAE40;
      if (a2 == 4)
      {
        v19 = 0xE900000000000064;
      }

      if (a2 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (a2 == 2)
      {
        v20 = 0x656E656373;
      }

      else
      {
        v20 = 0x64657265646E6572;
      }

      if (a2 == 2)
      {
        v21 = 0xE500000000000000;
      }

      else
      {
        v21 = 0xE800000000000000;
      }

      v22 = 0xE90000000000006ELL;
      if (a2)
      {
        v23 = 0x4F746E6174736E69;
      }

      else
      {
        v23 = 0x646568636E75616CLL;
      }

      if (!a2)
      {
        v22 = 0xE800000000000000;
      }

      if (a2 <= 1u)
      {
        v20 = v23;
        v21 = v22;
      }

      v24 = a2 <= 3u ? v20 : v16;
      v25 = a2 <= 3u ? v21 : v17;
      if (v14 == v24 && v15 == v25)
      {
        break;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_66;
      }

      v8 = (v8 + 1) & v32;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

LABEL_66:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_64:
    v27 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v30;
    sub_10007C718(a2, v8, isUniquelyReferenced_nonNull_native);
    *v30 = v33;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10007B7BC(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_100005A50(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = sub_10007BC70(v15, result + 1, a5, a6, a3, a4);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          sub_10007C474(v29 + 1, a5, a6);
        }

        v30 = v16;
        sub_10007C694(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    sub_100005A50(0, a3, a4);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v27 = a2;
      sub_10007CA54(v27, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v38;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_10007BA30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000368C(&qword_1000EE3C0, &qword_1000B8AC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for TerrestrialRadioStation();
      do
      {
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_10007C1E4(v13 + 1);
        }

        v2 = v19;
        v3 = *(v19 + 40);
        Hasher.init(_seed:)();
        v4 = (v18 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
        swift_beginAccess();
        v6 = *v4;
        v5 = v4[1];

        String.hash(into:)();

        result = Hasher._finalize()();
        v8 = v19 + 56;
        v9 = -1 << *(v19 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v19 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v19 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v19 + 48) + 8 * v12) = v18;
        ++*(v19 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10007BC70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_10000368C(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100005A50(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_10007C474(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

uint64_t sub_10007BE70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000368C(&qword_1000EE3C8, &qword_1000B8AC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10007C1E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000368C(&qword_1000EE3C0, &qword_1000B8AC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = (v18 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      v22 = *v20;
      v21 = v20[1];

      String.hash(into:)();

      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10007C474(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_10000368C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_10007C694(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_10007C718(Swift::Int result, unint64_t a2, char a3)
{
  v37 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (a3)
  {
    sub_10007BE70(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10007CBE4();
      goto LABEL_69;
    }

    sub_10007CFB4(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  result = sub_10002F414();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v36 = ~v9;
    v10 = 0x64657265646E6572;
    v11 = 0x646568636E75616CLL;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 > 3)
      {
        if (*(*(v7 + 48) + a2) > 5u)
        {
          if (v12 == 6)
          {
            v17 = 0xD000000000000021;
            v18 = 0x80000001000BAE60;
          }

          else
          {
            v17 = 0xD00000000000001ELL;
            v18 = 0x80000001000BAE90;
          }
        }

        else
        {
          v17 = v12 == 4 ? 0x657A696C616E6966 : 0xD00000000000001FLL;
          v18 = v12 == 4 ? 0xE900000000000064 : 0x80000001000BAE40;
        }
      }

      else
      {
        if (v12 == 2)
        {
          v13 = 0x656E656373;
        }

        else
        {
          v13 = v10;
        }

        if (v12 == 2)
        {
          v14 = 0xE500000000000000;
        }

        else
        {
          v14 = 0xE800000000000000;
        }

        v15 = 0xE90000000000006ELL;
        if (*(*(v7 + 48) + a2))
        {
          v16 = 0x4F746E6174736E69;
        }

        else
        {
          v16 = v11;
        }

        if (!*(*(v7 + 48) + a2))
        {
          v15 = 0xE800000000000000;
        }

        v17 = *(*(v7 + 48) + a2) <= 1u ? v16 : v13;
        v18 = *(*(v7 + 48) + a2) <= 1u ? v15 : v14;
      }

      v19 = 0xD000000000000021;
      if (v37 != 6)
      {
        v19 = 0xD00000000000001ELL;
      }

      v20 = 0x80000001000BAE90;
      if (v37 == 6)
      {
        v20 = 0x80000001000BAE60;
      }

      v21 = 0x657A696C616E6966;
      if (v37 != 4)
      {
        v21 = 0xD00000000000001FLL;
      }

      v22 = 0x80000001000BAE40;
      if (v37 == 4)
      {
        v22 = 0xE900000000000064;
      }

      if (v37 <= 5u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = v10;
      if (v37 == 2)
      {
        v24 = 0x656E656373;
      }

      else
      {
        v24 = v10;
      }

      if (v37 == 2)
      {
        v25 = 0xE500000000000000;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      v26 = 0xE90000000000006ELL;
      v27 = v11;
      if (v37)
      {
        v11 = 0x4F746E6174736E69;
      }

      else
      {
        v26 = 0xE800000000000000;
      }

      if (v37 <= 1u)
      {
        v24 = v11;
        v25 = v26;
      }

      v28 = v37 <= 3u ? v24 : v19;
      v29 = v37 <= 3u ? v25 : v20;
      if (v17 == v28 && v18 == v29)
      {
        goto LABEL_72;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_73;
      }

      a2 = (a2 + 1) & v36;
      v10 = v23;
      v11 = v27;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_69:
  v31 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v31 + 48) + a2) = v37;
  v32 = *(v31 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v31 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_72:

LABEL_73:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10007CA54(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_10007C474(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10007CE74(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_10007D560(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_100005A50(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_10007CBE4()
{
  v1 = v0;
  sub_10000368C(&qword_1000EE3C8, &qword_1000B8AC8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10007CD24()
{
  v1 = v0;
  sub_10000368C(&qword_1000EE3C0, &qword_1000B8AC0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10007CE74(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000368C(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_10007CFB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000368C(&qword_1000EE3C8, &qword_1000B8AC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10007D2F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000368C(&qword_1000EE3C0, &qword_1000B8AC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      v19 = (v17 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      v21 = *v19;
      v20 = v19[1];

      String.hash(into:)();

      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10007D560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_10000368C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

unint64_t sub_10007D76C()
{
  result = qword_1000EE3B0;
  if (!qword_1000EE3B0)
  {
    sub_100005A50(255, &qword_1000EE3A8, CAFAutomakerSetting_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE3B0);
  }

  return result;
}

uint64_t sub_10007D7D4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_59:
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for TerrestrialRadioStation();
  sub_10007DD50();
  v4 = Set.init(minimumCapacity:)();
  if (!v2)
  {
    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return v4;
    }

LABEL_7:
    v6 = 0;
    v7 = v1 & 0xC000000000000001;
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v47 = v5;
    v1 += 32;
    v48 = v1;
    v49 = v7;
    while (1)
    {
LABEL_8:
      v2 = v4 & 0xC000000000000001;
      v9 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 < 0)
      {
        v9 = v4;
      }

      v50 = v9;
      while (1)
      {
        if (v7)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = __OFADD__(v6++, 1);
          if (v11)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            goto LABEL_57;
          }

          v10 = *(v1 + 8 * v6);

          v11 = __OFADD__(v6++, 1);
          if (v11)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }
        }

        if (!v2)
        {
          v13 = v8;
          v14 = *(v4 + 40);
          Hasher.init(_seed:)();
          v15 = (v10 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
          swift_beginAccess();
          v16 = *v15;
          v17 = v15[1];

          String.hash(into:)();

          v18 = Hasher._finalize()();
          v19 = ~(-1 << *(v4 + 32));
          for (i = v18 & v19; ((*(v4 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v19)
          {
            v21 = (*(*(v4 + 48) + 8 * i) + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
            swift_beginAccess();
            v22 = *v21 == *v15 && v21[1] == v15[1];
            if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v7 = v49;
              v8 = v13;
              v5 = v47;
              v1 = v48;
              goto LABEL_12;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v2 = *(v4 + 16);
          v24 = *(v4 + 24);

          if (v24 > v2)
          {
            v8 = v13;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10007CD24();
            }

            v7 = v49;
LABEL_47:
            v1 = v48;
LABEL_48:
            *(v4 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
            *(*(v4 + 48) + 8 * i) = v10;
            v34 = *(v4 + 16);
            v11 = __OFADD__(v34, 1);
            v35 = v34 + 1;
            if (v11)
            {
              goto LABEL_58;
            }

            *(v4 + 16) = v35;

            v5 = v47;
            if (v6 != v47)
            {
              goto LABEL_8;
            }

            return v4;
          }

          v25 = v2 + 1;
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_10007C1E4(v25);
          }

          else
          {
            sub_10007D2F8(v25);
          }

          v26 = *(v4 + 40);
          Hasher.init(_seed:)();
          v27 = *v15;
          v28 = v15[1];

          String.hash(into:)();

          v29 = Hasher._finalize()();
          v2 = v4 + 56;
          v30 = -1 << *(v4 + 32);
          i = v29 & ~v30;
          if (((*(v4 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
          {
            v7 = v49;
            v8 = v13;
            goto LABEL_47;
          }

          v31 = ~v30;
          v8 = v13;
          v1 = v48;
          while (1)
          {
            v32 = (*(*(v4 + 48) + 8 * i) + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
            swift_beginAccess();
            v33 = *v32 == *v15 && v32[1] == v15[1];
            if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            i = (i + 1) & v31;
            if (((*(v2 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
            {
              v7 = v49;
              goto LABEL_48;
            }
          }

LABEL_61:
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v12 = __CocoaSet.member(for:)();

        if (!v12)
        {
          break;
        }

        swift_dynamicCast();

LABEL_12:
        if (v6 == v5)
        {
          return v4;
        }
      }

      v36 = __CocoaSet.count.getter();
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_61;
      }

      v37 = v8;
      v38 = sub_10007BA30(v50, v36 + 1);
      v39 = *(v38 + 16);
      if (*(v38 + 24) <= v39)
      {
        sub_10007C1E4(v39 + 1);
      }

      v40 = *(v38 + 40);
      Hasher.init(_seed:)();
      v41 = (v10 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      v43 = *v41;
      v42 = v41[1];

      String.hash(into:)();

      Hasher._finalize()();
      v44 = -1 << *(v38 + 32);
      v45 = _HashTable.nextHole(atOrAfter:)();
      *(v38 + 56 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      *(*(v38 + 48) + 8 * v45) = v10;
      ++*(v38 + 16);

      v4 = v38;
      v7 = v49;
      v8 = v37;
      if (v6 == v5)
      {
        return v4;
      }
    }
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (v5)
  {
    goto LABEL_7;
  }

  return v4;
}

unint64_t sub_10007DD50()
{
  result = qword_1000EDFF8;
  if (!qword_1000EDFF8)
  {
    type metadata accessor for TerrestrialRadioStation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDFF8);
  }

  return result;
}

unint64_t sub_10007DF30(unsigned int a1, uint64_t a2, unint64_t a3)
{
  sub_10001A6C8(46, 0xE100000000000000, a2, a3);
  if (v6)
  {

    result = sub_10007F024(a2, a3);
    if ((result & 0x100000000) == 0)
    {
      v8 = result * a1;
      if ((v8 & 0xFFFFFFFF00000000) == 0)
      {
        v9 = 0;
LABEL_76:
        LOBYTE(v44) = v9;
        return v8 | (v9 << 32);
      }

      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_79:
        v41 = result;
        v13 = _StringObject.sharedUTF8.getter();
        result = v41;
LABEL_13:
        v14 = *v13;
        if (v14 == 43)
        {
          if (v11 < 1)
          {
            goto LABEL_82;
          }

          v23 = v11 - 1;
          if (v11 == 1)
          {
            goto LABEL_65;
          }

          LODWORD(v16) = 0;
          if (v13)
          {
            v24 = v13 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_65;
              }

              v26 = 10 * v16;
              if ((v26 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_65;
              }

              LODWORD(v16) = v26 + v25;
              if (__CFADD__(v26, v25))
              {
                goto LABEL_65;
              }

              ++v24;
              if (!--v23)
              {
                goto LABEL_64;
              }
            }
          }
        }

        else if (v14 == 45)
        {
          if (v11 < 1)
          {
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v15 = v11 - 1;
          if (v11 == 1)
          {
            goto LABEL_65;
          }

          LODWORD(v16) = 0;
          if (v13)
          {
            v17 = v13 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v16;
              if ((v19 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v16) = v19 - v18;
              if (v19 < v18)
              {
                break;
              }

              ++v17;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }

LABEL_65:
            LODWORD(v16) = 0;
            LOBYTE(v13) = 1;
          }
        }

        else
        {
          if (!v11)
          {
            goto LABEL_65;
          }

          LODWORD(v16) = 0;
          if (v13)
          {
            while (1)
            {
              v30 = *v13 - 48;
              if (v30 > 9)
              {
                goto LABEL_65;
              }

              v31 = 10 * v16;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_65;
              }

              LODWORD(v16) = v31 + v30;
              if (__CFADD__(v31, v30))
              {
                goto LABEL_65;
              }

              ++v13;
              if (!--v11)
              {
                goto LABEL_64;
              }
            }
          }
        }

LABEL_66:
        v43 = v13;
        v35 = v13;

        if (v35)
        {
          break;
        }

LABEL_74:
        v8 = v16 * a1;
        if ((v8 & 0xFFFFFFFF00000000) == 0)
        {
          v9 = 0;
          LODWORD(v8) = v8 / 0xA;
          goto LABEL_76;
        }
      }
    }

LABEL_67:
    if (qword_1000EACF8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006928(v36, qword_1000F3BB8);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_100043AF0(a2, a3, &v44);
      _os_log_impl(&_mh_execute_header, v37, v38, "Could not convert string to frequency: %s", v39, 0xCu);
      sub_100006960(v40);
    }

    LODWORD(v8) = 0;
    v9 = 1;
    goto LABEL_76;
  }

  v44 = a2;
  v45 = a3;

  String.remove(at:)();

  result = a3;
  v10 = HIBYTE(a3) & 0xF;
  v11 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v45) & 0xF;
  }

  else
  {
    v12 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    goto LABEL_67;
  }

  if ((v45 & 0x1000000000000000) != 0)
  {
    v16 = sub_10007F300(v44, v45, 10);

    if ((v16 & 0x100000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_67;
  }

  if ((v45 & 0x2000000000000000) == 0)
  {
    if ((v44 & 0x1000000000000000) == 0)
    {
      goto LABEL_79;
    }

    v13 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_13;
  }

  v42[0] = v44;
  v42[1] = a3 & 0xFFFFFFFFFFFFFFLL;
  if (v44 != 43)
  {
    if (v44 != 45)
    {
      if (v10)
      {
        LODWORD(v16) = 0;
        v32 = v42;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v16;
          if ((v34 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v16) = v34 + v33;
          if (__CFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v10)
          {
LABEL_64:
            LOBYTE(v13) = 0;
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v10)
    {
      v13 = (v10 - 1);
      if (v10 != 1)
      {
        LODWORD(v16) = 0;
        v20 = v42 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v16;
          if ((v22 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v16) = v22 - v21;
          if (v22 < v21)
          {
            break;
          }

          ++v20;
          if (!--v13)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_81;
  }

  if (v10)
  {
    v13 = (v10 - 1);
    if (v10 != 1)
    {
      LODWORD(v16) = 0;
      v27 = v42 + 1;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v16;
        if ((v29 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v16) = v29 + v28;
        if (__CFADD__(v29, v28))
        {
          break;
        }

        ++v27;
        if (!--v13)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_10007E3C8(double a1, double a2)
{
  v5 = round(a1 * 0.7);
  v6 = round(a2 * 0.7);
  [v2 size];
  v8 = v5 / fmax(v7, 1.0);
  [v2 size];
  v10 = v6 / v9;
  if (v9 < 1.0)
  {
    v10 = v6;
  }

  if (v10 < v8)
  {
    v8 = v10;
  }

  [v2 size];
  v12 = v8 * v11;
  [v2 size];
  *v22 = v12;
  *&v22[1] = v8 * v13;
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = v22;
  *(v15 + 40) = v2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10007FD04;
  *(v16 + 24) = v15;
  v21[4] = sub_10007FD20;
  v21[5] = v16;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10007E700;
  v21[3] = &unk_1000E19C0;
  v17 = _Block_copy(v21);
  v18 = v2;

  v19 = [v14 imageWithActions:v17];

  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return v19;
  }

  __break(1u);
  return result;
}

id sub_10007E5F4(void *a1, double *a2, void *a3, double a4, double a5)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = (a4 - *a2) * 0.5;
  v12 = [objc_opt_self() whiteColor];
  v13 = [v12 colorWithAlphaComponent:0.07];

  [v13 setFill];
  [a1 fillRect:{0.0, 0.0, a4, a5}];

  return [a3 drawInRect:{v11, (a5 - v10) * 0.5, v9, v10}];
}

void sub_10007E700(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

void sub_10007E74C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v69 = a2;
  v7 = type metadata accessor for IndexSet.Index();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  __chkstk_darwin(v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a3;
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() imageNamed:v11];

  v13 = [objc_allocWithZone(UIImageView) initWithImage:v12];
  v14 = v13;
  v15 = [v14 layer];
  v16 = kCAFilterPlusL;
  v17 = objc_allocWithZone(CAFilter);
  v65 = v16;
  v18 = [v17 initWithType:v16];
  [v15 setCompositingFilter:v18];

  v19 = [v14 layer];
  [v19 setAllowsGroupBlending:0];

  [v14 setContentMode:1];
  v20 = &off_1000E7000;
  LODWORD(v21) = 1148846080;
  [v14 setContentHuggingPriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v22];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ((a3 & 1) == 0)
  {
    [v14 setAlpha:0.3];
  }

  v23 = type metadata accessor for IndexSet();
  v24 = sub_10007FC74();
  v25 = dispatch thunk of Collection.count.getter();
  v26 = _swiftEmptyArrayStorage;
  v70 = a1;
  if (v25)
  {
    v27 = v25;
    v74 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v66 = v24;
    dispatch thunk of Collection.startIndex.getter();
    if ((v27 & 0x8000000000000000) == 0)
    {
      v61 = v4;
      v62 = v14;
      v68 = objc_opt_self();
      v28 = 0;
      v67 = UIFontSystemFontDesignRounded;
      while (1)
      {
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_37:
          sub_100005A50(0, &qword_1000ED650, UIView_ptr);

          v50 = _bridgeCocoaArray<A>(_:)();

          goto LABEL_28;
        }

        v71 = (v28 + 1);
        v14 = v27;
        v31 = v23;
        v32 = dispatch thunk of Collection.subscript.read();
        v34 = *v33;
        v32(v73, 0);
        v35 = [objc_allocWithZone(UILabel) init];
        v73[0] = v34;
        dispatch thunk of CustomStringConvertible.description.getter();
        v36 = String._bridgeToObjectiveC()();

        [v35 setText:v36];

        v37 = [v68 systemFontOfSize:v67 weight:12.0 design:UIFontWeightMedium];
        if (!v37)
        {
          goto LABEL_42;
        }

        v38 = v37;
        [v35 setFont:v37];

        v39 = v34 >= 0 && v34 == v69;
        v40 = v39;
        if (!v39)
        {
          break;
        }

        if ((v72 & 1) == 0)
        {
          goto LABEL_20;
        }

        sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
        v41 = static UIColor.cafui_HDOrangeColor.getter();
LABEL_23:
        [v35 setTextColor:v41];

        if ((v40 | v72))
        {
          v45 = v35;
          v46 = [v45 layer];
          v47 = objc_allocWithZone(CAFilter);
          v48 = [v47 initWithType:v65];
          [v46 setCompositingFilter:v48];

          v49 = [v45 layer];
          [v49 setAllowsGroupBlending:0];
        }

        LODWORD(v44) = 1148846080;
        [v35 setContentCompressionResistancePriority:0 forAxis:v44];
        LODWORD(v29) = 1148846080;
        [v35 setContentHuggingPriority:0 forAxis:v29];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v30 = v74[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v23 = v31;
        dispatch thunk of Collection.formIndex(after:)();
        ++v28;
        v27 = v14;
        if (v71 == v14)
        {
          (*(v63 + 8))(v10, v64);
          v26 = v74;
          v14 = v62;
          goto LABEL_26;
        }
      }

      if (v72)
      {
LABEL_20:
        v42 = [objc_opt_self() labelColor];
        v43 = [v42 colorWithAlphaComponent:0.6];
      }

      else
      {
        v42 = [objc_opt_self() whiteColor];
        v43 = [v42 colorWithAlphaComponent:0.3];
      }

      v41 = v43;

      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_26:
  v10 = v23;
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v20 = swift_allocObject();
  *(v20 + 1) = xmmword_1000B4FC0;
  v20[4] = v14;
  if (v26 >> 62)
  {
    goto LABEL_37;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_100005A50(0, &qword_1000ED650, UIView_ptr);
  v50 = v26;
LABEL_28:

  v51 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v73[0] = v20;
  sub_10009F018(v50);
  sub_100005A50(0, &qword_1000ED650, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v53 = [v51 initWithArrangedSubviews:isa];

  v54 = v53;
  [v54 setAxis:0];
  [v54 setDistribution:2];
  [v54 setAlignment:3];
  v55 = [v54 arrangedSubviews];
  v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v56 >> 62))
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
      goto LABEL_30;
    }

LABEL_39:

    (*(*(v10 - 1) + 8))(v70, v10);
    return;
  }

  v57 = _CocoaArrayWrapper.endIndex.getter();
  if (!v57)
  {
    goto LABEL_39;
  }

LABEL_30:
  if (v57 >= 1)
  {
    for (i = 0; i != v57; ++i)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v59 = *(v56 + 8 * i + 32);
      }

      v60 = v59;
      [v54 setCustomSpacing:v59 afterView:4.0];
    }

    goto LABEL_39;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_10007F024(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_10007F300(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10007F300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10007F87C();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10007F87C()
{
  v0 = String.subscript.getter();
  v4 = sub_10007F8FC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10007F8FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100043F30(v9, 0);
  v12 = sub_10007FA54(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10007FA54(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100076920(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100076920(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10007FC74()
{
  result = qword_1000EE3D8;
  if (!qword_1000EE3D8)
  {
    type metadata accessor for IndexSet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE3D8);
  }

  return result;
}

uint64_t sub_10007FCCC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007FD20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10007FD48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for RadioStationDataSource()
{
  result = qword_1000EE400;
  if (!qword_1000EE400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_10007FE10(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + qword_1000EE3F0) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v5 = type metadata accessor for RadioStationDataSourceStorage();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_10002D108(a1);
  *(v2 + qword_1000EE3E8) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100081308;
  *(v9 + 24) = v8;
  swift_retain_n();
  v10 = a2;
  v11 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v12 = *&v11[qword_1000EE3E8];
  swift_unknownObjectWeakAssign();
  type metadata accessor for RadioStationCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = v11;
  v15 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v10 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v15];

  type metadata accessor for RadioCategoryFilterCell();
  v16 = swift_getObjCClassFromMetadata();
  v17 = NSStringFromClass(v16);
  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v10 registerClass:v16 forCellWithReuseIdentifier:v17];

  type metadata accessor for RadioGenreCell();
  v18 = swift_getObjCClassFromMetadata();
  v19 = NSStringFromClass(v18);
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [v10 registerClass:v18 forCellWithReuseIdentifier:v19];

  type metadata accessor for RadioSectionHeaderView();
  v20 = swift_getObjCClassFromMetadata();
  v21 = UICollectionElementKindSectionHeader;
  v22 = NSStringFromClass(v20);
  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  [v10 registerClass:v20 forSupplementaryViewOfKind:v21 withReuseIdentifier:v22];

  [v10 setDataSource:v14];

  return v14;
}