uint64_t sub_100553258(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100058000(&qword_10078C4E8);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100553460(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100058000(&qword_100782420);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100553684(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_100553848(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_100552850(v11, v6, a2, a1);
  }

  return v9;
}

uint64_t sub_100553848(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100553460(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

Class sub_100553C24(_BYTE *a1)
{
  v81 = type metadata accessor for TTRSectionID();
  v3 = *(v81 - 8);
  v4 = __chkstk_darwin(v81);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v84 = &v66 - v7;
  v66 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v68 = v8;
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRSectionLite();
  v10 = __chkstk_darwin(v9);
  v83 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v73 = &v66 - v14;
  v70 = a1;
  v15 = *a1;
  v82 = *(*a1 + 16);
  if (v82)
  {
    v16 = 0;
    v78 = v13 + 16;
    v77 = enum case for TTRSectionID.sectionless(_:);
    v75 = (v3 + 8);
    v76 = (v3 + 104);
    v74 = (v13 + 32);
    v71 = (v13 + 8);
    v17 = _swiftEmptyArrayStorage;
    v18 = v73;
    v72 = v6;
    v79 = v15;
    v80 = v13;
    while (v16 < *(v15 + 16))
    {
      v19 = v17;
      *&v86 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v85 = *(v13 + 72);
      (*(v13 + 16))(v18, v15 + v86 + v85 * v16, v9);
      v20 = v84;
      TTRSectionLite.sectionID.getter();
      v21 = v81;
      (*v76)(v6, v77, v81);
      sub_100554D5C(&qword_10076BE70, &type metadata accessor for TTRSectionID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v1 = v75;
      a1 = *v75;
      (*v75)(v6, v21);
      (a1)(v20, v21);
      if (v22)
      {
        v12 = (*v71)(v18, v9);
        v17 = v19;
      }

      else
      {
        v23 = *v74;
        (*v74)(v83, v18, v9);
        v17 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1AE0(0, *(v19 + 16) + 1, 1);
          v17 = aBlock[0];
        }

        v26 = *(v17 + 2);
        v25 = *(v17 + 3);
        a1 = (v26 + 1);
        if (v26 >= v25 >> 1)
        {
          sub_1004A1AE0(v25 > 1, v26 + 1, 1);
          v17 = aBlock[0];
        }

        *(v17 + 2) = a1;
        v12 = v23(&v17[v86 + v26 * v85], v83, v9);
        v6 = v72;
        v18 = v73;
      }

      ++v16;
      v15 = v79;
      v13 = v80;
      if (v82 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_13:
    v85 = v17;
    __chkstk_darwin(v12);
    v27 = v70;
    v64 = v70;
    *&v86 = sub_10007DC28(sub_1005547A4, &v62, v17);
    v84 = *(v66 + 36);
    static TTRLocalizableStrings.Sections.newSectionWithSelection(listLayout:)();
    sub_100003540(0, &qword_10076BA60);
    v28 = v69;
    sub_10048AE00(v27, v69);
    v9 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v29 = v9 + v68;
    v30 = swift_allocObject();
    sub_10048AE64(v28, v30 + v9);
    v63 = sub_10048AEC8;
    v64 = v30;
    v62 = 0;
    v1 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v31._object = 0x8000000100688A10;
    v32._countAndFlagsBits = 1701736270;
    v32._object = 0xE400000000000000;
    v31._countAndFlagsBits = 0xD000000000000045;
    TTRLocalizedString(_:comment:)(v32, v31);
    sub_10048AE00(v27, v28);
    v33 = swift_allocObject();
    sub_10048AE64(v28, v33 + v9);
    v63 = sub_1005547C0;
    v64 = v33;
    v62 = 0;
    a1 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [a1 setState:*(v27 + 24) > 1u];
    sub_10048AE00(v27, v28);
    v34 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_10048AE64(v28, v35 + v9);
    *(v35 + v34) = v85;
    aBlock[4] = sub_100554830;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10010C96C;
    aBlock[3] = &unk_10072E438;
    v36 = _Block_copy(aBlock);
    v16 = [objc_opt_self() elementWithProvider:v36];
    _Block_release(v36);

    aBlock[0] = _swiftEmptyArrayStorage;
    LODWORD(v9) = *(v27 + 26);
    if (v9)
    {
      sub_100003540(0, &unk_10076B890);
      sub_100058000(&qword_10076B780);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_10062D420;
      *(v37 + 32) = a1;
      v38 = a1;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v88.value.super.isa = 0;
      v88.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v39, 0, v88, 1, 0xFFFFFFFFFFFFFFFFLL, v37, v65);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v40 = v86;
    if (!(v86 >> 62))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100003540(0, &qword_10076C550);
      v41 = v40;
      goto LABEL_19;
    }
  }

  sub_100003540(0, &qword_10076C550);

  v41 = _bridgeCocoaArray<A>(_:)();

LABEL_19:

  sub_1000815D0(v41);
  if (v9)
  {
    sub_100003540(0, &unk_10076B890);
    sub_100058000(&qword_10076B780);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10062D420;
    *(v42 + 32) = v1;
    v43 = v1;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    v89.value.super.isa = 0;
    v89.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v44, 0, v89, 1, 0xFFFFFFFFFFFFFFFFLL, v42, v65);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (v70[25] == 1)
  {
    v45 = static TTRLocalizableStrings.Sections.suggestedSectionHeaderText(listLayout:)();
    v47 = v46;
    v48 = static TTRLocalizableStrings.Sections.suggestedSectionHeaderDescriptionText(listLayout:)();
    v50 = v49;
    sub_100003540(0, &unk_10076B890);
    sub_100058000(&qword_10076B780);
    v51 = swift_allocObject();
    v86 = xmmword_10062D420;
    *(v51 + 16) = xmmword_10062D420;
    *(v51 + 32) = v16;
    v52 = v16;
    v53._countAndFlagsBits = v48;
    v53._object = v50;
    v90.value.super.isa = 0;
    v90.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v53, 0, v90, 1, 0xFFFFFFFFFFFFFFFFLL, v51, v65).super.super.isa;
    v55 = swift_allocObject();
    *(v55 + 16) = v86;
    *(v55 + 32) = isa;
    v56 = isa;
    v57._countAndFlagsBits = v45;
    v57._object = v47;
    v91.value.super.isa = 0;
    v91.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v57, 0, v91, 0, 0xFFFFFFFFFFFFFFFFLL, v55, v65);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100003540(0, &unk_10076B890);
  v58 = static TTRCommonAsset.Image.sectionIcon.getter();
  v64 = sub_1000E88C0(aBlock[0]);
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v92.value.super.isa = v58;
  v92.is_nil = 0;
  v60 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v59, 0, v92, 0, 0xFFFFFFFFFFFFFFFFLL, v64, v65).super.super.isa;

  return v60;
}

uint64_t sub_1005547C0(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100551B4C(a1, v4);
}

uint64_t sub_100554830(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100551C58(a1, a2, v2 + v6, v7);
}

uint64_t sub_1005548DC(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_100551DC0(a1, v1 + v4, v6, v8, v9);
}

unint64_t sub_100554988()
{
  result = qword_10078C4D0;
  if (!qword_10078C4D0)
  {
    sub_10005D20C(&qword_10078C4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C4D0);
  }

  return result;
}

uint64_t sub_100554A10()
{
  v1 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v4 = *(v1 - 8);
  result = v1 - 8;
  v3 = v4;
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v0 + *(result + 56) + v5);
  if (*v6)
  {
    v7 = (v0 + ((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
    return (*v6)(*v7, v7[1]);
  }

  return result;
}

uint64_t sub_100554AB4()
{
  v1 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for TTRSectionLite();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  sub_100263FE4(*(v8 + 16), *(v8 + 24));
  v9 = v1[9];
  v10 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  if (*(v0 + v3 + v1[12]))
  {
  }

  if (*(v8 + v1[13]))
  {
  }

  v11 = v2 | v6;
  v12 = (v3 + v14 + v6) & ~v6;
  (*(v5 + 8))(v0 + v12, v4);

  return _swift_deallocObject(v0, v12 + v7, v11 | 7);
}

uint64_t sub_100554C94(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for TTRSectionLite();
  return sub_10055275C(a1, v1 + v4);
}

uint64_t sub_100554D5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100554DC0()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_100058000(&qword_10078C698);
    NSKeyValueObservedChange.oldValue.getter();
    v6 = *&v11[1];
    v7 = *&v11[2];
    v8 = v12;
    NSKeyValueObservedChange.newValue.getter();
    if (v8)
    {
      if (v15)
      {
      }
    }

    else if ((v15 & 1) == 0 && v6 == v13 && v7 == v14)
    {
    }

    if (*(v5 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_isActive) == 1)
    {
      v10 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID;
      swift_beginAccess();
      (*(v1 + 16))(v3, v5 + v10, v0);
      PassthroughSubject.send(_:)();
      (*(v1 + 8))(v3, v0);
    }
  }

  return result;
}

uint64_t sub_100554F84()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_isActive) == 1)
    {
      v5 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID;
      v6 = result;
      swift_beginAccess();
      (*(v1 + 16))(v3, v6 + v5, v0);
      PassthroughSubject.send(_:)();
      (*(v1 + 8))(v3, v0);
    }
  }

  return result;
}

uint64_t sub_1005550DC()
{
  v1 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000B070(v0 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_contentSizeObservation);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIBoardColumnChromelessBarsStateContributor()
{
  result = qword_10078C540;
  if (!qword_10078C540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10055520C()
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005552D0()
{
  sub_100058000(&qword_10078C680);
  sub_1005553F0();
  return Publisher.eraseToAnyPublisher()();
}

unint64_t sub_1005553F0()
{
  result = qword_10078C688;
  if (!qword_10078C688)
  {
    sub_10005D20C(&qword_10078C680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C688);
  }

  return result;
}

uint64_t sub_100555454()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078C6A0);
  v1 = sub_100003E30(v0, qword_10078C6A0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10055552C()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  if (qword_100767450 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10078C6A0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  swift_getObjectType();
  v6 = dispatch thunk of TTRShowPublicTemplateDataModelSourceType.listRepresentation.getter();
  if (v6)
  {
    v7 = v6;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = v7;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v1;
    v11[5] = v9;
    sub_10009E31C(0, 0, v4, &unk_100646278, v11);
  }

  else
  {
    v16 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v16, v12, "TTRIShowPublicTemplatePresenter: failed to create list; missing listRepresentation", v13, 2u);
    }

    v14 = v16;
  }
}

uint64_t sub_1005557A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[15] = v7;
  v5[16] = v6;

  return _swift_task_switch(sub_100555844, v7, v6);
}

uint64_t sub_100555844()
{
  v0[17] = *(v0[11] + 88);
  v0[18] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[19] = v2;
  v0[20] = v1;

  return _swift_task_switch(sub_1005558DC, v2, v1);
}

uint64_t sub_1005558DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_1005559C4;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[15];
    v4 = v0[16];

    return _swift_task_switch(sub_100555B68, v3, v4);
  }
}

uint64_t sub_1005559C4()
{
  v1 = *v0;
  v2 = *(*v0 + 168);

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return _swift_task_switch(sub_100555B04, v4, v3);
}

uint64_t sub_100555B04()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_100555B68, v1, v2);
}

uint64_t sub_100555B68()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      v4 = v0[11];
      v0[5] = type metadata accessor for TTRIShowPublicTemplatePresenter();
      v0[6] = &off_10071AA88;
      v0[2] = v4;
      (*(v3 + 16))(v0 + 2, ObjectType, v3);

      swift_unknownObjectRelease();
      sub_100004758((v0 + 2));
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v5 = v0[11];
  v6 = objc_allocWithZone(TTRUndoManager);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithDebugIdentifier:v7];
  v0[23] = v8;

  v9 = *(v5 + 80);
  v10 = swift_getObjectType();
  v11 = v8;
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_100555D28;
  v13 = v0[12];

  return dispatch thunk of TTRRemindersListInteractorType.createList(fromREMListRepresentationOfPublicTemplate:storingUndoStepsIn:)(v13, v8, v10, v9);
}

uint64_t sub_100555D28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = *(v3 + 120);
    v5 = *(v3 + 128);
    v6 = sub_100555F3C;
  }

  else
  {

    v4 = *(v3 + 120);
    v5 = *(v3 + 128);
    v6 = sub_100555E44;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100555E44()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    v4 = v0[25];
    v5 = v0[23];
    if (v3)
    {
      sub_10000C36C((v2 + 48), *(v2 + 72));
      sub_100395F48(v4, v5, 1);
      swift_unknownObjectRelease();
      v6 = v5;
      v5 = v4;
    }

    else
    {
      swift_unknownObjectRelease();
      v6 = v4;
    }
  }

  else
  {
    v6 = v0[25];
    v5 = v0[23];
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100555F3C()
{
  v15 = v0;
  v1 = *(v0 + 184);

  if (qword_100767450 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10078C6A0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 184);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.rem_errorDescription.getter();
    v11 = sub_100004060(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRMShowPublicTemplatePresenter: failed to create list from template {error: %s}", v7, 0xCu);
    sub_100004758(v8);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100556120()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (qword_100767450 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10078C6A0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v1;
  sub_10009E31C(0, 0, v4, &unk_100646268, v8);
}

uint64_t sub_1005562BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[7] = a4;
  v4[8] = *a4;
  v4[9] = type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v6;
  v4[12] = v5;

  return _swift_task_switch(sub_100556380, v6, v5);
}

uint64_t sub_100556380()
{
  v0[13] = *(v0[7] + 88);
  v0[14] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[15] = v2;
  v0[16] = v1;

  return _swift_task_switch(sub_100556418, v2, v1);
}

uint64_t sub_100556418()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_100556500;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[11];
    v4 = v0[12];

    return _swift_task_switch(sub_1005566A4, v3, v4);
  }
}

uint64_t sub_100556500()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return _swift_task_switch(sub_100556640, v4, v3);
}

uint64_t sub_100556640()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_1005566A4, v1, v2);
}

uint64_t sub_1005566A4()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v0[7];
      v0[5] = v0[8];
      v0[6] = &off_10071AA88;
      v0[2] = v3;
      (*(v2 + 16))(v0 + 2, ObjectType, v2);

      swift_unknownObjectRelease();
      sub_100004758((v0 + 2));
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005567AC()
{
  sub_1001E6A30();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowPublicTemplatePresenter()
{
  result = qword_10078C6E8;
  if (!qword_10078C6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005568B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_1005562BC(a1, v4, v5, v6);
}

uint64_t sub_10055696C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_1005557A8(a1, v4, v5, v7, v6);
}

void sub_100556A2C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v4 = Strong;
  if (a2)
  {

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = v6;
  if (a2)
  {
    v7 = String.count.getter();

    v8 = v7 < 1;
  }

  else
  {
    v8 = 1;
  }

  [v9 setHidden:v8];
}

void sub_100556B30(void *a1)
{
  if (!a1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController);
    if (v9)
    {
      sub_100469C1C();
      v10 = v9;
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v10 setContacts:isa];

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        [Strong setHidden:1];
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      return;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController);
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_100058000(&qword_10076B780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10062D420;
  *(v4 + 32) = a1;
  sub_100469C1C();
  v5 = a1;
  v6 = v2;
  v7 = Array._bridgeToObjectiveC()().super.isa;

  [v6 setContacts:v7];

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v8;
  [v8 setHidden:0];

LABEL_8:
}

void sub_100556CCC()
{
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "awakeFromNib");
  v1 = OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController;
  if (*&v0[OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController])
  {
    goto LABEL_7;
  }

  v2 = [objc_allocWithZone(CNAvatarViewController) init];
  v3 = *&v0[v1];
  *&v0[v1] = v2;
  v4 = v2;

  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v4 setThreeDTouchEnabled:0];

  v5 = *&v0[v1];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = [v5 view];
  [v6 setAutoresizingMask:18];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = Strong;
  [Strong addSubview:v6];

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v6 setFrame:{v12, v14, v16, v18}];
LABEL_7:
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = objc_opt_self();
      v22 = [v21 labelColor];
      [v20 setTextColor:v22];

      v23 = swift_unknownObjectWeakLoadStrong();
      if (v23)
      {
        v24 = v23;
        v25 = [v21 secondaryLabelColor];
        [v24 setTextColor:v25];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

id sub_100557028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController] = 0;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v7);

  return v8;
}

id sub_100557154(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id TTRIRootAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRootAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIRootAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRootAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100557388()
{
  result = (*(v0 + 16))(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10055740C()
{
  sub_100014EBC(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item);

  return TTRTreeStorageItem.treeItemDescription.getter();
}

uint64_t destroy for TTRIAccountsListsViewUpdateOptions(uint64_t result)
{
  if (*(result + 8))
  {
  }

  return result;
}

__n128 sub_10055748C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a2 + 8);
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = *(a2 + 16);
    *(a1 + 8) = v2;
    *(a1 + 16) = v4;
  }

  else
  {
    result = *v3;
    *(a1 + 8) = *v3;
  }

  return result;
}

uint64_t assignWithCopy for TTRIAccountsListsViewUpdateOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = (a1 + 8);
  v5 = (a2 + 8);
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (v4)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v4;
      *(a1 + 16) = v7;

      return a1;
    }

LABEL_7:
    *v3 = *v5;
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;

  return a1;
}

__n128 assignWithTake for TTRIAccountsListsViewUpdateOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v2 = (a1 + 8);
  v4 = (a2 + 8);
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3)
    {
      v5 = *(a2 + 16);
      *(a1 + 8) = v3;
      *(a1 + 16) = v5;

      return result;
    }
  }

  else if (v3)
  {
    v7 = *(a2 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v7;
    return result;
  }

  result = *v4;
  *v2 = *v4;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRIAccountsListsViewUpdateOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TTRIAccountsListsViewUpdateOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1005576E8()
{
  result = qword_10078D1E0;
  if (!qword_10078D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078D1E0);
  }

  return result;
}

uint64_t *sub_10055773C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_100058000(&qword_10076B9A0);
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    *v9 = *v10;
    v11 = *(v10 + 1);
    if (v11)
    {
      v12 = *(v10 + 2);
      *(v9 + 1) = v11;
      *(v9 + 2) = v12;
    }

    else
    {
      *(v9 + 8) = *(v10 + 8);
    }
  }

  return a1;
}

uint64_t sub_100557840(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076B9A0);
  result = (*(*(v4 - 8) + 8))(a1, v4);
  if (*(a1 + *(a2 + 20) + 8))
  {
  }

  return result;
}

uint64_t sub_1005578D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076B9A0);
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = *(v9 + 16);
    *(v8 + 8) = v10;
    *(v8 + 16) = v11;
  }

  else
  {
    *(v8 + 8) = *(v9 + 8);
  }

  return a1;
}

uint64_t sub_100557990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076B9A0);
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 1) = *(v9 + 1);
  v10 = (v8 + 8);
  v12 = (v9 + 8);
  v11 = *(v9 + 8);
  if (!*(v8 + 8))
  {
    if (v11)
    {
      v14 = *(v9 + 16);
      *(v8 + 8) = v11;
      *(v8 + 16) = v14;

      return a1;
    }

LABEL_7:
    *v10 = *v12;
    return a1;
  }

  if (!v11)
  {

    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  *(v8 + 8) = v11;
  *(v8 + 16) = v13;

  return a1;
}

uint64_t sub_100557A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076B9A0);
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t sub_100557B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076B9A0);
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 1) = *(v9 + 1);
  v10 = (v8 + 8);
  v12 = (v9 + 8);
  v11 = *(v9 + 8);
  if (!*(v8 + 8))
  {
    if (v11)
    {
      v14 = *(v9 + 16);
      *(v8 + 8) = v11;
      *(v8 + 16) = v14;
      return a1;
    }

LABEL_7:
    *v10 = *v12;
    return a1;
  }

  if (!v11)
  {

    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  *(v8 + 8) = v11;
  *(v8 + 16) = v13;

  return a1;
}

