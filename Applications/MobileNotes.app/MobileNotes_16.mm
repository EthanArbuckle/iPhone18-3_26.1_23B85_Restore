uint64_t sub_1002977AC(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_10015DA04(&unk_1006C1710);
  v9 = __chkstk_darwin(v8 - 8);
  v89 = (&v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v88 = &v81 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v81 - v14;
  __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = type metadata accessor for Date();
  v83 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v91 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v93 = &v81 - v22;
  v23 = __chkstk_darwin(v21);
  v92 = &v81 - v24;
  __chkstk_darwin(v23);
  v97 = &v81 - v25;
  v98 = _s6ObjectVMa(0);
  v26 = __chkstk_darwin(v98);
  v85 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v94 = &v81 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v81 - v31;
  result = __chkstk_darwin(v30);
  v96 = (&v81 - v34);
  v36 = *(v35 + 72);
  if (!v36)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_90;
  }

  v37 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_91;
  }

  v38 = (a2 - a1) / v36;
  v101 = a1;
  v100 = a4;
  v95 = v36;
  if (v38 >= v37 / v36)
  {
    v40 = a2;
    v41 = v37 / v36 * v36;
    v86 = v40;
    if (a4 < v40 || v40 + v41 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v36 = v95;
      v43 = v88;
      v42 = v89;
    }

    else
    {
      v43 = v88;
      v42 = v89;
      if (a4 != v40)
      {
        swift_arrayInitWithTakeBackToFront();
        v36 = v95;
      }
    }

    v63 = a4 + v41;
    if (v41 >= 1)
    {
      v87 = a4;
      v64 = -v36;
      v96 = (v83 + 6);
      v97 = -v36;
      v84 = (v83 + 4);
      ++v83;
      v65 = a4 + v41;
      v66 = v85;
      do
      {
        v82 = v63;
        v67 = v86;
        v86 += v64;
        v92 = v67;
        while (1)
        {
          if (v67 <= a1)
          {
            v101 = v67;
            v99 = v82;
            goto LABEL_88;
          }

          v69 = a3;
          v90 = v63;
          v95 = v65 + v64;
          v70 = v94;
          sub_10029865C(v65 + v64, v94);
          sub_10029865C(v86, v66);
          sub_100239F98(v70 + *(v98 + 36), v43);
          v71 = *v96;
          if ((*v96)(v43, 1, v18) == 1)
          {
            static Date.distantPast.getter();
            if (v71(v43, 1, v18) != 1)
            {
              sub_1000073B4(v43, &unk_1006C1710);
            }
          }

          else
          {
            (*v84)(v93, v43, v18);
          }

          sub_100239F98(v66 + *(v98 + 36), v42);
          if (v71(v42, 1, v18) == 1)
          {
            v72 = v91;
            static Date.distantPast.getter();
            if (v71(v42, 1, v18) != 1)
            {
              sub_1000073B4(v42, &unk_1006C1710);
            }
          }

          else
          {
            v72 = v91;
            (*v84)(v91, v42, v18);
          }

          sub_100296010(&qword_1006C1720, &type metadata accessor for Date);
          v73 = v93;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v74 = *(v94 + 2) == *(v66 + 16) && *(v94 + 3) == *(v66 + 24) ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
            v76 = v91;
          }

          else
          {
            v75 = static Date.> infix(_:_:)();
            v76 = v72;
            v74 = v75;
          }

          v77 = v73;
          a3 = &v69[v97];
          v78 = *v83;
          (*v83)(v76, v18);
          v78(v77, v18);
          v66 = v85;
          sub_1002986C0(v85);
          sub_1002986C0(v94);
          if (v74)
          {
            break;
          }

          v79 = v95;
          v63 = v95;
          if (v69 < v65 || a3 >= v65)
          {
            v68 = v95;
            swift_arrayInitWithTakeFrontToBack();
            v63 = v68;
            v43 = v88;
            v42 = v89;
          }

          else
          {
            v43 = v88;
            v42 = v89;
            if (v69 != v65)
            {
              v80 = v95;
              swift_arrayInitWithTakeBackToFront();
              v63 = v80;
            }
          }

          v65 = v63;
          v64 = v97;
          v67 = v92;
          if (v79 <= v87)
          {
            v86 = v92;
            goto LABEL_87;
          }
        }

        if (v69 < v92 || a3 >= v92)
        {
          swift_arrayInitWithTakeFrontToBack();
          v43 = v88;
          v42 = v89;
        }

        else
        {
          v43 = v88;
          v42 = v89;
          if (v69 != v92)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v63 = v90;
        v64 = v97;
      }

      while (v65 > v87);
    }

LABEL_87:
    v101 = v86;
    v99 = v63;
  }

  else
  {
    v39 = v38 * v36;
    if (a4 < a1 || a1 + v39 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v93 = (a4 + v39);
    v99 = a4 + v39;
    if (v39 >= 1 && a2 < a3)
    {
      v45 = (v83 + 6);
      v88 = (v83 + 1);
      v89 = (v83 + 4);
      v90 = a3;
      v91 = v17;
      v94 = v32;
      v87 = v15;
      do
      {
        v46 = v96;
        sub_10029865C(a2, v96);
        sub_10029865C(a4, v32);
        sub_100239F98(v46 + *(v98 + 36), v17);
        v47 = *v45;
        if ((*v45)(v17, 1, v18) == 1)
        {
          static Date.distantPast.getter();
          if (v47(v17, 1, v18) != 1)
          {
            sub_1000073B4(v17, &unk_1006C1710);
          }
        }

        else
        {
          (*v89)(v97, v17, v18);
        }

        sub_100239F98(&v32[*(v98 + 36)], v15);
        if (v47(v15, 1, v18) == 1)
        {
          v48 = v92;
          static Date.distantPast.getter();
          v49 = v47(v15, 1, v18);
          v50 = v48;
          if (v49 != 1)
          {
            sub_1000073B4(v15, &unk_1006C1710);
          }
        }

        else
        {
          v50 = v92;
          (*v89)(v92, v15, v18);
        }

        sub_100296010(&qword_1006C1720, &type metadata accessor for Date);
        v51 = v97;
        v52 = a4;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v32 = v94;
          if (v96[2] == *(v94 + 2) && v96[3] == *(v94 + 3))
          {
            v53 = a2;
            v54 = *v88;
            (*v88)(v50, v18);
            v54(v97, v18);
            sub_1002986C0(v32);
            sub_1002986C0(v96);
            goto LABEL_40;
          }

          v53 = a2;
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v56 = v50;
          v57 = v58;
          v51 = v97;
        }

        else
        {
          v53 = a2;
          v55 = static Date.> infix(_:_:)();
          v56 = v50;
          v57 = v55;
        }

        v59 = *v88;
        (*v88)(v56, v18);
        v59(v51, v18);
        v32 = v94;
        sub_1002986C0(v94);
        sub_1002986C0(v96);
        if (v57)
        {
          v60 = v53;
          v61 = v95;
          a2 = v53 + v95;
          if (a1 < v53 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v61 = v95;
            a4 = v52;
          }

          else
          {
            a4 = v52;
            if (a1 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v61 = v95;
            }
          }

          goto LABEL_48;
        }

LABEL_40:
        v61 = v95;
        v62 = v52 + v95;
        a2 = v53;
        if (a1 < v52 || a1 >= v62)
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_45;
        }

        if (a1 != v52)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_45:
          v61 = v95;
        }

        v100 = v62;
        a4 = v62;
LABEL_48:
        v15 = v87;
        a1 += v61;
        v101 = a1;
        v17 = v91;
      }

      while (a4 < v93 && a2 < v90);
    }
  }

LABEL_88:
  sub_10049FBC0(&v101, &v100, &v99);
  return 1;
}

void sub_1002982F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = _s6ObjectVMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  Hasher._combine(_:)(v14);
  if (v14)
  {
    v15 = *(v10 + 36);
    v24 = &v13[*(v10 + 40)];
    v25 = v15;
    v16 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v23 = *(v11 + 72);
    v17 = (v5 + 48);
    v20 = (v5 + 8);
    v21 = (v5 + 32);
    do
    {
      sub_10029865C(v16, v13);
      NSObject.hash(into:)();
      v18 = *(v13 + 1);
      if (v18)
      {
        Hasher._combine(_:)(1u);
        sub_1002982F0(a1, v18);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v13[48]);
      sub_100239F98(&v13[v25], v9);
      if ((*v17)(v9, 1, v4) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v19 = v22;
        (*v21)(v22, v9, v4);
        Hasher._combine(_:)(1u);
        sub_100296010(&qword_1006C1238, &type metadata accessor for Date);
        dispatch thunk of Hashable.hash(into:)();
        (*v20)(v19, v4);
      }

      if (*(v24 + 1))
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      sub_1002986C0(v13);
      v16 += v23;
      --v14;
    }

    while (v14);
  }
}

uint64_t sub_10029865C(uint64_t a1, uint64_t a2)
{
  v4 = _s6ObjectVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002986C0(uint64_t a1)
{
  v2 = _s6ObjectVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_10029871C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_10015DA04(&qword_1006C1240);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  sub_1000054A4(0, &qword_1006C1730);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 8);
  v15 = *(a2 + 8);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = sub_1001CFE0C(v14, v15);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v29 = _s6ObjectVMa(0);
  v17 = *(v29 + 36);
  v18 = *(v11 + 48);
  sub_100239F98(a1 + v17, v13);
  sub_100239F98(a2 + v17, &v13[v18]);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_100239F98(v13, v10);
    if (v19(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      sub_100296010(&qword_1006C1720, &type metadata accessor for Date);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v10, v4);
      sub_1000073B4(v13, &unk_1006C1710);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_23;
    }

    (*(v5 + 8))(v10, v4);
LABEL_19:
    sub_1000073B4(v13, &qword_1006C1240);
    return 0;
  }

  if (v19(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_19;
  }

  sub_1000073B4(v13, &unk_1006C1710);
LABEL_23:
  v23 = *(v29 + 40);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    return v27 && (*v24 == *v26 && v25 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v27;
}

void sub_100298B60()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 folders];
    sub_1000054A4(0, &qword_1006BF450);
    sub_100005B0C(&qword_1006BF458, &qword_1006BF450);
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = [v1 hashtags];
    sub_1000054A4(0, &qword_1006C63E0);
    sub_100005B0C(&qword_1006C1770, &qword_1006C63E0);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100361474(v3);
    v7 = v6;

    sub_100361490(v5);
    v9 = v8;

    sub_10019A07C(v9, v7);
    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 foldersInFolder];
    sub_1000054A4(0, &qword_1006BF450);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = [v11 notes];
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = _swiftEmptyArrayStorage;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v15 + 56);
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    while (1)
    {
      v22 = v21;
      if (!v19)
      {
        break;
      }

LABEL_11:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      sub_100024F40(*(v15 + 48) + 40 * (v23 | (v21 << 6)), v114);
      v24.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_100024F9C(v114);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = _swiftEmptyArrayStorage;
      }

      else
      {
      }
    }

    while (1)
    {
      v21 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_107;
      }

      if (v21 >= v20)
      {
        break;
      }

      v19 = *(v15 + 56 + 8 * v21);
      ++v22;
      if (v19)
      {
        goto LABEL_11;
      }
    }

    if (v13 >> 62)
    {
      goto LABEL_110;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000054A4(0, &qword_1006C1B60);
    v25 = v13;
    goto LABEL_18;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (!v36)
    {
      return;
    }

    v37 = v36;
    v38 = [v36 media];
    if (v38)
    {
      v39 = v38;
      sub_10015DA04(&unk_1006BD390);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100534670;
      *(v40 + 32) = v39;
    }

    else
    {
      v40 = _swiftEmptyArrayStorage;
    }

    v73 = [v37 subAttachments];
    if (v73)
    {
      v74 = v73;
      sub_1000054A4(0, &unk_1006C2C90);
      sub_100005B0C(&qword_1006C9020, &unk_1006C2C90);
      v75 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100456520(_swiftEmptyArrayStorage);
      v75 = v103;
    }

    else
    {
      v75 = &_swiftEmptySetSingleton;
    }

    v76 = [v37 inlineAttachments];
    if (v76)
    {
      v77 = v76;
      sub_1000054A4(0, &qword_1006C26A8);
      sub_100005B0C(&qword_1006C26B0, &qword_1006C26A8);
      v78 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100456830(_swiftEmptyArrayStorage);
      v78 = v104;
    }

    else
    {
      v78 = &_swiftEmptySetSingleton;
    }

    v79 = [v37 previewImages];
    if (v79)
    {
      v105 = v78;
      v106 = v75;
      v80 = v79;
      v81 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = 1 << *(v81 + 32);
      v83 = -1;
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      v84 = v83 & *(v81 + 56);
      v85 = (v82 + 63) >> 6;

      v86 = 0;
      v16 = &ICQUIInAppMessageReasonUploadFailure_ptr;
      while (1)
      {
        v87 = v86;
        if (!v84)
        {
          break;
        }

LABEL_91:
        v88 = __clz(__rbit64(v84));
        v84 &= v84 - 1;
        sub_100024F40(*(v81 + 48) + 40 * (v88 | (v86 << 6)), v114);
        v89.isa = AnyHashable._bridgeToObjectiveC()().isa;
        sub_100024F9C(v114);
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
        }
      }

      while (1)
      {
        v86 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_109;
        }

        if (v86 >= v85)
        {
          break;
        }

        v84 = *(v81 + 56 + 8 * v86);
        ++v87;
        if (v84)
        {
          goto LABEL_91;
        }
      }

      v78 = v105;
      v75 = v106;
    }

    if (v40 >> 62)
    {
      sub_1000054A4(0, &qword_1006C1B60);

      v90 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000054A4(0, &qword_1006C1B60);
      v90 = v40;
    }

    v91 = sub_10026F31C(v90);

    sub_1003614AC(v75);
    v93 = v92;

    sub_10019A07C(v93, v91);
    v95 = v94;
    sub_1003614C8(v78);
    v97 = v96;

    sub_10019A07C(v97, v95);
    v99 = v98;
    if (_swiftEmptyArrayStorage >> 62)
    {
      sub_1000054A4(0, &qword_1006C1B60);

      v100 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000054A4(0, &qword_1006C1B60);
      v100 = _swiftEmptyArrayStorage;
    }

    v101 = sub_10019C3DC(v100, v99);

    if ((v101 & 0xC000000000000001) != 0)
    {
      v102 = __CocoaSet.count.getter();
    }

    else
    {
      v102 = *(v101 + 16);
    }

    if (!v102)
    {
    }

    return;
  }

  v16 = v27;
  v28 = [v27 attachments];
  v29 = _swiftEmptyArrayStorage;
  if (!v28)
  {
    goto LABEL_45;
  }

  v30 = v28;
  sub_1000054A4(0, &unk_1006C2C90);
  sub_100005B0C(&qword_1006C9020, &unk_1006C2C90);
  v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v114[0] = _swiftEmptyArrayStorage;
  if ((v31 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v31 = v109;
    v32 = v110;
    v33 = v111;
    v34 = v112;
    v35 = v113;
  }

  else
  {
    v34 = 0;
    v41 = -1 << *(v31 + 32);
    v32 = v31 + 56;
    v33 = ~v41;
    v42 = -v41;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v35 = v43 & *(v31 + 56);
  }

  v44 = (v33 + 64) >> 6;
  while (v31 < 0)
  {
    v51 = __CocoaSet.Iterator.next()();
    if (!v51)
    {
      goto LABEL_44;
    }

    v107 = v51;
    swift_dynamicCast();
    v50 = v108;
    v48 = v34;
    v49 = v35;
    if (!v108)
    {
      goto LABEL_44;
    }

LABEL_42:
    v52 = [v50 parentAttachment];
    if (v52)
    {
      v45 = v52;
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v34 = v48;
    v35 = v49;
  }

  v46 = v34;
  v47 = v35;
  v48 = v34;
  if (v35)
  {
LABEL_38:
    v49 = (v47 - 1) & v47;
    v50 = *(*(v31 + 48) + ((v48 << 9) | (8 * __clz(__rbit64(v47)))));
    if (!v50)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  while (1)
  {
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    if (v48 >= v44)
    {
      break;
    }

    v47 = *(v32 + 8 * v48);
    ++v46;
    if (v47)
    {
      goto LABEL_38;
    }
  }

LABEL_44:
  sub_10019E530();
  v29 = v114[0];
LABEL_45:
  v53 = [v16 inlineAttachments];
  if (!v53)
  {
LABEL_67:
    if (v29 >> 62)
    {
      sub_1000054A4(0, &qword_1006C1B60);

      v70 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000054A4(0, &qword_1006C1B60);
      v70 = v29;
    }

    v71 = sub_10026F31C(v70);

    if (_swiftEmptyArrayStorage >> 62)
    {
      sub_1000054A4(0, &qword_1006C1B60);

      v72 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000054A4(0, &qword_1006C1B60);
      v72 = _swiftEmptyArrayStorage;
    }

    sub_10019C3DC(v72, v71);
    goto LABEL_72;
  }

  v54 = v53;
  v16 = sub_1000054A4(0, &qword_1006C26A8);
  sub_100005B0C(&qword_1006C26B0, &qword_1006C26A8);
  v55 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v55 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v55 = v114[0];
    v56 = v114[1];
    v57 = v114[2];
    v58 = v114[3];
    v59 = v114[4];
  }

  else
  {
    v58 = 0;
    v60 = -1 << *(v55 + 32);
    v56 = v55 + 56;
    v57 = ~v60;
    v61 = -v60;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    else
    {
      v62 = -1;
    }

    v59 = (v62 & *(v55 + 56));
  }

  v63 = (v57 + 64) >> 6;
  while (2)
  {
    if (v55 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v68 = v107, v67 = v58, v16 = v59, !v107))
      {
LABEL_66:
        sub_10019E530();
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    v65 = v58;
    v66 = v59;
    v67 = v58;
    if (v59)
    {
LABEL_60:
      v16 = ((v66 - 1) & v66);
      v68 = *(*(v55 + 48) + ((v67 << 9) | (8 * __clz(__rbit64(v66)))));
      if (!v68)
      {
        goto LABEL_66;
      }

LABEL_64:
      v69 = [v68 parentAttachment];
      if (v69)
      {
        v64 = v69;
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v58 = v67;
      v59 = v16;
      continue;
    }

    break;
  }

  while (1)
  {
    v67 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v67 >= v63)
    {
      goto LABEL_66;
    }

    v66 = *(v56 + 8 * v67);
    ++v65;
    if (v66)
    {
      goto LABEL_60;
    }
  }

LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  sub_1000054A4(0, &qword_1006C1B60);

  v25 = _bridgeCocoaArray<A>(_:)();

LABEL_18:

  v26 = sub_10026F31C(v25);

  sub_10019C3DC(v16, v26);
LABEL_72:
}

uint64_t sub_100299A34(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 localizedName];
LABEL_3:
    v4 = v3;
    goto LABEL_4;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v4 = [v8 displayText];
    if (!v4)
    {
      return 0x67617468736148;
    }

LABEL_4:
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v3 = [v9 title];
    goto LABEL_3;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v4 = [v10 title];
    if (!v4)
    {
      return 1702129486;
    }

    goto LABEL_4;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v4 = [v11 title];
    if (v4)
    {
      goto LABEL_4;
    }

    v3 = [v12 defaultTitle];
    goto LABEL_3;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v3 = [v13 displayText];
    goto LABEL_3;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 0x616964654DLL;
    }

    v4 = [a1 shareTitle];
    if (!v4)
    {
      return 0x7463656A624FLL;
    }

    goto LABEL_4;
  }

  v15 = v14;
  result = [v14 width];
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  v17._countAndFlagsBits = 120;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  result = [v15 height];
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 64;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  result = [v15 scale];
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v21 < 9.22337204e18)
  {
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 11640;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    [v15 appearanceType];
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    return v25;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_100299E6C(void *a1)
{
  if (([a1 needsInitialFetchFromCloud] & 1) != 0 || objc_msgSend(a1, "needsToBeFetchedFromCloud"))
  {
    return 0xD000000000000015;
  }

  if (![a1 hasAllMandatoryFields])
  {
    return 0x63692E6B72616D78;
  }

  if (([a1 needsToBePushedToCloud] & 1) != 0 || objc_msgSend(a1, "needsToBeDeletedFromCloud"))
  {
    return 0xD000000000000013;
  }

  if ([a1 isSharedViaICloud])
  {
    return 0x692E6E6F73726570;
  }

  return 0xD000000000000010;
}

uint64_t sub_100299FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C1710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029A014(uint64_t a1, uint64_t a2)
{
  v4 = _s6ObjectVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10029A188()
{
  result = qword_1006C26E0;
  if (!qword_1006C26E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C26E0);
  }

  return result;
}

void *sub_10029A1D4(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v29 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_1002CB46C(v26, v27, v28, a1);
    v13 = v12;
    v14 = [v12 objectID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_10015DA04(&qword_1006C2760);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1000153F8(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1000153F8(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_1000153F8(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10029A4EC()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C26E8);
  sub_10002597C(v0, qword_1006C26E8);
  return static Logger.hashtag.getter();
}

id sub_10029A538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_opt_self();
  v10 = [v9 sharedContext];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 workerManagedObjectContext];
  }

  else
  {
    v12 = 0;
  }

  *&v4[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_workerContext] = v12;
  v13 = [v9 sharedContext];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 managedObjectContext];
  }

  else
  {
    v15 = 0;
  }

  *&v4[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_viewContext] = v15;
  v16 = &v4[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_deletionMethod];
  *v16 = 0;
  v16[8] = 0;
  v4[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_shouldSendNotification] = 1;
  *&v4[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_viewControllerManager] = a1;
  *&v4[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_window] = a2;
  *&v4[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_eventReporter] = a3;
  *v16 = a4;
  v16[8] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for TagDeletionAlertController();
  return objc_msgSendSuper2(&v18, "init");
}

