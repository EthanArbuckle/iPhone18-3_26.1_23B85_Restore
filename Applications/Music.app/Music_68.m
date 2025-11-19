uint64_t sub_100791550@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101188E88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  v7 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse);
  if (v7 < 0)
  {
    v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {

    dispatch thunk of MusicAutoupdatingResponse.request.getter();
    MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
    v15[3] = v3;
    v15[4] = sub_100020674(&qword_101188E90, &qword_101188E88);
    v8 = sub_10001C8B8(v15);
    (*(v4 + 16))(v8, v6, v3);
    v14 = 0;
    memset(&v13[16], 0, 32);
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    (*(v4 + 8))(v6, v3);
    sub_1004E6028(v7);
    v11 = type metadata accessor for MusicPlaybackIntentDescriptor();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_1007917E8()
{
  v1 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album;
  v2 = type metadata accessor for Album();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000095E8(v0 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum, &unk_101184730);

  v3 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_preferredSource;
  v4 = type metadata accessor for MusicPropertySource();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectWeakDestroy();
  sub_1004E6028(*(v0 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse));

  sub_1000D8F2C(v0 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_delegate);
  return v0;
}

uint64_t sub_100791928()
{
  sub_1007917E8();

  return swift_deallocClassInstance();
}

uint64_t _s10DataSourceCMa_1()
{
  result = qword_1011A2698;
  if (!qword_1011A2698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007919D4()
{
  type metadata accessor for Album();
  if (v0 <= 0x3F)
  {
    sub_100791B30();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MusicPropertySource();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100791B30()
{
  if (!qword_101192490)
  {
    type metadata accessor for Album();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101192490);
    }
  }
}

uint64_t sub_100791BB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
  swift_beginAccess();
  sub_1000089F8(v1 + v6, v5, &unk_101184730);
  v7 = type metadata accessor for Album();
  a1[3] = v7;
  a1[4] = &off_1011A25E0;
  v8 = sub_10001C8B8(a1);
  v9 = *(v7 - 8);
  v10 = *(v9 + 48);
  if (v10(v5, 1, v7) != 1)
  {
    return (*(v9 + 32))(v8, v5, v7);
  }

  (*(v9 + 16))(v8, v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album, v7);
  result = (v10)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000095E8(v5, &unk_101184730);
  }

  return result;
}

uint64_t sub_100791D68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_preferredSource;
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100791E04(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_10078EE9C(Strong);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_100791E8C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100791ED4()
{
  v4 = _typeName(_:qualified:)();
  v0._countAndFlagsBits = 0x203A6D65746928;
  v0._object = 0xE700000000000000;
  String.append(_:)(v0);
  type metadata accessor for Album();
  sub_10079392C(&unk_1011926D0, &type metadata accessor for Album);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4;
}

id sub_100791FD4(void *a1, int a2, int a3)
{
  v32 = a3;
  v34 = a2;
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &ObjectType - v8;
  v10 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v10 - 8);
  v12 = &ObjectType - v11;
  v13 = type metadata accessor for Album();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &ObjectType - v18;
  __chkstk_darwin(v20);
  v22 = &ObjectType - v21;
  v35 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_1000095E8(v12, &unk_101184730);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
    ObjectType = swift_getObjectType();
    v24 = *(v14 + 16);
    v24(v19, v22, v13);
    v25 = &enum case for MusicPropertySource.catalog(_:);
    if ((v32 & 1) == 0)
    {
      v25 = &enum case for MusicPropertySource.library(_:);
    }

    (*(v5 + 104))(v9, *v25, v4);
    v24(v16, v19, v13);
    v26 = v33;
    (*(v5 + 16))(v33, v9, v4);
    _s10DataSourceCMa_1();
    v27 = swift_allocObject();
    sub_10078B958(v16, v34 & 1, v26);
    v28 = objc_allocWithZone(type metadata accessor for MCDItemDetailViewController());
    v29 = sub_1007934C4(v27, v28, &off_1010BEC78, &OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_playActivityFeature);

    (*(v5 + 8))(v9, v4);
    v30 = *(v14 + 8);
    v30(v19, v13);
    v30(v22, v13);
    swift_deallocPartialClassInstance();
    return v29;
  }
}

Swift::Int sub_10079243C(Swift::UInt a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
  }

  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v10 & 1) == 0)
    {
      do
      {
        v12 = a3 + 16 * result;
        if (*(v12 + 8))
        {
          if (a2)
          {
            return result;
          }
        }

        else if ((a2 & 1) == 0 && *v12 == a1)
        {
          return result;
        }

        _HashTable.BucketIterator.advance()();
        result = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v11 & 1) == 0);
    }
  }

  return result;
}

uint64_t sub_100792570(uint64_t a1, char a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_10066CB28(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_10066CB28((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2 & 1;
  v3[1] = v7;
  if (*v3)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v11)
    {
      result = swift_isUniquelyReferenced_native();
      v13 = *v3;
      if ((result & 1) == 0)
      {
        if (!v13)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v14 = _HashTable.copy()();

        *v3 = v14;
        v13 = v14;
      }

      if (v13)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_1007926E8();
}

uint64_t sub_1007926E8()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = static _HashTable.scale(forCapacity:)();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_100792788(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_100792788(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = _HashTable.init(scale:reservedScale:)();
    sub_100792808(a1, (v9 + 16));
    return v9;
  }

  return result;
}

Swift::Int sub_100792858(Swift::Int result, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = v5 + 16 * v6;
        v8 = *v7;
        v9 = *(v7 + 8);
        Hasher.init(_seed:)();
        if (v9 == 1)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v8);
        }

        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10079298C(uint64_t result, char a2)
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

    sub_10066CB28(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = static _HashTable.scale(forCapacity:)();
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
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
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

  v12 = static _HashTable.scale(forCapacity:)();
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
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = static _HashTable.scale(forCapacity:)();
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_100792788(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
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

  v20 = _HashTable.copy()();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_100792B6C(uint64_t a1)
{
  v73 = type metadata accessor for Song();
  v90 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Track();
  v83 = *(v3 - 8);
  __chkstk_darwin(v3);
  v84 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v74 = &v66 - v6;
  __chkstk_darwin(v7);
  v82 = &v66 - v8;
  __chkstk_darwin(v9);
  v91 = &v66 - v10;
  __chkstk_darwin(v11);
  v81 = &v66 - v12;
  v13 = sub_10010FC20(&unk_1011841D0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v66 - v15;
  v17 = sub_10010FC20(&unk_10118C0B0);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v66 - v20;
  v93 = 0;
  v94 = _swiftEmptyArrayStorage;
  v68 = v14;
  v22 = a1;
  (*(v14 + 16))(v16, a1, v13, v19);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0);
  dispatch thunk of Sequence.makeIterator()();
  v23 = *(v18 + 44);
  v24 = sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v21[v23] == v92[0])
  {
    v25 = v13;
    v26 = 0;
    v27 = v22;
LABEL_37:
    (*(v68 + 8))(v27, v25);
    sub_1000095E8(v21, &unk_10118C0B0);
    return v26;
  }

  v67 = v22;
  v88 = (v83 + 16);
  v28 = (v83 + 32);
  v78 = (v83 + 88);
  v77 = enum case for Track.song(_:);
  v85 = (v83 + 8);
  v71 = (v83 + 96);
  v70 = (v90 + 4);
  v69 = (v90 + 1);
  v89 = v13;
  v90 = _swiftEmptyArrayStorage;
  v29 = v91;
  v75 = (v83 + 32);
  v79 = v23;
  v80 = v24;
  v76 = v21;
  while (1)
  {
    v34 = dispatch thunk of Collection.subscript.read();
    v35 = *v88;
    v36 = v81;
    (*v88)(v81);
    v34(v92, 0);
    v37 = v76;
    dispatch thunk of Collection.formIndex(after:)();
    v87 = *v28;
    v87(v29, v36, v3);
    v38 = v82;
    v86 = v35;
    (v35)(v82, v29, v3);
    v39 = (*v78)(v38, v3);
    if (v39 == v77)
    {
      (*v71)(v38, v3);
      v40 = v72;
      v41 = v73;
      (*v70)(v72, v38, v73);
      v42 = Song.discNumber.getter();
      v44 = v43;
      (*v69)(v40, v41);
    }

    else
    {
      (*v85)(v38, v3);
      v42 = 0;
      v44 = 1;
    }

    v45 = v90;
    v46 = v94[2];
    v47 = v79;
    if (!v93)
    {
      v21 = v37;
      if (v46)
      {
        v50 = 0;
        v59 = v94 + 5;
        do
        {
          if (*v59)
          {
            if (v44)
            {
              goto LABEL_12;
            }
          }

          else if (!(v44 & 1 | (*(v59 - 1) != v42)))
          {
            goto LABEL_12;
          }

          ++v50;
          v59 += 16;
        }

        while (v46 != v50);
      }

LABEL_28:
      sub_100792570(v42, v44 & 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10066CAE8(0, v45[2] + 1, 1);
        v45 = v95;
      }

      v62 = v45[2];
      v61 = v45[3];
      if (v62 >= v61 >> 1)
      {
        sub_10066CAE8((v61 > 1), v62 + 1, 1);
        v45 = v95;
      }

      v45[2] = v62 + 1;
      v63 = v45 + 4;
      v45[v62 + 4] = _swiftEmptyArrayStorage;
      v86(v84);
      v54 = v45[v62 + 4];
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v45[v62 + 4] = v54;
      v90 = v45;
      if ((v64 & 1) == 0)
      {
        v54 = sub_100499798(0, v54[2] + 1, 1, v54);
        v63[v62] = v54;
      }

      v57 = v54[2];
      v65 = v54[3];
      v58 = v57 + 1;
      if (v57 >= v65 >> 1)
      {
        v54 = sub_100499798(v65 > 1, v57 + 1, 1, v54);
        v63[v62] = v54;
      }

      v30 = v84;
      goto LABEL_5;
    }

    v48 = sub_10079243C(v42, v44 & 1, (v94 + 4), v46, (v93 + 16));
    v21 = v37;
    if (v49)
    {
      goto LABEL_28;
    }

    v50 = v48;
LABEL_12:
    result = swift_isUniquelyReferenced_nonNull_native();
    v52 = v91;
    if ((result & 1) == 0)
    {
      result = sub_10059F0A8(v45);
      v45 = result;
    }

    if ((v50 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v50 >= v45[2])
    {
      goto LABEL_39;
    }

    v53 = v45 + 4;
    (v86)(v74, v52, v3);
    v54 = v45[v50 + 4];
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v45[v50 + 4] = v54;
    v90 = v45;
    if ((v55 & 1) == 0)
    {
      v54 = sub_100499798(0, v54[2] + 1, 1, v54);
      v53[v50] = v54;
    }

    v57 = v54[2];
    v56 = v54[3];
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v54 = sub_100499798(v56 > 1, v57 + 1, 1, v54);
      v53[v50] = v54;
    }

    v30 = v74;
LABEL_5:
    v54[2] = v58;
    v31 = v83;
    v32 = v54 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v83 + 72) * v57;
    v28 = v75;
    v87(v32, v30, v3);
    v29 = v91;
    (*(v31 + 8))(v91, v3);
    v33 = v89;
    dispatch thunk of Collection.endIndex.getter();
    if (*&v21[v47] == v92[0])
    {
      v25 = v33;
      v26 = v93;
      v27 = v67;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

id sub_1007934C4(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v8 = OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView;
  *&a2[v8] = [objc_allocWithZone(MCDTableView) init];
  *&a2[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorLoadingTimeout] = 0;
  a2[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError] = 0;
  v9 = OBJC_IVAR____TtC5Music27MCDItemDetailViewController_mediaContainerHeader;
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView();
  *&a2[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = &a2[OBJC_IVAR____TtC5Music27MCDItemDetailViewController____lazy_storage___loadingView];
  *v10 = 0;
  v10[1] = 0;
  *&a2[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView] = 0;
  v11 = &a2[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  *v11 = a1;
  v11[1] = a3;
  v15.receiver = a2;
  v15.super_class = type metadata accessor for MCDItemDetailViewController();

  v12 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  LOBYTE(a4) = *(a1 + *a4);
  v13 = v12;
  UIViewController.playActivityFeatureIdentifier.setter(a4);

  return v13;
}

uint64_t sub_1007935F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10079298C(v2, 0);
  result = sub_10066CAE8(0, v2, 0);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    v6 = v5 + 24 * v4;
    v7 = *v6;
    v8 = *(v6 + 16);
    v9 = *(v6 + 8);
    v10 = _swiftEmptyArrayStorage[2];
    if (v10)
    {
      break;
    }

LABEL_11:

    result = sub_100792570(v7, v9);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      result = sub_10066CAE8((v12 > 1), v13 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v13 + 1;
    _swiftEmptyArrayStorage[v13 + 4] = v8;
    if (v4 == v2)
    {
      return 0;
    }
  }

  v11 = &_swiftEmptyArrayStorage[5];
  while ((*v11 & 1) != 0)
  {
    if (v9)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 += 16;
    if (!--v10)
    {
      goto LABEL_11;
    }
  }

  if ((v9 & 1) != 0 || *(v11 - 1) != v7)
  {
    goto LABEL_6;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100793780(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100423504(a1, v6, v7, v1 + v5);
}

uint64_t sub_100793870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10078D278(a1, v4, v5, v6);
}

uint64_t sub_10079392C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10079397C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101184730);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PosterWidgetConfiguration.BasicMusicItem()
{
  result = qword_1011A28E8;
  if (!qword_1011A28E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100793A68()
{
  sub_10002F678();
  if (v0 <= 0x3F)
  {
    sub_1001E8510();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100793B30(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011A2950);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000954C(a1, a1[3]);
  sub_1007946E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = *(v3 + 48);
    v13 = 3;
    sub_10043CA24();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem();
    LOBYTE(v12) = 4;
    type metadata accessor for Date();
    sub_1007947F8(&qword_10118F0E8, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 40));
    v13 = 6;
    sub_10041E680();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100793E4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v3 - 8);
  v27 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v8 = sub_10010FC20(&qword_1011A2940);
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem();
  __chkstk_darwin(v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000954C(a1, a1[3]);
  sub_1007946E4();
  v14 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_10000959C(a1);
  }

  v15 = v7;
  v16 = v28;
  LOBYTE(v31) = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v13 + 1) = v17;
  v30 = v17;
  LOBYTE(v31) = 1;
  v18 = v16;
  *(v13 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v13 + 3) = v19;
  LOBYTE(v31) = 2;
  *(v13 + 4) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v13 + 5) = v20;
  v32 = 3;
  sub_10043C5AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13[48] = v31;
  v25[1] = type metadata accessor for Date();
  LOBYTE(v31) = 4;
  v25[0] = sub_1007947F8(&qword_10118F0D8, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v13;
  sub_10041E7D4(v15, &v13[v11[8]]);
  LOBYTE(v31) = 5;
  v22 = v27;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10041E7D4(v22, v21 + v11[9]);
  v32 = 6;
  sub_10041E62C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v11[10];
  (*(v18 + 8))(v10, v29);
  *(v21 + v23) = v31;
  sub_100794738(v21, v26);
  sub_10000959C(a1);
  return sub_10079479C(v21);
}

unint64_t sub_100794380()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x49656C6261646F63;
  }

  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x79616C507473616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10079445C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100794AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100794490(uint64_t a1)
{
  v2 = sub_1007946E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007944CC(uint64_t a1)
{
  v2 = sub_1007946E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100794508()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100794558()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100794598()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100794614(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    if (a1[2] == a2[2] && a1[3] == a2[3])
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

unint64_t sub_1007946E4()
{
  result = qword_1011A2948;
  if (!qword_1011A2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2948);
  }

  return result;
}

uint64_t sub_100794738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10079479C(uint64_t a1)
{
  v2 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007947F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14descr1010964D9O5StateOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14descr1010964D9O5StateOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1007949A4()
{
  result = qword_1011A2958;
  if (!qword_1011A2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2958);
  }

  return result;
}

unint64_t sub_1007949FC()
{
  result = qword_1011A2960;
  if (!qword_1011A2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2960);
  }

  return result;
}

unint64_t sub_100794A54()
{
  result = qword_1011A2968;
  if (!qword_1011A2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2968);
  }

  return result;
}

uint64_t sub_100794AA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEE00657461446465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100E3C6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49656C6261646F63 && a2 == 0xEC0000006567616DLL)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_100794D4C()
{
  sub_100009F78(0, &qword_101183A00);
  v0 = UIFontTextStyleBody;
  v1 = static UIFont.preferredFont(forTextStyle:weight:)();

  qword_1012195B8 = v1;
}

void sub_100794DC4()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1012195C0 = v2;
}

id sub_100794E30()
{
  sub_100009F78(0, &qword_101180C98);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(60, 60, 67, 0.3);
  qword_1012195C8 = result;
  return result;
}

id sub_100794E8C(void *a1)
{
  v64 = String._bridgeToObjectiveC()();
  v65 = v1;
  v63 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() defaultParagraphStyle];
  [v2 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v3 = sub_100009F78(0, &qword_101194D60);
  swift_dynamicCast();
  v4 = v67[0];
  [v67[0] setAlignment:0];
  sub_10010FC20(&qword_10119FB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = NSForegroundColorAttributeName;
  v6 = qword_10117FD40;
  v60 = NSForegroundColorAttributeName;
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1012195B0;
  v8 = sub_100009F78(0, &qword_101180C98);
  *(inited + 40) = v7;
  *(inited + 64) = v8;
  *(inited + 72) = NSParagraphStyleAttributeName;
  *(inited + 80) = v4;
  *(inited + 104) = v3;
  *(inited + 112) = NSFontAttributeName;
  v9 = qword_10117FD48;
  v10 = v7;
  v58 = v3;
  v11 = NSParagraphStyleAttributeName;
  v12 = NSFontAttributeName;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  v16 = v4;
  if (v9 != -1)
  {
    swift_once();
  }

  v17 = qword_1012195B8;
  v18 = sub_100009F78(0, &qword_101183A00);
  *(inited + 144) = v18;
  *(inited + 120) = v17;
  v19 = v17;
  v20 = sub_10010BA14(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101180420);
  swift_arrayDestroy();
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_100EBE260;
  *(v21 + 32) = v60;
  *(v21 + 40) = v13;
  *(v21 + 64) = v8;
  *(v21 + 72) = v14;
  *(v21 + 80) = v16;
  *(v21 + 104) = v58;
  *(v21 + 112) = v15;
  v22 = qword_10117FD50;
  v61 = v16;
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_1012195C0;
  *(v21 + 144) = v18;
  *(v21 + 120) = v23;
  v24 = v23;
  v59 = sub_10010BA14(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  v25 = *(v65 + 16);
  v26 = dbl_100EE26C0[v25];
  v27 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v27 setWantsNumberOfLineFragments:1];
  [v27 setMaximumNumberOfLines:3];
  type metadata accessor for Key(0);
  sub_10065AAEC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v64 boundingRectWithSize:1 options:isa attributes:v27 context:{218.0, INFINITY}];
  rect = v29;

  v30 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v30 setWantsNumberOfLineFragments:1];
  result = [v27 numberOfLineFragments];
  if (__OFSUB__(4, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (4 - result < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v30 setMaximumNumberOfLines:?];
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v63 boundingRectWithSize:1 options:v32 attributes:v30 context:{218.0, INFINITY}];
  v34 = v33;

  v55 = v30;
  if (v25 > 1u)
  {
    if (v25 == 2)
    {
      v36 = 15.0;
      v35 = 16.0;
    }

    else
    {
      v35 = Int.seconds.getter(0);
      v36 = 0.0;
    }
  }

  else
  {
    v35 = 16.0;
    if (v25)
    {
      v36 = 49.0;
    }

    else
    {
      v36 = 15.0;
    }
  }

  v67[0] = *&v36;
  v67[1] = *&v35;
  v67[2] = 0x406F400000000000;
  v37 = (v26 + -218.0) * 0.5;
  v68.origin.y = v35;
  v68.size.width = 250.0;
  v50 = v35;
  v56 = v26;
  v68.size.height = 0.0;
  v68.origin.x = v36;
  v38 = CGRectGetMinY(v68) + 16.0;
  v69.origin.x = v37;
  v69.origin.y = v38;
  v69.size.width = 218.0;
  v69.size.height = 218.0;
  MinX = CGRectGetMinX(v69);
  v70.origin.x = v37;
  v70.origin.y = v38;
  v70.size.width = 218.0;
  v70.size.height = 218.0;
  v53 = CGRectGetMaxY(v70) + 10.0;
  v71.origin.x = v37;
  v71.origin.y = v38;
  v71.size.width = 218.0;
  v71.size.height = 218.0;
  v52 = CGRectGetMinX(v71);
  v72.origin.x = MinX;
  v72.origin.y = v53;
  v72.size.width = 218.0;
  v72.size.height = rect;
  v51 = CGRectGetMaxY(v72) + 0.0;
  v73.origin.x = v37;
  v73.origin.y = v38;
  v73.size.width = 218.0;
  v73.size.height = 218.0;
  v39 = CGRectGetMinX(v73);
  v74.origin.x = v52;
  v74.origin.y = v51;
  v74.size.width = 218.0;
  v74.size.height = v34;
  v75.origin.y = CGRectGetMaxY(v74) + 6.0;
  y = v75.origin.y;
  v75.size.width = 52.0;
  v75.size.height = 12.0;
  v75.origin.x = v39;
  v40 = CGRectGetMaxY(v75) + 16.0;
  v76.size.height = 0.0;
  v76.origin.x = v36;
  v76.origin.y = v50;
  v76.size.width = 250.0;
  v77.size.height = v40 - CGRectGetMinY(v76);
  v67[3] = *&v77.size.height;
  v77.origin.x = v36;
  v77.origin.y = v50;
  v77.size.width = 250.0;
  v41 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v56, CGRectGetMaxY(v77) + 16.0}];
  v42 = swift_allocObject();
  *(v42 + 16) = v65;
  *(v42 + 24) = v67;
  *(v42 + 32) = v64;
  *(v42 + 40) = MinX;
  *(v42 + 48) = v53;
  *(v42 + 56) = 0x406B400000000000;
  *(v42 + 64) = rect;
  *(v42 + 72) = v20;
  *(v42 + 80) = v63;
  *(v42 + 88) = v52;
  *(v42 + 96) = v51;
  *(v42 + 104) = 0x406B400000000000;
  *(v42 + 112) = v34;
  *(v42 + 120) = v59;
  *(v42 + 128) = v39;
  *(v42 + 136) = y;
  *(v42 + 144) = xmmword_100EE2660;
  *(v42 + 160) = v37;
  *(v42 + 168) = v38;
  *(v42 + 176) = vdupq_n_s64(0x406B400000000000uLL);
  *(v42 + 192) = a1;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_100795EB8;
  *(v43 + 24) = v42;
  aBlock[4] = sub_1002CF914;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010BEF18;
  v44 = _Block_copy(aBlock);

  v45 = v64;
  v46 = v63;
  v47 = a1;

  v48 = [v41 imageWithActions:v44];

  _Block_release(v44);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if ((v41 & 1) == 0)
  {
    return v48;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_10079570C(void *a1, uint64_t a2, double *a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, void *a14, uint64_t a15, void *a16, double a17, double a18, double a19, double a20, double a21, double a22, double a23, double a24)
{
  v84 = a15;
  v85 = a14;
  v83 = a4;
  v36 = type metadata accessor for CGPathFillRule();
  v37 = *(v36 - 8);
  *&v38 = __chkstk_darwin(v36).n128_u64[0];
  v40 = &v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) != 3)
  {
    v41 = [a1 CGContext];
    if (qword_10117FD30 != -1)
    {
      swift_once();
    }

    v42 = [qword_1012195A0 CGColor];
    v86.width = 0.0;
    v86.height = 4.0;
    CGContextSetShadowWithColor(v41, v86, 8.0, v42);
  }

  v43 = objc_opt_self();
  v44 = *a3;
  v45 = a3[1];
  v46 = a3[2];
  v47 = a3[3];
  v82 = v43;
  v48 = [v43 _bezierPathWithPillRect:v44 cornerRadius:{v45, v46, v47, 12.0}];
  if (!v48)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = v48;
  v76 = a16;
  v50 = [a1 CGContext];
  v51 = [v49 CGPath];
  CGContextAddPath(v50, v51);

  v52 = [a1 CGContext];
  if (qword_10117FD28 != -1)
  {
    swift_once();
  }

  v53 = [qword_101219598 CGColor];
  CGContextSetFillColorWithColor(v52, v53);

  v54 = [a1 CGContext];
  v55 = *(v37 + 104);
  v79 = enum case for CGPathFillRule.winding(_:);
  v78 = v55;
  v55(v40);
  CGContextRef.fillPath(using:)();

  v56 = *(v37 + 8);
  v80 = v37 + 8;
  v81 = v36;
  v77 = v56;
  v56(v40, v36);
  [v49 addClip];
  v57 = [a1 CGContext];
  v87.width = 0.0;
  v87.height = 0.0;
  CGContextSetShadowWithColor(v57, v87, 0.0, 0);

  type metadata accessor for Key(0);
  sub_10065AAEC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v83 drawWithRect:33 options:isa attributes:0 context:{a5, a6, a7, a8}];

  v59 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v85 drawWithRect:33 options:v59 attributes:0 context:{a9, a10, a11, a12}];

  v60 = objc_opt_self();
  v61 = String._bridgeToObjectiveC()();
  if (qword_10117F878 != -1)
  {
    swift_once();
  }

  v62 = [v60 imageNamed:v61 inBundle:qword_101218F90 compatibleWithTraitCollection:0];

  if (!v62)
  {
    goto LABEL_19;
  }

  if (qword_10117FD58 != -1)
  {
    swift_once();
  }

  v85 = v49;
  v63 = [v62 flattenedImageWithColor:qword_1012195C8];

  [v63 drawInRect:{a17, a18, a19, a20}];
  v64 = [a1 CGContext];
  v65 = v82;
  if (qword_10117FD38 != -1)
  {
    swift_once();
  }

  v66 = [qword_1012195A8 CGColor];
  v88.width = 0.0;
  v88.height = 2.0;
  CGContextSetShadowWithColor(v64, v88, 20.0, v66);

  v89.origin.x = a21;
  v89.origin.y = a22;
  v89.size.width = a23;
  v89.size.height = a24;
  v90 = CGRectInset(v89, 1.0, 1.0);
  v67 = [v65 _bezierPathWithPillRect:v90.origin.x cornerRadius:{v90.origin.y, v90.size.width, v90.size.height, 6.0}];
  if (!v67)
  {
    goto LABEL_20;
  }

  v68 = v67;
  v69 = [a1 CGContext];
  v70 = [v68 CGPath];
  CGContextAddPath(v69, v70);

  v71 = [a1 CGContext];
  v72 = v81;
  v78(v40, v79, v81);
  CGContextRef.fillPath(using:)();

  v77(v40, v72);
  v73 = [v65 _bezierPathWithPillRect:a21 cornerRadius:{a22, a23, a24, 6.0}];
  if (v73)
  {
    v74 = v73;
    [v73 addClip];
    [v76 drawInRect:{a21, a22, a23, a24}];

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_100795E48()
{

  return swift_deallocClassInstance();
}

void sub_100795F14(void *a1, uint64_t a2, int a3)
{
  v6 = OBJC_IVAR____TtC5Music20NavigationController__pushingViewController;
  v7 = *(v3 + OBJC_IVAR____TtC5Music20NavigationController__pushingViewController);
  *(v3 + OBJC_IVAR____TtC5Music20NavigationController__pushingViewController) = a1;
  v8 = a1;

  [v8 loadViewIfNeeded];
  v9 = [v8 navigationItem];
  sub_100795FE8(v9);

  v10 = [v8 navigationItem];
  sub_100796418(v10);

  sub_100037910(v8, a2, a3);
  v11 = *(v3 + v6);
  *(v3 + v6) = 0;
}

void sub_100795FE8(void *a1)
{
  v2 = v1;
  v4 = [v1 viewControllers];
  sub_100009F78(0, &qword_101183D40);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    v6 = &selRef_setPhotosHeaderMetadata_;
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = &selRef_setPhotosHeaderMetadata_;
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_10004056C(0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

  v9 = [v8 navigationItem];

  if (v9)
  {
    sub_100009F78(0, &unk_1011A2AE0);
    v10 = a1;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
LABEL_18:
      if ([a1 v6[496]] == 2)
      {
LABEL_25:
        v15 = 3;
        goto LABEL_26;
      }

      v21 = [v2 traitCollection];
      v22 = [v21 userInterfaceIdiom];

      if (v22)
      {
        v23 = [v2 traitCollection];
        v24 = [v23 userInterfaceIdiom];

        [a1 _setSupportsTwoLineLargeTitles:v24 == 1];
        if (v24 != 1)
        {
          v25 = 1;
LABEL_24:
          [a1 setLargeTitleDisplayMode:v25];
          goto LABEL_25;
        }
      }

      else
      {
        [a1 _setSupportsTwoLineLargeTitles:1];
      }

      v25 = 3;
      goto LABEL_24;
    }
  }

LABEL_11:
  v12 = [v2 viewControllers];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    v16 = *&v2[OBJC_IVAR____TtC5Music20NavigationController__pushingViewController];
    if (v16)
    {
      v17 = [v16 navigationItem];
      if (v17)
      {
        v18 = v17;
        sub_100009F78(0, &unk_1011A2AE0);
        v19 = a1;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v15 = 1;
LABEL_26:
  v26 = [a1 standardAppearance];
  if (!v26)
  {
    v26 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v36 = v26;
  v27 = [a1 scrollEdgeAppearance];
  if (!v27)
  {
    v27 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v28 = [a1 v6[496]];
  v29 = sub_1007E8C74();
  if (v28 == 3)
  {
    v30 = v15;
  }

  else
  {
    v30 = v28;
  }

  v31 = v30 > 3;
  v32 = 0x1000202u >> (8 * v30);
  if (v31)
  {
    LOBYTE(v32) = 0;
  }

  if (v29 == 3)
  {
    v33 = v32;
  }

  else
  {
    v33 = v29;
  }

  v34 = v33;
  [v36 _setTitleControlHidden:v33 != 0];
  [v27 _setTitleControlHidden:v34 == 2];
  [a1 setStandardAppearance:v36];
  v35 = v27;
  [a1 setScrollEdgeAppearance:v35];
}

id sub_100796418(void *a1)
{
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  Width = CGRectGetWidth(v21);
  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = result;
  [result safeAreaInsets];

  UIEdgeInsets.horizontal.getter();
  v16 = HI.SizeClass.init(_:)(Width - v15);
  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = result;
  v18 = [result effectiveUserInterfaceLayoutDirection];

  HI.SizeClass.margin.getter(v16);
  result = [v1 view];
  v19 = result;
  if (v18 == 1)
  {
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

LABEL_8:
  [result safeAreaInsets];

  [a1 _titleMinimumMargins];

  return [a1 _setTitleMinimumMargins:?];
}

void sub_1007966E4(unint64_t a1)
{
  v3 = [v1 existingPaletteForEdge:2];
  if (v3)
  {
    v4 = v3;
    [v1 detachPalette:v3];
  }

  v5 = OBJC_IVAR____TtC5Music20NavigationController__pushingViewController;
  v21 = *&v1[OBJC_IVAR____TtC5Music20NavigationController__pushingViewController];
  if (a1 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v21;
  if (v6)
  {
    v7 = 0;
    v19 = a1 & 0xC000000000000001;
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v19)
      {
        v9 = sub_10004056C(v7, a1);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * v7 + 32);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      v11 = *&v1[v5];
      *&v1[v5] = v9;
      v12 = a1;
      v13 = v9;

      v14 = [v13 navigationItem];
      sub_100795FE8(v14);

      v15 = [v13 navigationItem];
      sub_100796418(v15);

      v16 = *&v1[v5];
      *&v1[v5] = v21;
      v17 = v20;

      a1 = v12;
      ++v7;
    }

    while (v10 != v6);
  }

  sub_100009F78(0, &qword_101183D40);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22.receiver = v1;
  v22.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v22, "setViewControllers:", isa);
}

id sub_1007968E4(id result, char a2)
{
  if (result)
  {
    v4 = result;
    if ([result boundaryEdge] == 2)
    {
      v5 = [v2 topViewController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 navigationItem];
        v8 = [v6 parentViewController];
        if (v8)
        {
          v9 = v8;
          while (1)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            v10 = v9;
            v11 = [v10 navigationItem];

            v9 = [v10 parentViewController];
            v7 = v11;
            if (!v9)
            {
              v9 = v6;
              v7 = v11;
              goto LABEL_11;
            }
          }
        }

        else
        {
          v9 = v6;
        }

LABEL_11:

        v12 = [v7 searchController];
        if (v12)
        {

          v13 = [v2 existingPaletteForEdge:2];
          if (v13)
          {
            v14 = v13;
            if ([v13 isPinned])
            {
              [v2 detachPalette:v14];
            }
          }
        }
      }
    }

    v15.receiver = v2;
    v15.super_class = type metadata accessor for NavigationController();
    return objc_msgSendSuper2(&v15, "attachPalette:isPinned:", v4, a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100796B34(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette;
  v5 = *&v1[OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette];
  if (!a1)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    v9 = 0;
    goto LABEL_7;
  }

  if (v5)
  {
    sub_100009F78(0, &qword_1011A2B50);
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v9 = *&v2[v4];
LABEL_7:
      *&v2[v4] = 0;
    }
  }

LABEL_8:
  v23.receiver = v2;
  v23.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v23, "detachPalette:", a1);
  v10 = [v2 navigationBar];
  v11 = [v10 subviews];

  sub_100009F78(0, &qword_101181620);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_100062D50(i, v12);
    }

    else
    {
      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    if (swift_dynamicCastObjCProtocolConditional() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v17 = v16;
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

LABEL_23:

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_35;
  }

  for (j = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v20 = sub_100062D50(v19, _swiftEmptyArrayStorage);
      }

      else
      {
        if (v19 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v20 = _swiftEmptyArrayStorage[v19 + 4];
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v20 removeFromSuperview];

      ++v19;
      if (v22 == j)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:
}

void sub_100796EB8(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC5Music20NavigationController__pushingViewController;
  v5 = *&v2[OBJC_IVAR____TtC5Music20NavigationController__pushingViewController];
  *&v2[OBJC_IVAR____TtC5Music20NavigationController__pushingViewController] = a1;
  v6 = a1;

  [v6 loadViewIfNeeded];
  v7 = [v6 navigationItem];
  sub_100795FE8(v7);

  v8 = [v6 navigationItem];
  sub_100796418(v8);

  v10.receiver = v2;
  v10.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v10, "pushViewController:animated:", v6, a2 & 1);
  v9 = *&v2[v4];
  *&v2[v4] = 0;
}

void sub_10079709C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette);
}