uint64_t sub_100557C34()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100003E68(v6, static OpenNewReminderAppIntent.title);
  sub_100003E30(v6, static OpenNewReminderAppIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenNewReminderAppIntent.title.unsafeMutableAddressor()
{
  if (qword_100767458 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_100003E30(v0, static OpenNewReminderAppIntent.title);
}

uint64_t static OpenNewReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100767458 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100003E30(v2, static OpenNewReminderAppIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenNewReminderAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_100767528);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t OpenNewReminderAppIntent.perform()(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for REMNavigationSpecifier();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for RemindersAppIntentCategory();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005583C8, v6, v5);
}

uint64_t sub_1005583C8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v11 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  (*(v3 + 104))(v1, enum case for RemindersAppIntentCategory.publicAppIntent(_:), v2);
  sub_1002B5D00();
  AppIntent.postAnalytics(category:)();
  (*(v3 + 8))(v1, v2);
  (*(v8 + 104))(v6, enum case for REMNavigationSpecifier.newReminder(_:), v7);
  REMNavigationSpecifier.url.getter();
  (*(v8 + 8))(v6, v7);
  URL.open()();
  (*(v5 + 8))(v4, v11);
  static IntentResult.result<>()();

  v9 = v0[1];

  return v9();
}

unint64_t sub_10055854C()
{
  result = qword_10078D280;
  if (!qword_10078D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078D280);
  }

  return result;
}

unint64_t sub_1005585A4()
{
  result = qword_10078D288;
  if (!qword_10078D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078D288);
  }

  return result;
}

uint64_t sub_100558678(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AA3C;

  return OpenNewReminderAppIntent.perform()(a1);
}

uint64_t sub_100558710(uint64_t a1)
{
  v2 = sub_1002B5D00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_1005588CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong isViewLoaded])
    {
      sub_1000165F0();
    }
  }
}

id sub_100558930(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  result = [v1 collectionView];
  if (result)
  {
    v4 = result;
    v5 = [result contextMenuInteraction];

    [v5 dismissMenu];

    TTRModuleState.viewWillDisappear()();

    swift_getObjectType();
    return dispatch thunk of TTRAccountsListsInteractorType.pauseUpdates()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100558AE0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078D510);
  __chkstk_darwin(v10 - 8);
  v12 = (&v36 - v11);
  v13 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  v38 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v2 splitViewController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 displayMode];

    if (v19 == 1)
    {
      goto LABEL_5;
    }
  }

  v20 = [v2 presentedViewController];
  if (v20)
  {

LABEL_5:
    v21 = 0;
    return v21 & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v21 = [v2 isEditing] ^ 1;
    return v21 & 1;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    sub_10000794C(v40, &v45, &qword_10076AE40);
    v24 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v25 = sub_10000C36C(&v45, *(&v46 + 1));
      v26 = *(v24 - 8);
      v27 = __chkstk_darwin(v25);
      v29 = &v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v29, v27);
      v30 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v26 + 8))(v29, v24);
      sub_100004758(&v45);
    }

    else
    {
      v30 = 0;
    }

    v44.receiver = v2;
    v44.super_class = ObjectType;
    v21 = objc_msgSendSuper2(&v44, "canPerformAction:withSender:", a1, v30);
    swift_unknownObjectRelease();
    return v21 & 1;
  }

  if ([v2 isEditing])
  {
    goto LABEL_5;
  }

  sub_10000794C(v40, &v45, &qword_10076AE40);
  if (!*(&v46 + 1))
  {
LABEL_25:
    v31 = &qword_10076AE40;
    v32 = &v45;
    goto LABEL_26;
  }

  sub_100003540(0, &unk_10076BAB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v23 = v42;
  if ([v42 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v45 = v42;
  v46 = v43;
  if (!*(&v43 + 1))
  {

    goto LABEL_25;
  }

  sub_100058000(&qword_100768358);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_5;
  }

  sub_1005F6EE8(v41, v12);
  if ((*(v38 + 48))(v12, 1, v13) == 1)
  {

    v31 = &unk_10078D510;
    v32 = v12;
LABEL_26:
    sub_1000079B4(v32, v31);
    goto LABEL_5;
  }

  sub_10056B878(v12, v16, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
  sub_10056B8E0(&v16[*(v13 + 20)], v9, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10056B948(v16, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);

    sub_10056B948(v9, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
    v21 = 1;
  }

  else
  {
    v34 = v36;
    v33 = v37;
    (*(v36 + 32))(v6, v9, v37);
    sub_10043F208(v6);
    v21 = v35;

    (*(v34 + 8))(v6, v33);
    sub_10056B948(v16, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
  }

  return v21 & 1;
}

uint64_t sub_1005591A4(char a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_100452454(a1);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "setEditing:animated:", a1 & 1, a2 & 1);
  v7 = [v2 isEditing];
  if (v7)
  {
    __chkstk_darwin(v7);

    sub_100058000(&unk_10078D430);
    sub_10000E188(&qword_100783258, &unk_10078D430);
    v8 = dispatch thunk of TTRICollectionViewItemCollapsedStates.beginOverridingItemCollapsedStates(shouldExpand:)();
  }

  else
  {
    v8 = 0;
  }

  *&v3[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_itemCollapsedStatesOverrideCancellable] = v8;

  return sub_1000165F0(v9);
}

uint64_t sub_100559314(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v11)
  {
    v12 = v11;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000079B4(v5, &unk_100771B40);
      v13 = 0;
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v13 = TTRAccountsListsViewModel.Item.isCollapsible.getter();
      (*(v7 + 8))(v10, v6);
    }

    return v13 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10055952C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&unk_10078D520);
  __chkstk_darwin(v3 - 8);
  v80 = &v76 - v4;
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v76 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v7 - 8);
  v78 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v83 = (&v76 - v10);
  __chkstk_darwin(v11);
  v13 = (&v76 - v12);
  __chkstk_darwin(v14);
  v16 = (&v76 - v15);
  __chkstk_darwin(v17);
  v19 = (&v76 - v18);
  v20 = type metadata accessor for TTRIAccountsListsSelection(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v77 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  __chkstk_darwin(v26);
  v28 = &v76 - v27;
  __chkstk_darwin(v29);
  v84 = &v76 - v30;
  v32 = __chkstk_darwin(v31);
  v34 = &v76 - v33;
  v85 = a1;
  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    sub_10055A0F4(v19);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      return sub_1000079B4(v19, &unk_10076B7C0);
    }

    sub_10056B878(v19, v34, type metadata accessor for TTRIAccountsListsSelection);
    sub_10042DDB8(v34);
    v37 = v36 == 0;
    v38 = v36 == 2;
    v39 = v85;
    *&v88[0] = [v85 attributes];
    UIMenuElementAttributes.setDisabled(_:)(v38);
    [v39 setAttributes:*&v88[0]];
    static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
    v40 = String._bridgeToObjectiveC()();

    [v39 setTitle:v40];

    v41 = static TTRCommonAsset.Image.autoCategorizationIcon.getter();
    [v39 setImage:v41];

    [v39 setState:v37];
    v42 = v34;
    return sub_10056B948(v42, type metadata accessor for TTRIAccountsListsSelection);
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_10055A0F4(v16);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      return sub_1000079B4(v16, &unk_10076B7C0);
    }

    v43 = v84;
    sub_10056B878(v16, v84, type metadata accessor for TTRIAccountsListsSelection);
    sub_100452B28(v43);
    if (v44)
    {
      v45 = v85;
      if (v44 != 1)
      {
        *&v88[0] = [v85 attributes];
        UIMenuElementAttributes.setDisabled(_:)(1);
        [v45 setAttributes:*&v88[0]];
LABEL_26:
        v42 = v43;
        return sub_10056B948(v42, type metadata accessor for TTRIAccountsListsSelection);
      }

      *&v88[0] = [v85 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v45 setAttributes:*&v88[0]];
      v46._countAndFlagsBits = 0x694C206E69706E55;
      v47._countAndFlagsBits = 0xD00000000000002ALL;
      v47._object = 0x8000000100671560;
      v46._object = 0xEA00000000007473;
      TTRLocalizedString(_:comment:)(v46, v47);
      v48 = String._bridgeToObjectiveC()();

      [v45 setTitle:v48];

      v49 = String._bridgeToObjectiveC()();
      v50 = [objc_opt_self() _systemImageNamed:v49];
    }

    else
    {
      v45 = v85;
      *&v88[0] = [v85 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v45 setAttributes:*&v88[0]];
      v57._countAndFlagsBits = 0x7473694C206E6950;
      v58._object = 0x8000000100671590;
      v57._object = 0xE800000000000000;
      v58._countAndFlagsBits = 0xD000000000000028;
      TTRLocalizedString(_:comment:)(v57, v58);
      v59 = String._bridgeToObjectiveC()();

      [v45 setTitle:v59];

      v49 = String._bridgeToObjectiveC()();
      v50 = [objc_opt_self() _systemImageNamed:v49];
    }

    v60 = v50;

    [v45 setImage:v60];
LABEL_25:

    goto LABEL_26;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_10055A0F4(v13);
    if ((*(v21 + 48))(v13, 1, v20) == 1)
    {
      return sub_1000079B4(v13, &unk_10076B7C0);
    }

    sub_10056B878(v13, v28, type metadata accessor for TTRIAccountsListsSelection);
    sub_100452E1C(v28);
    v53 = v52;
    v54 = v85;
    *&v88[0] = [v85 attributes];
    UIMenuElementAttributes.setDisabled(_:)((v53 & 1) == 0);
    [v54 setAttributes:*&v88[0]];
    v42 = v28;
    return sub_10056B948(v42, type metadata accessor for TTRIAccountsListsSelection);
  }

  if (static Selector.== infix(_:_:)())
  {
    v51 = v83;
    sub_10055A0F4(v83);
    if ((*(v21 + 48))(v51, 1, v20) != 1)
    {
      sub_10056B878(v51, v25, type metadata accessor for TTRIAccountsListsSelection);
      sub_100452E2C(v25);
      v62 = v61;
      v63 = v85;
      *&v88[0] = [v85 attributes];
      UIMenuElementAttributes.setDisabled(_:)((v62 & 1) == 0);
      [v63 setAttributes:*&v88[0]];
      v42 = v25;
      return sub_10056B948(v42, type metadata accessor for TTRIAccountsListsSelection);
    }

    return sub_1000079B4(v51, &unk_10076B7C0);
  }

  if (static Selector.== infix(_:_:)())
  {
    v55 = [v1 isEditing];
    v56 = v85;
    if (v55)
    {
      goto LABEL_40;
    }

    if ([v85 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v86 = 0u;
      v87 = 0u;
    }

    v70 = v81;
    v69 = v82;
    v71 = v80;
    v88[0] = v86;
    v88[1] = v87;
    if (!*(&v87 + 1))
    {
      v72 = &qword_10076AE40;
      v73 = v88;
      goto LABEL_39;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_40:
      *&v88[0] = [v56 attributes];
      UIMenuElementAttributes.setDisabled(_:)(1);
      return [v56 setAttributes:*&v88[0]];
    }

    TTRListType.PredefinedSmartListType.init(rawValue:)();
    if ((*(v70 + 48))(v71, 1, v69) == 1)
    {
      v72 = &unk_10078D520;
      v73 = v71;
LABEL_39:
      sub_1000079B4(v73, v72);
      goto LABEL_40;
    }

    v74 = v76;
    (*(v70 + 32))(v76, v71, v69);
    sub_10043F208(v74);
    [v56 setState:v75 & 1];
    return (*(v70 + 8))(v74, v69);
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      v51 = v78;
      sub_10055A0F4(v78);
      if ((*(v21 + 48))(v51, 1, v20) != 1)
      {
        v43 = v77;
        sub_10056B878(v51, v77, type metadata accessor for TTRIAccountsListsSelection);
        sub_10045356C(v43);
        v65 = v64;
        v66 = v85;
        *&v88[0] = [v85 attributes];
        UIMenuElementAttributes.setDisabled(_:)((v65 & 1) == 0);
        [v66 setAttributes:*&v88[0]];
        v67._countAndFlagsBits = 0x73694C20776F6853;
        v67._object = 0xEE006F666E492074;
        v68._countAndFlagsBits = 0xD00000000000002ELL;
        v68._object = 0x8000000100671530;
        TTRLocalizedString(_:comment:)(v67, v68);
        v60 = String._bridgeToObjectiveC()();

        [v66 setTitle:v60];
        goto LABEL_25;
      }

      return sub_1000079B4(v51, &unk_10076B7C0);
    }

    v89.receiver = v1;
    v89.super_class = ObjectType;
    return objc_msgSendSuper2(&v89, "validateCommand:", v85);
  }
}

id sub_10055A0F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&qword_100776648);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v22 - v5;
  v7 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController];
  if (!v7)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
  swift_beginAccess();
  sub_10000794C(v7 + v8, v6, &qword_100776648);
  v9 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
  result = (*(*(v9 - 8) + 48))(v6, 1, v9);
  if (result != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = type metadata accessor for REMHashtagLabelSpecifier();
    }

    else
    {
      v16 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    }

    (*(*(v16 - 8) + 32))(a1, v6, v16);
    v17 = type metadata accessor for TTRIAccountsListsSelection(0);
    goto LABEL_14;
  }

  v10 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [result indexPathsForSelectedItems];

  v14 = v1;
  if (v13)
  {
    type metadata accessor for IndexPath();
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  v22 = v15;
  sub_100058000(&unk_10078A370);
  sub_10000E188(&unk_100771B00, &unk_10078A370);
  v18 = TTRICollectionViewTreeBackedDiffableDataSource.items<A>(for:)();

  if (*(v18 + 16))
  {
    *a1 = v18;
    v17 = type metadata accessor for TTRIAccountsListsSelection(0);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
  }

  v19 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
  result = *&v14[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
  if (!result)
  {
    goto LABEL_24;
  }

  if ([result isActive])
  {
LABEL_19:
    v20 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
    swift_beginAccess();
    return sub_10000794C(&v14[v20], a1, &unk_10076B7C0);
  }

  result = *&v14[v19];
  if (!result)
  {
    goto LABEL_25;
  }

  if ([result isBeingPresented])
  {
    goto LABEL_19;
  }

  v21 = type metadata accessor for TTRIAccountsListsSelection(0);
  return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
}

id sub_10055A558()
{
  sub_100003540(0, &qword_10076B800);
  v0._object = 0x80000001006711A0;
  v1._countAndFlagsBits = 0xD000000000000035;
  v1._object = 0x80000001006711C0;
  v0._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:comment:)(v0, v1);
  static TTRCommonAsset.Image.timeZoneOverrideIcon.getter();
  swift_unknownObjectRetain();
  v2 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000FD678;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010C96C;
  aBlock[3] = &unk_10072E8F0;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  v7 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  sub_100003540(0, &unk_10076B890);
  v8._countAndFlagsBits = 0x6E6F5A20656D6954;
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = 0x8000000100671220;
  v8._object = 0xE900000000000065;
  v10 = TTRLocalizedString(_:comment:)(v8, v9);
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() _systemImageNamed:v11];

  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v7;
  v18.value.super.isa = v12;
  v18.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v10, 0, v18, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v16).super.super.isa;
  [v6 setMenu:isa];

  return v6;
}

Class sub_10055A81C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  swift_unknownObjectRetain();

  v2 = swift_allocObject();
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v4 = sub_100428028(sub_10056693C, v2);
  swift_unknownObjectRelease();

  return v4;
}

void sub_10055A918()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005591A4(1, 1);
  }
}

uint64_t sub_10055A974(uint64_t a1)
{
  v2 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v2 - 8);
  v28 = &v23 - v3;
  v4 = sub_100058000(&unk_10078A4D0);
  __chkstk_darwin(v4 - 8);
  v25 = &v23 - v5;
  v6 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.DisplayedState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIListContentConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.valueCell()();
  TTRAccountsListsViewModel.Item.debugDescription.getter();
  UIListContentConfiguration.text.setter();
  IndexPath.description.getter();
  UIListContentConfiguration.secondaryText.setter();
  v30[3] = v12;
  v30[4] = &protocol witness table for UIListContentConfiguration;
  v16 = sub_1000317B8(v30);
  (*(v13 + 16))(v16, v15, v12);
  v29 = a1;
  UICollectionViewCell.contentConfiguration.setter();
  if (TTRAccountsListsViewModel.Item.isCollapsible.getter())
  {
    sub_100058000(&unk_10077C050);
    v17 = *(type metadata accessor for UICellAccessory() - 8);
    v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_10062D400;
    v18 = v11;
    (*(v9 + 104))(v11, enum case for UICellAccessory.DisplayedState.always(_:), v8);
    v19 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
    (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
    v20 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
    v21 = v24;
    UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
    (*(v26 + 8))(v21, v27);
    (*(v9 + 8))(v18, v8);
  }

  UICollectionViewListCell.accessories.setter();
  return (*(v13 + 8))(v15, v12);
}