id sub_10029A700(unint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_shouldSendNotification) = a2;
  sub_10045716C(a1);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_opt_self() alertControllerWithTitle:v5 message:0 preferredStyle:0];

  v7 = sub_10029C320(a1);
  [v6 addAction:v7];
  v8 = sub_10029C80C();
  [v6 addAction:v8];

  return v6;
}

uint64_t sub_10029A860@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v57 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v57 - v14;
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  v18 = [objc_opt_self() sharedContext];
  if (v18)
  {
    v19 = v18;
    v67 = [v18 managedObjectContext];
  }

  else
  {
    v67 = 0;
  }

  v57 = a1 >> 62;
  if (a1 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v6;
  v65 = v5;
  v62 = v9;
  v63 = a3;
  v60 = v17;
  v61 = v15;
  v59 = v12;
  if (v20)
  {
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = a1 & 0xC000000000000001;
      v68 = _swiftEmptyArrayStorage;
      v23 = &selRef_isShowNoteInVirtualSmartFolderURL_;
      v24 = v67;
      v66 = a1;
      while (1)
      {
        if (v22)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v24)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v25 = *(a1 + 8 * v21 + 32);
          if (!v24)
          {
            goto LABEL_9;
          }
        }

        v26 = [v24 v23[486]];
        if (v26)
        {
          v27 = v26;
          objc_opt_self();
          v28 = swift_dynamicCastObjCClass();
          if (v28)
          {
            v29 = v23;
            v30 = [v28 title];
            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v32;

            v34 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_1001CAE70(0, *(v34 + 2) + 1, 1, v34);
            }

            v36 = *(v34 + 2);
            v35 = *(v34 + 3);
            v68 = v34;
            if (v36 >= v35 >> 1)
            {
              v68 = sub_1001CAE70((v35 > 1), v36 + 1, 1, v68);
            }

            v37 = v68;
            *(v68 + 2) = v36 + 1;
            v38 = &v37[16 * v36];
            *(v38 + 4) = v31;
            *(v38 + 5) = v33;
            v23 = v29;
            a1 = v66;
            v24 = v67;
          }

          else
          {
          }

          goto LABEL_10;
        }

LABEL_9:

LABEL_10:
        if (v20 == ++v21)
        {
          goto LABEL_24;
        }
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v68 = _swiftEmptyArrayStorage;
LABEL_24:
  if (v57)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v64;
  v9 = v65;
  v40 = [objc_opt_self() mainBundle];
  if (v39 >= 2)
  {
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 localizedStringForKey:v41 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!(v58 >> 62))
    {
      v43 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:
      sub_100456B20(v68, v43, 1);
      goto LABEL_37;
    }

LABEL_40:
    v43 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_30;
  }

  v44 = String._bridgeToObjectiveC()();
  v45 = [v40 localizedStringForKey:v44 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v68 + 2))
  {

    v46 = String._bridgeToObjectiveC()();

    v47 = [v46 ic_quotedString];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  if (v58 >> 62)
  {
    v51 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v51 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_100456D98(v48, v50, v51);

LABEL_37:
  v52 = v60;
  LocalizedStringResource.init(stringLiteral:)();

  v53 = v61;
  LocalizedStringResource.init(stringLiteral:)();
  v54 = *(v15 + 2);
  v54(v59, v52, v9);
  v54(v62, v53, v9);
  IntentDialog.init(full:supporting:)();

  v55 = *(v15 + 1);
  v55(v53, v9);
  return (v55)(v52, v9);
}

void sub_10029AE74(unint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_workerContext];
  if (v3)
  {
    v4 = v2;
    v6 = a1 >> 62;
    if (a1 >> 62)
    {
      v43 = a2;
      v49 = v3;
      v44 = _CocoaArrayWrapper.endIndex.getter();
      v3 = v49;
      a2 = v43;
      if (!v44)
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v46 = a2;
    v48 = v3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v45 = v3;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_34;
      }

      v7 = *(a1 + 32);
      v8 = v3;
      v9 = v7;
    }

    v10 = v9;
    v11 = [v9 displayText];

    if (v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = String._bridgeToObjectiveC()();

      v13 = [v12 ic_withHashtagPrefix];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v6)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
        if (v17 != 1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17 != 1)
        {
LABEL_10:

          v18 = [objc_opt_self() mainBundle];
          v19 = String._bridgeToObjectiveC()();
          v20 = [v18 localizedStringForKey:v19 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          goto LABEL_16;
        }
      }

      v21 = [objc_opt_self() mainBundle];
      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 localizedStringForKey:v22 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10015DA04(&qword_1006C1A30);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100531E30;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_1001D9030();
      *(v24 + 32) = v14;
      *(v24 + 40) = v16;
      static String.localizedStringWithFormat(_:_:)();

LABEL_16:
      v25 = [objc_allocWithZone(ICLongRunningTaskController) init];
      v26 = *&v4[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_viewControllerManager];
      if (v26 && (v27 = [v26 window]) != 0)
      {
        v28 = v27;
        v29 = [v27 rootViewController];
      }

      else
      {
        v29 = 0;
      }

      [v25 setViewControllerToPresentFrom:v29];

      [v25 setShouldShowCancelButton:0];
      [v25 setIndeterminate:1];
      v30 = String._bridgeToObjectiveC()();

      [v25 setProgressString:v30];

      v31 = _swiftEmptyArrayStorage;
      if (!v17)
      {
        goto LABEL_28;
      }

      aBlock = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v17 & 0x8000000000000000) == 0)
      {
        v32 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v33 = *(a1 + 8 * v32 + 32);
          }

          v34 = v33;
          ++v32;
          v35 = [v33 objectID];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v17 != v32);
        v31 = aBlock;
LABEL_28:
        v36 = swift_allocObject();
        v36[2] = v48;
        v36[3] = v4;
        v36[4] = a1;
        v36[5] = v47;
        v54 = sub_10029CA00;
        v55 = v36;
        aBlock = _NSConcreteStackBlock;
        v51 = 1107296256;
        v52 = sub_1003A8C60;
        v53 = &unk_100653238;
        v37 = _Block_copy(&aBlock);

        v38 = v48;
        v39 = v4;

        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        *(v40 + 24) = v31;
        v54 = sub_10029CA0C;
        v55 = v40;
        aBlock = _NSConcreteStackBlock;
        v51 = 1107296256;
        v52 = sub_1002B00B8;
        v53 = &unk_100653288;
        v41 = _Block_copy(&aBlock);
        v42 = v39;

        [v25 startTask:v37 completionBlock:v41];
        _Block_release(v41);
        _Block_release(v37);

        return;
      }

LABEL_34:
      __break(1u);
      return;
    }
  }
}

uint64_t sub_10029B4B0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a2;
  v9[5] = a5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10029CA14;
  *(v10 + 24) = v9;
  v15[4] = sub_10000EFBC;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10000EAF8;
  v15[3] = &unk_100653300;
  v11 = _Block_copy(v15);

  v12 = a3;

  v13 = a2;

  [v13 performBlockAndWait:v11];
  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

void sub_10029B634(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v7 = a1;
  if (*(a1 + OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_shouldSendNotification) == 1)
  {
    v8 = [objc_opt_self() defaultCenter];
    v9 = String._bridgeToObjectiveC()();
    [v8 postNotificationName:v9 object:0];
  }

  v36 = a4;
  if (a2 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  sub_1000054A4(0, &qword_1006C63E0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  v12 = ObjCClassFromMetadata;
  v13 = 0;
  v39 = (v7 + OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_deletionMethod);
  v40 = OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_eventReporter;
  v41 = a2 & 0xC000000000000001;
  v37 = a2;
  v38 = v7;
  do
  {
    if (v41)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(a2 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = [v14 objectID];
    v17 = [v12 ic_existingObjectWithID:v16 context:a3];

    if (v17)
    {
      if (qword_1006BC6F8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10002597C(v18, qword_1006C26E8);
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = v12;
        v24 = v10;
        v25 = swift_slowAlloc();
        *v22 = 138412290;
        *(v22 + 4) = v19;
        *v25 = v17;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v20, v21, "Removing hashtag usage {hashtag: %@}", v22, 0xCu);
        sub_10000A01C(v25);
        v10 = v24;
        v12 = v23;

        a2 = v37;
        v7 = v38;
      }

      [v19 removeUsage];
      [v19 markForDeletion];
      v27 = *(v7 + v40);
      if (v27)
      {
        if (*(v39 + 8))
        {
          v28 = 0;
        }

        else
        {
          v28 = *v39;
        }

        [v27 submitHashtagDeleteEvent:0 approachEnum:v28];
      }
    }

    ++v13;
  }

  while (v10 != v13);
LABEL_23:
  v4 = v36;
  if (!v36)
  {
    goto LABEL_37;
  }

  if (!(v36 >> 62))
  {
    v29 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

LABEL_36:
  v29 = _CocoaArrayWrapper.endIndex.getter();
  if (!v29)
  {
    goto LABEL_37;
  }

LABEL_26:
  if (v29 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v29; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v33 = *(v4 + 8 * i + 32);
    }

    v32 = v33;
    v34 = [a3 objectWithID:v33];
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (v35)
    {
      [objc_opt_self() deleteFolder:v35];
      v31 = v34;
    }

    else
    {
      v31 = v32;
      v32 = v34;
    }
  }

LABEL_37:

  [a3 ic_save];
}

void sub_10029BA84(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedContext];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 managedObjectContext];

    [v5 ic_save];
  }

  if (*(a2 + OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_shouldSendNotification) == 1)
  {
    v6 = [objc_opt_self() defaultCenter];
    v7 = String._bridgeToObjectiveC()();
    sub_1000054A4(0, &qword_1006BFEC0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v6 postNotificationName:v7 object:isa];
  }
}

id sub_10029BBE4(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v69 = a1 >> 62;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_41:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v72 = v3;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_42:
    v9 = _swiftEmptyArrayStorage;
    v25 = _swiftEmptyArrayStorage[2];
    if (v25)
    {
      goto LABEL_24;
    }

LABEL_43:

    return v25;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v72 = a1;
  if (!v5)
  {
    goto LABEL_42;
  }

LABEL_3:
  v6 = 0;
  v7 = OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_viewContext;
  v8 = v3 & 0xC000000000000001;
  v9 = _swiftEmptyArrayStorage;
  do
  {
    v10 = v9;
    v11 = v6;
    while (1)
    {
      if (v8)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v4 + 16))
        {
          goto LABEL_40;
        }

        v13 = *(v3 + 8 * v11 + 32);
      }

      v14 = v13;
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v15 = *&v2[v7];
      if (v15)
      {
        v16 = [v15 objectWithID:v14];
        if (v16)
        {
          break;
        }
      }

      v12 = v14;
LABEL_6:

      ++v11;
      v3 = v72;
      if (v6 == v5)
      {
        v9 = v10;
        goto LABEL_23;
      }
    }

    v12 = v16;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {

      goto LABEL_6;
    }

    v18 = [v17 title];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v20;
    v67 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1001CAE70(0, *(v10 + 2) + 1, 1, v10);
    }

    v3 = v72;
    v22 = *(v10 + 2);
    v21 = *(v10 + 3);
    v23 = v10;
    if (v22 >= v21 >> 1)
    {
      v23 = sub_1001CAE70((v21 > 1), v22 + 1, 1, v10);
    }

    v9 = v23;
    *(v23 + 2) = v22 + 1;
    v24 = &v23[16 * v22];
    *(v24 + 4) = v67;
    *(v24 + 5) = v65;
  }

  while (v6 != v5);
LABEL_23:
  v25 = *(v9 + 2);
  if (!v25)
  {
    goto LABEL_43;
  }

LABEL_24:
  v26 = v9;
  v27 = objc_opt_self();

  v28 = [v27 mainBundle];
  v68 = v25;
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 localizedStringForKey:v29 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String.localizedStringWithFormat(_:_:)();

  if (v69)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
    if (v31 >= 2)
    {
      goto LABEL_28;
    }

LABEL_26:

    v32 = String._bridgeToObjectiveC()();

    v33 = [v32 ic_quotedString];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    sub_100456D98(v34, v36, 1);
    v38 = v37;

    v39 = a2;
  }

  else
  {
    v31 = *(v4 + 16);
    if (v31 < 2)
    {
      goto LABEL_26;
    }

LABEL_28:
    v66 = v31;
    v70 = v2;

    v40 = [objc_opt_self() mainBundle];
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 localizedStringForKey:v41 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = static String.localizedStringWithFormat(_:_:)();
    v45 = v44;

    sub_10015DA04(&qword_1006BE8F0);
    v46 = swift_allocObject();
    v47 = 0;
    *(v46 + 16) = xmmword_100531E30;
    *(v46 + 32) = v43;
    *(v46 + 40) = v45;
    v48 = 1;
    do
    {
      v49 = *&v26[v47 + 32];
      v50 = *&v26[v47 + 40];
      v51 = *(v46 + 24);
      v52 = v48 + 1;

      if (v48 >= v51 >> 1)
      {
        v46 = sub_1001CAE70((v51 > 1), v48 + 1, 1, v46);
      }

      *(v46 + 16) = v52;
      v53 = v46 + v47;
      *(v53 + 48) = v49;
      *(v53 + 56) = v50;
      v47 += 16;
      ++v48;
    }

    while (v52 - v68 != 1);

    aBlock[0] = v46;
    sub_10015DA04(&qword_1006C13F0);
    sub_10029C99C();
    BidirectionalCollection<>.joined(separator:)();
    v38 = v54;

    v2 = v70;
    v39 = a2;
    v31 = v66;
  }

  v55 = String._bridgeToObjectiveC()();

  if (v38)
  {
    v56 = String._bridgeToObjectiveC()();
  }

  else
  {
    v56 = 0;
  }

  v25 = [objc_opt_self() alertControllerWithTitle:v55 message:v56 preferredStyle:1];

  if (v39 >> 62)
  {
    v57 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v57 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_100458478(v57, v31);
  v58 = swift_allocObject();
  v58[2] = v2;
  v58[3] = v39;
  v58[4] = v72;
  v59 = v2;

  v60 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10029C970;
  aBlock[5] = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002DEFE0;
  aBlock[3] = &unk_1006531E8;
  v61 = _Block_copy(aBlock);

  v62 = [objc_opt_self() actionWithTitle:v60 style:2 handler:v61];
  _Block_release(v61);

  [v25 addAction:v62];
  v63 = sub_10029C80C();
  [v25 addAction:v63];

  return v25;
}

id sub_10029C320(uint64_t a1)
{
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v1;

  v7 = v1;
  v8 = String._bridgeToObjectiveC()();

  v12[4] = sub_10029C900;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1002DEFE0;
  v12[3] = &unk_100653198;
  v9 = _Block_copy(v12);

  v10 = [objc_opt_self() actionWithTitle:v8 style:2 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_10029C4C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C63E0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v5 smartFoldersThatWillBeDeletedAfterDeletingHashtags:isa];

  sub_1000054A4(0, &qword_1006BF450);
  sub_10029C908();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_10029A1D4(v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *(v8 + 16);
  }

  if (v10)
  {
    v14 = sub_10029BBE4(v9, a2);

    if (v14)
    {
      v11 = *(a3 + OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_window);
      if (v11)
      {
        v12 = [v11 rootViewController];
        if (v12)
        {
          v13 = v12;
          [v12 presentViewController:v14 animated:1 completion:0];
        }
      }
    }
  }

  else
  {
    sub_10029AE74(a2, v9);
  }
}

