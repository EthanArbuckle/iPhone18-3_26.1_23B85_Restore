uint64_t sub_100B8AB9C()
{
  v1 = v0;
  v35 = type metadata accessor for Playlist.Collaborator();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10010FC20(&qword_1011B48F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

void sub_100B8AEF8(int64_t a1)
{
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_100B8B200(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Playlist.Collaborator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100B8C798(&qword_1011B48E8, &type metadata accessor for Playlist.Collaborator);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100B8B4E0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100B8B4E0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for Playlist.Collaborator();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100B8AB9C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_100B8A648();
      goto LABEL_12;
    }

    sub_100B8A880();
  }

  v13 = *v3;
  sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100B8C798(&qword_1011B48E8, &type metadata accessor for Playlist.Collaborator);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100B8B784(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B4EC8);
  __chkstk_darwin(v2 - 8);
  sub_1000089F8(a1, &v5 - v3, &qword_1011B4EC8);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t sub_100B8B82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

BOOL _s11MusicCoreUI16PlaylistCuratorsO7CuratorV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_10010FC20(&qword_1011B4A58);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  if (*a1 == *a2 && a1[1] == a2[1] || (v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v14 & 1) != 0))
  {
    v23 = v7;
    v16 = *(type metadata accessor for PlaylistCurators.Curator(0) + 20);
    v17 = *(v11 + 48);
    sub_1000089F8(a1 + v16, v13, &unk_1011B55F0);
    sub_1000089F8(a2 + v16, &v13[v17], &unk_1011B55F0);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        sub_1000095E8(v13, &unk_1011B55F0);
        return 1;
      }
    }

    else
    {
      sub_1000089F8(v13, v10, &unk_1011B55F0);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        v19 = v23;
        (*(v5 + 32))(v23, &v13[v17], v4);
        sub_100B8C798(&qword_1011B4A60, &type metadata accessor for Artwork);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        v21 = *(v5 + 8);
        v21(v19, v4);
        v21(v10, v4);
        sub_1000095E8(v13, &unk_1011B55F0);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_1000095E8(v13, &qword_1011B4A58);
    return 0;
  }

  return result;
}

uint64_t sub_100B8BC6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v64 = a1;
  v4 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v4 - 8);
  v66 = &v56 - v5;
  v6 = sub_10010FC20(&qword_1011B48F8);
  __chkstk_darwin(v6 - 8);
  v58 = &v56 - v7;
  v68 = type metadata accessor for Playlist();
  v67 = *(v68 - 8);
  v8 = __chkstk_darwin(v68);
  v62 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = v9;
  __chkstk_darwin(v8);
  v61 = &v56 - v10;
  v60 = sub_10010FC20(&qword_1011B3D00);
  v59 = *(v60 - 1);
  __chkstk_darwin(v60);
  v12 = &v56 - v11;
  v57 = sub_10010FC20(&qword_1011B3CE0);
  v13 = *(v57 - 8);
  __chkstk_darwin(v57);
  v15 = &v56 - v14;
  v16 = sub_10010FC20(&qword_1011B3CC8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - v18;
  v20 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  *&v71[0] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011B3CB0);
  Published.init(initialValue:)();
  v21 = *(v17 + 32);
  v21(v3 + v20, v19, v16);
  v22 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators;
  *&v71[0] = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v21(v3 + v22, v19, v16);
  v23 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  *&v71[0] = &_swiftEmptySetSingleton;
  sub_10010FC20(&qword_1011B3CB8);
  Published.init(initialValue:)();
  (*(v13 + 32))(v3 + v23, v15, v57);
  v24 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL;
  LOBYTE(v71[0]) = 0;
  Published.init(initialValue:)();
  v25 = *(v59 + 32);
  v26 = v60;
  v25(v3 + v24, v12, v60);
  v27 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss;
  LOBYTE(v71[0]) = 0;
  Published.init(initialValue:)();
  v25(v3 + v27, v12, v26);
  v28 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity;
  static ApplicationCapabilities.shared.getter(v71);
  sub_100014984(v71);
  v70 = BYTE1(v71[0]);
  Published.init(initialValue:)();
  v25(v3 + v28, v12, v26);
  v29 = v63;
  v30 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  v31 = sub_10010FC20(&qword_1011B5930);
  (*(*(v31 - 8) + 56))(v3 + v30, 1, 1, v31);
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = 0;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = 0;
  v59 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver) = 0;
  *(v3 + 16) = v64;
  v32 = v67;
  v33 = *(v67 + 16);
  v34 = v61;
  v35 = v68;
  v33(v61, v29, v68);
  swift_beginAccess();
  v60 = v33;
  v33(v62, v34, v35);

  v36 = v35;
  Published.init(initialValue:)();
  v37 = *(v32 + 8);
  v38 = v34;
  v64 = v32 + 8;
  v62 = v37;
  v37(v34, v36);
  swift_endAccess();
  v39 = v58;
  v40 = v29;
  Playlist.collaboration.getter();
  v41 = type metadata accessor for Playlist.Collaboration();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v39, 1, v41) == 1)
  {
    sub_1000095E8(v39, &qword_1011B48F8);
    v43 = 0;
  }

  else
  {
    v43 = Playlist.Collaboration.isOpenInvitation.getter();
    (*(v42 + 8))(v39, v41);
  }

  swift_beginAccess();
  v69 = v43 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v44 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v45 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v46 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v47 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v44, v45, 1, 1, sub_100B90D68, v46);
  *(v3 + v59) = v47;

  v48 = type metadata accessor for TaskPriority();
  v49 = v66;
  (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
  v50 = v68;
  (v60)(v34, v40, v68);
  v51 = v67;
  v52 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v53 = (v65 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  (*(v51 + 32))(v54 + v52, v38, v50);
  *(v54 + v53) = v3;

  sub_100B284E0(0, 0, v49, &unk_100F05A40, v54);

  v62(v40, v50);
  return v3;
}

unint64_t sub_100B8C5D4()
{
  result = qword_1011B3D98;
  if (!qword_1011B3D98)
  {
    sub_1001109D0(&qword_1011B3D90);
    sub_100020674(&qword_1011B3DA0, &qword_1011B3DA8);
    sub_100020674(&qword_1011B3DB0, &qword_1011B3DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3D98);
  }

  return result;
}

void sub_100B8C6B8(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_100B7FCE8(a1, a2);
}

uint64_t sub_100B8C798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B8C838(uint64_t a1)
{
  result = sub_100B8C798(&qword_1011B3E20, type metadata accessor for PlaylistCurators.View);
  *(a1 + 8) = result;
  return result;
}

void sub_100B8C8A8()
{
  sub_100B8D1EC(319, &qword_1011B3E60, &qword_1011B3CB0, &unk_100F047A0, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_100B8D1EC(319, &qword_1011B3E68, &qword_1011B3CB8, &unk_100F047A8, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_100B8D3EC(319, &qword_1011B3E70, &type metadata accessor for Playlist, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_100053FCC(319, &qword_1011B3E78, &type metadata accessor for Published);
        if (v3 <= 0x3F)
        {
          sub_100B8D1EC(319, qword_1011B3E80, &qword_1011B5930, &unk_100EFDE70, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100B8CB3C()
{
  sub_100B8CCFC();
  if (v0 <= 0x3F)
  {
    sub_100B8D3EC(319, &qword_1011B4258, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100B8D3EC(319, &qword_1011B4260, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100B8D3EC(319, &qword_1011B4268, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100B8D1EC(319, qword_1011B4270, &qword_1011B3D60, &unk_100F04880, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_100053FCC(319, &unk_1011B2B98, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100B8CCFC()
{
  if (!qword_1011B4250)
  {
    type metadata accessor for Collaboration.Management.Model(255);
    sub_100B8C798(&qword_1011B3D68, type metadata accessor for Collaboration.Management.Model);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B4250);
    }
  }
}

void sub_100B8CE10()
{
  sub_100B8D3EC(319, &qword_1011B4380, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100B8CEE4()
{
  sub_100B8D1EC(319, &unk_1011B4420, &qword_1011B0C18, &unk_100F04980, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100B8D060()
{
  type metadata accessor for Playlist.Collaborator();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Collaboration.Management.Model(319);
    if (v1 <= 0x3F)
    {
      sub_100053FCC(319, &unk_1011B2B98, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100B8D1EC(319, &qword_1011B4538, &unk_1011B4540, &unk_100F010B0, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_100B8D3EC(319, &qword_1011B4260, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100B8D3EC(319, &qword_1011B4268, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100B8D1EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100B8D260(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

void sub_100B8D2F4()
{
  sub_10001F888();
  if (v0 <= 0x3F)
  {
    sub_100B8D3EC(319, &qword_1011B45F8, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100053FCC(319, &qword_1011B4600, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100B8D3EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100B8D470()
{
  result = qword_1011B4638;
  if (!qword_1011B4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4638);
  }

  return result;
}

unint64_t sub_100B8D4C8()
{
  result = qword_1011B4640;
  if (!qword_1011B4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4640);
  }

  return result;
}

unint64_t sub_100B8D520()
{
  result = qword_1011B4648;
  if (!qword_1011B4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4648);
  }

  return result;
}

unint64_t sub_100B8D578()
{
  result = qword_1011B4650;
  if (!qword_1011B4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4650);
  }

  return result;
}

unint64_t sub_100B8D5F0()
{
  result = qword_1011B4688;
  if (!qword_1011B4688)
  {
    sub_1001109D0(&qword_1011B4658);
    sub_100020674(&qword_1011B4690, &qword_1011B4698);
    sub_100020674(&qword_1011B46A0, &qword_1011B46A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4688);
  }

  return result;
}

unint64_t sub_100B8D6D4()
{
  result = qword_1011B59C0;
  if (!qword_1011B59C0)
  {
    sub_1001109D0(&qword_1011B46C0);
    sub_100020674(&qword_1011B46C8, &unk_1011B46D0);
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B59C0);
  }

  return result;
}

uint64_t sub_100B8D7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B8D828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B8D8BC()
{
  v1 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v2 + v1[7];
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    v5(v6, v3);
  }

  sub_10010FC20(&qword_1011B44C8);

  v7 = v1[8];
  sub_10010FC20(&unk_1011B3D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  sub_10010FC20(&unk_1011B08A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100B8DBF0()
{
  result = qword_1011B47C8;
  if (!qword_1011B47C8)
  {
    sub_1001109D0(&qword_1011B4708);
    sub_100020674(&qword_1011B47D0, &qword_1011B47D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B47C8);
  }

  return result;
}

uint64_t sub_100B8DCA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B8DD08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10069B2E4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100B8DD20(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10069B320(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_100B8DD38()
{
  result = qword_1011B47F0;
  if (!qword_1011B47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B47F0);
  }

  return result;
}

unint64_t sub_100B8DDC4()
{
  result = qword_1011B47F8;
  if (!qword_1011B47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B47F8);
  }

  return result;
}

unint64_t sub_100B8DE18()
{
  result = qword_1011B4800;
  if (!qword_1011B4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4800);
  }

  return result;
}

unint64_t sub_100B8DED8()
{
  result = qword_1011B4830;
  if (!qword_1011B4830)
  {
    sub_1001109D0(&qword_1011B4828);
    sub_100B8DF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4830);
  }

  return result;
}

unint64_t sub_100B8DF64()
{
  result = qword_1011B4838;
  if (!qword_1011B4838)
  {
    sub_1001109D0(&qword_1011B4840);
    sub_100B8DFF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4838);
  }

  return result;
}

unint64_t sub_100B8DFF0()
{
  result = qword_1011B4848;
  if (!qword_1011B4848)
  {
    sub_1001109D0(&qword_1011B4850);
    sub_100020674(&qword_1011B4858, &qword_1011B4860);
    sub_100020674(&qword_1011B4868, &qword_1011B4870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4848);
  }

  return result;
}

unint64_t sub_100B8E0D4()
{
  result = qword_1011B48A8;
  if (!qword_1011B48A8)
  {
    sub_1001109D0(&qword_1011B48A0);
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B48A8);
  }

  return result;
}

uint64_t sub_100B8E18C(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_100B73FD0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100B8E294(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100B746E4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B8E38C()
{
  v1 = type metadata accessor for Playlist.Collaborator();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100B8E458(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100B73798(a1, v6, v7, v8, v1 + v5);
}

double sub_100B8E550(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011B3E00);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_10010FC20(&qword_1011B0C18);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  sub_1000089F8(a1, v9, &qword_1011B0C18);
  sub_1000089F8(v16, &v9[v17], &qword_1011B0C18);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    sub_1000095E8(v16, &qword_1011B0C18);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      sub_1000095E8(v9, &qword_1011B0C18);
      return -9.0;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v9, v12, &qword_1011B0C18);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    sub_1000095E8(v16, &qword_1011B0C18);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_1000095E8(v9, &unk_1011B3E00);
    return -12.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  sub_100B8C798(&qword_1011B3E10, &type metadata accessor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_1000095E8(v16, &qword_1011B0C18);
  v21(v12, v2);
  sub_1000095E8(v9, &qword_1011B0C18);
  result = -9.0;
  if ((v20 & 1) == 0)
  {
    return -12.0;
  }

  return result;
}

uint64_t sub_100B8E928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  v7 = *(v3 + 16);

  return sub_100B87F04(a1, a2, v7, a3);
}

uint64_t sub_100B8E9B4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_10010FC20(&qword_1011B4A38);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_100B8EA1C()
{
  result = qword_1011B49C8;
  if (!qword_1011B49C8)
  {
    sub_1001109D0(&qword_1011B49B8);
    sub_100B8EAD4();
    sub_100020674(&qword_1011B4A28, &qword_1011B4A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B49C8);
  }

  return result;
}

unint64_t sub_100B8EAD4()
{
  result = qword_1011B49D0;
  if (!qword_1011B49D0)
  {
    sub_1001109D0(&qword_1011B49D8);
    sub_100B8EB60();
    sub_100B37464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B49D0);
  }

  return result;
}

unint64_t sub_100B8EB60()
{
  result = qword_1011B49E0;
  if (!qword_1011B49E0)
  {
    sub_1001109D0(&qword_1011B49E8);
    sub_100B8EBEC();
    sub_100B37410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B49E0);
  }

  return result;
}

unint64_t sub_100B8EBEC()
{
  result = qword_1011B49F0;
  if (!qword_1011B49F0)
  {
    sub_1001109D0(&qword_1011B49F8);
    sub_100B8EC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B49F0);
  }

  return result;
}

unint64_t sub_100B8EC78()
{
  result = qword_1011B4A00;
  if (!qword_1011B4A00)
  {
    sub_1001109D0(&qword_1011B4A08);
    sub_1001109D0(&qword_1011B33A8);
    sub_100B5A07C();
    swift_getOpaqueTypeConformance2();
    sub_100B8C798(&unk_1011B4A10, type metadata accessor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4A00);
  }

  return result;
}

double sub_100B8ED70(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011B3E00);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_10010FC20(&qword_1011B0C18);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  sub_1000089F8(a1, v9, &qword_1011B0C18);
  sub_1000089F8(v16, &v9[v17], &qword_1011B0C18);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    sub_1000095E8(v16, &qword_1011B0C18);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      sub_1000095E8(v9, &qword_1011B0C18);
      return 25.0;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v9, v12, &qword_1011B0C18);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    sub_1000095E8(v16, &qword_1011B0C18);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_1000095E8(v9, &unk_1011B3E00);
    return 29.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  sub_100B8C798(&qword_1011B3E10, &type metadata accessor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_1000095E8(v16, &qword_1011B0C18);
  v21(v12, v2);
  sub_1000095E8(v9, &qword_1011B0C18);
  result = 25.0;
  if ((v20 & 1) == 0)
  {
    return 29.0;
  }

  return result;
}

uint64_t sub_100B8F160()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_10010FC20(&unk_1011B0890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_10010FC20(&unk_1011B3D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  sub_10010FC20(&unk_1011B08A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OpenURLAction();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100B8F3F4()
{
  result = qword_1011B4AF8;
  if (!qword_1011B4AF8)
  {
    sub_1001109D0(&qword_1011B4AE8);
    sub_100020674(&qword_1011B4B00, &qword_1011B4B08);
    sub_100020674(&qword_1011B4B10, &qword_1011B4B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4AF8);
  }

  return result;
}

uint64_t sub_100B8F4D8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B8F554()
{
  result = qword_1011B4B28;
  if (!qword_1011B4B28)
  {
    sub_1001109D0(&qword_1011B4B30);
    sub_100B8F60C();
    sub_100020674(&qword_1011B4B48, &qword_1011B4B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4B28);
  }

  return result;
}

unint64_t sub_100B8F60C()
{
  result = qword_1011B4B38;
  if (!qword_1011B4B38)
  {
    sub_1001109D0(&qword_1011B4B40);
    sub_100B8D520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4B38);
  }

  return result;
}

unint64_t sub_100B8F698()
{
  result = qword_1011B4B58;
  if (!qword_1011B4B58)
  {
    sub_1001109D0(&qword_1011B4AE0);
    sub_100020674(&qword_1011B4B60, &qword_1011B4B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4B58);
  }

  return result;
}

unint64_t sub_100B8F748()
{
  result = qword_1011B4B70;
  if (!qword_1011B4B70)
  {
    sub_1001109D0(&qword_1011B4AD0);
    sub_1001109D0(&qword_1011B4AE8);
    sub_1001109D0(&qword_1011B4AF0);
    sub_100B8F3F4();
    sub_100B8F4D8(&qword_1011B4B20, &qword_1011B4AF0, &unk_100F056A8, sub_100B8F554);
    swift_getOpaqueTypeConformance2();
    sub_100B8F698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4B70);
  }

  return result;
}

unint64_t sub_100B8F8A8()
{
  result = qword_1011B4BC0;
  if (!qword_1011B4BC0)
  {
    sub_1001109D0(&qword_1011B4BB8);
    sub_100B8C798(&qword_1011B4BB0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4BC0);
  }

  return result;
}

unint64_t sub_100B8F990()
{
  result = qword_1011B4C00;
  if (!qword_1011B4C00)
  {
    sub_1001109D0(&qword_1011B4BF8);
    sub_100B8FA48();
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4C00);
  }

  return result;
}

unint64_t sub_100B8FA48()
{
  result = qword_1011B4C08;
  if (!qword_1011B4C08)
  {
    sub_1001109D0(&qword_1011B4C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4C08);
  }

  return result;
}

uint64_t sub_100B8FAF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100B728DC(a1, v4, v5, v6);
}

uint64_t sub_100B8FBAC@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_100B7ED2C(a1);
}

uint64_t sub_100B8FC20()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  sub_10010FC20(&unk_1011B0890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_10010FC20(&unk_1011B3D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_10010FC20(&unk_1011B08A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100B8FE88(char *a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100B7EDB4(a1, v4, v5, v6);
}

uint64_t sub_100B8FEFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100B724E0(a1, v4, v5, v6, v7);
}

uint64_t sub_100B8FFC0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_100B7D07C(a1);
}

uint64_t sub_100B90030(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100B4DD14(a1, a2, v2 + v6, v7);
}

uint64_t sub_100B900FC(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100B7CF10(a1, v4);
}

unint64_t sub_100B9017C()
{
  result = qword_1011B4D10;
  if (!qword_1011B4D10)
  {
    sub_1001109D0(&qword_1011B4CE0);
    sub_100B90234();
    sub_100020674(&qword_1011B4D28, &qword_1011B4D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4D10);
  }

  return result;
}

unint64_t sub_100B90234()
{
  result = qword_1011B4D18;
  if (!qword_1011B4D18)
  {
    sub_1001109D0(&qword_1011B4D20);
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4D18);
  }

  return result;
}

uint64_t sub_100B902EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100B72E3C(a1, v4, v5, v6);
}

uint64_t sub_100B903CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_100B7C1A0(a1);
}

unint64_t sub_100B9043C()
{
  result = qword_1011B4D68;
  if (!qword_1011B4D68)
  {
    sub_1001109D0(&qword_1011B4D50);
    sub_100B8C798(&qword_1011B4D70, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    sub_100020674(&qword_1011B4D78, &qword_1011B4D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4D68);
  }

  return result;
}

unint64_t sub_100B90550()
{
  result = qword_1011B4DC0;
  if (!qword_1011B4DC0)
  {
    sub_1001109D0(&qword_1011B4D98);
    sub_100B905DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4DC0);
  }

  return result;
}

unint64_t sub_100B905DC()
{
  result = qword_1011B4DC8;
  if (!qword_1011B4DC8)
  {
    sub_1001109D0(&qword_1011B4DB8);
    sub_100B90694();
    sub_100020674(&qword_1011B4B10, &qword_1011B4B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4DC8);
  }

  return result;
}

unint64_t sub_100B90694()
{
  result = qword_1011B4DD0;
  if (!qword_1011B4DD0)
  {
    sub_1001109D0(&qword_1011B4DB0);
    sub_100020674(&qword_1011B4DD8, &qword_1011B4DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4DD0);
  }

  return result;
}

uint64_t sub_100B907EC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_100B90868()
{
  result = qword_1011B4E50;
  if (!qword_1011B4E50)
  {
    sub_1001109D0(&qword_1011B4DF8);
    sub_100020674(&qword_1011B46C8, &unk_1011B46D0);
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4E50);
  }

  return result;
}

unint64_t sub_100B9094C()
{
  result = qword_1011B4E80;
  if (!qword_1011B4E80)
  {
    sub_1001109D0(&qword_1011B4E00);
    sub_100B90A04();
    sub_100020674(&qword_1011B4EB8, &qword_1011B4E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4E80);
  }

  return result;
}

unint64_t sub_100B90A04()
{
  result = qword_1011B4E88;
  if (!qword_1011B4E88)
  {
    sub_1001109D0(&qword_1011B4E70);
    sub_100B90ABC();
    sub_100020674(&qword_1011B4EA8, &qword_1011B4EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4E88);
  }

  return result;
}

unint64_t sub_100B90ABC()
{
  result = qword_1011B4E90;
  if (!qword_1011B4E90)
  {
    sub_1001109D0(&qword_1011B4E68);
    sub_100B90B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4E90);
  }

  return result;
}

unint64_t sub_100B90B48()
{
  result = qword_1011B4E98;
  if (!qword_1011B4E98)
  {
    sub_1001109D0(&qword_1011B4E60);
    sub_100B90BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4E98);
  }

  return result;
}

unint64_t sub_100B90BD4()
{
  result = qword_1011B4EA0;
  if (!qword_1011B4EA0)
  {
    sub_1001109D0(&qword_1011B4E58);
    sub_1001109D0(&qword_1011B4DF8);
    sub_100B90868();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4EA0);
  }

  return result;
}

uint64_t sub_100B90D70(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100B6D1B4(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_100B90EB8()
{
  result = qword_1011B4F68;
  if (!qword_1011B4F68)
  {
    sub_1001109D0(&qword_1011B4F70);
    sub_1001109D0(&qword_1011B4668);
    sub_1001109D0(&qword_1011B4660);
    sub_1001109D0(&qword_1011B4658);
    sub_1001109D0(&qword_1011B4680);
    sub_100B8D5F0();
    sub_100B8F4D8(&unk_1011B46B0, &qword_1011B4680, &unk_100F05048, sub_100B8D6D4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100B8C798(&qword_1011B4F78, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4F68);
  }

  return result;
}

unint64_t sub_100B91090()
{
  result = qword_1011B4F80;
  if (!qword_1011B4F80)
  {
    sub_1001109D0(&qword_1011B4878);
    sub_100B91148();
    sub_100020674(&qword_1011B4FA0, &qword_1011B4880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4F80);
  }

  return result;
}

unint64_t sub_100B91148()
{
  result = qword_1011B4F88;
  if (!qword_1011B4F88)
  {
    sub_1001109D0(&qword_1011B4818);
    sub_100B91200();
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4F88);
  }

  return result;
}

unint64_t sub_100B91200()
{
  result = qword_1011B4F90;
  if (!qword_1011B4F90)
  {
    sub_1001109D0(&qword_1011B4810);
    sub_100020674(&qword_1011B4F98, &qword_1011B4808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4F90);
  }

  return result;
}

unint64_t sub_100B912D8()
{
  result = qword_1011B4FA8;
  if (!qword_1011B4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4FA8);
  }

  return result;
}

unint64_t sub_100B91344()
{
  result = qword_1011B4FC8;
  if (!qword_1011B4FC8)
  {
    sub_1001109D0(&qword_1011B4FC0);
    sub_100B913FC();
    sub_100020674(&unk_1011B5000, &qword_1011B59A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4FC8);
  }

  return result;
}

unint64_t sub_100B913FC()
{
  result = qword_1011B4FD0;
  if (!qword_1011B4FD0)
  {
    sub_1001109D0(&qword_1011B4FD8);
    sub_100B914B4();
    sub_100020674(&qword_1011B4EA8, &qword_1011B4EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4FD0);
  }

  return result;
}

unint64_t sub_100B914B4()
{
  result = qword_1011B4FE0;
  if (!qword_1011B4FE0)
  {
    sub_1001109D0(&qword_1011B4FE8);
    sub_100B91540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4FE0);
  }

  return result;
}

unint64_t sub_100B91540()
{
  result = qword_1011B4FF0;
  if (!qword_1011B4FF0)
  {
    sub_1001109D0(&qword_1011B4FF8);
    sub_100B8E0D4();
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4FF0);
  }

  return result;
}

unint64_t sub_100B91628()
{
  result = qword_1011B5028;
  if (!qword_1011B5028)
  {
    sub_1001109D0(&qword_1011B5018);
    sub_1001109D0(&qword_1011B4FB0);
    type metadata accessor for BorderlessButtonStyle();
    sub_100020674(&qword_1011B5010, &qword_1011B4FB0);
    sub_100B8C798(&qword_1011B4BF0, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011B5030, &qword_1011B5020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5028);
  }

  return result;
}

unint64_t sub_100B917DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011B55A8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000160F8(*(a1 + 48) + 40 * v12, v33);
        sub_10000DD18(*(a1 + 56) + 32 * v12, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_1000160F8(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_1000095E8(v30, &qword_1011B5448);

          goto LABEL_23;
        }

        v14 = v23[0];
        v13 = v23[1];
        sub_10000DD18(v31 + 8, v23);
        sub_1000095E8(v30, &qword_1011B5448);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        result = sub_10000F8B8(v14, v13);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v13;
          v10 = result;

          result = sub_10040DF5C(&v24, v2[7] + 40 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v2[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          v17 = v2[7] + 40 * result;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_27;
          }

          v2[2] = v22;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_1000095E8(&v24, &qword_1011B55B0);
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t Collaboration.Flow.Collaborator.init(name:handle:artwork:canCollaborate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for Artwork();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = *(v14 + 28);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_100B91BEC(a5, &a7[v15]);
  a7[v17] = a6;
  return result;
}

uint64_t sub_100B91BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011B55F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Collaboration.Flow.Collaborator.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Collaboration.Flow.Collaborator(0) + 24);

  return sub_100B91BEC(a1, v3);
}

uint64_t Collaboration.Flow.Collaborator.canCollaborate.setter(char a1)
{
  result = type metadata accessor for Collaboration.Flow.Collaborator(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Collaboration.Flow.title.getter()
{
  v1 = v0;
  v33[0] = type metadata accessor for Playlist.Collaborator();
  v2 = *(v33[0] - 8);
  __chkstk_darwin(v33[0]);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B9E020(v1, v15, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v2;
      v18 = *(v2 + 32);
      v19 = v33[0];
      v18(v4, v15, v33[0]);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v20 = qword_10121B340;
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      (*(v7 + 8))(v12, v6);
      sub_10010FC20(&qword_1011B5078);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100EBC6B0;
      v22 = Playlist.Collaborator.name.getter();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_10001CE78();
      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = 0;
      }

      v26 = 0xE000000000000000;
      if (v24)
      {
        v26 = v24;
      }

      *(v21 + 32) = v25;
      *(v21 + 40) = v26;
      v27 = static String.localizedStringWithFormat(_:_:)();

      (*(v17 + 8))(v4, v19);
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v29 = qword_10121B340;
      static Locale.current.getter();
      v27 = String.init(localized:table:bundle:locale:comment:)();
      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    v28 = *(sub_10010FC20(&qword_1011B5088) + 48);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v7 + 16))(v9, v12, v6);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v30 = qword_10121B340;
    static Locale.current.getter();
    v27 = String.init(localized:table:bundle:locale:comment:)();
    (*(v7 + 8))(v12, v6);
    v31 = type metadata accessor for URL();
    (*(*(v31 - 8) + 8))(&v15[v28], v31);
    sub_1000095E8(v15, &qword_1011B5090);
  }

  return v27;
}

Swift::String __swiftcall Collaboration.Flow.subtitle(hasProfileEdit:)(Swift::Bool hasProfileEdit)
{
  v92 = hasProfileEdit;
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v91 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = (&v87 - v7);
  v9 = sub_10010FC20(&qword_1011B5098);
  __chkstk_darwin(v9 - 8);
  v11 = &v87 - v10;
  v12 = sub_10010FC20(&qword_1011B5090);
  __chkstk_darwin(v12 - 8);
  v14 = &v87 - v13;
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v94 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for String.LocalizationValue();
  v93 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v87 - v19;
  v21 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v21);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B9E020(v1, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v25 = v93;
      v26 = v96;
      (*(v93 + 16))(v95, v20, v96);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v27 = qword_10121B340;
      static Locale.current.getter();
      v28 = String.init(localized:table:bundle:locale:comment:)();
      v30 = v29;
      (*(v25 + 8))(v20, v26);
      sub_100B9D1B4(v23, type metadata accessor for Collaboration.Flow);
    }

    else
    {
      v39 = v93;
      v40 = (v93 + 16);
      v41 = v20;
      v42 = v95;
      v43 = v96;
      String.LocalizationValue.init(stringLiteral:)();
      (*v40)(v42, v41, v43);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v46 = qword_10121B340;
      static Locale.current.getter();
      v28 = String.init(localized:table:bundle:locale:comment:)();
      v30 = v47;
      (*(v39 + 8))(v41, v43);
    }

    goto LABEL_33;
  }

  v31 = sub_10010FC20(&qword_1011B5088);
  v32 = *(v31 + 48);
  v33 = *(v31 + 64);
  v34 = v23;
  v35 = v23[v33];
  v89 = v32;
  v90 = v34;
  sub_10003D17C(v34, v14, &qword_1011B5090);
  v88 = v14;
  sub_1000089F8(v14, v11, &qword_1011B5090);
  if ((*(v91 + 48))(v11, 1, v3) == 1)
  {
    v36 = v93;
    v37 = (v93 + 16);
    v38 = v20;
    String.LocalizationValue.init(stringLiteral:)();
    v48 = v96;
    (*v37)(v95, v38, v96);
    v49 = v88;
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v50 = qword_10121B340;
    static Locale.current.getter();
    v28 = String.init(localized:table:bundle:locale:comment:)();
    v30 = v51;
    (*(v36 + 8))(v38, v48);
    sub_1000095E8(v49, &qword_1011B5090);
    v52 = type metadata accessor for URL();
    (*(*(v52 - 8) + 8))(v90 + v89, v52);
    goto LABEL_33;
  }

  v44 = v20;
  if (v35)
  {
    v45 = v8;
    sub_100B9D234(v11, v8, type metadata accessor for Collaboration.Flow.Collaborator);
    if (v92)
    {
      goto LABEL_19;
    }

    countAndFlagsBits = v8[1]._countAndFlagsBits;
    object = v8[1]._object;
    v61 = v90;
    if (object)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v62._countAndFlagsBits = 0x100000000000002ELL;
      v62._object = 0x8000000100E665C0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v62);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v8);
      v63._countAndFlagsBits = 4204576;
      v63._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v63);
      v64._countAndFlagsBits = countAndFlagsBits;
      v64._object = object;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v64);
      v65._countAndFlagsBits = 0xD000000000000031;
      v65._object = 0x8000000100E665F0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v65);
LABEL_26:
      String.LocalizationValue.init(stringInterpolation:)();
      v72 = v93;
      v73 = v96;
      (*(v93 + 16))(v95, v44, v96);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v74 = qword_10121B340;
      static Locale.current.getter();
      v28 = String.init(localized:table:bundle:locale:comment:)();
      v30 = v75;
      (*(v72 + 8))(v44, v73);
LABEL_32:
      sub_1000095E8(v88, &qword_1011B5090);
      sub_100B9D1B4(v45, type metadata accessor for Collaboration.Flow.Collaborator);
      v83 = type metadata accessor for URL();
      (*(*(v83 - 8) + 8))(v61 + v89, v83);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v45 = v5;
  sub_100B9D234(v11, v5, type metadata accessor for Collaboration.Flow.Collaborator);
  if (!v92)
  {
    v66 = v5[1]._countAndFlagsBits;
    v67 = v5[1]._object;
    v61 = v90;
    if (v67)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v68._countAndFlagsBits = 0x100000000000002ALL;
      v68._object = 0x8000000100E664D0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v68);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v5);
      v69._countAndFlagsBits = 4204576;
      v69._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v69);
      v70._countAndFlagsBits = v66;
      v70._object = v67;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v70);
      v71._countAndFlagsBits = 0xD000000000000048;
      v71._object = 0x8000000100E66500;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v71);
      goto LABEL_26;
    }