void sub_10055AE24()
{
  v1 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v14)
  {
    v15 = v14;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000079B4(v6, &unk_100771B40);
    }

    else
    {
      v22 = *(v8 + 32);
      v22(v13, v6, v7);
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
      v17 = swift_allocObject();
      swift_weakInit();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for MainActor();

      v18 = static MainActor.shared.getter();
      v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v20 = swift_allocObject();
      *(v20 + 2) = v18;
      *(v20 + 3) = &protocol witness table for MainActor;
      *(v20 + 4) = v17;
      v22(&v20[v19], v10, v7);

      sub_10009E31C(0, 0, v3, &unk_10062FF98, v20);

      (*(v8 + 8))(v13, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10055B180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = a3;
  v4 = sub_100058000(&unk_10078A4D0);
  __chkstk_darwin(v4 - 8);
  v85 = &v63 - v5;
  v76 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v80 = *(v76 - 8);
  __chkstk_darwin(v76);
  v84 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICellAccessory.ReorderOptions();
  v82 = *(v7 - 8);
  v83 = v7;
  __chkstk_darwin(v7);
  v81 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for UICellAccessory.DetailOptions();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v10 - 8);
  v97 = &v63 - v11;
  v86 = type metadata accessor for UICellAccessory.DeleteOptions();
  v75 = *(v86 - 1);
  __chkstk_darwin(v86);
  v74 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v94 = v15;
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UICellAccessory.DisplayedState();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    sub_100058000(&unk_10077C050);
    v23 = *(type metadata accessor for UICellAccessory() - 8);
    v91 = *(v23 + 72);
    v24 = *(v23 + 80);
    v73 = a1;
    v25 = (v24 + 32) & ~v24;
    v26 = swift_allocObject();
    v72._rawValue = v26;
    v26[1] = xmmword_1006337E0;
    v90 = v26 + v25;
    v70 = enum case for UICellAccessory.DisplayedState.whenEditing(_:);
    v98 = v18;
    v27 = *(v18 + 104);
    v92 = v18 + 104;
    v93 = v27;
    v95 = v17;
    v27(v20);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = *(v14 + 16);
    v66 = v14 + 16;
    v69 = v29;
    v30 = v16;
    v65 = v16;
    v64 = v13;
    v29(v16, v96, v13);
    v31 = *(v14 + 80);
    v71 = v22;
    v67 = (v31 + 24) & ~v31;
    v32 = swift_allocObject();
    *(v32 + 16) = v28;
    v68 = *(v14 + 32);
    v68(v32 + ((v31 + 24) & ~v31), v30, v13);
    v87 = type metadata accessor for UICellAccessory.LayoutDimension();
    v33 = *(v87 - 8);
    v89 = *(v33 + 56);
    v34 = v33 + 56;
    v35 = v20;
    v89(v97, 1, 1, v87);
    v88 = v34;

    v36 = v71;
    v37 = v95;
    v38 = v36;
    v39 = v74;
    UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.delete(displayed:options:actionHandler:)();

    (*(v75 + 8))(v39, v86);
    v40 = *(v98 + 8);
    v98 += 8;
    v86 = v40;
    v40(v35, v37);
    v71 = v38;

    v41 = v70;
    v93(v35, v70, v37);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v43 = v65;
    v44 = v64;
    v69(v65, v96, v64);
    v45 = v67;
    v46 = swift_allocObject();
    *(v46 + 16) = v42;
    v68(v46 + v45, v43, v44);
    v47 = v87;
    v89(v97, 1, 1, v87);

    v48 = v77;
    UICellAccessory.DetailOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.detail(displayed:options:actionHandler:)();

    (*(v78 + 8))(v48, v79);
    v49 = v95;
    v50 = v86;
    v86(v35, v95);

    v51 = v49;
    v52 = v93;
    v93(v35, v41, v51);
    v53 = v97;
    v54 = v47;
    v55 = v89;
    v89(v97, 1, 1, v54);
    v56 = v81;
    UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
    static UICellAccessory.reorder(displayed:options:)();
    (*(v82 + 8))(v56, v83);
    v57 = v95;
    v50(v35, v95);
    v52(v35, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v57);
    v58 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
    (*(*(v58 - 8) + 56))(v85, 1, 1, v58);
    v55(v53, 1, 1, v87);
    v59 = v84;
    UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
    (*(v80 + 8))(v59, v76);
    v60 = v73;
    v86(v35, v57);
    UICollectionViewListCell.setUnmanagedAccessories(_:)(v72);

    *(v60 + OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_delegate + 8) = &off_10072E7A8;
    v61 = v71;
    result = swift_unknownObjectWeakAssign();
    if (*&v61[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v62 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v62)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(v60 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_10055BC6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10055AE24();
  }
}

void sub_10055BCC8()
{
  v0 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
    if (v9)
    {
      v10 = v9;
      TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {

        sub_1000079B4(v2, &unk_100771B40);
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        sub_10042BF78(v6);
        (*(v4 + 8))(v6, v3);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10055BEBC(uint64_t a1)
{
  v2 = sub_100058000(&qword_100768830);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    *(a1 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsRecentlyDeletedCell_collectionView_delegate + 8) = &off_10072E798;
    swift_unknownObjectWeakAssign();
    v10 = enum case for UICellAccessory.DisplayedState.whenNotEditing(_:);
    v11 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v11 - 8) + 104))(v7, v10, v11);
    v12 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
    v7[*(v12 + 20)] = 1;
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    v13 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_disclosureIndicatorConfiguration;
    swift_beginAccess();
    sub_10000794C(a1 + v13, v5, &qword_100768830);
    swift_beginAccess();
    sub_100019180(v7, a1 + v13, &qword_100768830);
    swift_endAccess();
    sub_100034B14(v5);
    sub_1000079B4(v5, &qword_100768830);
    result = sub_1000079B4(v7, &qword_100768830);
    if (*&v9[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v14 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v14)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(a1 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10055C178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v8 = type metadata accessor for UICellAccessory.ReorderOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICellAccessory.DisplayedState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v21[1] = a3;
    sub_100058000(&unk_10077C050);
    v22 = v8;
    type metadata accessor for UICellAccessory();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10062D400;
    (*(v13 + 104))(v15, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v12);
    v19 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
    static UICellAccessory.reorder(displayed:options:)();
    (*(v9 + 8))(v11, v22);
    (*(v13 + 8))(v15, v12);
    UICollectionViewListCell.setUnmanagedAccessories(_:)(v18);

    if (*&v17[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v20 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v20)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(a1 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10055C51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_100058000(&unk_10078A4D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v27 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory.DisplayedState();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v25 = a3;
    sub_100058000(&unk_10077C050);
    v26 = v11;
    type metadata accessor for UICellAccessory();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10062D400;
    (*(v15 + 104))(v17, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v14);
    v21 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    v22 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
    (*(v27 + 8))(v13, v26);
    (*(v15 + 8))(v17, v14);
    UICollectionViewListCell.setUnmanagedAccessories(_:)(v20);

    *(a1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_delegate + 8) = &off_10072E8A8;
    result = swift_unknownObjectWeakAssign();
    if (*&v19[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {
      v23 = a1;

      v24 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v24)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(v23 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();

          if (*(v23 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_selectionRequestObserver))
          {
            if (*&v19[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController])
            {

              TTRViewModelObserver.subscribeIfNeeded(to:)();
            }

LABEL_13:
            __break(1u);
            return result;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10055C9C8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_100014F04(&unk_10078D618, type metadata accessor for TTRIAccountsListsViewController_collectionView);
    v4 = v3;
    result = TTRIHashtagWrappingCollectionView.delegate.setter();
    if (*&v4[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v5 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v5)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(a1 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();

          if (*(a1 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_selectionRequestObserver))
          {
            if (*&v4[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController])
            {

              TTRViewModelObserver.subscribeIfNeeded(to:)();
            }

LABEL_13:
            __break(1u);
            return result;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10055CB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    *(a1 + *a5 + 8) = sub_100014F04(&qword_10078D610, type metadata accessor for TTRIAccountsListsViewController_collectionView);
    result = swift_unknownObjectWeakAssign();
    if (*&v8[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v9 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v9)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(a1 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10055CC9C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    v7 = sub_100058000(&unk_10078D430);
    v8 = sub_10000E188(&qword_100783258, &unk_10078D430);
    a3(a1, v7, v8);
  }

  return result;
}

uint64_t sub_10055CD94()
{
  v0 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v8 = result;
  v9 = *(result + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v9)
  {
    v10 = v9;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v4 + 48))(v2, 1, v3) != 1)
    {
      (*(v4 + 32))(v6, v2, v3);
      v11 = TTRAccountsListsViewModel.Item.isCollapsible.getter();

      (*(v4 + 8))(v6, v3);
      return v11 & 1;
    }

    sub_1000079B4(v2, &unk_100771B40);
LABEL_5:
    v11 = 0;
    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10055CF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v4 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
    if (v13)
    {
      v14 = v13;
      TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_1000079B4(v6, &unk_100771B40);
        return 0;
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        v15 = a3(v10);
        (*(v8 + 8))(v10, v7);

        return v15;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10055D190()
{
  UICollectionLayoutListConfiguration._cornerRadius.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  return UICollectionLayoutListConfiguration.showsSeparators.setter();
}

uint64_t sub_10055D1DC(char a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v100 = *(v3 - 8);
  v101 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v92 - v7;
  v9 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v9 - 8);
  v97 = &v92 - v10;
  v11 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v98 = *(v11 - 8);
  v99 = v11;
  __chkstk_darwin(v11);
  v96 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v102 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_100776648);
  __chkstk_darwin(v15 - 8);
  v17 = &v92 - v16;
  v18 = sub_100058000(&unk_10076B7C0);
  v19 = __chkstk_darwin(v18 - 8);
  v107 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = (&v92 - v22);
  v24 = __chkstk_darwin(v21);
  v26 = &v92 - v25;
  v27 = __chkstk_darwin(v24);
  v105 = (&v92 - v28);
  __chkstk_darwin(v27);
  v30 = (&v92 - v29);
  v31 = type metadata accessor for TTRIAccountsListsSelection(0);
  v108 = *(v31 - 8);
  v109 = v31;
  v32 = __chkstk_darwin(v31);
  v106 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v92 - v34;
  result = [v1 isEditing];
  if (result)
  {
    return result;
  }

  v37 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
  result = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
  if (!result)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  result = [result isActive];
  if (result)
  {
    return result;
  }

  result = *&v1[v37];
  if (!result)
  {
    goto LABEL_61;
  }

  result = [result isBeingPresented];
  if (result)
  {
    return result;
  }

  v38 = 8;
  if ((a1 & 1) == 0)
  {
    v38 = 0;
  }

  v94 = v38;
  v95 = v1;
  v92 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter];
  sub_100443D34(v30);
  v93 = *(v108 + 48);
  if (v93(v30, 1, v109) == 1)
  {
    result = sub_1000079B4(v30, &unk_10076B7C0);
  }

  else
  {
    sub_10056B878(v30, v35, type metadata accessor for TTRIAccountsListsSelection);
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100003E30(v39, qword_10078D290);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Accounts list view set selection to match external selection", v42, 2u);
    }

    sub_10055DF60(v35, v94 | 0x20, 0);
    result = sub_10056B948(v35, type metadata accessor for TTRIAccountsListsSelection);
  }

  v43 = v95;
  v44 = *&v95[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController];
  if (!v44)
  {
    goto LABEL_62;
  }

  v45 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
  swift_beginAccess();
  sub_10000794C(v44 + v45, v17, &qword_100776648);
  v46 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
  result = (*(*(v46 - 8) + 48))(v17, 1, v46);
  if (result != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v52 = v100;
      v53 = *(v100 + 32);
      v54 = v17;
      v55 = v101;
      result = v53(v8, v54, v101);
      v56 = *&v43[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
      if (v56)
      {
        v57 = v56;
        dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

        if (v110)
        {
        }

        else
        {
          type metadata accessor for TTRAccountsListsViewModel();
          swift_allocObject();
          TTRAccountsListsViewModel.init()();
        }

        TTRAccountsListsViewModel.validateHashtagSelection(_:allowsLenientFallback:)();

        sub_100014F04(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
        v71 = dispatch thunk of static Equatable.== infix(_:_:)();
        v72 = *(v52 + 8);
        v72(v8, v55);
        if (v71)
        {
          v72(v6, v55);
          v73 = 1;
          v64 = v105;
          v68 = v107;
          v67 = v109;
        }

        else
        {
          v53(v26, v6, v55);
          v67 = v109;
          swift_storeEnumTagMultiPayload();
          v73 = 0;
          v64 = v105;
          v68 = v107;
        }

        v69 = v93;
        (*(v108 + 56))(v26, v73, 1, v67);
        v70 = v26;
        goto LABEL_38;
      }

      goto LABEL_65;
    }

    v59 = v102;
    v58 = v103;
    v60 = v104;
    result = (*(v103 + 32))(v102, v17, v104);
    v61 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource;
    v62 = *&v43[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (!v62)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v63 = v62;
    dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

    v64 = v105;
    if (v110)
    {
    }

    else
    {
      type metadata accessor for TTRAccountsListsViewModel();
      swift_allocObject();
      TTRAccountsListsViewModel.init()();
    }

    v74 = TTRAccountsListsViewModel.validatePinnedListSelection(_:)();

    if (v74)
    {
      (*(v58 + 8))(v59, v60);
      v67 = v109;
      (*(v108 + 56))(v64, 1, 1, v109);
    }

    else
    {
      v75 = *&v95[v61];
      if (!v75)
      {
LABEL_67:
        __break(1u);
        return result;
      }

      v76 = v75;
      dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

      v77 = v99;
      v78 = v97;
      if (v110)
      {
      }

      else
      {
        type metadata accessor for TTRAccountsListsViewModel();
        swift_allocObject();
        TTRAccountsListsViewModel.init()();
      }

      TTRAccountsListsViewModel.alternativeItemSelection(for:)();

      v79 = v98;
      if ((*(v98 + 48))(v78, 1, v77) == 1)
      {
        sub_1000079B4(v78, &unk_100771B40);
        sub_100016120(v64);
        (*(v58 + 8))(v59, v60);
        v68 = v107;
        v67 = v109;
LABEL_50:
        v69 = v93;
        goto LABEL_51;
      }

      v81 = v79 + 32;
      v80 = *(v79 + 32);
      v82 = v96;
      v80(v96, v78, v77);
      sub_100058000(&unk_10076BAA0);
      v83 = (*(v81 + 48) + 32) & ~*(v81 + 48);
      v84 = swift_allocObject();
      v85 = v77;
      v86 = v84;
      *(v84 + 16) = xmmword_10062D400;
      v80((v84 + v83), v82, v85);
      (*(v58 + 8))(v59, v60);
      *v64 = v86;
      v67 = v109;
      swift_storeEnumTagMultiPayload();
      (*(v108 + 56))(v64, 0, 1, v67);
    }

    v68 = v107;
    goto LABEL_50;
  }

  v47 = *&v43[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v47)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v48 = v47;
  result = [v43 collectionView];
  if (!result)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v49 = result;
  v50 = [result indexPathsForSelectedItems];

  if (v50)
  {
    type metadata accessor for IndexPath();
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v51 = &_swiftEmptyArrayStorage;
  }

  v110 = v51;
  sub_100058000(&unk_10078A370);
  sub_10000E188(&unk_100771B00, &unk_10078A370);
  v65 = TTRICollectionViewTreeBackedDiffableDataSource.items<A>(for:)();

  v66 = *(v65 + 16);

  if (v66)
  {
    v67 = v109;
    (*(v108 + 56))(v23, 1, 1, v109);
    v64 = v105;
    v68 = v107;
  }

  else
  {
    sub_100016120(v23);
    v64 = v105;
    v68 = v107;
    v67 = v109;
  }

  v69 = v93;
  v70 = v23;
LABEL_38:
  sub_100016588(v70, v64, &unk_10076B7C0);
LABEL_51:
  sub_10000794C(v64, v68, &unk_10076B7C0);
  if (v69(v68, 1, v67) == 1)
  {
    sub_1000079B4(v64, &unk_10076B7C0);
    v64 = v68;
  }

  else
  {
    sub_10056B878(v68, v106, type metadata accessor for TTRIAccountsListsSelection);
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100003E30(v87, qword_10078D290);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "Accounts list view adjust selection", v90, 2u);
    }

    v91 = v106;
    sub_10055DF60(v106, v94, 0);
    sub_10056B948(v91, type metadata accessor for TTRIAccountsListsSelection);
  }

  return sub_1000079B4(v64, &unk_10076B7C0);
}

uint64_t sub_10055DF60(uint64_t a1, uint64_t a2, int a3)
{
  v314 = a3;
  v351 = a2;
  v302 = sub_100058000(&qword_10076B7B8);
  __chkstk_darwin(v302);
  v311 = &v292 - v4;
  v340 = type metadata accessor for REMHashtagLabelSpecifier();
  v339 = *(v340 - 8);
  __chkstk_darwin(v340);
  v344 = &v292 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v307 = *(v308 - 8);
  __chkstk_darwin(v308);
  v306 = &v292 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v338 = *(v342 - 8);
  v7 = __chkstk_darwin(v342);
  v315 = &v292 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v341 = &v292 - v9;
  v10 = sub_100058000(&unk_10078D440);
  __chkstk_darwin(v10 - 8);
  v295 = &v292 - v11;
  v297 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v296 = *(v297 - 8);
  __chkstk_darwin(v297);
  v293 = &v292 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_10076B7F0);
  __chkstk_darwin(v13 - 8);
  v300 = &v292 - v14;
  v301 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v299 = *(v301 - 8);
  __chkstk_darwin(v301);
  v294 = &v292 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&unk_10078D450);
  v17 = __chkstk_darwin(v16 - 8);
  v304 = &v292 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v326 = &v292 - v19;
  v333 = type metadata accessor for TTRAccountsListsViewModel.List();
  v322 = *(v333 - 8);
  v20 = __chkstk_darwin(v333);
  v305 = &v292 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v298 = &v292 - v23;
  __chkstk_darwin(v22);
  v303 = &v292 - v24;
  v25 = sub_100058000(&unk_10076B7C0);
  v26 = __chkstk_darwin(v25 - 8);
  v310 = &v292 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v328 = &v292 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v292 - v31;
  v33 = __chkstk_darwin(v30);
  v346 = &v292 - v34;
  __chkstk_darwin(v33);
  v350 = (&v292 - v35);
  v347 = type metadata accessor for IndexPath();
  v343 = *(v347 - 8);
  v36 = __chkstk_darwin(v347);
  v325 = &v292 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v336 = &v292 - v39;
  __chkstk_darwin(v38);
  v309 = &v292 - v40;
  v332 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v331 = *(v332 - 8);
  __chkstk_darwin(v332);
  v330 = &v292 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v348 = *(v42 - 8);
  v349 = v42;
  v43 = __chkstk_darwin(v42);
  v317 = &v292 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v316 = &v292 - v46;
  v47 = __chkstk_darwin(v45);
  v292 = &v292 - v48;
  v49 = __chkstk_darwin(v47);
  v312 = &v292 - v50;
  v51 = __chkstk_darwin(v49);
  v313 = &v292 - v52;
  __chkstk_darwin(v51);
  v320 = &v292 - v53;
  v54 = sub_100058000(&unk_100771B10);
  v55 = __chkstk_darwin(v54 - 8);
  v323 = &v292 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v324 = &v292 - v58;
  v59 = __chkstk_darwin(v57);
  v335 = &v292 - v60;
  v61 = __chkstk_darwin(v59);
  v334 = &v292 - v62;
  v63 = __chkstk_darwin(v61);
  v319 = &v292 - v64;
  v65 = __chkstk_darwin(v63);
  v318 = &v292 - v66;
  __chkstk_darwin(v65);
  v329 = &v292 - v67;
  v68 = sub_100058000(&unk_100771B40);
  v69 = __chkstk_darwin(v68 - 8);
  v71 = &v292 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __chkstk_darwin(v69);
  v337 = &v292 - v73;
  v74 = __chkstk_darwin(v72);
  v76 = &v292 - v75;
  v77 = __chkstk_darwin(v74);
  v345 = &v292 - v78;
  v79 = __chkstk_darwin(v77);
  v81 = &v292 - v80;
  __chkstk_darwin(v79);
  v327 = &v292 - v82;
  v83 = sub_100058000(&qword_100776648);
  v84 = __chkstk_darwin(v83 - 8);
  v86 = &v292 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __chkstk_darwin(v84);
  v89 = &v292 - v88;
  __chkstk_darwin(v87);
  v91 = &v292 - v90;
  v92 = type metadata accessor for TTRIAccountsListsSelection(0);
  v352 = *(v92 - 8);
  __chkstk_darwin(v92);
  v94 = (&v292 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  v321 = a1;
  sub_10056B8E0(a1, v94, type metadata accessor for TTRIAccountsListsSelection);
  v353 = v92;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v116 = v338;
      v118 = v341;
      v117 = v342;
      (*(v338 + 32))(v341, v94, v342);
      v119 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource;
      v120 = v354;
      v121 = *&v354[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
      if (v121)
      {
        v122 = v121;
        dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

        if (v355)
        {
        }

        else
        {
          type metadata accessor for TTRAccountsListsViewModel();
          swift_allocObject();
          TTRAccountsListsViewModel.init()();
        }

        TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)();

        v346 = *(v116 + 16);
        (v346)(v89, v118, v117);
        v168 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v168 - 8) + 56))(v89, 0, 1, v168);
        v169 = *&v120[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController];
        if (v169)
        {
          sub_10000794C(v89, v91, &qword_100776648);
          v170 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
          swift_beginAccess();

          sub_100019180(v91, v169 + v170, &qword_100776648);
          swift_endAccess();
          sub_1000191E8();

          sub_1000079B4(v91, &qword_100776648);
          v171 = [v120 collectionView];
          if (v171)
          {
            v172 = v171;
            [v171 selectItemAtIndexPath:0 animated:1 scrollPosition:0];

            sub_10000794C(v345, v76, &unk_100771B40);
            v174 = v348;
            v173 = v349;
            v175 = (*(v348 + 48))(v76, 1, v349);
            v176 = v336;
            v177 = v335;
            if (v175 == 1)
            {
              v178 = v343;
              v179 = v334;
              v180 = v347;
              (*(v343 + 56))(v334, 1, 1, v347);
              v181 = v351;
              v182 = v333;
            }

            else
            {
              v183 = v316;
              (*(v174 + 32))(v316, v76, v173);
              v184 = *&v120[v119];
              if (!v184)
              {
LABEL_150:
                __break(1u);
                goto LABEL_151;
              }

              v185 = v173;
              v186 = v184;
              v187 = v330;
              TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
              v179 = v334;
              dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

              (*(v331 + 8))(v187, v332);
              (*(v174 + 8))(v183, v185);
              v181 = v351;
              v182 = v333;
              v178 = v343;
              v180 = v347;
              v176 = v336;
              v177 = v335;
            }

            sub_10000794C(v179, v177, &unk_100771B10);
            if ((*(v178 + 48))(v177, 1, v180) == 1)
            {
              sub_1000079B4(v179, &unk_100771B10);
              sub_1000079B4(v89, &qword_100776648);
              v188 = v177;
              v189 = &unk_100771B10;
            }

            else
            {
              (*(v178 + 32))(v176, v177, v180);
              if ((v181 & 2) != 0 || (v181 & 8) != 0)
              {
                (*(v178 + 8))(v176, v180);
              }

              else
              {
                v190 = [v120 collectionView];
                if (!v190)
                {
LABEL_158:
                  __break(1u);
                  goto LABEL_159;
                }

                v191 = v190;
                v192 = v176;
                isa = IndexPath._bridgeToObjectiveC()().super.isa;
                [v191 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:0];

                (*(v178 + 8))(v192, v347);
              }

              sub_1000079B4(v334, &unk_100771B10);
              v189 = &qword_100776648;
              v188 = v89;
            }

            sub_1000079B4(v188, v189);
            v198 = v350;
            (*(v352 + 56))(v350, 1, 1, v353);
            v199 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
            swift_beginAccess();
            sub_10056694C(v198, &v120[v199]);
            swift_endAccess();
            v200 = *&v120[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
            v201 = v341;
            if (v200)
            {
              [v200 setActive:0];
              v202 = v342;
              if ((v181 & 0x20) != 0)
              {
                sub_1000079B4(v345, &unk_100771B40);
                return (*(v338 + 8))(v201, v202);
              }

              v203 = v315;
              (v346)(v315, v201, v342);
              v204 = v338;
              v205 = (*(v338 + 88))(v203, v202);
              if (v205 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
              {
                (*(v204 + 96))(v203, v202);
                v206 = v307;
                v207 = v306;
                v208 = v308;
                (*(v307 + 32))(v306, v203, v308);
                sub_100425274(v207, v314 & 1);
                (*(v206 + 8))(v207, v208);
                sub_1000079B4(v345, &unk_100771B40);
                return (*(v204 + 8))(v201, v202);
              }

              if (v205 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
              {
                (*(v204 + 96))(v203, v202);
                v226 = v305;
                (*(v322 + 32))(v305, v203, v182);
                if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
                {
                  sub_100424E14(v226);
                }

                else
                {
                  v279 = TTRAccountsListsViewModel.List.sharingStatus.getter();
                  if (v279 < 3 || v279 == 4)
                  {
                    sub_1004249C8(v226, v314 & 1);
                  }

                  else
                  {
                    if (v279 != 3)
                    {
                      goto LABEL_164;
                    }

                    sub_100424288(v226);
                  }
                }

                (*(v322 + 8))(v226, v182);
                sub_1000079B4(v345, &unk_100771B40);
                return (*(v204 + 8))(v201, v342);
              }

LABEL_160:
              if (qword_100767460 != -1)
              {
                swift_once();
              }

              v288 = type metadata accessor for Logger();
              sub_100003E30(v288, qword_10078D290);
              sub_100008E04(&_swiftEmptyArrayStorage);
              sub_100008E04(&_swiftEmptyArrayStorage);
              v289 = "Unknown pinned list selection";
              v290 = 29;
              goto LABEL_163;
            }

            goto LABEL_144;
          }

          goto LABEL_142;
        }

        goto LABEL_139;
      }

      goto LABEL_137;
    }

    v96 = *&v354[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController];
    if (v96)
    {
      v97 = *v94;
      v98 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
      (*(*(v98 - 8) + 56))(v91, 1, 1, v98);
      v99 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
      swift_beginAccess();

      sub_100019180(v91, v96 + v99, &qword_100776648);
      swift_endAccess();
      sub_1000191E8();

      sub_1000079B4(v91, &qword_100776648);
      v100 = v351;
      v101 = v353;
      if ((v351 & 1) == 0)
      {
        if (*(v97 + 16))
        {
          v102 = v348;
          v103 = v349;
          v104 = v327;
          (*(v348 + 16))(v327, v97 + ((*(v348 + 80) + 32) & ~*(v348 + 80)), v349);
          v105 = 0;
        }

        else
        {
          v105 = 1;
          v102 = v348;
          v103 = v349;
          v104 = v327;
        }

        v227 = v320;
        (*(v102 + 56))(v104, v105, 1, v103);
        sub_10000794C(v104, v81, &unk_100771B40);
        if ((*(v102 + 48))(v81, 1, v103) == 1)
        {
          v228 = v343;
          v229 = v329;
          (*(v343 + 56))(v329, 1, 1, v347);
          v230 = v354;
        }

        else
        {
          (*(v102 + 32))(v227, v81, v103);
          v230 = v354;
          v231 = *&v354[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
          if (!v231)
          {
LABEL_153:
            __break(1u);
            goto LABEL_154;
          }

          v232 = v227;
          v233 = v231;
          v234 = v330;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          v235 = v329;
          dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
          v229 = v235;

          (*(v331 + 8))(v234, v332);
          (*(v102 + 8))(v232, v103);
          v228 = v343;
          v101 = v353;
        }

        v236 = [v230 collectionView];
        if (!v236)
        {
          goto LABEL_147;
        }

        v237 = v236;
        v238 = v229;
        v239 = v318;
        sub_10000794C(v238, v318, &unk_100771B10);
        v240 = *(v228 + 48);
        v241 = v347;
        if (v240(v239, 1, v347) == 1)
        {
          v242 = 0;
        }

        else
        {
          v243 = v239;
          v242 = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v228 + 8))(v243, v241);
        }

        [v237 selectItemAtIndexPath:v242 animated:1 scrollPosition:0];

        v244 = v329;
        v245 = v319;
        sub_10000794C(v329, v319, &unk_100771B10);
        if (v240(v245, 1, v241) == 1)
        {
          sub_1000079B4(v244, &unk_100771B10);
          sub_1000079B4(v327, &unk_100771B40);
          v246 = v245;
          v247 = &unk_100771B10;
        }

        else
        {
          v248 = v245;
          v249 = v309;
          (*(v228 + 32))(v309, v248, v241);
          if ((v100 & 8) != 0)
          {
            (*(v228 + 8))(v249, v241);
            v253 = v244;
          }

          else
          {
            v250 = [v354 collectionView];
            if (!v250)
            {
LABEL_156:
              __break(1u);
              goto LABEL_157;
            }

            v251 = v250;
            v252 = IndexPath._bridgeToObjectiveC()().super.isa;
            [v251 scrollToItemAtIndexPath:v252 atScrollPosition:0 animated:0];

            (*(v228 + 8))(v249, v347);
            v253 = v329;
          }

          sub_1000079B4(v253, &unk_100771B10);
          v247 = &unk_100771B40;
          v246 = v327;
        }

        sub_1000079B4(v246, v247);
      }

      v254 = v350;
      (*(v352 + 56))(v350, 1, 1, v101);
      v255 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
      v256 = v354;
      swift_beginAccess();
      sub_10056694C(v254, &v256[v255]);
      swift_endAccess();
      v257 = *&v256[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
      if (v257)
      {
        [v257 setActive:0];
        v259 = v348;
        v258 = v349;
        v260 = v326;
        if ((v100 & 0x20) != 0 || !*(v97 + 16))
        {
        }

        v261 = v312;
        (*(v348 + 16))(v312, v97 + ((*(v348 + 80) + 32) & ~*(v348 + 80)), v349);

        v262 = v313;
        (*(v259 + 32))(v313, v261, v258);
        TTRAccountsListsViewModel.Item.list.getter();
        v263 = v322;
        v264 = *(v322 + 48);
        v265 = v333;
        if (v264(v260, 1, v333) == 1)
        {
          sub_1000079B4(v260, &unk_10078D450);
          v266 = v304;
          TTRAccountsListsViewModel.Item.customSmartList.getter();
          if (v264(v266, 1, v265) == 1)
          {
            sub_1000079B4(v266, &unk_10078D450);
            v267 = v300;
            TTRAccountsListsViewModel.Item.group.getter();
            v268 = v299;
            v269 = v301;
            if ((*(v299 + 48))(v267, 1, v301) == 1)
            {
              sub_1000079B4(v267, &unk_10076B7F0);
              v270 = v295;
              TTRAccountsListsViewModel.Item.recentlyDeletedList.getter();
              v271 = v296;
              v272 = v297;
              if ((*(v296 + 48))(v270, 1, v297) == 1)
              {
                sub_1000079B4(v270, &unk_10078D440);
                v273 = v292;
                v274 = v349;
                (*(v259 + 104))(v292, enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:), v349);
                v275 = static TTRAccountsListsViewModel.Item.== infix(_:_:)();
                v276 = *(v259 + 8);
                v276(v273, v274);
                if (v275)
                {
                  sub_100430AB4();
                }

                return (v276)(v262, v274);
              }

              v286 = v293;
              (*(v271 + 32))(v293, v270, v272);
              v287 = TTRAccountsListsViewModel.RecentlyDeletedList.accountID.getter();
              sub_100425C0C();

              (*(v271 + 8))(v286, v272);
            }

            else
            {
              v285 = v294;
              (*(v268 + 32))(v294, v267, v269);
              sub_100425510(v285);
              (*(v268 + 8))(v285, v269);
            }
          }

          else
          {
            v284 = v298;
            (*(v263 + 32))(v298, v266, v265);
            sub_100424E14(v284);
            (*(v263 + 8))(v284, v265);
          }

          return (*(v259 + 8))(v262, v349);
        }

        v277 = v303;
        (*(v263 + 32))(v303, v260, v265);
        v278 = TTRAccountsListsViewModel.List.sharingStatus.getter();
        if (v278 < 3 || v278 == 4)
        {
          sub_1004249C8(v277, v314 & 1);
LABEL_110:
          (*(v263 + 8))(v277, v265);
          return (*(v259 + 8))(v262, v349);
        }

        if (v278 == 3)
        {
          sub_100424288(v277);
          goto LABEL_110;
        }

        while (1)
        {
LABEL_164:
          if (qword_1007672D8 != -1)
          {
            swift_once();
          }

          v291 = type metadata accessor for Logger();
          sub_100003E30(v291, qword_100782E90);
          sub_100008E04(&_swiftEmptyArrayStorage);
          sub_100008E04(&_swiftEmptyArrayStorage);
          v289 = "unknown sharing status";
          v290 = 22;
LABEL_163:
          sub_1003F9818(v289, v290, 2);
          __break(1u);
        }
      }

      goto LABEL_140;
    }

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
    goto LABEL_141;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v123 = swift_projectBox();
    sub_10000794C(v123, v346, &unk_10076B7C0);
    v124 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
    v125 = v354;
    swift_beginAccess();
    sub_10000794C(&v125[v124], v32, &unk_10076B7C0);
    v126 = *(v352 + 48);
    v127 = v126(v32, 1, v353);
    sub_1000079B4(v32, &unk_10076B7C0);
    if (v127 == 1)
    {
      v128 = *&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController];
      if (!v128)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v129 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
      (*(*(v129 - 8) + 56))(v91, 1, 1, v129);
      v130 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
      swift_beginAccess();

      sub_100019180(v91, v128 + v130, &qword_100776648);
      swift_endAccess();
      sub_1000191E8();

      sub_1000079B4(v91, &qword_100776648);
      v131 = [v125 collectionView];
      if (!v131)
      {
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v132 = v131;
      [v131 selectItemAtIndexPath:0 animated:1 scrollPosition:0];
    }

    v133 = v328;
    sub_10000794C(v346, v328, &unk_10076B7C0);
    v134 = v353;
    if (v126(v133, 1, v353) == 1)
    {
      sub_1000079B4(v133, &unk_10076B7C0);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v135 = swift_projectBox();
        v136 = v311;
        sub_10000794C(v135, v311, &qword_10076B7B8);
        sub_1000079B4(v136, &unk_10076B7C0);

        v137 = v310;
        sub_10000794C(&v125[v124], v310, &unk_10076B7C0);
        v138 = v126(v137, 1, v134);
        sub_1000079B4(v137, &unk_10076B7C0);
        v139 = v351;
        if (v138 == 1)
        {
          v140 = swift_allocBox();
          v141 = *(v352 + 56);
          v141(v142, 1, 1, v134);
          v143 = v350;
          *v350 = v140;
          swift_storeEnumTagMultiPayload();
          v141(v143, 0, 1, v134);
          swift_beginAccess();
          sub_10056694C(v143, &v125[v124]);
          swift_endAccess();
        }

        if ((v139 & 0x20) != 0)
        {
          goto LABEL_125;
        }

        goto LABEL_66;
      }

      sub_10056B948(v133, type metadata accessor for TTRIAccountsListsSelection);
    }

    v209 = v350;
    sub_10056B8E0(v321, v350, type metadata accessor for TTRIAccountsListsSelection);
    (*(v352 + 56))(v209, 0, 1, v134);
    swift_beginAccess();
    sub_10056694C(v209, &v125[v124]);
    swift_endAccess();
    v139 = v351;
    if ((v351 & 0x20) != 0)
    {
      goto LABEL_125;
    }

LABEL_66:
    v210 = v139 & 4;
    v211 = *(*&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
    if (v211 == 2)
    {
      if (!sub_100444328(*&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter]))
      {
LABEL_68:
        v212 = *&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
        if (!v212)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        v213 = [v212 searchBar];
        v214 = [v213 text];

        if (v214)
        {
          v215 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v217 = v216;
        }

        else
        {
          v215 = 0;
          v217 = 0xE000000000000000;
        }

        sub_100425958(v215, v217, v210 != 0);

        goto LABEL_119;
      }
    }

    else if ((v211 & 1) == 0)
    {
      goto LABEL_68;
    }

    v218 = *&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController];
    if (!v218)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    v219 = *&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
    if (!v219)
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v220 = v218;
    v221 = [v219 searchBar];
    v222 = [v221 text];

    if (v222)
    {
      v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v225 = v224;
    }

    else
    {
      v223 = 0;
      v225 = 0xE000000000000000;
    }

    sub_100505C14(v223, v225, v210 >> 2);

LABEL_119:
    v280 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
    v281 = *&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
    if (!v281)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    if (([v281 isActive] & 1) == 0)
    {
      v282 = *&v125[v280];
      if (!v282)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      if (([v282 isBeingPresented] & 1) == 0)
      {
        v283 = *&v125[v280];
        if (!v283)
        {
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        [v283 setActive:1];
      }
    }

LABEL_125:
    sub_1000079B4(v346, &unk_10076B7C0);
  }

  v106 = v339;
  v107 = v344;
  v108 = v340;
  (*(v339 + 32))(v344, v94, v340);
  (*(v106 + 16))(v86, v107, v108);
  v109 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v109 - 8) + 56))(v86, 0, 1, v109);
  v110 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource;
  v111 = v354;
  v112 = *&v354[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v112)
  {
    goto LABEL_136;
  }

  v113 = v112;
  dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

  v114 = v348;
  v115 = v337;
  if (v355)
  {
  }

  else
  {
    type metadata accessor for TTRAccountsListsViewModel();
    swift_allocObject();
    TTRAccountsListsViewModel.init()();
  }

  v346 = v110;
  TTRAccountsListsViewModel.hashtagsItem.getter();

  v144 = *(v111 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController);
  if (!v144)
  {
    goto LABEL_138;
  }

  sub_10000794C(v86, v91, &qword_100776648);
  v145 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
  swift_beginAccess();

  sub_100019180(v91, v144 + v145, &qword_100776648);
  swift_endAccess();
  sub_1000191E8();

  sub_1000079B4(v91, &qword_100776648);
  v146 = [v111 collectionView];
  if (!v146)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v147 = v146;
  [v146 selectItemAtIndexPath:0 animated:1 scrollPosition:0];

  sub_10000794C(v115, v71, &unk_100771B40);
  v148 = v349;
  v149 = (*(v114 + 48))(v71, 1, v349);
  v150 = v351;
  v151 = v353;
  if (v149 == 1)
  {
    v152 = v343;
    v153 = v324;
    v154 = v347;
    (*(v343 + 56))(v324, 1, 1, v347);
  }

  else
  {
    v155 = v353;
    v156 = v317;
    (*(v114 + 32))(v317, v71, v148);
    v157 = *&v346[v111];
    if (!v157)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v158 = v157;
    v159 = v330;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v153 = v324;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    (*(v331 + 8))(v159, v332);
    (*(v114 + 8))(v156, v148);
    v152 = v343;
    v154 = v347;
    v151 = v155;
    v150 = v351;
  }

  v160 = v323;
  sub_10000794C(v153, v323, &unk_100771B10);
  v161 = (*(v152 + 48))(v160, 1, v154);
  v162 = v325;
  if (v161 == 1)
  {
    sub_1000079B4(v153, &unk_100771B10);
    sub_1000079B4(v337, &unk_100771B40);
    sub_1000079B4(v86, &qword_100776648);
    v163 = v160;
    v164 = &unk_100771B10;
  }

  else
  {
    (*(v152 + 32))(v325, v160, v154);
    if ((v150 & 0x10) != 0 || (v150 & 8) != 0)
    {
      (*(v152 + 8))(v162, v154);
    }

    else
    {
      v165 = [v111 collectionView];
      if (!v165)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v166 = v165;
      v167 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v166 scrollToItemAtIndexPath:v167 atScrollPosition:0 animated:0];

      (*(v152 + 8))(v162, v347);
    }

    sub_1000079B4(v153, &unk_100771B10);
    sub_1000079B4(v337, &unk_100771B40);
    v164 = &qword_100776648;
    v163 = v86;
  }

  sub_1000079B4(v163, v164);
  v194 = v350;
  (*(v352 + 56))(v350, 1, 1, v151);
  v195 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
  swift_beginAccess();
  sub_10056694C(v194, v111 + v195);
  swift_endAccess();
  v196 = *(v111 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController);
  if (!v196)
  {
    goto LABEL_143;
  }

  [v196 setActive:0];
  if ((v150 & 0x20) == 0)
  {
    sub_100426264(v344);
  }

  return (*(v339 + 8))(v344, v340);
}

void sub_1005609C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  sub_10000C36C((v1 + 112), *(v1 + 136));
  swift_getObjectType();
  v4 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
  v3 = sub_100014F04(&unk_10078D530, type metadata accessor for TTRIAccountsListsPresenter);
  sub_1002A4ADC(v4, v1, v3);
}