id TagDeletionAlertController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagDeletionAlertController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10029C80C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:0];

  return v4;
}

unint64_t sub_10029C908()
{
  result = qword_1006BF458;
  if (!qword_1006BF458)
  {
    sub_1000054A4(255, &qword_1006BF450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF458);
  }

  return result;
}

unint64_t sub_10029C99C()
{
  result = qword_1006C13F8;
  if (!qword_1006C13F8)
  {
    sub_10017992C(&qword_1006C13F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C13F8);
  }

  return result;
}

uint64_t sub_10029CA40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1413891404;
    }

    else
    {
      v3 = 0x5448474952;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1314344772;
    }

    else
    {
      v3 = 20565;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 20565;
  v7 = 0xE400000000000000;
  v8 = 1413891404;
  if (a2 != 2)
  {
    v8 = 0x5448474952;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v6 = 1314344772;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10029CB54(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x524F4C4F43;
    }

    else
    {
      v2 = 0x4F544F4850;
    }

    v3 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x4C41435359415247;
    v3 = 0xE900000000000045;
  }

  else if (a1 == 3)
  {
    v2 = 0x4E415F4B43414C42;
    v3 = 0xEF45544948575F44;
  }

  else
  {
    v2 = 0x414F424554494857;
    v3 = 0xEA00000000004452;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x524F4C4F43;
    }

    else
    {
      v8 = 0x4F544F4850;
    }

    v7 = 0xE500000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x4E415F4B43414C42;
    v5 = 0xEF45544948575F44;
    if (a2 != 3)
    {
      v4 = 0x414F424554494857;
      v5 = 0xEA00000000004452;
    }

    if (a2 == 2)
    {
      v6 = 0x4C41435359415247;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE900000000000045;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_10029CCFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6E6F697463656CLL;
  v3 = 0xD000000000000012;
  v4 = 0x65537463656A626FLL;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x65537463656A626FLL;
    }

    if (v5)
    {
      v7 = 0x800000010055CA00;
    }

    else
    {
      v7 = 0xEF6E6F697463656CLL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0x6F697463656C6573;
    v7 = 0xEF6E6F736165526ELL;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0xD000000000000035;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (v5 == 3)
    {
      v7 = 0x800000010055CA30;
    }

    else
    {
      v7 = 0x800000010055CA70;
    }
  }

  if (a2 <= 1u)
  {
    v8 = 0x800000010055CA00;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    if (v9)
    {
      v11 = v2;
    }

    else
    {
      v11 = v8;
    }

    if (v6 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0x800000010055CA30;
    v4 = 0xD000000000000035;
    v8 = 0x800000010055CA70;
    v3 = 0xD000000000000016;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xEF6E6F736165526ELL;
  if (v6 != 0x6F697463656C6573)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v7 != v11)
  {
LABEL_30:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_10029CE9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1162760014;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0x4C5F4D554944454DLL;
  v6 = 0xEC00000053454E49;
  if (a1 != 5)
  {
    v5 = 0x494C5F454752414CLL;
    v6 = 0xEB0000000053454ELL;
  }

  v7 = 0x52475F454752414CLL;
  v8 = 0xEA00000000004449;
  if (a1 != 3)
  {
    v7 = 0x494C5F4C4C414D53;
    v8 = 0xEB0000000053454ELL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x52475F4C4C414D53;
  v10 = 0xEA00000000004449;
  if (a1 != 1)
  {
    v9 = 0x475F4D554944454DLL;
    v10 = 0xEB00000000444952;
  }

  if (a1)
  {
    v4 = v10;
  }

  else
  {
    v9 = 1162760014;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE400000000000000;
      goto LABEL_34;
    }

    if (a2 == 1)
    {
      v13 = 0x5F4C4C414D53;
      goto LABEL_25;
    }

    v2 = 0x475F4D554944454DLL;
    v15 = 4475218;
LABEL_33:
    v14 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    goto LABEL_34;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0x4C5F4D554944454DLL;
      v14 = 0xEC00000053454E49;
      goto LABEL_34;
    }

    v16 = 0x5F454752414CLL;
    goto LABEL_32;
  }

  if (a2 != 3)
  {
    v16 = 0x5F4C4C414D53;
LABEL_32:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0x494C000000000000;
    v15 = 5457230;
    goto LABEL_33;
  }

  v13 = 0x5F454752414CLL;
LABEL_25:
  v2 = v13 & 0xFFFFFFFFFFFFLL | 0x5247000000000000;
  v14 = 0xEA00000000004449;
LABEL_34:
  if (v11 == v2 && v12 == v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t sub_10029D0C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657A69;
  v3 = 0x53746C7561666564;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6D756964656DLL;
    }

    else
    {
      v5 = 0x656772616CLL;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C6C616D73;
    }

    else
    {
      v5 = 0x53746C7561666564;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEB00000000657A69;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a2 != 2)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x6C6C616D73;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10029D1F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "RIGHT_TO_LEFT_OVERRIDE";
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = "com.apple.notes.archive";
    }

    else
    {
      v4 = "RIGHT_TO_LEFT_OVERRIDE";
    }

    v5 = 0xD000000000000017;
  }

  else if (a1 == 2)
  {
    v4 = "com.apple.notes.account";
    v5 = 0xD000000000000016;
  }

  else if (a1 == 3)
  {
    v4 = "com.apple.notes.folder";
    v5 = 0xD000000000000014;
  }

  else
  {
    v4 = "com.apple.notes.note";
    v5 = 0xD00000000000001ALL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "com.apple.notes.archive";
    }
  }

  else if (a2 == 2)
  {
    v3 = "com.apple.notes.account";
    v2 = 0xD000000000000016;
  }

  else
  {
    v3 = "com.apple.notes.folder";
    if (a2 == 3)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a2 != 3)
    {
      v3 = "com.apple.notes.note";
    }
  }

  if (v5 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t sub_10029D350(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x65746F4E6C6C6163;
  v3 = a1;
  v4 = 0x746F4E6B63697571;
  v5 = 0xEA00000000007365;
  if (a1 != 2)
  {
    v4 = 0x6957646572616873;
    v5 = 0xED0000756F596874;
  }

  v6 = 0x65746F4E6874616DLL;
  if (!a1)
  {
    v6 = 0x65746F4E6C6C6163;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v3 <= 1)
  {
    v8 = 0xE900000000000073;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0x746F4E6B63697571;
  v10 = 0xEA00000000007365;
  if (a2 != 2)
  {
    v9 = 0x6957646572616873;
    v10 = 0xED0000756F596874;
  }

  if (a2)
  {
    v2 = 0x65746F4E6874616DLL;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = 0xE900000000000073;
  }

  else
  {
    v12 = v10;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10029D4A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5F4F545F5446454CLL;
    }

    else
    {
      v3 = 0x4C41525554414ELL;
    }

    if (v2)
    {
      v4 = 0xED00005448474952;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000016;
    v4 = 0x800000010055CD00;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x4F545F5448474952;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v2 == 3)
    {
      v4 = 0xED00005446454C5FLL;
    }

    else
    {
      v4 = 0x800000010055CD30;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x5F4F545F5446454CLL;
    }

    else
    {
      v9 = 0x4C41525554414ELL;
    }

    if (a2)
    {
      v8 = 0xED00005448474952;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x4F545F5448474952;
    v6 = 0x800000010055CD30;
    if (a2 == 3)
    {
      v6 = 0xED00005446454C5FLL;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x800000010055CD00;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_10029D66C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1263421776;
    }

    else
    {
      v4 = 0x454C50525550;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x45474E41524FLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 3)
    {
      v4 = 1414416717;
    }

    else
    {
      v4 = 1163217986;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1263421776;
    }

    else
    {
      v8 = 0x454C50525550;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 1414416717;
    if (a2 != 3)
    {
      v5 = 1163217986;
    }

    if (a2 == 2)
    {
      v6 = 0x45474E41524FLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_10029D7B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5245544E4543;
    }

    else
    {
      v3 = 1413891404;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x5448474952;
  }

  else if (a1 == 3)
  {
    v3 = 0x454946495453554ALL;
    v4 = 0xE900000000000044;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x4C41525554414ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x5245544E4543;
    }

    else
    {
      v9 = 1413891404;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x454946495453554ALL;
    v6 = 0xE900000000000044;
    if (a2 != 3)
    {
      v5 = 0x4C41525554414ELL;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x5448474952;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10029D934(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E756FLL;
  v3 = 0x6363416C61636F6CLL;
  if (a1 <= 1u)
  {
    v4 = 0x800000010055CB50;
    v5 = 0x800000010055CB70;
    v6 = a1 == 0;
    if (a1)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = 0xD000000000000010;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v7 = 0x6363416C61636F6CLL;
      v8 = 0xEC000000746E756FLL;
      goto LABEL_12;
    }

    v4 = 0x800000010055CBA0;
    v5 = 0x800000010055CBC0;
    v6 = a1 == 3;
    if (a1 == 3)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = 0xD000000000000013;
    }
  }

  if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

LABEL_12:
  if (a2 <= 1u)
  {
    v9 = 0x800000010055CB50;
    v10 = 0x800000010055CB70;
    v11 = a2 == 0;
    if (a2)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000010;
    }
  }

  else
  {
    if (a2 == 2)
    {
      goto LABEL_23;
    }

    v9 = 0x800000010055CBA0;
    v10 = 0x800000010055CBC0;
    v11 = a2 == 3;
    if (a2 == 3)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000013;
    }
  }

  if (v11)
  {
    v2 = v9;
  }

  else
  {
    v2 = v10;
  }

LABEL_23:
  if (v7 == v3 && v8 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t *ICArchiveImporter.objects(forArchiveAt:)()
{
  v0 = sub_10015DA04(&qword_1006BF480);
  __chkstk_darwin(v0 - 8);
  v48 = (&v39 - v1);
  v2 = sub_10015DA04(&qword_1006BE8D0);
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = __chkstk_darwin(v2);
  v54 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v43 = &v39 - v5;
  v6 = type metadata accessor for URL();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v55 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 1);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  if (qword_1006BC708 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v15 = type metadata accessor for OSSignposter();
    sub_10002597C(v15, qword_1006C2780);
    URL._bridgeToObjectiveC()(v16);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:object:)();
    v17 = OSSignposter.logHandle.getter();
    v18 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, "Objects for Archive", "", v19, 2u);
    }

    (*(v9 + 16))(v12, v14, v8);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v21 = OSSignpostIntervalState.init(id:isOpen:)();
    v22 = v56;
    swift_getObjectType();
    v23 = v53;
    v24 = dispatch thunk of ICFileManaging.subdirectoriesOfDirectory(at:)();
    if (v23)
    {
      sub_1002A2F00(v21, "Objects for Archive");

      (*(v9 + 8))(v14, v8);
      return v8;
    }

    v25 = v24;
    v39 = v21;
    v40 = v14;
    v41 = v9;
    v42 = v8;
    v26 = *(v24 + 16);
    v27 = v22;
    v53 = v26;
    if (!v26)
    {
      break;
    }

    v14 = 0;
    v12 = v44;
    v9 = v45;
    v51 = v44 + 16;
    v52 = (v44 + 8);
    v28 = v47;
    v49 = (v46 + 32);
    v50 = (v46 + 48);
    v56 = &_swiftEmptyArrayStorage;
    v8 = v48;
    while (v14 < *(v25 + 16))
    {
      v29 = v25;
      v30 = v25 + ((v12[80] + 32) & ~v12[80]) + *(v12 + 9) * v14;
      v31 = v55;
      (*(v12 + 2))(v55, v30, v9);
      sub_1002A0E44(v31, v8);
      (*v52)(v31, v9);
      if ((*v50)(v8, 1, v28) == 1)
      {
        sub_1000073B4(v8, &qword_1006BF480);
        v25 = v29;
      }

      else
      {
        v32 = *v49;
        v33 = v43;
        (*v49)(v43, v8, v28);
        v32(v54, v33, v28);
        v34 = v56;
        v25 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1001CAC0C(0, v34[2] + 1, 1, v34);
        }

        v36 = v34[2];
        v35 = v34[3];
        v56 = v34;
        v12 = v44;
        if (v36 >= v35 >> 1)
        {
          v56 = sub_1001CAC0C(v35 > 1, v36 + 1, 1, v56);
        }

        v37 = v56;
        v56[2] = v36 + 1;
        v28 = v47;
        v32(&v37[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v36], v54, v47);
        v8 = v48;
        v9 = v45;
      }

      if (v53 == ++v14)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v56 = &_swiftEmptyArrayStorage;
LABEL_18:

  v57 = v56;

  sub_1002A85A0(&v57);

  v8 = v57;
  sub_1002A2F00(v39, "Objects for Archive");

  (*(v41 + 8))(v40, v42);
  return v8;
}

id ICArchiveImporter.__allocating_init(context:configuration:fileManager:markdown:markdownFlavor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6)
{
  ObjectType = swift_getObjectType();

  return sub_1002A9CB8(a1, a2, a3, a5, a6, v6, ObjectType, a4);
}

uint64_t ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(unint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v5 = v4;
  v189 = a2;
  v169 = _s3TagVMa();
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v171 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10015DA04(&unk_1006C1710);
  v11 = __chkstk_darwin(v10 - 8);
  v166 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v170 = &v161 - v14;
  __chkstk_darwin(v13);
  v162 = (&v161 - v15);
  v174 = type metadata accessor for Date();
  v16 = *(v174 - 8);
  v17 = __chkstk_darwin(v174);
  v175 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v164 = &v161 - v20;
  __chkstk_darwin(v19);
  v163 = &v161 - v21;
  v22 = type metadata accessor for ICArchiveModel();
  __chkstk_darwin(v22);
  v177 = &v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for URL();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v180 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_10015DA04(&qword_1006BE8D0);
  ObjectType = *(v195 - 8);
  __chkstk_darwin(v195);
  v194 = &v161 - v25;
  v191 = type metadata accessor for OSSignpostID();
  v190 = *(v191 - 8);
  v26 = __chkstk_darwin(v191);
  v28 = &v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v161 - v29;
  v31 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_isImporting;
  if (*(v5 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_isImporting))
  {
    __break(1u);
  }

  else
  {
    v165 = v16;
    v176 = v22;
    v186 = a1;
    v32 = [a3 managedObjectContext];
    if (!v32)
    {
      __break(1u);
    }

    v33 = v32;
    v34 = *(v5 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_context);
    sub_1000054A4(0, &unk_1006C2CF0);
    v35 = v34;
    v36 = static NSObject.== infix(_:_:)();

    if (v36)
    {
      v161 = v35;
      *(v31 + v5) = 1;
      if (qword_1006BC708 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_113;
    }
  }

  __break(1u);
LABEL_113:
  swift_once();
LABEL_5:
  v185 = a4;
  v184 = v31;
  v37 = type metadata accessor for OSSignposter();
  sub_10002597C(v37, qword_1006C2780);
  URL._bridgeToObjectiveC()(&var20);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:object:)();
  v38 = OSSignposter.logHandle.getter();
  v39 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, v39, v41, "Import Objects from Archive", "", v40, 2u);
  }

  (*(v190 + 16))(v28, v30, v191);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v182 = OSSignpostIntervalState.init(id:isOpen:)();
  v42 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_errors;
  swift_beginAccess();
  *(v5 + v42) = &_swiftEmptyDictionarySingleton;

  v197[3] = sub_1000054A4(0, &qword_1006C27B8);
  v197[0] = a3;
  v43 = a3;
  v44 = sub_1001C9628(v197);
  v46 = v45;
  sub_100009F60(v197);
  v47 = v5 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration;
  swift_beginAccess();
  v48 = *(v47 + 16);
  v167 = (v47 + 16);
  *(v47 + 16) = v44;
  v173 = v46;
  v172 = v47;
  *(v47 + 24) = v46;
  v187 = v44;

  v49 = v186;
  v50 = *(v186 + 16);
  v51 = _swiftEmptyArrayStorage;
  v188 = v30;
  if (v50)
  {
    v181 = v5;
    v196 = _swiftEmptyArrayStorage;
    sub_1001895A4(0, v50, 0);
    v51 = v196;
    v52 = (ObjectType + 2);
    ObjectType = ObjectType[2];
    a3 = (v49 + ((v52[64] + 32) & ~v52[64]));
    v192 = *(v52 + 7);
    v31 = (v52 - 8);
    do
    {
      v53 = v194;
      v54 = v195;
      (ObjectType)(v194, a3, v195);
      v55 = ICObjectReferences.recursiveNoteCount.getter();
      (*v31)(v53, v54);
      v196 = v51;
      v5 = v51[2];
      v56 = v51[3];
      v57 = v5 + 1;
      if (v5 >= v56 >> 1)
      {
        sub_1001895A4((v56 > 1), v5 + 1, 1);
        v51 = v196;
      }

      v51[2] = v57;
      v51[v5 + 4] = v55;
      a3 = v192 + a3;
      --v50;
    }

    while (v50);
LABEL_15:
    v58 = 0;
    v59 = 4;
    do
    {
      v60 = v51[v59];
      v61 = __OFADD__(v58, v60);
      v58 += v60;
      if (v61)
      {
        __break(1u);
        goto LABEL_39;
      }

      ++v59;
      --v57;
    }

    while (v57);
    v5 = v181;
    goto LABEL_19;
  }

  v57 = _swiftEmptyArrayStorage[2];
  if (v57)
  {
    v181 = v5;
    goto LABEL_15;
  }

  v58 = 0;
LABEL_19:

  a3 = v184;
  v62 = v185;
  if (qword_1006BC700 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_10002597C(v63, qword_1006C2768);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    *(v66 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v64, v65, "Importing archive… {noteCount: %ld}", v66, 0xCu);
  }

  NSProgress.throwIfCancelled()();
  v31 = v67;
  if (v67)
  {

    goto LABEL_26;
  }

  [v62 setTotalUnitCount:v58];
  swift_getObjectType();
  v68 = v180;
  URL.appendingPathComponent(_:isDirectory:)();
  v69 = dispatch thunk of ICFileManaging.contents(of:)();
  v74 = v73;
  v195 = v69;
  v178[1](v68, v179);
  if (qword_1006BC8D0 != -1)
  {
    goto LABEL_115;
  }

  while (1)
  {
    sub_1002AA814(&qword_1006C27C8, type metadata accessor for ICArchiveModel);
    v58 = v177;
    v51 = v176;
    v75 = v195;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v31)
    {

      sub_10019671C(v75, v74);
      goto LABEL_26;
    }

    v76 = *v58;
    v194 = v74;
    if (v76 > 1)
    {
      goto LABEL_123;
    }

    v77 = "RIGHT_TO_LEFT_OVERRIDE";
    if (v76)
    {
      v77 = "com.apple.notes.archive";
    }

    if ((v77 | 0x8000000000000000) == 0x800000010055CD50)
    {
    }

    else
    {
LABEL_123:
    {
LABEL_39:
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v78 & 1) == 0)
      {
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "Notes archive specifies unknown type identifier — aborting", v88, 2u);
        }

        sub_1001CDC44();
        swift_allocError();
        *v89 = 0;
        swift_willThrow();

        sub_10019671C(v195, v194);
        sub_1002AB0B8(v58, type metadata accessor for ICArchiveModel);
        goto LABEL_26;
      }
    }
    }

    v181 = v5;
    v79 = v171;
    if (*(v172 + 1) == 1)
    {
      v80 = v162;
      sub_100006038(&v58[*(v51 + 6)], v162, &unk_1006C1710);
      v81 = v165;
      v82 = v174;
      if ((*(v165 + 48))(v80, 1, v174) == 1)
      {
        sub_1000073B4(v80, &unk_1006C1710);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&_mh_execute_header, v83, v84, "Notes archive doesn't have a creation date — fallback back to configuration's timestamp offset", v85, 2u);
          v51 = v176;
        }
      }

      else
      {
        (*(v81 + 32))(v163, v80, v82);
        v90 = v164;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v92 = v91;
        v93 = *(v81 + 8);
        v94 = v90;
        v79 = v171;
        v93(v94, v82);
        v93(v163, v82);
        *(v172 + 8) = v92;
      }
    }

    v95 = *&v58[*(v51 + 8)];
    if (!v95)
    {
      break;
    }

    v96 = (v95 + 56);
    v97 = 1 << *(v95 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v5 = v98 & *(v95 + 56);
    v99 = (v97 + 63) >> 6;
    v183 = v173 + 8;
    v192 = (v165 + 48);
    v163 = (v165 + 32);
    v162 = (v165 + 56);
    v178 = (v165 + 8);

    v101 = 0;
    v70 = v188;
    v180 = v96;
    v179 = v99;
    v189 = v100;
LABEL_55:
    if (v5)
    {
      goto LABEL_61;
    }

    v74 = v186;
    while (1)
    {
      v105 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      if (v105 >= v99)
      {

        a3 = v184;
        goto LABEL_72;
      }

      v5 = *&v96[8 * v105];
      ++v101;
      if (v5)
      {
        v101 = v105;
LABEL_61:
        sub_1001CDB04(*(v100 + 48) + *(v168 + 72) * (__clz(__rbit64(v5)) | (v101 << 6)), v79);
        v106 = *(v172 + 16);
        v198[0] = *v172;
        v198[1] = v106;
        v199 = *(v172 + 32);
        ObjectType = swift_getObjectType();
        v107 = (v79 + *(v169 + 20));
        v109 = *v107;
        v108 = v107[1];
        v110 = v173;
        v111 = *(v173 + 1);
        v200 = *v167;
        sub_100006038(&v200, &v196, &qword_1006C27D0);
        v112 = v111(v109, v108, v198, ObjectType, v110);
        if (!v31)
        {
          v113 = v112;
          a3 = v170;
          sub_100006038(v79, v170, &unk_1006C1710);
          v114 = *v192;
          v115 = v174;
          v116 = (*v192)(a3, 1, v174);
          v70 = v188;
          if (v116 == 1)
          {
            v117 = [v113 creationDate];
            if (v117)
            {
              v118 = v164;
              v119 = v117;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              ObjectType = v114;
              v120 = *v163;
              v121 = v166;
              v122 = v118;
              v102 = v174;
              (*v163)(v166, v122, v174);
              (*v162)(v121, 0, 1, v102);
              v123 = v121;
              a3 = v170;
              v120(v175, v123, v102);
              v124 = (ObjectType)(a3, 1, v102);
            }

            else
            {
              v125 = v166;
              v102 = v174;
              (*v162)(v166, 1, 1, v174);
              static Date.now.getter();
              if (v114(v125, 1, v102) != 1)
              {
                sub_1000073B4(v166, &unk_1006C1710);
              }

              v124 = v114(a3, 1, v102);
            }

            if (v124 != 1)
            {
              sub_1000073B4(a3, &unk_1006C1710);
            }
          }

          else
          {
            (*v163)(v175, a3, v115);
            v102 = v115;
          }

          v5 &= v5 - 1;
          v103 = v175;
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*v178)(v103, v102);
          [v113 setCreationDate:isa];

          sub_1002A9D40(v198);
          v79 = v171;
          sub_1002AB0B8(v171, _s3TagVMa);
          v100 = v189;
          v96 = v180;
          v99 = v179;
          goto LABEL_55;
        }

        sub_10019671C(v195, v194);
        sub_1002A9D40(v198);

        sub_1002AB0B8(v79, _s3TagVMa);
        sub_1002AB0B8(v177, type metadata accessor for ICArchiveModel);
        v5 = v181;
        a3 = v184;
LABEL_26:
        v70 = v188;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_115:
    swift_once();
  }

  v70 = v188;
  v74 = v186;
LABEL_72:
  v126 = v187;
  v5 = v181;
  v127 = sub_1002A3190(v74, v187, v173, v185);
  if (v31)
  {

    sub_10019671C(v195, v194);
    v128 = v177;
    goto LABEL_110;
  }

  v129 = v127;
  objc_opt_self();
  v130 = swift_dynamicCastObjCClass();
  if (!v130 || (v131 = *&v177[*(v176 + 36)]) == 0)
  {

    v144 = v194;
    goto LABEL_103;
  }

  ObjectType = v130;
  v132 = _swiftEmptyArrayStorage;
  v196 = _swiftEmptyArrayStorage;
  v133 = *(v131 + 16);
  v134 = v126;
  v192 = v134;
  if (!v133)
  {
    goto LABEL_90;
  }

  v135 = 0;
  v136 = v131 + 40;
  v186 = v133 - 1;
  v189 = v131 + 40;
  do
  {
    v137 = (v136 + 16 * v135);
    v138 = v135;
    while (1)
    {
      if (v138 >= *(v131 + 16))
      {
        __break(1u);
        goto LABEL_117;
      }

      if (!*(v129 + 16))
      {
        goto LABEL_80;
      }

      v139 = *(v137 - 1);
      v140 = *v137;

      v141 = sub_1002DF11C(v139, v140);
      if (v142)
      {
        v143 = [*(*(v129 + 56) + 8 * v141) identifier];
        if (v143)
        {
          break;
        }
      }

LABEL_80:
      ++v138;
      v137 += 2;
      if (v133 == v138)
      {
        goto LABEL_90;
      }
    }

    v183 = v143;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v135 = v138 + 1;
    v134 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v132 = v196;
    v136 = v189;
  }

  while (v186 != v138);
LABEL_90:

  v134 = [ObjectType subFolderIdentifiersOrderedSet];
  if (v132 >> 62)
  {
    goto LABEL_119;
  }

  v145 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v144 = v194;
    v134 = v134;
    v146 = v134;
    if (!v145)
    {
      break;
    }

    v147 = 0;
    v148 = v132 & 0xC000000000000001;
    v149 = v132 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v148)
      {
        v150 = v132;
        v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v147 >= *(v149 + 16))
        {
          goto LABEL_118;
        }

        v150 = v132;
        v134 = *(v132 + 8 * v147 + 32);
      }

      v151 = v134;
      v132 = v147 + 1;
      if (__OFADD__(v147, 1))
      {
        break;
      }

      [v146 addObject:v134];

      ++v147;
      v152 = v132 == v145;
      v132 = v150;
      v144 = v194;
      if (v152)
      {
        goto LABEL_102;
      }
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    v160 = v134;
    v145 = _CocoaArrayWrapper.endIndex.getter();
    v134 = v160;
  }