id sub_1007970DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10079715C(void *a1, id a2)
{
  v3 = [a2 horizontalSizeClass];
  v4 = [a1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v3 != v5)
  {
    v6 = [a1 topViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 navigationItem];
      sub_100795FE8(v8);
    }
  }
}

void *sub_100797240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = (a1 + 32);
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v10 = v5 + 40 * v4++;
    sub_100008FE4(v10, &v20);
    v11 = v21;
    v12 = v22;
    sub_10000954C(&v20, v21);
    v13 = (*(v12 + 48))(v11, v12);
    v14 = *(a1 + 16);
    v15 = v6;
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == v13)
      {
        sub_10000959C(&v20);
        goto LABEL_6;
      }
    }

    sub_100059A8C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10066C940(0, v7[2] + 1, 1);
      v7 = v23;
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      sub_10066C940((v8 > 1), v9 + 1, 1);
      v7 = v23;
    }

    v7[2] = v9 + 1;
    sub_100059A8C(v19, &v7[5 * v9 + 4]);
LABEL_6:
    ;
  }

  while (v4 != v2);
  return v7;
}

void *sub_1007973A8(void *a1)
{
  v2 = v1;
  v86 = a1;
  v3 = type metadata accessor for TVSeason();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVEpisode();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicVideo();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v80 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicMovie();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v83 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Song();
  v73 = *(v11 - 8);
  v74 = v11;
  __chkstk_darwin(v11);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Playlist.Folder();
  v76 = *(v13 - 8);
  v77 = v13;
  __chkstk_darwin(v13);
  v75 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Playlist();
  v78 = *(v15 - 8);
  v79 = v15;
  __chkstk_darwin(v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Album();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for GenericMusicItem();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v64 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v63 - v26;
  v28 = *(v23 + 16);
  v65 = v2;
  v28(&v63 - v26, v2, v22);
  v29 = (*(v23 + 88))(v27, v22);
  if (v29 == enum case for GenericMusicItem.album(_:))
  {
    (*(v23 + 96))(v27, v22);
    (*(v19 + 32))(v21, v27, v18);
    v30 = sub_100799E1C(v86);
    (*(v19 + 8))(v21, v18);
    return v30;
  }

  v31 = v29;
  v32 = v86;
  if (v29 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v23 + 96))(v27, v22);
    v34 = v83;
    v33 = v84;
    v35 = v85;
    (*(v84 + 32))(v83, v27, v85);
    v36 = sub_10079A22C(v32);
LABEL_7:
    v30 = v36;
    (*(v33 + 8))(v34, v35);
    return v30;
  }

  if (v29 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v23 + 96))(v27, v22);
    v34 = v80;
    v33 = v81;
    v35 = v82;
    (*(v81 + 32))(v80, v27, v82);
    v36 = sub_10079A5F8(v32);
    goto LABEL_7;
  }

  if (v29 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v23 + 96))(v27, v22);
    v39 = v78;
    v38 = v79;
    (*(v78 + 32))(v17, v27, v79);
    v30 = sub_10079AA48(v32);
    (*(v39 + 8))(v17, v38);
    return v30;
  }

  if (v29 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v23 + 96))(v27, v22);
    v41 = v75;
    v40 = v76;
    v42 = v77;
    (*(v76 + 32))(v75, v27, v77);
    sub_10010FC20(&qword_101185210);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100EBC6B0;
    v43 = type metadata accessor for DragDropToFolder(0);
    *(v30 + 56) = v43;
    *(v30 + 64) = sub_1007A51BC(&qword_10118D3B0, type metadata accessor for DragDropToFolder);
    v44 = sub_10001C8B8((v30 + 32));
    (*(v40 + 16))(v44, v41, v42);
    v45 = enum case for Playlist.Folder.Item.folder(_:);
    v46 = type metadata accessor for Playlist.Folder.Item();
    (*(*(v46 - 8) + 104))(v44, v45, v46);
    *(v44 + *(v43 + 20)) = 0;
    (*(v40 + 8))(v41, v42);
    return v30;
  }

  v47 = v22;
  if (v29 == enum case for GenericMusicItem.song(_:))
  {
    (*(v23 + 96))(v27, v22);
    v34 = v72;
    v33 = v73;
    v35 = v74;
    (*(v73 + 32))(v72, v27, v74);
    v36 = sub_10079AF28(v32);
    goto LABEL_7;
  }

  if (v29 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    (*(v23 + 96))(v27, v22);
    v34 = v69;
    v33 = v70;
    v35 = v71;
    (*(v70 + 32))(v69, v27, v71);
    v36 = sub_10079B338(v32);
    goto LABEL_7;
  }

  if (v29 == enum case for GenericMusicItem.tvSeason(_:))
  {
    (*(v23 + 96))(v27, v22);
    v49 = v67;
    v48 = v68;
    v50 = v66;
    (*(v67 + 32))(v66, v27, v68);
    sub_10010FC20(&qword_101185210);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100EBC6B0;
    v51 = type metadata accessor for DragDropToLibrary(0);
    *(v30 + 56) = v51;
    *(v30 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary);
    v52 = sub_10001C8B8((v30 + 32));
    (*(v49 + 16))(v52, v50, v48);
    (*(v23 + 104))(v52, v31, v47);
    *(v52 + *(v51 + 20)) = 1;
    (*(v49 + 8))(v50, v48);
  }

  else
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000060E4(v53, qword_1012186C8);
    v54 = v64;
    v28(v64, v65, v22);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = v86;
      *v57 = 136446210;
      sub_1007A51BC(&qword_101186698, &type metadata accessor for GenericMusicItem);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v61 = *(v23 + 8);
      v61(v54, v22);
      v62 = sub_1000105AC(v58, v60, &v87);
      v47 = v22;

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v55, v56, "No drop intents provided for GenericMusicItem: %{public}s", v57, 0xCu);
      sub_10000959C(v86);
    }

    else
    {

      v61 = *(v23 + 8);
      v61(v54, v22);
    }

    v61(v27, v47);
    return _swiftEmptyArrayStorage;
  }

  return v30;
}

id sub_100797FA0(void *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v36 = a2;
  v4 = type metadata accessor for MusicVideo();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for Song();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = type metadata accessor for Track();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v3, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for Track.song(_:))
  {
    (*(v18 + 96))(v21, v17);
    (*(v11 + 32))(v16, v21, v10);
    v23 = sub_10079AF28(v35);
    v24 = sub_100797240(v36, v23);

    (*(v11 + 16))(v13, v16, v10);
    v25 = sub_10079D968(v24, v13);
    (*(v11 + 8))(v16, v10);
  }

  else
  {
    v27 = v35;
    v26 = v36;
    if (v22 == enum case for Track.musicVideo(_:))
    {
      (*(v18 + 96))(v21, v17);
      v29 = v33;
      v28 = v34;
      (*(v33 + 32))(v9, v21, v34);
      v30 = sub_10079A5F8(v27);
      v31 = sub_100797240(v26, v30);

      (*(v29 + 16))(v6, v9, v28);
      v25 = sub_10079C240(v31, v6);
      (*(v29 + 8))(v9, v28);
    }

    else
    {
      (*(v18 + 8))(v21, v17);
      return 0;
    }
  }

  return v25;
}

id sub_100798374(void *a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v50 = a2;
  v4 = type metadata accessor for MusicPin();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Song();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Playlist();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicVideo();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Album();
  v44 = *(v11 - 8);
  v45 = v11;
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicPin.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  v19 = type metadata accessor for DragDropPins(0);
  *(inited + 56) = v19;
  *(inited + 64) = sub_1007A51BC(&qword_1011895F0, type metadata accessor for DragDropPins);
  v20 = sub_10001C8B8((inited + 32));
  v21 = *(v5 + 16);
  v48 = v4;
  v46 = v21;
  v21(v20, v3, v4);
  *(v20 + *(v19 + 20)) = 4;
  v51 = inited;
  MusicPin.item.getter();
  v22 = (*(v15 + 88))(v17, v14);
  if (v22 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    v24 = v44;
    v23 = v45;
    (*(v44 + 32))(v13, v17, v45);
    v25 = sub_100799E1C(v49);
    sub_1001253DC(v25);
    (*(v24 + 8))(v13, v23);
    goto LABEL_12;
  }

  v26 = v49;
  if (v22 == enum case for MusicPin.Item.artist(_:))
  {
    goto LABEL_4;
  }

  if (v22 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v28 = v41;
    v27 = v42;
    v29 = v43;
    (*(v42 + 32))(v41, v17, v43);
    v30 = sub_10079A5F8(v26);
  }

  else if (v22 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v27 = v39;
    v28 = v38;
    v29 = v40;
    (*(v39 + 32))(v38, v17, v40);
    v30 = sub_10079AA48(v26);
  }

  else
  {
    if (v22 != enum case for MusicPin.Item.song(_:))
    {
LABEL_4:
      (*(v15 + 8))(v17, v14);
      goto LABEL_12;
    }

    (*(v15 + 96))(v17, v14);
    v27 = v36;
    v28 = v35;
    v29 = v37;
    (*(v36 + 32))(v35, v17, v37);
    v30 = sub_10079AF28(v26);
  }

  sub_1001253DC(v30);
  (*(v27 + 8))(v28, v29);
LABEL_12:
  v31 = sub_100797240(v50, v51);

  if (v31[2])
  {
    v32 = v47;
    v46(v47, v3, v48);
    return sub_10079E0DC(v31, v32);
  }

  else
  {

    return 0;
  }
}

id sub_1007989EC(void *a1, uint64_t a2)
{
  v75 = a1;
  v76 = a2;
  v2 = type metadata accessor for UploadedVideo();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v61 - v5;
  v6 = type metadata accessor for MusicMovie();
  v72 = *(v6 - 8);
  v73 = v6;
  __chkstk_darwin(v6);
  v71 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v61 - v9;
  v11 = type metadata accessor for MusicVideo();
  v69 = *(v11 - 8);
  v70 = v11;
  __chkstk_darwin(v11);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v61 - v14;
  v16 = type metadata accessor for Playlist();
  v66 = *(v16 - 8);
  v67 = v16;
  __chkstk_darwin(v16);
  v65 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v61 - v19;
  v21 = type metadata accessor for Album();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  v28 = type metadata accessor for RecentlyAddedMusicItem();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v32, v74, v28, v30);
  v33 = (*(v29 + 88))(v32, v28);
  if (v33 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v29 + 96))(v32, v28);
    (*(v22 + 32))(v27, v32, v21);
    v34 = sub_100799E1C(v75);
    v35 = sub_100797240(v76, v34);

    (*(v22 + 16))(v24, v27, v21);
    v36 = sub_10079BA94(v35, v24);
    (*(v22 + 8))(v27, v21);
  }

  else
  {
    v37 = v75;
    v38 = v76;
    if (v33 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      (*(v29 + 96))(v32, v28);
      v40 = v72;
      v39 = v73;
      (*(v72 + 32))(v10, v32, v73);
      v41 = sub_10079A22C(v37);
      v42 = sub_100797240(v38, v41);

      v43 = v71;
      (*(v40 + 16))(v71, v10, v39);
      v36 = sub_10079E8E4(v42, v43);
      (*(v40 + 8))(v10, v39);
    }

    else if (v33 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
    {
      (*(v29 + 96))(v32, v28);
      v45 = v69;
      v44 = v70;
      (*(v69 + 32))(v15, v32, v70);
      v46 = sub_10079A5F8(v37);
      v47 = sub_100797240(v38, v46);

      v48 = v68;
      (*(v45 + 16))(v68, v15, v44);
      v36 = sub_10079C240(v47, v48);
      (*(v45 + 8))(v15, v44);
    }

    else if (v33 == enum case for RecentlyAddedMusicItem.playlist(_:))
    {
      (*(v29 + 96))(v32, v28);
      v50 = v66;
      v49 = v67;
      (*(v66 + 32))(v20, v32, v67);
      v51 = sub_10079AA48(v37);
      v52 = sub_100797240(v38, v51);

      v53 = v65;
      (*(v50 + 16))(v65, v20, v49);
      v36 = sub_10079C9B4(v52, v53);
      (*(v50 + 8))(v20, v49);
    }

    else if (v33 == enum case for RecentlyAddedMusicItem.tvSeason(_:) || v33 != enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v29 + 8))(v32, v28);
      return 0;
    }

    else
    {
      (*(v29 + 96))(v32, v28);
      v55 = v63;
      v54 = v64;
      v56 = v61;
      (*(v63 + 32))(v61, v32, v64);
      v57 = sub_10079B704(v37);
      v58 = sub_100797240(v38, v57);

      v59 = v62;
      (*(v55 + 16))(v62, v56, v54);
      v36 = sub_10079F0EC(v58, v59);
      (*(v55 + 8))(v56, v54);
    }
  }

  return v36;
}