void sub_100560C24()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
  v4 = *&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
  if (!v4)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v1;
  v6 = [v4 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  sub_100505C14(v8, v10, 0);

  if (!*&v2[v3])
  {
    goto LABEL_12;
  }

  [v2 presentViewController:? animated:? completion:?];
}

void sub_100560E30(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t), void (*a6)(id, uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v10 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v11 = a1;
  }

  v12 = sub_1000182E0(a4, a5);
  a6(v12, v13, v14, v15);

  sub_1000079B4(v16, &qword_10076AE40);
}

uint64_t sub_100560EF0()
{
  v0 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v9 - v1);
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10055A0F4(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000079B4(v2, &unk_10076B7C0);
  }

  sub_10056B878(v2, v6, type metadata accessor for TTRIAccountsListsSelection);
  sub_10042DDB8(v6);
  if (v8 != 2)
  {
    sub_10042E2B0(v6);
  }

  return sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_10056113C(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for TTRIAccountsListsSelection(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10055A0F4(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000079B4(v5, &unk_10076B7C0);
  }

  sub_10056B878(v5, v9, type metadata accessor for TTRIAccountsListsSelection);
  sub_100452E1C(v9);
  if (v11)
  {
    a2(v9);
  }

  return sub_10056B948(v9, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1005612F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_10056113C(v7, a4);

  return sub_1000079B4(v9, &qword_10076AE40);
}

void sub_100561380(uint64_t a1)
{
  v2 = sub_100058000(&unk_10078D520);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, &v16, &qword_10076AE40);
  if (*(&v17 + 1))
  {
    sub_100003540(0, &unk_10076BD00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v9 = v14;
    if ([v14 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16 = v14;
    v17 = v15;
    if (*(&v15 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      TTRListType.PredefinedSmartListType.init(rawValue:)();
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_10043F208(v8);
        sub_10042B2D8((v12 & 1) == 0);

        (*(v6 + 8))(v8, v5);
        return;
      }

      v10 = &unk_10078D520;
      v11 = v4;
      goto LABEL_12;
    }
  }

  v10 = &qword_10076AE40;
  v11 = &v16;
LABEL_12:
  sub_1000079B4(v11, v10);
}

uint64_t sub_100561644(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_1000079B4(v9, &qword_10076AE40);
}

void sub_1005616EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v7 - 8);
  v9 = (v16 - v8);
  v10 = type metadata accessor for TTRIAccountsListsSelection(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v15 = a1;
  }

  sub_10055A0F4(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1000079B4(v16, &qword_10076AE40);
    sub_1000079B4(v9, &unk_10076B7C0);
  }

  else
  {
    sub_10056B878(v9, v13, type metadata accessor for TTRIAccountsListsSelection);
    a4(v13);
    sub_10056B948(v13, type metadata accessor for TTRIAccountsListsSelection);
    sub_1000079B4(v16, &qword_10076AE40);
  }
}

void sub_1005619B4(uint64_t a1)
{
  v2 = sub_100058000(&unk_10078D450);
  __chkstk_darwin(v2 - 8);
  v44 = &v40 - v3;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v46);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v43 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  __chkstk_darwin(v11);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100058000(&unk_10078D510);
  __chkstk_darwin(v14 - 8);
  v16 = (&v40 - v15);
  v17 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v47 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, &v52, &qword_10076AE40);
  if (*(&v53 + 1))
  {
    v41 = v4;
    sub_100003540(0, &unk_10076BAB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v40 = v8;
    v20 = v50;
    if ([v50 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = 0u;
      v51 = 0u;
    }

    v52 = v50;
    v53 = v51;
    if (*(&v51 + 1))
    {
      sub_100058000(&qword_100768358);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      sub_1005F6EE8(v49, v16);
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {

        v21 = &unk_10078D510;
        v22 = v16;
      }

      else
      {
        v23 = v47;
        sub_10056B878(v16, v47, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
        sub_10056B8E0(v23 + *(v17 + 20), v13, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v32 = v43;
          v33 = v40;
          (*(v43 + 32))(v10, v13, v40);
          (*(v32 + 16))(v7, v10, v33);
          v34 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
          v35 = type metadata accessor for TTRAccountsListsPinnedListSelection();
          (*(*(v35 - 8) + 104))(v7, v34, v35);
          swift_storeEnumTagMultiPayload();
          sub_10055DF60(v7, 0, 0);

          sub_10056B948(v7, type metadata accessor for TTRIAccountsListsSelection);
          (*(v32 + 8))(v10, v33);
          sub_10056B948(v23, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
          return;
        }

        v24 = *(v48 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
        if (!v24)
        {
          __break(1u);
          return;
        }

        v25 = v20;
        v26 = v7;
        v27 = *v13;
        v28 = v24;
        dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

        v29 = v41;
        v31 = v44;
        v30 = v45;
        if (v52)
        {
        }

        else
        {
          type metadata accessor for TTRAccountsListsViewModel();
          swift_allocObject();
          TTRAccountsListsViewModel.init()();
        }

        TTRAccountsListsViewModel.pinnedListInnerList(with:)();

        if ((*(v30 + 48))(v31, 1, v29) != 1)
        {
          v36 = v23;
          v37 = v42;
          (*(v30 + 32))(v42, v31, v29);
          (*(v30 + 16))(v26, v37, v29);
          v38 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
          v39 = type metadata accessor for TTRAccountsListsPinnedListSelection();
          (*(*(v39 - 8) + 104))(v26, v38, v39);
          swift_storeEnumTagMultiPayload();
          sub_10055DF60(v26, 0, 0);

          sub_10056B948(v26, type metadata accessor for TTRIAccountsListsSelection);
          (*(v30 + 8))(v37, v29);
          sub_10056B948(v36, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
          return;
        }

        sub_10056B948(v23, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);

        v21 = &unk_10078D450;
        v22 = v31;
      }

      goto LABEL_12;
    }
  }

  v21 = &qword_10076AE40;
  v22 = &v52;
LABEL_12:
  sub_1000079B4(v22, v21);
}

void sub_100562418(void *a1)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (v13)
  {
    v14 = v13;
    TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

    v15 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v9, 1, v15) == 1)
    {
      sub_1000079B4(v9, &unk_100771B40);
      (*(v16 + 56))(v12, 1, 1, v15);
      sub_1000079B4(v12, &unk_100771B40);
      (*(v4 + 104))(v6, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v3);
    }

    else
    {
      (*(v16 + 32))(v12, v9, v15);
      sub_100437844(v12, [v2 isEditing], v6);
      (*(v16 + 56))(v12, 0, 1, v15);
      sub_1000079B4(v12, &unk_100771B40);
    }

    v17 = TTRICollectionViewCellSelectionOption.shouldRevertItemHighlight.getter();
    (*(v4 + 8))(v6, v3);
    if (v17)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v20 _unhighlightItemAtIndexPath:isa animated:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100562854(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  sub_100567430(v11, a5);
  LOBYTE(a5) = v14;

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t sub_100562994(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_100562C24(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4)
{
  v94 = a4;
  v102 = a3;
  v106 = a1;
  v107 = a2;
  v4 = sub_100058000(&qword_10076BB30);
  __chkstk_darwin(v4 - 8);
  v91 = &v89 - v5;
  v6 = sub_100058000(&qword_10076BD88);
  __chkstk_darwin(v6 - 8);
  v90 = &v89 - v7;
  v103 = sub_100058000(&qword_10078D488);
  v98 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v89 - v8;
  v9 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v9 - 8);
  v89 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v89 - v12;
  __chkstk_darwin(v14);
  v93 = &v89 - v15;
  v16 = sub_100058000(&qword_10078D4D0);
  v100 = *(v16 - 8);
  v101 = v16;
  __chkstk_darwin(v16);
  v92 = (&v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v95 = &v89 - v19;
  v20 = sub_100058000(&unk_10078D4A8);
  __chkstk_darwin(v20 - 8);
  v22 = &v89 - v21;
  v23 = sub_100058000(&qword_1007721C0);
  __chkstk_darwin(v23);
  v25 = &v89 - v24;
  v26 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v27 = *(v26 - 8);
  v104 = v26;
  v105 = v27;
  __chkstk_darwin(v26);
  v96 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v99 = &v89 - v30;
  v31 = sub_100058000(&qword_10078D4B8);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v89 - v33;
  v35 = sub_100058000(&qword_10078D4C0);
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v39 = &v89 - v38;
  (*(v36 + 16))(&v89 - v38, v106, v35, v37);
  v40 = (*(v36 + 88))(v39, v35);
  if (v40 == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v36 + 96))(v39, v35);
    (*(v32 + 32))(v34, v39, v31);
    v41 = v107;
    v42 = *&v107[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (v42)
    {
      v43 = v42;
      TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

      v44 = sub_100058000(&qword_10078D4C8);
      if ((*(*(v44 - 8) + 48))(v22, 1, v44) == 1)
      {
        (*(v32 + 8))(v34, v31);
        v45 = &unk_10078D4A8;
        v46 = v22;
LABEL_9:
        sub_1000079B4(v46, v45);
        return;
      }

      v106 = v31;
      v55 = *&v22[*(v44 + 48)];
      v56 = *(v23 + 48);
      v57 = v41;
      v58 = *(v105 + 32);
      v59 = v22;
      v60 = v104;
      v58(v25, v59, v104);
      *&v25[v56] = v55;
      v61 = v60;
      v103 = *&v25[*(v23 + 48)];
      v62 = v99;
      v63 = (v58)(v99, v25, v60);
      __chkstk_darwin(v63);
      *(&v89 - 2) = v57;
      sub_100058000(&qword_10078D4D8);
      v64 = v95;
      TTRICollectionViewDragItemSources.draggedItemsForValidation<A>(transformItemID:)();
      v66 = v100;
      v65 = v101;
      v67 = (*(v100 + 88))(v64, v101);
      if (v67 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
      {
        (*(v66 + 96))(v64, v65);
        v68 = v105;
        v69 = v93;
        (*(v105 + 16))(v93, v62, v60);
        (*(v68 + 56))(v69, 0, 1, v60);
        v70 = TTRAccountsListsPresenterCapability.paramsForMoving(_:into:atUnadjustedIndex:containerIsInEditMode:)();

        v71 = v62;
        if (v70)
        {
          TTRAccountsListsPresenterCapability.RemindersInsertionPlan.shouldDisallow.getter();
          v72 = TTRAccountsListsPresenterCapability.RemindersInsertionPlan.hasSubjectExceedingMaximumNumberOfPinnedLists.getter();

          sub_1000079B4(v69, &unk_100771B40);
          (*(v68 + 8))(v71, v61);
          (*(v32 + 8))(v34, v106);
          *v94 = v72 & 1;
        }

        else
        {
          sub_1000079B4(v69, &unk_100771B40);
          (*(v68 + 8))(v62, v61);
          (*(v32 + 8))(v34, v106);
          *v94 = 0;
        }

        return;
      }

      if (v67 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
      {
        (*(v105 + 8))(v99, v60);
        (*(v32 + 8))(v34, v106);
        (*(v66 + 8))(v64, v65);
        return;
      }

      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }

  v47 = v107;
  if (v40 == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
  {
    (*(v36 + 96))(v39, v35);
    v49 = v97;
    v48 = v98;
    v50 = v103;
    (*(v98 + 32))(v97, v39, v103);
    v51 = *&v47[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (!v51)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      if (qword_100767460 != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      sub_100003E30(v88, qword_10078D290);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      v74 = "Unknown dragged items";
      v75 = 21;
LABEL_34:
      sub_1003F9818(v74, v75, 2);
      __break(1u);
      return;
    }

    v52 = v51;
    TTRICollectionViewTreeBackedDiffableDataSource.targetParent(for:)();

    v53 = v104;
    v54 = v105;
    if ((*(v105 + 48))(v13, 1, v104) == 1)
    {
      (*(v48 + 8))(v49, v50);
      v45 = &unk_100771B40;
      v46 = v13;
      goto LABEL_9;
    }

    v76 = (*(v54 + 32))(v96, v13, v53);
    __chkstk_darwin(v76);
    *(&v89 - 2) = v47;
    sub_100058000(&qword_10078D4D8);
    v77 = v92;
    TTRICollectionViewDragItemSources.draggedItemsForValidation<A>(transformItemID:)();
    v79 = v100;
    v78 = v101;
    v80 = (*(v100 + 88))(v77, v101);
    if (v80 != enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
    {
      if (v80 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
      {
        (*(v79 + 96))(v77, v78);
        v85 = v91;
        v86 = v96;
        sub_100439D90(*v77, v91);

        (*(v54 + 8))(v86, v53);
        (*(v48 + 8))(v49, v103);
        v87 = sub_100058000(&qword_10076BB38);
        (*(*(v87 - 8) + 48))(v85, 1, v87);
        sub_1000079B4(v85, &qword_10076BB30);
        return;
      }

      goto LABEL_31;
    }

    (*(v79 + 96))(v77, v78);
    v81 = v90;
    v82 = v96;
    TTRAccountsListsPresenterCapability.paramsForCreatingGroup(byDropping:into:)();
    v83 = type metadata accessor for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams();
    if ((*(*(v83 - 8) + 48))(v81, 1, v83) == 1)
    {
      sub_1000079B4(v81, &qword_10076BD88);
      v84 = v89;
      (*(v54 + 16))(v89, v82, v53);
      (*(v54 + 56))(v84, 0, 1, v53);
      TTRAccountsListsPresenterCapability.canMove(_:into:atUnadjustedIndex:containerIsInEditMode:)();

      sub_1000079B4(v84, &unk_100771B40);
      (*(v54 + 8))(v82, v53);
      (*(v48 + 8))(v49, v103);
    }

    else
    {

      (*(v54 + 8))(v82, v53);
      (*(v48 + 8))(v49, v103);
      sub_1000079B4(v81, &qword_10076BD88);
    }
  }

  else
  {
    if (v40 == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
    {
      (*(v36 + 8))(v39, v35);
      return;
    }

    if (v40 != enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
    {
      if (qword_100767460 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_100003E30(v73, qword_10078D290);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      v74 = "Unknown drop destination";
      v75 = 24;
      goto LABEL_34;
    }
  }
}

void sub_100563AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100563B7C()
{

  sub_100058000(&unk_10078D430);
  sub_10000E188(&qword_100783258, &unk_10078D430);
  sub_100058000(&unk_10076B8A0);
  sub_10000E188(&qword_10078D4F0, &unk_10076B8A0);
  dispatch thunk of TTRICollectionViewItemCollapsedStates.expand<A>(_:)();
}

uint64_t sub_100563C84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&unk_10078D4E0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_100563D24(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for TTRIAccountsListsSelection(0);
  v6 = __chkstk_darwin(v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([v2 isViewLoaded])
  {
    if (a2)
    {
      v9 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v9 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v10 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
        v11 = *&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
        if (!v11)
        {
          __break(1u);
          goto LABEL_25;
        }

        if ([v11 isActive])
        {
          v12 = 1;
          if (static REMFeatureFlags.isSolariumEnabled.getter())
          {
LABEL_9:
            v13 = [objc_opt_self() currentDevice];
            v14 = [v13 userInterfaceIdiom];

            v15 = v14 == 1;
            goto LABEL_16;
          }
        }

        else
        {
          v17 = *&v2[v10];
          if (!v17)
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          v12 = [v17 isBeingPresented];
          if (static REMFeatureFlags.isSolariumEnabled.getter())
          {
            goto LABEL_9;
          }
        }

        v15 = 1;
LABEL_16:
        if (!(v15 | ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0) | v12 & 1))
        {
          v18 = *&v2[v10];
          if (!v18)
          {
LABEL_28:
            __break(1u);
            return;
          }

          [v2 presentViewController:v18 animated:1 completion:0];
        }

        v19 = *&v2[v10];
        if (v19)
        {
          v20 = [v19 searchBar];
          v21 = String._bridgeToObjectiveC()();
          [v20 setText:v21];

          v22 = *&v2[v10];
          if (v22)
          {
            v23 = [v22 searchBar];
            v24 = [v23 text];

            if (v24)
            {

              sub_100058000(&qword_10076B7B8);
              v25 = swift_allocBox();
              sub_10055A0F4(v26);
              *v8 = v25;
              swift_storeEnumTagMultiPayload();
              sub_10055DF60(v8, 4, 0);
              sub_10056B948(v8, type metadata accessor for TTRIAccountsListsSelection);
            }

            return;
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }
  }

  else
  {
    v16 = &v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_pendingSearchTerm];
    *v16 = a1;
    *(v16 + 1) = a2;
  }
}

uint64_t sub_100563FFC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.List.pinState.getter();
  v11 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v12 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v12 - 8) + 16))(v6, a1, v12);
    v13 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
    v14 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v14 - 8) + 104))(v6, v13, v14);
  }

  else
  {
    sub_100058000(&unk_10076BAA0);
    v15 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10062D400;
    v19 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v19 - 8) + 16))(v18 + v17, a1, v19);
    (*(v16 + 104))(v18 + v17, enum case for TTRAccountsListsViewModel.Item.list(_:), v15);
    *v6 = v18;
  }

  swift_storeEnumTagMultiPayload();
  sub_10055DF60(v6, 0, a2 & 1);
  return sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
}

void sub_100564304(uint64_t a1)
{
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v2);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.List.pinState.getter();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
  {
    (*(v6 + 96))(v8, v5);
    if (*v8)
    {
      v10 = type metadata accessor for TTRAccountsListsViewModel.List();
      (*(*(v10 - 8) + 16))(v4, a1, v10);
      v11 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
      v12 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v12 - 8) + 104))(v4, v11, v12);
LABEL_6:
      swift_storeEnumTagMultiPayload();
      sub_10055DF60(v4, 0, 0);
      sub_10056B948(v4, type metadata accessor for TTRIAccountsListsSelection);
      return;
    }

LABEL_5:
    sub_100058000(&unk_10076BAA0);
    v13 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10062D400;
    v17 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v17 - 8) + 16))(v16 + v15, a1, v17);
    (*(v14 + 104))(v16 + v15, enum case for TTRAccountsListsViewModel.Item.customSmartList(_:), v13);
    *v4 = v16;
    goto LABEL_6;
  }

  if (v9 == enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
  {
    goto LABEL_5;
  }

  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003E30(v18, qword_10078D290);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown pin state", 17, 2);
  __break(1u);
}