LABEL_102:

  v153 = ObjectType;
  [ObjectType setSubFolderOrderMergeableDataDirty:1];
  [v153 saveSubFolderMergeableDataIfNeeded];

  v5 = v181;
  a3 = v184;
  v70 = v188;
  v126 = v187;
LABEL_103:
  NSProgress.throwIfCancelled()();
  v154 = v177;
  if (v155)
  {

    v156 = v195;
    v157 = v144;
    goto LABEL_109;
  }

  v196 = 0;
  if ([v161 save:&v196])
  {
    v158 = v196;

    sub_10019671C(v195, v194);
    sub_1002AB0B8(v154, type metadata accessor for ICArchiveModel);
    v71 = v182;
    goto LABEL_28;
  }

  v159 = v196;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v157 = v194;
  v156 = v195;
LABEL_109:
  sub_10019671C(v156, v157);
  v128 = v154;
LABEL_110:
  sub_1002AB0B8(v128, type metadata accessor for ICArchiveModel);
LABEL_27:
  v71 = v182;
LABEL_28:
  sub_1002A2F00(v71, "Import Objects from Archive");

  result = (*(v190 + 8))(v70, v191);
  a3[v5] = 0;
  return result;
}

uint64_t static ICArchiveImporter.Configuration.default.getter@<X0>(uint64_t a1@<X8>)
{
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  result = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  *a1 = IsAlexandriaDemoModeEnabled;
  *(a1 + 1) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_10029FA6C()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C2768);
  sub_10002597C(v0, qword_1006C2768);
  return static Logger.archiving.getter();
}

uint64_t sub_10029FAB8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  sub_100025918(v4, qword_1006C2780);
  sub_10002597C(v4, qword_1006C2780);
  if (qword_1006BC700 != -1)
  {
    swift_once();
  }

  v5 = sub_10002597C(v0, qword_1006C2768);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

id ICArchiveImporter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration;
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  v7 = *(v3 + 16);
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;

  return v7;
}

id ICArchiveImporter.init(context:configuration:fileManager:markdown:markdownFlavor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6)
{
  ObjectType = swift_getObjectType();

  return sub_1002A9D70(a1, a2, a3, a5, a6, v6, ObjectType, a4);
}

uint64_t sub_10029FDE0()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_1002AB008;
  v10 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10041C404;
  ObjectType = &unk_100653478;
  v3 = _Block_copy(aBlock);

  v4 = [v1 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);

  ObjectType = swift_getObjectType();
  aBlock[0] = v4;
  v5 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_1002AB010(aBlock, v0 + v5);
  return swift_endAccess();
}

void ICArchiveImporter.init()()
{
  v1 = [objc_opt_self() sharedContext];
  if (v1 && (v2 = v1, v3 = [v1 snapshotManagedObjectContext], v2, v3))
  {
    [v0 initWithContext:v3];
  }

  else
  {
    __break(1u);
  }
}

id ICArchiveImporter.__allocating_init(context:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  swift_getObjectType();
  v5 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v7 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v8 = objc_allocWithZone(v2);
  v8[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_isImporting] = 0;
  v9 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_errors;
  *&v8[v9] = sub_10018FC14(_swiftEmptyArrayStorage);
  *&v8[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_saveBatchSize] = 32;
  v8[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v10 = &v8[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v10 = 0u;
  v10[1] = 0u;
  *&v8[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_context] = a1;
  v11 = &v8[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration];
  *v11 = IsAlexandriaDemoModeEnabled;
  v11[1] = v7;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = 0;
  *(v11 + 16) = 2;
  v12 = &v8[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager];
  *v12 = v5;
  v12[1] = &protocol witness table for NSFileManager;
  v16.receiver = v8;
  v16.super_class = v2;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, "init");
  sub_10029FDE0();

  swift_deallocPartialClassInstance();
  return v14;
}

id ICArchiveImporter.init(context:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v5 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v6 = objc_allocWithZone(ObjectType);
  v6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_isImporting] = 0;
  v7 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_errors;
  *&v6[v7] = sub_10018FC14(_swiftEmptyArrayStorage);
  *&v6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_saveBatchSize] = 32;
  v6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v8 = &v6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v8 = 0u;
  v8[1] = 0u;
  *&v6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_context] = a1;
  v9 = &v6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration];
  *v9 = IsAlexandriaDemoModeEnabled;
  v9[1] = v5;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  *(v9 + 16) = 2;
  v10 = &v6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager];
  *v10 = v3;
  v10[1] = &protocol witness table for NSFileManager;
  v14.receiver = v6;
  v14.super_class = ObjectType;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_10029FDE0();

  swift_deallocPartialClassInstance();
  return v12;
}