LABEL_29:
    String.LocalizationValue.init(stringLiteral:)();
    v76 = v93;
    v77 = v96;
    (*(v93 + 16))(v95, v44, v96);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v78 = qword_10121B340;
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    (*(v76 + 8))(v44, v77);
    sub_10010FC20(&qword_1011B5078);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_100EBC6B0;
    v80 = v45->_countAndFlagsBits;
    v81 = v45->_object;
    *(v79 + 56) = &type metadata for String;
    *(v79 + 64) = sub_10001CE78();
    *(v79 + 32) = v80;
    *(v79 + 40) = v81;

    v28 = static String.localizedStringWithFormat(_:_:)();
    v30 = v82;

    goto LABEL_32;
  }

LABEL_19:
  String.LocalizationValue.init(stringLiteral:)();
  v53 = v93;
  v54 = v96;
  (*(v93 + 16))(v95, v44, v96);
  v55 = v90;
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v56 = qword_10121B340;
  static Locale.current.getter();
  v28 = String.init(localized:table:bundle:locale:comment:)();
  v30 = v57;
  (*(v53 + 8))(v44, v54);
  sub_1000095E8(v88, &qword_1011B5090);
  sub_100B9D1B4(v45, type metadata accessor for Collaboration.Flow.Collaborator);
  v58 = type metadata accessor for URL();
  (*(*(v58 - 8) + 8))(v55 + v89, v58);
LABEL_33:
  v84 = v28;
  v85 = v30;
  result._object = v85;
  result._countAndFlagsBits = v84;
  return result;
}

uint64_t Collaboration.Flow.buttonActionTitle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  v10 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100B9E020(v1, v12, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100B9D1B4(v12, type metadata accessor for Collaboration.Flow);
      return 0;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v16 = qword_10121B340;
      static Locale.current.getter();
      v14 = String.init(localized:table:bundle:locale:comment:)();
      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    v15 = *(sub_10010FC20(&qword_1011B5088) + 48);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v17 = qword_10121B340;
    static Locale.current.getter();
    v14 = String.init(localized:table:bundle:locale:comment:)();
    (*(v4 + 8))(v9, v3);
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 8))(&v12[v15], v18);
    sub_1000095E8(v12, &qword_1011B5090);
  }

  return v14;
}

uint64_t Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B805SwiftD05StateVySbGvpfi_0();
  State.init(wrappedValue:)();
  *a9 = v25;
  *(a9 + 8) = v26;
  State.init(wrappedValue:)();
  *(a9 + 16) = v25;
  *(a9 + 24) = v26;
  v17 = type metadata accessor for Collaboration.Flow.View(0);
  v18 = (a9 + v17[10]);
  v19 = a9 + v17[12];
  *v19 = sub_100B9A2A8;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  sub_100B9D234(a1, a9 + v17[6], type metadata accessor for Collaboration.Flow);
  v20 = v17[7];
  v21 = type metadata accessor for Playlist();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  *v18 = a5;
  v18[1] = a6;
  v23 = (a9 + v17[11]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_10010FC20(&qword_1011B50A0);
  return sub_100B93618(v1, a1 + *(v3 + 44));
}

uint64_t sub_100B93618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v487 = a1;
  v461 = a2;
  v460 = sub_10010FC20(&qword_1011B5460);
  __chkstk_darwin(v460);
  v424 = &v396 - v2;
  v3 = sub_10010FC20(&qword_1011B4720);
  __chkstk_darwin(v3 - 8);
  v399 = &v396 - v4;
  v400 = type metadata accessor for Artwork.CropStyle();
  v417 = *(v400 - 8);
  __chkstk_darwin(v400);
  v416 = &v396 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v6 - 8);
  v410 = &v396 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v409 = &v396 - v9;
  v10 = type metadata accessor for ArtworkImage();
  v418 = *(v10 - 8);
  v419 = v10;
  __chkstk_darwin(v10);
  v432 = &v396 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v398 = &v396 - v13;
  __chkstk_darwin(v14);
  v415 = &v396 - v15;
  __chkstk_darwin(v16);
  v434 = &v396 - v17;
  v435 = type metadata accessor for ArtworkImage.ReusePolicy();
  v433 = *(v435 - 8);
  __chkstk_darwin(v435);
  v446 = &v396 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_1011B5930);
  __chkstk_darwin(v19 - 8);
  v408 = &v396 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v407 = &v396 - v22;
  __chkstk_darwin(v23);
  v445 = (&v396 - v24);
  v412 = sub_10010FC20(&qword_1011B5468);
  __chkstk_darwin(v412);
  v414 = &v396 - v25;
  v413 = sub_10010FC20(&qword_1011B5950);
  __chkstk_darwin(v413);
  v423 = &v396 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v411 = &v396 - v28;
  __chkstk_darwin(v29);
  v455 = &v396 - v30;
  v468 = type metadata accessor for Playlist.Collaborator();
  v454 = *(v468 - 8);
  __chkstk_darwin(v468);
  v436 = v31;
  v437 = &v396 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v467 = &v396 - v33;
  v34 = type metadata accessor for URL();
  v430 = *(v34 - 8);
  v431 = v34;
  __chkstk_darwin(v34);
  v405 = v35;
  v406 = &v396 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v429 = &v396 - v37;
  v457 = sub_10010FC20(&qword_1011B5470);
  __chkstk_darwin(v457);
  v459 = &v396 - v38;
  v439 = sub_10010FC20(&qword_1011B5478);
  __chkstk_darwin(v439);
  v441 = (&v396 - v39);
  v458 = sub_10010FC20(&qword_1011B5480);
  __chkstk_darwin(v458);
  v442 = &v396 - v40;
  v440 = sub_10010FC20(&qword_1011B5488);
  __chkstk_darwin(v440);
  v422 = &v396 - v41;
  v42 = type metadata accessor for Collaboration.Flow.View(0);
  v453 = *(v42 - 8);
  v43 = *(v453 + 64);
  __chkstk_darwin(v42);
  v469 = &v396 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_10010FC20(&qword_1011B5490);
  v465 = *(v449 - 1);
  __chkstk_darwin(v449);
  v421 = &v396 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v438 = &v396 - v46;
  v47 = type metadata accessor for Locale();
  __chkstk_darwin(v47 - 8);
  v450 = &v396 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = type metadata accessor for String.LocalizationValue();
  v466 = *(v452 - 8);
  __chkstk_darwin(v452);
  v448 = &v396 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v451 = &v396 - v51;
  v401 = sub_10010FC20(&qword_1011B5498);
  __chkstk_darwin(v401);
  v403 = &v396 - v52;
  v402 = sub_10010FC20(&qword_1011B54A0);
  __chkstk_darwin(v402);
  v420 = &v396 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v404 = &v396 - v55;
  __chkstk_darwin(v56);
  v447 = (&v396 - v57);
  v58 = sub_10010FC20(&qword_1011B54A8);
  __chkstk_darwin(v58 - 8);
  v485 = &v396 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v396 - v61;
  v63 = sub_10010FC20(&qword_1011B54B0);
  v443 = *(v63 - 8);
  v444 = v63;
  __chkstk_darwin(v63);
  v397 = (&v396 - v64);
  v65 = sub_10010FC20(&qword_1011B54B8);
  __chkstk_darwin(v65 - 8);
  v483 = &v396 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v490 = &v396 - v68;
  v478 = sub_10010FC20(&qword_1011B54C0);
  __chkstk_darwin(v478);
  v481 = &v396 - v69;
  v480 = sub_10010FC20(&qword_1011B54C8);
  __chkstk_darwin(v480);
  v484 = &v396 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v479 = &v396 - v72;
  __chkstk_darwin(v73);
  v488 = &v396 - v74;
  v75 = sub_10010FC20(&qword_1011B54D0);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v78 = &v396 - v77;
  v79 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v79);
  v464 = (&v396 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v81);
  v477 = &v396 - v82;
  __chkstk_darwin(v83);
  v85 = &v396 - v84;
  v86 = sub_10010FC20(&qword_1011B54D8);
  __chkstk_darwin(v86 - 8);
  v482 = &v396 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v90 = &v396 - v89;
  v462 = v42;
  v491 = *(v42 + 24);
  sub_100B9E020(v487 + v491, v85, type metadata accessor for Collaboration.Flow);
  v470 = v79;
  LODWORD(v42) = swift_getEnumCaseMultiPayload();
  sub_100B9D1B4(v85, type metadata accessor for Collaboration.Flow);
  v489 = v62;
  v486 = v90;
  if (v42 == 1)
  {
    v91 = 1;
  }

  else
  {
    if (qword_1011B06F0 != -1)
    {
      swift_once();
    }

    v92 = qword_1011B5068;
    *v499 = swift_getKeyPath();
    *&v499[8] = v92;

    v93 = sub_10010FC20(&qword_1011B54E0);
    v94 = sub_100B9DDC4();
    View.bold(_:)();

    *v499 = v93;
    *&v499[8] = v94;
    swift_getOpaqueTypeConformance2();
    v90 = v486;
    View.accessibilityHidden(_:)();
    (*(v76 + 8))(v78, v75);
    v91 = 0;
  }

  v456 = v43;
  v95 = sub_10010FC20(&qword_1011B54F8);
  (*(*(v95 - 8) + 56))(v90, v91, 1, v95);
  v96 = v487;
  *v499 = Collaboration.Flow.title.getter();
  *&v499[8] = v97;
  v463 = sub_1000098E0();
  v98 = Text.init<A>(_:)();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  if (qword_1011B06E8 != -1)
  {
    swift_once();
  }

  v105 = qword_1011B5060;
  KeyPath = swift_getKeyPath();
  LOBYTE(v498[0]) = v102 & 1;
  *v499 = v98;
  *&v499[8] = v100;
  v499[16] = v102 & 1;
  *&v499[24] = v104;
  *&v499[32] = 256;
  *&v499[40] = KeyPath;
  *&v499[48] = v105;

  sub_10010FC20(&qword_1011B5500);
  sub_100B9DED0();
  v107 = v481;
  View.bold(_:)();
  v544[0] = *v499;
  v544[1] = *&v499[16];
  v544[2] = *&v499[32];
  v545 = *&v499[48];
  sub_1000095E8(v544, &qword_1011B5500);
  v108 = swift_getKeyPath();
  v109 = v107 + *(v478 + 36);
  *v109 = v108;
  *(v109 + 8) = 1;
  v110 = static Edge.Set.top.getter();
  v111 = v477;
  sub_100B9E020(v96 + v491, v477, type metadata accessor for Collaboration.Flow);
  swift_getEnumCaseMultiPayload();
  sub_100B9D1B4(v111, type metadata accessor for Collaboration.Flow);
  EdgeInsets.init(_all:)();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = v479;
  sub_10003D17C(v107, v479, &qword_1011B54C0);
  v121 = v120 + *(v480 + 36);
  *v121 = v110;
  *(v121 + 8) = v113;
  *(v121 + 16) = v115;
  *(v121 + 24) = v117;
  *(v121 + 32) = v119;
  *(v121 + 40) = 0;
  sub_10003D17C(v120, v488, &qword_1011B54C8);
  v122 = v462;
  v123 = v462[9];
  v124 = *(v96 + v123);
  *v499 = Collaboration.Flow.subtitle(hasProfileEdit:)(*(v96 + v123));
  v478 = Text.init<A>(_:)();
  v477 = v125;
  v127 = v126;
  v479 = v128;
  v480 = swift_getKeyPath();
  v474 = v127 & 1;
  v499[0] = v127 & 1;
  v129 = swift_getKeyPath();
  v481 = v105;

  v130 = static Color.secondary.getter();
  v131 = swift_getKeyPath();
  v471 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v499[0] = 0;
  v472 = static Edge.Set.bottom.getter();
  if (qword_1011B06E0 != -1)
  {
    swift_once();
  }

  v473 = v131;
  EdgeInsets.init(_all:)();
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  if (v124)
  {
    v148 = v491;
    if (*(v96 + v122[10]))
    {
      type metadata accessor for InlineProfileEditingView.Context();
      sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context);
      v149 = StateObject.wrappedValue.getter();
      v150 = _s4FlowO18ProfileEditingViewVMa(0);
      v151 = v397;
      sub_100B9E020(v96 + v148, v397 + *(v150 + 20), type metadata accessor for Collaboration.Flow);
      *v151 = v149;
      LOBYTE(v149) = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v152 = v444;
      v153 = v151 + *(v444 + 36);
      *v153 = v149;
      *(v153 + 1) = v154;
      *(v153 + 2) = v155;
      *(v153 + 3) = v156;
      *(v153 + 4) = v157;
      v153[40] = 0;
      sub_10003D17C(v151, v490, &qword_1011B54B0);
      v158 = v152;
      v159 = 0;
      goto LABEL_16;
    }

    v159 = 1;
  }

  else
  {
    v159 = 1;
    v148 = v491;
  }

  v158 = v444;