id sub_1007991E0(void *a1, uint64_t a2)
{
  v84 = a1;
  v85 = a2;
  v2 = type metadata accessor for UploadedVideo();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v65 - v5;
  v6 = type metadata accessor for UploadedAudio();
  v72 = *(v6 - 8);
  v73 = v6;
  __chkstk_darwin(v6);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v70 = &v65 - v9;
  v10 = type metadata accessor for TVEpisode();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v75 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v74 = &v65 - v13;
  v14 = type metadata accessor for MusicMovie();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v83 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v65 - v18;
  v20 = type metadata accessor for MusicVideo();
  v81 = *(v20 - 8);
  v82 = v20;
  __chkstk_darwin(v20);
  v80 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v65 - v23;
  v25 = type metadata accessor for Song();
  v78 = *(v25 - 8);
  v79 = v25;
  __chkstk_darwin(v25);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v65 - v29;
  v31 = type metadata accessor for Playlist.Entry.InternalItem();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v35 = (*(v32 + 88))(v34, v31);
  if (v35 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v32 + 96))(v34, v31);
    (*(v15 + 32))(v19, v34, v14);
    v36 = sub_10079A22C(v84);
    v37 = sub_100797240(v85, v36);

    v38 = v83;
    (*(v15 + 16))(v83, v19, v14);
    v39 = sub_10079E8E4(v37, v38);
    (*(v15 + 8))(v19, v14);
  }

  else
  {
    v40 = v84;
    v41 = v85;
    if (v35 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
    {
      (*(v32 + 96))(v34, v31);
      v43 = v81;
      v42 = v82;
      (*(v81 + 32))(v24, v34, v82);
      v44 = sub_10079A5F8(v40);
      v45 = sub_100797240(v41, v44);

      v46 = v80;
      (*(v43 + 16))(v80, v24, v42);
      v39 = sub_10079C240(v45, v46);
      (*(v43 + 8))(v24, v42);
    }

    else if (v35 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v32 + 96))(v34, v31);
      v48 = v78;
      v47 = v79;
      (*(v78 + 32))(v30, v34, v79);
      v49 = sub_10079AF28(v40);
      v50 = sub_100797240(v41, v49);

      (*(v48 + 16))(v27, v30, v47);
      v39 = sub_10079D968(v50, v27);
      (*(v48 + 8))(v30, v47);
    }

    else
    {
      if (v35 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
      {
        (*(v32 + 96))(v34, v31);
        v52 = v76;
        v51 = v77;
        v53 = v74;
        (*(v76 + 32))(v74, v34, v77);
        v54 = sub_10079B338(v40);
        v55 = sub_100797240(v41, v54);

        v56 = v75;
        (*(v52 + 16))(v75, v53, v51);
        v57 = sub_10079F8F4(v55, v56);
      }

      else if (v35 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
      {
        (*(v32 + 96))(v34, v31);
        v52 = v72;
        v51 = v73;
        v53 = v70;
        (*(v72 + 32))(v70, v34, v73);
        v58 = sub_100799AF0(v40);
        v59 = sub_100797240(v41, v58);

        v60 = v71;
        (*(v52 + 16))(v71, v53, v51);
        v57 = sub_1007A00FC(v59, v60);
      }

      else
      {
        if (v35 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
        {
          (*(v32 + 8))(v34, v31);
          return 0;
        }

        (*(v32 + 96))(v34, v31);
        v52 = v68;
        v51 = v69;
        v53 = v66;
        (*(v68 + 32))(v66, v34, v69);
        v61 = sub_10079B704(v40);
        v62 = sub_100797240(v41, v61);

        v63 = v67;
        (*(v52 + 16))(v67, v53, v51);
        v57 = sub_10079F0EC(v62, v63);
      }

      v39 = v57;
      (*(v52 + 8))(v53, v51);
    }
  }

  return v39;
}

uint64_t sub_100799AF0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UploadedAudio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenericMusicItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin(v24);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  v14 = *(v5 + 16);
  v22 = v2;
  v15 = v2;
  v16 = a1;
  v14(v10, v15, v4);
  v17 = *(v8 + 104);
  v25 = v7;
  v17(v10, enum case for GenericMusicItem.uploadedAudio(_:), v7);
  if (!a1)
  {
    sub_100188C90();
    v14(v23, v22, v4);
    sub_1007A51BC(&qword_101193FF8, &type metadata accessor for UploadedAudio);
    a1 = MPCPlaybackIntent.init<A>(_:)();
  }

  (*(v8 + 32))(v12, v10, v25);
  *&v12[*(v24 + 20)] = a1;
  v18 = type metadata accessor for DragDropToQueue(0);
  *(v13 + 56) = v18;
  *(v13 + 64) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue);
  v19 = sub_10001C8B8((v13 + 32));
  sub_10079BA30(v12, v19);
  *(v19 + *(v18 + 20)) = 3;
  v20 = v16;
  return v13;
}

uint64_t sub_100799E1C(void *a1)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for Album();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenericMusicItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin(v31);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBE260;
  v11 = type metadata accessor for DragDropToLibrary(0);
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary);
  v12 = sub_10001C8B8((v10 + 32));
  v13 = *(v4 + 16);
  v14 = v1;
  v15 = v3;
  v13(v12, v14, v3);
  v29 = enum case for GenericMusicItem.album(_:);
  v34 = v7;
  v16 = *(v7 + 104);
  v16(v12);
  *(v12 + *(v11 + 20)) = 1;
  *(v10 + 96) = &type metadata for DragDropToPlaylist;
  *(v10 + 104) = sub_100236D7C();
  v17 = swift_allocObject();
  *(v10 + 72) = v17;
  *(v17 + 40) = v15;
  *(v17 + 48) = &protocol witness table for Album;
  *(v17 + 56) = &protocol witness table for Album;
  v18 = sub_10001C8B8((v17 + 16));
  v13(v18, v2, v15);
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 80) = 2;
  v19 = v30;
  v13(v30, v2, v15);
  (v16)(v19, v29, v6);
  v20 = v32;
  if (v32)
  {
    v21 = v32;
  }

  else
  {
    sub_100188C90();
    v13(v28, v2, v15);
    v21 = MPCPlaybackIntent.init<A>(_:)();
  }

  v22 = v33;
  (*(v34 + 32))(v33, v19, v6);
  *(v22 + *(v31 + 20)) = v21;
  v23 = type metadata accessor for DragDropToQueue(0);
  *(v10 + 136) = v23;
  *(v10 + 144) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue);
  v24 = sub_10001C8B8((v10 + 112));
  sub_10079BA30(v22, v24);
  *(v24 + *(v23 + 20)) = 3;
  v25 = v20;
  return v10;
}

uint64_t sub_10079A22C(void *a1)
{
  v27 = a1;
  v2 = type metadata accessor for MusicMovie();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for GenericMusicItem();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin(v28);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBDC20;
  v9 = type metadata accessor for DragDropToLibrary(0);
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary);
  v25 = v8;
  v10 = sub_10001C8B8((v8 + 32));
  v11 = *(v3 + 16);
  v11(v10, v1, v2);
  v12 = enum case for GenericMusicItem.musicMovie(_:);
  v30 = v5;
  v13 = *(v5 + 104);
  v14 = v26;
  v13(v10, enum case for GenericMusicItem.musicMovie(_:), v26);
  *(v10 + *(v9 + 20)) = 1;
  v15 = v31;
  v11(v31, v1, v2);
  v13(v15, v12, v14);
  v16 = v27;
  if (v27)
  {
    v17 = v27;
  }

  else
  {
    sub_100188C90();
    v11(v24, v1, v2);
    sub_1007A51BC(&unk_1011A38E0, &type metadata accessor for MusicMovie);
    v17 = MPCPlaybackIntent.init<A>(_:)();
  }

  v18 = v29;
  (*(v30 + 32))(v29, v31, v14);
  *(v18 + *(v28 + 20)) = v17;
  v19 = type metadata accessor for DragDropToQueue(0);
  v20 = v25;
  *(v25 + 96) = v19;
  *(v20 + 104) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue);
  v21 = sub_10001C8B8((v20 + 72));
  sub_10079BA30(v18, v21);
  *(v21 + *(v19 + 20)) = 3;
  v22 = v16;
  return v20;
}

uint64_t sub_10079A5F8(void *a1)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for MusicVideo();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for GenericMusicItem();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin(v32);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBE260;
  v10 = type metadata accessor for DragDropToLibrary(0);
  *(v9 + 56) = v10;
  *(v9 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary);
  v11 = sub_10001C8B8((v9 + 32));
  v12 = *(v4 + 16);
  v13 = v1;
  v14 = v3;
  v12(v11, v13, v3);
  v28 = enum case for GenericMusicItem.musicVideo(_:);
  v34 = v6;
  v15 = *(v6 + 104);
  v16 = v29;
  v15(v11);
  *(v11 + *(v10 + 20)) = 1;
  *(v9 + 96) = &type metadata for DragDropToPlaylist;
  *(v9 + 104) = sub_100236D7C();
  v17 = swift_allocObject();
  *(v9 + 72) = v17;
  *(v17 + 40) = v3;
  *(v17 + 48) = &protocol witness table for MusicVideo;
  *(v17 + 56) = &protocol witness table for MusicVideo;
  v18 = sub_10001C8B8((v17 + 16));
  v12(v18, v2, v3);
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 80) = 2;
  v19 = v30;
  v12(v30, v2, v3);
  (v15)(v19, v28, v16);
  v20 = v31;
  if (v31)
  {
    v21 = v31;
  }

  else
  {
    sub_100188C90();
    v12(v27, v2, v14);
    sub_1007A51BC(&unk_101193C00, &type metadata accessor for MusicVideo);
    v21 = MPCPlaybackIntent.init<A>(_:)();
  }

  v22 = v33;
  (*(v34 + 32))(v33, v19, v16);
  *(v22 + *(v32 + 20)) = v21;
  v23 = type metadata accessor for DragDropToQueue(0);
  *(v9 + 136) = v23;
  *(v9 + 144) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue);
  v24 = sub_10001C8B8((v9 + 112));
  sub_10079BA30(v22, v24);
  *(v24 + *(v23 + 20)) = 3;
  v25 = v20;
  return v9;
}

uint64_t sub_10079AA48(void *a1)
{
  v36 = a1;
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GenericMusicItem();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin(v35);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBEF50;
  v9 = type metadata accessor for DragDropToFolder(0);
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_1007A51BC(&qword_10118D3B0, type metadata accessor for DragDropToFolder);
  v10 = sub_10001C8B8((v8 + 32));
  v11 = *(v3 + 16);
  v11(v10, v1, v2);
  v39 = v3 + 16;
  v12 = enum case for Playlist.Folder.Item.playlist(_:);
  v13 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v13 - 8) + 104))(v10, v12, v13);
  *(v10 + *(v9 + 20)) = 0;
  v14 = type metadata accessor for DragDropToLibrary(0);
  *(v8 + 96) = v14;
  *(v8 + 104) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary);
  v15 = sub_10001C8B8((v8 + 72));
  v16 = v2;
  v11(v15, v1, v2);
  v17 = enum case for GenericMusicItem.playlist(_:);
  v38 = v5;
  v18 = *(v5 + 104);
  v19 = v33;
  v18(v15, enum case for GenericMusicItem.playlist(_:), v33);
  *(v15 + *(v14 + 20)) = 1;
  *(v8 + 136) = &type metadata for DragDropToPlaylist;
  *(v8 + 144) = sub_100236D7C();
  v20 = swift_allocObject();
  *(v8 + 112) = v20;
  *(v20 + 40) = v16;
  *(v20 + 48) = &protocol witness table for Playlist;
  *(v20 + 56) = &protocol witness table for Playlist;
  v21 = sub_10001C8B8((v20 + 16));
  v11(v21, v1, v16);
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 2;
  v22 = v34;
  v31 = v16;
  v11(v34, v1, v16);
  v18(v22, v17, v19);
  v23 = v36;
  if (v36)
  {
    v24 = v36;
  }

  else
  {
    sub_100188C90();
    v11(v32, v1, v31);
    v24 = MPCPlaybackIntent.init<A>(_:)();
  }

  v25 = v37;
  (*(v38 + 32))(v37, v22, v19);
  *(v25 + *(v35 + 20)) = v24;
  v26 = type metadata accessor for DragDropToQueue(0);
  *(v8 + 176) = v26;
  *(v8 + 184) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue);
  v27 = sub_10001C8B8((v8 + 152));
  sub_10079BA30(v25, v27);
  *(v27 + *(v26 + 20)) = 3;
  v28 = v23;
  return v8;
}

uint64_t sub_10079AF28(void *a1)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for Song();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenericMusicItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin(v31);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBE260;
  v11 = type metadata accessor for DragDropToLibrary(0);
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary);
  v12 = sub_10001C8B8((v10 + 32));
  v13 = *(v4 + 16);
  v14 = v1;
  v15 = v3;
  v13(v12, v14, v3);
  v29 = enum case for GenericMusicItem.song(_:);
  v34 = v7;
  v16 = *(v7 + 104);
  v16(v12);
  *(v12 + *(v11 + 20)) = 1;
  *(v10 + 96) = &type metadata for DragDropToPlaylist;
  *(v10 + 104) = sub_100236D7C();
  v17 = swift_allocObject();
  *(v10 + 72) = v17;
  *(v17 + 40) = v15;
  *(v17 + 48) = &protocol witness table for Song;
  *(v17 + 56) = &protocol witness table for Song;
  v18 = sub_10001C8B8((v17 + 16));
  v13(v18, v2, v15);
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 80) = 2;
  v19 = v30;
  v13(v30, v2, v15);
  (v16)(v19, v29, v6);
  v20 = v32;
  if (v32)
  {
    v21 = v32;
  }

  else
  {
    sub_100188C90();
    v13(v28, v2, v15);
    v21 = MPCPlaybackIntent.init<A>(_:)();
  }

  v22 = v33;
  (*(v34 + 32))(v33, v19, v6);
  *(v22 + *(v31 + 20)) = v21;
  v23 = type metadata accessor for DragDropToQueue(0);
  *(v10 + 136) = v23;
  *(v10 + 144) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue);
  v24 = sub_10001C8B8((v10 + 112));
  sub_10079BA30(v22, v24);
  *(v24 + *(v23 + 20)) = 3;
  v25 = v20;
  return v10;
}

uint64_t sub_10079B338(void *a1)
{
  v27 = a1;
  v2 = type metadata accessor for TVEpisode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for GenericMusicItem();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin(v28);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBDC20;
  v9 = type metadata accessor for DragDropToLibrary(0);
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary);
  v25 = v8;
  v10 = sub_10001C8B8((v8 + 32));
  v11 = *(v3 + 16);
  v11(v10, v1, v2);
  v12 = enum case for GenericMusicItem.tvEpisode(_:);
  v30 = v5;
  v13 = *(v5 + 104);
  v14 = v26;
  v13(v10, enum case for GenericMusicItem.tvEpisode(_:), v26);
  *(v10 + *(v9 + 20)) = 1;
  v15 = v31;
  v11(v31, v1, v2);
  v13(v15, v12, v14);
  v16 = v27;
  if (v27)
  {
    v17 = v27;
  }

  else
  {
    sub_100188C90();
    v11(v24, v1, v2);
    sub_1007A51BC(&qword_101199720, &type metadata accessor for TVEpisode);
    v17 = MPCPlaybackIntent.init<A>(_:)();
  }

  v18 = v29;
  (*(v30 + 32))(v29, v31, v14);
  *(v18 + *(v28 + 20)) = v17;
  v19 = type metadata accessor for DragDropToQueue(0);
  v20 = v25;
  *(v25 + 96) = v19;
  *(v20 + 104) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue);
  v21 = sub_10001C8B8((v20 + 72));
  sub_10079BA30(v18, v21);
  *(v21 + *(v19 + 20)) = 3;
  v22 = v16;
  return v20;
}

uint64_t sub_10079B704(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UploadedVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenericMusicItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin(v24);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  v14 = *(v5 + 16);
  v22 = v2;
  v15 = v2;
  v16 = a1;
  v14(v10, v15, v4);
  v17 = *(v8 + 104);
  v25 = v7;
  v17(v10, enum case for GenericMusicItem.uploadedVideo(_:), v7);
  if (!a1)
  {
    sub_100188C90();
    v14(v23, v22, v4);
    sub_1007A51BC(&qword_101181148, &type metadata accessor for UploadedVideo);
    a1 = MPCPlaybackIntent.init<A>(_:)();
  }

  (*(v8 + 32))(v12, v10, v25);
  *&v12[*(v24 + 20)] = a1;
  v18 = type metadata accessor for DragDropToQueue(0);
  *(v13 + 56) = v18;
  *(v13 + 64) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue);
  v19 = sub_10001C8B8((v13 + 32));
  sub_10079BA30(v12, v19);
  *(v19 + *(v18 + 20)) = 3;
  v20 = v16;
  return v13;
}

uint64_t sub_10079BA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragDropToQueue.Origin(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10079BA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Album();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v62[3] = v4;
  v62[4] = &protocol witness table for Album;
  v11 = sub_10001C8B8(v62);
  v12 = *(v5 + 32);
  v56 = v11;
  v12(v11, a2, v4);
  v13 = [objc_allocWithZone(NSItemProvider) init];
  v14 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v13];
  sub_10031FDC4(a1);
  sub_100008FE4(v62, aBlock);
  v15 = v14;
  sub_10031FF04(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_100008FE4(v62, v61);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&unk_1011814E0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v59, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_100008FE4(aBlock, v61);
      sub_100008FE4(v62, v59);
      type metadata accessor for MainActor();
      v18 = v13;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      sub_100059A8C(v61, (v20 + 4));
      v20[9] = v18;
      sub_100059A8C(v59, (v20 + 10));
      sub_1001F4CB8(0, 0, v10, &unk_100EE2878, v20);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012186C8);
    sub_100008FE4(v62, v61);
    v22 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v37))
    {

      sub_10000959C(v61);
      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v13;
    v40 = v39;
    v57 = v39;
    *v38 = 136446210;
    sub_100008FE4(v61, v59);
    v41 = String.init<A>(describing:)();
    v54 = v15;
    v42 = v16;
    v43 = v5;
    v44 = v4;
    v45 = v7;
    v47 = v46;
    sub_10000959C(v61);
    v48 = sub_1000105AC(v41, v47, &v57);
    v7 = v45;
    v4 = v44;
    v5 = v43;
    v16 = v42;
    v15 = v54;

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v22, v37, "Could not request share URL for item=%{public}s.", v38, 0xCu);
    sub_10000959C(v40);
    v13 = v55;

LABEL_12:

    goto LABEL_14;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1000095E8(v59, &qword_10118E0A8);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_1012186C8);
  sub_100008FE4(v62, aBlock);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {
    goto LABEL_12;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v55 = v13;
  v26 = v25;
  *&v59[0] = v25;
  *v24 = 136446210;
  sub_100008FE4(aBlock, v61);
  v27 = String.init<A>(describing:)();
  v54 = v15;
  v28 = v16;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v32 = v27;
  v34 = v33;
  sub_10000959C(aBlock);
  v35 = sub_1000105AC(v32, v34, v59);

  *(v24 + 4) = v35;
  v7 = v31;
  v4 = v30;
  v5 = v29;
  v16 = v28;
  v15 = v54;
  _os_log_impl(&_mh_execute_header, v22, v23, "Item=%{public}s doesn't conform to ShareableMusicItem.", v24, 0xCu);
  sub_10000959C(v26);
  v13 = v55;

LABEL_15:
  (*(v5 + 16))(v7, v56, v4);

  v49 = sub_1007A172C(v7, sub_1007A5250, v16, &type metadata accessor for Album, &protocol witness table for Album, &unk_1010BF578, &unk_100EE2880);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF518;
  v51 = _Block_copy(aBlock);
  v52 = v49;

  [v15 setPreviewProvider:v51];

  _Block_release(v51);

  sub_10000959C(v62);
  return v15;
}

id sub_10079C240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v62[3] = v4;
  v62[4] = &protocol witness table for MusicVideo;
  v11 = sub_10001C8B8(v62);
  v12 = *(v5 + 32);
  v56 = v11;
  v12(v11, a2, v4);
  v13 = [objc_allocWithZone(NSItemProvider) init];
  v14 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v13];
  sub_10031FDC4(a1);
  sub_100008FE4(v62, aBlock);
  v15 = v14;
  sub_10031FF04(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_100008FE4(v62, v61);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&unk_1011814E0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v59, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_100008FE4(aBlock, v61);
      sub_100008FE4(v62, v59);
      type metadata accessor for MainActor();
      v18 = v13;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      sub_100059A8C(v61, (v20 + 4));
      v20[9] = v18;
      sub_100059A8C(v59, (v20 + 10));
      sub_1001F4CB8(0, 0, v10, &unk_100EE2828, v20);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012186C8);
    sub_100008FE4(v62, v61);
    v22 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v37))
    {

      sub_10000959C(v61);
      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v13;
    v40 = v39;
    v57 = v39;
    *v38 = 136446210;
    sub_100008FE4(v61, v59);
    v41 = String.init<A>(describing:)();
    v54 = v15;
    v42 = v16;
    v43 = v5;
    v44 = v4;
    v45 = v7;
    v47 = v46;
    sub_10000959C(v61);
    v48 = sub_1000105AC(v41, v47, &v57);
    v7 = v45;
    v4 = v44;
    v5 = v43;
    v16 = v42;
    v15 = v54;

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v22, v37, "Could not request share URL for item=%{public}s.", v38, 0xCu);
    sub_10000959C(v40);
    v13 = v55;

LABEL_12:

    goto LABEL_14;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1000095E8(v59, &qword_10118E0A8);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_1012186C8);
  sub_100008FE4(v62, aBlock);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {
    goto LABEL_12;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v55 = v13;
  v26 = v25;
  *&v59[0] = v25;
  *v24 = 136446210;
  sub_100008FE4(aBlock, v61);
  v27 = String.init<A>(describing:)();
  v54 = v15;
  v28 = v16;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v32 = v27;
  v34 = v33;
  sub_10000959C(aBlock);
  v35 = sub_1000105AC(v32, v34, v59);

  *(v24 + 4) = v35;
  v7 = v31;
  v4 = v30;
  v5 = v29;
  v16 = v28;
  v15 = v54;
  _os_log_impl(&_mh_execute_header, v22, v23, "Item=%{public}s doesn't conform to ShareableMusicItem.", v24, 0xCu);
  sub_10000959C(v26);
  v13 = v55;

LABEL_15:
  (*(v5 + 16))(v7, v56, v4);

  v49 = sub_1007A0904(v7, sub_1007A5250, v16);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF130;
  v51 = _Block_copy(aBlock);
  v52 = v49;

  [v15 setPreviewProvider:v51];

  _Block_release(v51);

  sub_10000959C(v62);
  return v15;
}

id sub_10079C9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v62[3] = v4;
  v62[4] = &protocol witness table for Playlist;
  v11 = sub_10001C8B8(v62);
  v12 = *(v5 + 32);
  v56 = v11;
  v12(v11, a2, v4);
  v13 = [objc_allocWithZone(NSItemProvider) init];
  v14 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v13];
  sub_10031FDC4(a1);
  sub_100008FE4(v62, aBlock);
  v15 = v14;
  sub_10031FF04(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_100008FE4(v62, v61);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&unk_1011814E0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v59, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_100008FE4(aBlock, v61);
      sub_100008FE4(v62, v59);
      type metadata accessor for MainActor();
      v18 = v13;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      sub_100059A8C(v61, (v20 + 4));
      v20[9] = v18;
      sub_100059A8C(v59, (v20 + 10));
      sub_1001F4CB8(0, 0, v10, &unk_100EE2888, v20);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012186C8);
    sub_100008FE4(v62, v61);
    v22 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v37))
    {

      sub_10000959C(v61);
      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v13;
    v40 = v39;
    v57 = v39;
    *v38 = 136446210;
    sub_100008FE4(v61, v59);
    v41 = String.init<A>(describing:)();
    v54 = v15;
    v42 = v16;
    v43 = v5;
    v44 = v4;
    v45 = v7;
    v47 = v46;
    sub_10000959C(v61);
    v48 = sub_1000105AC(v41, v47, &v57);
    v7 = v45;
    v4 = v44;
    v5 = v43;
    v16 = v42;
    v15 = v54;

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v22, v37, "Could not request share URL for item=%{public}s.", v38, 0xCu);
    sub_10000959C(v40);
    v13 = v55;

LABEL_12:

    goto LABEL_14;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1000095E8(v59, &qword_10118E0A8);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_1012186C8);
  sub_100008FE4(v62, aBlock);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {
    goto LABEL_12;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v55 = v13;
  v26 = v25;
  *&v59[0] = v25;
  *v24 = 136446210;
  sub_100008FE4(aBlock, v61);
  v27 = String.init<A>(describing:)();
  v54 = v15;
  v28 = v16;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v32 = v27;
  v34 = v33;
  sub_10000959C(aBlock);
  v35 = sub_1000105AC(v32, v34, v59);

  *(v24 + 4) = v35;
  v7 = v31;
  v4 = v30;
  v5 = v29;
  v16 = v28;
  v15 = v54;
  _os_log_impl(&_mh_execute_header, v22, v23, "Item=%{public}s doesn't conform to ShareableMusicItem.", v24, 0xCu);
  sub_10000959C(v26);
  v13 = v55;

LABEL_15:
  (*(v5 + 16))(v7, v56, v4);

  v49 = sub_1007A172C(v7, sub_1007A5250, v16, &type metadata accessor for Playlist, &protocol witness table for Playlist, &unk_1010BF640, &unk_100EE2890);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF5E0;
  v51 = _Block_copy(aBlock);
  v52 = v49;

  [v15 setPreviewProvider:v51];

  _Block_release(v51);

  sub_10000959C(v62);
  return v15;
}