void ICArchiveImporter.init(notesMarkdown:)(char a1)
{
  v2 = [objc_opt_self() sharedContext];
  if (v2 && (v3 = v2, v4 = [v2 snapshotManagedObjectContext], v3, v4))
  {
    swift_getObjectType();
    v6[0] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v6[1] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v10 = 2;
    v5 = [objc_opt_self() defaultManager];
    sub_1002A9A74(v4, v6, v5, a1 & 1, 2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

id ICArchiveImporter.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_100006038(v0 + v2, v10, &qword_1006BE7A0);
  v3 = [objc_opt_self() defaultCenter];
  sub_100006038(v10, &v8, &qword_1006BE7A0);
  if (v9)
  {
    sub_10001FA64(&v8, &v5);
    sub_10017CC60(&v5, v6);
    [v3 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    sub_100009F60(&v5);
  }

  sub_1000073B4(v10, &qword_1006BE7A0);

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1002A06E0()
{
  v1 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_100006038(v0 + v1, v7, &qword_1006BE7A0);
  v2 = [objc_opt_self() defaultCenter];
  sub_100006038(v7, &v5, &qword_1006BE7A0);
  if (v6)
  {
    sub_10001FA64(&v5, &v3);
    sub_10017CC60(&v3, v4);
    [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    sub_100009F60(&v3);
  }

  sub_1000073B4(v7, &qword_1006BE7A0);
}

uint64_t ICArchiveImporter.Errors.errorDescription.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 4 || a1 == 5)
    {
      goto LABEL_11;
    }
  }

  else if (a1 <= 1 || a1 == 2)
  {
LABEL_11:
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v4;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Int sub_1002A0A84()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002A0AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002AA85C();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t sub_1002A0B34@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002AA578(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1002A0B7C(uint64_t a1)
{
  v2 = sub_1002AA85C();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1002A0BB8(uint64_t a1)
{
  v2 = sub_1002AA85C();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1002A0BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002AA85C();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t sub_1002A0E44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v172 = a2;
  v4 = sub_10015DA04(&qword_1006BF480);
  __chkstk_darwin(v4 - 8);
  v177 = (v164 - v5);
  v6 = sub_10015DA04(&qword_1006BE8D0);
  v7 = *(v6 - 8);
  v178 = v6;
  v179 = v7;
  v8 = __chkstk_darwin(v6);
  v176 = v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v175 = v164 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v167 = v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v169 = v164 - v16;
  v17 = __chkstk_darwin(v15);
  v168 = v164 - v18;
  v19 = __chkstk_darwin(v17);
  v171 = v164 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = v164 - v22;
  __chkstk_darwin(v21);
  v25 = v164 - v24;
  URL.deletingPathExtension()();
  v170 = URL.lastPathComponent.getter();
  v27 = v26;
  v187 = v12;
  v30 = *(v12 + 8);
  v29 = v12 + 8;
  v28 = v30;
  v31 = v25;
  v32 = v11;
  v30(v31, v11);
  v185 = v2;
  v33 = *&v2[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager];
  v34 = *&v185[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager + 8];
  ObjectType = swift_getObjectType();
  v36 = v186;
  v37 = dispatch thunk of ICFileManaging.subdirectoriesOfDirectory(at:)();
  v174 = v36;
  if (v36)
  {
  }

  v164[2] = ObjectType;
  v164[3] = v33;
  v164[1] = v34;
  v166 = v27;
  v183 = v28;
  v184 = v29;
  v165 = a1;
  v186 = v37;
  v39 = *(v37 + 16);
  v185 = v185;
  v40 = &_swiftEmptyArrayStorage;
  v173 = v32;
  v41 = v178;
  v182 = v39;
  if (!v39)
  {
    v45 = v174;
LABEL_16:
    v54 = v41;

    v188[0] = v40;

    sub_1002A85A0(v188);
    v174 = v45;
    if (v45)
    {

      __break(1u);
      return result;
    }

    v44 = 0xEC00000065766968;
    v32 = 0x6372617365746F6ELL;

    v55 = v188[0];
    v43 = v165;
    v40 = URL.pathExtension.getter();
    v45 = v56;
    v57 = v179;
    v42 = v187;
    if (v40 == 0x6372617365746F6ELL && v56 == 0xEC00000065766968 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v58 = v173;
      v59 = v171;
      if (qword_1006BC700 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_10002597C(v60, qword_1006C2768);
      (*(v42 + 16))(v59, v43, v58);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = v59;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v188[0] = v65;
        *v64 = 136315138;
        v66 = URL.pathExtension.getter();
        v67 = v54;
        v69 = v68;
        v183(v63, v58);
        v70 = sub_100009D88(v66, v69, v188);
        v54 = v67;

        *(v64 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v61, v62, "Archive object type not supported inside archive — skipping {pathExtension: %s}", v64, 0xCu);
        sub_100009F60(v65);
      }

      else
      {

        v183(v59, v58);
      }

      return (*(v179 + 56))(v172, 1, 1, v54);
    }

    if (v40 == 0x746E756F636361 && v45 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v71 = v42;

      v72 = sub_10015DA04(&qword_1006C2888);
      v73 = swift_allocBox();
      v75 = v74;
      v76 = (v74 + *(v72 + 48));
      v77 = *(v72 + 64);
      (*(v71 + 16))(v74, v43, v173);
      v78 = v166;
      *v76 = v170;
      v76[1] = v78;
      *(v75 + v77) = v55;
      v79 = v172;
      *v172 = v73;
      (*(v57 + 104))(v79, enum case for ICObjectReferences.account<A>(_:), v54);
      return (*(v57 + 56))(v79, 0, 1, v54);
    }

    v186 = v55;
    v41 = 0x7265646C6F66;
    if (v40 == 0x7265646C6F66 && v45 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v80 = v42;

      v81 = sub_10015DA04(&qword_1006C2888);
      v82 = swift_allocBox();
      v84 = v83;
      v85 = (v83 + *(v81 + 48));
      v86 = *(v81 + 64);
      (*(v80 + 16))(v83, v43, v173);
      v87 = v166;
      *v85 = v170;
      v85[1] = v87;
      *(v84 + v86) = v186;
      v88 = v172;
      *v172 = v82;
      v89 = &enum case for ICObjectReferences.folder<A>(_:);
    }

    else
    {
      if ((v40 != 1702129518 || v45 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_41;
      }

      v91 = v42;

      v92 = sub_10015DA04(&qword_1006C2878);
      v93 = swift_allocBox();
      v95 = v94;
      v96 = (v94 + *(v92 + 48));
      v97 = *(v92 + 64);
      (*(v91 + 16))(v94, v43, v173);
      v98 = v166;
      *v96 = v170;
      v96[1] = v98;
      *(v95 + v97) = v186;
      v88 = v172;
      *v172 = v93;
      v89 = &enum case for ICObjectReferences.note<A>(_:);
    }

    v90 = v178;
    (*(v57 + 104))(v88, *v89, v178);
    return (*(v57 + 56))(v88, 0, 1, v90);
  }

  v42 = 0;
  v43 = v186;
  v180 = (v179 + 48);
  v181 = v187 + 16;
  v44 = v179 + 32;
  v45 = v174;
  v46 = v177;
  while (v42 < v43[2])
  {
    (*(v187 + 16))(v23, v43 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v42, v32);
    sub_1002A0E44(v23);
    if (v45)
    {

      v183(v23, v32);
    }

    v45 = 0;
    v183(v23, v32);
    if ((*v180)(v46, 1, v41) == 1)
    {
      sub_1000073B4(v46, &qword_1006BF480);
    }

    else
    {
      v47 = v46;
      v48 = *v44;
      v49 = v175;
      (*v44)(v175, v47, v41);
      v50 = v176;
      v48(v176, v49, v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1001CAC0C(0, v40[2] + 1, 1, v40);
      }

      v52 = v40[2];
      v51 = v40[3];
      if (v52 >= v51 >> 1)
      {
        v40 = sub_1001CAC0C(v51 > 1, v52 + 1, 1, v40);
      }

      v40[2] = v52 + 1;
      v53 = v40 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v52;
      v41 = v178;
      v48(v53, v50, v178);
      v45 = 0;
      v32 = v173;
      v46 = v177;
    }

    ++v42;
    v43 = v186;
    if (v182 == v42)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  v185 = v32;
  if (v40 == 0x656D686361747461 && v45 == 0xEA0000000000746ELL)
  {
  }

  else
  {
    v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v100 = v173;
    if ((v99 & 1) == 0)
    {

      if (qword_1006BC700 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_10002597C(v104, qword_1006C2768);
      v105 = v167;
      (*(v42 + 16))(v167, v43, v100);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      v108 = os_log_type_enabled(v106, v107);
      v109 = v178;
      if (v108)
      {
        v110 = swift_slowAlloc();
        v111 = v100;
        v112 = swift_slowAlloc();
        v188[0] = v112;
        *v110 = 136315138;
        v113 = URL.pathExtension.getter();
        v114 = v105;
        v116 = v115;
        v183(v114, v111);
        v117 = sub_100009D88(v113, v116, v188);

        *(v110 + 4) = v117;
        _os_log_impl(&_mh_execute_header, v106, v107, "Unknown object type — skipping {pathExtension: %s}", v110, 0xCu);
        sub_100009F60(v112);
      }

      else
      {

        v183(v105, v100);
      }

      return (*(v179 + 56))(v172, 1, 1, v109);
    }
  }

  v188[0] = &_swiftEmptyArrayStorage;
  sub_100189444(0, 5, 0);
  v101 = v188[0];
  v102 = 0x6372617365746F6ELL;
  v103 = 0x656D686361747461;
  v119 = v188[0][2];
  v118 = v188[0][3];
  v120 = v119 + 1;
  if (v119 >= v118 >> 1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v101[2] = v120;
    v121 = &v101[2 * v119];
    v121[4] = v102;
    v121[5] = v44;
    v122 = v42;
    v188[0] = v101;
    v123 = v101[3];
    v124 = v119 + 2;
    if (v120 >= v123 >> 1)
    {
      v159 = v119 + 2;
      v160 = v103;
      sub_100189444((v123 > 1), v159, 1);
      v103 = v160;
      v101 = v188[0];
    }

    v101[2] = v124;
    v125 = &v101[2 * v120];
    v125[4] = 0x746E756F636361;
    v125[5] = 0xE700000000000000;
    v188[0] = v101;
    v127 = v101[2];
    v126 = v101[3];
    v128 = v127 + 1;
    if (v127 >= v126 >> 1)
    {
      v161 = v103;
      sub_100189444((v126 > 1), v127 + 1, 1);
      v103 = v161;
      v101 = v188[0];
    }

    v101[2] = v128;
    v129 = &v101[2 * v127];
    v129[4] = v41;
    v129[5] = 0xE600000000000000;
    v188[0] = v101;
    v130 = v101[3];
    v131 = v127 + 2;
    if (v128 >= v130 >> 1)
    {
      v162 = v127 + 2;
      v163 = v103;
      sub_100189444((v130 > 1), v162, 1);
      v103 = v163;
      v101 = v188[0];
    }

    v101[2] = v131;
    v132 = &v101[2 * v128];
    v132[4] = 1702129518;
    v132[5] = 0xE400000000000000;
    v185 = v103;
    v133 = 0xEA0000000000746ELL;
    v102 = v166;
    v188[0] = v101;
    v135 = v101[2];
    v134 = v101[3];
    v120 = v135 + 1;
    if (v135 >= v134 >> 1)
    {
      v182 = 0xEA0000000000746ELL;
      sub_100189444((v134 > 1), v135 + 1, 1);
      v133 = v182;
      v101 = v188[0];
    }

    v101[2] = v120;
    v136 = &v101[2 * v135];
    v136[4] = v185;
    v136[5] = v133;
    v137 = v174;
    v119 = v101;
    v138 = dispatch thunk of ICFileManaging.contentsOfDirectory(at:)();
    if (v137)
    {
    }

    v44 = v138;
    v174 = 0;
    v181 = *(v138 + 16);
    v182 = v119;
    if (!v181)
    {
      break;
    }

    v41 = 0;
    v103 = v122 + 16;
    v180 = (v122 + 16);
    v177 = (v122 + 32);
    v42 = &_swiftEmptyArrayStorage;
    v139 = v168;
    while (1)
    {
      v118 = *(v44 + 16);
      if (v41 >= v118)
      {
        break;
      }

      v185 = ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v119 = *(v122 + 72);
      v120 = v173;
      (*(v122 + 16))(v139, &v185[v44 + v119 * v41], v173);
      v188[0] = URL.pathExtension.getter();
      v188[1] = v140;
      __chkstk_darwin(v188[0]);
      v164[-2] = v188;
      v141 = v174;
      v102 = sub_100474E24(sub_1001D3624, &v164[-4], v182);
      v174 = v141;

      if (v102)
      {
        v183(v139, v120);
      }

      else
      {
        v102 = *v177;
        (*v177)(v169, v139, v120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v189 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100189544(0, *(v42 + 16) + 1, 1);
          v139 = v168;
          v42 = v189;
        }

        v144 = *(v42 + 16);
        v143 = *(v42 + 24);
        if (v144 >= v143 >> 1)
        {
          sub_100189544(v143 > 1, v144 + 1, 1);
          v139 = v168;
          v42 = v189;
        }

        *(v42 + 16) = v144 + 1;
        (v102)(&v185[v42 + v144 * v119], v169, v173);
      }

      ++v41;
      v122 = v187;
      if (v181 == v41)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_77:
    v158 = v103;
    sub_100189444((v118 > 1), v120, 1);
    v103 = v158;
    v101 = v188[0];
  }

  v42 = &_swiftEmptyArrayStorage;
LABEL_75:

  v145 = *(v42 + 16);

  v146 = v145 > 1;
  v147 = sub_10015DA04(&qword_1006C2870);
  v148 = swift_allocBox();
  v150 = v149;
  v151 = (v149 + v147[12]);
  v152 = v147[16];
  v153 = v147[20];
  (*(v122 + 16))(v149, v165, v173);
  v154 = v166;
  *v151 = v170;
  v151[1] = v154;
  *(v150 + v152) = v146;
  *(v150 + v153) = v186;
  v155 = v172;
  *v172 = v148;
  v156 = v178;
  v157 = v179;
  (*(v179 + 104))(v155, enum case for ICObjectReferences.attachment<A>(_:), v178);
  return (*(v157 + 56))(v155, 0, 1, v156);
}

void sub_1002A2334(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [*(a1 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_context) ic_existingObjectWithID:a2];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_19:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = a1 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration;
  swift_beginAccess();
  v13 = *(v12 + 32);
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v16 = ICArchiveImporter.objects(forArchiveAt:)();
    if (!v4)
    {
      v17 = v16;
      if (a4)
      {
        v18 = a4;
      }

      else
      {
        v18 = [objc_allocWithZone(NSProgress) init];
      }

      v19 = a4;
      ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(v17, a3, v11, v18);
    }

    goto LABEL_12;
  }

  URL.startAccessingSecurityScopedResource()();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v9 = v9;
    sub_1002A2584(a3, v15, 0, 1);

LABEL_12:
    return;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    sub_1002A2584(a3, 0, 0, 1);
    goto LABEL_12;
  }

  v21 = v20;
  v22 = v9;
  v9 = [v21 defaultFolder];
  sub_1002A2584(a3, v9, 0, 1);
  if (v4)
  {

    goto LABEL_12;
  }
}

void sub_1002A2584(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v6 = v5;
  v7 = v4;
  v73 = a4;
  v72 = a3;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v75 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = &v65 - v14;
  if (qword_1006BC700 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    v79 = sub_10002597C(v15, qword_1006C2768);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "starting markdown archive import", v18, 2u);
    }

    if (!a2 || (v19 = [a2 account]) == 0)
    {
      v19 = [objc_opt_self() localAccountInContext:*&v7[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_context]];
      if (!v19)
      {
        break;
      }
    }

    v20 = v19;
    v21 = [objc_opt_self() defaultManager];
    v22 = NSFileManager.contentsOfDirectory(at:)();
    if (v6)
    {

      goto LABEL_9;
    }

    v66 = a1;
    v67 = a2;
    v70 = v7;
    v71 = v11;
    v79 = v10;
    v69 = 0;
    v23 = v22;

    v24 = *(v23 + 16);
    v25 = _swiftEmptyArrayStorage;
    v74 = v23;
    v68 = v20;
    if (v24)
    {
      v81 = _swiftEmptyArrayStorage;
      sub_100189444(0, v24, 0);
      v25 = v81;
      v26 = *(v71 + 16);
      v27 = v23 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v76 = *(v71 + 72);
      v77 = v26;
      v78 = v71 + 16;
      v28 = (v71 + 8);
      do
      {
        v30 = v79;
        v29 = v80;
        v77(v80, v27, v79);
        v31 = URL.pathExtension.getter();
        v33 = v32;
        (*v28)(v29, v30);
        v81 = v25;
        v35 = v25[2];
        v34 = v25[3];
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          sub_100189444((v34 > 1), v35 + 1, 1);
          v25 = v81;
        }

        v25[2] = v36;
        v37 = &v25[2 * v35];
        v37[4] = v31;
        v37[5] = v33;
        v27 += v76;
        --v24;
      }

      while (v24);
      v20 = v68;
    }

    else
    {
      v36 = _swiftEmptyArrayStorage[2];
    }

    v40 = v25 + 5;
    v41 = v36 + 1;
    a2 = v70;
    v11 = v71;
    a1 = v79;
    while (--v41)
    {
      if (*(v40 - 1) != 25709 || *v40 != 0xE200000000000000)
      {
        v40 += 2;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      v43 = v67;
      if (v67)
      {
        v44 = v67;
      }

      else
      {
        v44 = [v20 defaultFolder];
      }

      v49 = v66;
      v50 = v43;
      sub_1002A5E9C(v49, v44);

      return;
    }

    v84 = 0;
    v82 = 0;
    v83 = 1;
    v45 = &a2[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration];
    swift_beginAccess();
    if (v45[33] == 1)
    {
      URL.lastPathComponent.getter();
      v46 = URL.pathComponents.getter();
      if (v73)
      {
        v47 = v46;

        v48 = *(v47 + 16);

        v80 = 0;
        v82 = v48;
        v83 = 0;
      }

      else
      {
        v51 = v72;
        v82 = v72;
        v83 = 0;
        v52 = *(v46 + 16);

        if (__OFADD__(v51, 2))
        {
          __break(1u);
          return;
        }

        if (v51 + 2 >= v52)
        {
LABEL_44:

          v80 = 0;
          goto LABEL_45;
        }

        v53 = v67;
        if (v67)
        {
          v54 = String._bridgeToObjectiveC()();
          v55 = [v53 visibleChildFolderWithTitle:v54];

          v84 = v55;
          v80 = v55;
          if (v55)
          {
            goto LABEL_40;
          }

          v56 = &selRef_newFolderInParentFolder_;
        }

        else
        {
          v57 = String._bridgeToObjectiveC()();
          v58 = [v20 visibleRootFolderWithTitle:v57];

          v84 = v58;
          v80 = v58;
          if (v58)
          {
LABEL_40:

            goto LABEL_45;
          }

          v56 = &selRef_newFolderInAccount_;
          v53 = v20;
        }

        v84 = [objc_opt_self() *v56];
        v80 = v84;
        if (!v84)
        {
          goto LABEL_44;
        }

        v59 = String._bridgeToObjectiveC()();

        v60 = v80;
        [v80 setTitle:v59];

        v61 = String._bridgeToObjectiveC()();
        [v60 updateChangeCountWithReason:v61];
      }
    }

    else
    {
      v84 = v67;
      v80 = v67;
    }

LABEL_45:
    v6 = v69;
    v62 = v74;
    v7 = *(v74 + 16);
    if (!v7)
    {
LABEL_50:

      return;
    }

    v10 = 0;
    v63 = (v11 + 8);
    while (v10 < *(v62 + 16))
    {
      v64 = v75;
      (*(v11 + 16))(v75, v62 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10, a1);
      sub_1002A70C8(v64, a2, &v84, &v82);
      if (v6)
      {
        (*v63)(v64, a1);

        return;
      }

      ++v10;
      (*v63)(v64, a1);
      v62 = v74;
      if (v7 == v10)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  v21 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v21, v38, "no account found", v39, 2u);
  }

LABEL_9:
}

uint64_t sub_1002A2F00(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006BC708 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10002597C(v10, qword_1006C2780);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v5, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, v18, v13, v14, 2u);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1002A3190(uint64_t a1, void *a2, char *a3, void *a4)
{
  v5 = v4;
  v60 = a4;
  v58 = a2;
  v59 = a3;
  v7 = sub_10015DA04(&qword_1006BE8D0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v65 = _swiftEmptyArrayStorage;
    v52 = v9;
    sub_100189584(0, v12, 0);
    v13 = v52;
    v64 = v65;
    v15 = *(v8 + 16);
    v14 = v8 + 16;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v56 = (v14 - 8);
    v57 = v15;
    v53 = *(v14 + 56);
    v54 = v11;
    v55 = v14;
    while (1)
    {
      v62 = v12;
      v57(v11, v16, v13);
      v17 = sub_1002A35EC(v11, v58, v59, v60);
      if (v5)
      {
        break;
      }

      v21 = v17;
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v63 = 0;
      (*v56)(v11, v13);
      v25 = v64;
      v65 = v64;
      v27 = v64[2];
      v26 = v64[3];
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        sub_100189584((v26 > 1), v27 + 1, 1);
        v13 = v52;
        v28 = v27 + 1;
        v25 = v65;
      }

      v25[2] = v28;
      v64 = v25;
      v29 = &v25[4 * v27];
      v29[4] = v21;
      v29[5] = v22;
      v29[6] = v23;
      *(v29 + 56) = v24 & 1;
      v11 = v54;
      v16 += v53;
      v5 = v63;
      v12 = v62 - 1;
      if (v62 == 1)
      {
        v31 = v64;
        goto LABEL_11;
      }
    }

    (*v56)(v11, v13);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
    v28 = _swiftEmptyArrayStorage[2];
    v64 = _swiftEmptyArrayStorage;
    if (v28)
    {
LABEL_11:
      v63 = v5;
      v32 = 0;
      v33 = v31 + 7;
      v64 = _swiftEmptyArrayStorage;
      v61 = v28 - 1;
      v62 = v31 + 7;
LABEL_12:
      v34 = &v33[4 * v32];
      v35 = v32;
      while (v35 < v31[2])
      {
        v36 = v28;
        v37 = *(v34 - 3);
        v32 = v35 + 1;
        if (*v34 != 1)
        {
          v38 = *(v34 - 1);
          v60 = *(v34 - 2);

          v39 = v38;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = sub_1001CB0FC(0, v64[2] + 1, 1, v64);
          }

          v42 = v64[2];
          v41 = v64[3];
          v43 = (v42 + 1);
          if (v42 >= v41 >> 1)
          {
            v58 = (v42 + 1);
            v48 = sub_1001CB0FC((v41 > 1), v42 + 1, 1, v64);
            v43 = v58;
            v28 = v36;
            v64 = v48;
          }

          else
          {
            v28 = v36;
          }

          v44 = v64;
          v64[2] = v43;
          v45 = &v44[3 * v42];
          v46 = v59;
          v47 = v60;
          v45[4] = v37;
          v45[5] = v47;
          v45[6] = v46;
          v33 = v62;
          if (v61 == v35)
          {
LABEL_24:
            v5 = v63;
            goto LABEL_25;
          }

          goto LABEL_12;
        }

        v65 = *(v34 - 3);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        v34 += 32;
        ++v35;
        v28 = v36;
        if (v36 == v32)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_25:

      v49 = sub_10035F724(v64);

      if (v49[2])
      {
        sub_10015DA04(&qword_1006C2868);
        v50 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v50 = &_swiftEmptyDictionarySingleton;
      }

      v65 = v50;
      sub_1002AA2D8(v49, 1, &v65);
      if (!v5)
      {

        return v65;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002A35EC(uint64_t a1, void *a2, char *a3, void *a4)
{
  v160 = a1;
  v154 = a2;
  v155 = a3;
  v150 = type metadata accessor for ICAttachmentArchiveModel();
  __chkstk_darwin(v150);
  v151 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for ICNoteArchiveModel();
  __chkstk_darwin(v148);
  v149 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ICFolderArchiveModel(0);
  __chkstk_darwin(v152);
  v153 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_10015DA04(&qword_1006BE8D0);
  v156 = *(v159 - 8);
  v8 = __chkstk_darwin(v159);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v136 - v11);
  v162 = type metadata accessor for URL();
  v157 = *(v162 - 8);
  v13 = __chkstk_darwin(v162);
  v15 = (&v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v18 = &v136 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v136 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v136 - v23;
  __chkstk_darwin(v22);
  v26 = &v136 - v25;
  NSProgress.throwIfCancelled()();
  if (v27)
  {
    return v18;
  }

  v141 = v12;
  v142 = v21;
  v139 = v18;
  v140 = v15;
  v144 = a4;
  v29 = *(v158 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager);
  v28 = *(v158 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager + 8);
  v146 = v10;
  v147 = v28;
  swift_getObjectType();
  v30 = v159;
  ICObjectReferences.identifier.getter();
  URL.appendingPathComponent(_:isDirectory:)();
  v31 = v24;
  v32 = v30;
  v34 = v157 + 8;
  v33 = *(v157 + 1);
  v143 = v31;
  v33();
  v35 = dispatch thunk of ICFileManaging.contents(of:)();
  v161 = v33;
  v137 = v35;
  v138 = v36;
  v145 = v34;
  (v33)(v26, v162);
  v37 = v156;
  v38 = v141;
  (*(v156 + 16))(v141, v160, v32);
  v39 = (*(v37 + 88))(v38, v32);
  if (v39 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v37 + 96))(v38, v32);
    v40 = sub_10015DA04(&qword_1006C2888);
    v41 = swift_projectBox();
    v42 = *(v41 + *(v40 + 64));
    v43 = v162;
    (*(v157 + 2))(v142, v41);
    v44 = qword_1006BC8D0;

    if (v44 != -1)
    {
      swift_once();
    }

    sub_100284E64();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v164[0] = v163[0];
    v164[1] = v163[1];
    v164[2] = v163[2];
    v164[3] = v163[3];
    v18 = sub_1002A4C9C(v164, v42, v59, v154, v155, v144);
    (v161)(v142, v43);
    sub_10019671C(v137, v138);

    sub_100284D5C(v164);

    return v18;
  }

  v142 = v29;
  v45 = v162;
  v46 = v157;
  if (v39 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v37 + 96))(v38, v32);
    v47 = *v38;
    v48 = sub_10015DA04(&qword_1006C2888);
    v157 = v47;
    v49 = *(swift_projectBox() + *(v48 + 64));
    v50 = qword_1006BC8D0;

    if (v50 != -1)
    {
      swift_once();
    }

    sub_1002AA814(&qword_1006C2890, type metadata accessor for ICFolderArchiveModel);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v67 = v158 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration;
    swift_beginAccess();
    v68 = *(v67 + 16);
    v165[0] = *v67;
    v165[1] = v68;
    v166 = *(v67 + 32);
    v173 = v68;
    sub_100006038(&v173, v163, &qword_1006C27D0);
    v72 = sub_1003EFBAC(v154, v155, v165);
    sub_1002A9D40(v165);
    v73 = v72;
    v109 = sub_1002A3190(v49, v73, &off_100659218, v144);

    v110 = sub_1002A5C2C(v109, ICFolder_ptr, sub_1002E36A0);

    v111 = v153;
    v130 = sub_1003EFF94(v73, v110);

    sub_1003F0264(v73);

    sub_10019671C(v137, v138);
    v18 = *(v111 + 8);

    sub_1002AB0B8(v111, type metadata accessor for ICFolderArchiveModel);

    return v18;
  }

  if (v39 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v37 + 96))(v38, v32);
    v51 = *v38;
    v52 = sub_10015DA04(&qword_1006C2878);
    v153 = v51;
    v53 = swift_projectBox();
    v54 = *(v46 + 2);
    v55 = v45;
    v56 = *(v53 + *(v52 + 64));
    v54(v139, v53, v55);
    v57 = qword_1006BC8D0;

    if (v57 != -1)
    {
      swift_once();
    }

    sub_1002AA814(&qword_1006C2880, type metadata accessor for ICNoteArchiveModel);
    v58 = v149;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v74 = sub_1002A560C(v58, v56, v69, v154, v155, v144);
    sub_10019671C(v137, v138);

    sub_1002AB0B8(v58, type metadata accessor for ICNoteArchiveModel);
    (v161)(v139, v55);

    return v74;
  }

  if (v39 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v37 + 96))(v38, v32);
    v60 = *v38;
    v61 = sub_10015DA04(&qword_1006C2870);
    v153 = v60;
    v62 = swift_projectBox();
    v63 = *(v62 + *(v61 + 80));
    (*(v46 + 2))(v140, v62, v45);
    v64 = qword_1006BC8D0;
    v157 = v63;

    v65 = v146;
    if (v64 != -1)
    {
      swift_once();
    }

    sub_1002AA814(&qword_1006C1DD8, type metadata accessor for ICAttachmentArchiveModel);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v66 = v145;
    v70 = v158 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration;
    swift_beginAccess();
    v71 = *(v70 + 16);
    v169[0] = *v70;
    v169[1] = v71;
    v170 = *(v70 + 32);
    v171 = v71;
    sub_100006038(&v171, v163, &qword_1006C27D0);
    v75 = sub_100276894(v154, v155, v169);
    sub_1002A9D40(v169);
    v155 = v75;
    v112 = sub_1002A3190(v157, v155, &off_100659288, v144);

    v113 = sub_1002A5C2C(v112, ICAttachment_ptr, sub_1002E36B4);
    v157 = 0;

    v114 = v151;
    v115 = v161;
    v116 = v162;
    if (*(v151 + 88))
    {
      v117 = v143;
      URL.appendingPathComponent(_:isDirectory:)();
      URL._bridgeToObjectiveC()(v118);
      v120 = v119;

      v121 = v117;
      v116 = v162;
      (v115)(v121, v162);
    }

    v122 = v114 + *(v150 + 88);
    if ((*(v122 + 16) & 1) == 0)
    {
    }

    v123 = *(v70 + 16);
    v167[0] = *v70;
    v167[1] = v123;
    v168 = *(v70 + 32);
    v172 = *(v70 + 16);
    sub_100006038(&v172, v163, &qword_1006C27D0);
    v124 = v155;
    v125 = v140;
    v126 = v157;
    sub_100277094(v155, v140, v113, v142, v147, v167);
    if (v126)
    {
      sub_1002A9D40(v167);

      v128 = v144;
      v129 = [v144 completedUnitCount];
      if (!__OFADD__(v129, 1))
      {
        [v128 setCompletedUnitCount:v129 + 1];
        sub_10019671C(v137, v138);
        (v161)(v125, v116);
        sub_1002AB0B8(v151, type metadata accessor for ICAttachmentArchiveModel);

        v18 = v126;
        *&v163[0] = v126;
        swift_errorRetain();
        sub_10015DA04(&unk_1006C9B40);
        sub_1000054A4(0, &unk_1006C4560);
        if (!swift_dynamicCast())
        {
          goto LABEL_26;
        }

        v76 = v174;
        v77 = [v174 domain];
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        if (v78 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v80 == v81)
        {

          v82 = v76;
        }

        else
        {
          v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v82 = v76;
          if ((v83 & 1) == 0)
          {
LABEL_25:

LABEL_26:
            v157 = 0;
            v84 = v66;

            if (qword_1006BC700 != -1)
            {
              swift_once();
            }

            v85 = type metadata accessor for Logger();
            sub_10002597C(v85, qword_1006C2768);
            v86 = v156;
            v87 = v159;
            (*(v156 + 16))(v65, v160, v159);
            swift_errorRetain();
            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              LODWORD(v153) = v89;
              v91 = v90;
              v92 = swift_slowAlloc();
              v145 = v84;
              v154 = v92;
              *&v163[0] = v92;
              *v91 = 136315394;
              swift_getErrorValue();
              v152 = v88;
              v93 = Error.localizedDescription.getter();
              v95 = sub_100009D88(v93, v94, v163);

              *(v91 + 4) = v95;
              *(v91 + 12) = 2080;
              v155 = v126;
              v96 = v65;
              v97 = v143;
              ICObjectReferences.identifier.getter();
              sub_1002AA814(&qword_1006C0FF8, &type metadata accessor for URL);
              v98 = v162;
              v99 = dispatch thunk of CustomStringConvertible.description.getter();
              v101 = v100;
              (v161)(v97, v98);
              v18 = v155;
              (*(v86 + 8))(v96, v87);
              v102 = sub_100009D88(v99, v101, v163);

              *(v91 + 14) = v102;
              v103 = v152;
              _os_log_impl(&_mh_execute_header, v152, v153, "Cannot import model {error: %s, containerID: %s}", v91, 0x16u);
              swift_arrayDestroy();
              v104 = v161;
            }

            else
            {

              (*(v86 + 8))(v65, v87);
              v97 = v143;
              v104 = v161;
            }

            ICObjectReferences.identifier.getter();
            v105 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_errors;
            v106 = v158;
            swift_beginAccess();
            swift_errorRetain();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v174 = *(v106 + v105);
            *(v106 + v105) = 0x8000000000000000;
            sub_1002E690C(v18, v97, isUniquelyReferenced_nonNull_native);
            (v104)(v97, v162);
            *(v106 + v105) = v174;
            swift_endAccess();
            [v144 setCompletedUnitCount:{objc_msgSend(v144, "totalUnitCount")}];
            return v18;
          }
        }

        if ([v82 code] == 3072)
        {

          swift_willThrow();

          return v18;
        }

        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v131 = v127;

      sub_1002A9D40(v167);
      v132 = v151;
      v133 = *(v151 + 8);

      v134 = v144;
      v135 = [v144 completedUnitCount];
      if (!__OFADD__(v135, 1))
      {
        [v134 setCompletedUnitCount:v135 + 1];
        sub_10019671C(v137, v138);
        (v161)(v140, v116);
        sub_1002AB0B8(v132, type metadata accessor for ICAttachmentArchiveModel);

        return v133;
      }
    }

    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002A4C9C(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v96 = a2;
  v97 = a6;
  v10 = sub_10015DA04(&unk_1006C1710);
  v11 = __chkstk_darwin(v10 - 8);
  v92 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = &v76 - v13;
  v93 = type metadata accessor for Date();
  v91 = *(v93 - 8);
  v14 = __chkstk_darwin(v93);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v76 - v17;
  v19 = _s3TagVMa();
  v94 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v6;
  v22 = &v6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration];
  swift_beginAccess();
  v23 = *(v22 + 1);
  v100[0] = *v22;
  v100[1] = v23;
  v101 = *(v22 + 16);
  v102 = v23;
  sub_100006038(&v102, v99, &qword_1006C27D0);
  v24 = a5;
  v25 = a1;
  v26 = v103;
  v27 = sub_1002839DC(a4, v24, v100);
  v28 = v26;
  sub_1002A9D40(v100);
  if (v26)
  {
    return v28;
  }

  v87 = v22;
  v103 = 0;
  v90 = v21;
  v88 = v19;
  v89 = v18;
  v86 = v16;
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    v28 = v97;
    v36 = v96;
    if (!v35)
    {
      v41 = v25;
LABEL_35:
      v28 = *(v41 + 8);

      return v28;
    }

    v37 = v35;
    v38 = v27;
    v39 = v103;
    v40 = sub_1002A3190(v36, v37, &off_100659218, v28);
    if (v39)
    {

      return v28;
    }

    v44 = sub_1002A5C2C(v40, ICFolder_ptr, sub_1002E36A0);

    v41 = v25;
    v32 = sub_100283B90(v37, v44);

    v103 = 0;

LABEL_34:

    goto LABEL_35;
  }

  v31 = v30;
  v32 = v27;
  v33 = v103;
  v34 = sub_1002A3190(v96, v31, &off_1006591E0, v97);
  if (v33)
  {

    return v28;
  }

  v41 = v25;
  v98 = v27;
  v42 = sub_1002A5C2C(v34, ICFolder_ptr, sub_1002E36A0);

  v43 = sub_100283B90(v31, v42);
  v103 = 0;
  v45 = v43;

  v46 = *(v25 + 48);
  if (!v46)
  {
    goto LABEL_34;
  }

  v85 = v31;
  v77 = v32;
  v47 = v46 + 56;
  v48 = 1 << *(v46 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v46 + 56);
  v51 = (v48 + 63) >> 6;
  v78 = "Cannot create hashtag";
  v96 = (v91 + 6);
  v80 = (v91 + 4);
  v79 = (v91 + 7);
  ++v91;

  v53 = 0;
  v54 = v90;
  v81 = v41;
  v84 = v51;
  v83 = v47;
  v82 = v52;
  while (v50)
  {
LABEL_23:
    sub_1001CDB04(*(v52 + 48) + *(v94 + 72) * (__clz(__rbit64(v50)) | (v53 << 6)), v54);
    v59 = *v87;
    v97 = v87[2];
    v60 = String._bridgeToObjectiveC()();
    v61 = [objc_opt_self() hashtagWithDisplayText:v60 account:v85 createIfNecessary:1];

    if (!v61)
    {
      goto LABEL_37;
    }

    v62 = v61;
    v63 = v95;
    v64 = v61;
    if (v59)
    {
      v65 = String._bridgeToObjectiveC()();
      [v61 setDisplayText:v65];

      [v61 unmarkForDeletion];
      v66 = String._bridgeToObjectiveC()();
      [v61 updateChangeCountWithReason:v66];
    }

    sub_100006038(v90, v63, &unk_1006C1710);
    v67 = *v96;
    v68 = v93;
    if ((*v96)(v63, 1, v93) == 1)
    {
      v69 = [v61 creationDate];
      v56 = v81;
      if (v69)
      {
        v70 = v69;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v71 = *v80;
        v72 = v92;
        (*v80)(v92, v86, v68);
        (*v79)(v72, 0, 1, v68);
        v73 = v72;
        v63 = v95;
        v71(v89, v73, v68);
        v64 = v62;
      }

      else
      {
        v74 = v92;
        (*v79)(v92, 1, 1, v68);
        static Date.now.getter();
        if (v67(v74, 1, v68) != 1)
        {
          sub_1000073B4(v74, &unk_1006C1710);
        }
      }

      v75 = v67(v63, 1, v68);
      v55 = v89;
      if (v75 != 1)
      {
        sub_1000073B4(v63, &unk_1006C1710);
      }
    }

    else
    {
      v55 = v89;
      (*v80)(v89, v63, v68);
      v56 = v81;
    }

    v50 &= v50 - 1;
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*v91)(v55, v68);
    [v64 setCreationDate:isa];

    v54 = v90;
    sub_1002AB0B8(v90, _s3TagVMa);
    v41 = v56;
    v52 = v82;
    v47 = v83;
    v51 = v84;
  }

  while (1)
  {
    v58 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v58 >= v51)
    {

      v32 = v77;
      goto LABEL_34;
    }

    v50 = *(v47 + 8 * v58);
    ++v53;
    if (v50)
    {
      v53 = v58;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_37:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

NSObject *sub_1002A560C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void, void, void), void *a6)
{
  v7 = v6;
  v51 = a5;
  v50 = a4;
  v65 = sub_10015DA04(&qword_1006BE8D0);
  v11 = *(v65 - 8);
  __chkstk_darwin(v65);
  v13 = &v46 - v12;
  v14 = *(a2 + 16);
  isa = _swiftEmptyArrayStorage;
  v53 = a6;
  v48 = a2;
  if (v14)
  {
    v49 = v7;
    v47 = a1;
    v58 = _swiftEmptyArrayStorage;
    sub_1001895A4(0, v14, 0);
    isa = v58;
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v56 = v17;
    v18 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v55 = *(v16 + 56);
    v54 = (v16 - 8);
    do
    {
      v19 = v65;
      v20 = v16;
      v56(v13, v18, v65);
      v21 = ICObjectReferences.recursiveAttachmentCount.getter();
      (*v54)(v13, v19);
      v58 = isa;
      v23 = *(isa + 2);
      v22 = *(isa + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_1001895A4((v22 > 1), v23 + 1, 1);
        isa = v58;
      }

      *(isa + 2) = v24;
      *(isa + v23 + 4) = v21;
      v18 += v55;
      v14 = (v14 - 1);
      v16 = v20;
    }

    while (v14);
    a1 = v47;
    v7 = v49;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage[2];
    if (!v24)
    {
      goto LABEL_24;
    }
  }

  v25 = 0;
  v26 = 32;
  while (1)
  {
    v27 = *(isa + v26);
    v28 = __OFADD__(v25, v27);
    v25 += v27;
    if (v28)
    {
      break;
    }

    v26 += 8;
    if (!--v24)
    {
      while (1)
      {

        if (qword_1006BC700 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_10002597C(v29, qword_1006C2768);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 134217984;
          *(v32 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v30, v31, "Importing note… {attachmentCount: %ld}", v32, 0xCu);
        }

        result = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        isa = NSProgress.addingChild(totalUnitCount:pendingUnitCount:)(result, 1).super.isa;
        v34 = v7 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration;
        swift_beginAccess();
        v35 = *(v34 + 1);
        v61[0] = *v34;
        v61[1] = v35;
        v62 = *(v34 + 16);
        v63 = v35;
        sub_100006038(&v63, v57, &qword_1006C27D0);
        v36 = v52;
        v37 = sub_1004BFEFC(v50, v51, v61);
        if (v36)
        {
          sub_1002A9D40(v61);
          v37 = [(objc_class *)isa completedUnitCount];
          v38 = &v37->isa + 1;
          if (!__OFADD__(v37, 1))
          {
            goto LABEL_26;
          }

          __break(1u);
        }

        v30 = v37;
        sub_1002A9D40(v61);
        v39 = v7;
        v7 = v30;
        v40 = sub_1002A3190(v48, v7, &off_100659250, isa);
        if (!v36)
        {
          v49 = v39;
          v42 = v40;

          v43 = sub_1002A5C2C(v42, ICAttachment_ptr, sub_1002E36B4);

          v44 = *(v34 + 1);
          v59[0] = *v34;
          v59[1] = v44;
          v60 = *(v34 + 16);
          v64 = *(v34 + 1);
          sub_100006038(&v64, v57, &qword_1006C27D0);
          v45 = sub_1004C117C(v7, v43, v59);

          sub_1002A9D40(v59);
          sub_1004C15C4(v7);

          v14 = &selRef_showSimplifiedWebEditor_;
          sub_1002A813C([v53 completedUnitCount]);
          goto LABEL_28;
        }

        v41 = [(objc_class *)isa completedUnitCount];
        v38 = v41 + 1;
        if (!__OFADD__(v41, 1))
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_24:
        v25 = 0;
      }

      __break(1u);
      __break(1u);
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_28:
  v30 = *(a1 + 8);

  result = [isa v14[304]];
  v38 = &result->isa + 1;
  if (!__OFADD__(result, 1))
  {
LABEL_26:
    [(objc_class *)isa setCompletedUnitCount:v38];

    return v30;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1002A5C2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v34 = &_swiftEmptyDictionarySingleton;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        v16 = *(*(a1 + 56) + 8 * v12);
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_7;
        }
      }

      v32 = result;
      if (*(v34 + 3) <= *(v34 + 2))
      {
        v35 = *(v34 + 2);

        v20 = v16;
        a3(v35 + 1, 1);
        v19 = &_swiftEmptyDictionarySingleton;
      }

      else
      {

        v18 = v16;
        v19 = v34;
      }

      v34 = v19;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = v34 + 64;
      v22 = -1 << v34[32];
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*&v34[8 * (v23 >> 6) + 64]) == 0)
      {
        break;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*&v34[8 * (v23 >> 6) + 64])) | v23 & 0x7FFFFFFFFFFFFFC0;
      v26 = v32;