LABEL_16:
  (*(v443 + 56))(v490, v159, 1, v158);
  type metadata accessor for InlineProfileEditingView.Context();
  sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context);
  StateObject.wrappedValue.getter();
  v160 = InlineProfileEditingView.Context.canValidate.getter();

  v161 = !v160;
  v162 = v464;
  sub_100B9E020(v96 + v148, v464, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v476 = v129;
  v475 = v130;
  if (EnumCaseMultiPayload)
  {
    v427 = v143;
    v428 = v141;
    v425 = v147;
    v426 = v145;
    if (EnumCaseMultiPayload != 1)
    {
      LODWORD(v470) = v161;
      v198 = *(v96 + 8);
      LOBYTE(v498[0]) = *v96;
      v197 = v498[0];
      *(&v498[0] + 1) = v198;
      v199 = sub_10010FC20(&qword_1011B2DD8);
      State.projectedValue.getter();
      v200 = v403;
      Toggle.init(isOn:label:)();
      v201 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v203 = v202;
      v205 = v204;
      v207 = v206;
      v209 = v208;
      v210 = v200 + *(sub_10010FC20(&qword_1011B5570) + 36);
      *v210 = v201;
      *(v210 + 8) = v203;
      *(v210 + 16) = v205;
      *(v210 + 24) = v207;
      *(v210 + 32) = v209;
      *(v210 + 40) = 0;
      v211 = static Edge.Set.all.getter();
      *(v200 + *(sub_10010FC20(&qword_1011B5578) + 36)) = v211;
      v212 = (v200 + *(v401 + 36));
      v213 = *(type metadata accessor for RoundedRectangle() + 20);
      v214 = enum case for RoundedCornerStyle.continuous(_:);
      v215 = type metadata accessor for RoundedCornerStyle();
      (*(*(v215 - 8) + 104))(&v212[v213], v214, v215);
      __asm { FMOV            V0.2D, #16.0 }

      *v212 = _Q0;
      *&v212[*(sub_10010FC20(&unk_1011B5680) + 36)] = 256;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v221 = v404;
      sub_10003D17C(v200, v404, &qword_1011B5498);
      v222 = (v221 + *(v402 + 36));
      v223 = v526;
      v222[4] = v525;
      v222[5] = v223;
      v222[6] = v527;
      v224 = v522;
      *v222 = v521;
      v222[1] = v224;
      v225 = v524;
      v222[2] = v523;
      v222[3] = v225;
      sub_10003D17C(v221, v447, &qword_1011B54A0);
      v499[0] = v197;
      *&v499[8] = v198;
      v455 = v199;
      State.wrappedValue.getter();
      v226 = v466;
      v227 = (v466 + 16);
      v228 = v451;
      String.LocalizationValue.init(stringLiteral:)();
      v238 = v452;
      (*v227)(v448, v228, v452);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v239 = qword_10121B340;
      static Locale.current.getter();
      v240 = String.init(localized:table:bundle:locale:comment:)();
      v242 = v241;
      v462 = v139;
      v464 = v137;
      v467 = v135;
      v468 = v133;
      (*(v226 + 8))(v228, v238);
      *v499 = v240;
      *&v499[8] = v242;
      v466 = Text.init<A>(_:)();
      v463 = v243;
      LOBYTE(v240) = v244;
      v454 = v245;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v500[54] = v532;
      *&v500[70] = v533;
      *&v500[86] = v534;
      *&v500[102] = v535;
      *&v500[6] = v529;
      *&v500[22] = v530;
      v246 = v240 & 1;
      v501 = v240 & 1;
      *&v500[38] = v531;
      v452 = swift_getKeyPath();
      v247 = static HierarchicalShapeStyle.secondary.getter();
      v248 = static Font.footnote.getter();
      v249 = swift_getKeyPath();
      v250 = static Edge.Set.horizontal.getter();
      EdgeInsets.init(_all:)();
      v252 = v251;
      v254 = v253;
      v256 = v255;
      v258 = v257;
      v502 = 0;
      v259 = static Edge.Set.top.getter();
      if (qword_1011B06F8 != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v261 = v260;
      v263 = v262;
      v265 = v264;
      v267 = v266;
      v503 = 0;
      v268 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      *&v493[98] = *&v500[64];
      *&v493[114] = *&v500[80];
      *&v493[130] = *&v500[96];
      *&v493[34] = *v500;
      *&v493[50] = *&v500[16];
      *&v493[66] = *&v500[32];
      v504 = 0;
      *v493 = v466;
      *&v493[8] = v463;
      v493[16] = v246;
      *&v493[24] = v454;
      *&v493[32] = 256;
      *&v493[82] = *&v500[48];
      *&v493[144] = *&v500[110];
      *&v493[152] = v452;
      v493[160] = 0;
      *&v493[164] = v247;
      *&v493[168] = v249;
      *&v493[176] = v248;
      v493[184] = v250;
      *&v493[192] = v252;
      *&v493[200] = v254;
      *&v493[208] = v256;
      *&v493[216] = v258;
      v493[224] = 0;
      v493[232] = v259;
      *&v493[240] = v261;
      *&v493[248] = v263;
      *&v493[256] = v265;
      *&v493[264] = v267;
      v493[272] = 0;
      *&v493[273] = v505;
      *&v493[276] = *(&v505 + 3);
      v493[280] = v268;
      *&v493[281] = v546;
      *&v493[284] = *(&v546 + 3);
      *&v493[288] = v269;
      *&v493[296] = v270;
      *&v493[304] = v271;
      *&v493[312] = v272;
      v493[320] = 0;
      v273 = v487;
      v274 = Collaboration.Flow.buttonActionTitle.getter();
      v276 = v275;
      v277 = v469;
      sub_100B9E020(v273, v469, type metadata accessor for Collaboration.Flow.View);
      v278 = (*(v453 + 80) + 16) & ~*(v453 + 80);
      v279 = swift_allocObject();
      sub_100B9D234(v277, v279 + v278, type metadata accessor for Collaboration.Flow.View);
      LOBYTE(v498[0]) = 0;
      State.init(wrappedValue:)();
      v280 = v499[0];
      v281 = *&v499[8];
      v282 = swift_getKeyPath();
      v494 = 0;
      v283 = swift_getKeyPath();
      v284 = swift_allocObject();
      *(v284 + 16) = v470 & 1;
      *v499 = v274;
      *&v499[8] = v276;
      v499[16] = 0;
      *&v499[17] = v497[0];
      *&v499[20] = *(v497 + 3);
      *&v499[24] = sub_100B9E764;
      *&v499[32] = v279;
      v499[40] = v280;
      *&v499[41] = v496[0];
      *&v499[44] = *(v496 + 3);
      *&v499[48] = v281;
      *&v499[56] = v282;
      v499[64] = v494;
      *&v499[65] = *v495;
      *&v499[68] = *&v495[3];
      *&v499[72] = v283;
      *&v499[80] = sub_100B9FA58;
      *&v499[88] = v284;
      v285 = *(v273 + 24);
      LOBYTE(v492[0]) = *(v273 + 16);
      *(&v492[0] + 1) = v285;
      v286 = State.projectedValue.getter();
      v470 = &v396;
      LODWORD(v469) = LOBYTE(v498[1]);
      __chkstk_darwin(v286);
      v487 = sub_10010FC20(&qword_1011B5548);
      v491 = sub_100B9E610();
      v287 = v438;
      View.alert(isPresented:content:)();

      v515 = *&v499[32];
      v516 = *&v499[48];
      v517 = *&v499[64];
      v518 = *&v499[80];
      v513 = *v499;
      v514 = *&v499[16];
      sub_1000095E8(&v513, &qword_1011B5548);
      v288 = v420;
      sub_1000089F8(v447, v420, &qword_1011B54A0);
      memcpy(v492, v493, 0x141uLL);
      v289 = *(v465 + 16);
      v290 = v421;
      v289(v421, v287, v449);
      v291 = v422;
      sub_1000089F8(v288, v422, &qword_1011B54A0);
      v292 = sub_10010FC20(&qword_1011B5580);
      v293 = *(v292 + 48);
      memcpy(v498, v492, 0x141uLL);
      memcpy((v291 + v293), v492, 0x141uLL);
      v294 = v449;
      v289((v291 + *(v292 + 64)), v290, v449);
      sub_1000089F8(v493, v499, &qword_1011B5588);
      sub_1000089F8(v498, v499, &qword_1011B5588);
      v470 = *(v465 + 8);
      v465 += 8;
      (v470)(v290, v294);
      memcpy(v499, v492, sizeof(v499));
      sub_1000095E8(v499, &qword_1011B5588);
      sub_1000095E8(v288, &qword_1011B54A0);
      sub_1000089F8(v291, v441, &qword_1011B5488);
      swift_storeEnumTagMultiPayload();
      sub_100020674(&qword_1011B5538, &qword_1011B5488);
      v295 = v442;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v295, v459, &qword_1011B5480);
      swift_storeEnumTagMultiPayload();
      sub_100B9E558();
      sub_100020674(&qword_1011B5558, &qword_1011B5460);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v493, &qword_1011B5588);
      sub_1000095E8(v295, &qword_1011B5480);
      sub_1000095E8(v291, &qword_1011B5488);
      (v470)(v438, v449);
      sub_1000095E8(v447, &qword_1011B54A0);
      v133 = v468;
      v135 = v467;
      v137 = v464;
      v139 = v462;
      goto LABEL_41;
    }

    v164 = *(v454 + 32);
    v491 = v454 + 32;
    v470 = v164;
    (v164)(v467, v162, v468);
    v165 = v445;
    sub_100B82320(v445);
    v166 = Playlist.Collaborator.name.getter();
    v168 = v167;
    if (qword_1011B06D8 != -1)
    {
      swift_once();
    }

    (*(v433 + 104))(v446, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v435);
    v169 = swift_allocObject();
    *(v169 + 16) = v166;
    *(v169 + 24) = v168;
    v170 = v407;
    sub_1000089F8(v165, v407, &qword_1011B5930);
    v171 = type metadata accessor for ArtworkImage.ViewModel(0);
    v464 = *(*(v171 - 8) + 48);
    v172 = (v464)(v170, 1, v171);
    v173 = v417;
    v174 = v409;
    v465 = v169;
    if (v172 == 1)
    {
      sub_1000095E8(v170, &qword_1011B5930);
      v175 = type metadata accessor for Artwork();
      (*(*(v175 - 8) + 56))(v174, 1, 1, v175);
    }

    else
    {
      v229 = type metadata accessor for Artwork();
      v230 = *(v229 - 8);
      (*(v230 + 16))(v174, v170, v229);
      sub_100B9D1B4(v170, type metadata accessor for ArtworkImage.ViewModel);
      (*(v230 + 56))(v174, 0, 1, v229);
    }

    sub_1000089F8(v174, v410, &unk_1011B55F0);
    ArtworkImage.init(_:width:height:)();
    sub_1000095E8(v174, &unk_1011B55F0);
    ArtworkImage.artworkReusablePolicy(_:)();
    v231 = v408;
    sub_1000089F8(v445, v408, &qword_1011B5930);
    if ((v464)(v231, 1, v171) == 1)
    {
      sub_1000095E8(v231, &qword_1011B5930);
      v232 = v399;
      v233 = v400;
      (*(v173 + 56))(v399, 1, 1, v400);
      v234 = v398;
    }

    else
    {
      v232 = v399;
      sub_1000089F8(v231 + *(v171 + 20), v399, &qword_1011B4720);
      sub_100B9D1B4(v231, type metadata accessor for ArtworkImage.ViewModel);
      v233 = v400;
      v235 = (*(v173 + 48))(v232, 1, v400);
      v234 = v398;
      if (v235 != 1)
      {
        v237 = v416;
        (*(v173 + 32))(v416, v232, v233);
LABEL_38:
        v296 = v432;
        ArtworkImage.artworkCropStyle(_:)();
        (*(v173 + 8))(v237, v233);
        v297 = v419;
        v298 = *(v418 + 8);
        v298(v296, v419);
        v299 = v415;
        ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
        v298(v234, v297);
        sub_100B5A2A8();
        v300 = v414;
        ArtworkImage.artworkPlaceholder<A>(_:)();

        v298(v299, v297);
        v298(v434, v297);
        (*(v433 + 8))(v446, v435);
        sub_1000095E8(v445, &qword_1011B5930);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v301 = (v300 + *(sub_10010FC20(&unk_1011B5940) + 36));
        v302 = v547;
        *v301 = v546;
        v301[1] = v302;
        v301[2] = v548;
        *(v300 + *(v412 + 36)) = 256;
        LOBYTE(v296) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v304 = v303;
        v306 = v305;
        v308 = v307;
        v310 = v309;
        v311 = v411;
        sub_10003D17C(v300, v411, &qword_1011B5468);
        v312 = v311 + *(v413 + 36);
        *v312 = v296;
        *(v312 + 8) = v304;
        *(v312 + 16) = v306;
        *(v312 + 24) = v308;
        *(v312 + 32) = v310;
        *(v312 + 40) = 0;
        sub_10003D17C(v311, v455, &qword_1011B5950);
        v313 = v451;
        String.LocalizationValue.init(stringLiteral:)();
        v314 = v466;
        v315 = *(v466 + 16);
        v316 = v452;
        v465 = v466 + 16;
        v464 = v315;
        v315();
        if (qword_1011B0430 != -1)
        {
          swift_once();
        }

        v317 = qword_10121B340;
        v318 = qword_10121B340;
        v463 = v317;
        v319 = v318;
        static Locale.current.getter();
        v320 = v319;
        v321 = String.init(localized:table:bundle:locale:comment:)();
        v442 = v322;
        v443 = v321;
        v323 = *(v314 + 8);
        v466 = v314 + 8;
        v462 = v323;
        (v323)(v313, v316);
        v449 = type metadata accessor for Collaboration.Flow.View;
        v324 = v469;
        sub_100B9E020(v96, v469, type metadata accessor for Collaboration.Flow.View);
        v325 = v454;
        v326 = *(v454 + 16);
        v446 = (v454 + 16);
        v447 = v326;
        v327 = v437;
        v328 = v468;
        v326(v437, v467, v468);
        v329 = *(v453 + 80);
        v330 = *(v325 + 80);
        v331 = (v329 + 16) & ~v329;
        v453 = v331;
        v332 = (v456 + v330 + v331) & ~v330;
        v456 = v329 | v330;
        v333 = v332;
        v444 = v332;
        v334 = swift_allocObject();
        v445 = type metadata accessor for Collaboration.Flow.View;
        sub_100B9D234(v324, v334 + v331, type metadata accessor for Collaboration.Flow.View);
        (v470)(v334 + v333, v327, v328);
        LOBYTE(v498[0]) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v327) = v499[0];
        v335 = *&v499[8];
        v336 = swift_getKeyPath();
        LOBYTE(v496[0]) = 0;
        v337 = static Edge.Set.top.getter();
        v338 = v448;
        v339 = v337;
        EdgeInsets.init(_all:)();
        v493[0] = 0;
        *&v521 = v443;
        *(&v521 + 1) = v442;
        LOBYTE(v522) = 0;
        *(&v522 + 1) = sub_100B9E088;
        *&v523 = v334;
        BYTE8(v523) = v327;
        *&v524 = v335;
        *(&v524 + 1) = v336;
        LOBYTE(v525) = v496[0];
        *(&v525 + 1) = *v499;
        DWORD1(v525) = *&v499[3];
        BYTE8(v525) = v339;
        HIDWORD(v525) = *(v498 + 3);
        *(&v525 + 9) = v498[0];
        *&v526 = v340;
        *(&v526 + 1) = v341;
        *&v527 = v342;
        *(&v527 + 1) = v343;
        v528 = 0;
        v344 = v451;
        String.LocalizationValue.init(stringLiteral:)();
        v345 = v452;
        (v464)(v338, v344, v452);
        static Locale.current.getter();
        v465 = String.init(localized:table:bundle:locale:comment:)();
        v464 = v346;
        (v462)(v344, v345);
        v347 = v469;
        sub_100B9E020(v487, v469, v449);
        v348 = v437;
        v349 = v468;
        v447(v437, v467, v468);
        v350 = v444;
        v351 = swift_allocObject();
        sub_100B9D234(v347, v351 + v453, v445);
        (v470)(v351 + v350, v348, v349);
        LOBYTE(v498[0]) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v348) = v499[0];
        v352 = *&v499[8];
        v353 = swift_getKeyPath();
        LOBYTE(v497[0]) = 0;
        LOBYTE(v347) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v493[0] = 0;
        *&v529 = v465;
        *(&v529 + 1) = v464;
        LOBYTE(v530) = 1;
        *(&v530 + 1) = sub_100B9E418;
        *&v531 = v351;
        BYTE8(v531) = v348;
        *&v532 = v352;
        *(&v532 + 1) = v353;
        LOBYTE(v533) = v497[0];
        *(&v533 + 1) = *v499;
        DWORD1(v533) = *&v499[3];
        BYTE8(v533) = v347;
        HIDWORD(v533) = *(v498 + 3);
        *(&v533 + 9) = v498[0];
        *&v534 = v354;
        *(&v534 + 1) = v355;
        *&v535 = v356;
        *(&v535 + 1) = v357;
        v536 = 0;
        v358 = v423;
        sub_1000089F8(v455, v423, &qword_1011B5950);
        v517 = v525;
        v518 = v526;
        v519 = v527;
        v513 = v521;
        v514 = v522;
        v515 = v523;
        v516 = v524;
        v509 = v533;
        v510 = v534;
        v511 = v535;
        v505 = v529;
        v506 = v530;
        v507 = v531;
        v520 = v528;
        v512 = v536;
        v508 = v532;
        v359 = v424;
        sub_1000089F8(v358, v424, &qword_1011B5950);
        v360 = sub_10010FC20(&qword_1011B5520);
        v361 = v359 + *(v360 + 48);
        v362 = v520;
        LOBYTE(v492[7]) = v520;
        v364 = v518;
        v492[4] = v517;
        v363 = v517;
        v492[5] = v518;
        v492[6] = v519;
        v365 = v519;
        v367 = v514;
        v492[0] = v513;
        v366 = v513;
        v492[1] = v514;
        v368 = v516;
        v492[2] = v515;
        v492[3] = v516;
        *(v361 + 32) = v515;
        *(v361 + 48) = v368;
        *v361 = v366;
        *(v361 + 16) = v367;
        *(v361 + 112) = v362;
        *(v361 + 80) = v364;
        *(v361 + 96) = v365;
        *(v361 + 64) = v363;
        v369 = v359 + *(v360 + 64);
        *&v493[32] = v507;
        *&v493[48] = v508;
        *v493 = v505;
        *&v493[16] = v506;
        *&v493[64] = v509;
        *&v493[80] = v510;
        *&v493[96] = v511;
        v493[112] = v512;
        v370 = v509;
        v371 = v510;
        *(v369 + 64) = v509;
        *(v369 + 80) = v371;
        v372 = v511;
        *(v369 + 96) = v511;
        v373 = v512;
        *(v369 + 112) = v512;
        v374 = v505;
        v375 = v506;
        *v369 = v505;
        *(v369 + 16) = v375;
        v376 = v507;
        v377 = v508;
        *(v369 + 32) = v507;
        *(v369 + 48) = v377;
        v498[0] = v374;
        v498[1] = v375;
        v498[2] = v376;
        v498[3] = v377;
        v498[4] = v370;
        v498[5] = v371;
        v498[6] = v372;
        LOBYTE(v498[7]) = v373;
        sub_1000089F8(&v521, v499, &qword_1011B5528);
        sub_1000089F8(&v529, v499, &qword_1011B5528);
        sub_1000089F8(v492, v499, &qword_1011B5528);
        sub_1000089F8(v493, v499, &qword_1011B5528);
        sub_1000095E8(v498, &qword_1011B5528);
        *&v499[64] = v517;
        *&v499[80] = v518;
        *&v499[96] = v519;
        v499[112] = v520;
        *v499 = v513;
        *&v499[16] = v514;
        *&v499[32] = v515;
        *&v499[48] = v516;
        sub_1000095E8(v499, &qword_1011B5528);
        sub_1000095E8(v358, &qword_1011B5950);
        sub_1000089F8(v359, v459, &qword_1011B5460);
        swift_storeEnumTagMultiPayload();
        sub_100B9E558();
        sub_100020674(&qword_1011B5558, &qword_1011B5460);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(&v529, &qword_1011B5528);
        sub_1000095E8(&v521, &qword_1011B5528);
        sub_1000095E8(v359, &qword_1011B5460);
        sub_1000095E8(v455, &qword_1011B5950);
        (*(v454 + 8))(v467, v468);
LABEL_41:
        v143 = v427;
        v141 = v428;
        v147 = v425;
        v145 = v426;
        goto LABEL_42;
      }
    }

    if (qword_1011B0618 != -1)
    {
      swift_once();
    }

    v236 = sub_1000060E4(v233, static Artwork.CropStyle.fallback);
    v237 = v416;
    (*(v173 + 16))(v416, v236, v233);
    if ((*(v173 + 48))(v232, 1, v233) != 1)
    {
      sub_1000095E8(v232, &qword_1011B4720);
    }

    goto LABEL_38;
  }

  v176 = sub_10010FC20(&qword_1011B5088);
  v177 = v429;
  v178 = v430;
  v179 = *(v430 + 32);
  v180 = v431;
  v179(v429, v162 + *(v176 + 48), v431);
  LODWORD(v470) = v161;
  v491 = Collaboration.Flow.buttonActionTitle.getter();
  v468 = v181;
  v182 = v469;
  sub_100B9E020(v96, v469, type metadata accessor for Collaboration.Flow.View);
  v183 = v406;
  v184 = v180;
  (*(v178 + 16))(v406, v177, v180);
  v185 = (*(v453 + 80) + 16) & ~*(v453 + 80);
  v186 = (v456 + *(v178 + 80) + v185) & ~*(v178 + 80);
  v187 = swift_allocObject();
  sub_100B9D234(v182, v187 + v185, type metadata accessor for Collaboration.Flow.View);
  v179((v187 + v186), v183, v184);
  LOBYTE(v498[0]) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v185) = v499[0];
  v188 = *&v499[8];
  v189 = swift_getKeyPath();
  v493[0] = 0;
  v190 = swift_getKeyPath();
  v191 = swift_allocObject();
  *(v191 + 16) = v470 & 1;
  *v499 = v491;
  *&v499[8] = v468;
  v499[16] = 0;
  *&v499[24] = sub_100B9E71C;
  *&v499[32] = v187;
  v499[40] = v185;
  *&v499[48] = v188;
  *&v499[56] = v189;
  v499[64] = v493[0];
  *&v499[65] = v498[0];
  *&v499[68] = *(v498 + 3);
  *&v499[72] = v190;
  *&v499[80] = sub_100B9FA58;
  *&v499[88] = v191;
  v192 = *&v499[48];
  v193 = v441;
  v441[2] = *&v499[32];
  v193[3] = v192;
  v194 = *&v499[80];
  v193[4] = *&v499[64];
  v193[5] = v194;
  v195 = *&v499[16];
  *v193 = *v499;
  v193[1] = v195;
  swift_storeEnumTagMultiPayload();
  sub_1000089F8(v499, v498, &qword_1011B5548);
  sub_10010FC20(&qword_1011B5548);
  sub_100020674(&qword_1011B5538, &qword_1011B5488);
  sub_100B9E610();
  v196 = v442;
  _ConditionalContent<>.init(storage:)();
  sub_1000089F8(v196, v459, &qword_1011B5480);
  swift_storeEnumTagMultiPayload();
  sub_100B9E558();
  sub_100020674(&qword_1011B5558, &qword_1011B5460);
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v499, &qword_1011B5548);
  sub_1000095E8(v196, &qword_1011B5480);
  (*(v430 + 8))(v429, v431);
  sub_1000095E8(v464, &qword_1011B5090);