id sub_10079D160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v62[3] = v4;
  v62[4] = sub_1007A51BC(&qword_10118C1A0, &type metadata accessor for Playlist.Folder);
  v11 = sub_10001C8B8(v62);
  v12 = *(v5 + 32);
  v56 = v11;
  v12(v11, a2, v4);
  v13 = [objc_allocWithZone(NSItemProvider) init];
  v14 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v13];
  sub_10031FDC4(a1);
  sub_100008FE4(v62, aBlock);
  v15 = v14;
  sub_10031FF04(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_100008FE4(v62, v61);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&unk_1011814E0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v59, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_100008FE4(aBlock, v61);
      sub_100008FE4(v62, v59);
      type metadata accessor for MainActor();
      v18 = v13;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      sub_100059A8C(v61, (v20 + 4));
      v20[9] = v18;
      sub_100059A8C(v59, (v20 + 10));
      sub_1001F4CB8(0, 0, v10, &unk_100EE2898, v20);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012186C8);
    sub_100008FE4(v62, v61);
    v22 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v37))
    {

      sub_10000959C(v61);
      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v13;
    v40 = v39;
    v57 = v39;
    *v38 = 136446210;
    sub_100008FE4(v61, v59);
    v41 = String.init<A>(describing:)();
    v54 = v15;
    v42 = v16;
    v43 = v5;
    v44 = v4;
    v45 = v7;
    v47 = v46;
    sub_10000959C(v61);
    v48 = sub_1000105AC(v41, v47, &v57);
    v7 = v45;
    v4 = v44;
    v5 = v43;
    v16 = v42;
    v15 = v54;

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v22, v37, "Could not request share URL for item=%{public}s.", v38, 0xCu);
    sub_10000959C(v40);
    v13 = v55;

LABEL_12:

    goto LABEL_14;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1000095E8(v59, &qword_10118E0A8);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_1012186C8);
  sub_100008FE4(v62, aBlock);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {
    goto LABEL_12;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v55 = v13;
  v26 = v25;
  *&v59[0] = v25;
  *v24 = 136446210;
  sub_100008FE4(aBlock, v61);
  v27 = String.init<A>(describing:)();
  v54 = v15;
  v28 = v16;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v32 = v27;
  v34 = v33;
  sub_10000959C(aBlock);
  v35 = sub_1000105AC(v32, v34, v59);

  *(v24 + 4) = v35;
  v7 = v31;
  v4 = v30;
  v5 = v29;
  v16 = v28;
  v15 = v54;
  _os_log_impl(&_mh_execute_header, v22, v23, "Item=%{public}s doesn't conform to ShareableMusicItem.", v24, 0xCu);
  sub_10000959C(v26);
  v13 = v55;

LABEL_15:
  (*(v5 + 16))(v7, v56, v4);

  v49 = sub_1007A3340(v7, sub_1007A5250, v16, &type metadata accessor for Playlist.Folder, &qword_10118C1A0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder, &unk_1010BF708, &unk_100EE28A0);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF6A8;
  v51 = _Block_copy(aBlock);
  v52 = v49;

  [v15 setPreviewProvider:v51];

  _Block_release(v51);

  sub_10000959C(v62);
  return v15;
}

id sub_10079D968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v62[3] = v4;
  v62[4] = &protocol witness table for Song;
  v11 = sub_10001C8B8(v62);
  v12 = *(v5 + 32);
  v56 = v11;
  v12(v11, a2, v4);
  v13 = [objc_allocWithZone(NSItemProvider) init];
  v14 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v13];
  sub_10031FDC4(a1);
  sub_100008FE4(v62, aBlock);
  v15 = v14;
  sub_10031FF04(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_100008FE4(v62, v61);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&unk_1011814E0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v59, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_100008FE4(aBlock, v61);
      sub_100008FE4(v62, v59);
      type metadata accessor for MainActor();
      v18 = v13;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      sub_100059A8C(v61, (v20 + 4));
      v20[9] = v18;
      sub_100059A8C(v59, (v20 + 10));
      sub_1001F4CB8(0, 0, v10, &unk_100EE27D8, v20);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012186C8);
    sub_100008FE4(v62, v61);
    v22 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v37))
    {

      sub_10000959C(v61);
      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v13;
    v40 = v39;
    v57 = v39;
    *v38 = 136446210;
    sub_100008FE4(v61, v59);
    v41 = String.init<A>(describing:)();
    v54 = v15;
    v42 = v16;
    v43 = v5;
    v44 = v4;
    v45 = v7;
    v47 = v46;
    sub_10000959C(v61);
    v48 = sub_1000105AC(v41, v47, &v57);
    v7 = v45;
    v4 = v44;
    v5 = v43;
    v16 = v42;
    v15 = v54;

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v22, v37, "Could not request share URL for item=%{public}s.", v38, 0xCu);
    sub_10000959C(v40);
    v13 = v55;

LABEL_12:

    goto LABEL_14;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1000095E8(v59, &qword_10118E0A8);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_1012186C8);
  sub_100008FE4(v62, aBlock);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {
    goto LABEL_12;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v55 = v13;
  v26 = v25;
  *&v59[0] = v25;
  *v24 = 136446210;
  sub_100008FE4(aBlock, v61);
  v27 = String.init<A>(describing:)();
  v54 = v15;
  v28 = v16;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v32 = v27;
  v34 = v33;
  sub_10000959C(aBlock);
  v35 = sub_1000105AC(v32, v34, v59);

  *(v24 + 4) = v35;
  v7 = v31;
  v4 = v30;
  v5 = v29;
  v16 = v28;
  v15 = v54;
  _os_log_impl(&_mh_execute_header, v22, v23, "Item=%{public}s doesn't conform to ShareableMusicItem.", v24, 0xCu);
  sub_10000959C(v26);
  v13 = v55;

LABEL_15:
  (*(v5 + 16))(v7, v56, v4);

  v49 = sub_1007A250C(v7, sub_1007A4B84, v16);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  aBlock[4] = sub_1007A4B8C;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF068;
  v51 = _Block_copy(aBlock);
  v52 = v49;

  [v15 setPreviewProvider:v51];

  _Block_release(v51);

  sub_10000959C(v62);
  return v15;
}

id sub_10079E0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPin();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v62[3] = v4;
  v62[4] = sub_1007A51BC(&qword_101197100, &type metadata accessor for MusicPin);
  v11 = sub_10001C8B8(v62);
  v12 = *(v5 + 32);
  v56 = v11;
  v12(v11, a2, v4);
  v13 = [objc_allocWithZone(NSItemProvider) init];
  v14 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v13];
  sub_10031FDC4(a1);
  sub_100008FE4(v62, aBlock);
  v15 = v14;
  sub_10031FF04(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_100008FE4(v62, v61);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&unk_1011814E0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v59, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_100008FE4(aBlock, v61);
      sub_100008FE4(v62, v59);
      type metadata accessor for MainActor();
      v18 = v13;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      sub_100059A8C(v61, (v20 + 4));
      v20[9] = v18;
      sub_100059A8C(v59, (v20 + 10));
      sub_1001F4CB8(0, 0, v10, &unk_100EE28A8, v20);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012186C8);
    sub_100008FE4(v62, v61);
    v22 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v37))
    {

      sub_10000959C(v61);
      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v13;
    v40 = v39;
    v57 = v39;
    *v38 = 136446210;
    sub_100008FE4(v61, v59);
    v41 = String.init<A>(describing:)();
    v54 = v15;
    v42 = v16;
    v43 = v5;
    v44 = v4;
    v45 = v7;
    v47 = v46;
    sub_10000959C(v61);
    v48 = sub_1000105AC(v41, v47, &v57);
    v7 = v45;
    v4 = v44;
    v5 = v43;
    v16 = v42;
    v15 = v54;

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v22, v37, "Could not request share URL for item=%{public}s.", v38, 0xCu);
    sub_10000959C(v40);
    v13 = v55;

LABEL_12:

    goto LABEL_14;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1000095E8(v59, &qword_10118E0A8);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_1012186C8);
  sub_100008FE4(v62, aBlock);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {
    goto LABEL_12;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v55 = v13;
  v26 = v25;
  *&v59[0] = v25;
  *v24 = 136446210;
  sub_100008FE4(aBlock, v61);
  v27 = String.init<A>(describing:)();
  v54 = v15;
  v28 = v16;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v32 = v27;
  v34 = v33;
  sub_10000959C(aBlock);
  v35 = sub_1000105AC(v32, v34, v59);

  *(v24 + 4) = v35;
  v7 = v31;
  v4 = v30;
  v5 = v29;
  v16 = v28;
  v15 = v54;
  _os_log_impl(&_mh_execute_header, v22, v23, "Item=%{public}s doesn't conform to ShareableMusicItem.", v24, 0xCu);
  sub_10000959C(v26);
  v13 = v55;

LABEL_15:
  (*(v5 + 16))(v7, v56, v4);

  v49 = sub_1007A3340(v7, sub_1007A5250, v16, &type metadata accessor for MusicPin, &qword_101197100, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin, &unk_1010BF7D0, &unk_100EE28B0);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF770;
  v51 = _Block_copy(aBlock);
  v52 = v49;

  [v15 setPreviewProvider:v51];

  _Block_release(v51);

  sub_10000959C(v62);
  return v15;
}

id sub_10079E8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMovie();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v62[3] = v4;
  v62[4] = sub_1007A51BC(&unk_10118AB60, &type metadata accessor for MusicMovie);
  v11 = sub_10001C8B8(v62);
  v12 = *(v5 + 32);
  v56 = v11;
  v12(v11, a2, v4);
  v13 = [objc_allocWithZone(NSItemProvider) init];
  v14 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v13];
  sub_10031FDC4(a1);
  sub_100008FE4(v62, aBlock);
  v15 = v14;
  sub_10031FF04(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_100008FE4(v62, v61);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&unk_1011814E0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v59, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_100008FE4(aBlock, v61);
      sub_100008FE4(v62, v59);
      type metadata accessor for MainActor();
      v18 = v13;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      sub_100059A8C(v61, (v20 + 4));
      v20[9] = v18;
      sub_100059A8C(v59, (v20 + 10));
      sub_1001F4CB8(0, 0, v10, &unk_100EE2838, v20);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012186C8);
    sub_100008FE4(v62, v61);
    v22 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v37))
    {

      sub_10000959C(v61);
      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v13;
    v40 = v39;
    v57 = v39;
    *v38 = 136446210;
    sub_100008FE4(v61, v59);
    v41 = String.init<A>(describing:)();
    v54 = v15;
    v42 = v16;
    v43 = v5;
    v44 = v4;
    v45 = v7;
    v47 = v46;
    sub_10000959C(v61);
    v48 = sub_1000105AC(v41, v47, &v57);
    v7 = v45;
    v4 = v44;
    v5 = v43;
    v16 = v42;
    v15 = v54;

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v22, v37, "Could not request share URL for item=%{public}s.", v38, 0xCu);
    sub_10000959C(v40);
    v13 = v55;

LABEL_12:

    goto LABEL_14;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1000095E8(v59, &qword_10118E0A8);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_1012186C8);
  sub_100008FE4(v62, aBlock);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {
    goto LABEL_12;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v55 = v13;
  v26 = v25;
  *&v59[0] = v25;
  *v24 = 136446210;
  sub_100008FE4(aBlock, v61);
  v27 = String.init<A>(describing:)();
  v54 = v15;
  v28 = v16;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v32 = v27;
  v34 = v33;
  sub_10000959C(aBlock);
  v35 = sub_1000105AC(v32, v34, v59);

  *(v24 + 4) = v35;
  v7 = v31;
  v4 = v30;
  v5 = v29;
  v16 = v28;
  v15 = v54;
  _os_log_impl(&_mh_execute_header, v22, v23, "Item=%{public}s doesn't conform to ShareableMusicItem.", v24, 0xCu);
  sub_10000959C(v26);
  v13 = v55;

LABEL_15:
  (*(v5 + 16))(v7, v56, v4);

  v49 = sub_1007A3340(v7, sub_1007A5250, v16, &type metadata accessor for MusicMovie, &unk_10118AB60, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie, &unk_1010BF258, &unk_100EE2840);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF1F8;
  v51 = _Block_copy(aBlock);
  v52 = v49;

  [v15 setPreviewProvider:v51];

  _Block_release(v51);

  sub_10000959C(v62);
  return v15;
}

id sub_10079F0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v62[3] = v4;
  v62[4] = sub_1007A51BC(&unk_10118AB40, &type metadata accessor for UploadedVideo);
  v11 = sub_10001C8B8(v62);
  v12 = *(v5 + 32);
  v56 = v11;
  v12(v11, a2, v4);
  v13 = [objc_allocWithZone(NSItemProvider) init];
  v14 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v13];
  sub_10031FDC4(a1);
  sub_100008FE4(v62, aBlock);
  v15 = v14;
  sub_10031FF04(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_100008FE4(v62, v61);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&unk_1011814E0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v59, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_100008FE4(aBlock, v61);
      sub_100008FE4(v62, v59);
      type metadata accessor for MainActor();
      v18 = v13;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      sub_100059A8C(v61, (v20 + 4));
      v20[9] = v18;
      sub_100059A8C(v59, (v20 + 10));
      sub_1001F4CB8(0, 0, v10, &unk_100EE2868, v20);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012186C8);
    sub_100008FE4(v62, v61);
    v22 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v37))
    {

      sub_10000959C(v61);
      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v13;
    v40 = v39;
    v57 = v39;
    *v38 = 136446210;
    sub_100008FE4(v61, v59);
    v41 = String.init<A>(describing:)();
    v54 = v15;
    v42 = v16;
    v43 = v5;
    v44 = v4;
    v45 = v7;
    v47 = v46;
    sub_10000959C(v61);
    v48 = sub_1000105AC(v41, v47, &v57);
    v7 = v45;
    v4 = v44;
    v5 = v43;
    v16 = v42;
    v15 = v54;

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v22, v37, "Could not request share URL for item=%{public}s.", v38, 0xCu);
    sub_10000959C(v40);
    v13 = v55;

LABEL_12:

    goto LABEL_14;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1000095E8(v59, &qword_10118E0A8);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_1012186C8);
  sub_100008FE4(v62, aBlock);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {
    goto LABEL_12;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v55 = v13;
  v26 = v25;
  *&v59[0] = v25;
  *v24 = 136446210;
  sub_100008FE4(aBlock, v61);
  v27 = String.init<A>(describing:)();
  v54 = v15;
  v28 = v16;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v32 = v27;
  v34 = v33;
  sub_10000959C(aBlock);
  v35 = sub_1000105AC(v32, v34, v59);

  *(v24 + 4) = v35;
  v7 = v31;
  v4 = v30;
  v5 = v29;
  v16 = v28;
  v15 = v54;
  _os_log_impl(&_mh_execute_header, v22, v23, "Item=%{public}s doesn't conform to ShareableMusicItem.", v24, 0xCu);
  sub_10000959C(v26);
  v13 = v55;

LABEL_15:
  (*(v5 + 16))(v7, v56, v4);

  v49 = sub_1007A3340(v7, sub_1007A5250, v16, &type metadata accessor for UploadedVideo, &unk_10118AB40, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo, &unk_1010BF4B0, &unk_100EE2870);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF450;
  v51 = _Block_copy(aBlock);
  v52 = v49;

  [v15 setPreviewProvider:v51];

  _Block_release(v51);

  sub_10000959C(v62);
  return v15;
}

id sub_10079F8F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVEpisode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v62[3] = v4;
  v62[4] = sub_1007A51BC(&unk_1011996E0, &type metadata accessor for TVEpisode);
  v11 = sub_10001C8B8(v62);
  v12 = *(v5 + 32);
  v56 = v11;
  v12(v11, a2, v4);
  v13 = [objc_allocWithZone(NSItemProvider) init];
  v14 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v13];
  sub_10031FDC4(a1);
  sub_100008FE4(v62, aBlock);
  v15 = v14;
  sub_10031FF04(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_100008FE4(v62, v61);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&unk_1011814E0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v59, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_100008FE4(aBlock, v61);
      sub_100008FE4(v62, v59);
      type metadata accessor for MainActor();
      v18 = v13;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      sub_100059A8C(v61, (v20 + 4));
      v20[9] = v18;
      sub_100059A8C(v59, (v20 + 10));
      sub_1001F4CB8(0, 0, v10, &unk_100EE2848, v20);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012186C8);
    sub_100008FE4(v62, v61);
    v22 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v37))
    {

      sub_10000959C(v61);
      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v13;
    v40 = v39;
    v57 = v39;
    *v38 = 136446210;
    sub_100008FE4(v61, v59);
    v41 = String.init<A>(describing:)();
    v54 = v15;
    v42 = v16;
    v43 = v5;
    v44 = v4;
    v45 = v7;
    v47 = v46;
    sub_10000959C(v61);
    v48 = sub_1000105AC(v41, v47, &v57);
    v7 = v45;
    v4 = v44;
    v5 = v43;
    v16 = v42;
    v15 = v54;

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v22, v37, "Could not request share URL for item=%{public}s.", v38, 0xCu);
    sub_10000959C(v40);
    v13 = v55;

LABEL_12:

    goto LABEL_14;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1000095E8(v59, &qword_10118E0A8);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_1012186C8);
  sub_100008FE4(v62, aBlock);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {
    goto LABEL_12;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v55 = v13;
  v26 = v25;
  *&v59[0] = v25;
  *v24 = 136446210;
  sub_100008FE4(aBlock, v61);
  v27 = String.init<A>(describing:)();
  v54 = v15;
  v28 = v16;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v32 = v27;
  v34 = v33;
  sub_10000959C(aBlock);
  v35 = sub_1000105AC(v32, v34, v59);

  *(v24 + 4) = v35;
  v7 = v31;
  v4 = v30;
  v5 = v29;
  v16 = v28;
  v15 = v54;
  _os_log_impl(&_mh_execute_header, v22, v23, "Item=%{public}s doesn't conform to ShareableMusicItem.", v24, 0xCu);
  sub_10000959C(v26);
  v13 = v55;

LABEL_15:
  (*(v5 + 16))(v7, v56, v4);

  v49 = sub_1007A3340(v7, sub_1007A5250, v16, &type metadata accessor for TVEpisode, &unk_1011996E0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode, &unk_1010BF320, &unk_100EE2850);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF2C0;
  v51 = _Block_copy(aBlock);
  v52 = v49;

  [v15 setPreviewProvider:v51];

  _Block_release(v51);

  sub_10000959C(v62);
  return v15;
}

id sub_1007A00FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedAudio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v62[3] = v4;
  v62[4] = sub_1007A51BC(&qword_101181A58, &type metadata accessor for UploadedAudio);
  v11 = sub_10001C8B8(v62);
  v12 = *(v5 + 32);
  v56 = v11;
  v12(v11, a2, v4);
  v13 = [objc_allocWithZone(NSItemProvider) init];
  v14 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v13];
  sub_10031FDC4(a1);
  sub_100008FE4(v62, aBlock);
  v15 = v14;
  sub_10031FF04(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_100008FE4(v62, v61);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&unk_1011814E0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v59, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_100008FE4(aBlock, v61);
      sub_100008FE4(v62, v59);
      type metadata accessor for MainActor();
      v18 = v13;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      sub_100059A8C(v61, (v20 + 4));
      v20[9] = v18;
      sub_100059A8C(v59, (v20 + 10));
      sub_1001F4CB8(0, 0, v10, &unk_100EE2858, v20);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012186C8);
    sub_100008FE4(v62, v61);
    v22 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v37))
    {

      sub_10000959C(v61);
      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v13;
    v40 = v39;
    v57 = v39;
    *v38 = 136446210;
    sub_100008FE4(v61, v59);
    v41 = String.init<A>(describing:)();
    v54 = v15;
    v42 = v16;
    v43 = v5;
    v44 = v4;
    v45 = v7;
    v47 = v46;
    sub_10000959C(v61);
    v48 = sub_1000105AC(v41, v47, &v57);
    v7 = v45;
    v4 = v44;
    v5 = v43;
    v16 = v42;
    v15 = v54;

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v22, v37, "Could not request share URL for item=%{public}s.", v38, 0xCu);
    sub_10000959C(v40);
    v13 = v55;

LABEL_12:

    goto LABEL_14;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1000095E8(v59, &qword_10118E0A8);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_1012186C8);
  sub_100008FE4(v62, aBlock);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {
    goto LABEL_12;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v55 = v13;
  v26 = v25;
  *&v59[0] = v25;
  *v24 = 136446210;
  sub_100008FE4(aBlock, v61);
  v27 = String.init<A>(describing:)();
  v54 = v15;
  v28 = v16;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v32 = v27;
  v34 = v33;
  sub_10000959C(aBlock);
  v35 = sub_1000105AC(v32, v34, v59);

  *(v24 + 4) = v35;
  v7 = v31;
  v4 = v30;
  v5 = v29;
  v16 = v28;
  v15 = v54;
  _os_log_impl(&_mh_execute_header, v22, v23, "Item=%{public}s doesn't conform to ShareableMusicItem.", v24, 0xCu);
  sub_10000959C(v26);
  v13 = v55;

LABEL_15:
  (*(v5 + 16))(v7, v56, v4);

  v49 = sub_1007A3340(v7, sub_1007A5250, v16, &type metadata accessor for UploadedAudio, &qword_101181A58, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio, &unk_1010BF3E8, &unk_100EE2860);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF388;
  v51 = _Block_copy(aBlock);
  v52 = v49;

  [v15 setPreviewProvider:v51];

  _Block_release(v51);

  sub_10000959C(v62);
  return v15;
}

id sub_1007A0904(char *a1, uint64_t a2, uint64_t a3)
{
  v107 = a3;
  v106 = a2;
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v92 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = v90 - v8;
  v101 = type metadata accessor for Song();
  v96 = *(v101 - 8);
  __chkstk_darwin(v101);
  v94 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v100 = v90 - v11;
  v12 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v12 - 8);
  v108 = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v109 = v90 - v15;
  v16 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin(v16);
  v18 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v90 - v20;
  v22 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v22 - 8);
  v24 = v90 - v23;
  v25 = sub_10010FC20(&unk_101188920);
  v102 = *(v25 - 8);
  __chkstk_darwin(v25 - 8);
  v104 = v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v90 - v28;
  v103 = v30;
  __chkstk_darwin(v31);
  v33 = v90 - v32;
  v114[3] = v4;
  v114[4] = &protocol witness table for MusicVideo;
  v34 = sub_10001C8B8(v114);
  v93 = v5;
  v36 = *(v5 + 32);
  v35 = v5 + 32;
  v91 = v36;
  v36(v34, a1, v4);
  sub_100008FE4(v114, v110);
  v37 = sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&qword_1011A2B58);
  v98 = v37;
  v38 = swift_dynamicCast();
  v105 = v33;
  v97 = v4;
  v99 = v29;
  if ((v38 & 1) == 0)
  {
    v113 = 0;
    v111 = 0u;
    v112 = 0u;
    sub_1000095E8(&v111, &qword_1011A2B60);
    goto LABEL_6;
  }

  v40 = *(&v112 + 1);
  v39 = v113;
  sub_10000954C(&v111, *(&v112 + 1));
  v41 = (*(v39 + 8))(v40, v39);
  sub_10000959C(&v111);
  if (!v41)
  {
LABEL_6:
    v46 = v16;
    v47 = type metadata accessor for Artwork();
    v48 = 1;
    (*(*(v47 - 8) + 56))(v33, 1, 1, v47);
    v41 = 0;
    v49 = 1.0;
    goto LABEL_9;
  }

  v90[0] = v35;
  swift_getKeyPath();
  *&v111 = v41;
  v42 = sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);

  v90[1] = v42;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v41 + v43, v21);

  sub_1000089F8(v21, v24, &unk_10118A5E0);
  sub_1007A4DE8(v21, type metadata accessor for ContextualPreview.Artwork);
  v44 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v44 - 8) + 48))(v24, 1, v44) == 1)
  {
    sub_1000095E8(v24, &unk_10118A5E0);
    v45 = type metadata accessor for Artwork();
    (*(*(v45 - 8) + 56))(v33, 1, 1, v45);
  }

  else
  {
    v50 = type metadata accessor for Artwork();
    v51 = *(v50 - 8);
    (*(v51 + 16))(v33, v24, v50);
    sub_1007A4DE8(v24, type metadata accessor for ArtworkImage.ViewModel);
    (*(v51 + 56))(v33, 0, 1, v50);
  }

  swift_getKeyPath();
  *&v111 = v41;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v41 + v52, v18);

  v46 = v16;
  v49 = *&v18[*(v16 + 32)];
  sub_1007A4DE8(v18, type metadata accessor for ContextualPreview.Artwork);
  v48 = 0;