LABEL_24:
      *&v21[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
      v31 = (*(v34 + 6) + 16 * v25);
      *v31 = v14;
      v31[1] = v15;
      *(*(v34 + 7) + 8 * v25) = v26;
      ++*(v34 + 2);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v27 = 0;
    v28 = (63 - v22) >> 6;
    v26 = v32;
    while (++v24 != v28 || (v27 & 1) == 0)
    {
      v29 = v24 == v28;
      if (v24 == v28)
      {
        v24 = 0;
      }

      v27 |= v29;
      v30 = *&v21[8 * v24];
      if (v30 != -1)
      {
        v25 = __clz(__rbit64(~v30)) + (v24 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v17 >= v8)
      {

        return v34;
      }

      v7 = *(v4 + 8 * v17);
      ++v10;
      if (v7)
      {
        v10 = v17;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002A5E9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v105 = a2;
  v4 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v4 - 8);
  v93 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for NoteMetadata(0);
  __chkstk_darwin(v92);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for UUID();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for URL();
  v112 = *(v114 - 8);
  v9 = __chkstk_darwin(v114);
  v98 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v101 = &v84 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v84 - v14;
  v16 = __chkstk_darwin(v13);
  v109 = &v84 - v17;
  __chkstk_darwin(v16);
  v19 = &v84 - v18;
  v20 = sub_10015DA04(&qword_1006BCC20);
  v21 = __chkstk_darwin(v20 - 8);
  v102 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v113 = &v84 - v23;
  if (qword_1006BC700 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v24 = type metadata accessor for Logger();
    v107 = sub_10002597C(v24, qword_1006C2768);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "importing a markdown note", v27, 2u);
    }

    v28 = objc_opt_self();
    v29 = &selRef_countByEnumeratingWithState_objects_count_;
    v30 = [v28 defaultManager];
    v31 = NSFileManager.contentsOfDirectory(at:)();
    if (v3)
    {

      return;
    }

    v32 = v31;
    v91 = v15;
    v90 = v7;

    v115 = _swiftEmptyArrayStorage;
    v33 = v112;
    (*(v112 + 56))(v113, 1, 1, v114);
    v34 = *(v32 + 16);
    if (!v34)
    {
      break;
    }

    v15 = 0;
    v111 = (v33 + 16);
    v7 = (v33 + 8);
    while (v15 < *(v32 + 16))
    {
      v35 = v29;
      v36 = v28;
      v37 = v114;
      (*(v112 + 16))(v19, v32 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v15, v114);
      sub_1002A7358(v19, &v115, v113);
      ++v15;
      (*v7)(v19, v37);
      v28 = v36;
      v29 = v35;
      v3 = 0;
      if (v34 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

LABEL_10:

  v38 = v115;
  v99 = v115[2];
  if (v99)
  {
    v86 = v28;
    v95 = v110 + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration;
    swift_beginAccess();
    v15 = 0;
    v100 = v112 + 16;
    v97 = (v108 + 8);
    v96 = (v112 + 48);
    v88 = (v112 + 32);
    v7 = v109;
    v87 = v38;
    v107 = (v112 + 8);
    while (1)
    {
      if (v15 >= v38[2])
      {
        goto LABEL_49;
      }

      v39 = v38;
      (*(v112 + 16))(v7, v38 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v15, v114);
      v40 = Data.init(contentsOf:options:)();
      v42 = v41;
      v106 = v15;
      v43 = objc_opt_self();
      v110 = v42;
      v44 = v103;
      UUID.init()();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v46 = v44;
      v47 = v110;
      (*v97)(v46, v104);
      v48 = [v43 newEmptyNoteWithUUID:isa folder:v105];

      sub_1001C4E38(v40, v47);
      sub_1002AA12C(v40, v47);
      v108 = v40;
      if (!v49)
      {
        v118 = v40;
        v119 = v47;
        sub_1001C4E38(v40, v47);
        sub_10015DA04(&qword_1006C2848);
        if (swift_dynamicCast())
        {
          sub_100192680(v116, &v120);
          sub_10017CC60(&v120, *(&v121 + 1));
          if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
          {
            sub_10019671C(v108, v110);
            sub_10017CC60(&v120, *(&v121 + 1));
            dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
            sub_100009F60(&v120);
            goto LABEL_21;
          }

          sub_100009F60(&v120);
          v47 = v110;
          v40 = v108;
        }

        else
        {
          v117 = 0;
          memset(v116, 0, sizeof(v116));
          sub_1000073B4(v116, &qword_1006C2850);
        }

        sub_1002A99CC(v40, v47);
      }

      sub_10019671C(v40, v47);
LABEL_21:
      v50 = objc_allocWithZone(ICMarkdownRepresentation);
      v51 = String._bridgeToObjectiveC()();

      *&v120 = 0;
      v52 = [v50 initWithPlainMarkdown:v51 error:&v120];

      v38 = v39;
      if (!v52)
      {
        v83 = v120;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10019671C(v108, v110);
        (*v107)(v109, v114);
        goto LABEL_47;
      }

      v53 = v120;
      v54 = [v52 createRenderableAttributedString];
      v55 = [v48 textStorage];
      v111 = v54;
      if (v55)
      {
        v56 = v55;
        v57 = [objc_allocWithZone(ICTextController) init];
        [v56 setStyler:v57];
        [v56 setConvertAttributes:1];
        [v56 replaceCharactersInRange:0 withAttributedString:{0, v111}];
        [v56 setConvertAttributes:0];
        [v56 setStyler:0];
      }

      v58 = v102;
      sub_100006038(v113, v102, &qword_1006BCC20);
      if ((*v96)(v58, 1, v114) == 1)
      {
        sub_1000073B4(v58, &qword_1006BCC20);
        v59 = v107;
      }

      else
      {
        v60 = v91;
        (*v88)(v91, v58, v114);
        sub_1002AA8D0(v48, v60);
        v59 = v107;
        (*v107)(v60, v114);
      }

      if (*(v95 + 33) != 1)
      {
        goto LABEL_39;
      }

      v94 = v48;
      v61 = v109;
      if (URL.lastPathComponent.getter() == 0x646D2E65746F6ELL && v62 == 0xE700000000000000)
      {

LABEL_32:
        v89 = v52;
        v64 = v98;
        URL.deletingLastPathComponent()();
        v65 = v101;
        URL.appendingPathComponent(_:isDirectory:)();
        v66 = v107;
        v67 = *v107;
        v68 = v114;
        (*v107)(v64, v114);
        LOBYTE(v116[0]) = 0;
        v69 = [v86 v29[178]];
        URL.path.getter();
        v70 = String._bridgeToObjectiveC()();

        v71 = [v69 fileExistsAtPath:v70 isDirectory:v116];

        if (v71)
        {
          v72 = v67;
          v73 = Data.init(contentsOf:options:)();
          v75 = v74;
          v122 = 0;
          v120 = 0u;
          v121 = 0u;
          sub_1001C4E38(v73, v74);
          BinaryDecodingOptions.init()();
          sub_1002AA814(&qword_1006BF4D0, type metadata accessor for NoteMetadata);
          Message.init(serializedData:extensions:partial:options:)();
          v48 = v94;
          v52 = v89;
          v85 = v75;
          v76 = [v94 managedObjectContext];
          v38 = v87;
          if (v76)
          {
            v77 = v76;
            v78 = __chkstk_darwin(v76);
            *(&v84 - 4) = v90;
            *(&v84 - 3) = v48;
            *(&v84 - 2) = v78;
            NSManagedObjectContext.performAndWait<A>(_:)();
            v72(v101, v114);
            sub_10019671C(v73, v85);
          }

          else
          {
            v72(v101, v114);
            sub_10019671C(v73, v85);
          }

          sub_1002AB0B8(v90, type metadata accessor for NoteMetadata);
          v59 = v107;
LABEL_39:
          v79 = v108;
        }

        else
        {
          v67(v65, v68);
          v38 = v87;
          v59 = v66;
          v79 = v108;
          v48 = v94;
          v52 = v89;
        }

        v61 = v109;
        goto LABEL_41;
      }

      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v63)
      {
        goto LABEL_32;
      }

      v59 = v107;
      v79 = v108;
      v48 = v94;
LABEL_41:
      v19 = v106 + 1;
      [v48 save];

      v15 = v19;
      sub_10019671C(v79, v110);
      (*v59)(v61, v114);
      v7 = v61;
      if (v99 == v19)
      {
        goto LABEL_47;
      }
    }
  }

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "could not find markdown file URLs", v82, 2u);
  }

LABEL_47:
  sub_1000073B4(v113, &qword_1006BCC20);
}