LABEL_42:
  v378 = v482;
  sub_1000089F8(v486, v482, &qword_1011B54D8);
  v379 = v484;
  sub_1000089F8(v488, v484, &qword_1011B54C8);
  sub_1000089F8(v490, v483, &qword_1011B54B8);
  sub_1000089F8(v489, v485, &qword_1011B54A8);
  v380 = v378;
  v381 = v461;
  sub_1000089F8(v380, v461, &qword_1011B54D8);
  v382 = sub_10010FC20(&qword_1011B5560);
  sub_1000089F8(v379, v381 + v382[12], &qword_1011B54C8);
  v383 = v381 + v382[16];
  *&v498[0] = v478;
  *(&v498[0] + 1) = v477;
  LOBYTE(v498[1]) = v474;
  *(&v498[1] + 1) = *v541;
  DWORD1(v498[1]) = *&v541[3];
  *(&v498[1] + 1) = v479;
  LOWORD(v498[2]) = 256;
  *(&v498[2] + 2) = v539;
  WORD3(v498[2]) = v540;
  *(&v498[2] + 1) = v480;
  *&v498[3] = v481;
  *(&v498[3] + 1) = v476;
  LOBYTE(v498[4]) = 1;
  *(&v498[4] + 1) = *v538;
  DWORD1(v498[4]) = *&v538[3];
  *(&v498[4] + 1) = v473;
  *&v498[5] = v475;
  BYTE8(v498[5]) = v471;
  *(&v498[5] + 9) = *v537;
  HIDWORD(v498[5]) = *&v537[3];
  *&v498[6] = v133;
  *(&v498[6] + 1) = v135;
  *&v498[7] = v137;
  *(&v498[7] + 1) = v139;
  LOBYTE(v498[8]) = 0;
  DWORD1(v498[8]) = *&v543[3];
  *(&v498[8] + 1) = *v543;
  BYTE8(v498[8]) = v472;
  HIDWORD(v498[8]) = *&v542[3];
  *(&v498[8] + 9) = *v542;
  *&v498[9] = v141;
  *(&v498[9] + 1) = v143;
  *&v498[10] = v145;
  *(&v498[10] + 1) = v147;
  LOBYTE(v498[11]) = 0;
  v384 = v498[8];
  v385 = v498[9];
  v386 = v498[10];
  *(v383 + 176) = 0;
  *(v383 + 144) = v385;
  *(v383 + 160) = v386;
  v387 = v498[0];
  v388 = v498[1];
  v389 = v498[3];
  *(v383 + 32) = v498[2];
  *(v383 + 48) = v389;
  *v383 = v387;
  *(v383 + 16) = v388;
  v390 = v498[4];
  v391 = v498[5];
  v392 = v498[6];
  *(v383 + 112) = v498[7];
  *(v383 + 128) = v384;
  *(v383 + 80) = v391;
  *(v383 + 96) = v392;
  *(v383 + 64) = v390;
  v393 = v483;
  sub_1000089F8(v483, v381 + v382[20], &qword_1011B54B8);
  v394 = v485;
  sub_1000089F8(v485, v381 + v382[24], &qword_1011B54A8);
  sub_1000089F8(v498, v499, &qword_1011B5568);
  sub_1000095E8(v489, &qword_1011B54A8);
  sub_1000095E8(v490, &qword_1011B54B8);
  sub_1000095E8(v488, &qword_1011B54C8);
  sub_1000095E8(v486, &qword_1011B54D8);
  sub_1000095E8(v394, &qword_1011B54A8);
  sub_1000095E8(v393, &qword_1011B54B8);
  *v499 = v478;
  *&v499[8] = v477;
  v499[16] = v474;
  *&v499[17] = *v541;
  *&v499[20] = *&v541[3];
  *&v499[24] = v479;
  *&v499[32] = 256;
  *&v499[34] = v539;
  *&v499[38] = v540;
  *&v499[40] = v480;
  *&v499[48] = v481;
  *&v499[56] = v476;
  v499[64] = 1;
  *&v499[68] = *&v538[3];
  *&v499[65] = *v538;
  *&v499[72] = v473;
  *&v499[80] = v475;
  v499[88] = v471;
  *&v499[92] = *&v537[3];
  *&v499[89] = *v537;
  *&v499[96] = v133;
  *&v499[104] = v135;
  *&v499[112] = v137;
  *&v499[120] = v139;
  v499[128] = 0;
  *&v499[129] = *v543;
  *&v499[132] = *&v543[3];
  v499[136] = v472;
  *&v499[140] = *&v542[3];
  *&v499[137] = *v542;
  *&v499[144] = v141;
  *&v499[152] = v143;
  *&v499[160] = v145;
  *&v499[168] = v147;
  v499[176] = 0;
  sub_1000095E8(v499, &qword_1011B5568);
  sub_1000095E8(v484, &qword_1011B54C8);
  return sub_1000095E8(v482, &qword_1011B54D8);
}

uint64_t sub_100B96C88@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v10 = qword_10121B340;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_1000098E0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_100B96E98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Collaboration.Flow.View(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100B9E020(a2, v6, type metadata accessor for Collaboration.Flow.View);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100B9D234(v6, v13 + v12, type metadata accessor for Collaboration.Flow.View);
  sub_100B284E0(0, 0, v9, &unk_100F06290, v13);
}

uint64_t sub_100B97078()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_100B97128(0);
}

uint64_t sub_100B97128(char a1)
{
  v2[10] = v1;
  v2[11] = sub_10010FC20(&qword_1011B5590);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Playlist();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  type metadata accessor for Collaboration.Flow.View(0);
  if (a1)
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_100B97300;

    return Playlist.duplicate()();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[20] = v7;
    *v7 = v2;
    v7[1] = sub_100B976C0;

    return Playlist.hasUnsupportedContent.getter();
  }
}

uint64_t sub_100B97300()
{
  *(*v1 + 152) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100B98100;
  }

  else
  {
    v4 = sub_100B97458;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100B97458()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context);
    v4 = StateObject.wrappedValue.getter();
    *(v0 + 176) = v4;
    v12 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_100B97C2C;

    return v12(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = *(v1 + 8);
    *(v0 + 40) = *v1;
    *(v0 + 48) = v8;
    sub_10010FC20(&qword_1011B2DD8);
    State.wrappedValue.getter();
    v9 = *(v0 + 33);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_100B97E70;
    v11 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v11, v1 + v7, (v9 & 1) == 0);
  }
}

uint64_t sub_100B976C0(char a1)
{
  *(*v1 + 35) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B97804, v3, v2);
}

uint64_t sub_100B97804()
{
  if (*(v0 + 35) == 1)
  {

    sub_100B9EB3C();
    v1 = swift_allocError();
    *v2 = xmmword_100EFDC40;
    *(v2 + 16) = 3;
    swift_willThrow();
    *(v0 + 72) = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011B62D0);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      if (v5 == 3 && v3 == 8 && !v4)
      {
        v6 = *(v0 + 80);

        v7 = *(v6 + 24);
        *(v0 + 56) = *(v6 + 16);
        *(v0 + 64) = v7;
        *(v0 + 34) = 1;
        sub_10010FC20(&qword_1011B2DD8);
        State.wrappedValue.setter();

LABEL_17:

        v22 = *(v0 + 8);

        return v22();
      }

      sub_100452604(v3, v4, v5);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v20 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21(v19);

    sub_1000095E8(v19, &qword_1011B5590);
    goto LABEL_17;
  }

  v8 = *(v0 + 80);
  v9 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v9;
  if (*(v8 + v9[9]) == 1 && (v10 = *(v8 + v9[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context);
    v11 = StateObject.wrappedValue.getter();
    *(v0 + 176) = v11;
    v23 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_100B97C2C;

    return v23(v11);
  }

  else
  {
    v14 = v9[7];
    v15 = *(v8 + 8);
    *(v0 + 40) = *v8;
    *(v0 + 48) = v15;
    sub_10010FC20(&qword_1011B2DD8);
    State.wrappedValue.getter();
    v16 = *(v0 + 33);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_100B97E70;
    v18 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v18, v8 + v14, (v16 & 1) == 0);
  }
}

uint64_t sub_100B97C2C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_100B982B0;
  }

  else
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_100B97D7C;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_100B97D7C()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 168) + 28);
  v3 = *(v1 + 8);
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.getter();
  v4 = *(v0 + 33);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_100B97E70;
  v6 = *(v0 + 120);

  return Collaboration.Manager.start(_:isOpen:)(v6, v1 + v2, (v4 & 1) == 0);
}

uint64_t sub_100B97E70()
{
  *(*v1 + 208) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100B9846C;
  }

  else
  {
    v4 = sub_100B97FC8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100B97FC8()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];

  v7 = *(v6 + *(v1 + 44));
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  sub_1000095E8(v5, &qword_1011B5590);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100B98100()
{

  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011B62D0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_10010FC20(&qword_1011B2DD8);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    sub_100452604(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_1000095E8(v7, &qword_1011B5590);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100B982B0()
{

  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011B62D0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_10010FC20(&qword_1011B2DD8);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    sub_100452604(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_1000095E8(v7, &qword_1011B5590);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100B9846C()
{

  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011B62D0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_10010FC20(&qword_1011B2DD8);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    sub_100452604(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_1000095E8(v7, &qword_1011B5590);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100B9861C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v65 = a2;
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v61 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v62 = v3;
  v64 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Alert.Button();
  __chkstk_darwin(v4 - 8);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v49 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  String.LocalizationValue.init(stringLiteral:)();
  v52 = *(v10 + 16);
  v51 = v10 + 16;
  v52(v12, v15, v9);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v16 = qword_10121B340;
  v17 = qword_10121B340;
  v66 = v16;
  v18 = v17;
  static Locale.current.getter();
  v19 = v18;
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  v23 = *(v10 + 8);
  v23(v15, v9);
  v50 = v23;
  v69 = v20;
  v70 = v22;
  v49 = sub_1000098E0();
  v24 = Text.init<A>(_:)();
  v59 = v25;
  v60 = v24;
  v57 = v26;
  v58 = v27;
  String.LocalizationValue.init(stringLiteral:)();
  v28 = v52;
  v52(v12, v15, v9);
  static Locale.current.getter();
  v29 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v30;
  v23(v15, v9);
  v69 = v29;
  v70 = v31;
  v32 = Text.init<A>(_:)();
  v55 = v33;
  v56 = v32;
  v53 = v34 & 1;
  v54 = v35;
  String.LocalizationValue.init(stringLiteral:)();
  v28(v12, v15, v9);
  static Locale.current.getter();
  v36 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v37;
  v50(v15, v9);
  v69 = v36;
  v70 = v38;
  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  v66 = type metadata accessor for Collaboration.Flow.View;
  v44 = v64;
  sub_100B9E020(v68, v64, type metadata accessor for Collaboration.Flow.View);
  v45 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v46 = swift_allocObject();
  sub_100B9D234(v44, v46 + v45, type metadata accessor for Collaboration.Flow.View);
  static Alert.Button.default(_:action:)();
  sub_10011895C(v39, v41, v43 & 1);

  sub_100B9E020(v68, v44, v66);
  v47 = swift_allocObject();
  sub_100B9D234(v44, v47 + v45, type metadata accessor for Collaboration.Flow.View);
  static Alert.Button.cancel(_:)();

  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t sub_100B98C10(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100B9E020(a1, v5, type metadata accessor for Collaboration.Flow.View);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100B9D234(v5, v12 + v11, type metadata accessor for Collaboration.Flow.View);
  sub_100B284E0(0, 0, v8, &unk_100F06270, v12);
}

uint64_t sub_100B98DF0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_100B97128(1);
}

uint64_t sub_100B98EA0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B5590);
  __chkstk_darwin(v2);
  v4 = (&v9 - v3);
  v5 = *(a1 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  sub_100B9EB3C();
  v6 = swift_allocError();
  *v7 = xmmword_100EFDC40;
  *(v7 + 16) = 3;
  *v4 = v6;
  swift_storeEnumTagMultiPayload();
  v5(v4);
  return sub_1000095E8(v4, &qword_1011B5590);
}

uint64_t sub_100B98FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_10010FC20(&qword_1011B5590);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100B99078, v7, v6);
}

uint64_t sub_100B99078()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context);
    v4 = StateObject.wrappedValue.getter();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_100B992A0;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_100B99470;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

uint64_t sub_100B992A0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100B996A8;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100B993BC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100B993BC()
{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100B99470;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

uint64_t sub_100B99470()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100B9978C;
  }

  else
  {
    v5 = sub_100B995AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B995AC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = type metadata accessor for Playlist();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  sub_1000095E8(v2, &qword_1011B5590);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100B996A8()
{

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_1000095E8(v3, &qword_1011B5590);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100B9978C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_1000095E8(v3, &qword_1011B5590);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100B99868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_10010FC20(&qword_1011B5590);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100B9993C, v7, v6);
}

uint64_t sub_100B9993C()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100B999F8;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

uint64_t sub_100B999F8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100B99B34;
  }

  else
  {
    v5 = sub_100B9FA54;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B99B34()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_1000095E8(v3, &qword_1011B5590);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100B99C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Collaboration.Flow.View(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_100B9E020(a2, v15, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8);
  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v14 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = &protocol witness table for MainActor;
  sub_100B9D234(v15, v23 + v21, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v23 + v22, v11, v8);
  sub_100B284E0(0, 0, v18, v26, v23);
}

uint64_t sub_100B99EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_10010FC20(&qword_1011B5590);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100B99F98, v7, v6);
}

uint64_t sub_100B99F98()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100B9A054;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

uint64_t sub_100B9A054()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100B9FA50;
  }

  else
  {
    v5 = sub_100B9FA54;
  }

  return _swift_task_switch(v5, v4, v3);
}