void sub_1005646B8(uint64_t a1)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v9)
  {
    v10 = v9;
    dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

    if (v14)
    {
    }

    else
    {
      type metadata accessor for TTRAccountsListsViewModel();
      swift_allocObject();
      TTRAccountsListsViewModel.init()();
    }

    TTRAccountsListsViewModel.hashtagsItem.getter();

    v11 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
    sub_1000079B4(v8, &unk_100771B40);
    if (v12 != 1)
    {
      v13 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v13 - 8) + 16))(v5, a1, v13);
      swift_storeEnumTagMultiPayload();
      sub_10055DF60(v5, 40, 0);
      sub_10056B948(v5, type metadata accessor for TTRIAccountsListsSelection);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005648D4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = String._bridgeToObjectiveC()();
  v15 = sub_100564B58;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1001762CC;
  v14 = &unk_10072EA30;
  v5 = _Block_copy(&v11);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:1 handler:v5];
  _Block_release(v5);

  v8 = String._bridgeToObjectiveC()();
  v15 = sub_100564BF8;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1001762CC;
  v14 = &unk_10072EA58;
  v9 = _Block_copy(&v11);

  v10 = [v6 actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v3 addAction:v10];
  [v3 addAction:v7];
  [v0 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_100564B58()
{
  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_10078D290);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();
}

uint64_t sub_100564BF8()
{
  v0 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = [objc_opt_self() defaultWorkspace];
    if (v8)
    {
      v9 = v8;
      LSApplicationWorkspace.open(universalLink:)();
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_100564D9C()
{
  v0 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v0);
  v2 = (&v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
  v6 = *(Strong + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController);
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [v6 searchBar];
  v8 = [v7 isFirstResponder];

  v9 = *&v4[v5];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v10 = [v9 searchBar];
  v11 = [v10 text];

  if (v11)
  {

    sub_100058000(&qword_10076B7B8);
    v12 = swift_allocBox();
    sub_10055A0F4(v13);
    *v2 = v12;
    swift_storeEnumTagMultiPayload();
    if (v8)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4;
    }

    sub_10055DF60(v2, v14, 0);

    sub_10056B948(v2, type metadata accessor for TTRIAccountsListsSelection);
  }

  else
  {
  }
}

void sub_100564F48(uint64_t a1, UITableViewScrollPosition a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v8 - 8);
  v10 = &v21[-v9];
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *&v3[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v15)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v16 = v15;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  (*(v5 + 8))(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &unk_100771B10);
    return;
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = UICollectionViewScrollPosition.init(tableViewScrollPosition:)(v23);
  v18 = [v3 collectionView];
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v19 scrollToItemAtIndexPath:isa atScrollPosition:v17 animated:v22 & 1];

  (*(v12 + 8))(v14, v11);
}

uint64_t sub_100565214(uint64_t a1, int a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100058000(&unk_10076BAA0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10062D400;
  v11 = type metadata accessor for TTRAccountsListsViewModel.Group();
  (*(*(v11 - 8) + 16))(v10 + v9, a1, v11);
  (*(v8 + 104))(v10 + v9, enum case for TTRAccountsListsViewModel.Item.group(_:), v7);
  *v6 = v10;
  swift_storeEnumTagMultiPayload();
  sub_10055DF60(v6, 0, a2);
  return sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1005653E0(uint64_t a1, int a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
  v9 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  swift_storeEnumTagMultiPayload();
  sub_10055DF60(v6, 0, a2);
  return sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_100565524(uint64_t a1)
{
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_10055DF60(v4, 0, 0);
  return sub_10056B948(v4, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_100565624(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  swift_storeEnumTagMultiPayload();
  sub_10055DF60(v5, 16, 0);
  return sub_10056B948(v5, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_100565714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return TTRIHashtagWrappingCollectionViewDelegate.hashtagWrappingCollectionViewRequestAddTag(_:)(a1, ObjectType, a3);
}

uint64_t sub_100565764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return TTRIHashtagWrappingCollectionViewDelegate.hashtagWrappingCollectionView(_:layoutResultDidChange:)(a1, a2, ObjectType, a4);
}

uint64_t sub_1005657BC(int a1, id a2)
{
  v2 = [a2 items];
  sub_100003540(0, &qword_10076BAC0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for TTRIAccountsListsPresenter(0);
  v4 = sub_1004493C0(v3);

  return v4 & 1;
}

uint64_t sub_100565894(int a1, id a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 items];
  sub_100003540(0, &qword_10076BAC0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10043B48C(v7, a3, a4);
}

void sub_1005659B0(void *a1)
{
  if ([a1 isBeingDismissed])
  {
    v2 = 1;
  }

  else
  {
    _s9Reminders20TTRISearchControllerCMa_0();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v2 = *(v3 + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed);
    }

    else
    {
      v2 = 0;
    }
  }

  if ([a1 isActive] && (v2 & 1) == 0)
  {

    sub_100565A58(0);
  }
}

void sub_100565A58(char a1)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v3);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter);
  v7 = *(v6 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v7 == 2)
  {
    if (!sub_100444328(v6))
    {
LABEL_3:
      v8 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController);
      if (v8)
      {
        v9 = [v8 searchBar];
        v10 = [v9 text];

        if (v10)
        {

          sub_100058000(&qword_10076B7B8);
          v11 = swift_allocBox();
          sub_10055A0F4(v12);
          *v5 = v11;
          swift_storeEnumTagMultiPayload();
          if (a1)
          {
            v13 = 4;
          }

          else
          {
            v13 = 0;
          }

          sub_10055DF60(v5, v13, 0);
          sub_10056B948(v5, type metadata accessor for TTRIAccountsListsSelection);
        }

        return;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController);
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController);
  if (!v15)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v16 = v14;
  v17 = [v15 searchBar];
  v18 = [v17 text];

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  sub_1005065C4(v19, v21, a1 & 1);
}

uint64_t sub_100565CF4(void *a1)
{
  result = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter);
  v4 = *(result + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v4 == 2)
  {
    result = sub_100444328(result);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if ((v4 & 1) == 0)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController);
  if (v5)
  {
    v6 = v5;
    v7 = [a1 searchBar];
    v8 = [v7 text];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    sub_100505C14(v9, v11, 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100565EDC()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076B7B8);
  __chkstk_darwin(v2 - 8);
  v33 = &v32 - v3;
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v32 - v11);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  __chkstk_darwin(v19);
  v21 = (&v32 - v20);
  _s9Reminders20TTRISearchControllerCMa_0();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    *(v22 + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed) = 1;
  }

  sub_100019008(0, 1);
  v23 = *(*(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter) + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v23 == 2)
  {
    if (sub_100444328(*(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter)))
    {
      return;
    }
  }

  else if (v23)
  {
    return;
  }

  sub_10055A0F4(v21);
  v32 = *(v5 + 48);
  if (v32(v21, 1, v4) == 1 || (EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_10056B948(v21, type metadata accessor for TTRIAccountsListsSelection), EnumCaseMultiPayload >= 3))
  {
    v25 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
    swift_beginAccess();
    sub_10000794C(v1 + v25, v15, &unk_10076B7C0);
    v26 = v32;
    if (v32(v15, 1, v4) == 1)
    {
      v27 = v15;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_10056B948(v15, type metadata accessor for TTRIAccountsListsSelection);
        goto LABEL_16;
      }

      v28 = swift_projectBox();
      v29 = v33;
      sub_10000794C(v28, v33, &qword_10076B7B8);
      v30 = v29;
      v26 = v32;
      sub_100016588(v30, v18, &unk_10076B7C0);

      sub_100016588(v18, v12, &unk_10076B7C0);
      if (v26(v12, 1, v4) != 1)
      {
LABEL_19:
        v31 = v34;
        sub_10056B878(v12, v34, type metadata accessor for TTRIAccountsListsSelection);
        sub_10055DF60(v31, 0, 0);
        sub_10056B948(v31, type metadata accessor for TTRIAccountsListsSelection);
        return;
      }

      v27 = v12;
    }

    sub_1000079B4(v27, &unk_10076B7C0);
LABEL_16:
    sub_100016120(v9);
    if (v26(v9, 1, v4) == 1)
    {
      sub_1000079B4(v9, &unk_10076B7C0);
      return;
    }

    v12 = v9;
    goto LABEL_19;
  }
}