void sub_1002A70C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22[0] = a3;
  v22[7] = a2;
  v7 = type metadata accessor for URLResourceValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006BC700 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10002597C(v11, qword_1006C2768);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "found a folder", v14, 2u);
  }

  sub_10015DA04(&qword_1006C2840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  *(inited + 32) = NSURLIsDirectoryKey;
  v16 = NSURLIsDirectoryKey;
  sub_10045859C(inited);
  swift_setDeallocating();
  sub_1002AB0B8(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v4)
  {
    v17 = URLResourceValues.isDirectory.getter();
    (*(v8 + 8))(v10, v7);
    if (v17 != 2 && (v17 & 1) != 0)
    {
      v18 = *v22[0];
      v19 = *a4;
      v20 = *(a4 + 8);
      v21 = *v22[0];
      sub_1002A2584(a1, v18, v19, v20);
    }
  }
}

uint64_t sub_1002A7358(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for URLResourceValues();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.pathExtension.getter() == 25709 && v13 == 0xE200000000000000)
  {

LABEL_5:
    (*(v10 + 16))(v12, a1, v9);
    v15 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1001CB50C(0, v15[2] + 1, 1, v15);
      *a2 = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1001CB50C(v17 > 1, v18 + 1, 1, v15);
      *a2 = v15;
    }

    v15[2] = v18 + 1;
    return (*(v10 + 32))(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v12, v9);
  }

  v26 = a3;
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_5;
  }

  sub_10015DA04(&qword_1006C2840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  *(inited + 32) = NSURLIsDirectoryKey;
  v21 = NSURLIsDirectoryKey;
  sub_10045859C(inited);
  swift_setDeallocating();
  sub_1002AB0B8(inited + 32, type metadata accessor for URLResourceKey);
  v22 = v28;
  URL.resourceValues(forKeys:)();

  if (!v22)
  {
    v23 = URLResourceValues.isDirectory.getter();
    result = (*(v27 + 8))(v8, v6);
    if (v23 != 2 && (v23 & 1) != 0)
    {
      v24 = v26;
      sub_1000073B4(v26, &qword_1006BCC20);
      (*(v10 + 16))(v24, a1, v9);
      return (*(v10 + 56))(v24, 0, 1, v9);
    }
  }

  return result;
}

uint64_t sub_1002A76F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v74 = a3;
  v75 = a8;
  v77 = a7;
  v81 = a5;
  v82 = a6;
  v73 = a2;
  v9 = sub_10015DA04(&qword_1006C2858);
  __chkstk_darwin(v9 - 8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for URLResourceValues();
  v13 = *(v12 - 8);
  v79 = v12;
  v80 = v13;
  __chkstk_darwin(v12);
  v78 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v76 = &v72 - v21;
  __chkstk_darwin(v20);
  v23 = &v72 - v22;
  v24 = sub_10015DA04(&qword_1006BCC20);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v72 - v28;
  sub_100006038(a1, v83, &qword_1006BE7A0);
  if (v84)
  {
    v30 = swift_dynamicCast();
    v31 = *(v16 + 56);
    v31(v29, v30 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v29, 1, v15) != 1)
    {
      v32 = URL.path(percentEncoded:)(1);
      result = (*(v16 + 8))(v29, v15);
      countAndFlagsBits = v32._countAndFlagsBits;
      if (!v32._object)
      {
        return result;
      }

LABEL_12:
      URL.deletingLastPathComponent()();
      v31(v27, 0, 1, v15);
      URL.init(fileURLWithPath:relativeTo:)();

      sub_1000073B4(v27, &qword_1006BCC20);
      v34 = URL.path(percentEncoded:)(1);
      v35 = sub_10033AD70(v34._countAndFlagsBits, v34._object, v82);

      if (v35)
      {
        sub_10015DA04(&qword_1006C2840);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100531E30;
        *(inited + 32) = NSURLTotalFileSizeKey;
        v37 = NSURLTotalFileSizeKey;
        sub_10045859C(inited);
        swift_setDeallocating();
        sub_1002AB0B8(inited + 32, type metadata accessor for URLResourceKey);
        URL.resourceValues(forKeys:)();

        v39 = v79;
        v38 = v80;
        (*(v80 + 56))(v11, 0, 1, v79);
        v40 = v78;
        (*(v38 + 32))(v78, v11, v39);
        v41 = URLResourceValues.totalFileSize.getter();
        if (v42)
        {
          (*(v38 + 8))(v40, v39);
          if (qword_1006BC700 != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          sub_10002597C(v43, qword_1006C2768);
          (*(v16 + 16))(v19, v23, v15);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v82 = v23;
            v48 = v47;
            v83[0] = v47;
            *v46 = 136315138;
            v49 = URL.path(percentEncoded:)(1);
            v50 = *(v16 + 8);
            v50(v19, v15);
            v51 = sub_100009D88(v49._countAndFlagsBits, v49._object, v83);

            *(v46 + 4) = v51;
            _os_log_impl(&_mh_execute_header, v44, v45, "Unable to import attachment at path %s because unable to get file size.", v46, 0xCu);
            sub_100009F60(v48);

            return (v50)(v82, v15);
          }

          v52 = *(v16 + 8);
          v52(v19, v15);
          return (v52)(v23, v15);
        }

        v53 = v77;
        if ([v77 attachmentExceedsMaxSizeAllowed:v41])
        {
          if (qword_1006BC700 != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          sub_10002597C(v55, qword_1006C2768);
          v56 = v76;
          (*(v16 + 16))(v76, v23, v15);
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v82 = v23;
            v61 = v60;
            v83[0] = v60;
            *v59 = 136315138;
            v62 = URL.path(percentEncoded:)(1);
            v63 = *(v16 + 8);
            v63(v56, v15);
            v64 = sub_100009D88(v62._countAndFlagsBits, v62._object, v83);

            *(v59 + 4) = v64;
            _os_log_impl(&_mh_execute_header, v57, v58, "Unable to import attachment at path %s because it exceeds maximum allowed size in note.", v59, 0xCu);
            sub_100009F60(v61);

            (*(v80 + 8))(v78, v39);
            return (v63)(v82, v15);
          }

          v52 = *(v16 + 8);
          v52(v56, v15);
          (*(v80 + 8))(v40, v39);
          return (v52)(v23, v15);
        }

        URL._bridgeToObjectiveC()(v54);
        v66 = v65;
        v67 = [v53 addAttachmentWithFileURL:v65];

        if (v67)
        {
          v68 = [objc_allocWithZone(ICTextAttachment) initWithAttachment:v67];
          v69 = [objc_opt_self() attributedStringWithAttachment:v68];
          v70 = [v69 ic_range];
          [v75 ic_replaceCharactersInRange:v73 withAttributedSubstring:v74 fromRange:{v69, v70, v71}];

          v40 = v78;
        }

        [v53 save];
        (*(v38 + 8))(v40, v39);
      }

      return (*(v16 + 8))(v23, v15);
    }
  }

  else
  {
    sub_1000073B4(v83, &qword_1006BE7A0);
    v31 = *(v16 + 56);
    v31(v29, 1, 1, v15);
  }

  sub_1000073B4(v29, &qword_1006BCC20);
  sub_100006038(a1, v83, &qword_1006BE7A0);
  if (!v84)
  {
    return sub_1000073B4(v83, &qword_1006BE7A0);
  }

  result = swift_dynamicCast();
  if (!result)
  {
    countAndFlagsBits = 0;
    v86 = 0;
    return result;
  }

  if (v86)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1002A813C(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarning;
  if ((v1[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarning] & 1) != 0 || (result & 0x1F) == 0)
  {
    if (qword_1006BC700 == -1)
    {
      goto LABEL_4;
    }

    while (1)
    {
      swift_once();
LABEL_4:
      v4 = type metadata accessor for Logger();
      sub_10002597C(v4, qword_1006C2768);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Saving batch of imported notes and resetting inserted objects…", v7, 2u);
      }

      v8 = *&v2[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_context];
      v9 = [v8 insertedObjects];
      sub_1000054A4(0, &qword_1006C2D00);
      sub_1002AB118();
      v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v28[0] = 0;
      if (![v8 save:v28])
      {
        v15 = v28[0];

        _convertNSErrorToError(_:)();

        return swift_willThrow();
      }

      v26 = v3;
      v27 = v2;
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = v28[0];

        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v10 = v28[1];
        v12 = v28[2];
        v13 = v28[3];
        v2 = v28[4];
        v14 = v28[5];
      }

      else
      {
        v16 = -1 << *(v10 + 32);
        v12 = (v10 + 56);
        v13 = ~v16;
        v17 = -v16;
        v18 = v17 < 64 ? ~(-1 << v17) : -1;
        v14 = (v18 & *(v10 + 56));
        v19 = v28[0];

        v2 = 0;
      }

      v25 = v13;
      v3 = (v13 + 64) >> 6;
      if (v10 < 0)
      {
        break;
      }

LABEL_15:
      v20 = v2;
      v21 = v14;
      v22 = v2;
      if (v14)
      {
LABEL_19:
        v23 = (v21 - 1) & v21;
        v24 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
        if (v24)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      while (1)
      {
        v22 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v3)
        {
          goto LABEL_25;
        }

        v21 = v12[v22];
        ++v20;
        if (v21)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    while (__CocoaSet.Iterator.next()())
    {
      swift_dynamicCast();
      v24 = v28[0];
      v22 = v2;
      v23 = v14;
      if (!v28[0])
      {
        break;
      }

LABEL_23:
      [v8 refreshObject:v24 mergeChanges:{0, v25}];

      v2 = v22;
      v14 = v23;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_25:
    sub_10019E530();

    v27[v26] = 0;
  }

  return result;
}

void sub_1002A84D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarning] = 1;
  }
}