LABEL_9:
  v53 = type metadata accessor for UIView.Corner();
  v54 = *(*(v53 - 8) + 56);
  v54(v109, 1, 1, v53);
  if ((v48 & 1) == 0)
  {
    swift_getKeyPath();
    *&v111 = v41;
    sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v55 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
    swift_beginAccess();
    sub_1007A4D84(v41 + v55, v18);

    v56 = &v18[*(v46 + 36)];
    v57 = *v56;
    v58 = *(v56 + 1);
    v59 = v56[16];
    sub_1007A4DE8(v18, type metadata accessor for ContextualPreview.Artwork);
    if (static Corner.__derived_enum_equals(_:_:)(v57, v58, v59, 0, 0, 2))
    {
      v60 = v108;
      static UIView.Corner.rounded.getter();
      v61 = v109;
      sub_1000095E8(v109, &qword_101183A90);
      v54(v60, 0, 1, v53);
      sub_10003D17C(v60, v61, &qword_101183A90);
    }
  }

  sub_100008FE4(v114, &v111);
  v62 = v100;
  v63 = v101;
  if (swift_dynamicCast())
  {
    v64 = v96;
    v65 = v94;
    (*(v96 + 32))(v94, v62, v63);
    v100 = Song.title.getter();
    v98 = v66;
    v67 = v105;
    v68 = v99;
    if (qword_10117F250 != -1)
    {
      swift_once();
    }

    v69 = *&qword_1012186B0;
    (*(v64 + 8))(v65, v63);
LABEL_20:
    v75 = v49 * v69;
    goto LABEL_24;
  }

  v70 = v95;
  v71 = v97;
  v72 = swift_dynamicCast();
  v67 = v105;
  v68 = v99;
  if (v72)
  {
    v73 = v92;
    v91(v92, v70, v71);
    v100 = MusicVideo.title.getter();
    v98 = v74;
    if (qword_10117F250 != -1)
    {
      swift_once();
    }

    v69 = *&qword_1012186B0;
    (*(v93 + 8))(v73, v71);
    goto LABEL_20;
  }

  if (qword_10117F240 != -1)
  {
    swift_once();
  }

  v100 = 0;
  v98 = 0;
  v75 = *&qword_1012186A0;
  v69 = 1.0 / v49 * *&qword_1012186A0;
LABEL_24:
  sub_10000959C(&v111);
  sub_1000089F8(v67, v68, &unk_101188920);
  v76 = type metadata accessor for Artwork();
  v77 = *(v76 - 8);
  if ((*(v77 + 48))(v68, 1, v76) == 1)
  {
    sub_1000095E8(v68, &unk_101188920);
LABEL_28:
    v79 = 0;
    goto LABEL_29;
  }

  v78 = Artwork.backgroundColor.getter();
  (*(v77 + 8))(v68, v76);
  if (!v78)
  {
    goto LABEL_28;
  }

  v79 = [objc_allocWithZone(UIColor) initWithCGColor:v78];

LABEL_29:
  v80 = v104;
  sub_1000089F8(v67, v104, &unk_101188920);
  sub_100008FE4(v114, &v111);
  v81 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v82 = (v103 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  sub_10003D17C(v80, v83 + v81, &unk_101188920);
  sub_100059A8C(&v111, v83 + v82);
  v84 = (v83 + ((v82 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v84 = v75;
  v84[1] = v69;
  v85 = v109;
  v86 = v108;
  sub_1000089F8(v109, v108, &qword_101183A90);
  v87 = objc_allocWithZone(type metadata accessor for DragPreview());
  v88 = sub_100179BDC(v100, v98, v86, v79, &unk_100EE2830, v83, v106, v107, v49);

  sub_1000095E8(v85, &qword_101183A90);
  sub_1000095E8(v67, &unk_101188920);
  sub_10000959C(v114);
  return v88;
}

id sub_1007A172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v106 = a7;
  v103 = a6;
  v105 = a3;
  v104 = a2;
  v95 = type metadata accessor for MusicVideo();
  v91 = *(v95 - 8);
  __chkstk_darwin(v95);
  v90 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v93 = v89 - v12;
  v98 = type metadata accessor for Song();
  v94 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v97 = v89 - v15;
  v16 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v16 - 8);
  v107 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v108 = v89 - v19;
  v99 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin(v99);
  v21 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v89 - v23;
  v25 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v25 - 8);
  v27 = v89 - v26;
  v28 = sub_10010FC20(&unk_101188920);
  v100 = *(v28 - 8);
  v29 = *(v100 + 64);
  __chkstk_darwin(v28 - 8);
  v101 = v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v89 - v31;
  v34 = __chkstk_darwin(v33);
  v36 = v89 - v35;
  v37 = a4(0, v34);
  v113[3] = v37;
  v113[4] = a5;
  v38 = sub_10001C8B8(v113);
  (*(*(v37 - 8) + 32))(v38, a1, v37);
  sub_100008FE4(v113, v109);
  v39 = sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&qword_1011A2B58);
  v40 = swift_dynamicCast();
  v102 = v36;
  v96 = v39;
  if ((v40 & 1) == 0)
  {
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    sub_1000095E8(&v110, &qword_1011A2B60);
    goto LABEL_6;
  }

  v41 = *(&v111 + 1);
  v42 = v112;
  sub_10000954C(&v110, *(&v111 + 1));
  v43 = (*(v42 + 8))(v41, v42);
  sub_10000959C(&v110);
  if (!v43)
  {
LABEL_6:
    v48 = type metadata accessor for Artwork();
    v49 = 1;
    (*(*(v48 - 8) + 56))(v36, 1, 1, v48);
    v43 = 0;
    v50 = 1.0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  *&v110 = v43;
  v44 = sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);

  v89[1] = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v43 + v45, v24);

  sub_1000089F8(v24, v27, &unk_10118A5E0);
  sub_1007A4DE8(v24, type metadata accessor for ContextualPreview.Artwork);
  v46 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v46 - 8) + 48))(v27, 1, v46) == 1)
  {
    sub_1000095E8(v27, &unk_10118A5E0);
    v47 = type metadata accessor for Artwork();
    (*(*(v47 - 8) + 56))(v36, 1, 1, v47);
  }

  else
  {
    v51 = type metadata accessor for Artwork();
    v52 = *(v51 - 8);
    (*(v52 + 16))(v36, v27, v51);
    sub_1007A4DE8(v27, type metadata accessor for ArtworkImage.ViewModel);
    (*(v52 + 56))(v36, 0, 1, v51);
  }

  swift_getKeyPath();
  *&v110 = v43;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v43 + v53, v21);

  v50 = *&v21[*(v99 + 32)];
  sub_1007A4DE8(v21, type metadata accessor for ContextualPreview.Artwork);
  v49 = 0;
LABEL_9:
  v54 = type metadata accessor for UIView.Corner();
  v55 = *(*(v54 - 8) + 56);
  v55(v108, 1, 1, v54);
  if ((v49 & 1) == 0)
  {
    swift_getKeyPath();
    *&v110 = v43;
    sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v56 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
    swift_beginAccess();
    sub_1007A4D84(v43 + v56, v21);

    v57 = &v21[*(v99 + 36)];
    v58 = *v57;
    v59 = *(v57 + 1);
    v60 = v57[16];
    sub_1007A4DE8(v21, type metadata accessor for ContextualPreview.Artwork);
    if (static Corner.__derived_enum_equals(_:_:)(v58, v59, v60, 0, 0, 2))
    {
      v61 = v107;
      static UIView.Corner.rounded.getter();
      v62 = v108;
      sub_1000095E8(v108, &qword_101183A90);
      v55(v61, 0, 1, v54);
      sub_10003D17C(v61, v62, &qword_101183A90);
    }
  }

  sub_100008FE4(v113, &v110);
  v63 = v97;
  v64 = v98;
  v65 = swift_dynamicCast();
  v99 = v43;
  if (v65)
  {
    v66 = v94;
    v67 = v92;
    (*(v94 + 32))(v92, v63, v64);
    v97 = Song.title.getter();
    v96 = v68;
    v69 = v102;
    if (qword_10117F250 == -1)
    {
LABEL_14:
      v70 = *&qword_1012186B0;
      (*(v66 + 8))(v67, v64);
      v71 = v50 * v70;
      goto LABEL_21;
    }

LABEL_17:
    swift_once();
    goto LABEL_14;
  }

  v72 = v93;
  v64 = v95;
  v73 = swift_dynamicCast();
  v69 = v102;
  if (v73)
  {
    v66 = v91;
    v67 = v90;
    (*(v91 + 32))(v90, v72, v64);
    v97 = MusicVideo.title.getter();
    v96 = v74;
    if (qword_10117F250 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (qword_10117F240 != -1)
  {
    swift_once();
  }

  v97 = 0;
  v96 = 0;
  v71 = *&qword_1012186A0;
  v70 = 1.0 / v50 * *&qword_1012186A0;
LABEL_21:
  sub_10000959C(&v110);
  sub_1000089F8(v69, v32, &unk_101188920);
  v75 = type metadata accessor for Artwork();
  v76 = *(v75 - 8);
  if ((*(v76 + 48))(v32, 1, v75) == 1)
  {
    sub_1000095E8(v32, &unk_101188920);
LABEL_25:
    v78 = 0;
    goto LABEL_26;
  }

  v77 = Artwork.backgroundColor.getter();
  (*(v76 + 8))(v32, v75);
  if (!v77)
  {
    goto LABEL_25;
  }

  v78 = [objc_allocWithZone(UIColor) initWithCGColor:v77];

LABEL_26:
  v79 = v101;
  sub_1000089F8(v69, v101, &unk_101188920);
  sub_100008FE4(v113, &v110);
  v80 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v81 = (v29 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  sub_10003D17C(v79, v82 + v80, &unk_101188920);
  sub_100059A8C(&v110, v82 + v81);
  v83 = (v82 + ((v81 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v83 = v71;
  v83[1] = v70;
  v84 = v108;
  v85 = v107;
  sub_1000089F8(v108, v107, &qword_101183A90);
  v86 = objc_allocWithZone(type metadata accessor for DragPreview());
  v87 = sub_100179BDC(v97, v96, v85, v78, v106, v82, v104, v105, v50);

  sub_1000095E8(v84, &qword_101183A90);
  sub_1000095E8(v69, &unk_101188920);
  sub_10000959C(v113);
  return v87;
}

id sub_1007A250C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = a3;
  v104 = a2;
  v4 = type metadata accessor for MusicVideo();
  v89 = *(v4 - 8);
  __chkstk_darwin(v4);
  v88 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v92 = &v87 - v7;
  v8 = type metadata accessor for Song();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v91 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v87 - v12;
  v13 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v13 - 8);
  v106 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v87 - v16;
  v95 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin(v95);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v22 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v22 - 8);
  v24 = &v87 - v23;
  v25 = sub_10010FC20(&unk_101188920);
  v100 = *(v25 - 8);
  __chkstk_darwin(v25 - 8);
  v102 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v98 = &v87 - v28;
  v101 = v29;
  __chkstk_darwin(v30);
  v32 = &v87 - v31;
  v112[3] = v8;
  v112[4] = &protocol witness table for Song;
  v33 = sub_10001C8B8(v112);
  v93 = v9;
  v90 = *(v9 + 32);
  v90(v33, a1, v8);
  sub_100008FE4(v112, v108);
  v34 = sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&qword_1011A2B58);
  v96 = v34;
  v35 = swift_dynamicCast();
  v103 = v32;
  v94 = v4;
  if ((v35 & 1) == 0)
  {
    v111 = 0;
    v109 = 0u;
    v110 = 0u;
    sub_1000095E8(&v109, &qword_1011A2B60);
    goto LABEL_6;
  }

  v37 = *(&v110 + 1);
  v36 = v111;
  sub_10000954C(&v109, *(&v110 + 1));
  v38 = (*(v36 + 8))(v37, v36);
  sub_10000959C(&v109);
  if (!v38)
  {
LABEL_6:
    v43 = type metadata accessor for Artwork();
    v44 = 1;
    (*(*(v43 - 8) + 56))(v32, 1, 1, v43);
    v38 = 0;
    v45 = 1.0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  *&v109 = v38;
  v39 = sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);

  v99 = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v38 + v40, v21);

  sub_1000089F8(v21, v24, &unk_10118A5E0);
  sub_1007A4DE8(v21, type metadata accessor for ContextualPreview.Artwork);
  v41 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v41 - 8) + 48))(v24, 1, v41) == 1)
  {
    sub_1000095E8(v24, &unk_10118A5E0);
    v42 = type metadata accessor for Artwork();
    (*(*(v42 - 8) + 56))(v32, 1, 1, v42);
  }

  else
  {
    v46 = type metadata accessor for Artwork();
    v47 = *(v46 - 8);
    (*(v47 + 16))(v32, v24, v46);
    sub_1007A4DE8(v24, type metadata accessor for ArtworkImage.ViewModel);
    (*(v47 + 56))(v32, 0, 1, v46);
  }

  swift_getKeyPath();
  *&v109 = v38;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v38 + v48, v18);

  v45 = *&v18[*(v95 + 32)];
  sub_1007A4DE8(v18, type metadata accessor for ContextualPreview.Artwork);
  v44 = 0;
LABEL_9:
  v49 = type metadata accessor for UIView.Corner();
  v50 = *(*(v49 - 8) + 56);
  v50(v107, 1, 1, v49);
  if ((v44 & 1) == 0)
  {
    swift_getKeyPath();
    *&v109 = v38;
    sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v51 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
    swift_beginAccess();
    sub_1007A4D84(v38 + v51, v18);

    v52 = &v18[*(v95 + 36)];
    v53 = *v52;
    v54 = *(v52 + 1);
    v55 = v52[16];
    sub_1007A4DE8(v18, type metadata accessor for ContextualPreview.Artwork);
    if (static Corner.__derived_enum_equals(_:_:)(v53, v54, v55, 0, 0, 2))
    {
      v56 = v106;
      static UIView.Corner.rounded.getter();
      v57 = v107;
      sub_1000095E8(v107, &qword_101183A90);
      v50(v56, 0, 1, v49);
      sub_10003D17C(v56, v57, &qword_101183A90);
    }
  }

  sub_100008FE4(v112, &v109);
  v58 = v97;
  if (swift_dynamicCast())
  {
    v59 = v91;
    v90(v91, v58, v8);
    v97 = Song.title.getter();
    v96 = v60;
    v61 = v103;
    if (qword_10117F250 != -1)
    {
      swift_once();
    }

    v62 = *&qword_1012186B0;
    (*(v93 + 8))(v59, v8);
    v63 = v45 * v62;
    v64 = v98;
  }

  else
  {
    v65 = v92;
    v66 = v94;
    v67 = swift_dynamicCast();
    v61 = v103;
    if (v67)
    {
      v68 = v89;
      v69 = v88;
      (*(v89 + 32))(v88, v65, v66);
      v97 = MusicVideo.title.getter();
      v96 = v70;
      v64 = v98;
      if (qword_10117F250 != -1)
      {
        swift_once();
      }

      v62 = *&qword_1012186B0;
      (*(v68 + 8))(v69, v66);
      v63 = v45 * v62;
    }

    else
    {
      v64 = v98;
      if (qword_10117F240 != -1)
      {
        swift_once();
      }

      v97 = 0;
      v96 = 0;
      v63 = *&qword_1012186A0;
      v62 = 1.0 / v45 * *&qword_1012186A0;
    }
  }

  sub_10000959C(&v109);
  sub_1000089F8(v61, v64, &unk_101188920);
  v71 = type metadata accessor for Artwork();
  v72 = *(v71 - 8);
  v73 = (*(v72 + 48))(v64, 1, v71);
  v99 = v38;
  if (v73 == 1)
  {
    sub_1000095E8(v64, &unk_101188920);
LABEL_27:
    v75 = 0;
    goto LABEL_28;
  }

  v74 = Artwork.backgroundColor.getter();
  (*(v72 + 8))(v64, v71);
  if (!v74)
  {
    goto LABEL_27;
  }

  v75 = [objc_allocWithZone(UIColor) initWithCGColor:v74];

LABEL_28:
  v76 = v102;
  sub_1000089F8(v61, v102, &unk_101188920);
  sub_100008FE4(v112, &v109);
  v77 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v78 = v61;
  v79 = (v101 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  sub_10003D17C(v76, v80 + v77, &unk_101188920);
  sub_100059A8C(&v109, v80 + v79);
  v81 = (v80 + ((v79 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v81 = v63;
  v81[1] = v62;
  v82 = v107;
  v83 = v106;
  sub_1000089F8(v107, v106, &qword_101183A90);
  v84 = objc_allocWithZone(type metadata accessor for DragPreview());
  v85 = sub_100179BDC(v97, v96, v83, v75, &unk_100EE27F8, v80, v104, v105, v45);

  sub_1000095E8(v82, &qword_101183A90);
  sub_1000095E8(v78, &unk_101188920);
  sub_10000959C(v112);
  return v85;
}

id sub_1007A3340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128), unint64_t *a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v102 = a8;
  v104 = a3;
  v103 = a2;
  v95 = type metadata accessor for MusicVideo();
  v91 = *(v95 - 8);
  __chkstk_darwin(v95);
  v90 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v93 = &v89 - v15;
  v99 = type metadata accessor for Song();
  v94 = *(v99 - 8);
  __chkstk_darwin(v99);
  v92 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v98 = &v89 - v18;
  v19 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v19 - 8);
  v105 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v106 = &v89 - v22;
  v96 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin(v96);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v89 - v26;
  v28 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v28 - 8);
  v30 = &v89 - v29;
  v31 = sub_10010FC20(&unk_101188920);
  v100 = *(v31 - 8);
  v32 = *(v100 + 64);
  __chkstk_darwin(v31 - 8);
  v101 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v89 - v34;
  v37 = __chkstk_darwin(v36);
  v107 = &v89 - v38;
  v39 = a4(0, v37);
  v112[3] = v39;
  v112[4] = sub_1007A51BC(a5, a6);
  v40 = sub_10001C8B8(v112);
  (*(*(v39 - 8) + 32))(v40, a1, v39);
  sub_100008FE4(v112, v108);
  v41 = sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&qword_1011A2B58);
  v42 = swift_dynamicCast();
  v97 = v41;
  if ((v42 & 1) == 0)
  {
    v111 = 0;
    v109 = 0u;
    v110 = 0u;
    sub_1000095E8(&v109, &qword_1011A2B60);
    goto LABEL_6;
  }

  v43 = *(&v110 + 1);
  v44 = v111;
  sub_10000954C(&v109, *(&v110 + 1));
  v45 = (*(v44 + 8))(v43, v44);
  sub_10000959C(&v109);
  if (!v45)
  {
LABEL_6:
    v49 = type metadata accessor for Artwork();
    v50 = 1;
    (*(*(v49 - 8) + 56))(v107, 1, 1, v49);
    v45 = 0;
    v51 = 1.0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  *&v109 = v45;
  sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v45 + v46, v27);

  sub_1000089F8(v27, v30, &unk_10118A5E0);
  sub_1007A4DE8(v27, type metadata accessor for ContextualPreview.Artwork);
  v47 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v47 - 8) + 48))(v30, 1, v47) == 1)
  {
    sub_1000095E8(v30, &unk_10118A5E0);
    v48 = type metadata accessor for Artwork();
    (*(*(v48 - 8) + 56))(v107, 1, 1, v48);
  }

  else
  {
    v52 = type metadata accessor for Artwork();
    v53 = *(v52 - 8);
    v54 = v107;
    (*(v53 + 16))(v107, v30, v52);
    sub_1007A4DE8(v30, type metadata accessor for ArtworkImage.ViewModel);
    (*(v53 + 56))(v54, 0, 1, v52);
  }

  swift_getKeyPath();
  *&v109 = v45;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v45 + v55, v24);

  v51 = *&v24[*(v96 + 32)];
  sub_1007A4DE8(v24, type metadata accessor for ContextualPreview.Artwork);
  v50 = 0;
LABEL_9:
  v56 = type metadata accessor for UIView.Corner();
  v57 = *(*(v56 - 8) + 56);
  v57(v106, 1, 1, v56);
  if ((v50 & 1) == 0)
  {
    swift_getKeyPath();
    *&v109 = v45;
    sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
    swift_beginAccess();
    sub_1007A4D84(v45 + v58, v24);

    v59 = &v24[*(v96 + 36)];
    v60 = *v59;
    v61 = *(v59 + 1);
    v62 = v59[16];
    sub_1007A4DE8(v24, type metadata accessor for ContextualPreview.Artwork);
    if (static Corner.__derived_enum_equals(_:_:)(v60, v61, v62, 0, 0, 2))
    {
      v63 = v105;
      static UIView.Corner.rounded.getter();
      v64 = v106;
      sub_1000095E8(v106, &qword_101183A90);
      v57(v63, 0, 1, v56);
      sub_10003D17C(v63, v64, &qword_101183A90);
    }
  }

  v96 = a9;
  sub_100008FE4(v112, &v109);
  v65 = v98;
  v66 = v99;
  if (swift_dynamicCast())
  {
    v67 = v94;
    v68 = v92;
    (*(v94 + 32))(v92, v65, v66);
    v69 = Song.title.getter();
LABEL_16:
    v98 = v69;
    v97 = v70;
    if (qword_10117F250 != -1)
    {
      swift_once();
    }

    v72 = *&qword_1012186B0;
    (*(v67 + 8))(v68, v66);
    v73 = v51 * v72;
    goto LABEL_22;
  }

  v71 = v93;
  v66 = v95;
  if (swift_dynamicCast())
  {
    v67 = v91;
    v68 = v90;
    (*(v91 + 32))(v90, v71, v66);
    v69 = MusicVideo.title.getter();
    goto LABEL_16;
  }

  if (qword_10117F240 != -1)
  {
    swift_once();
  }

  v98 = 0;
  v97 = 0;
  v73 = *&qword_1012186A0;
  v72 = 1.0 / v51 * *&qword_1012186A0;
LABEL_22:
  sub_10000959C(&v109);
  sub_1000089F8(v107, v35, &unk_101188920);
  v74 = type metadata accessor for Artwork();
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v35, 1, v74) == 1)
  {
    sub_1000095E8(v35, &unk_101188920);
LABEL_26:
    v77 = 0;
    goto LABEL_27;
  }

  v76 = Artwork.backgroundColor.getter();
  (*(v75 + 8))(v35, v74);
  if (!v76)
  {
    goto LABEL_26;
  }

  v77 = [objc_allocWithZone(UIColor) initWithCGColor:v76];

LABEL_27:
  v78 = v107;
  v79 = v101;
  sub_1000089F8(v107, v101, &unk_101188920);
  sub_100008FE4(v112, &v109);
  v80 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v81 = (v32 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  sub_10003D17C(v79, v82 + v80, &unk_101188920);
  sub_100059A8C(&v109, v82 + v81);
  v83 = (v82 + ((v81 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v83 = v73;
  v83[1] = v72;
  v84 = v106;
  v85 = v105;
  sub_1000089F8(v106, v105, &qword_101183A90);
  v86 = objc_allocWithZone(type metadata accessor for DragPreview());
  v87 = sub_100179BDC(v98, v97, v85, v77, v96, v82, v103, v104, v51);

  sub_1000095E8(v84, &qword_101183A90);
  sub_1000095E8(v78, &unk_101188920);
  sub_10000959C(v112);
  return v87;
}

uint64_t sub_1007A411C(uint64_t a1)
{
  v42 = type metadata accessor for MusicPin();
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Curator();
  v40 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Composer();
  v43 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Artist();
  v46 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Station();
  v49 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TVSeason();
  v52 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Playlist.Folder();
  v55 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Playlist();
  v58 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Album();
  v61 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicMovie();
  v64 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TVEpisode();
  v67 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicVideo();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Song();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(a1);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v23 + 24))
  {
    sub_1000095E8(v23, &qword_10118B990);
    return 4;
  }

  v38 = v11;
  sub_100059A8C(v23, v70);
  sub_100008FE4(v70, v68);
  sub_10010FC20(&unk_10118AB50);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      (*(v18 + 8))(v20, v17);
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      (*(v67 + 8))(v16, v14);
      goto LABEL_12;
    }

    v27 = v38;
    if (swift_dynamicCast())
    {
      (*(v64 + 8))(v13, v27);
      goto LABEL_12;
    }

    v29 = v65;
    v28 = v66;
    if (swift_dynamicCast())
    {
      v30 = v61;
LABEL_25:
      (*(v30 + 8))(v29, v28);
      sub_10000959C(v68);
      sub_10000959C(v70);
      return 1;
    }

    v29 = v62;
    v28 = v63;
    if (swift_dynamicCast())
    {
      v30 = v58;
      goto LABEL_25;
    }

    v29 = v59;
    v28 = v60;
    if (swift_dynamicCast())
    {
      v31 = &v75;
LABEL_24:
      v30 = *(v31 - 32);
      goto LABEL_25;
    }

    v29 = v56;
    v28 = v57;
    if (swift_dynamicCast())
    {
      v31 = &v74;
      goto LABEL_24;
    }

    v29 = v53;
    v28 = v54;
    if (swift_dynamicCast())
    {
      v31 = &v73;
      goto LABEL_24;
    }

    v32 = v50;
    v33 = v51;
    if (swift_dynamicCast())
    {
      v34 = &v72;
LABEL_32:
      (*(*(v34 - 32) + 8))(v32, v33);
      sub_10000959C(v68);
      sub_10000959C(v70);
      return 2;
    }

    v32 = v47;
    v33 = v48;
    if (swift_dynamicCast())
    {
      v34 = &v71;
      goto LABEL_32;
    }

    v32 = v44;
    v33 = v45;
    if (swift_dynamicCast())
    {
      v34 = &v69;
      goto LABEL_32;
    }

    v35 = v41;
    v36 = v42;
    if (swift_dynamicCast())
    {
      (*(v39 + 8))(v35, v36);
      sub_10000959C(v68);
      sub_10000959C(v70);
      return 3;
    }

    sub_10000959C(v68);
    sub_10000959C(v70);
    return 4;
  }

  (*(v22 + 8))(v25, v21);