uint64_t sub_1005664F0()
{
  v0 = sub_100058000(&unk_10078D440);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10048B088(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v14 = &unk_100771B40;
    v15 = v9;
LABEL_5:
    sub_1000079B4(v15, v14);
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  TTRAccountsListsViewModel.Item.recentlyDeletedList.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v14 = &unk_10078D440;
    v15 = v2;
    goto LABEL_5;
  }

  (*(v4 + 32))(v6, v2, v3);
  v17 = TTRAccountsListsViewModel.RecentlyDeletedList.accountID.getter();
  TTRAccountsListsViewModel.RecentlyDeletedList.count.getter();
  sub_100431434(v17);

  (*(v4 + 8))(v6, v3);
  (*(v11 + 8))(v13, v10);
  return 1;
}

void sub_1005668D8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability))
  {

    TTRICollectionViewPresentationTreeManagementViewCapability.reload()();

    sub_100015960();
    sub_10055D1DC(0);
    sub_1000165F0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10056694C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076B7C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1005669BC(uint64_t a1)
{
  v24 = a1;
  v23 = type metadata accessor for TTRAccountsListsViewModel.List();
  v1 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v24, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 32))(v10, v14, v7);
    TTRAccountsListsViewModel.SmartList.type.getter();
    v16 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
    v17 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v17 - 8) + 104))(v6, v16, v17);
    swift_storeEnumTagMultiPayload();
    sub_10055DF60(v6, 2, 0);
    sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
    (*(v8 + 8))(v10, v7);
  }

  else if (v15 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v12 + 96))(v14, v11);
    v18 = v23;
    (*(v1 + 32))(v3, v14, v23);
    (*(v1 + 16))(v6, v3, v18);
    v19 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
    v20 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v20 - 8) + 104))(v6, v19, v20);
    swift_storeEnumTagMultiPayload();
    sub_10055DF60(v6, 2, 0);
    sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
    (*(v1 + 8))(v3, v18);
  }

  else
  {
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_10078D290);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown pinned list type", 24, 2);
    __break(1u);
  }
}

id sub_100566E80(uint64_t a1, void *a2)
{
  v4 = sub_100058000(&qword_10076BB30);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = [a2 items];
  sub_100003540(0, &qword_10076BAC0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10043B8B4(v8, a1, v6);

  v9 = sub_100058000(&qword_10076BB38);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  sub_1000079B4(v6, &qword_10076BB30);
  return [objc_allocWithZone(UIDropProposal) initWithDropOperation:v10];
}

uint64_t sub_100567000(uint64_t a1, id a2)
{
  v3 = [a2 items];
  sub_100003540(0, &qword_10076BAC0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_1004B1A10(v4))
  {
    sub_10043C130(v4, a1);
  }

  else
  {
    sub_10043C10C(v4, a1);
  }
}

void sub_1005670C0(void (*a1)(void))
{
  v3 = [v1 contentScrollView];
  if (v3)
  {
    v7 = v3;
    a1();
  }

  else
  {
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_10078D290);
    v7 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v7, v5, "ppt_execute(_ scrollTest: @escaping (UIScrollView) failed because contentScrollView is nil", v6, 2u);
    }
  }
}

void sub_1005671EC()
{
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_timeZoneOverrideChangedObserver) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_timeZoneOverrideTipController) = 0;
  v1 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dragAndDropController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dragAndDropCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController) = 0;
  v4 = (v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_pendingSearchTerm);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addListButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addReminderButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___searchButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___timeZoneOverrideButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addGroupButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___editButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___actionMenuButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___actionMenuWithBadgeButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_accountSpinnerVisibleByAccountID) = &_swiftEmptyDictionarySingleton;
  v5 = v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_currentBarButtonItemConfiguration;
  *(v5 + 2) = -2;
  *v5 = -258;
  v6 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker;
  type metadata accessor for TTRIAccountsListsDropExceedsMaximumNumberOfPinnedListsTracker();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v0 + v6) = v7;
  v3(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_lastAppliedSelection, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_itemCollapsedStatesOverrideCancellable) = 0;
  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_10078D290);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("init(coder:) has not been implemented", 37, 2);
  __break(1u);
}

void sub_100567430(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = *&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (v14)
  {
    v15 = v14;
    TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

    v16 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      sub_1000079B4(v10, &unk_100771B40);
      (*(v17 + 56))(v13, 1, 1, v16);
      sub_1000079B4(v13, &unk_100771B40);
      v18 = (*(v5 + 104))(v7, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v4);
    }

    else
    {
      (*(v17 + 32))(v13, v10, v16);
      sub_100437844(v13, [v2 isEditing], v7);
      (*(v17 + 56))(v13, 0, 1, v16);
      v18 = sub_1000079B4(v13, &unk_100771B40);
    }

    a2(v18);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_10056771C()
{
  v1 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v1);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (v11)
  {
    v12 = v11;
    TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000079B4(v6, &unk_100771B40);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      if (([v0 isEditing] & 1) == 0)
      {
        sub_100058000(&unk_10076BAA0);
        v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10062D400;
        (*(v8 + 16))(v14 + v13, v10, v7);
        *v3 = v14;
        swift_storeEnumTagMultiPayload();
        sub_10055DF60(v3, 1, 0);
        sub_10056B948(v3, type metadata accessor for TTRIAccountsListsSelection);
      }

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005679D8()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v27 - v9);
  v11 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v11 - 8);
  v29 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v30 = v0;
  v19 = *&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (v19)
  {
    v20 = v19;
    TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

    v28 = *(v2 + 48);
    if (v28(v15, 1, v1) == 1)
    {
      sub_1000079B4(v15, &unk_100771B40);
      v21 = v2;
      (*(v2 + 56))(v18, 1, 1, v1);
      v22 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
      (*(v5 + 104))(v10, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v4);
    }

    else
    {
      (*(v2 + 32))(v18, v15, v1);
      sub_100437844(v18, [v30 isEditing], v10);
      v21 = v2;
      (*(v2 + 56))(v18, 0, 1, v1);
      v22 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
    }

    (*(v5 + 16))(v7, v10, v4);
    v23 = (*(v5 + 88))(v7, v4);
    if (v23 == v22 || v23 == enum case for TTRICollectionViewCellSelectionOption.selectItem(_:) || v23 == enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:))
    {
      goto LABEL_12;
    }

    if (v23 == enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:))
    {
      v24 = v29;
      sub_10000794C(v18, v29, &unk_100771B40);
      if (v28(v24, 1, v1) == 1)
      {
        (*(v5 + 8))(v10, v4);
        sub_1000079B4(v18, &unk_100771B40);
        v18 = v24;
LABEL_13:
        sub_1000079B4(v18, &unk_100771B40);
        return;
      }

      v25 = v27;
      (*(v21 + 32))(v27, v24, v1);
      sub_10042B5DC(v25);
      (*(v21 + 8))(v25, v1);
LABEL_12:
      (*(v5 + 8))(v10, v4);
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100003E30(v26, qword_10078D290);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown cell selection option", 29, 2);
  __break(1u);
}