void *sub_1002A852C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10015DA04(&qword_1006C2860);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

Swift::Int sub_1002A85A0(void **a1)
{
  v2 = *(sub_10015DA04(&qword_1006BE8D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001B39E4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1002A8654(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1002A8654(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10015DA04(&qword_1006BE8D0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10015DA04(&qword_1006BE8D0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002A8A34(v8, v9, a1, v4);
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
    return sub_1002A8798(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002A8798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10015DA04(&qword_1006BE8D0);
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      sub_1001CDC98();
      v25 = dispatch thunk of static Comparable.< infix(_:_:)();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002A8A34(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_10015DA04(&qword_1006BE8D0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v125 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v133 = &v118 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v118 - v16;
  result = __chkstk_darwin(v15);
  v139 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = &_swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_1001B36CC(a4);
    }

    v141 = result;
    v113 = *(result + 16);
    if (v113 >= 2)
    {
      while (*a3)
      {
        a4 = v113 - 1;
        v114 = *(result + 16 * v113);
        v115 = result;
        v116 = *(result + 16 * (v113 - 1) + 40);
        sub_1002A9430(*a3 + *(v10 + 72) * v114, *a3 + *(v10 + 72) * *(result + 16 * (v113 - 1) + 32), *a3 + *(v10 + 72) * v116, v5);
        if (v6)
        {
        }

        if (v116 < v114)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_1001B36CC(v115);
        }

        if (v113 - 2 >= *(v115 + 2))
        {
          goto LABEL_122;
        }

        v117 = &v115[16 * v113];
        *v117 = v114;
        *(v117 + 1) = v116;
        v141 = v115;
        sub_1001B3640(a4);
        result = v141;
        v113 = *(v141 + 16);
        if (v113 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v136 = (v10 + 8);
  v137 = v10 + 16;
  v135 = (v10 + 32);
  v21 = &_swiftEmptyArrayStorage;
  v123 = a3;
  v120 = a4;
  v140 = v9;
  v119 = v10;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v36 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v23 = v9;
      v24 = *a3;
      v25 = v10;
      v26 = *(v10 + 72);
      v5 = v24 + v26 * (v20 + 1);
      v127 = v24;
      v27 = *(v25 + 16);
      v27(v139, v5, v23);
      v28 = v24 + v26 * v22;
      v29 = v25;
      v122 = v22;
      v30 = v138;
      v130 = v27;
      v27(v138, v28, v23);
      v31 = sub_1001CDC98();
      v32 = v139;
      v129 = v31;
      LODWORD(v132) = dispatch thunk of static Comparable.< infix(_:_:)();
      v33 = *(v29 + 8);
      v33(v30, v23);
      v128 = v33;
      result = (v33)(v32, v23);
      v34 = v122 + 2;
      v134 = v26;
      v35 = v127 + v26 * (v122 + 2);
      while (1)
      {
        v36 = v131;
        if (v131 == v34)
        {
          break;
        }

        v38 = v139;
        v37 = v140;
        v39 = v130;
        (v130)(v139, v35, v140);
        v40 = v6;
        v41 = v138;
        v39(v138, v5, v37);
        v42 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v43 = v41;
        v6 = v40;
        v44 = v128;
        v128(v43, v37);
        result = v44(v38, v37);
        ++v34;
        v35 += v134;
        v5 += v134;
        if ((v132 & 1) != v42)
        {
          v36 = v34 - 1;
          break;
        }
      }

      v22 = v122;
      a3 = v123;
      v10 = v119;
      v21 = v126;
      a4 = v120;
      v9 = v140;
      if (v132)
      {
        if (v36 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v36)
        {
          v45 = v134 * (v36 - 1);
          v5 = v36 * v134;
          v131 = v36;
          v46 = v36;
          v47 = v122;
          v48 = v122 * v134;
          do
          {
            if (v47 != --v46)
            {
              v50 = *a3;
              if (!v50)
              {
                goto LABEL_131;
              }

              v132 = *v135;
              (v132)(v125, v50 + v48, v140, v21);
              if (v48 < v45 || v50 + v48 >= v50 + v5)
              {
                v49 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v140;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v132)(v50 + v45, v125, v49);
              a3 = v123;
              v21 = v126;
            }

            ++v47;
            v45 -= v134;
            v5 -= v134;
            v48 += v134;
          }

          while (v47 < v46);
          v10 = v119;
          a4 = v120;
          v9 = v140;
          v22 = v122;
          v36 = v131;
        }
      }
    }

    v51 = a3[1];
    if (v36 < v51)
    {
      if (__OFSUB__(v36, v22))
      {
        goto LABEL_124;
      }

      if (v36 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v51)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v36 != v5)
        {
          break;
        }
      }
    }

    v5 = v36;
    if (v36 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v126;
    }

    else
    {
      result = sub_1001B36E0(0, *(v126 + 2) + 1, 1, v126);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      result = sub_1001B36E0((v52 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_133;
    }

    v127 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a4 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_1002A9430(*a3 + *(v10 + 72) * v94, *a3 + *(v10 + 72) * *&v21[16 * v5 + 32], *a3 + *(v10 + 72) * v95, v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_1001B36CC(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v141 = v93;
        result = sub_1001B3640(v5);
        v21 = v141;
        v53 = *(v141 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v120;
    v9 = v140;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v118 = v6;
  v97 = *a3;
  v98 = *(v10 + 72);
  v134 = *(v10 + 16);
  v99 = v97 + v98 * (v36 - 1);
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = v100 - v36;
  v132 = v97;
  v124 = v98;
  a4 = v97 + v36 * v98;
  v127 = v5;
LABEL_85:
  v130 = v99;
  v131 = v36;
  v128 = a4;
  v129 = v102;
  v103 = v99;
  while (1)
  {
    v104 = v139;
    v105 = v134;
    (v134)(v139, a4, v9, v21);
    v106 = v138;
    v105(v138, v103, v140);
    sub_1001CDC98();
    v107 = dispatch thunk of static Comparable.< infix(_:_:)();
    v108 = *v136;
    v109 = v106;
    v9 = v140;
    (*v136)(v109, v140);
    result = v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v36 = v131 + 1;
      v99 = &v130[v124];
      v102 = v129 - 1;
      a4 = v128 + v124;
      v5 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v118;
      v22 = v122;
      a3 = v123;
      v10 = v119;
      if (v127 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    v110 = *v135;
    v111 = v133;
    (*v135)(v133, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    a4 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
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
  return result;
}

uint64_t sub_1002A9430(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = sub_10015DA04(&qword_1006BE8D0);
  v8 = *(v56 - 8);
  v9 = __chkstk_darwin(v56);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v53 = &v44 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v55 = a3;
  v16 = (a2 - a1) / v14;
  v59 = a1;
  v58 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v18;
    if (v18 >= 1)
    {
      v29 = -v14;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v18;
      v31 = v55;
      v46 = a1;
      v47 = a4;
      v50 = v29;
      do
      {
        v44 = v28;
        v32 = a2 + v29;
        v33 = v28;
        v51 = a2;
        v52 = a2 + v29;
        while (1)
        {
          if (a2 <= a1)
          {
            v59 = a2;
            v28 = v44;
            goto LABEL_59;
          }

          v35 = v31;
          v45 = v33;
          v55 = v31 + v29;
          v36 = v30 + v29;
          v37 = *v49;
          v38 = v53;
          v39 = v30 + v29;
          v40 = v30;
          v41 = v56;
          (*v49)(v53, v39, v56);
          v42 = v54;
          (v37)(v54, v32, v41);
          sub_1001CDC98();
          LOBYTE(v37) = dispatch thunk of static Comparable.< infix(_:_:)();
          v43 = *v48;
          (*v48)(v42, v41);
          v43(v38, v41);
          if (v37)
          {
            break;
          }

          v33 = v36;
          v31 = v55;
          if (v35 < v40 || v55 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v52;
            a1 = v46;
          }

          else
          {
            v32 = v52;
            a1 = v46;
            if (v35 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v36;
          v34 = v36 > v47;
          v29 = v50;
          a2 = v51;
          if (!v34)
          {
            v28 = v33;
            goto LABEL_58;
          }
        }

        v31 = v55;
        if (v35 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v46;
          v30 = v40;
        }

        else
        {
          a2 = v52;
          a1 = v46;
          v30 = v40;
          if (v35 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v45;
        v29 = v50;
      }

      while (v30 > v47);
    }

LABEL_58:
    v59 = a2;
LABEL_59:
    v57 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v17;
    v57 = a4 + v17;
    if (v17 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v14;
      v49 = (v8 + 8);
      do
      {
        v20 = v53;
        v21 = v56;
        v22 = v50;
        v50(v53, a2, v56);
        v23 = v54;
        v22(v54, a4, v21);
        sub_1001CDC98();
        v24 = dispatch thunk of static Comparable.< infix(_:_:)();
        v25 = *v49;
        (*v49)(v23, v21);
        v25(v20, v21);
        if (v24)
        {
          v26 = v48;
          if (a1 < a2 || a1 >= v48 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

  sub_10049FAD0(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_1002A99CC(uint64_t a1, unint64_t a2)
{
  sub_1001C4E38(a1, a2);
  sub_1002A9FB0(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_1002A9A38@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1002A9A74(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  v10 = a4;
  v11 = type metadata accessor for ICArchiveImporter();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_isImporting] = 0;
  v13 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_errors;
  *&v12[v13] = sub_10018FC14(_swiftEmptyArrayStorage);
  *&v12[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_saveBatchSize] = 32;
  v12[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v14 = &v12[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v14 = 0u;
  v14[1] = 0u;
  *&v12[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_context] = a1;
  if (v10 == 2 || (a4 & 1) == 0)
  {
    v23 = &v12[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration];
    v24 = *(a2 + 32);
    v25 = *(a2 + 16);
    *v23 = *a2;
    *(v23 + 1) = v25;
    *(v23 + 16) = v24;
    v26 = a1;
    sub_1002AB080(a2, v31);
  }

  else
  {
    v15 = a1;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v17 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v18 = &v12[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration];
    *v18 = IsAlexandriaDemoModeEnabled;
    v18[1] = v17;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = 0;
    v18[32] = 1;
    v18[33] = a5;
    if (qword_1006BC700 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10002597C(v19, qword_1006C2768);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "archiver init", v22, 2u);
    }
  }

  v27 = &v12[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager];
  *v27 = a3;
  v27[1] = &protocol witness table for NSFileManager;
  v30.receiver = v12;
  v30.super_class = v11;
  v28 = objc_msgSendSuper2(&v30, "init");
  sub_10029FDE0();
  sub_1002A9D40(a2);

  return v28;
}

id sub_1002A9CB8(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, Class a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_allocWithZone(a6);

  return sub_1002A9D70(a1, a2, a3, a4, a5, v15, a7, a8);
}

id sub_1002A9D70(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v15 = a4;
  ObjectType = swift_getObjectType();
  a6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_isImporting] = 0;
  v17 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_errors;
  *&a6[v17] = sub_10018FC14(_swiftEmptyArrayStorage);
  *&a6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_saveBatchSize] = 32;
  a6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v18 = &a6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v18 = 0u;
  v18[1] = 0u;
  *&a6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_context] = a1;
  if (v15 == 2 || (a4 & 1) == 0)
  {
    v27 = &a6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration];
    v28 = *(a2 + 16);
    *v27 = *a2;
    *(v27 + 1) = v28;
    *(v27 + 16) = *(a2 + 32);
    v29 = a1;
    sub_1002AB080(a2, v34);
  }

  else
  {
    v19 = a1;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v21 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v22 = &a6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration];
    *v22 = IsAlexandriaDemoModeEnabled;
    v22[1] = v21;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 1) = 0;
    v22[32] = 1;
    v22[33] = a5;
    if (qword_1006BC700 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10002597C(v23, qword_1006C2768);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "archiver init", v26, 2u);
    }
  }

  v30 = &a6[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager];
  *v30 = a3;
  v30[1] = a8;
  v33.receiver = a6;
  v33.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v33, "init");
  sub_10029FDE0();
  sub_1002A9D40(a2);

  return v31;
}

void *sub_1002A9FB0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_10019671C(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1002A852C(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_10019671C(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1002AA12C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

void sub_1002AA2D8(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_1002DF11C(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_1002E2C50(v17, i & 1);
    v12 = sub_1002DF11C(v8, v7);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v20 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v26 = (v20[6] + 16 * v12);
    *v26 = v8;
    v26[1] = v7;
    *(v20[7] + 8 * v12) = v11;
    v27 = v20[2];
    v16 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v20[2] = v28;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v25 = v12;
  sub_1002E8538();
  v12 = v25;
  v20 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = v12;
  v22 = *(v20[7] + 8 * v12);

  v23 = v20[7];
  v24 = *(v23 + 8 * v21);
  *(v23 + 8 * v21) = v22;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 72); ; i += 3)
    {
      v11 = *(i - 2);
      v6 = *(i - 1);
      v33 = *i;
      v34 = *a3;

      v7 = v33;
      v35 = sub_1002DF11C(v11, v6);
      v37 = v34[2];
      v38 = (v36 & 1) == 0;
      v16 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v16)
      {
        break;
      }

      v8 = v36;
      if (v34[3] < v39)
      {
        sub_1002E2C50(v39, 1);
        v35 = sub_1002DF11C(v11, v6);
        if ((v8 & 1) != (v40 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v29 = v35;
        v30 = *(v3[7] + 8 * v35);

        v31 = v3[7];
        v32 = *(v31 + 8 * v29);
        *(v31 + 8 * v29) = v30;
      }

      else
      {
        v3[(v35 >> 6) + 8] |= 1 << v35;
        v41 = (v3[6] + 16 * v35);
        *v41 = v11;
        v41[1] = v6;
        *(v3[7] + 8 * v35) = v7;
        v42 = v3[2];
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v3[2] = v43;
      }

      if (!--v18)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

unint64_t sub_1002AA578(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1002AA5AC()
{
  result = qword_1006C27F0;
  if (!qword_1006C27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C27F0);
  }

  return result;
}

unint64_t sub_1002AA604()
{
  result = qword_1006C27F8;
  if (!qword_1006C27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C27F8);
  }

  return result;
}

unint64_t sub_1002AA65C()
{
  result = qword_1006C2800;
  if (!qword_1006C2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2800);
  }

  return result;
}

unint64_t sub_1002AA6B4()
{
  result = qword_1006C2808;
  if (!qword_1006C2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2808);
  }

  return result;
}

__n128 sub_1002AA72C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002AA740(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
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

uint64_t sub_1002AA79C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1002AA814(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002AA85C()
{
  result = qword_1006C2838;
  if (!qword_1006C2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2838);
  }

  return result;
}

void sub_1002AA8D0(void *a1, uint64_t a2)
{
  v59 = a1;
  v4 = type metadata accessor for URL();
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v56 - v8;
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = NSFileManager.contentsOfDirectory(at:)();

  if (!v2)
  {
    v63 = v9;
    v56 = a2;
    v57 = v5;
    v66 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v69 = v4;
    v58 = 0;
    v65 = *(v13 + 16);
    if (v65)
    {
      v14 = 0;
      v64 = (v67 + 16);
      v61 = (v67 + 32);
      v15 = (v67 + 8);
      v62 = _swiftEmptyArrayStorage;
      v16 = v69;
      while (1)
      {
        if (v14 >= *(v13 + 16))
        {
          __break(1u);
          return;
        }

        v17 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v18 = *(v67 + 72);
        (*(v67 + 16))(v11, v13 + v17 + v18 * v14, v16);
        if (URL.pathExtension.getter() == 1852797802 && v19 == 0xE400000000000000)
        {
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {
            v21 = *v61;
            (*v61)(v63, v11, v16);
            v22 = v62;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v22;
            v60 = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100189544(0, v22[2] + 1, 1);
              v22 = aBlock[0];
            }

            v25 = v22[2];
            v24 = v22[3];
            if (v25 >= v24 >> 1)
            {
              sub_100189544(v24 > 1, v25 + 1, 1);
              v22 = aBlock[0];
            }

            v22[2] = v25 + 1;
            v62 = v22;
            v26 = v22 + v17 + v25 * v18;
            v16 = v69;
            v60(v26);
            goto LABEL_6;
          }
        }

        (*v15)(v11, v16);
LABEL_6:
        if (v65 == ++v14)
        {
          goto LABEL_17;
        }
      }
    }

    v62 = _swiftEmptyArrayStorage;
    v16 = v69;
LABEL_17:

    v27 = v62[2];
    if (v27)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      v28 = v62;
      sub_100189444(0, v27, 0);
      v29 = aBlock[0];
      v30 = *(v67 + 16);
      v31 = v28 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v63 = *(v67 + 72);
      v64 = v30;
      v65 = (v67 + 16);
      v32 = (v67 + 8);
      do
      {
        v33 = v66;
        v34 = v69;
        v64(v66, v31, v69);
        v35 = URL.path(percentEncoded:)(1);
        (*v32)(v33, v34);
        aBlock[0] = v29;
        v37 = v29[2];
        v36 = v29[3];
        if (v37 >= v36 >> 1)
        {
          sub_100189444((v36 > 1), v37 + 1, 1);
          v29 = aBlock[0];
        }

        v29[2] = v37 + 1;
        *&v29[2 * v37 + 4] = v35;
        v31 = &v63[v31];
        --v27;
      }

      while (v27);

      v16 = v69;
    }

    else
    {

      v29 = _swiftEmptyArrayStorage;
    }

    v38 = sub_10026FDD0(v29);

    v39 = v59;
    v40 = [v59 textStorage];
    v41 = v57;
    if (v40)
    {
      v65 = NSLinkAttributeName;
      v62 = v40;
      v42 = [v40 ic_range];
      v63 = v43;
      v64 = v42;
      v44 = v66;
      v45 = v67;
      (*(v67 + 16))(v66, v56, v16);
      v46 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v47 = (v41 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      (*(v45 + 32))(v49 + v46, v44, v69);
      *(v49 + v47) = v38;
      *(v49 + v48) = v39;
      v50 = v62;
      *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1002AAF2C;
      *(v51 + 24) = v49;
      aBlock[4] = sub_1001A1F54;
      aBlock[5] = v51;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004AEAA8;
      aBlock[3] = &unk_100653428;
      v52 = _Block_copy(aBlock);
      v53 = v39;
      v54 = v50;

      [v54 enumerateAttribute:v65 inRange:v64 options:v63 usingBlock:{2, v52}];

      _Block_release(v52);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}