id _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B8LL05SwiftD05StateVySbGvpfi_0()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  sub_100B9F774();
  v1 = static ICUserIdentity.active.getter();
  v7 = 0;
  v2 = [v0 getPropertiesForUserIdentity:v1 error:&v7];

  if (v2)
  {
    v3 = v7;
    v4 = [v2 isU18MinorAccount];
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t sub_100B9A2A8()
{
  type metadata accessor for InlineProfileEditingView.Context();
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t sub_100B9A30C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10010FC20(&qword_1011B4EC8);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v5 = type metadata accessor for SymbolRenderingMode();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = Image.symbolRenderingMode(_:)();

  sub_1000095E8(v4, &qword_1011B4EC8);
  v7 = static Color.accentColor.getter();
  result = swift_getKeyPath();
  *a1 = v6;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

uint64_t sub_100B9A448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v139 = a1;
  v2 = type metadata accessor for Font.Leading();
  v134 = *(v2 - 8);
  v135 = v2;
  __chkstk_darwin(v2);
  v133 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  v132 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v116 - v11;
  v119 = sub_10010FC20(&qword_1011B53F8);
  __chkstk_darwin(v119);
  v14 = &v116 - v13;
  v120 = sub_10010FC20(&qword_1011B5400);
  __chkstk_darwin(v120);
  v123 = &v116 - v15;
  v16 = sub_10010FC20(&qword_1011B5408);
  v130 = *(v16 - 8);
  v131 = v16;
  __chkstk_darwin(v16);
  v121 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v122 = &v116 - v19;
  v20 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v20);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10010FC20(&qword_1011B5410);
  __chkstk_darwin(v23 - 8);
  v137 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v116 - v26;
  v28 = *(_s4FlowO18ProfileEditingViewVMa(0) + 20);
  v129 = v20;
  swift_storeEnumTagMultiPayload();
  v128 = v28;
  LOBYTE(v28) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(v139 + v28, v22);
  sub_100B9D1B4(v22, type metadata accessor for Collaboration.Flow);
  v136 = v27;
  v126 = v6;
  v127 = v7;
  v124 = v9;
  v125 = v12;
  if (v28)
  {
    v29 = 1;
    v30 = v131;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v31 = v132;
    (*(v132 + 16))(v9, v12, v7);
    v32 = v31;
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v33 = qword_10121B340;
    static Locale.current.getter();
    v34 = String.init(localized:table:bundle:locale:comment:)();
    v36 = v35;
    (*(v32 + 8))(v12, v7);
    *&v162 = v34;
    *(&v162 + 1) = v36;
    sub_1000098E0();
    v37 = Text.init<A>(_:)();
    v117 = v38;
    v118 = v39;
    v41 = v40;
    v42 = &v14[*(sub_10010FC20(&qword_1011B5418) + 36)];
    v43 = *(sub_10010FC20(&qword_1011B5420) + 28);
    v44 = enum case for Text.Case.uppercase(_:);
    v45 = type metadata accessor for Text.Case();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v42 + v43, v44, v45);
    (*(v46 + 56))(v42 + v43, 0, 1, v45);
    *v42 = swift_getKeyPath();
    v47 = v117;
    *v14 = v37;
    *(v14 + 1) = v47;
    v14[16] = v41 & 1;
    *(v14 + 3) = v118;
    v48 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    v50 = &v14[*(sub_10010FC20(&qword_1011B5428) + 36)];
    *v50 = KeyPath;
    v50[1] = v48;
    v51 = static Color.secondary.getter();
    v52 = swift_getKeyPath();
    v53 = &v14[*(v119 + 36)];
    *v53 = v52;
    v53[1] = v51;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v54 = v123;
    sub_10003D17C(v14, v123, &qword_1011B53F8);
    v55 = (v54 + *(v120 + 36));
    v56 = v176;
    v55[4] = v175;
    v55[5] = v56;
    v55[6] = v177;
    v57 = v172;
    *v55 = v171;
    v55[1] = v57;
    v58 = v174;
    v55[2] = v173;
    v55[3] = v58;
    LOBYTE(v51) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v121;
    sub_10003D17C(v54, v121, &qword_1011B5400);
    v30 = v131;
    v68 = v67 + *(v131 + 36);
    *v68 = v51;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    v69 = v67;
    v70 = v122;
    sub_10003D17C(v69, v122, &qword_1011B5408);
    v27 = v136;
    sub_10003D17C(v70, v136, &qword_1011B5408);
    v29 = 0;
  }

  v72 = v134;
  v71 = v135;
  v73 = v133;
  (*(v130 + 56))(v27, v29, 1, v30);
  v74 = v139;

  sub_100BA5558(&v178);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v74) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(v74 + v128, v22);
  sub_100B9D1B4(v22, type metadata accessor for Collaboration.Flow);
  if (v74)
  {
    sub_100B9DDA8(&v162);
  }

  else
  {
    v75 = v125;
    String.LocalizationValue.init(stringLiteral:)();
    v76 = v132;
    v77 = v127;
    (*(v132 + 16))(v124, v75, v127);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v78 = qword_10121B340;
    static Locale.current.getter();
    v79 = String.init(localized:table:bundle:locale:comment:)();
    v81 = v80;
    (*(v76 + 8))(v75, v77);
    *&v162 = v79;
    *(&v162 + 1) = v81;
    sub_1000098E0();
    v139 = Text.init<A>(_:)();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = swift_getKeyPath();
    LOBYTE(v79) = v85 & 1;
    LOBYTE(v162) = v85 & 1;
    static Font.footnote.getter();
    (*(v72 + 104))(v73, enum case for Font.Leading.tight(_:), v71);
    v89 = Font.leading(_:)();

    (*(v72 + 8))(v73, v71);
    v90 = swift_getKeyPath();
    v91 = static Color.secondary.getter();
    v92 = swift_getKeyPath();
    v93 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v162) = 0;
    *&v153 = v139;
    *(&v153 + 1) = v83;
    LOBYTE(v154) = v79;
    *(&v154 + 1) = v87;
    LOWORD(v155) = 256;
    *(&v155 + 1) = v88;
    LOBYTE(v156) = 1;
    *(&v156 + 1) = v90;
    *&v157 = v89;
    *(&v157 + 1) = v92;
    *&v158 = v91;
    BYTE8(v158) = v93;
    *&v159 = v94;
    *(&v159 + 1) = v95;
    *&v160 = v96;
    *(&v160 + 1) = v97;
    v161 = 0;
    UIScreen.Dimensions.size.getter(v94);
    v168 = v159;
    v169 = v160;
    v170 = v161;
    v164 = v155;
    v165 = v156;
    v166 = v157;
    v167 = v158;
    v162 = v153;
    v163 = v154;
    v27 = v136;
  }

  v98 = v137;
  sub_1000089F8(v27, v137, &qword_1011B5410);
  v146 = v168;
  v147 = v169;
  v148 = v170;
  v142 = v164;
  v143 = v165;
  v144 = v166;
  v145 = v167;
  v140 = v162;
  v141 = v163;
  v99 = v138;
  sub_1000089F8(v98, v138, &qword_1011B5410);
  v100 = sub_10010FC20(&qword_1011B5430);
  v101 = (v99 + *(v100 + 48));
  v102 = v182;
  v103 = v181;
  v149[3] = v181;
  v149[4] = v182;
  v104 = v179;
  v105 = v178;
  v149[1] = v179;
  v149[2] = v180;
  v149[0] = v178;
  v101[2] = v180;
  v101[3] = v103;
  v101[4] = v102;
  *v101 = v105;
  v101[1] = v104;
  v106 = *(v100 + 64);
  v107 = v147;
  v150[6] = v146;
  v150[7] = v147;
  v109 = v144;
  v108 = v145;
  v150[4] = v144;
  v150[5] = v145;
  v110 = v142;
  v111 = v143;
  v150[2] = v142;
  v150[3] = v143;
  v113 = v140;
  v112 = v141;
  v150[0] = v140;
  v150[1] = v141;
  v114 = v99 + v106;
  *(v114 + 96) = v146;
  *(v114 + 112) = v107;
  v151 = v148;
  *(v114 + 128) = v148;
  *(v114 + 32) = v110;
  *(v114 + 48) = v111;
  *(v114 + 64) = v109;
  *(v114 + 80) = v108;
  *v114 = v113;
  *(v114 + 16) = v112;
  sub_100B9DCF8(v149, &v153);
  sub_1000089F8(v150, &v153, &qword_1011B5438);
  sub_1000095E8(v27, &qword_1011B5410);
  v159 = v146;
  v160 = v147;
  v161 = v148;
  v155 = v142;
  v156 = v143;
  v157 = v144;
  v158 = v145;
  v153 = v140;
  v154 = v141;
  sub_1000095E8(&v153, &qword_1011B5438);
  v152[2] = v180;
  v152[3] = v181;
  v152[4] = v182;
  v152[0] = v178;
  v152[1] = v179;
  sub_100B9DD54(v152);
  return sub_1000095E8(v98, &qword_1011B5410);
}

uint64_t sub_100B9B0C4@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X8>)
{
  *a4 = static HorizontalAlignment.center.getter();
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  sub_10010FC20(a2);
  return a3(v4);
}

uint64_t sub_100B9B130@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v70);
  v75 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_10010FC20(&qword_1011B5350);
  __chkstk_darwin(v74);
  v76 = &v64 - v6;
  v7 = sub_10010FC20(&qword_1011B5358);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v64 - v9;
  v11 = sub_10010FC20(&qword_1011B5360);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v68 = sub_10010FC20(&qword_1011B5368);
  __chkstk_darwin(v68);
  v16 = &v64 - v15;
  v69 = sub_10010FC20(&qword_1011B5370);
  __chkstk_darwin(v69);
  v18 = &v64 - v17;
  v19 = sub_10010FC20(&qword_1011B5378);
  v72 = *(v19 - 8);
  v73 = v19;
  __chkstk_darwin(v19);
  v71 = &v64 - v20;
  v21 = swift_allocObject();
  v22 = *(v1 + 48);
  *(v21 + 48) = *(v1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v1 + 64);
  v23 = *(v1 + 16);
  *(v21 + 16) = *v1;
  *(v21 + 32) = v23;
  v78 = v1;
  sub_100B9D8E4(v1, v88);
  sub_10010FC20(&qword_1011B5380);
  sub_100B9D91C();
  Button.init(action:label:)();
  v91 = *(v1 + 40);
  v88[0] = *(v1 + 40);
  v64 = sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.getter();
  v24 = v81;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = &v10[*(v8 + 44)];
  *v27 = KeyPath;
  v27[1] = sub_10069AD7C;
  v27[2] = v26;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v10, v14, &qword_1011B5358);
  v28 = &v14[*(v12 + 44)];
  v29 = v86;
  *(v28 + 4) = v85;
  *(v28 + 5) = v29;
  *(v28 + 6) = v87;
  v30 = v82;
  *v28 = v81;
  *(v28 + 1) = v30;
  v31 = v84;
  *(v28 + 2) = v83;
  *(v28 + 3) = v31;
  v32 = *(v2 + 16);
  if (v32)
  {
    v33 = static Color.accentColor.getter();
  }

  else
  {
    v33 = static Color.white.getter();
  }

  v34 = v33;
  v35 = swift_getKeyPath();
  sub_10003D17C(v14, v16, &qword_1011B5360);
  v36 = &v16[*(v68 + 36)];
  *v36 = v35;
  v36[1] = v34;
  v37 = v71;
  if (qword_1011B06C8 != -1)
  {
    swift_once();
  }

  v38 = *&qword_1011B5040;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v16, v18, &qword_1011B5368);
  v39 = &v18[*(v69 + 36)];
  v40 = v88[5];
  *(v39 + 4) = v88[4];
  *(v39 + 5) = v40;
  *(v39 + 6) = v88[6];
  v41 = v88[1];
  *v39 = v88[0];
  *(v39 + 1) = v41;
  v42 = v88[3];
  *(v39 + 2) = v88[2];
  *(v39 + 3) = v42;
  sub_100B9DB90(&qword_1011B53A0, &qword_1011B5370, &unk_100F05F28, sub_100B9DAAC);
  View.bold(_:)();
  sub_1000095E8(v18, &qword_1011B5370);
  v43 = v38 * 0.5;
  v44 = *(v70 + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = type metadata accessor for RoundedCornerStyle();
  v47 = v75;
  (*(*(v46 - 8) + 104))(v75 + v44, v45, v46);
  *v47 = v43;
  v47[1] = v43;
  v48 = *(v2 + 56);
  v89 = v48;
  v90 = *(v2 + 64);
  if (v90 == 1)
  {
    if (v48)
    {
      goto LABEL_11;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v50 = v65;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v89, &qword_1011B53D0);
    (*(v66 + 8))(v50, v67);
    if (v80)
    {
      goto LABEL_11;
    }
  }

  v80 = v91;
  State.wrappedValue.getter();
  if (v79 != 1)
  {
    v52 = [objc_opt_self() systemFillColor];
    v51 = Color.init(_:)();
    goto LABEL_15;
  }

LABEL_11:
  if (v32)
  {
    v51 = static Color.clear.getter();
  }

  else
  {
    v51 = static Color.accentColor.getter();
  }

LABEL_15:
  v53 = v51;
  v54 = v76;
  sub_100B9D234(v47, v76, &type metadata accessor for RoundedRectangle);
  v55 = v74;
  *(v54 + *(v74 + 52)) = v53;
  *(v54 + *(v55 + 56)) = 256;
  v56 = static Alignment.center.getter();
  v58 = v57;
  v59 = sub_10010FC20(&qword_1011B53D8);
  v60 = v77;
  v61 = v77 + *(v59 + 36);
  sub_10003D17C(v54, v61, &qword_1011B5350);
  v62 = (v61 + *(sub_10010FC20(&qword_1011B53E0) + 36));
  *v62 = v56;
  v62[1] = v58;
  return (*(v72 + 32))(v60, v37, v73);
}

uint64_t sub_100B9BA3C(uint64_t a1)
{
  sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.setter();
  return (*(a1 + 24))(a1);
}

uint64_t sub_100B9BAA8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B53E8);
  __chkstk_darwin(v2);
  v4 = v23 - v3;
  v5 = sub_10010FC20(&qword_1011B5398);
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  v23[0] = *(a1 + 40);
  sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.getter();
  if (v24 == 1)
  {
    ProgressView<>.init<>()();
    v8 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    v10 = &v7[*(v5 + 36)];
    *v10 = KeyPath;
    v10[1] = v8;
    sub_1000089F8(v7, v4, &qword_1011B5398);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011B4C10);
    sub_100B9D9C8();
    sub_100B9DFA8(&qword_1011B4C08, &qword_1011B4C10);
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v7, &qword_1011B5398);
  }

  else
  {
    v12 = *(a1 + 8);
    *&v23[0] = *a1;
    *(&v23[0] + 1) = v12;
    sub_1000098E0();

    v13 = Text.init<A>(_:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v24 = v17 & 1;
    *v4 = v13;
    *(v4 + 1) = v15;
    v4[16] = v17 & 1;
    *(v4 + 3) = v19;
    v20 = v23[5];
    *(v4 + 6) = v23[4];
    *(v4 + 7) = v20;
    *(v4 + 8) = v23[6];
    v21 = v23[1];
    *(v4 + 2) = v23[0];
    *(v4 + 3) = v21;
    v22 = v23[3];
    *(v4 + 4) = v23[2];
    *(v4 + 5) = v22;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011B4C10);
    sub_100B9D9C8();
    sub_100B9DFA8(&qword_1011B4C08, &qword_1011B4C10);
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100B9BDCC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50.0;
  if (v1 == 6)
  {
    v2 = 44.0;
  }

  qword_1011B5040 = *&v2;
}

void sub_100B9BE84()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_1011B5048 = v1 == 6;
}

uint64_t sub_100B9BEE8()
{
  if (qword_1011B06D0 != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (byte_1011B5048)
  {
    v0 = 140.0;
  }

  qword_1011B5050 = *&v0;
  return result;
}

uint64_t sub_100B9BF60()
{
  if (qword_1011B06D0 != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (byte_1011B5048)
  {
    v0 = 16.0;
  }

  qword_1011B5058 = *&v0;
  return result;
}

uint64_t sub_100B9BFC8()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011B06D0 != -1)
  {
    swift_once();
  }

  if (byte_1011B5048 == 1)
  {
    result = static Font.subheadline.getter();
    v5 = result;
  }

  else
  {
    static Font.body.getter();
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v5 = Font.leading(_:)();

    result = (*(v1 + 8))(v3, v0);
  }

  qword_1011B5060 = v5;
  return result;
}

uint64_t sub_100B9C124()
{
  v0 = sub_10010FC20(&qword_1011B4970);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  if (qword_1011B06D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Font.Design();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = static Font.system(size:weight:design:)();
  result = sub_1000095E8(v2, &qword_1011B4970);
  qword_1011B5068 = v4;
  return result;
}

uint64_t sub_100B9C260()
{
  if (qword_1011B06D0 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_1011B5048)
  {
    v0 = 9.0;
  }

  qword_1011B5070 = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = type metadata accessor for Artwork();
  v11 = *(v10 - 8);
  v32 = *(v11 + 56);
  v33 = v10;
  v31[1] = v11 + 56;
  v32(v9, 1, 1);
  v12 = [v2 artworkInfo];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 responseDictionary];

    if (v14)
    {
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = sub_100054D04(v15);

      if (v16)
      {
        Artwork.init(_:)();
        sub_1000095E8(v9, &unk_1011B55F0);
        sub_10003D17C(v6, v9, &unk_1011B55F0);
      }
    }
  }

  v17 = [v2 name];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [v2 handle];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  sub_1000089F8(v9, v6, &unk_1011B55F0);
  v26 = [v2 collaborationAllowed];
  sub_1000095E8(v9, &unk_1011B55F0);
  v27 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v28 = *(v27 + 24);
  (v32)(a1 + v28, 1, 1, v33);
  v29 = *(v27 + 28);
  *a1 = v18;
  a1[1] = v20;
  a1[2] = v23;
  a1[3] = v25;
  result = sub_100B91BEC(v6, a1 + v28);
  *(a1 + v29) = v26;
  return result;
}

uint64_t sub_100B9C590@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v2 = type metadata accessor for Playlist.Collaborator();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v59 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10010FC20(&qword_1011B5090);
  __chkstk_darwin(v6 - 8);
  v60 = (&v58 - v7);
  v66 = sub_10010FC20(&qword_1011B5450);
  __chkstk_darwin(v66);
  v9 = &v58 - v8;
  v10 = type metadata accessor for URL();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  v16 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = sub_10010FC20(&qword_1011B5458);
  __chkstk_darwin(v22 - 8);
  v24 = &v58 - v23;
  v26 = &v58 + *(v25 + 56) - v23;
  sub_100B9E020(v68, &v58 - v23, type metadata accessor for Collaboration.Flow);
  sub_100B9E020(v69, v26, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v34 = v66;
    v65 = v9;
    v68 = v12;
    v69 = v15;
    v35 = v10;
    sub_100B9E020(v24, v21, type metadata accessor for Collaboration.Flow);
    v36 = sub_10010FC20(&qword_1011B5088);
    v37 = *(v36 + 48);
    v38 = *(v36 + 64);
    v39 = v21[v38];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v67 + 8))(&v21[v37], v10);
      sub_1000095E8(v21, &qword_1011B5090);
LABEL_10:
      sub_1000095E8(v24, &qword_1011B5458);
LABEL_11:
      v32 = 0;
      return v32 & 1;
    }

    LODWORD(v64) = v39;
    v41 = v26[v38];
    v42 = *(v67 + 32);
    v42(v69, &v21[v37], v35);
    v42(v68, &v26[v37], v35);
    v43 = *(v34 + 48);
    v44 = v65;
    sub_10003D17C(v21, v65, &qword_1011B5090);
    sub_10003D17C(v26, v44 + v43, &qword_1011B5090);
    v45 = v62;
    v46 = *(v61 + 48);
    if (v46(v44, 1, v62) == 1)
    {
      v47 = v46(v44 + v43, 1, v45);
      v48 = v67;
      v49 = v68;
      v50 = v69;
      if (v47 == 1)
      {
        sub_1000095E8(v44, &qword_1011B5090);
        goto LABEL_21;
      }
    }

    else
    {
      v51 = v60;
      sub_1000089F8(v44, v60, &qword_1011B5090);
      if (v46(v44 + v43, 1, v45) != 1)
      {
        v53 = v59;
        sub_100B9D234(v44 + v43, v59, type metadata accessor for Collaboration.Flow.Collaborator);
        v54 = _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(v51, v53);
        sub_100B9D1B4(v53, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_100B9D1B4(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_1000095E8(v44, &qword_1011B5090);
        v48 = v67;
        v49 = v68;
        v50 = v69;
        if (v54)
        {
LABEL_21:
          v55 = static URL.== infix(_:_:)();
          v56 = *(v48 + 8);
          v56(v49, v35);
          v56(v50, v35);
          if (v55)
          {
            v57 = v64 ^ v41;
            sub_100B9D1B4(v24, type metadata accessor for Collaboration.Flow);
            v32 = v57 ^ 1;
            return v32 & 1;
          }

          goto LABEL_23;
        }

LABEL_19:
        v52 = *(v48 + 8);
        v52(v49, v35);
        v52(v50, v35);
LABEL_23:
        sub_100B9D1B4(v24, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      sub_100B9D1B4(v51, type metadata accessor for Collaboration.Flow.Collaborator);
      v48 = v67;
      v49 = v68;
      v50 = v69;
    }

    sub_1000095E8(v44, &qword_1011B5450);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100B9D1B4(v24, type metadata accessor for Collaboration.Flow);
      v32 = 1;
      return v32 & 1;
    }

    goto LABEL_10;
  }

  sub_100B9E020(v24, v18, type metadata accessor for Collaboration.Flow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v64 + 8))(v18, v65);
    goto LABEL_10;
  }

  v29 = v63;
  v28 = v64;
  v30 = v26;
  v31 = v65;
  (*(v64 + 32))(v63, v30, v65);
  v32 = static Playlist.Collaborator.== infix(_:_:)();
  v33 = *(v28 + 8);
  v33(v29, v31);
  v33(v18, v31);
  sub_100B9D1B4(v24, type metadata accessor for Collaboration.Flow);
  return v32 & 1;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_10010FC20(&qword_1011B4A58);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v15)
  {
    goto LABEL_17;
  }

  v25 = v7;
  v26 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v16 = *(v26 + 24);
  v17 = *(v11 + 48);
  sub_1000089F8(a1 + v16, v13, &unk_1011B55F0);
  sub_1000089F8(a2 + v16, &v13[v17], &unk_1011B55F0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1000095E8(v13, &unk_1011B55F0);
LABEL_20:
      v19 = *(a1 + *(v26 + 28)) ^ *(a2 + *(v26 + 28)) ^ 1;
      return v19 & 1;
    }

    goto LABEL_16;
  }

  sub_1000089F8(v13, v10, &unk_1011B55F0);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_16:
    sub_1000095E8(v13, &qword_1011B4A58);
    goto LABEL_17;
  }

  v21 = &v13[v17];
  v22 = v25;
  (*(v5 + 32))(v25, v21, v4);
  sub_100B9F7C0(&qword_1011B4A60, &type metadata accessor for Artwork);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v24(v10, v4);
  sub_1000095E8(v13, &unk_1011B55F0);
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_17:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_100B9D1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B9D234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100B9D2B8()
{
  sub_100B9D32C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Playlist.Collaborator();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100B9D32C()
{
  if (!qword_1011B5128)
  {
    sub_1001109D0(&qword_1011B5090);
    type metadata accessor for URL();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1011B5128);
    }
  }
}

void sub_100B9D3D8()
{
  sub_1000308EC(319, &unk_1011B51C0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100B9D490();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100B9D490()
{
  if (!qword_1011B4380)
  {
    type metadata accessor for Artwork();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B4380);
    }
  }
}