void sub_100567F10()
{
  v1 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = *&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = v11;
  TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &unk_100771B40);
    return;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v7, v10, v4);
  v13 = (*(v5 + 88))(v7, v4);
  if (v13 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v5 + 8))(v10, v4);
    (*(v5 + 96))(v7, v4);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v7, v14);
    return;
  }

  if (v13 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_8;
  }

  if (v13 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    goto LABEL_10;
  }

  if (v13 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_8;
  }

  if (v13 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    goto LABEL_10;
  }

  if (v13 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
  {
LABEL_8:
    v15 = *(v5 + 8);
    v15(v10, v4);
    v15(v7, v4);
    return;
  }

  if (v13 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_10:
    (*(v5 + 8))(v7, v4);
LABEL_11:
    [v0 isEditing];
    (*(v5 + 8))(v10, v4);
    return;
  }

  if (v13 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
  {
    (*(v5 + 8))(v10, v4);
    return;
  }

  if (v13 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    goto LABEL_11;
  }

  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_10078D290);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2);
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1005683E4(uint64_t a1)
{
  v3 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (*(a1 + 16) == 1)
  {
    result = (*(v11 + 16))(v14, a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10, v12);
    v16 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
    if (v16)
    {
      v17 = v16;
      TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        (*(v11 + 8))(v14, v10);
        sub_1000079B4(v5, &unk_100771B40);
        return 0;
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        sub_10043CD94(v9);
        v19 = v18;
        (*(v7 + 8))(v9, v6);
        (*(v11 + 8))(v14, v10);
        return v19;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10056869C()
{
  v1 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v8)
  {
    v9 = v8;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1000079B4(v3, &unk_100771B40);
      return;
    }

    (*(v5 + 32))(v7, v3, v4);
    sub_100454D4C(v7);
    if (v10 >> 62)
    {
      v12 = v10;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v12;
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:

      (*(v5 + 8))(v7, v4);
      return;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_10;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1005688D4()
{
  v1 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v8)
  {
    v9 = v8;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1000079B4(v3, &unk_100771B40);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_1004380BC();
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100568AA4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  sub_100562C24(a2, v2, a1, &v4);
  if (v3 == 1)
  {
    *(*&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker] + 16) = (*(*&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker] + 16) | v4) & 1;
  }
}

void sub_100568B00(uint64_t a1)
{
  v168 = a1;
  v163 = sub_100058000(&qword_10078D488);
  v158 = *(v163 - 8);
  __chkstk_darwin(v163);
  v159 = &v138 - v2;
  v167 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v143 = *(v167 - 8);
  __chkstk_darwin(v167);
  v139 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v157 = &v138 - v5;
  v142 = sub_100058000(&unk_10078D490);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v138 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v138 - v8;
  v148 = sub_100058000(&qword_1007819C0);
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v138 - v9;
  v149 = type metadata accessor for Logger();
  v155 = *(v149 - 8);
  __chkstk_darwin(v149);
  v154 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v11 - 8);
  v152 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v150 = &v138 - v14;
  __chkstk_darwin(v15);
  v145 = &v138 - v16;
  __chkstk_darwin(v17);
  v156 = &v138 - v18;
  v161 = sub_100058000(&qword_10078D4A0);
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v144 = (&v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v153 = (&v138 - v21);
  v22 = sub_100058000(&unk_10078D4A8);
  __chkstk_darwin(v22 - 8);
  v24 = &v138 - v23;
  v151 = sub_100058000(&qword_1007721C0);
  __chkstk_darwin(v151);
  v26 = &v138 - v25;
  v165 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v166 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = &v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v162 = &v138 - v29;
  v30 = sub_100058000(&qword_10078D4B8);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v138 - v32;
  v34 = sub_100058000(&qword_10078D4C0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v138 - v36;
  v38 = v1;
  *(*&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker] + 16) = 0;
  TTRICollectionViewDropCommitCoordinator.destination.getter();
  v39 = (*(v35 + 88))(v37, v34);
  if (v39 == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v35 + 96))(v37, v34);
    (*(v31 + 32))(v33, v37, v30);
    v40 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (v40)
    {
      v41 = v40;
      TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

      v42 = sub_100058000(&qword_10078D4C8);
      if ((*(*(v42 - 8) + 48))(v24, 1, v42) == 1)
      {
        (*(v31 + 8))(v33, v30);
        v43 = &unk_10078D4A8;
        v44 = v24;
LABEL_9:
        sub_1000079B4(v44, v43);
        return;
      }

      v152 = v33;
      v158 = v31;
      v159 = v30;
      v57 = *&v24[*(v42 + 48)];
      v58 = v38;
      v59 = v151;
      v60 = *(v151 + 48);
      v61 = v166;
      v62 = *(v166 + 32);
      v63 = v165;
      v62(v26, v24, v165);
      *&v26[v60] = v57;
      v64 = v58;
      v65 = *&v26[*(v59 + 48)];
      v66 = v162;
      v67 = (v62)(v162, v26, v63);
      __chkstk_darwin(v67);
      *(&v138 - 2) = v64;
      v68 = v153;
      TTRICollectionViewDropCommitCoordinator.draggedItemsForCommitting<A>(transformItemID:)();
      v69 = v160;
      v70 = v161;
      v71 = (*(v160 + 88))(v68, v161);
      if (v71 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
      {
        (*(v69 + 96))(v68, v70);
        v161 = *v68;
        v72 = v66;
        v73 = v68[1];
        v164 = *&v64[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter];
        v74 = v156;
        (*(v61 + 16))(v156, v72, v63);
        (*(v61 + 56))(v74, 0, 1, v63);
        v75 = v61;
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v76 = v149;
        v77 = sub_100003E30(v149, qword_100782E90);
        (*(v155 + 16))(v154, v77, v76);
        sub_100058000(&unk_100775610);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062F800;
        *(inited + 32) = 1835365481;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = Array.description.getter();
        *(inited + 56) = v79;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 49;
        *(inited + 88) = 0xE100000000000000;
        v80 = v74;
        v81 = v145;
        sub_10000794C(v80, v145, &unk_100771B40);
        if ((*(v75 + 48))(v81, 1, v63) == 1)
        {
          sub_1000079B4(v81, &unk_100771B40);
          v82 = (inited + 96);
          *(inited + 120) = &type metadata for String;
        }

        else
        {
          v93 = v73;
          v94 = v65;
          sub_100014F04(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item);
          v95 = v81;
          v96 = TTRTreeStorageItem.treeItemDescription.getter();
          v98 = v97;
          (*(v75 + 8))(v95, v63);
          v82 = (inited + 96);
          *(inited + 120) = &type metadata for String;
          if (v98)
          {
            *v82 = v96;
            v65 = v94;
            v73 = v93;
            goto LABEL_46;
          }

          v65 = v94;
          v73 = v93;
        }

        *v82 = 7104878;
        v98 = 0xE300000000000000;
LABEL_46:
        *(inited + 104) = v98;
        *(inited + 128) = 50;
        *(inited + 136) = 0xE100000000000000;
        *(inited + 168) = &type metadata for Int;
        *(inited + 144) = v65;
        sub_100008E04(inited);
        swift_setDeallocating();
        sub_100058000(&unk_10076BA70);
        swift_arrayDestroy();
        v120 = v154;
        sub_10000FD44();

        (*(v155 + 8))(v120, v76);
        v121 = v156;
        v122 = v150;
        sub_10000794C(v156, v150, &unk_100771B40);
        sub_100014F04(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item);
        v123 = v146;
        TTRTreeLocation.init(parent:index:)();
        v124 = v148;
        TTRTreeLocation.parent.getter();
        v125 = TTRTreeLocation.index.getter();
        sub_100439410(v73, v122, v125, 0, 0);
        LOBYTE(v120) = v126;

        sub_1000079B4(v122, &unk_100771B40);
        (*(v147 + 8))(v123, v124);
        sub_1000079B4(v121, &unk_100771B40);
        if ((v120 & 1) != 0 && (v127 = *(v161 + 16)) != 0)
        {
          v164 = *(v141 + 16);
          v128 = v161 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
          v163 = *(v141 + 72);
          v129 = (v141 + 8);
          v130 = (v143 + 8);
          v131 = v157;
          v132 = v142;
          v133 = v140;
          do
          {
            (v164)(v133, v128, v132);
            v134 = TTRICollectionViewDropCommitCoordinator.LocalDropItem.dragItem.getter();
            TTRICollectionViewDropCommitCoordinator.LocalDropItem.sourceItemID.getter();
            (*v129)(v133, v132);
            TTRICollectionViewDropCommitCoordinator.drop(_:toItem:)();

            (*v130)(v131, v167);
            v128 += v163;
            --v127;
          }

          while (v127);

          v63 = v165;
          v75 = v166;
        }

        else
        {
        }

        (*(v75 + 8))(v162, v63);
        (*(v158 + 8))(v152, v159);
        return;
      }

      if (v71 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
      {
        (*(v166 + 8))(v66, v63);
        (*(v158 + 8))(v152, v159);
        (*(v69 + 8))(v68, v70);
        return;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (v39 == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
  {
    (*(v35 + 96))(v37, v34);
    v45 = v158;
    v46 = v159;
    (*(v158 + 32))(v159, v37, v163);
    v47 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (!v47)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v48 = v1;
    v49 = v47;
    v50 = v152;
    TTRICollectionViewTreeBackedDiffableDataSource.targetParent(for:)();

    v51 = v166;
    v52 = v165;
    v53 = (*(v166 + 48))(v50, 1, v165);
    v54 = v167;
    v55 = v157;
    v56 = v164;
    if (v53 == 1)
    {
      (*(v45 + 8))(v46, v163);
      v43 = &unk_100771B40;
      v44 = v50;
      goto LABEL_9;
    }

    v85 = (*(v51 + 32))(v164, v50, v52);
    __chkstk_darwin(v85);
    *(&v138 - 2) = v48;
    v86 = v144;
    TTRICollectionViewDropCommitCoordinator.draggedItemsForCommitting<A>(transformItemID:)();
    v87 = v160;
    v88 = v161;
    v89 = (*(v160 + 88))(v86, v161);
    if (v89 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
    {
      (*(v87 + 96))(v86, v88);
      v90 = *v86;
      v91 = v86[1];
      sub_1004382F0(v91, v56);
      if (v92)
      {

        (*(v166 + 8))(v56, v165);
LABEL_54:
        (*(v45 + 8))(v159, v163);
        return;
      }

      v156 = v90;
      v101 = v166;
      v102 = v150;
      v103 = v165;
      (*(v166 + 16))(v150, v56, v165);
      (*(v101 + 56))(v102, 0, 1, v103);
      sub_100439410(v91, v102, 0, 1, 0);
      v105 = v104;

      sub_1000079B4(v102, &unk_100771B40);
      if ((v105 & 1) == 0)
      {

        (*(v101 + 8))(v56, v103);
        goto LABEL_54;
      }

      v106 = *(v156 + 16);
      if (v106)
      {
        v162 = *(v141 + 16);
        v107 = v156 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
        v161 = *(v141 + 72);
        v160 = v141 + 8;
        v108 = (v143 + 8);
        v109 = v142;
        v110 = v139;
        v111 = v138;
        do
        {
          (v162)(v111, v107, v109);
          v112 = TTRICollectionViewDropCommitCoordinator.LocalDropItem.dragItem.getter();
          TTRICollectionViewDropCommitCoordinator.LocalDropItem.sourceItemID.getter();
          (*v160)(v111, v109);
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          TTRICollectionViewDropCommitCoordinator.drop(_:toItem:orIntoCenterOfItem:)();

          v113 = *v108;
          v114 = v167;
          (*v108)(v110, v167);
          v113(v55, v114);
          v107 += v161;
          --v106;
        }

        while (v106);

        v115 = v163;
        v45 = v158;
        v56 = v164;
        goto LABEL_61;
      }

      goto LABEL_59;
    }

    if (v89 != enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
    {
LABEL_66:
      if (qword_100767460 != -1)
      {
        swift_once();
      }

      sub_100003E30(v149, qword_10078D290);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      v83 = "Unknown dragged items";
      v84 = 21;
LABEL_69:
      sub_1003F9818(v83, v84, 2);
      __break(1u);
      return;
    }

    (*(v87 + 96))(v86, v88);
    v99 = *v86;
    if (sub_1004B1A10(v99))
    {
      v100 = sub_10043ABFC(v99, v56);
    }

    else
    {
      v100 = sub_10043A364(v99, v56);
    }

    v116 = v100;

    if (v116 >> 62)
    {
      v117 = _CocoaArrayWrapper.endIndex.getter();
      if (v117)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v117 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v117)
      {
LABEL_39:
        if (v117 < 1)
        {
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if ((v116 & 0xC000000000000001) != 0)
        {
          v118 = 0;
          v119 = (v143 + 8);
          do
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            ++v118;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            TTRICollectionViewDropCommitCoordinator.drop(_:intoCenterOfItem:)();
            swift_unknownObjectRelease();
            (*v119)(v55, v54);
          }

          while (v117 != v118);
        }

        else
        {
          v135 = (v143 + 8);
          v136 = 32;
          do
          {
            v137 = *(v116 + v136);
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            TTRICollectionViewDropCommitCoordinator.drop(_:intoCenterOfItem:)();

            (*v135)(v55, v54);
            v136 += 8;
            --v117;
          }

          while (v117);
        }

        v45 = v158;
        goto LABEL_60;
      }
    }

LABEL_59:

LABEL_60:
    v115 = v163;
LABEL_61:
    (*(v166 + 8))(v56, v165);
    (*(v45 + 8))(v159, v115);
    return;
  }

  if (v39 == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
  {
    (*(v35 + 8))(v37, v34);
    return;
  }

  if (v39 != enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
  {
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    sub_100003E30(v149, qword_10078D290);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v83 = "Unknown drop destination";
    v84 = 24;
    goto LABEL_69;
  }
}

void sub_10056A27C()
{
  v1 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker);
  if (*(v2 + 16) == 1)
  {
    sub_10043FA6C();
    v2 = *(v0 + v1);
  }

  *(v2 + 16) = 0;
}

void sub_10056A2D8()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Tip();
  v85 = *(v1 - 8);
  __chkstk_darwin(v1);
  v84 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v89 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.List();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v92 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v97 = *(v7 - 8);
  v98 = v7;
  __chkstk_darwin(v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v95 = *(v10 - 8);
  v96 = v10;
  __chkstk_darwin(v10);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v82 = *(v13 - 8);
  v83 = v13;
  __chkstk_darwin(v13);
  v81 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRPermissionConfiguration.Header();
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v86 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v17 - 8);
  v19 = &v80 - v18;
  v20 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v80 - v25;
  __chkstk_darwin(v27);
  v99 = &v80 - v28;
  v30.n128_f64[0] = __chkstk_darwin(v29);
  v100 = &v80 - v31;
  v32 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (!v32)
  {
    __break(1u);
LABEL_38:
    (*(v23 + 1))(v26, v0, v30);
    goto LABEL_39;
  }

  v33 = v32;
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000079B4(v19, &unk_100771B40);
    return;
  }

  v80 = v1;
  v34 = v100;
  (*(v21 + 32))(v100, v19, v20);
  v35 = v20;
  v36 = *(v21 + 16);
  v37 = v99;
  v36(v99, v34, v35);
  v38 = (*(v21 + 88))(v37, v35);
  if (v38 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    v39 = *(v21 + 8);
    v39(v34, v35);
    v36(v23, v37, v35);
    (*(v21 + 96))(v23, v35);
    v40 = type metadata accessor for UUID();
    (*(*(v40 - 8) + 8))(v23, v40);
LABEL_9:
    v39(v37, v35);
    return;
  }

  v41 = v35;
  if (v38 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v38 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
LABEL_8:
    v39 = *(v21 + 8);
    v39(v100, v35);
    goto LABEL_9;
  }

  if (v38 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    v36(v23, v37, v35);
    (*(v21 + 96))(v23, v35);
    v43 = v95;
    v42 = v96;
    (*(v95 + 32))(v12, v23, v96);
    TTRAccountsListsViewModel.SmartList.type.getter();
    TTRListType.PredefinedSmartListType.longTitle.getter();
    (*(v97 + 8))(v9, v98);
    (*(v43 + 8))(v12, v42);
    v44 = *(v21 + 8);
    v44(v100, v35);
    v44(v37, v35);
    return;
  }

  if (v38 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_8;
  }

  if (v38 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v38 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    v45 = v100;
    v36(v23, v37, v35);
    v46 = v21;
    (*(v21 + 96))(v23, v35);
    v48 = v92;
    v47 = v93;
    v49 = v94;
    (*(v93 + 32))(v92, v23, v94);
    TTRAccountsListsViewModel.List.name.getter();
    (*(v47 + 8))(v48, v49);
    v50 = *(v46 + 8);
    v50(v45, v35);
    v50(v37, v35);
    return;
  }

  if (v38 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    v51 = v37;
    v52 = v35;
    v36(v23, v51, v35);
    v53 = v21;
    (*(v21 + 96))(v23, v35);
    v54 = v89;
    v55 = v90;
    v56 = v91;
    (*(v90 + 32))(v89, v23, v91);
    static TTRAccesibility.AccountsList.Format.GroupName.getter();
    sub_100058000(&unk_100786CB0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10062D400;
    v58 = TTRAccountsListsViewModel.Group.name.getter();
    v60 = v59;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = sub_10005C390();
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    String.init(format:_:)();

    (*(v55 + 8))(v54, v56);
    v61 = *(v53 + 8);
    v61(v100, v52);
    v61(v99, v52);
    return;
  }

  if (v38 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
  {
    goto LABEL_8;
  }

  if (v38 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
  {
    v62 = v35;
    v36(v26, v37, v35);
    (*(v21 + 96))(v26, v35);
    v0 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
    v23 = *(v0 - 8);
    v63 = (*(v23 + 11))(v26, v0);
    if (v63 == enum case for TTRAccountsListsViewModel.PermissionRequest.header(_:))
    {
      (*(v23 + 12))(v26, v0);
      v65 = v86;
      v64 = v87;
      v66 = v88;
      (*(v87 + 32))(v86, v26, v88);
      TTRPermissionConfiguration.Header.title.getter();
      (*(v64 + 8))(v65, v66);
      v67 = *(v21 + 8);
      v67(v100, v62);
      v67(v37, v62);
      return;
    }

    if (v63 == enum case for TTRAccountsListsViewModel.PermissionRequest.primaryButton(_:))
    {
      (*(v23 + 12))(v26, v0);
      v75 = v81;
      v74 = v82;
      v76 = v83;
      (*(v82 + 32))(v81, v26, v83);
      TTRPermissionConfiguration.PrimaryButton.title.getter();
      (*(v74 + 8))(v75, v76);
      v71 = *(v21 + 8);
      v71(v100, v41);
      v72 = v37;
      v73 = v41;
      goto LABEL_28;
    }

    if (v63 == enum case for TTRAccountsListsViewModel.PermissionRequest.combined(_:))
    {
      v39 = *(v21 + 8);
      v39(v100, v41);
      v78 = v0;
      v35 = v41;
      (*(v23 + 1))(v26, v78);
      goto LABEL_9;
    }

    goto LABEL_38;
  }

  if (v38 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:))
  {
    goto LABEL_8;
  }

  if (v38 == enum case for TTRAccountsListsViewModel.Item.tip(_:))
  {
    v36(v23, v37, v35);
    (*(v21 + 96))(v23, v35);
    v69 = v84;
    v68 = v85;
    v70 = v80;
    (*(v85 + 32))(v84, v23, v80);
    TTRAccountsListsViewModel.Tip.name.getter();
    (*(v68 + 8))(v69, v70);
    v71 = *(v21 + 8);
    v71(v100, v35);
    v72 = v37;
    v73 = v35;
LABEL_28:
    v71(v72, v73);
    return;
  }

  if (v38 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
  {
    goto LABEL_8;
  }

  if (v38 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v38 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:) || v38 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v38 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    v77 = *(v21 + 8);
    v77(v100, v35);
    v77(v99, v35);
    return;
  }

LABEL_39:
  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_100003E30(v79, qword_10078D290);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2);
  __break(1u);
}

void sub_10056B138(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v19)
  {
    v20 = v19;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1000079B4(v11, &unk_100771B40);
      return;
    }

    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v15, v18, v12);
    v21 = (*(v13 + 88))(v15, v12);
    if (v21 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v13 + 8))(v18, v12);
      (*(v13 + 96))(v15, v12);
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 8))(v15, v22);
      return;
    }

    if (v21 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_10;
    }

    if (v21 == enum case for TTRAccountsListsViewModel.Item.list(_:))
    {
      (*(v13 + 96))(v15, v12);
      v11 = v30;
      a1 = v31;
      (*(v30 + 4))(v8, v15, v31);
      TTRAccountsListsViewModel.List.pinState.getter();
      v24 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
      (*(v29 + 8))(v5, v3);
      if (v24)
      {
        (*(v11 + 1))(v8, a1);
LABEL_14:
        (*(v13 + 8))(v18, v12);
        return;
      }
    }

    else
    {
      if (v21 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
      {
LABEL_10:
        v23 = *(v13 + 8);
        v23(v18, v12);
        v23(v15, v12);
        return;
      }

      if (v21 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v21 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
      {
        goto LABEL_14;
      }

      if (qword_100767460 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100003E30(v25, qword_10078D290);
      v12 = _swiftEmptyArrayStorage;
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2);
      __break(1u);
    }

    v26._object = 0x8000000100671790;
    v27._countAndFlagsBits = 0xD000000000000035;
    v27._object = 0x80000001006717B0;
    v26._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v26, v27);
    (*(v11 + 1))(v8, a1);
    (*(v13 + 8))(v18, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10056B878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10056B8E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10056B948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10056B9A8(uint64_t a1)
{
  v53 = a1;
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v52 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v57 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v45 - v10;
  v11 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v45 - v12);
  v14 = type metadata accessor for REMHashtagLabelSpecifier();
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  __chkstk_darwin(v20);
  v22 = &v45 - v21;
  v51 = v1;
  sub_10055A0F4(v13);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    sub_1000079B4(v13, &unk_10076B7C0);
    return;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10056B948(v13, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  v23 = v58;
  (*(v58 + 32))(v22, v13, v14);
  v24 = *(v23 + 16);
  v24(v19, v22, v14);
  v25 = (*(v23 + 88))(v19, v14);
  if (v25 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    if (v25 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v25 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      (*(v23 + 8))(v22, v14);
      return;
    }

    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100003E30(v42, qword_10078D290);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v43 = "Unknown selection type";
    goto LABEL_23;
  }

  v46 = v25;
  v47 = v24;
  (*(v23 + 96))(v19, v14);
  v26 = *v19;
  v48 = *(v19 + 1);
  v49 = v26;
  v45 = sub_100058000(&qword_10076B830);
  v27 = v54;
  (*(v57 + 32))(v56, &v19[*(v45 + 64)], v54);
  v28 = v52;
  (*(v52 + 16))(v7, v53, v5);
  v29 = (*(v28 + 88))(v7, v5);
  if (v29 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.any(_:))
  {
    v30 = &enum case for REMHashtagLabelSpecifier.Operation.or(_:);
    v31 = v57;
    v32 = v55;
    goto LABEL_13;
  }

  v32 = v55;
  if (v29 != enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.all(_:))
  {
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100003E30(v44, qword_10078D290);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v43 = "Unknown operation type";
LABEL_23:
    sub_1003F9818(v43, 22, 2);
    __break(1u);
    return;
  }

  v30 = &enum case for REMHashtagLabelSpecifier.Operation.and(_:);
  v31 = v57;
LABEL_13:
  v33 = v56;
  (*(v31 + 104))(v32, *v30, v27);
  sub_100014F04(&qword_10076B838, &type metadata accessor for REMHashtagLabelSpecifier.Operation);
  v34 = v33;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {

    v35 = *(v31 + 8);
    v35(v32, v27);
    v35(v33, v27);
    (*(v58 + 8))(v22, v14);
  }

  else
  {
    v36 = *(v45 + 64);
    v37 = v48;
    *v16 = v49;
    *(v16 + 1) = v37;
    (*(v31 + 16))(&v16[v36], v32, v27);
    v38 = v58;
    (*(v58 + 104))(v16, v46, v14);
    v39 = v50;
    v47(v50, v16, v14);
    swift_storeEnumTagMultiPayload();
    sub_10055DF60(v39, 16, 0);
    sub_10056B948(v39, type metadata accessor for TTRIAccountsListsSelection);
    v40 = *(v38 + 8);
    v40(v16, v14);
    v41 = *(v31 + 8);
    v41(v55, v27);
    v41(v34, v27);
    v40(v22, v14);
  }
}

uint64_t sub_10056C318()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_10056C3F0()
{
  result = qword_10078D628;
  if (!qword_10078D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078D628);
  }

  return result;
}

uint64_t sub_10056C470@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1000046FC(a1, v8);
  if (!swift_dynamicCast())
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  AnyHashable.base.getter();

  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_10056C570(uint64_t a1)
{
  swift_getObjectType();
  sub_1001AAABC(a1, v5);
  if (!v6)
  {
    sub_10000B070(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = static AnyHashable.== infix(_:_:)();

  return v2 & 1;
}

id sub_10056C780(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleInteraction] = 0;
  v10 = OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleElementIdentifier;
  *&v4[v10] = [objc_allocWithZone(NSUUID) init];
  *&v4[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_ovalLayer] = 0;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_10056C864();

  return v11;
}

void sub_10056C864()
{
  v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"tapGestureAction:"];
  [v6 setDelegate:v0];
  [v0 addGestureRecognizer:v6];
  v1 = [objc_allocWithZone(PKScribbleInteraction) init];
  v2 = OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleInteraction;
  v3 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleInteraction];
  *&v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleInteraction] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v4 setDelegate:v0];

  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v5 setElementSource:v0];
  if (!*&v0[v2])
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v0 addInteraction:?];
}

id sub_10056C9A8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleInteraction] = 0;
  v4 = OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleElementIdentifier;
  *&v1[v4] = [objc_allocWithZone(NSUUID) init];
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_ovalLayer] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_10056C864();
  }

  return v6;
}

uint64_t sub_10056CFF0(void *a1)
{
  if ([a1 type] == 2)
  {
    return 0;
  }

  sub_100003540(0, &qword_10078D788);
  UIView.ancestorView<A>(ofType:)();
  if (!v26)
  {
    return 1;
  }

  v3 = v26;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
  v14 = sub_100068328(v5, v7, v9, v11, v12, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [a1 locationInView:v3];
  v22 = v21;
  v24 = v23;

  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  v27.x = v22;
  v27.y = v24;
  v25 = CGRectContainsPoint(v28, v27);

  return v25;
}

double sub_10056D130()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = 0.0;
  if (v2)
  {
    v4 = v2;
    v5 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleElementIdentifier];
    sub_100003540(0, &qword_10078D778);
    v6 = v5;
    swift_unknownObjectRetain();
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      [v1 bounds];
      return v8;
    }
  }

  return v3;
}

void sub_10056D21C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = *(a2 + OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleElementIdentifier);
    sub_100003540(0, &qword_10078D778);
    swift_unknownObjectRetain();
    _Block_copy(a3);
    v9 = v8;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      v11 = a2 + OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        (*(v12 + 16))(a2, ObjectType, v12);
        swift_unknownObjectRelease();
        v14 = swift_allocObject();
        *(v14 + 16) = sub_10056D4A0;
        *(v14 + 24) = v5;

        v15 = zalgo.getter();
        dispatch thunk of Promise.then<A>(on:closure:)();

        v16 = swift_allocObject();
        *(v16 + 16) = sub_10056D4A0;
        *(v16 + 24) = v5;

        v17 = zalgo.getter();
        dispatch thunk of Promise.error(on:closure:)();

        return;
      }
    }
  }

  else
  {
    _Block_copy(a3);
  }

  a3[2](a3, 0);
}