LABEL_12:
  sub_10000959C(v68);
  sub_10000959C(v70);
  return 0;
}

uint64_t sub_1007A4B94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10017B360(a1, v4, v5, (v1 + 4), v6, (v1 + 10));
}

uint64_t sub_1007A4C58()
{
  v2 = *(sub_10010FC20(&unk_101188920) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1007A5224;

  return sub_1001790FC(v0 + v3, v0 + v4, v6, v7);
}

uint64_t sub_1007A4D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualPreview.Artwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007A4DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007A4E48()
{
  swift_unknownObjectRelease();
  sub_10000959C(v0 + 32);

  sub_10000959C(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1007A4E98()
{
  v1 = *(sub_10010FC20(&unk_101188920) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  sub_10000959C(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1007A4FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10017B360(a1, v4, v5, (v1 + 4), v6, (v1 + 10));
}

uint64_t sub_1007A5090()
{
  v2 = *(sub_10010FC20(&unk_101188920) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1001F6C0C;

  return sub_1001790FC(v0 + v3, v0 + v4, v6, v7);
}

uint64_t sub_1007A51BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1007A529C()
{
  _s13ConfigurationCMa(319);
  if (v0 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011A2BD0, &unk_101192B80, &unk_100ED0200, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_1007B7D14(319, &qword_1011878B0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1007B5E34(319, &unk_1011A2BD8, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1007A5484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

double sub_1007A5554@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&qword_101192A00, _s7MetricsCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

double sub_1007A5624@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&qword_101192A00, _s7MetricsCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

double sub_1007A56F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&qword_101192A00, _s7MetricsCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_1007A57C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1007A5920@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__title + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
  a2[1] = v4;
}

uint64_t sub_1007A59D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1005F42E0(v1, v2);
}

uint64_t sub_1007A5A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_10010FC20(a5);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_1000089F8(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_1007A5B10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution;
  v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution);
  v6 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 8);
  *a2 = v5;
  *(a2 + 8) = v6;
  v7 = *(v4 + 16);
  *(a2 + 16) = v7;
  return sub_1005F94C0(v5, v6, v7);
}

uint64_t sub_1007A5BD0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_1005F94C0(*a1, v2, v3);
  return sub_1005F4744(v1, v2, v3);
}

uint64_t sub_1007A5C20@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);
  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_100029B94;
  a2[1] = v6;
}

uint64_t sub_1007A5D04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1007A5E20@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction);
  v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10018A020;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_100030444(v4);
}

uint64_t sub_1007A5F18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1007B86AC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100030444(v1);
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(v4);
}

uint64_t sub_1007A6098@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return sub_1000089F8(v7 + v8, a4, a3);
}

uint64_t sub_1007A617C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10010FC20(&unk_1011A4760);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_1000089F8(a1, &v9[-v5], &unk_1011A4760);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(v6, &unk_1011A4760);
}

void sub_1007A62CC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v6 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  v7 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_1004E5E44(v4, v5, v6);
}

void sub_1007A638C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_1004E5E44(*a1, v2, v3);
  sub_1005F4CC8(v1, v2, v3, v4);
}

uint64_t sub_1007A6400@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1007A64E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider);
  v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_100EDFA20;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_100030444(v4);
}

uint64_t sub_1007A65DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = &unk_100EE2BB0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100030444(v1);
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(v4);
}

uint64_t sub_1007A6738@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);
}

uint64_t sub_1007A68E0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1007A69BC@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v84 = type metadata accessor for ColorScheme();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v82 = &v65 - v4;
  v67 = type metadata accessor for EnvironmentValues();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Header(0);
  v88 = *(v80 - 8);
  v6 = *(v88 + 64);
  __chkstk_darwin(v80);
  v69 = (sub_10010FC20(&qword_1011A2C10) - 8);
  __chkstk_darwin(v69);
  v8 = &v65 - v7;
  v72 = sub_10010FC20(&qword_1011A2C18);
  __chkstk_darwin(v72);
  v74 = &v65 - v9;
  v73 = sub_10010FC20(&qword_1011A2C20);
  __chkstk_darwin(v73);
  v77 = &v65 - v10;
  v75 = sub_10010FC20(&qword_1011A2C28);
  __chkstk_darwin(v75);
  v79 = &v65 - v11;
  v12 = *v1;
  swift_getKeyPath();
  v89 = OBJC_IVAR____TtCV5Music6Header13Configuration___observationRegistrar;
  *&v92 = v12;
  v90 = sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v87 = OBJC_IVAR____TtCV5Music6Header13Configuration__metrics;
  v13 = *(v12 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);
  swift_getKeyPath();
  *&v92 = v13;
  v86 = sub_1007B46CC(&qword_101192A00, _s7MetricsCMa);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v68 = *(v13 + 24);

  v14 = v1;
  sub_1007B4EC8(v1, &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Header);
  v15 = *(v88 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = swift_allocObject();
  sub_1007B4A28(&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for Header);
  v88 = v14;
  sub_1007B4EC8(v14, &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Header);
  v76 = v6;
  v70 = v15;
  v18 = swift_allocObject();
  v71 = v16;
  v78 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007B4A28(v78, v18 + v16, type metadata accessor for Header);
  v19 = sub_10010FC20(&qword_1011A2C30);
  v20 = *(v19 + 60);
  *&v8[v20] = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250);
  swift_storeEnumTagMultiPayload();
  v21 = &v8[*(v19 + 64)];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  *v8 = v68;
  v8[8] = 0;
  *(v8 + 2) = sub_1007B4714;
  *(v8 + 3) = v17;
  *(v8 + 4) = sub_1007B4878;
  *(v8 + 5) = v18;
  LOBYTE(v18) = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  *&v92 = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v12 + v87);
  swift_getKeyPath();
  *&v92 = v22;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  EdgeInsets.init(_all:)();
  v23 = *(v69 + 11);
  v69 = v8;
  v24 = &v8[v23];
  *v24 = v18;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  swift_getKeyPath();
  *&v92 = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v12 + 16) != 2)
  {
    LODWORD(v68) = *(v12 + 16);
    swift_getKeyPath();
    *&v92 = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v29 = v87;
    v30 = *(v12 + v87);
    swift_getKeyPath();
    *&v92 = v30;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *&v92 = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = *(v12 + v29);
    swift_getKeyPath();
    *&v92 = v31;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = v88 + *(v80 + 28);
    v33 = *v32;
    if (*(v32 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v34 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v35 = v65;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000D8F20(v33, 0);
      (*(v66 + 8))(v35, v67);
    }
  }

  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = v74;
  sub_10003D17C(v69, v74, &qword_1011A2C10);
  v37 = (v36 + *(v72 + 36));
  v38 = v97;
  v37[4] = v96;
  v37[5] = v38;
  v37[6] = v98;
  v39 = v93;
  *v37 = v92;
  v37[1] = v39;
  v40 = v95;
  v37[2] = v94;
  v37[3] = v40;
  v41 = v78;
  sub_1007B4EC8(v88, v78, type metadata accessor for Header);
  v42 = v71;
  v43 = swift_allocObject();
  sub_1007B4A28(v41, v43 + v42, type metadata accessor for Header);
  v44 = static Alignment.center.getter();
  v46 = v45;
  v47 = v77;
  sub_10003D17C(v36, v77, &qword_1011A2C18);
  v48 = (v47 + *(v73 + 36));
  *v48 = sub_1007B4924;
  v48[1] = v43;
  v48[2] = v44;
  v48[3] = v46;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v91 = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v44) = *(v12 + 16);
  v50 = v79;
  sub_10003D17C(v47, v79, &qword_1011A2C20);
  v51 = v50 + *(v75 + 36);
  *v51 = KeyPath;
  *(v51 + 8) = v44;
  v52 = swift_getKeyPath();
  swift_getKeyPath();
  v91 = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = *(v12 + 16);
  if (v53 == 2)
  {
    v54 = v81;
    sub_10056CEEC(v81);
    v55 = v84;
    v56 = v83;
  }

  else
  {
    v56 = v83;
    v55 = v84;
    v54 = v81;
    if (v53)
    {
      v57 = &enum case for ColorScheme.light(_:);
    }

    else
    {
      v57 = &enum case for ColorScheme.dark(_:);
    }

    (*(v83 + 104))(v81, *v57, v84);
  }

  v58 = *(v56 + 32);
  v59 = v82;
  v58(v82, v54, v55);
  v60 = sub_10010FC20(&qword_1011A2C38);
  v61 = v85;
  v62 = (v85 + *(v60 + 36));
  v63 = sub_10010FC20(&qword_10118F360);
  v58(v62 + *(v63 + 28), v59, v55);
  *v62 = v52;
  return sub_10003D17C(v50, v61, &qword_1011A2C28);
}

uint64_t sub_1007A76DC@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&qword_1011A2C60);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - v8;
  v10 = *a2;
  swift_getKeyPath();
  v13[1] = v10;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v10 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork))
  {
    v11 = 1;
  }

  else
  {
    sub_1007A7880(a2, a1 & 1, v9);
    sub_10003D17C(v9, a3, &qword_1011A2C60);
    v11 = 0;
  }

  return (*(v7 + 56))(a3, v11, 1, v6);
}

uint64_t sub_1007A7880@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v107) = a2;
  v111 = a3;
  v109 = sub_10010FC20(&qword_1011A2C68);
  __chkstk_darwin(v109);
  v110 = (&v80 - v4);
  v95 = type metadata accessor for AccessibilityTraits();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for PlainButtonStyle();
  v89 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10010FC20(&qword_1011A2C70);
  v82 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - v7;
  v90 = sub_10010FC20(&qword_1011A2C78);
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v83 = &v80 - v8;
  v85 = sub_10010FC20(&qword_1011A2C80);
  __chkstk_darwin(v85);
  v87 = &v80 - v9;
  v101 = sub_10010FC20(&qword_1011A2C88);
  __chkstk_darwin(v101);
  v91 = &v80 - v10;
  v99 = sub_10010FC20(&qword_1011A2C90);
  __chkstk_darwin(v99);
  v100 = &v80 - v11;
  v108 = sub_10010FC20(&qword_1011A2C98);
  __chkstk_darwin(v108);
  v102 = &v80 - v12;
  v13 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v13 - 8);
  v98 = &v80 - v14;
  v97 = type metadata accessor for EditorialVideoArtworkFlavor();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Header.AdaptativeArtwork(0);
  __chkstk_darwin(v103);
  v104 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v18 - 8);
  v20 = &v80 - v19;
  v21 = type metadata accessor for ArtworkImage.Info(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v106 = &v80 - v26;
  v105 = a1;
  v27 = *a1;
  swift_getKeyPath();
  v113 = v27;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v27 + 16) != 2)
  {
LABEL_4:
    v29 = static Color.clear.getter();
    swift_getKeyPath();
    v113 = v27;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v107)
    {
      v30 = &v118;
      v31 = 300.0;
      v32 = 300.0;
    }

    else
    {
      v33 = *(v27 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);
      swift_getKeyPath();
      v113 = v33;
      sub_1007B46CC(&qword_101192A00, _s7MetricsCMa);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v34 = *(v33 + 16);

      v31 = v34 + -136.0;
      v30 = &v112;
      v32 = v34 + -136.0;
    }

    ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*&v31, 0, *&v32, 0, 0, 1, 2, v30);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v35 = v113;
    v36 = v114;
    v37 = v115;
    v38 = v116;
    v39 = v110;
    *v110 = v29;
    v39[1] = v35;
    *(v39 + 16) = v36;
    v39[3] = v37;
    *(v39 + 32) = v38;
    *(v39 + 5) = v117;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011950E8);
    sub_1007B4BD4();
    sub_1007B7AFC(&qword_1011950F0, &qword_1011950E8);
    return _ConditionalContent<>.init(storage:)();
  }

  swift_getKeyPath();
  v113 = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo;
  swift_beginAccess();
  sub_1000089F8(v27 + v28, v20, &unk_10119F000);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000095E8(v20, &unk_10119F000);
    goto LABEL_4;
  }

  v41 = v106;
  sub_1007B4A28(v20, v106, type metadata accessor for ArtworkImage.Info);
  sub_1007B4EC8(v41, v24, type metadata accessor for ArtworkImage.Info);
  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  swift_getKeyPath();
  v113 = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v27 + OBJC_IVAR____TtCV5Music6Header13Configuration__videoArtworks);
  if (!*(v42 + 16))
  {
    goto LABEL_12;
  }

  v43 = sub_1006BE63C(v16);
  if ((v44 & 1) == 0)
  {

LABEL_12:
    (*(v96 + 8))(v16, v97);
    v53 = type metadata accessor for VideoArtwork();
    v52 = v98;
    (*(*(v53 - 8) + 56))(v98, 1, 1, v53);
    goto LABEL_13;
  }

  v45 = v43;
  v46 = *(v42 + 56);
  v47 = type metadata accessor for VideoArtwork();
  v48 = *(v47 - 8);
  v49 = v48;
  v50 = v46 + *(v48 + 72) * v45;
  v51 = v98;
  (*(v48 + 16))(v98, v50, v47);
  (*(v96 + 8))(v16, v97);

  (*(v49 + 56))(v51, 0, 1, v47);
  v52 = v51;
LABEL_13:
  v54 = v103;
  swift_getKeyPath();
  v113 = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = *(v27 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

  v56 = sub_1007A8A48();
  v58 = v57;
  v59 = v104;
  sub_1007B4A28(v24, v104, type metadata accessor for ArtworkImage.Info);
  sub_10003D17C(v52, v59 + v54[5], &unk_101192950);
  *(v59 + v54[6]) = v55;
  v60 = (v59 + v54[7]);
  *v60 = v56;
  v60[1] = v58;
  v61 = v59 + v54[8];
  *v61 = swift_getKeyPath();
  *(v61 + 8) = 0;
  swift_getKeyPath();
  v113 = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v63 = *(v27 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction);
  if (v63)
  {
    __chkstk_darwin(v62);
    *(&v80 - 2) = v59;
    sub_100030444(v63);
    v107 = sub_1007B46CC(qword_1011A2CC0, type metadata accessor for Header.AdaptativeArtwork);

    v64 = v81;
    Button.init(action:label:)();
    v65 = v84;
    PlainButtonStyle.init()();
    v66 = sub_100020674(&qword_1011A2CB8, &qword_1011A2C70);
    v67 = sub_1007B46CC(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
    v68 = v83;
    v69 = v86;
    v70 = v92;
    View.buttonStyle<A>(_:)();
    (*(v89 + 8))(v65, v70);
    (*(v82 + 8))(v64, v69);
    v71 = sub_1007A8A48();
    v73 = v72;
    v113 = v69;
    v114 = v70;
    v115 = v66;
    v116 = v67;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v75 = v87;
    v76 = v90;
    View.accessibilityLabel(_:)(v71, v73, v90, OpaqueTypeConformance2);

    (*(v88 + 8))(v68, v76);
    v77 = v93;
    static AccessibilityTraits.isImage.getter();
    sub_1007B4D4C();
    v78 = v91;
    View.accessibilityAddTraits(_:)();
    (*(v94 + 8))(v77, v95);
    sub_1000095E8(v75, &qword_1011A2C80);
    sub_1000089F8(v78, v100, &qword_1011A2C88);
    swift_storeEnumTagMultiPayload();
    sub_1007B4C90();
    v79 = v102;
    v59 = v104;
    _ConditionalContent<>.init(storage:)();
    sub_100020438(v63);
    sub_1000095E8(v78, &qword_1011A2C88);
  }

  else
  {
    sub_1007B4EC8(v59, v100, type metadata accessor for Header.AdaptativeArtwork);
    swift_storeEnumTagMultiPayload();
    sub_1007B4C90();
    sub_1007B46CC(qword_1011A2CC0, type metadata accessor for Header.AdaptativeArtwork);
    v79 = v102;
    _ConditionalContent<>.init(storage:)();
  }

  sub_1000089F8(v79, v110, &qword_1011A2C98);
  swift_storeEnumTagMultiPayload();
  sub_10010FC20(&qword_1011950E8);
  sub_1007B4BD4();
  sub_1007B7AFC(&qword_1011950F0, &qword_1011950E8);
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v79, &qword_1011A2C98);
  sub_1007B4F64(v106, type metadata accessor for ArtworkImage.Info);
  return sub_1007B4F64(v59, type metadata accessor for Header.AdaptativeArtwork);
}

uint64_t sub_1007A8A48()
{
  v1 = sub_10010FC20(&unk_1011A4760);
  __chkstk_darwin(v1 - 8);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = *v0;
  swift_getKeyPath();
  v14[1] = v7;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtCV5Music6Header13Configuration__metadata;
  swift_beginAccess();
  sub_1000089F8(v7 + v8, v6, &unk_1011A4760);
  v9 = _s8MetadataV13ConfigurationOMa(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1 || (sub_1000089F8(v6, v3, &unk_1011A4760), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_1007B4F64(v3, _s8MetadataV13ConfigurationOMa), EnumCaseMultiPayload == 1))
  {
    if (qword_10117F700 != -1)
    {
      swift_once();
    }

    v11 = &qword_101218CB8;
  }

  else
  {
    if (qword_10117F6F8 != -1)
    {
      swift_once();
    }

    v11 = &qword_101218CA8;
  }

  v12 = *v11;

  sub_1000095E8(v6, &unk_1011A4760);
  return v12;
}

uint64_t sub_1007A8CD4@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = sub_10010FC20(&qword_1011A2C48);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_10010FC20(&qword_1011A2C50);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  if (a1)
  {
    v11 = static HorizontalAlignment.leading.getter();
  }

  else
  {
    v11 = static HorizontalAlignment.center.getter();
  }

  v12 = v11;
  v13 = *a2;
  swift_getKeyPath();
  *&v25 = v13;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v13) = *(v13 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork);
  v14 = &v7[v5[31]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  *v7 = v12;
  v7[8] = v13;
  sub_1007A8FC8(a2, &v7[v5[26]]);
  sub_1007A92B4(a2, &v7[v5[27]]);
  sub_1007A94BC(a2, &v7[v5[28]]);
  sub_1007A981C(a2, &v7[v5[29]]);
  sub_1007A99A0(a2, &v7[v5[30]]);
  if (a1)
  {
    static Alignment.leading.getter();
  }

  else
  {
    static Alignment.center.getter();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v7, v10, &qword_1011A2C48);
  v15 = &v10[*(v8 + 36)];
  v16 = v30;
  *(v15 + 4) = v29;
  *(v15 + 5) = v16;
  *(v15 + 6) = v31;
  v17 = v26;
  *v15 = v25;
  *(v15 + 1) = v17;
  v18 = v28;
  *(v15 + 2) = v27;
  *(v15 + 3) = v18;
  v19 = static Anchor.Source<A>.top.getter();
  v20 = v24;
  sub_10003D17C(v10, v24, &qword_1011A2C50);
  result = sub_10010FC20(&qword_1011A2C58);
  v22 = (v20 + *(result + 36));
  *v22 = v19;
  v22[1] = sub_10060FBA8;
  v22[2] = 0;
  return result;
}

uint64_t sub_1007A8FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s5TitleVMa(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  swift_getKeyPath();
  v19 = v8;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = (v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
  v10 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__title + 8);
  v11 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__title) & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  if (v11 && (swift_getKeyPath(), v19 = v8, ObservationRegistrar.access<A, B>(_:keyPath:)(), , (*(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) & 1) == 0))
  {
    swift_getKeyPath();
    v19 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = v9[1];
    v18 = *v9;
    swift_getKeyPath();
    v19 = v8;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus;
    swift_beginAccess();
    sub_1000089F8(v8 + v14, v7 + v4[5], &qword_1011831D0);
    v15 = v7 + v4[6];
    *v15 = swift_getKeyPath();
    v15[8] = 0;
    v16 = v4[7];
    *(v7 + v16) = swift_getKeyPath();
    sub_10010FC20(&qword_10118A610);
    swift_storeEnumTagMultiPayload();
    *v7 = v18;
    v7[1] = v13;
    sub_1007B4A28(v7, a2, _s5TitleVMa);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v5 + 56))(a2, v12, 1, v4);
}

uint64_t sub_1007A92B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) & 1) != 0 || (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), result = , v5 = (v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution), v6 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 16), v6 == 255))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
LABEL_9:
    v11 = 0;
    v10 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v7 = *v5;
  v8 = v5[1];
  if (v6)
  {
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_12:
    v7 = 0;
    v8 = 0;
    goto LABEL_9;
  }

LABEL_7:
  swift_getKeyPath();
  sub_1005F94B4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);
  v10 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction + 8);
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution);
  v9 = v6 & 1;
LABEL_10:
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  return result;
}

uint64_t sub_1007A94BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a2;
  v3 = _s8MetadataVMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011A4760);
  __chkstk_darwin(v7 - 8);
  v9 = v22 - v8;
  v10 = _s8MetadataV13ConfigurationOMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  swift_getKeyPath();
  v22[1] = v14;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtCV5Music6Header13Configuration__metadata;
  swift_beginAccess();
  sub_1000089F8(v14 + v15, v9, &unk_1011A4760);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &unk_1011A4760);
LABEL_6:
    v20 = 1;
    v19 = v22[0];
    return (*(v4 + 56))(v19, v20, 1, v3);
  }

  sub_1007B4A28(v9, v13, _s8MetadataV13ConfigurationOMa);
  if ((sub_1005FD7A8() & 1) == 0)
  {
    sub_1007B4F64(v13, _s8MetadataV13ConfigurationOMa);
    goto LABEL_6;
  }

  sub_1007B4A28(v13, v6, _s8MetadataV13ConfigurationOMa);
  v16 = &v6[*(v3 + 20)];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = &v6[*(v3 + 24)];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v22[0];
  sub_1007B4A28(v6, v22[0], _s8MetadataVMa);
  v19 = v18;
  v20 = 0;
  return (*(v4 + 56))(v19, v20, 1, v3);
}

uint64_t sub_1007A981C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = (v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v6 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  if (!v6)
  {
    v7 = 0;
LABEL_8:
    v8 = 0;
    v9 = 0;
    KeyPath = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v7 = *v5;
  v8 = v5[2];
  v9 = v5[3];
  v10 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    sub_100030444(v8);

    result = sub_100020438(v8);
    v7 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();

  result = sub_100030444(v8);
LABEL_9:
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v12;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1007A99A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s16PlaybackControlsVMa();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_getKeyPath();
  v16 = v8;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls))
  {
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  swift_getKeyPath();
  v16 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = a2;
  v10 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider);
  v11 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider + 8);
  swift_getKeyPath();
  v16 = v8;
  sub_100030444(v10);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__playIntentButtonIntents);
  *(v7 + 3) = swift_getKeyPath();
  v7[32] = 0;
  v13 = *(v4 + 28);
  *&v7[v13] = swift_getKeyPath();
  sub_10010FC20(&qword_10118E3F8);
  swift_storeEnumTagMultiPayload();
  *v7 = v10;
  *(v7 + 1) = v11;
  *(v7 + 2) = v12;
  v14 = v15;
  sub_1007B4A28(v7, v15, _s16PlaybackControlsVMa);
  (*(v5 + 56))(v14, 0, 1, v4);
}

uint64_t sub_1007A9C38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v6 = type metadata accessor for Header(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a1;
  sub_1007B4EC8(a2, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Header);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_1007B4A28(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for Header);
  *a3 = sub_1007B49A4;
  a3[1] = v11;
}