void sub_100B9D510()
{
  sub_1000308EC(319, &unk_1011B2B98, &type metadata for Bool, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Playlist();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager();
        if (v3 <= 0x3F)
        {
          sub_10002F044();
          if (v4 <= 0x3F)
          {
            sub_10001F888();
            if (v5 <= 0x3F)
            {
              sub_100B9D634();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100B9D634()
{
  if (!qword_1011B5260)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B5260);
    }
  }
}

__n128 sub_100B9D6D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100B9D6F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100B9D740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100B9D7EC()
{
  result = type metadata accessor for InlineProfileEditingView.Context();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Collaboration.Flow(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100B9D91C()
{
  result = qword_1011B5388;
  if (!qword_1011B5388)
  {
    sub_1001109D0(&qword_1011B5380);
    sub_100B9D9C8();
    sub_100B9DFA8(&qword_1011B4C08, &qword_1011B4C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5388);
  }

  return result;
}

unint64_t sub_100B9D9C8()
{
  result = qword_1011B5390;
  if (!qword_1011B5390)
  {
    sub_1001109D0(&qword_1011B5398);
    sub_100020674(&qword_1011B47D0, &qword_1011B47D8);
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5390);
  }

  return result;
}

unint64_t sub_100B9DAAC()
{
  result = qword_1011B53A8;
  if (!qword_1011B53A8)
  {
    sub_1001109D0(&qword_1011B5368);
    sub_100B9DB90(&qword_1011B53B0, &qword_1011B5360, &unk_100F05F18, sub_100B9DC14);
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B53A8);
  }

  return result;
}

uint64_t sub_100B9DB90(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B9DC14()
{
  result = qword_1011B53B8;
  if (!qword_1011B53B8)
  {
    sub_1001109D0(&qword_1011B5358);
    sub_100020674(&qword_1011B53C0, &qword_1011B53C8);
    sub_100020674(&qword_1011B4D78, &qword_1011B4D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B53B8);
  }

  return result;
}

double sub_100B9DDA8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_100B9DDC4()
{
  result = qword_1011B54E8;
  if (!qword_1011B54E8)
  {
    sub_1001109D0(&qword_1011B54E0);
    sub_100B9DE7C();
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B54E8);
  }

  return result;
}

unint64_t sub_100B9DE7C()
{
  result = qword_1011B54F0;
  if (!qword_1011B54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B54F0);
  }

  return result;
}

unint64_t sub_100B9DED0()
{
  result = qword_1011B5508;
  if (!qword_1011B5508)
  {
    sub_1001109D0(&qword_1011B5500);
    sub_100B9DFA8(&qword_1011B5510, &qword_1011B5518);
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5508);
  }

  return result;
}

uint64_t sub_100B9DFA8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100B9E020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B9E0D0()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for Playlist.Collaborator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(sub_10010FC20(&qword_1011B5088) + 48);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_1000D8FC4();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100B9E460(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return sub_100B99C10(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t sub_100B9E558()
{
  result = qword_1011B5530;
  if (!qword_1011B5530)
  {
    sub_1001109D0(&qword_1011B5480);
    sub_100020674(&qword_1011B5538, &qword_1011B5488);
    sub_100B9E610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5530);
  }

  return result;
}

unint64_t sub_100B9E610()
{
  result = qword_1011B5540;
  if (!qword_1011B5540)
  {
    sub_1001109D0(&qword_1011B5548);
    sub_100B9E6C8();
    sub_100020674(&qword_1011B4D78, &qword_1011B4D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5540);
  }

  return result;
}

unint64_t sub_100B9E6C8()
{
  result = qword_1011B5550;
  if (!qword_1011B5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5550);
  }

  return result;
}

uint64_t sub_100B9E764(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100B96E98(a1, v4);
}

uint64_t sub_100B9E7DC()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for Playlist.Collaborator();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = type metadata accessor for Artwork();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(sub_10010FC20(&qword_1011B5088) + 48);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = type metadata accessor for Playlist();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  sub_1000D8FC4();

  return swift_deallocObject();
}

uint64_t sub_100B9EAC8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100B9EB3C()
{
  result = qword_1011B5598;
  if (!qword_1011B5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5598);
  }

  return result;
}

uint64_t sub_100B9EB90()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_100B98DF0();
}

uint64_t sub_100B9EC80()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for Playlist.Collaborator();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = type metadata accessor for Artwork();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(sub_10010FC20(&qword_1011B5088) + 48);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = type metadata accessor for Playlist();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  sub_1000D8FC4();

  return swift_deallocObject();
}

uint64_t sub_100B9EF44()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100B97078();
}

uint64_t sub_100B9F034(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_100B98FA4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100B9F184(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_100B99EC4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100B9F2D4()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for Playlist.Collaborator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(sub_10010FC20(&qword_1011B5088) + 48);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_1000D8FC4();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100B9F624(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_100B99868(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_100B9F774()
{
  result = qword_1011B55A0;
  if (!qword_1011B55A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B55A0);
  }

  return result;
}

uint64_t sub_100B9F7C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100B9F818()
{
  result = qword_1011B55B8;
  if (!qword_1011B55B8)
  {
    sub_1001109D0(&qword_1011B53D8);
    sub_1001109D0(&qword_1011B5370);
    sub_100B9DB90(&qword_1011B53A0, &qword_1011B5370, &unk_100F05F28, sub_100B9DAAC);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011B55C0, &qword_1011B53E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B55B8);
  }

  return result;
}

unint64_t sub_100B9F940()
{
  result = qword_1011B55D8;
  if (!qword_1011B55D8)
  {
    sub_1001109D0(&qword_1011B55E0);
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B55D8);
  }

  return result;
}

unint64_t sub_100B9F9FC()
{
  result = qword_1011B55E8;
  if (!qword_1011B55E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B55E8);
  }

  return result;
}

uint64_t InlineProfileEditingView.Context.__allocating_init()()
{
  v0 = swift_allocObject();
  InlineProfileEditingView.Context.init()();
  return v0;
}

__n128 InlineProfileEditingView.init(context:)@<Q0>(uint64_t a1@<X8>)
{
  sub_100BA5558(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.Context.artwork(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000089F8(a1, &v9 - v6, &unk_1011B55F0);
  sub_1000089F8(v7, v4, &unk_1011B55F0);
  Published.init(initialValue:)();
  sub_1000095E8(a1, &unk_1011B55F0);
  return sub_1000095E8(v7, &unk_1011B55F0);
}

uint64_t sub_100B9FBF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100B9FCB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100B9FD2C(void *a1)
{
  v3 = sub_10010FC20(&unk_1011B55F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;
  v9 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v14;
  if (v14)
  {
    v11 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v11) = 0;
    v12 = type metadata accessor for Artwork();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v8, v6, &unk_1011B55F0);

    static Published.subscript.setter();

    sub_1000095E8(v8, &unk_1011B55F0);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = sub_10010FC20(&qword_1011B5600);
  v78 = *(v0 - 8);
  v79 = v0;
  __chkstk_darwin(v0);
  v77 = &v71 - v1;
  v76 = sub_10010FC20(&qword_1011B5608);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v3 = &v71 - v2;
  v4 = sub_10010FC20(&qword_1011B5610);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v71 - v6;
  v8 = sub_10010FC20(&unk_1011B55F0);
  v9 = __chkstk_darwin(v8);
  v72 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v73 = &v71 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v17 = &v71 - v16;
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v19 = type metadata accessor for Artwork();
  v80 = *(v19 - 8);
  v81 = v19;
  (*(v80 + 56))(v17, 1, 1);
  sub_1000089F8(v17, v15, &unk_1011B55F0);
  v71 = v15;
  Published.init(initialValue:)();
  v20 = v17;
  sub_1000095E8(v17, &unk_1011B55F0);
  v21 = v75;
  (*(v5 + 32))(v75 + v18, v7, v4);
  v22 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v83 = 0;
  v84 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v74 + 32))(v21 + v22, v3, v76);
  v23 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v83 = 0;
  sub_10010FC20(&qword_1011B1180);
  v24 = v77;
  Published.init(initialValue:)();
  (*(v78 + 32))(v21 + v23, v24, v79);
  *(v21 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v25 = [objc_opt_self() shared];
  v26 = [v25 activeUserState];

  v27 = [v26 music];
  v28 = [v27 userProfile];

  if (v28)
  {
    v29 = [v28 name];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v30;
    v84 = v32;

    static Published.subscript.setter();
    v33 = [v28 artworkInfo];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 responseDictionary];

      if (v35)
      {
        v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = sub_100054D04(v36);

        if (v37)
        {
          Artwork.init(_:)();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000089F8(v20, v71, &unk_1011B55F0);

          static Published.subscript.setter();
          sub_1000095E8(v20, &unk_1011B55F0);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v39 = v83;
  v38 = v84;

  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v42 = v80;
  v41 = v81;
  if (v40)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v73;
    static Published.subscript.getter();

    if ((*(v42 + 48))(v43, 1, v41) != 1)
    {

LABEL_25:
      sub_1000095E8(v43, &unk_1011B55F0);
      return v21;
    }

    sub_1000095E8(v43, &unk_1011B55F0);
  }

  sub_10010FC20(&qword_1011B5630);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100EBC6C0;
  *(v44 + 32) = CNContactThumbnailImageDataKey;
  v82 = v44;
  v45 = objc_opt_self();
  v46 = CNContactThumbnailImageDataKey;
  v47 = [v45 descriptorForRequiredKeysForStyle:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v48 = [objc_allocWithZone(CNContactStore) init];
  sub_10010FC20(&qword_1011B5638);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v83 = 0;
  v50 = [v48 _ios_meContactWithKeysToFetch:isa error:&v83];

  v51 = v83;
  if (!v50)
  {
    v69 = v83;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v51;
  static Published.subscript.getter();

  v54 = v83;
  v53 = v84;

  v55 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v55 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {
    v56 = [v45 stringFromContact:v50 style:0];
    if (v56)
    {
      v57 = v56;
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      swift_getKeyPath();
      swift_getKeyPath();
      v83 = v58;
      v84 = v60;

      static Published.subscript.setter();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v72;
  static Published.subscript.getter();

  if ((*(v42 + 48))(v43, 1, v41) != 1)
  {

    goto LABEL_25;
  }

  sub_1000095E8(v43, &unk_1011B55F0);
  v61 = [v50 thumbnailImageData];
  if (v61)
  {
    v62 = v61;
    v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = objc_allocWithZone(UIImage);
    sub_10002BC44(v63, v65);
    v67 = Data._bridgeToObjectiveC()().super.isa;
    v68 = [v66 initWithData:v67];

    sub_10002C064(v63, v65);
    sub_100B9FD2C(v68);

    sub_10002C064(v63, v65);
  }

  else
  {
  }

  return v21;
}

BOOL InlineProfileEditingView.Context.canValidate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = String.trim()();

  v1 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v1 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t InlineProfileEditingView.Context.userName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  countAndFlagsBits = String.trim()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.getter()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.setter(char a1)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100BA0C40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  v1 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = type metadata accessor for Artwork();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1000095E8(v3, &unk_1011B55F0);
  if (v6 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v8;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_10010FC20(&qword_1011B5610);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_10010FC20(&qword_1011B5608);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_10010FC20(&qword_1011B5600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_10010FC20(&qword_1011B5610);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_10010FC20(&qword_1011B5608);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_10010FC20(&qword_1011B5600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_100BA108C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context()
{
  type metadata accessor for InlineProfileEditingView.Context();
  sub_100BA56B4();

  return ObservedObject.init(wrappedValue:)();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v83 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v80 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = v72 - v8;
  v9 = sub_10010FC20(&qword_1011B5648);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v72 - v11;
  v13 = sub_10010FC20(&qword_1011B5650);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v72 - v15;
  v17 = sub_10010FC20(&qword_1011B5658);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = v72 - v19;
  v21 = sub_10010FC20(&qword_1011B5660);
  v72[2] = v21;
  __chkstk_darwin(v21);
  v85 = v72 - v22;
  v23 = sub_10010FC20(&qword_1011B5668);
  v77 = *(v23 - 8);
  v78 = v23;
  __chkstk_darwin(v23);
  v76 = v72 - v24;
  v86 = sub_10010FC20(&qword_1011B5670);
  __chkstk_darwin(v86);
  v87 = v72 - v25;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v26 = sub_10010FC20(&qword_1011B5678);
  sub_100BA1AB0(v2, &v12[*(v26 + 44)]);
  v27 = [objc_opt_self() quaternarySystemFillColor];
  v28 = Color.init(_:)();
  v29 = static Edge.Set.all.getter();
  v30 = &v12[*(v10 + 44)];
  *v30 = v28;
  v30[8] = v29;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v12, v16, &qword_1011B5648);
  v31 = &v16[*(v14 + 44)];
  v32 = v97;
  *(v31 + 4) = v96;
  *(v31 + 5) = v32;
  *(v31 + 6) = v98;
  v33 = v93;
  *v31 = v92;
  *(v31 + 1) = v33;
  v34 = v95;
  *(v31 + 2) = v94;
  *(v31 + 3) = v34;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v16, v20, &qword_1011B5650);
  v35 = &v20[*(v18 + 44)];
  v36 = v104;
  *(v35 + 4) = v103;
  *(v35 + 5) = v36;
  *(v35 + 6) = v105;
  v37 = v100;
  *v35 = v99;
  *(v35 + 1) = v37;
  v38 = v102;
  *(v35 + 2) = v101;
  *(v35 + 3) = v38;
  v39 = *(v21 + 36);
  v40 = v85;
  v41 = &v85[v39];
  v42 = *(type metadata accessor for RoundedRectangle() + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = type metadata accessor for RoundedCornerStyle();
  (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
  __asm { FMOV            V0.2D, #16.0 }

  *v41 = _Q0;
  *&v41[*(sub_10010FC20(&unk_1011B5680) + 36)] = 256;
  sub_10003D17C(v20, v40, &qword_1011B5658);
  v90 = 0;
  v91 = 0xE000000000000000;
  v50 = v73;
  v89 = *(v73 + 16);
  v74 = sub_10010FC20(&qword_1011B2DD8);
  State.projectedValue.getter();
  v72[1] = v72;
  v88 = v50;
  sub_10010FC20(&qword_1011B5690);
  sub_100BA5714();
  v51 = sub_1000098E0();
  sub_100020674(&qword_1011B56C8, &qword_1011B5690);
  v75 = v51;
  v52 = v76;
  v53 = v85;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)();
  v54 = v79;
  v55 = v50;

  v56 = v80;

  v57 = v81;
  sub_1000095E8(v53, &qword_1011B5660);
  v58 = static Alignment.center.getter();
  v60 = v59;
  v61 = v87;
  v62 = &v87[*(v86 + 36)];
  sub_100BA4394(v55, v62);
  v63 = (v62 + *(sub_10010FC20(&qword_1011B56D0) + 36));
  *v63 = v58;
  v63[1] = v60;
  v64 = v82;
  (*(v77 + 32))(v61, v52, v78);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v57 + 16))(v56, v54, v64);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v65 = qword_10121B340;
  static Locale.current.getter();
  v66 = String.init(localized:table:bundle:locale:comment:)();
  v68 = v67;
  (*(v57 + 8))(v54, v64);
  v90 = v66;
  v91 = v68;
  v89 = *(v55 + 48);
  v69 = State.projectedValue.getter();
  v85 = v72;
  __chkstk_darwin(v69);
  sub_10010FC20(&qword_1011B56D8);
  sub_100BA5998();
  sub_100020674(&qword_1011B56F0, &qword_1011B56D8);
  v70 = v87;
  View.alert<A, B>(_:isPresented:actions:)();

  return sub_1000095E8(v70, &qword_1011B5670);
}

uint64_t sub_100BA1AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v255 = a2;
  v3 = sub_10010FC20(&qword_1011B58F8);
  v251 = *(v3 - 8);
  v252 = v3;
  __chkstk_darwin(v3);
  v232 = v208 - v4;
  v5 = sub_10010FC20(&unk_1011B5900);
  __chkstk_darwin(v5 - 8);
  v254 = v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v253 = v208 - v8;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v247 = v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for String.LocalizationValue();
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v259 = v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v260 = v208 - v13;
  v245 = sub_10010FC20(&qword_1011B46C0);
  __chkstk_darwin(v245);
  v228 = v208 - v14;
  v242 = sub_10010FC20(&qword_1011B5910);
  __chkstk_darwin(v242);
  v244 = (v208 - v15);
  v16 = sub_10010FC20(&qword_1011B5918);
  __chkstk_darwin(v16 - 8);
  v250 = v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v261 = v208 - v19;
  v20 = type metadata accessor for Image.ResizingMode();
  v230 = *(v20 - 8);
  v231 = v20;
  __chkstk_darwin(v20);
  v229 = v208 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_10010FC20(&unk_1011B5920);
  __chkstk_darwin(v239);
  v240 = (v208 - v22);
  v256 = type metadata accessor for Artwork.CropStyle();
  v237 = *(v256 - 8);
  __chkstk_darwin(v256);
  v224 = v208 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ArtworkImage();
  v226 = *(v24 - 8);
  v227 = v24;
  __chkstk_darwin(v24);
  v233 = v208 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v223 = v208 - v27;
  __chkstk_darwin(v28);
  v225 = v208 - v29;
  __chkstk_darwin(v30);
  v235 = v208 - v31;
  v236 = type metadata accessor for ArtworkImage.ReusePolicy();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v258 = v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10010FC20(&qword_1011B4720);
  __chkstk_darwin(v33 - 8);
  v219 = v208 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v214 = v208 - v36;
  v37 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v37 - 8);
  v217 = v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v216 = v208 - v40;
  __chkstk_darwin(v41);
  v213 = v208 - v42;
  v43 = sub_10010FC20(&qword_1011B5930);
  __chkstk_darwin(v43 - 8);
  v218 = v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v215 = v208 - v46;
  __chkstk_darwin(v47);
  v257 = v208 - v48;
  v49 = sub_10010FC20(&qword_1011B5938);
  v221 = *(v49 - 8);
  v222 = v49;
  __chkstk_darwin(v49);
  v220 = v208 - v50;
  v51 = sub_10010FC20(&unk_1011B5940);
  __chkstk_darwin(v51);
  v53 = v208 - v52;
  v54 = sub_10010FC20(&qword_1011B5468);
  __chkstk_darwin(v54);
  v56 = v208 - v55;
  v238 = sub_10010FC20(&qword_1011B5950);
  __chkstk_darwin(v238);
  v58 = v208 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = v208 - v60;
  v62 = sub_10010FC20(&qword_1011B5958);
  __chkstk_darwin(v62 - 8);
  v243 = v208 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v241 = v208 - v65;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v249 = a1;
  v66 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v262 = v66;
  if (v265._countAndFlagsBits)
  {
    v258 = v265._countAndFlagsBits;
    Image.init(uiImage:)();
    v68 = v229;
    v67 = v230;
    v69 = v231;
    (*(v230 + 13))(v229, enum case for Image.ResizingMode.stretch(_:), v231);
    v257 = Image.resizable(capInsets:resizingMode:)();

    (*(v67 + 8))(v68, v69);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v70 = v273;
    v71 = v274;
    v72 = v275;
    v73 = v276;
    v75 = v277;
    v74 = v278;
    LOBYTE(v265._countAndFlagsBits) = v274;
    LOBYTE(v263[0]) = v276;
    LOBYTE(v67) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v264 = 0;
    v265._countAndFlagsBits = v257;
    v265._object = v70;
    LOBYTE(v266._countAndFlagsBits) = v71;
    v266._object = v72;
    LOBYTE(v267._countAndFlagsBits) = v73;
    v267._object = v75;
    v268._countAndFlagsBits = v74;
    LOWORD(v268._object) = 256;
    *(&v268._object + 2) = v271;
    HIWORD(v268._object) = WORD2(v271);
    LOBYTE(v269._countAndFlagsBits) = v67;
    HIDWORD(v269._countAndFlagsBits) = *(v263 + 3);
    *(&v269._countAndFlagsBits + 1) = v263[0];
    v269._object = v76;
    *&v270[0] = v77;
    *(&v270[0] + 1) = v78;
    *&v270[1] = v79;
    BYTE8(v270[1]) = 0;
    v80 = v268;
    v81 = v270[0];
    v82 = v240;
    v240[4] = v269;
    v82[5] = v81;
    *(v82 + 89) = *(v270 + 9);
    v83 = v266;
    v84 = v267;
    *v82 = v265;
    v82[1] = v83;
    v82[2] = v84;
    v82[3] = v80;
    swift_storeEnumTagMultiPayload();
    sub_1000089F8(&v265, v263, &qword_1011B5968);
    sub_10010FC20(&qword_1011B5968);
    sub_100BA5D80();
    sub_100BA5F6C();
    v85 = v241;
    _ConditionalContent<>.init(storage:)();

    sub_1000095E8(&v265, &qword_1011B5968);
    v86 = v259;
    goto LABEL_18;
  }

  v210 = v54;
  v211 = v58;
  v212 = v51;
  v229 = v53;
  v230 = v56;
  v231 = v61;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v213;
  static Published.subscript.getter();

  v88 = v214;
  v208[0] = *(v237 + 56);
  v208[1] = v237 + 56;
  (v208[0])(v214, 1, 1, v256);
  v89 = type metadata accessor for Artwork();
  v90 = *(v89 - 8);
  v91 = (*(v90 + 48))(v87, 1, v89);
  v209 = v89;
  if (v91 == 1)
  {
    sub_1000095E8(v88, &qword_1011B4720);
    sub_1000095E8(v87, &unk_1011B55F0);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    v93 = v257;
    (*(*(v92 - 8) + 56))(v257, 1, 1, v92);
  }

  else
  {
    v93 = v257;
    (*(v90 + 32))(v257, v87, v89);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_10003D17C(v88, v93 + *(v92 + 20), &qword_1011B4720);
    (*(*(v92 - 8) + 56))(v93, 0, 1, v92);
  }

  v94 = v258;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v95 = String.trim()();

  (*(v234 + 104))(v94, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v236);
  *(swift_allocObject() + 16) = v95;
  v96 = v215;
  sub_1000089F8(v93, v215, &qword_1011B5930);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v97 = *(*(v92 - 8) + 48);
  if (v97(v96, 1, v92) == 1)
  {
    sub_1000095E8(v96, &qword_1011B5930);
    v98 = 1;
    v99 = v216;
    v100 = v217;
    v101 = v209;
  }

  else
  {
    v99 = v216;
    v101 = v209;
    (*(v90 + 16))(v216, v96, v209);
    sub_100BA61E8(v96, type metadata accessor for ArtworkImage.ViewModel);
    v98 = 0;
    v100 = v217;
  }

  (*(v90 + 56))(v99, v98, 1, v101);
  sub_1000089F8(v99, v100, &unk_1011B55F0);
  ArtworkImage.init(_:)();
  sub_1000095E8(v99, &unk_1011B55F0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v102 = v218;
  sub_1000089F8(v257, v218, &qword_1011B5930);
  v103 = v97(v102, 1, v92);
  v104 = v227;
  if (v103 == 1)
  {
    sub_1000095E8(v102, &qword_1011B5930);
    v105 = v219;
    (v208[0])(v219, 1, 1, v256);
    v86 = v259;
    v106 = v226;
    v107 = v237;
LABEL_12:
    v110 = v224;
    if (qword_1011B0618 != -1)
    {
      swift_once();
    }

    v108 = v256;
    v111 = sub_1000060E4(v256, static Artwork.CropStyle.fallback);
    (*(v107 + 16))(v110, v111, v108);
    v112 = (*(v107 + 48))(v105, 1, v108) == 1;
    v113 = v105;
    v114 = v110;
    v115 = v107;
    if (!v112)
    {
      sub_1000095E8(v113, &qword_1011B4720);
    }

    goto LABEL_17;
  }

  v105 = v219;
  sub_1000089F8(v102 + *(v92 + 20), v219, &qword_1011B4720);
  sub_100BA61E8(v102, type metadata accessor for ArtworkImage.ViewModel);
  v107 = v237;
  v108 = v256;
  v109 = (*(v237 + 48))(v105, 1, v256);
  v86 = v259;
  v106 = v226;
  if (v109 == 1)
  {
    goto LABEL_12;
  }

  v116 = v105;
  v114 = v224;
  (*(v107 + 32))(v224, v116, v108);
  v115 = v107;
LABEL_17:
  v117 = v223;
  v118 = v233;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v115 + 8))(v114, v108);
  v119 = *(v106 + 8);
  v119(v118, v104);
  v120 = v225;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v119(v117, v104);
  sub_100B5A2A8();
  v121 = v220;
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v119(v120, v104);
  v119(v235, v104);
  (*(v234 + 8))(v258, v236);
  sub_1000095E8(v257, &qword_1011B5930);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v122 = v229;
  (*(v221 + 32))(v229, v121, v222);
  v123 = (v122 + *(v212 + 36));
  v124 = v263[1];
  *v123 = v263[0];
  v123[1] = v124;
  v123[2] = v263[2];
  v125 = v230;
  sub_10003D17C(v122, v230, &unk_1011B5940);
  *(v125 + *(v210 + 36)) = 256;
  LOBYTE(v122) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = v211;
  sub_10003D17C(v125, v211, &qword_1011B5468);
  v135 = v134 + *(v238 + 36);
  *v135 = v122;
  *(v135 + 8) = v127;
  *(v135 + 16) = v129;
  *(v135 + 24) = v131;
  *(v135 + 32) = v133;
  *(v135 + 40) = 0;
  v136 = v231;
  sub_10003D17C(v134, v231, &qword_1011B5950);
  sub_1000089F8(v136, v240, &qword_1011B5950);
  swift_storeEnumTagMultiPayload();
  sub_10010FC20(&qword_1011B5968);
  sub_100BA5D80();
  sub_100BA5F6C();
  v85 = v241;
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v136, &qword_1011B5950);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v137 = String.trim()();

  v138 = (v137._object >> 56) & 0xF;
  if ((v137._object & 0x2000000000000000) == 0)
  {
    v138 = v137._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v139 = &qword_10121B000;
  if (v138)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v140 = String.trim()();

    v265 = v140;
    sub_1000098E0();
    v141 = Text.init<A>(_:)();
    v143 = v142;
    v145 = v144;
    v146 = Text.bold()();
    v148 = v147;
    v149 = v85;
    v151 = v150;
    v153 = v152;
    sub_10011895C(v141, v143, v145 & 1);

    v154 = v244;
    *v244 = v146;
    v154[1] = v148;
    v86 = v259;
    v155 = v151 & 1;
    v85 = v149;
    *(v154 + 16) = v155;
    v154[3] = v153;
    v139 = &qword_10121B000;
    swift_storeEnumTagMultiPayload();
    sub_100B8D6D4();
    _ConditionalContent<>.init(storage:)();
    v156 = v248;
  }

  else
  {
    v157 = v260;
    String.LocalizationValue.init(stringLiteral:)();
    v158 = v246;
    v156 = v248;
    (*(v246 + 16))(v86, v157, v248);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v159 = qword_10121B340;
    static Locale.current.getter();
    v160 = String.init(localized:table:bundle:locale:comment:)();
    v162 = v161;
    (*(v158 + 8))(v260, v156);
    v271 = v160;
    v272 = v162;
    v163 = swift_allocObject();
    v164 = v249;
    v165 = v249[3];
    v163[3] = v249[2];
    v163[4] = v165;
    v163[5] = v164[4];
    v166 = v164[1];
    v163[1] = *v164;
    v163[2] = v166;
    sub_100B9DCF8(v164, &v265);
    sub_1000098E0();
    v167 = v228;
    Button<>.init<A>(_:action:)();
    v168 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v170 = v244;
    v171 = (v167 + *(v245 + 36));
    *v171 = KeyPath;
    v171[1] = v168;
    sub_1000089F8(v167, v170, &qword_1011B46C0);
    swift_storeEnumTagMultiPayload();
    sub_100B8D6D4();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v167, &qword_1011B46C0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v172 = String.trim()();

  v173 = (v172._object >> 56) & 0xF;
  if ((v172._object & 0x2000000000000000) == 0)
  {
    v173 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v173)
  {
    v174 = v260;
    String.LocalizationValue.init(stringLiteral:)();
    v175 = v246;
    (*(v246 + 16))(v86, v174, v156);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v176 = v139[104];
    static Locale.current.getter();
    v177 = String.init(localized:table:bundle:locale:comment:)();
    v179 = v178;
    (*(v175 + 8))(v260, v156);
    v271 = v177;
    v272 = v179;
    v180 = swift_allocObject();
    v181 = v249;
    v182 = v249[3];
    v180[3] = v249[2];
    v180[4] = v182;
    v180[5] = v181[4];
    v183 = v181[1];
    v180[1] = *v181;
    v180[2] = v183;
    sub_100B9DCF8(v181, &v265);
    sub_1000098E0();
    v184 = v232;
    Button<>.init<A>(_:action:)();
    LOBYTE(v180) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v192 = v191;
    v193 = v184 + *(sub_10010FC20(&qword_1011B59E0) + 36);
    *v193 = v180;
    *(v193 + 8) = v186;
    *(v193 + 16) = v188;
    *(v193 + 24) = v190;
    *(v193 + 32) = v192;
    *(v193 + 40) = 0;
    v194 = swift_getKeyPath();
    v195 = v184 + *(sub_10010FC20(&qword_1011B59E8) + 36);
    *v195 = v194;
    *(v195 + 8) = 1;
    *(v195 + 16) = 0;
    v197 = v252;
    v196 = v253;
    *(v184 + *(v252 + 36)) = 0x3FF0000000000000;
    sub_10003D17C(v184, v196, &qword_1011B58F8);
    v198 = 0;
  }

  else
  {
    v198 = 1;
    v197 = v252;
    v196 = v253;
  }

  (*(v251 + 56))(v196, v198, 1, v197);
  v199 = v243;
  v200 = v85;
  sub_1000089F8(v85, v243, &qword_1011B5958);
  v201 = v261;
  v202 = v250;
  sub_1000089F8(v261, v250, &qword_1011B5918);
  v203 = v254;
  sub_1000089F8(v196, v254, &unk_1011B5900);
  v204 = v255;
  sub_1000089F8(v199, v255, &qword_1011B5958);
  v205 = sub_10010FC20(&unk_1011B59F0);
  sub_1000089F8(v202, v204 + v205[12], &qword_1011B5918);
  v206 = v204 + v205[16];
  *v206 = 0;
  *(v206 + 8) = 1;
  sub_1000089F8(v203, v204 + v205[20], &unk_1011B5900);
  sub_1000095E8(v196, &unk_1011B5900);
  sub_1000095E8(v201, &qword_1011B5918);
  sub_1000095E8(v200, &qword_1011B5958);
  sub_1000095E8(v203, &unk_1011B5900);
  sub_1000095E8(v202, &qword_1011B5918);
  return sub_1000095E8(v199, &qword_1011B5958);
}

uint64_t sub_100BA3704@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v3 = sub_10010FC20(&qword_1011B58E8);
  __chkstk_darwin(v3 - 8);
  v85 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v101 = &v81 - v6;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v81 - v13;
  v91 = sub_10010FC20(&unk_1011B46D0);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v83 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = &v81 - v17;
  __chkstk_darwin(v18);
  v94 = &v81 - v19;
  __chkstk_darwin(v20);
  v89 = &v81 - v21;
  __chkstk_darwin(v22);
  v97 = &v81 - v23;
  __chkstk_darwin(v24);
  v100 = &v81 - v25;
  String.LocalizationValue.init(stringLiteral:)();
  v98 = *(v9 + 16);
  v99 = v8;
  v96 = v9 + 16;
  v98(v11, v14, v8);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v26 = qword_10121B340;
  v27 = qword_10121B340;
  static Locale.current.getter();
  v92 = v27;
  v28 = String.init(localized:table:bundle:locale:comment:)();
  v93 = v11;
  v30 = v29;
  v31 = *(v9 + 8);
  v32 = v99;
  v31(v14, v99);
  v103 = v28;
  v104 = v30;
  v33 = swift_allocObject();
  v34 = v9 + 8;
  v35 = a1[3];
  v33[3] = a1[2];
  v33[4] = v35;
  v33[5] = a1[4];
  v36 = a1[1];
  v33[1] = *a1;
  v33[2] = v36;
  sub_100B9DCF8(a1, v102);
  v37 = sub_1000098E0();
  Button<>.init<A>(_:action:)();
  String.LocalizationValue.init(stringLiteral:)();
  v98(v93, v14, v32);
  static Locale.current.getter();
  v88 = v26;
  v38 = v31;
  v39 = String.init(localized:table:bundle:locale:comment:)();
  v41 = v40;
  v87 = v34;
  v31(v14, v32);
  v103 = v39;
  v104 = v41;
  v42 = swift_allocObject();
  v43 = a1[3];
  v42[3] = a1[2];
  v42[4] = v43;
  v42[5] = a1[4];
  v44 = a1[1];
  v42[1] = *a1;
  v42[2] = v44;
  sub_100B9DCF8(a1, v102);
  v45 = v97;
  v86 = v37;
  v46 = v93;
  Button<>.init<A>(_:action:)();
  v47 = 1;
  if ([objc_opt_self() isSourceTypeAvailable:1])
  {
    v48 = v92;
    v82 = v38;
    v49 = v98;
    v50 = v99;
    v51 = [objc_opt_self() currentTraitCollection];
    v52 = [v51 userInterfaceIdiom];

    if (v52 == 6)
    {
      v47 = 1;
      v45 = v97;
      v38 = v82;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      v49(v46, v14, v50);
      v53 = v48;
      static Locale.current.getter();
      v54 = String.init(localized:table:bundle:locale:comment:)();
      v56 = v55;
      v38 = v82;
      v82(v14, v50);
      v103 = v54;
      v104 = v56;
      v57 = swift_allocObject();
      v58 = a1[3];
      v57[3] = a1[2];
      v57[4] = v58;
      v57[5] = a1[4];
      v59 = a1[1];
      v57[1] = *a1;
      v57[2] = v59;
      sub_100B9DCF8(a1, v102);
      v60 = v89;
      Button<>.init<A>(_:action:)();
      (*(v90 + 32))(v101, v60, v91);
      v47 = 0;
      v45 = v97;
    }
  }

  v61 = v90;
  v62 = v91;
  (*(v90 + 56))(v101, v47, 1, v91);
  String.LocalizationValue.init(stringLiteral:)();
  v63 = v99;
  v98(v46, v14, v99);
  v64 = v92;
  static Locale.current.getter();
  v65 = String.init(localized:table:bundle:locale:comment:)();
  v67 = v66;
  v38(v14, v63);
  v103 = v65;
  v104 = v67;
  v68 = swift_allocObject();
  v69 = a1[3];
  v68[3] = a1[2];
  v68[4] = v69;
  v68[5] = a1[4];
  v70 = a1[1];
  v68[1] = *a1;
  v68[2] = v70;
  sub_100B9DCF8(a1, v102);
  v71 = v89;
  Button<>.init<A>(_:action:)();
  v72 = *(v61 + 16);
  v73 = v94;
  v72(v94, v100, v62);
  v74 = v95;
  v72(v95, v45, v62);
  v75 = v85;
  sub_1000089F8(v101, v85, &qword_1011B58E8);
  v76 = v83;
  v72(v83, v71, v62);
  v77 = v84;
  v72(v84, v73, v62);
  v78 = sub_10010FC20(&qword_1011B58F0);
  v72(&v77[v78[12]], v74, v62);
  sub_1000089F8(v75, &v77[v78[16]], &qword_1011B58E8);
  v72(&v77[v78[20]], v76, v62);
  v79 = *(v61 + 8);
  v79(v71, v62);
  sub_1000095E8(v101, &qword_1011B58E8);
  v79(v97, v62);
  v79(v100, v62);
  v79(v76, v62);
  sub_1000095E8(v75, &qword_1011B58E8);
  v79(v95, v62);
  return (v79)(v94, v62);
}

uint64_t sub_100BA4180()
{
  sub_10010FC20(&unk_1011B58D0);
  State.wrappedValue.setter();
  sub_10010FC20(&qword_1011B2DD8);
  return State.wrappedValue.setter();
}

uint64_t sub_100BA420C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 8);
  sub_100B9FD2C(0);
  v9 = type metadata accessor for Artwork();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v4, &unk_1011B55F0);

  static Published.subscript.setter();
  sub_1000095E8(v7, &unk_1011B55F0);
  v10 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v8 + v10) = 1;
  return result;
}