id sub_10056D524(uint64_t *a1, void **a2, void *a3, uint64_t a4)
{
  v87 = a4;
  v89 = a1;
  v6 = type metadata accessor for TTRRemindersListLayout();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = __chkstk_darwin(v6);
  v81 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v88 = &v80 - v10;
  v11 = __chkstk_darwin(v9);
  v80 = &v80 - v12;
  __chkstk_darwin(v11);
  v90 = &v80 - v13;
  v14 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v15 = __chkstk_darwin(v14 - 8);
  v85 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v83 = &v80 - v17;
  v84 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v84);
  v92 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TTRRemindersListDefaultListType();
  v82 = *(v86 - 1);
  __chkstk_darwin(v86);
  v20 = (&v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v21);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v24 - 8);
  v26 = (&v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v27);
  v29 = *a2;
  (*(v30 + 104))(&v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for REMRemindersListDataView.SortingStyle.default(_:));
  type metadata accessor for TTRShowRecentlyDeletedDataModelSource();
  swift_allocObject();
  v31 = v29;
  v32 = a3;
  v91 = TTRShowRecentlyDeletedDataModelSource.init(store:account:sortingStyle:)();
  sub_10010BD5C(a2, v26, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v100[0] = &_swiftEmptyArrayStorage;
  sub_10056E4B0(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *v20 = [v32 remObjectID];
  (v82[13])(v20, enum case for TTRRemindersListDefaultListType.cloudKitListWithAccountID(_:), v86);
  sub_10007786C(v26, v23, v20, v100);
  v33 = v100[0];
  type metadata accessor for TTRShowRecentlyDeletedViewModelSource();
  v34 = swift_allocObject();
  v35 = v91;

  v86 = v33;
  v36 = sub_10056E0EC(v35, v86, v34);
  sub_10010BD5C(a2, v26, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v100, v97);
  v37 = sub_10056E4B0(&qword_100781108, type metadata accessor for TTRShowRecentlyDeletedViewModelSource);
  v38 = v92;
  sub_10010BD5C(v26, v92, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v39 = v84;
  sub_10010BCAC(v97, v38 + *(v84 + 28));
  v40 = (v38 + *(v39 + 32));
  *v40 = v36;
  v40[1] = v37;
  v41 = v97[0];
  sub_100058000(&qword_10076C230);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v99, v96, &qword_100769608);
  v43 = *(v96[5] + 8);
  *(v42 + 32) = v96[4];
  *(v42 + 40) = v43;
  sub_10000794C(&v98, v95, &qword_100769600);
  swift_retain_n();
  v44 = v41;
  swift_unknownObjectRelease();
  *(v42 + 48) = v95[3];
  sub_100004758(v95);
  sub_100004758(v96);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v45 = swift_allocObject();
  v46 = sub_1003A7BC8(v44, v36, v42, v45);

  sub_10010BD08(v97);
  sub_10010BE0C(v26, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v47 = *(v39 + 36);
  v82 = v46;
  *(v38 + v47) = v46;
  v48 = v83;
  sub_100078BBC(v83);
  v84 = type metadata accessor for TTRIShowRecentlyDeletedPresenter();
  v49 = swift_allocObject();
  v50 = (v49 + OBJC_IVAR____TtC9Reminders32TTRIShowRecentlyDeletedPresenter_dataModelSource);
  *v50 = v35;
  v50[1] = &protocol witness table for TTRShowRecentlyDeletedDataModelSource;
  v51 = v85;
  sub_10010BD5C(v48, v85, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);

  v52 = v87;
  swift_unknownObjectRetain();
  v53 = sub_1003A56E4(v51, v52, v49);
  sub_10010BE0C(v48, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v54 = *(v53 + 144);
  ObjectType = swift_getObjectType();
  v56 = *(v54 + 112);

  if (v56(ObjectType, v54))
  {
    swift_getObjectType();
    v57 = v80;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v58 = v90;
    (*(v93 + 32))(v90, v57, v94);
  }

  else
  {
    v58 = v90;
    (*(v93 + 104))(v90, enum case for TTRRemindersListLayout.list(_:), v94);
  }

  v59 = sub_1003A4A1C(v58, v53);
  v85 = v60;
  v62 = v61;
  v64 = v63;
  (*(v93 + 8))(v58, v94);
  v87 = swift_getObjectType();
  *(v53 + 24) = *(v64 + 8);
  v90 = v62;
  swift_unknownObjectWeakAssign();
  v65 = *(v53 + 144);
  v66 = swift_getObjectType();
  v67 = *(v65 + 112);

  if (v67(v66, v65))
  {
    swift_getObjectType();
    v68 = v81;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v69 = v88;
    (*(v93 + 32))(v88, v68, v94);
  }

  else
  {

    v69 = v88;
    (*(v93 + 104))(v88, enum case for TTRRemindersListLayout.list(_:), v94);
  }

  v70 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v71 = v59;
  v72 = sub_1003A7BFC(v53, v71, v85, v69, 0, 1, 0, v70);

  v73 = *(v64 + 32);
  v74 = v72;
  v73(v72, &off_100723D78, v87, v64);
  sub_10056E4B0(&qword_10078D790, type metadata accessor for TTRIShowRecentlyDeletedPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10056E4B0(&qword_10078D798, type metadata accessor for TTRShowRecentlyDeletedViewModelSource);

  v75 = v74;
  dispatch thunk of TTRShowRecentlyDeletedDataModelSource.delegate.setter();

  sub_10056FEB0(v76, &off_10071A9B0);

  v82[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v101, v97, &qword_100769600);
  v77 = v97[4];
  swift_unknownObjectRelease();
  *(v77 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v97);
  sub_10000794C(&v102, v97, &qword_100769608);
  swift_getObjectType();
  sub_10056E4B0(&qword_10078D7A0, type metadata accessor for TTRIShowRecentlyDeletedPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v97);
  dispatch thunk of TTRShowRecentlyDeletedDataModelSource.start()();
  v78 = v89;
  v89[3] = v84;
  v78[4] = &off_10072EC98;
  swift_unknownObjectRelease();

  *v78 = v53;
  sub_10010BE0C(v92, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v100);
  return v75;
}

uint64_t sub_10056E0EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v32[0] = a2;
  v32[1] = v5;
  v6 = type metadata accessor for REMAnalyticsEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v10 - 8);
  v12 = v32 - v11;
  v13 = type metadata accessor for TTRListType.SortingCapability();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource_listRepresentation) = 0;
  v17 = a3 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource_remindersCount;
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  *(a3 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  v18 = (a3 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource_recentlyDeletedDataModelSource);
  *v18 = a1;
  v18[1] = &protocol witness table for TTRShowRecentlyDeletedDataModelSource;
  v19 = enum case for REMRemindersListDataView.SortingStyle.default(_:);
  v20 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  (*(*(v20 - 8) + 104))(v16, v19, v20);
  (*(v14 + 104))(v16, enum case for TTRListType.SortingCapability.notSupported(_:), v13);

  v22 = sub_1003A649C(v21, v32[0], v16, a3);

  sub_10059F6F0(v12);
  sub_10056F540(v12);
  sub_10010BE6C(v12);
  type metadata accessor for TTRUserDefaults();
  v23 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v24 = sub_100058000(&qword_100770980);
  v25 = &v9[*(v24 + 48)];
  v26 = &v9[*(v24 + 80)];
  v27 = enum case for REMRemindersOpenUserOperation.recentlyDeleted(_:);
  v28 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v28 - 8) + 104))(v9, v27, v28);
  *v25 = TTRUserDefaults.activitySessionId.getter();
  v25[1] = v29;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v26 = _typeName(_:qualified:)();
  v26[1] = v30;
  (*(v7 + 104))(v9, enum case for REMAnalyticsEvent.openListUserOperation(_:), v6);
  REMAnalyticsManager.post(event:)();

  (*(v7 + 8))(v9, v6);
  return v22;
}

uint64_t sub_10056E4B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10056E4F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_100058000(&qword_100775FD8);
  __chkstk_darwin(v10 - 8);
  v12 = v43 - v11;
  v13 = type metadata accessor for TTRIEditSectionsRouter();
  v44[3] = v13;
  v44[4] = &off_100731E98;
  v44[0] = a3;
  type metadata accessor for TTRIEditSectionsPresenter();
  v14 = swift_allocObject();
  v15 = sub_10000AE84(v44, v13);
  v16 = __chkstk_darwin(v15);
  v18 = (v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  v43[3] = v13;
  v43[4] = &off_100731E98;
  v43[0] = v20;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 40) = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_viewModel;
  type metadata accessor for TTREditSectionsViewModel();
  *(v14 + v21) = TTREditSectionsViewModel.__allocating_init(shouldHideEmptySections:sections:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:)();
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentRemListSection) = 0;
  v22 = (v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentCanonicalName);
  *v22 = 0;
  v22[1] = 0;
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_hideEmptySectionsToggleChanged) = 0;
  v23 = (v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentSectionDisplayName);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionDisplayName);
  *v24 = 0;
  v24[1] = 0;
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionOrdering) = 0;
  v25 = sub_100058000(&qword_100775FE0);
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  sub_10023F1A0(_swiftEmptyArrayStorage);
  TTREditSectionsViewModel.OptimisticApply.init(sectionOrdering:renamedSections:)();
  v26 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_list;
  v27 = type metadata accessor for TTRListOrCustomSmartList();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v14 + v26, a1, v27);
  sub_10000B0D8(a2, v14 + 88);
  sub_10000B0D8(v43, v14 + 48);
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_store) = a4;
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_undoManager) = a5;
  v29 = a4;
  v30 = a5;
  v31 = TTRListOrCustomSmartList.groceryContext.getter();
  if (v31)
  {
    v32 = v31;
    v33 = [v31 shouldCategorizeGroceryItems];
  }

  else
  {
    v33 = 0;
  }

  v34 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldCategorizeGroceryItems;
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldCategorizeGroceryItems) = v33;
  v35 = TTRListOrCustomSmartList.autoCategorizationContext.getter();
  if (v35)
  {
    v36 = v35;
    v37 = [v35 shouldAutoCategorizeItems];
  }

  else
  {
    v37 = 0;
  }

  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldAutoCategorizeItems) = v37;
  if ((*(v14 + v34) & 1) != 0 || v37)
  {
    type metadata accessor for TTRUserDefaults();
    v38 = static TTRUserDefaults.appUserDefaults.getter();
    v39 = TTRListOrCustomSmartList.objectID.getter();
    v40 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)();

    *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldHideEmptySections) = v40 & 1;
  }

  else
  {
    *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldHideEmptySections) = 0;
  }

  type metadata accessor for TTRMainActorDeferredAction();
  swift_allocObject();
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_deferredAction) = TTRMainActorDeferredAction.init()();
  sub_10056F1F4(&qword_10078D7D0);

  TTRMainActorDeferredAction.delegate.setter();

  v41 = sub_10023D61C();

  sub_100004758(a2);
  (*(v28 + 8))(a1, v27);
  sub_100004758(v43);
  *(v14 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_viewModel) = v41;

  sub_100004758(v44);
  return v14;
}

id sub_10056E9CC(uint64_t a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_dataSource] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_lastConsumedViewModel] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___cancelButton] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___doneButton] = 0;
  v15 = &a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_presenter];
  *v15 = a1;
  *(v15 + 1) = &off_10071CBC0;
  *&a3[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_localUndoManager] = a2;
  sub_10056F1A8();
  (*(v8 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v7);
  v16 = a2;
  UICollectionLayoutListConfiguration.init(appearance:)();
  v17 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v12 + 8))(v14, v11);
  v20.receiver = a3;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, "initWithCollectionViewLayout:", v17);

  return v18;
}

uint64_t sub_10056EC00(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v61 = a4;
  v8 = type metadata accessor for TTRListOrCustomSmartList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = (&v54 - v13);
  v57 = *(v9 + 16);
  v58 = a1;
  v57(&v54 - v13, a1, v8, v12);
  v15 = (*(v9 + 88))(v14, v8);
  v56 = a3;
  if (v15 == enum case for TTRListOrCustomSmartList.list(_:))
  {
    (*(v9 + 96))(v14, v8);
    v16 = *v14;
    v17 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
    v18 = v16;
    v19 = static TTRInteractorEditsCommitting<>.async.getter();
    v66 = v17;
    v67 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
    v65[0] = v19;
    v20 = type metadata accessor for TTRUserDefaults();
    v21 = static TTRUserDefaults.appUserDefaults.getter();
    v63 = v20;
    v64 = &protocol witness table for TTRUserDefaults;
    v62[0] = v21;
    type metadata accessor for TTREditSectionsListEditor();
    swift_allocObject();
    v22 = a3;
    v23 = TTREditSectionsListEditor.init(list:undoManager:committer:userDefaults:)();

    v24 = static TTRInteractorEditsCommitting<>.async.getter();
    v66 = v17;
    v67 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
    v65[0] = v24;
    v62[0] = v23;
    v25 = sub_100058000(&qword_10078D7C0);
    swift_allocObject();
    v26 = v22;
    v27 = a2;
    v28 = v18;
    v29 = v27;
    v30 = TTREditSectionsInteractor.init(editSectionsEditor:store:undoManager:committer:)();
    v66 = v25;
    v31 = &unk_10078D7C8;
    v32 = &qword_10078D7C0;
LABEL_5:
    v67 = sub_10056F154(v31, v32);

    v65[0] = v30;
    type metadata accessor for TTRIEditSectionsRouter();
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v45 = v59;
    (v57)(v59, v58, v8);
    sub_10000B0D8(v65, v62);
    v46 = v56;
    v47 = v27;

    v48 = sub_10056E4F8(v45, v62, v44, v47, v46);
    v49 = objc_allocWithZone(type metadata accessor for TTRIEditSectionsViewController());
    v50 = v46;

    v52 = sub_10056E9CC(v51, v50, v49);
    sub_10056F1F4(&qword_10078D7B8);
    sub_10000AE84(v65, v66);

    dispatch thunk of TTREditSectionsInteractorType.delegate.setter();
    *(v48 + 24) = &off_10071F620;
    swift_unknownObjectWeakAssign();
    *(v48 + 40) = v60;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    sub_10000C36C(v65, v66);
    dispatch thunk of TTREditSectionsInteractorType.start()();

    sub_100004758(v65);
    return v52;
  }

  v55 = a2;
  if (v15 == enum case for TTRListOrCustomSmartList.customSmartList(_:))
  {
    (*(v9 + 96))(v14, v8);
    v33 = *v14;
    v34 = type metadata accessor for TTRUserDefaults();
    v28 = v33;
    v35 = static TTRUserDefaults.appUserDefaults.getter();
    v66 = v34;
    v67 = &protocol witness table for TTRUserDefaults;
    v65[0] = v35;
    v36 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
    v37 = static TTRInteractorEditsCommitting<>.async.getter();
    v63 = v36;
    v64 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
    v62[0] = v37;
    type metadata accessor for TTREditSectionsSmartListEditor();
    swift_allocObject();
    v38 = a3;
    v39 = TTREditSectionsSmartListEditor.init(list:undoManager:committer:userDefaults:)();

    v40 = static TTRInteractorEditsCommitting<>.async.getter();
    v66 = v36;
    v67 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
    v65[0] = v40;
    v62[0] = v39;
    v41 = sub_100058000(&qword_10078D7A8);
    swift_allocObject();
    v42 = v38;
    v27 = v55;
    v43 = v55;
    v30 = TTREditSectionsInteractor.init(editSectionsEditor:store:undoManager:committer:)();
    v66 = v41;
    v31 = &unk_10078D7B0;
    v32 = &qword_10078D7A8;
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10056F154(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005D20C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10056F1A8()
{
  result = qword_10077BFE0;
  if (!qword_10077BFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10077BFE0);
  }

  return result;
}

uint64_t sub_10056F1F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRIEditSectionsPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10056F238(uint64_t a1)
{
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v28 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v25 = result;
    v26 = v4;
    v27 = 1;
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

  v28 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v25 = result;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v25;
    v9 = v26;
    v11 = v27;
    sub_10057E72C(v25, v26, v27, a1);
    v13 = v12;
    REMObjectID.codable.getter();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v23)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_100058000(&qword_10078E070);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v24, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_10000FBA0(v25, v26, v27);
        return v28;
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

      v14 = 1 << *(a1 + 32);
      if (v10 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v10 >> 6;
      v16 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v16 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v10 & 0x3F));
      if (v17)
      {
        v14 = __clz(__rbit64(v17)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_10000FBA0(v10, v9, 0);
            v14 = __clz(__rbit64(v21)) + v18;
            goto LABEL_27;
          }
        }

        result = sub_10000FBA0(v10, v9, 0);
      }

LABEL_27:
      v25 = v14;
      v26 = v9;
      v27 = 0;
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

uint64_t sub_10056F540(uint64_t a1)
{
  v62 = sub_100058000(&qword_10078E078);
  __chkstk_darwin(v62);
  v64 = &v52 - v2;
  v3 = sub_100058000(&qword_100769E98);
  __chkstk_darwin(v3 - 8);
  v61 = &v52 - v4;
  v5 = type metadata accessor for TTRRemindersListLayout();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v52 - v9;
  v11 = sub_100058000(&unk_10078A380);
  v12 = __chkstk_darwin(v11 - 8);
  v58 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v57 = &v52 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v52 - v17;
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v22 = __chkstk_darwin(v21);
  v56 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v52 - v24;
  v26 = a1;
  v28 = v27;
  sub_10000794C(v26, v20, &unk_10078A380);
  v29 = *(v28 + 48);
  if (v29(v20, 1, v21) == 1)
  {
    return sub_1000079B4(v20, &unk_10078A380);
  }

  v65 = v28;
  v31 = *(v28 + 32);
  v63 = v25;
  v53 = v31;
  v54 = v28 + 32;
  v31(v25, v20, v21);
  v32 = v66;
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.layoutContext.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v59[4](v10, v8, v60);
  }

  else
  {
    v59[13](v10, enum case for TTRRemindersListLayout.list(_:), v60);
  }

  v33 = v63;
  TTRRemindersListViewModel.ListInfo.listLayout.setter();

  TTRRemindersListCurrentTipCapability.visibleTip.getter();

  TTRRemindersListViewModel.ListInfo.tip.setter();
  v34 = v65;
  v35 = *(v65 + 16);
  v61 = (v65 + 16);
  v59 = v35;
  (v35)(v18, v33, v21);
  v36 = *(v34 + 56);
  v60 = v34 + 56;
  v55 = v36;
  v36(v18, 0, 1, v21);
  v37 = v32;
  v38 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  v39 = *(v62 + 48);
  v40 = v64;
  sub_10000794C(v18, v64, &unk_10078A380);
  v62 = v38;
  sub_10000794C(v37 + v38, v40 + v39, &unk_10078A380);
  if (v29(v40, 1, v21) == 1)
  {
    sub_1000079B4(v18, &unk_10078A380);
    if (v29((v40 + v39), 1, v21) == 1)
    {
      sub_1000079B4(v40, &unk_10078A380);
      return (*(v65 + 8))(v63, v21);
    }

    goto LABEL_11;
  }

  v41 = v57;
  sub_10000794C(v40, v57, &unk_10078A380);
  if (v29((v40 + v39), 1, v21) == 1)
  {
    sub_1000079B4(v18, &unk_10078A380);
    (*(v65 + 8))(v41, v21);
LABEL_11:
    sub_1000079B4(v40, &qword_10078E078);
    goto LABEL_12;
  }

  v49 = v56;
  v53(v56, v40 + v39, v21);
  sub_10059A488(&qword_10078E080, &type metadata accessor for TTRRemindersListViewModel.ListInfo);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v65 + 8);
  v51(v49, v21);
  sub_1000079B4(v18, &unk_10078A380);
  v51(v41, v21);
  sub_1000079B4(v40, &unk_10078A380);
  if (v50)
  {
    return (v51)(v63, v21);
  }

LABEL_12:
  v42 = v58;
  v43 = v63;
  (v59)(v58, v63, v21);
  v55(v42, 0, 1, v21);
  v44 = v66;
  v45 = v62;
  swift_beginAccess();
  sub_10059A418(v42, v44 + v45);
  swift_endAccess();
  v46 = v44 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v47 = *(v46 + 8);
    ObjectType = swift_getObjectType();
    (*(v47 + 56))(v43, ObjectType, v47);
    swift_unknownObjectRelease();
  }

  return (*(v65 + 8))(v43, v21);
}

uint64_t sub_10056FD38()
{

  v1 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  v2 = type metadata accessor for TTRListType.SortingCapability();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10003B788(v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate);

  v3 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_listMessaging;
  v4 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo, &unk_10078A380);

  v5(v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedEmptyListMessaging, v4);

  return v0;
}

uint64_t sub_10056FEB0(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  *(v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = a1;
    v16 = *(v15 + 8);
    v17 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
    swift_beginAccess();
    sub_10000794C(v2 + v17, v10, &unk_10078A380);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1000079B4(v10, &unk_10078A380);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      ObjectType = swift_getObjectType();
      (*(v16 + 56))(v14, ObjectType, v16);
      (*(v12 + 8))(v14, v11);
    }

    v20 = swift_getObjectType();
    v21 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_listMessaging;
    swift_beginAccess();
    v22 = v2 + v21;
    v23 = v25;
    (*(v5 + 16))(v7, v22, v25);
    (*(v16 + 64))(v7, v20, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v7, v23);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100570224()
{
  sub_100058000(&qword_10076F6F0);
  type metadata accessor for TTRRemindersListViewModel.AssignmentData.VisibleElements();
  *(swift_allocObject() + 16) = xmmword_10062D400;
  static TTRRemindersListViewModel.AssignmentData.VisibleElements.avatar.getter();
  sub_10059A488(&qword_10076F6F8, &type metadata accessor for TTRRemindersListViewModel.AssignmentData.VisibleElements);
  sub_100058000(&qword_10076F700);
  sub_10000E188(&qword_10076F708, &qword_10076F700);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

BOOL sub_100570398()
{
  swift_getObjectType();
  v0 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
  if (v0)
  {
    swift_unknownObjectRelease();
  }

  return v0 != 0;
}

uint64_t sub_1005703EC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle.subtaskCount(_:);
  v3 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = enum case for TTRRemindersListSubtaskDisplayStyle.fixed(_:);
  v5 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_1005704AC(uint64_t a1)
{
  v33 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v5 = *(v32 - 8);
  v6 = __chkstk_darwin(v32);
  v31 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _swiftEmptyArrayStorage;
  v8 = *(a1 + 16);
  sub_1000C416C(v8, v6);
  if (!v8)
  {
LABEL_16:
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceBaseType.prefetchReminders(with:)();
  }

  v9 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v10 = (v2 + 88);
  v11 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v12 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
  v13 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
  v30 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
  v28 = (v5 + 32);
  v29 = (v2 + 96);
  v27 = (v5 + 8);
  v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v15 = *(v9 + 72);
  v26 = v15;
  while (1)
  {
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v16 = v33;
    v17 = (*v10)(v4, v33);
    if (v17 == v11 || v17 == v12 || v17 == v13)
    {
      v20 = v12;
      v21 = v11;
      (*v29)(v4, v16);
      v22 = v31;
      v23 = v32;
      (*v28)(v31, v4, v32);
      TTRRemindersListViewModel.ReminderID.objectID.getter();
      (*v27)(v22, v23);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25[1] = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v11 = v21;
      v12 = v20;
      v15 = v26;
      goto LABEL_4;
    }

    if (v17 != v30)
    {
      break;
    }

LABEL_4:
    v14 += v15;
    if (!--v8)
    {
      goto LABEL_16;
    }
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}