uint64_t sub_1007A9D6C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = static Color.clear.getter();
  if (a1)
  {
    type metadata accessor for CGPoint(0);

    GeometryProxy.subscript.getter();

    sub_10010FC20(&qword_1011A2C40);
    Binding.wrappedValue.setter();
  }

  else
  {
    sub_10010FC20(&qword_1011A2C40);
    result = Binding.wrappedValue.setter();
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1007A9EA4(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v5);
  v3 = v5;
  result = *a1;
  if (v5)
  {

    result = v3;
  }

  *a1 = result;
  return result;
}

uint64_t sub_1007A9EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v8 + 16);
  sub_1001109D0(&qword_1011A2EF0);
  type metadata accessor for ModifiedContent();
  v26 = *(a1 + 24);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for AdaptativeContainerStack();
  type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v32 = &protocol witness table for _PaddingLayout;
  v29 = swift_getWitnessTable();
  v30 = &protocol witness table for _PaddingLayout;
  v25 = v9;
  swift_getWitnessTable();
  v10 = type metadata accessor for AdaptativeContainer();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v25 - v16;
  (*(v5 + 16))(v7, v3, a1, v15);
  v18 = v5;
  v19 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 16) = v27;
  *(v20 + 24) = v21;
  *(v20 + 32) = *(a1 + 32);
  (*(v18 + 32))(v20 + v19, v7, a1);
  sub_1006E3E84(sub_1007B652C, v20, v13);
  v22 = swift_getWitnessTable();
  sub_100663950(v13, v10, v22);
  v23 = *(v11 + 8);
  v23(v13, v10);
  sub_100663950(v17, v10, v22);
  return v23(v17, v10);
}

uint64_t sub_1007AA2A0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a6;
  v66 = a7;
  v71 = a3;
  v72 = a4;
  v64 = a5;
  v73 = a5;
  v74 = a6;
  v11 = type metadata accessor for Header.Content();
  v12 = *(v11 - 8);
  v58 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v48[-v13];
  sub_1001109D0(&qword_1011A2EF0);
  v62 = a3;
  type metadata accessor for ModifiedContent();
  v63 = a4;
  type metadata accessor for ModifiedContent();
  v15 = a2;
  swift_getTupleTypeMetadata2();
  v16 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v53 = v16;
  v51 = WitnessTable;
  v18 = type metadata accessor for AdaptativeContainerStack();
  v56 = *(v18 - 8);
  __chkstk_darwin(v18);
  v52 = &v48[-v19];
  v20 = type metadata accessor for ModifiedContent();
  v59 = *(v20 - 8);
  __chkstk_darwin(v20);
  v55 = &v48[-v21];
  v60 = v22;
  v23 = type metadata accessor for ModifiedContent();
  v61 = *(v23 - 8);
  __chkstk_darwin(v23);
  v54 = &v48[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v57 = &v48[-v26];
  v27 = a1 & 1;
  sub_1007AA874(a1 & 1, v11);
  if (a1)
  {
    v50 = *v15;
    v49 = *(v15 + 8);
  }

  else
  {
    v50 = 0;
    v49 = 0;
  }

  v28 = static Alignment.bottom.getter();
  v30 = v29;
  (*(v12 + 16))(v14, v15, v11);
  v31 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v32 = v31 + v58;
  v33 = swift_allocObject();
  v34 = v11;
  v35 = v33;
  v36 = v63;
  *(v33 + 2) = v62;
  *(v33 + 3) = v36;
  v37 = v65;
  *(v33 + 4) = v64;
  *(v33 + 5) = v37;
  (*(v12 + 32))(&v33[v31], v14, v34);
  *(v35 + v32) = v27;
  v38 = v52;
  sub_100667C08(v28, v30, v50, v49, sub_1007B65E8, v35, v52);
  static Edge.Set.top.getter();
  v39 = swift_getWitnessTable();
  v40 = v55;
  View.padding(_:_:)();
  (*(v56 + 8))(v38, v18);
  static Edge.Set.bottom.getter();
  v69 = v39;
  v70 = &protocol witness table for _PaddingLayout;
  v41 = v60;
  v42 = swift_getWitnessTable();
  v43 = v54;
  View.padding(_:_:)();
  (*(v59 + 8))(v40, v41);
  v67 = v42;
  v68 = &protocol witness table for _PaddingLayout;
  v44 = swift_getWitnessTable();
  v45 = v57;
  sub_100663950(v43, v23, v44);
  v46 = *(v61 + 8);
  v46(v43, v23);
  sub_100663950(v45, v23, v44);
  return (v46)(v45, v23);
}

double sub_1007AA874(char a1, uint64_t a2)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 14.0;
  if ((a1 & 1) == 0)
  {
    v11 = v2 + *(a2 + 64);
    v12 = *v11;
    if (*(v11 + 8) != 1)
    {
      v13 = v7;

      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000D8F20(v12, 0);
      (*(v6 + 8))(v9, v13);
      return 14.0;
    }
  }

  return result;
}

uint64_t sub_1007AAA00@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a6;
  v55 = a7;
  v50 = a4;
  v54 = *(a4 - 8);
  __chkstk_darwin(a1);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ModifiedContent();
  v53 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = &v42 - v14;
  v15 = *(a3 - 8);
  __chkstk_darwin(v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001109D0(&qword_1011A2EF0);
  v19 = type metadata accessor for ModifiedContent();
  v56 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v42 - v24;
  (*(a1 + 16))(a2 & 1, v23);
  sub_100667294();
  (*(v15 + 8))(v18, a3);
  v26 = sub_100020674(qword_1011A2EF8, &qword_1011A2EF0);
  v60[4] = a5;
  v60[5] = v26;
  WitnessTable = swift_getWitnessTable();
  v27 = v25;
  v43 = v19;
  sub_100663950(v21, v19, WitnessTable);
  v45 = *(v56 + 8);
  v46 = v56 + 8;
  v45(v21, v19);
  v28 = v49;
  (*(a1 + 32))(a2 & 1);
  static Alignment.bottomLeading.getter();
  v29 = v52;
  v30 = v50;
  v31 = v48;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v54 + 8))(v28, v30);
  v60[2] = v29;
  v60[3] = &protocol witness table for _FlexFrameLayout;
  v32 = v47;
  v33 = swift_getWitnessTable();
  v34 = v51;
  sub_100663950(v31, v32, v33);
  v35 = v53;
  v36 = *(v53 + 8);
  v36(v31, v32);
  v37 = v27;
  v38 = v27;
  v39 = v43;
  (*(v56 + 16))(v21, v38, v43);
  v60[0] = v21;
  (*(v35 + 16))(v31, v34, v32);
  v60[1] = v31;
  v59[0] = v39;
  v59[1] = v32;
  v57 = WitnessTable;
  v58 = v33;
  sub_1006769F4(v60, 2uLL, v59);
  v36(v34, v32);
  v40 = v45;
  v45(v37, v39);
  v36(v31, v32);
  return v40(v21, v39);
}

uint64_t sub_1007AAF54@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v116 = a2;
  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 7);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v10 = *(a1 + 10);
  v9 = *(a1 + 11);
  v134 = *(a1 + 2);
  v11 = v134;
  v12 = v2;
  v13 = v3;
  v14 = v5;
  v15 = v6;
  v16 = v9;
  v129 = type metadata accessor for Header.TextVStack.TitleAttributionStack();
  v130 = type metadata accessor for Header.TextVStack.MetadataContainer();
  v126 = v16;
  v131 = type metadata accessor for Header.TextVStack.PlaybackControlContainer();
  v135 = v12;
  v136 = v13;
  v137 = v4;
  v138 = v14;
  v139 = v15;
  v140 = v7;
  v141 = v8;
  v142 = v10;
  v143 = v16;
  v132 = type metadata accessor for Header.TextVStack.DescriptionContainer();
  swift_getTupleTypeMetadata();
  v115 = &protocol conformance descriptor for TupleView<A>;
  v98 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v122 = type metadata accessor for VStack();
  v101 = *(v122 - 8);
  __chkstk_darwin(v122);
  v100 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v99 = v90 - v19;
  v134 = v11;
  v135 = v12;
  v136 = v13;
  v137 = v4;
  v138 = v14;
  v139 = v15;
  v140 = v7;
  v141 = v8;
  v20 = v126;
  v142 = v10;
  v143 = v126;
  v129 = type metadata accessor for Header.TextVStack.TitleAttributionStack();
  v134 = v11;
  v135 = v12;
  v136 = v13;
  v137 = v4;
  v138 = v14;
  v139 = v15;
  v140 = v7;
  v141 = v8;
  v142 = v10;
  v143 = v20;
  v130 = type metadata accessor for Header.TextVStack.MetadataContainer();
  v131 = sub_1001109D0(&qword_1011A2EE0);
  v134 = v11;
  v135 = v12;
  v21 = v11;
  v118 = v12;
  v119 = v13;
  v136 = v13;
  v137 = v4;
  v124 = v14;
  v125 = v15;
  v138 = v14;
  v139 = v15;
  v123 = v7;
  v140 = v7;
  v141 = v8;
  v22 = v126;
  v142 = v10;
  v143 = v126;
  v132 = type metadata accessor for Header.TextVStack.DescriptionContainer();
  v134 = v21;
  v135 = v12;
  v136 = v13;
  v137 = v4;
  v23 = v4;
  v138 = v14;
  v139 = v15;
  v140 = v7;
  v141 = v8;
  v121 = v8;
  v142 = v10;
  v143 = v22;
  v117 = v10;
  v133 = type metadata accessor for Header.TextVStack.PlaybackControlContainer();
  swift_getTupleTypeMetadata();
  v24 = type metadata accessor for TupleView();
  v25 = swift_getWitnessTable();
  v90[1] = v24;
  v90[0] = v25;
  v26 = type metadata accessor for VStack();
  v93 = *(v26 - 8);
  __chkstk_darwin(v26);
  v92 = v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v91 = v90 - v29;
  v96 = type metadata accessor for EnvironmentValues();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v26;
  v114 = type metadata accessor for _ConditionalContent();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = v90 - v31;
  v103 = v23;
  v107 = type metadata accessor for Optional();
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = v90 - v32;
  v33 = v118;
  v34 = type metadata accessor for Optional();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v104 = v90 - v36;
  v37 = v21;
  v120 = v21;
  v38 = type metadata accessor for Optional();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = v90 - v40;
  v102 = v90 - v40;
  v134 = v37;
  v135 = v33;
  v136 = v119;
  v137 = v23;
  v138 = v124;
  v139 = v125;
  v140 = v123;
  v141 = v8;
  v142 = v10;
  v42 = v126;
  v143 = v126;
  v110 = type metadata accessor for Header.TextVStack.TitleAttributionStack();
  v108 = *(v110 - 8);
  v43 = __chkstk_darwin(v110);
  v45 = v90 - v44;
  v46 = v109;
  v47 = v111;
  (*(v39 + 16))(v41, v111 + v109[26], v38, v43);
  v48 = v104;
  (*(v35 + 16))(v104, v47 + v46[27], v34);
  v49 = v42;
  v50 = v105;
  v51 = v106;
  v52 = v107;
  (*(v105 + 16))(v106, v47 + v46[29], v107);
  v53 = v103;
  LOBYTE(v38) = (*(*(v103 - 8) + 48))(v51, 1, v103) != 1;
  (*(v50 + 8))(v51, v52);
  v54 = v47;
  v55 = *v47;
  v89 = v49;
  v88 = v117;
  v87 = v121;
  v86 = v123;
  v85 = v125;
  v84 = v124;
  v107 = v45;
  v56 = v45;
  v57 = v118;
  v58 = v119;
  v59 = sub_1007ABCD4(v102, v48, v38, v55, v56);
  v60 = v54 + v46[31];
  v61 = *v60;
  if (v60[8] != 1)
  {

    static os_log_type_t.fault.getter();
    v62 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v63 = v94;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v61, 0);
    v59 = (*(v95 + 8))(v63, v96);
    LOBYTE(v61) = v134;
  }

  v64 = v122;
  if (v61 == 2 || (v61 & 1) == 0)
  {
    __chkstk_darwin(v59);
    v90[-12] = v120;
    v90[-11] = v57;
    v90[-10] = v58;
    v90[-9] = v53;
    v75 = v125;
    v90[-8] = v124;
    v90[-7] = v75;
    v84 = v123;
    v85 = v121;
    v86 = v117;
    v87 = v126;
    v66 = v107;
    v88 = v107;
    v89 = v54;
    v76 = v100;
    VStack.init(alignment:spacing:content:)();
    v77 = swift_getWitnessTable();
    v78 = v99;
    sub_100663950(v76, v64, v77);
    v71 = *(v101 + 8);
    v71(v76, v64);
    sub_100663950(v78, v64, v77);
    swift_getWitnessTable();
    v72 = v112;
    sub_100653878(v76, v64);
    v71(v76, v64);
    v73 = v78;
    v74 = v64;
  }

  else
  {
    __chkstk_darwin(v59);
    v90[-12] = v120;
    v90[-11] = v57;
    v90[-10] = v58;
    v90[-9] = v53;
    v65 = v125;
    v90[-8] = v124;
    v90[-7] = v65;
    v84 = v123;
    v85 = v121;
    v86 = v117;
    v87 = v126;
    v66 = v107;
    v88 = v107;
    v89 = v54;
    v67 = v92;
    VStack.init(alignment:spacing:content:)();
    v68 = v115;
    v69 = swift_getWitnessTable();
    v70 = v91;
    sub_100663950(v67, v68, v69);
    v71 = *(v93 + 8);
    v71(v67, v68);
    sub_100663950(v70, v68, v69);
    swift_getWitnessTable();
    v72 = v112;
    sub_100653970(v67, v64, v68);
    v71(v67, v68);
    v73 = v70;
    v74 = v68;
  }

  v71(v73, v74);
  v79 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v127 = v79;
  v128 = v80;
  v81 = v114;
  v82 = swift_getWitnessTable();
  sub_100663950(v72, v81, v82);
  (*(v113 + 8))(v72, v81);
  return (*(v108 + 8))(v66, v110);
}

uint64_t sub_1007ABCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 32))(a5, a1, v9);
  v10 = type metadata accessor for Header.TextVStack.TitleAttributionStack();
  v11 = v10[25];
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 32))(a5 + v11, a2, v12);
  *(a5 + v10[26]) = a3;
  *(a5 + v10[27]) = a4;
  v13 = a5 + v10[28];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_1007ABE2C@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v132 = a2;
  v111 = a1;
  v118 = a8;
  v116 = *(a6 - 8);
  __chkstk_darwin(a1);
  v114 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v17;
  v154 = v18;
  v19 = v18;
  v141 = v18;
  v155 = v20;
  v156 = v21;
  v157 = v22;
  v158 = v23;
  v24 = v22;
  v121 = v22;
  v159 = v26;
  v160 = v25;
  v27 = v26;
  v28 = v25;
  v161 = v29;
  v162 = a12;
  v30 = v29;
  v139 = v29;
  v136 = type metadata accessor for Header.TextVStack.PlaybackControlContainer();
  v117 = *(v136 - 8);
  __chkstk_darwin(v136);
  v137 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v113 = &v98 - v33;
  __chkstk_darwin(v34);
  v115 = &v98 - v35;
  v129 = type metadata accessor for Optional();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v112 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v109 = &v98 - v38;
  v153 = a3;
  v154 = v19;
  v155 = a4;
  v156 = a5;
  v157 = v24;
  v158 = a7;
  v120 = v27;
  v159 = v27;
  v160 = v28;
  v39 = v28;
  v161 = v30;
  v162 = a12;
  v143 = type metadata accessor for Header.TextVStack.DescriptionContainer();
  v135 = *(v143 - 8);
  __chkstk_darwin(v143);
  v126 = &v98 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v134 = &v98 - v42;
  v108 = type metadata accessor for Optional();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v98 - v43;
  v44 = a3;
  v122 = a3;
  v45 = v141;
  v153 = a3;
  v154 = v141;
  v155 = a4;
  v156 = a5;
  v46 = v121;
  v157 = v121;
  v158 = a7;
  v159 = v27;
  v160 = v39;
  v140 = v39;
  v47 = v139;
  v161 = v139;
  v162 = a12;
  v138 = a12;
  v123 = type metadata accessor for Header.TextVStack.MetadataContainer();
  v130 = *(v123 - 8);
  __chkstk_darwin(v123);
  v142 = &v98 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v124 = &v98 - v50;
  v153 = v44;
  v154 = v45;
  v155 = a4;
  v156 = a5;
  v119 = a5;
  v157 = v46;
  v158 = a7;
  v51 = v120;
  v159 = v120;
  v160 = v39;
  v161 = v47;
  v162 = a12;
  v52 = v47;
  v53 = type metadata accessor for Header.TextVStack.TitleAttributionStack();
  v125 = v53;
  v133 = *(v53 - 8);
  __chkstk_darwin(v53);
  v127 = &v98 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v131 = &v98 - v56;
  WitnessTable = swift_getWitnessTable();
  sub_100663950(v111, v53, WitnessTable);
  v153 = v122;
  v154 = v45;
  v155 = a4;
  v156 = a5;
  v157 = v46;
  v158 = a7;
  v159 = v51;
  v160 = v140;
  v161 = v52;
  v162 = v138;
  v99 = type metadata accessor for Header.TextVStack();
  v57 = v106;
  (*(v107 + 16))(v106, v132 + *(v99 + 112), v108);
  v58 = v142;
  v101 = a4;
  v102 = a7;
  sub_1007ACB18(v57, v142);
  v59 = v123;
  v107 = swift_getWitnessTable();
  sub_100663950(v58, v59, v107);
  v60 = *(v130 + 8);
  v108 = v130 + 8;
  v111 = v60;
  v60(v58, v59);
  v104 = *(v132 + 8);
  v103 = v104 ^ 1;
  v61 = v99;
  v100 = *(v99 + 116);
  v62 = *(v128 + 16);
  v63 = v132;
  v64 = v109;
  v62(v109, v132 + v100, v129);
  v65 = v126;
  v66 = v64;
  v67 = v121;
  sub_1007ACBD8(v66, v126);
  v68 = v143;
  v105 = swift_getWitnessTable();
  sub_100663950(v65, v68, v105);
  v69 = *(v135 + 8);
  v106 = (v135 + 8);
  v109 = v69;
  (v69)(v65, v68);
  v70 = v114;
  (*(v116 + 16))(v114, v63 + *(v61 + 120), v67);
  v71 = v63 + v100;
  v72 = v112;
  v73 = v129;
  v62(v112, v71, v129);
  LOBYTE(a4) = (*(*(v119 - 8) + 48))(v72, 1, v119) != 1;
  (*(v128 + 8))(v72, v73);
  v74 = v113;
  sub_1007ACC98(v70, a4, v67, v113);
  v75 = v136;
  v140 = swift_getWitnessTable();
  v76 = v115;
  sub_100663950(v74, v75, v140);
  v77 = v117;
  v141 = *(v117 + 8);
  v141(v74, v75);
  v78 = v127;
  v79 = v125;
  (*(v133 + 16))(v127, v131, v125);
  v153 = v78;
  v80 = v142;
  v81 = v124;
  v82 = v123;
  (*(v130 + 16))(v142, v124, v123);
  v150 = 0;
  v151 = v103;
  v152 = v104;
  v154 = v80;
  v155 = &v150;
  v83 = v65;
  v84 = v65;
  v85 = v134;
  v86 = v143;
  (*(v135 + 16))(v84, v134, v143);
  v156 = v83;
  v87 = *(v77 + 16);
  v88 = v137;
  v87(v137, v76, v75);
  v157 = v88;
  v149[0] = v79;
  v149[1] = v82;
  v149[2] = sub_10010FC20(&qword_1011A2EE0);
  v149[3] = v86;
  v149[4] = v75;
  v144 = WitnessTable;
  v145 = v107;
  v146 = sub_1007B64B0();
  v147 = v105;
  v148 = v140;
  sub_1006769F4(&v153, 5uLL, v149);
  v89 = v75;
  v90 = v141;
  v141(v76, v89);
  v91 = v86;
  v92 = v109;
  (v109)(v85, v91);
  v93 = v82;
  v94 = v111;
  v111(v81, v82);
  v95 = *(v133 + 8);
  v96 = v125;
  v95(v131, v125);
  v90(v137, v136);
  v92(v126, v143);
  v94(v142, v93);
  return (v95)(v127, v96);
}

uint64_t sub_1007ACB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Header.TextVStack.MetadataContainer() + 100);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 32))(a2, a1, v5);
}

uint64_t sub_1007ACBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Header.TextVStack.DescriptionContainer() + 100);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 32))(a2, a1, v5);
}

uint64_t sub_1007ACC98@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Header.TextVStack.PlaybackControlContainer();
  v9 = a4 + *(v8 + 104);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  result = (*(*(a3 - 8) + 32))(a4, a1, a3);
  *(a4 + *(v8 + 100)) = a2;
  return result;
}

uint64_t sub_1007ACD60@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void, void))
{
  v121 = a2;
  v95 = a1;
  v103 = a9;
  v123 = a13;
  v129 = a3;
  v130 = a4;
  v116 = a3;
  v115 = a4;
  v131 = a5;
  v132 = a6;
  v133 = a7;
  v134 = a8;
  v135 = a10;
  v136 = a11;
  v117 = a11;
  v137 = a12;
  v138 = a13;
  v101 = type metadata accessor for Header.TextVStack.DescriptionContainer();
  v102 = *(v101 - 8);
  __chkstk_darwin(v101);
  v114 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v100 = v84 - v21;
  v110 = type metadata accessor for Optional();
  v97 = *(v110 - 8);
  __chkstk_darwin(v110);
  v99 = v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v96 = v84 - v24;
  v94 = *(a7 - 8);
  __chkstk_darwin(v25);
  v93 = v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = a3;
  v130 = a4;
  v131 = a5;
  v132 = a6;
  v133 = a7;
  v134 = a8;
  v135 = a10;
  v136 = a11;
  v27 = v123;
  v137 = a12;
  v138 = v123;
  v120 = type metadata accessor for Header.TextVStack.PlaybackControlContainer();
  v98 = *(v120 - 8);
  __chkstk_darwin(v120);
  v113 = v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v92 = v84 - v30;
  __chkstk_darwin(v31);
  v112 = v84 - v32;
  v33 = a5;
  v89 = type metadata accessor for Optional();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = v84 - v34;
  v35 = v116;
  v36 = v115;
  v129 = v116;
  v130 = v115;
  v131 = v33;
  v132 = a6;
  v133 = a7;
  v134 = a8;
  v37 = a7;
  v104 = a7;
  v105 = a8;
  v38 = v117;
  v135 = a10;
  v136 = v117;
  v137 = a12;
  v138 = v27;
  v119 = type metadata accessor for Header.TextVStack.MetadataContainer();
  v109 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = v84 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v122 = v84 - v41;
  v129 = v35;
  v130 = v36;
  v131 = v33;
  v132 = a6;
  v133 = v37;
  v134 = a8;
  v135 = a10;
  v136 = v38;
  v137 = a12;
  v138 = v27;
  v42 = type metadata accessor for Header.TextVStack.TitleAttributionStack();
  v90 = v42;
  v111 = *(v42 - 8);
  __chkstk_darwin(v42);
  v107 = v84 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v108 = v84 - v45;
  WitnessTable = swift_getWitnessTable();
  sub_100663950(v95, v42, WitnessTable);
  v129 = v116;
  v130 = v36;
  v86 = v33;
  v131 = v33;
  v132 = a6;
  v46 = v104;
  v133 = v104;
  v134 = v105;
  v135 = a10;
  v136 = v38;
  v106 = a12;
  v137 = a12;
  v138 = v123;
  v85 = type metadata accessor for Header.TextVStack();
  v47 = v87;
  (*(v88 + 16))(v87, v121 + *(v85 + 112), v89);
  v48 = v118;
  v49 = a6;
  v84[1] = a10;
  sub_1007ACB18(v47, v118);
  v50 = v119;
  v88 = swift_getWitnessTable();
  sub_100663950(v48, v50, v88);
  v51 = *(v109 + 8);
  v89 = v109 + 8;
  v95 = v51;
  v51(v48, v50);
  v52 = v85;
  v53 = v121;
  v54 = v93;
  (*(v94 + 16))(v93, v121 + *(v85 + 120), v46);
  v85 = *(v52 + 116);
  v55 = v97;
  v87 = *(v97 + 16);
  v56 = v53 + v85;
  v57 = v96;
  v58 = v110;
  (v87)(v96, v56, v110);
  v59 = *(*(v49 - 8) + 48);
  v84[0] = v49;
  LOBYTE(v36) = v59(v57, 1, v49) != 1;
  (*(v55 + 8))(v57, v58);
  v60 = v92;
  sub_1007ACC98(v54, v36, v104, v92);
  v61 = v120;
  v94 = swift_getWitnessTable();
  v62 = v60;
  v63 = v60;
  v64 = v61;
  sub_100663950(v62, v61, v94);
  v65 = v98;
  v96 = *(v98 + 8);
  v97 = v98 + 8;
  (v96)(v63, v64);
  v66 = v99;
  (v87)(v99, v121 + v85, v110);
  v67 = v114;
  sub_1007ACBD8(v66, v114);
  v68 = v101;
  v121 = swift_getWitnessTable();
  v69 = v100;
  sub_100663950(v67, v68, v121);
  v70 = v102;
  v123 = *(v102 + 8);
  v123(v67, v68);
  v71 = v107;
  v72 = v90;
  (*(v111 + 16))(v107, v108, v90);
  v129 = v71;
  v73 = v118;
  v74 = v119;
  (*(v109 + 16))(v118, v122, v119);
  v130 = v73;
  v75 = *(v65 + 16);
  v76 = v113;
  v77 = v112;
  v78 = v120;
  v75(v113, v112, v120);
  v131 = v76;
  (*(v70 + 16))(v67, v69, v68);
  v132 = v67;
  v128[0] = v72;
  v128[1] = v74;
  v128[2] = v78;
  v128[3] = v68;
  v124 = WitnessTable;
  v125 = v88;
  v126 = v94;
  v127 = v121;
  sub_1006769F4(&v129, 4uLL, v128);
  v79 = v123;
  v123(v69, v68);
  v80 = v96;
  (v96)(v77, v78);
  v81 = v95;
  v95(v122, v74);
  v82 = *(v111 + 8);
  v82(v108, v72);
  v79(v114, v68);
  v80(v113, v120);
  v81(v118, v119);
  return (v82)(v107, v72);
}