uint64_t sub_100BA4394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context();
  sub_100BA56B4();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 64);
  sub_10010FC20(&unk_1011B58D0);
  State.projectedValue.getter();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 32);
  sub_10010FC20(&qword_1011B2DD8);
  State.projectedValue.getter();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (qword_1011B0700 != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0890);
  swift_storeEnumTagMultiPayload();
  v14 = (v5 + v3[7]);
  v15 = v3[9];
  v16 = (v5 + v3[5]);
  *v16 = v24;
  v16[1] = v23;
  v16[2] = v6;
  v17 = v5 + v3[6];
  *v17 = v7;
  *(v17 + 1) = v8;
  v17[16] = v9;
  v18 = v5 + v3[8];
  *v18 = v10;
  *(v18 + 1) = v11;
  v18[16] = v12;
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v15) = v13;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = v25;
  sub_100BA5CD4(v5, v25);
  v20 = (v19 + *(sub_10010FC20(&qword_1011B58E0) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return sub_100BA61E8(v5, type metadata accessor for ImagePicker);
}

uint64_t sub_100BA4634@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100BA46B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v3 = sub_10010FC20(&unk_1011B58A0);
  __chkstk_darwin(v3 - 8);
  v88 = &v76 - v4;
  v5 = sub_10010FC20(&unk_1011B46D0);
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v76 - v8;
  __chkstk_darwin(v9);
  v85 = &v76 - v10;
  v84 = sub_10010FC20(&qword_1011B58B0);
  __chkstk_darwin(v84);
  v98 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = &v76 - v13;
  __chkstk_darwin(v14);
  v97 = &v76 - v15;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  v87 = sub_10010FC20(&qword_1011B58B8);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v96 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v102 = &v76 - v28;
  v89 = a1;
  v29 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v29;
  static Published.subscript.getter();

  v82 = v103;
  v81 = v104;
  String.LocalizationValue.init(stringLiteral:)();
  v30 = *(v20 + 16);
  v95 = v20 + 16;
  v94 = v30;
  v30(v22, v25, v19);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v31 = qword_10121B340;
  v32 = qword_10121B340;
  v76 = v18;
  static Locale.current.getter();
  v33 = v32;
  v77 = v22;
  v79 = v31;
  v34 = String.init(localized:table:bundle:locale:comment:)();
  v36 = v35;
  v93 = *(v20 + 8);
  v93(v25, v19);
  type metadata accessor for InlineProfileEditingView.Context();
  sub_100BA56B4();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v105 = v34;
  v106 = v36;
  v80 = sub_1000098E0();
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  String.LocalizationValue.init(stringLiteral:)();
  v37 = v77;
  v78 = v19;
  v94(v77, v25, v19);
  static Locale.current.getter();
  v38 = String.init(localized:table:bundle:locale:comment:)();
  v40 = v39;
  v93(v25, v19);
  v103 = v38;
  v104 = v40;
  v41 = v85;
  Button<>.init<A>(_:action:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v42 = String.trim()();

  v43 = (v42._object >> 56) & 0xF;
  if ((v42._object & 0x2000000000000000) == 0)
  {
    v43 = v42._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v44 = v43 == 0;
  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v47 = v100;
  v48 = v83;
  (*(v100 + 32))(v83, v41, v101);
  v49 = (v48 + *(v84 + 36));
  *v49 = KeyPath;
  v49[1] = sub_100239940;
  v49[2] = v46;
  v50 = v97;
  sub_10003D17C(v48, v97, &qword_1011B58B0);
  String.LocalizationValue.init(stringLiteral:)();
  v51 = v78;
  v94(v37, v25, v78);
  static Locale.current.getter();
  v52 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v53;
  v93(v25, v51);
  v105 = v52;
  v106 = v54;
  v55 = v88;
  static ButtonRole.cancel.getter();
  v56 = type metadata accessor for ButtonRole();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = swift_allocObject();
  v58 = v89;
  v59 = v89[3];
  *(v57 + 48) = v89[2];
  *(v57 + 64) = v59;
  *(v57 + 80) = v58[4];
  v60 = v58[1];
  *(v57 + 16) = *v58;
  *(v57 + 32) = v60;
  v61 = v81;
  *(v57 + 96) = v82;
  *(v57 + 104) = v61;
  sub_100B9DCF8(v58, &v103);
  v62 = v99;
  Button<>.init<A>(_:role:action:)();
  v63 = v86;
  v64 = *(v86 + 16);
  v65 = v96;
  v66 = v87;
  v64(v96, v102, v87);
  sub_1000089F8(v50, v98, &qword_1011B58B0);
  v67 = *(v47 + 16);
  v68 = v90;
  v69 = v101;
  v67(v90, v62, v101);
  v70 = v91;
  v64(v91, v65, v66);
  v71 = sub_10010FC20(&qword_1011B58C0);
  v72 = v98;
  sub_1000089F8(v98, &v70[*(v71 + 48)], &qword_1011B58B0);
  v67(&v70[*(v71 + 64)], v68, v69);
  v73 = *(v100 + 8);
  v73(v99, v69);
  sub_1000095E8(v97, &qword_1011B58B0);
  v74 = *(v63 + 8);
  v74(v102, v66);
  v73(v68, v69);
  sub_1000095E8(v72, &qword_1011B58B0);
  return (v74)(v96, v66);
}

uint64_t sub_100BA51C0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100BA5240()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100BA52C4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6[2] = a2;
  v6[3] = a3;
  sub_1000089F8(&v7, v6, &qword_1011B58C8);

  return static Published.subscript.setter();
}

uint64_t sub_100BA53AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100BA5428(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000089F8(a1, &v9 - v6, &unk_1011B55F0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v4, &unk_1011B55F0);

  static Published.subscript.setter();
  return sub_1000095E8(v7, &unk_1011B55F0);
}

uint64_t sub_100BA5558@<X0>(uint64_t a1@<X8>)
{
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  type metadata accessor for InlineProfileEditingView.Context();
  sub_100BA56B4();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

uint64_t type metadata accessor for InlineProfileEditingView.Context()
{
  result = qword_1011B5720;
  if (!qword_1011B5720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100BA56B4()
{
  result = qword_1011B5640;
  if (!qword_1011B5640)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5640);
  }

  return result;
}

unint64_t sub_100BA5714()
{
  result = qword_1011B5698;
  if (!qword_1011B5698)
  {
    sub_1001109D0(&qword_1011B5660);
    sub_100BA5828(&qword_1011B56A0, &qword_1011B5658, &unk_100F06488, sub_100BA57F8);
    sub_100020674(&qword_1011B2268, &unk_1011B5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5698);
  }

  return result;
}

uint64_t sub_100BA5828(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100BA58AC()
{
  result = qword_1011B56B0;
  if (!qword_1011B56B0)
  {
    sub_1001109D0(&qword_1011B5648);
    sub_100020674(&qword_1011B56B8, &qword_1011B56C0);
    sub_100020674(&qword_1011B4EA8, &qword_1011B4EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B56B0);
  }

  return result;
}

unint64_t sub_100BA5998()
{
  result = qword_1011B56E0;
  if (!qword_1011B56E0)
  {
    sub_1001109D0(&qword_1011B5670);
    sub_1001109D0(&qword_1011B5660);
    sub_1001109D0(&qword_1011B5690);
    sub_100BA5714();
    sub_1000098E0();
    sub_100020674(&qword_1011B56C8, &qword_1011B5690);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011B56E8, &qword_1011B56D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B56E0);
  }

  return result;
}

void sub_100BA5B3C()
{
  sub_1000054CC(319, &qword_1011B5730, &unk_1011B55F0);
  if (v0 <= 0x3F)
  {
    sub_100BA5C78();
    if (v1 <= 0x3F)
    {
      sub_1000054CC(319, &unk_1011B5740, &qword_1011B1180);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100BA5C78()
{
  if (!qword_1011B5738)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B5738);
    }
  }
}

uint64_t sub_100BA5CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100BA5D80()
{
  result = qword_1011B5970;
  if (!qword_1011B5970)
  {
    sub_1001109D0(&qword_1011B5968);
    sub_100BA5E38(&qword_1011B5978, &qword_1011B5980, &unk_100F066E8, sub_100BA5EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5970);
  }

  return result;
}

uint64_t sub_100BA5E38(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    sub_100020674(&unk_1011B5000, &qword_1011B59A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100BA5EE8()
{
  result = qword_1011B5988;
  if (!qword_1011B5988)
  {
    sub_1001109D0(&unk_1011B5990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5988);
  }

  return result;
}

unint64_t sub_100BA5F6C()
{
  result = qword_1011B59A8;
  if (!qword_1011B59A8)
  {
    sub_1001109D0(&qword_1011B5950);
    sub_100BA5E38(&qword_1011B59B0, &qword_1011B5468, &unk_100F06128, sub_100BA6024);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B59A8);
  }

  return result;
}

unint64_t sub_100BA6024()
{
  result = qword_1011B59B8;
  if (!qword_1011B59B8)
  {
    sub_1001109D0(&unk_1011B5940);
    sub_100B5A2A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B59B8);
  }

  return result;
}

uint64_t sub_100BA6134()
{

  return swift_deallocObject();
}

uint64_t sub_100BA61E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeightLimitedButtonTextView.init(action:body:trailingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  a3();
  v9 = type metadata accessor for HeightLimitedButtonTextView();
  result = a4(v9, v10, v11, v12);
  v14 = (a5 + *(v9 + 56));
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t HeightLimitedButtonTextView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_1001109D0(&qword_1011B5A00);
  v33 = a1 + 5;
  v3 = a1[2];
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v31 = a1[3];
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v47 = &protocol witness table for _CompositingGroupEffect;
  v30 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v42 = type metadata accessor for Button();
  v43 = type metadata accessor for PlainButtonStyle();
  v44 = swift_getWitnessTable();
  v45 = sub_100BA68A8();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v26[3] = swift_getWitnessTable();
  v26[0] = type metadata accessor for ViewThatFits();
  v29 = *(v26[0] - 8);
  __chkstk_darwin(v26[0]);
  v5 = v26 - v4;
  v6 = type metadata accessor for ModifiedContent();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v26[1] = swift_getWitnessTable();
  v26[2] = type metadata accessor for _OverlayModifier();
  v9 = type metadata accessor for ModifiedContent();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v26 - v13;
  v15 = a1[4];
  v16 = v32;
  View.hidden()();
  static Axis.Set.vertical.getter();
  *&v17 = v15;
  *(&v17 + 1) = *v33;
  *&v18 = v3;
  *(&v18 + 1) = v31;
  v35 = v18;
  v36 = v17;
  v37 = v16;
  ViewThatFits.init(in:content:)();
  static Alignment.center.getter();
  v19 = sub_100BA767C();
  v40 = v15;
  v41 = v19;
  v20 = swift_getWitnessTable();
  v21 = v26[0];
  View.overlay<A>(_:alignment:)();
  (*(v29 + 8))(v5, v21);
  (*(v28 + 8))(v8, v6);
  v22 = swift_getWitnessTable();
  v38 = v20;
  v39 = v22;
  v23 = swift_getWitnessTable();
  sub_100B5B86C(v11, v9, v23);
  v24 = *(v27 + 8);
  v24(v11, v9);
  sub_100B5B86C(v14, v9, v23);
  return (v24)(v14, v9);
}

unint64_t sub_100BA68A8()
{
  result = qword_1011B5A08;
  if (!qword_1011B5A08)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5A08);
  }

  return result;
}