uint64_t sub_1007AD9B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 7);
  v122 = *(a1 + 6);
  v121 = v6;
  v7 = *(a1 + 9);
  v125 = *(a1 + 8);
  v124 = v7;
  v9 = *(a1 + 10);
  v8 = *(a1 + 11);
  v123 = a1;
  v119 = v8;
  v126 = type metadata accessor for Header.TextVStack.TitleAttributionStack.Spacing.Before();
  v105 = type metadata accessor for Optional();
  type metadata accessor for BaselineSpacer(255);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  sub_1001109D0(&qword_1011993F8);
  v120 = v2;
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  sub_1001109D0(&qword_101199330);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  v10 = type metadata accessor for _ConditionalContent();
  WitnessTable = swift_getWitnessTable();
  v139 = swift_getWitnessTable();
  v99 = v10;
  v96 = swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v12 = type metadata accessor for ModifiedContent();
  v140 = v2;
  v141 = v3;
  v103 = v4;
  v142 = v4;
  v143 = v5;
  v102 = v5;
  v144 = v122;
  v145 = v121;
  v146 = v125;
  v147 = v124;
  v118 = v9;
  v148 = v9;
  v149 = v119;
  v13 = v126;
  v101 = type metadata accessor for Header.TextVStack.TitleAttributionStack.Spacing.After();
  swift_getTupleTypeMetadata3();
  v14 = type metadata accessor for TupleView();
  v110 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v89 - v15;
  v97 = v11;
  v95 = *(v11 - 8);
  __chkstk_darwin(v17);
  v94 = &v89 - v18;
  v104 = v12;
  v98 = *(v12 - 8);
  __chkstk_darwin(v19);
  v100 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v117 = &v89 - v22;
  v23 = type metadata accessor for Font.TextStyle();
  __chkstk_darwin(v23 - 8);
  v93 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *(v13 - 8);
  __chkstk_darwin(v25);
  v116 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v115 = &v89 - v28;
  v113 = v3;
  v29 = type metadata accessor for Optional();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v89 - v31;
  v33 = v105;
  v34 = *(v105 - 8);
  __chkstk_darwin(v35);
  v37 = &v89 - v36;
  v111 = v14;
  v38 = type metadata accessor for Optional();
  v108 = *(v38 - 8);
  __chkstk_darwin(v38);
  v107 = &v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v40);
  v109 = &v89 - v42;
  v43 = v106;
  (*(v34 + 16))(v37, v106, v33, v41);
  LODWORD(v14) = (*(*(v120 - 8) + 48))(v37, 1);
  (*(v34 + 8))(v37, v33);
  if (v14 == 1 && ((*(v30 + 16))(v32, &v43[v123[25]], v29), v44 = (*(*(v113 - 1) + 48))(v32, 1), (*(v30 + 8))(v32, v29), v44 == 1))
  {
    v45 = v107;
    (*(v110 + 56))(v107, 1, 1, v111);
  }

  else
  {
    v46 = v43[v123[26]];
    v92 = v16;
    v47 = v121;
    v48 = v93;
    Optional<A>.fontTextStyle.getter(v93);
    v49 = v119;
    v88 = v119;
    v87 = v118;
    v86 = v124;
    v85 = v125;
    v50 = v116;
    v51 = v48;
    v105 = v38;
    v52 = v120;
    v53 = v113;
    v54 = v103;
    v55 = v102;
    v56 = v122;
    sub_1007AE800(v46, v51, v116);
    v57 = v126;
    v90 = swift_getWitnessTable();
    sub_100663950(v50, v57, v90);
    v91 = *(v114 + 8);
    v93 = v114 + 8;
    v91(v50, v57);
    __chkstk_darwin(*&v43[v123[27]]);
    *(&v89 - 12) = v52;
    *(&v89 - 11) = v53;
    *(&v89 - 10) = v54;
    *(&v89 - 9) = v55;
    *(&v89 - 8) = v56;
    *(&v89 - 7) = v47;
    v58 = v124;
    *(&v89 - 6) = v125;
    *(&v89 - 5) = v58;
    v85 = v118;
    v86 = v49;
    v87 = v43;
    v59 = v94;
    VStack.init(alignment:spacing:content:)();
    v60 = v97;
    v61 = swift_getWitnessTable();
    v62 = v100;
    View.layoutPriority(_:)();
    (*(v95 + 8))(v59, v60);
    v63 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
    v135 = v61;
    v136 = v63;
    v64 = v104;
    v124 = swift_getWitnessTable();
    v65 = v117;
    sub_100663950(v62, v64, v124);
    v66 = v98;
    v125 = *(v98 + 8);
    v125(v62, v64);
    KeyPath = swift_getKeyPath();
    v140 = KeyPath;
    LOBYTE(v141) = 0;
    v68 = v101;
    v69 = swift_getWitnessTable();
    sub_100663950(&v140, v68, v69);
    sub_1000D8F20(KeyPath, 0);
    v70 = v50;
    v71 = v50;
    v72 = v115;
    v73 = v126;
    (*(v114 + 16))(v71, v115, v126);
    v140 = v70;
    (*(v66 + 16))(v62, v65, v64);
    v74 = v133;
    LOBYTE(v66) = v134;
    v131 = v133;
    v132 = v134;
    v141 = v62;
    v142 = &v131;
    sub_1005FF6B8(v133, v134);
    v130[0] = v73;
    v75 = v73;
    v130[1] = v64;
    v130[2] = v68;
    v127 = v90;
    v128 = v124;
    v129 = v69;
    v76 = v92;
    sub_1006769F4(&v140, 3uLL, v130);
    sub_1000D8F20(v74, v66);
    v77 = v125;
    v125(v117, v64);
    v78 = v91;
    v91(v72, v75);
    sub_1000D8F20(v131, v132);
    v77(v62, v64);
    v38 = v105;
    v78(v116, v75);
    v79 = v110;
    v45 = v107;
    v80 = v111;
    (*(v110 + 32))(v107, v76, v111);
    (*(v79 + 56))(v45, 0, 1, v80);
  }

  swift_getWitnessTable();
  v81 = v109;
  sub_100653A68(v45, v109);
  v82 = *(v108 + 8);
  v82(v45, v38);
  v137 = swift_getWitnessTable();
  v83 = swift_getWitnessTable();
  sub_100663950(v81, v38, v83);
  return (v82)(v81, v38);
}

uint64_t sub_1007AE800@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for Header.TextVStack.TitleAttributionStack.Spacing.Before();
  v6 = v5[25];
  v7 = type metadata accessor for Font.TextStyle();
  (*(*(v7 - 8) + 32))(&a3[v6], a2, v7);
  v8 = &a3[v5[26]];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = v5[27];
  *&a3[v9] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1007AE8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, uint64_t)@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, __int128 a10, void (*a11)(void, void, void))
{
  v254 = a8;
  v256 = a7;
  v239 = a5;
  v240 = a6;
  v238 = a4;
  v259 = a1;
  v250 = a9;
  v237 = a11;
  v236 = a10;
  v13 = type metadata accessor for Optional();
  v14 = type metadata accessor for BaselineSpacer(255);
  swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for TupleView();
  v16 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  v17 = type metadata accessor for TupleView();
  v235 = *(v17 - 8);
  __chkstk_darwin(v17);
  v232 = v15;
  v233 = &v192 - v18;
  v229 = *(v15 - 8);
  __chkstk_darwin(v19);
  v217 = &v192 - v20;
  v21 = type metadata accessor for Font.TextStyle();
  v214 = *(v21 - 8);
  v215 = v21;
  __chkstk_darwin(v21);
  v213 = &v192 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = v14;
  __chkstk_darwin(v23);
  v228 = &v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v216 = &v192 - v26;
  v253 = v16;
  v230 = *(v16 - 8);
  __chkstk_darwin(v27);
  v231 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v252 = &v192 - v30;
  sub_1001109D0(&qword_1011993F8);
  v31 = type metadata accessor for ModifiedContent();
  v32 = type metadata accessor for Optional();
  v33 = sub_1001109D0(&qword_101199330);
  v34 = type metadata accessor for ModifiedContent();
  v35 = type metadata accessor for Optional();
  v205 = v33;
  swift_getTupleTypeMetadata3();
  v36 = type metadata accessor for TupleView();
  v207 = *(v36 - 8);
  __chkstk_darwin(v36);
  v206 = &v192 - v37;
  v223 = v34;
  v202 = *(v34 - 8);
  __chkstk_darwin(v38);
  v198 = &v192 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v197 = &v192 - v41;
  v42 = type metadata accessor for Optional();
  v241 = *(v42 - 8);
  v242 = v42;
  __chkstk_darwin(v42);
  v225 = &v192 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v201 = &v192 - v45;
  v243 = *(a3 - 8);
  __chkstk_darwin(v46);
  v212 = &v192 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v211 = &v192 - v49;
  __chkstk_darwin(v50);
  v226 = &v192 - v51;
  __chkstk_darwin(v52);
  v196 = &v192 - v53;
  v224 = v35;
  v203 = *(v35 - 8);
  __chkstk_darwin(v54);
  v204 = &v192 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v221 = &v192 - v57;
  v222 = v31;
  v200 = *(v31 - 8);
  __chkstk_darwin(v58);
  v195 = &v192 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v194 = &v192 - v61;
  v258 = v13;
  v62 = v13;
  v63 = a2;
  v255 = *(v62 - 8);
  __chkstk_darwin(v64);
  v251 = &v192 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v68 = &v192 - v67;
  __chkstk_darwin(v69);
  v257 = &v192 - v70;
  __chkstk_darwin(v71);
  v199 = &v192 - v72;
  v73 = *(a2 - 8);
  __chkstk_darwin(v74);
  v210 = &v192 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v209 = &v192 - v77;
  __chkstk_darwin(v78);
  v208 = &v192 - v79;
  __chkstk_darwin(v80);
  v193 = &v192 - v81;
  v234 = v32;
  v219 = *(v32 - 8);
  __chkstk_darwin(v82);
  v220 = &v192 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v84);
  v227 = &v192 - v85;
  v86 = type metadata accessor for EnvironmentValues();
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v192 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = v36;
  v249 = v17;
  v90 = type metadata accessor for _ConditionalContent();
  v246 = *(v90 - 8);
  v247 = v90;
  __chkstk_darwin(v90);
  v244 = a3;
  v245 = &v192 - v91;
  v291 = v63;
  v292 = a3;
  v293 = v238;
  v294 = v239;
  v295 = v240;
  v296 = v256;
  v298 = v236;
  v297 = v254;
  v299 = v237;
  v240 = type metadata accessor for Header.TextVStack.TitleAttributionStack();
  v92 = v259 + *(v240 + 112);
  v93 = *v92;
  if (*(v92 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v94 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v93, 0);
    (*(v87 + 8))(v89, v86);
    LOBYTE(v93) = v291;
  }

  v95 = v258;
  v96 = v255;
  if (v93 == 2 || (v93 & 1) == 0)
  {
    v238 = *(v255 + 16);
    v239 = v255 + 16;
    v238(v68, v259, v258);
    if ((*(v73 + 48))(v68, 1, v63) == 1)
    {
      v101 = *(v96 + 8);
      v101(v68, v95);
      v102 = v251;
      (*(v73 + 56))(v251, 1, 1, v63);
      v237 = *(v256 + 1);
      sub_100653A68(v102, v257);
      v256 = v101;
      v101(v102, v95);
    }

    else
    {
      v103 = v73;
      v237 = *(v73 + 32);
      v104 = v208;
      v237(v208, v68, v63);
      v105 = *(v256 + 1);
      v106 = v209;
      sub_100663950(v104, v63, v105);
      v107 = *(v103 + 8);
      v107(v104, v63);
      v108 = v210;
      sub_100663950(v106, v63, v105);
      v107(v106, v63);
      v109 = v251;
      v237(v251, v108, v63);
      (*(v103 + 56))(v109, 0, 1, v63);
      v237 = v105;
      sub_100653A68(v109, v257);
      v256 = *(v96 + 8);
      v256(v109, v258);
    }

    v110 = v241;
    v111 = v225;
    v112 = v242;
    (*(v241 + 16))(v225, v259 + *(v240 + 100), v242);
    v114 = v243;
    v113 = v244;
    v115 = (*(v243 + 48))(v111, 1, v244);
    v116 = v231;
    if (v115 == 1)
    {
      (*(v110 + 8))(v111, v112);
      (*(v229 + 56))(v116, 1, 1, v232);
    }

    else
    {
      v117 = v226;
      (*(v114 + 32))(v226, v111, v113);
      v118 = v254;
      v119 = v213;
      (*(v254 + 2))(v113, v254);
      v120 = v216;
      (*(v214 + 32))(v216, v119, v215);
      v121 = sub_10010FC20(&qword_1011883A8);
      (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
      *(v120 + *(type metadata accessor for BaselineSpacer.Configuration(0) + 20)) = 0x403C000000000000;
      v122 = v118[1];
      v123 = v211;
      sub_100663950(v117, v113, v122);
      v124 = v228;
      sub_1007B4EC8(v120, v228, type metadata accessor for BaselineSpacer);
      v291 = v124;
      v125 = v212;
      (*(v114 + 16))(v212, v123, v113);
      v292 = v125;
      v300 = v218;
      v301 = v113;
      WitnessTable = sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
      v275 = v122;
      v126 = v217;
      sub_1006769F4(&v291, 2uLL, &v300);
      v127 = *(v114 + 8);
      v127(v123, v113);
      sub_1007B4F64(v120, type metadata accessor for BaselineSpacer);
      v127(v226, v113);
      v127(v125, v113);
      sub_1007B4F64(v228, type metadata accessor for BaselineSpacer);
      v128 = v229;
      v129 = v232;
      (*(v229 + 32))(v116, v126, v232);
      (*(v128 + 56))(v116, 0, 1, v129);
    }

    swift_getWitnessTable();
    v130 = v252;
    sub_100653A68(v116, v252);
    v131 = v230;
    v132 = *(v230 + 8);
    v259 = (v230 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v133 = v253;
    v134 = v132;
    v132(v116, v253);
    v135 = v251;
    v136 = v258;
    v238(v251, v257, v258);
    v291 = v135;
    (*(v131 + 16))(v116, v130, v133);
    v292 = v116;
    v300 = v136;
    v301 = v133;
    v290 = v237;
    WitnessTable = swift_getWitnessTable();
    v289 = swift_getWitnessTable();
    v275 = swift_getWitnessTable();
    v137 = v233;
    sub_1006769F4(&v291, 2uLL, &v300);
    v134(v116, v133);
    v138 = v136;
    v139 = v256;
    v256(v135, v138);
    v140 = v249;
    swift_getWitnessTable();
    swift_getWitnessTable();
    v141 = v245;
    sub_100653878(v137, v140);
    (*(v235 + 8))(v137, v140);
    v134(v252, v253);
    v139(v257, v258);
    v142 = v141;
  }

  else
  {
    v97 = v199;
    (*(v255 + 16))(v199, v259, v258);
    if ((*(v73 + 48))(v97, 1, v63) == 1)
    {
      (*(v96 + 8))(v97, v95);
      v98 = v220;
      (*(v200 + 56))(v220, 1, 1, v222);
      v99 = *(v256 + 1);
      v100 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
      v258 = v99;
      v285 = v99;
      v286 = v100;
      swift_getWitnessTable();
    }

    else
    {
      v143 = v193;
      (*(v73 + 32))(v193, v97, v63);
      v144 = *(v256 + 1);
      v145 = v195;
      View.layoutPriority(_:)();
      (*(v73 + 8))(v143, v63);
      v146 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
      v258 = v144;
      v260 = v144;
      v261 = v146;
      v147 = v222;
      v148 = swift_getWitnessTable();
      v149 = v194;
      sub_100663950(v145, v147, v148);
      v150 = v200;
      v151 = *(v200 + 8);
      v151(v145, v147);
      sub_100663950(v149, v147, v148);
      v151(v149, v147);
      v98 = v220;
      (*(v150 + 32))(v220, v145, v147);
      (*(v150 + 56))(v98, 0, 1, v147);
    }

    v152 = v223;
    sub_100653A68(v98, v227);
    v153 = *(v219 + 8);
    v257 = v219 + 8;
    v256 = v153;
    v153(v98, v234);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v255 = v300;
    v154 = v302;
    v155 = v305;
    v253 = v304;
    v284 = 1;
    v282 = v301;
    v280 = v303;
    v156 = v241;
    v157 = v201;
    v158 = v242;
    (*(v241 + 16))(v201, v259 + *(v240 + 100), v242);
    v159 = v243;
    v160 = v244;
    if ((*(v243 + 48))(v157, 1, v244) == 1)
    {
      (*(v156 + 8))(v157, v158);
      v161 = v204;
      (*(v202 + 56))(v204, 1, 1, v152);
      v162 = *(v254 + 1);
      v163 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
      v259 = v162;
      v277 = v162;
      v278 = v163;
      swift_getWitnessTable();
    }

    else
    {
      v164 = v196;
      (*(v159 + 32))(v196, v157, v160);
      v252 = v155;
      v259 = *(v254 + 1);
      v165 = v259;
      v254 = v154;
      v166 = v198;
      View.layoutPriority(_:)();
      (*(v159 + 8))(v164, v160);
      v167 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
      v262 = v165;
      v263 = v167;
      v168 = swift_getWitnessTable();
      v169 = v197;
      sub_100663950(v166, v152, v168);
      v170 = v202;
      v171 = *(v202 + 8);
      v171(v166, v152);
      sub_100663950(v169, v152, v168);
      v171(v169, v152);
      v155 = v252;
      v161 = v204;
      v172 = v166;
      v154 = v254;
      (*(v170 + 32))(v204, v172, v152);
      (*(v170 + 56))(v161, 0, 1, v152);
    }

    v173 = v221;
    sub_100653A68(v161, v221);
    v174 = v203;
    v175 = *(v203 + 8);
    v252 = v203 + 8;
    v254 = v175;
    v176 = v224;
    v175(v161, v224);
    v177 = v220;
    v178 = v234;
    (*(v219 + 16))(v220, v227, v234);
    v291 = 0;
    LOBYTE(v292) = v284;
    *(&v292 + 1) = *v283;
    HIDWORD(v292) = *&v283[3];
    v293 = v255;
    LOBYTE(v294) = v282;
    *(&v294 + 1) = *v281;
    HIDWORD(v294) = *&v281[3];
    v295 = v154;
    LOBYTE(v296) = v280;
    *(&v296 + 1) = *v279;
    HIDWORD(v296) = *&v279[3];
    v297 = v253;
    *&v298 = v155;
    WitnessTable = v177;
    v275 = &v291;
    (*(v174 + 16))(v161, v173, v176);
    v276 = v161;
    v179 = v178;
    v273[0] = v178;
    v273[1] = v205;
    v273[2] = v176;
    v180 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
    v268 = v258;
    v269 = v180;
    v267 = swift_getWitnessTable();
    v270 = swift_getWitnessTable();
    v271 = sub_1007B7AFC(&qword_101199338, &qword_101199330);
    v265 = v259;
    v266 = v180;
    v264 = swift_getWitnessTable();
    v272 = swift_getWitnessTable();
    v181 = v206;
    sub_1006769F4(&WitnessTable, 3uLL, v273);
    v182 = v254;
    v254(v161, v176);
    v183 = v179;
    v184 = v256;
    v256(v177, v183);
    v185 = v249;
    swift_getWitnessTable();
    v186 = v248;
    swift_getWitnessTable();
    v142 = v245;
    sub_100653970(v181, v185, v186);
    (*(v207 + 8))(v181, v186);
    v182(v221, v224);
    v184(v227, v234);
  }

  v187 = swift_getWitnessTable();
  v188 = swift_getWitnessTable();
  v287 = v187;
  v288 = v188;
  v189 = v247;
  v190 = swift_getWitnessTable();
  sub_100663950(v142, v189, v190);
  return (*(v246 + 8))(v142, v189);
}

uint64_t sub_1007B0458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = type metadata accessor for BaselineSpacer(0);
  __chkstk_darwin(v35);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10010FC20(&qword_1011A3598);
  __chkstk_darwin(v34);
  v7 = (&v29 - v6);
  v8 = type metadata accessor for DynamicTypeSize();
  v33 = *(v8 - 8);
  __chkstk_darwin(v8);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + *(a1 + 104);
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {
    v30 = v12;

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v31 = v7;
    v18 = v17;
    os_log(_:dso:log:_:_:)();

    v7 = v31;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v16, 0);
    (*(v11 + 8))(v14, v30);
    LOBYTE(v16) = v40;
  }

  if (v16 == 2 || (v16 & 1) == 0)
  {
    v21 = *(a1 + 100);
    v22 = type metadata accessor for Font.TextStyle();
    (*(*(v22 - 8) + 16))(v5, v2 + v21, v22);
    v23 = sub_10010FC20(&qword_1011883A8);
    (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
    *&v5[*(type metadata accessor for BaselineSpacer.Configuration(0) + 20)] = 0x4046000000000000;
    sub_1007B4EC8(v5, v7, type metadata accessor for BaselineSpacer);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011A35A0);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
    sub_1007B8130();
    _ConditionalContent<>.init(storage:)();
    return sub_1007B4F64(v5, type metadata accessor for BaselineSpacer);
  }

  else
  {
    v19 = v32;
    sub_10056CABC(v32);
    v20 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v33 + 8))(v19, v8);
    if (v20)
    {
      sub_1007B82F8(&v40);
    }

    else
    {
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v38[71] = v47[6];
      *&v38[55] = v47[5];
      *&v38[103] = v48;
      *&v38[87] = v47[7];
      *&v38[23] = v47[3];
      *&v38[7] = v47[2];
      *&v38[39] = v47[4];
      *(&v37[4] + 9) = *&v38[64];
      *(&v37[5] + 9) = *&v38[80];
      *(&v37[6] + 9) = *&v38[96];
      *(v37 + 9) = *v38;
      *(&v37[1] + 9) = *&v38[16];
      *(&v37[2] + 9) = *&v38[32];
      v39 = 1;
      *&v37[0] = 0;
      BYTE8(v37[0]) = 1;
      *(&v37[3] + 9) = *&v38[48];
      *(&v37[7] + 1) = *(&v48 + 1);
      *&v37[8] = 0;
      sub_1007B82F0(v37);
      v46 = v37[6];
      v47[0] = v37[7];
      *(v47 + 9) = *(&v37[7] + 9);
      v42 = v37[2];
      v43 = v37[3];
      v44 = v37[4];
      v45 = v37[5];
      v40 = v37[0];
      v41 = v37[1];
    }

    v25 = v47[0];
    v7[6] = v46;
    v7[7] = v25;
    *(v7 + 121) = *(v47 + 9);
    v26 = v43;
    v7[2] = v42;
    v7[3] = v26;
    v27 = v45;
    v7[4] = v44;
    v7[5] = v27;
    v28 = v41;
    *v7 = v40;
    v7[1] = v28;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011A35A0);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
    sub_1007B8130();
    return _ConditionalContent<>.init(storage:)();
  }
}