uint64_t sub_100BA6900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a5;
  v70 = a3;
  v52 = a1;
  v74 = a6;
  v8 = type metadata accessor for PlainButtonStyle();
  v62 = v8;
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v72 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v89 = &protocol witness table for _CompositingGroupEffect;
  v56 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v68 = v10;
  v67 = swift_getWitnessTable();
  v11 = type metadata accessor for Button();
  v63 = v11;
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v58 = &v50 - v12;
  v13 = swift_getWitnessTable();
  v61 = v13;
  v60 = sub_100BA68A8();
  v84 = v11;
  v85 = v8;
  v86 = v13;
  v87 = v60;
  v64 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v57 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = &v50 - v16;
  sub_1001109D0(&qword_1011B5A00);
  v51 = a2;
  v17 = type metadata accessor for ModifiedContent();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v50 - v19;
  v21 = type metadata accessor for ModifiedContent();
  v75 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  View.lineLimit(_:)();
  v27 = sub_100BA7BF0();
  v83[4] = a4;
  v83[5] = v27;
  v28 = a4;
  v29 = swift_getWitnessTable();
  View.fixedSize(horizontal:vertical:)();
  (*(v18 + 8))(v20, v17);
  v83[2] = v29;
  v83[3] = &protocol witness table for _FixedSizeLayout;
  v54 = swift_getWitnessTable();
  v30 = v26;
  v53 = v23;
  sub_100B5B86C(v23, v21, v54);
  v55 = *(v75 + 8);
  v56 = (v75 + 8);
  v55(v23, v21);
  v31 = v51;
  v32 = v70;
  v84 = v51;
  v85 = v70;
  v33 = v71;
  v86 = v28;
  v87 = v71;
  type metadata accessor for HeightLimitedButtonTextView();
  v76 = v31;
  v77 = v32;
  v78 = v28;
  v79 = v33;
  v80 = v52;

  v34 = v58;
  Button.init(action:label:)();
  v35 = v72;
  PlainButtonStyle.init()();
  v36 = v57;
  v37 = v63;
  v38 = v62;
  v39 = v61;
  v40 = v60;
  View.buttonStyle<A>(_:)();
  (*(v73 + 8))(v35, v38);
  (*(v69 + 8))(v34, v37);
  v84 = v37;
  v85 = v38;
  v86 = v39;
  v87 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v59;
  v43 = OpaqueTypeMetadata2;
  sub_100B5B86C(v36, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v44 = v65;
  v45 = *(v65 + 8);
  v46 = v36;
  v45(v36, v43);
  v47 = v53;
  (*(v75 + 16))(v53, v30, v21);
  v84 = v47;
  (*(v44 + 16))(v46, v42, v43);
  v85 = v46;
  v83[0] = v21;
  v83[1] = v43;
  v81 = v54;
  v82 = OpaqueTypeConformance2;
  sub_100BB7D60(&v84, 2uLL, v83);
  v45(v42, v43);
  v48 = v55;
  v55(v30, v21);
  v45(v46, v43);
  return v48(v47, v21);
}

uint64_t sub_100BA7130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a4;
  v25 = a5;
  v21 = a2;
  v22 = a3;
  v23 = a1;
  v26 = a6;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for ZStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  static HorizontalAlignment.trailing.getter();
  static VerticalAlignment.lastTextBaseline.getter();
  v27 = v21;
  v28 = v22;
  v29 = v24;
  v30 = v25;
  v31 = v23;
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  View.compositingGroup()();
  (*(v7 + 8))(v9, v6);
  v32 = WitnessTable;
  v33 = &protocol witness table for _CompositingGroupEffect;
  v18 = swift_getWitnessTable();
  sub_100B5B86C(v13, v10, v18);
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_100B5B86C(v16, v10, v18);
  return (v19)(v16, v10);
}

uint64_t sub_100BA7404@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v35 = a6;
  v10 = *(a3 - 1);
  __chkstk_darwin(a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v17 = *(v16 - 8);
  __chkstk_darwin(v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  v33 = v24;
  sub_100B5B86C(v25, v26, v24);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v27 = v34;
  v42 = v34;
  v28 = type metadata accessor for HeightLimitedButtonTextView();
  sub_100B5B86C(a1 + *(v28 + 52), a3, v27);
  (*(v17 + 16))(v20, v23, a2);
  v39 = v20;
  (*(v10 + 16))(v12, v15, a3);
  v40 = v12;
  v38[0] = a2;
  v38[1] = a3;
  v36 = v33;
  v37 = v27;
  sub_100BB7D60(&v39, 2uLL, v38);
  v29 = *(v10 + 8);
  v29(v15, a3);
  v30 = *(v17 + 8);
  v30(v23, a2);
  v29(v12, a3);
  return (v30)(v20, a2);
}

unint64_t sub_100BA767C()
{
  result = qword_1011B5A10[0];
  if (!qword_1011B5A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011B5A10);
  }

  return result;
}

unint64_t sub_100BA7718()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_10001F888();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100BA77BC(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_DWORD *sub_100BA798C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2 - 1;
      }
    }
  }

  return result;
}

unint64_t sub_100BA7BF0()
{
  result = qword_1011B5A98;
  if (!qword_1011B5A98)
  {
    sub_1001109D0(&qword_1011B5A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5A98);
  }

  return result;
}

uint64_t MoreLabel.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MoreLabel();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0910);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  v6[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for MoreLabel()
{
  result = qword_1011B5B58;
  if (!qword_1011B5B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v1 = type metadata accessor for Text.LineStyle.Pattern();
  v79 = *(v1 - 8);
  v80 = v1;
  __chkstk_darwin(v1);
  v78 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EnvironmentValues();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011B5418);
  v75 = v5;
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_10010FC20(&qword_1011B5AA0);
  __chkstk_darwin(v8);
  v76 = &v70 - v9;
  Int.seconds.getter(44);
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v73 = v13;
  v74 = v14;
  v15 = &v7[*(v5 + 36)];
  v16 = *(sub_10010FC20(&qword_1011B5420) + 28);
  v17 = enum case for Text.Case.uppercase(_:);
  v18 = type metadata accessor for Text.Case();
  v19 = *(v18 - 8);
  v20 = v17;
  v21 = v8;
  (*(v19 + 104))(v15 + v16, v20, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v7 = v10;
  *(v7 + 1) = v12;
  v23 = v76;
  v22 = v77;
  v7[16] = v73 & 1;
  *(v7 + 3) = v74;
  static Font.Weight.semibold.getter();
  sub_100BA880C();
  View.fontWeight(_:)();
  sub_1000095E8(v7, &qword_1011B5418);
  v24 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(sub_10010FC20(&qword_1011B5AB8) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = *v22;
  v28 = swift_getKeyPath();
  v29 = (v23 + *(v21 + 36));
  *v29 = v28;
  v29[1] = v27;
  v30 = v22 + *(type metadata accessor for MoreLabel() + 24);
  v31 = *v30;
  if (v30[8] == 1)
  {
    v98 = v31 & 1;
  }

  else
  {

    sub_1005FF6B8(v31, 0);
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v33 = v70;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v31, 0);
    (*(v71 + 8))(v33, v72);
  }

  v34 = v78;
  static Text.LineStyle.Pattern.solid.getter();
  sub_100BA88C4();
  v35 = v81;
  View.underline(_:pattern:color:)();
  (*(v79 + 8))(v34, v80);
  sub_1000C83F8(v23);
  v36 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v35 + *(sub_10010FC20(&qword_1011B5AD0) + 36);
  *v45 = v36;
  *(v45 + 8) = v38;
  *(v45 + 16) = v40;
  *(v45 + 24) = v42;
  *(v45 + 32) = v44;
  *(v45 + 40) = 0;
  v46 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v35 + *(sub_10010FC20(&qword_1011B5AD8) + 36);
  *v55 = v46;
  *(v55 + 8) = v48;
  *(v55 + 16) = v50;
  *(v55 + 24) = v52;
  *(v55 + 32) = v54;
  *(v55 + 40) = 0;
  v56 = static VerticalAlignment.center.getter();
  v90 = 0;
  sub_100BA8474(&v83);
  v93 = v85;
  v94 = v86;
  v95 = v87;
  v96 = v88;
  v91 = v83;
  v92 = v84;
  v97[2] = v85;
  v97[3] = v86;
  v97[4] = v87;
  v97[5] = v88;
  v97[0] = v83;
  v97[1] = v84;
  sub_1000089F8(&v91, &v82, &qword_1011B5AE0);
  sub_1000095E8(v97, &qword_1011B5AE0);
  *&v89[39] = v93;
  *&v89[55] = v94;
  *&v89[71] = v95;
  *&v89[87] = v96;
  *&v89[7] = v91;
  *&v89[23] = v92;
  v57 = v90;
  v58 = v35 + *(sub_10010FC20(&qword_1011B5AE8) + 36);
  v59 = *(sub_10010FC20(&qword_1011B5AF0) + 36);
  v60 = enum case for BlendMode.destinationOut(_:);
  v61 = type metadata accessor for BlendMode();
  (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
  v62 = *&v89[32];
  *(v58 + 65) = *&v89[48];
  v63 = *&v89[80];
  *(v58 + 81) = *&v89[64];
  *(v58 + 97) = v63;
  v64 = *&v89[16];
  *(v58 + 17) = *v89;
  *(v58 + 33) = v64;
  *v58 = v56;
  *(v58 + 8) = 0;
  *(v58 + 16) = v57;
  *(v58 + 112) = *&v89[95];
  *(v58 + 49) = v62;
  v65 = static Alignment.center.getter();
  v67 = v66;
  result = sub_10010FC20(&qword_1011B5AF8);
  v69 = (v58 + *(result + 36));
  *v69 = v65;
  v69[1] = v67;
  return result;
}

uint64_t sub_100BA8474@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  type metadata accessor for MoreLabel();
  sub_100B4CD5C(v8);
  (*(v3 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v2);
  v9 = static LayoutDirection.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  sub_10010FC20(&qword_1011B1EB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBDC20;
  if (v9)
  {
    *(v11 + 32) = static Color.black.getter();
    v12 = static Color.clear.getter();
  }

  else
  {
    *(v11 + 32) = static Color.clear.getter();
    v12 = static Color.black.getter();
  }

  *(v11 + 40) = v12;
  Gradient.init(colors:)();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = static Color.black.getter();
  v14 = v27;
  v20[2] = v26;
  v20[3] = v27;
  v15 = v28;
  v20[4] = v28;
  v16 = v29;
  v21 = v29;
  v17 = v24;
  v18 = v25;
  v20[0] = v24;
  v20[1] = v25;
  *(a1 + 32) = v26;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 80) = v16;
  *(a1 + 88) = v13;
  sub_1000089F8(v20, v22, &qword_1011B2370);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  return sub_1000095E8(v22, &qword_1011B2370);
}

uint64_t sub_100BA8730@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityShowButtonShapes.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100BA8764(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B5BB8);
  __chkstk_darwin(v2 - 8);
  sub_1000089F8(a1, &v5 - v3, &qword_1011B5BB8);
  return EnvironmentValues.textCase.setter();
}

unint64_t sub_100BA880C()
{
  result = qword_1011B5AA8;
  if (!qword_1011B5AA8)
  {
    sub_1001109D0(&qword_1011B5418);
    sub_100020674(&qword_1011B5AB0, &qword_1011B5420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5AA8);
  }

  return result;
}

unint64_t sub_100BA88C4()
{
  result = qword_1011B5AC0;
  if (!qword_1011B5AC0)
  {
    sub_1001109D0(&qword_1011B5AA0);
    sub_100BA897C();
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5AC0);
  }

  return result;
}

unint64_t sub_100BA897C()
{
  result = qword_1011B5AC8;
  if (!qword_1011B5AC8)
  {
    sub_1001109D0(&qword_1011B5AB8);
    sub_1001109D0(&qword_1011B5418);
    sub_100BA880C();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5AC8);
  }

  return result;
}

void sub_100BA8AB4()
{
  sub_100BA8B48();
  if (v0 <= 0x3F)
  {
    sub_100BA8BA0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100BA8B48()
{
  if (!qword_1011B2C70)
  {
    type metadata accessor for LayoutDirection();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B2C70);
    }
  }
}

void sub_100BA8BA0()
{
  if (!qword_1011B4600)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B4600);
    }
  }
}

unint64_t sub_100BA8BF0()
{
  result = qword_1011B5B98;
  if (!qword_1011B5B98)
  {
    sub_1001109D0(&qword_1011B5AE8);
    sub_100BA8CA8();
    sub_100020674(&qword_1011B5BB0, &qword_1011B5AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5B98);
  }

  return result;
}

unint64_t sub_100BA8CA8()
{
  result = qword_1011B5BA0;
  if (!qword_1011B5BA0)
  {
    sub_1001109D0(&qword_1011B5AD8);
    sub_100BA8D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5BA0);
  }

  return result;
}

unint64_t sub_100BA8D34()
{
  result = qword_1011B5BA8;
  if (!qword_1011B5BA8)
  {
    sub_1001109D0(&qword_1011B5AD0);
    sub_1001109D0(&qword_1011B5AA0);
    sub_100BA88C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5BA8);
  }

  return result;
}

double Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a6;
  *(&v16 + 1) = a7;
  *&v17 = a8;
  *(&v17 + 1) = a9;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  *&v18[4] = a6;
  *&v18[5] = a7;
  *&v18[6] = a8;
  *&v18[7] = a9;
  sub_100BA8E88(&v14, &v13);
  sub_100BA8EC0(v18);
  v10 = v15;
  *a5 = v14;
  a5[1] = v10;
  result = *&v16;
  v12 = v17;
  a5[2] = v16;
  a5[3] = v12;
  return result;
}

char *sub_100BA8EF0(void *a1)
{
  v2 = v1;
  [a1 setType:*v1];
  v4 = *(v1 + 2);
  if (v4)
  {
    sub_100B37FCC(v4);
    sub_100009F78(0, &qword_1011B3A00);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  [a1 setLocations:v5.super.isa];

  isa = *(v2 + 3);
  if (isa)
  {
    sub_100009F78(0, &qword_1011B4948);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [a1 setInterpolations:isa];

  v7 = *(v2 + 1);
  if (!v7)
  {
    goto LABEL_19;
  }

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_18:
    v7 = Array._bridgeToObjectiveC()().super.isa;

LABEL_19:
    [a1 setColors:v7];

    [a1 setStartPoint:{v2[4], v2[5]}];
    return [a1 setEndPoint:{v2[6], v2[7]}];
  }

  v20 = _swiftEmptyArrayStorage;
  result = sub_100BFA364(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v20;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v7 + v10 + 4);
      }

      v13 = v12;
      v14 = [v12 CGColor];
      _s3__C7CGColorCMa_1(0);
      v19 = v15;

      *&v18 = v14;
      v20 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_100BFA364((v16 > 1), v17 + 1, 1);
        v11 = v20;
      }

      ++v10;
      v11[2] = v17 + 1;
      sub_100016270(&v18, &v11[4 * v17 + 4]);
    }

    while (v8 != v10);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id Gradient.View.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_100BA8E88(a1, v14);
  v13.receiver = v4;
  v13.super_class = v2;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_100BA8EF0(v11);

  sub_100BA8EC0(a1);
  return v9;
}

id Gradient.View.init(configuration:)(_OWORD *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v6;
  v7 = a1[3];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v7;
  sub_100BA8E88(a1, v13);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  sub_100BA8EF0(v10);

  sub_100BA8EC0(a1);
  return v8;
}

double Gradient.View.typedConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v10 = *v3;
  v11 = v4;
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  sub_100BA8E88(&v10, v9);
  v6 = v11;
  *a1 = v10;
  a1[1] = v6;
  result = *&v12;
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  return result;
}

uint64_t Gradient.View.typedConfiguration.setter(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v19[0] = *v3;
  v19[1] = v4;
  v5 = *(v3 + 3);
  v20 = *(v3 + 2);
  v21 = v5;
  v22[0] = v19[0];
  v22[1] = v4;
  v22[2] = v20;
  v22[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v6;
  v7 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v7;
  sub_100BA8E88(v19, v18);
  sub_100BA8E88(a1, v18);
  sub_100BA8EC0(v22);
  v8 = *(v3 + 1);
  v18[0] = *v3;
  v18[1] = v8;
  v9 = *(v3 + 3);
  v18[2] = *(v3 + 2);
  v18[3] = v9;
  sub_100BA8E88(v18, v17);
  v10 = _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19);
  sub_100BA8EC0(v18);
  if (v10)
  {
    sub_100BA8EC0(v19);
  }

  else
  {
    v11 = *(v3 + 1);
    v17[0] = *v3;
    v17[1] = v11;
    v12 = *(v3 + 3);
    v17[2] = *(v3 + 2);
    v17[3] = v12;
    sub_100BA8E88(v17, v16);
    v13 = [v1 layer];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    sub_100BA8EF0(v14);
    sub_100BA8EC0(v19);
    sub_100BA8EC0(a1);

    a1 = v17;
  }

  return sub_100BA8EC0(a1);
}

void (*Gradient.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_100BA8E88(v4, (v4 + 16));
  return sub_100BA970C;
}

void sub_100BA970C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  if (a2)
  {
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    sub_100BA8E88((v2 + 4), (v2 + 20));
    Gradient.View.typedConfiguration.setter(v2 + 4);
    v5 = v2[13];
    v2[16] = v2[12];
    v2[17] = v5;
    v6 = v2[15];
    v2[18] = v2[14];
    v2[19] = v6;
    sub_100BA8EC0((v2 + 16));
  }

  else
  {
    v2[8] = v2[12];
    v2[9] = v3;
    v7 = v2[15];
    v2[10] = v2[14];
    v2[11] = v7;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  free(v2);
}