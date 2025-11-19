unint64_t sub_10013E890()
{
  result = qword_100220B70;
  if (!qword_100220B70)
  {
    sub_10000B3DC(&qword_100220B58);
    sub_10013E948();
    sub_10000D1EC(&qword_100220B88, &qword_100220B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220B70);
  }

  return result;
}

unint64_t sub_10013E948()
{
  result = qword_100220B78;
  if (!qword_100220B78)
  {
    sub_10000B3DC(&qword_100220B50);
    sub_10000D1EC(&qword_100220B80, &qword_100220B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220B78);
  }

  return result;
}

unint64_t sub_10013EA00()
{
  result = qword_100220BD8;
  if (!qword_100220BD8)
  {
    sub_10000B3DC(&qword_100220BA0);
    sub_10013EA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220BD8);
  }

  return result;
}

unint64_t sub_10013EA8C()
{
  result = qword_100220BE0;
  if (!qword_100220BE0)
  {
    sub_10000B3DC(&qword_100220B98);
    sub_10000D1EC(&qword_100220BE8, &qword_100220BF0);
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220BE0);
  }

  return result;
}

uint64_t sub_10013EB70()
{

  sub_100027EB0(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_10013EBC0(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100009F70(&qword_100220C38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = sub_100009F70(&qword_100220C40);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10013ED08()
{

  return swift_deallocObject();
}

uint64_t sub_10013ED48(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10013ED54()
{
  result = qword_100220C10;
  if (!qword_100220C10)
  {
    sub_10000B3DC(&qword_100220C00);
    sub_10013EDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220C10);
  }

  return result;
}

unint64_t sub_10013EDE0()
{
  result = qword_100220C18;
  if (!qword_100220C18)
  {
    sub_10000B3DC(&qword_100220C20);
    sub_10000B3DC(&qword_10021C948);
    type metadata accessor for CircularProgressViewStyle();
    sub_10000D1EC(&qword_10021C940, &qword_10021C948);
    sub_10013F0E4(&qword_100220C28, type metadata accessor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220C18);
  }

  return result;
}

unint64_t sub_10013EF2C()
{
  result = qword_100220C30;
  if (!qword_100220C30)
  {
    sub_10000B3DC(&qword_100220BB8);
    sub_10013ED54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220C30);
  }

  return result;
}

uint64_t sub_10013EFB0(uint64_t a1)
{
  v2 = type metadata accessor for CircularProgressViewStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013F028()
{
  result = qword_100220C70;
  if (!qword_100220C70)
  {
    sub_10000B3DC(&qword_100220B60);
    sub_10013E890();
    sub_10013F0E4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220C70);
  }

  return result;
}

uint64_t sub_10013F0E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000D58C(a3, v25 - v10, &qword_10021F7D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D52C(v11, &qword_10021F7D0);
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

      sub_10000D52C(a3, &qword_10021F7D0);

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

  sub_10000D52C(a3, &qword_10021F7D0);
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

uint64_t sub_10013F42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000D58C(a3, v25 - v10, &qword_10021F7D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D52C(v11, &qword_10021F7D0);
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

      sub_100009F70(&qword_100220DD0);
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

      sub_10000D52C(a3, &qword_10021F7D0);

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

  sub_10000D52C(a3, &qword_10021F7D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100009F70(&qword_100220DD0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10013F740()
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10013F7E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_10013F890()
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10013F95C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10000D58C(v1 + 24, a1, &qword_10021A650);
}

uint64_t sub_10013FA2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10000D58C(v3 + 24, a2, &qword_10021A650);
}

uint64_t sub_10013FAFC(uint64_t a1)
{
  sub_10000D58C(a1, v2, &qword_10021A650);
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000D52C(v2, &qword_10021A650);
}

uint64_t sub_10013FC04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100144280(a2, a1 + 24);
  return swift_endAccess();
}

uint64_t sub_10013FC68()
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

uint64_t sub_10013FD08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_10013FDB0(uint64_t result)
{
  if (*(v1 + 64) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10013FEB8()
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10013FF5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
}

uint64_t sub_100140008(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 72))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      sub_1001441B8(&qword_100220DA0, &type metadata accessor for AnyCancellable);

      v4 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 72) = a1;
}

uint64_t sub_1001401B0()
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100140254@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 80);
}

uint64_t sub_100140300(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 80))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      sub_1001441B8(&qword_100220DA0, &type metadata accessor for AnyCancellable);

      v4 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 80) = a1;
}

uint64_t sub_1001404A8()
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10014054C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);
}

uint64_t sub_1001405F8(uint64_t a1)
{
  if (!*(v1 + 88))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 88) = a1;
}

uint64_t sub_100140780()
{
  v1 = type metadata accessor for MusicPlayer.Queue.Entry();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_100220DA8);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  swift_getKeyPath();
  v17[0] = v0;
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10000D58C(v0 + 24, v18, &qword_10021A650);
  v8 = v19;
  if (v19)
  {
    v9 = v20;
    v10 = sub_100028124(v18, v19);
    v11 = *(v8 - 8);
    __chkstk_darwin(v10);
    v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    sub_10000D52C(v18, &qword_10021A650);
    v14 = (*(v9 + 96))(v8, v9);
    LOBYTE(v9) = v15;
    (*(v11 + 8))(v13, v8);
    if ((v9 & 1) == 0)
    {
      return v14;
    }
  }

  else
  {
    sub_10000D52C(v18, &qword_10021A650);
  }

  type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  dispatch thunk of SystemMusicPlayer.queue.getter();

  dispatch thunk of MusicPlayer.Queue.currentEntry.getter();

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_10000D52C(v7, &qword_100220DA8);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_10000D52C(v7, &qword_100220DA8);
    v14 = MusicPlayer.Queue.Entry.endTime.getter();
    (*(v2 + 8))(v4, v1);
  }

  return v14;
}

uint64_t sub_100140B38()
{
  *&result = COERCE_DOUBLE(sub_100140780());
  if ((v1 & 1) == 0 && *&result > 0.0 && ((~result & 0x7FF0000000000000) != 0 || (result & 0xFFFFFFFFFFFFFLL) == 0))
  {
    *&result = COERCE_DOUBLE(sub_100140BF4());
    if (result)
    {
      type metadata accessor for SystemMusicPlayer();
      static SystemMusicPlayer.shared.getter();
      dispatch thunk of MusicPlayer.playbackTime.getter();
      *&result = COERCE_DOUBLE();
    }
  }

  return result;
}

uint64_t sub_100140BF4()
{
  v1 = type metadata accessor for MusicPlayer.Queue.Entry();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_100220DA8);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - v6;
  v8 = sub_100009F70(&qword_100220DB0);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  dispatch thunk of SystemMusicPlayer.queue.getter();

  dispatch thunk of MusicPlayer.Queue.currentEntry.getter();

  if ((*(v2 + 48))(v7, 1, v1))
  {
    v11 = &qword_100220DA8;
    v12 = v7;
LABEL_5:
    sub_10000D52C(v12, v11);
    v15 = 0;
    v16 = 0;
    goto LABEL_6;
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_10000D52C(v7, &qword_100220DA8);
  MusicPlayer.Queue.Entry.item.getter();
  (*(v2 + 8))(v4, v1);
  v13 = type metadata accessor for MusicPlayer.Queue.Entry.Item();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    v11 = &qword_100220DB0;
    v12 = v10;
    goto LABEL_5;
  }

  v15 = MusicPlayer.Queue.Entry.Item.id.getter();
  v16 = v27;
  (*(v14 + 8))(v10, v13);
LABEL_6:
  swift_getKeyPath();
  v29[0] = v0;
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10000D58C(v0 + 24, v30, &qword_10021A650);
  v17 = v31;
  if (!v31)
  {
    sub_10000D52C(v30, &qword_10021A650);
    if (!v16)
    {
      goto LABEL_15;
    }

LABEL_13:
    v26 = 0;
LABEL_20:

    return v26 & 1;
  }

  v18 = v32;
  v19 = sub_100028124(v30, v31);
  v20 = *(v17 - 8);
  __chkstk_darwin(v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22);
  sub_10000D52C(v30, &qword_10021A650);
  v23 = (*(v18 + 88))(v17, v18);
  v25 = v24;
  (*(v20 + 8))(v22, v17);
  if (v25)
  {
    if (v16)
    {
      if (v23 == v15 && v16 == v25)
      {
        v26 = 1;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_20;
  }

  if (v16)
  {
    goto LABEL_13;
  }

LABEL_15:
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_100141108()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100141194();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100141194()
{
  v29 = *v0;
  v1 = sub_100009F70(&qword_100220D68);
  __chkstk_darwin(v1 - 8);
  v3 = v22 - v2;
  v26 = sub_100009F70(&qword_100220D70);
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = v22 - v4;
  sub_100142978();
  swift_getKeyPath();
  v31 = v0;
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[9])
  {

    AnyCancellable.cancel()();
  }

  swift_getKeyPath();
  v31 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[10])
  {

    AnyCancellable.cancel()();
  }

  v22[4] = type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  MusicPlayer.state.getter();

  v6 = dispatch thunk of MusicPlayer.State.objectWillChange.getter();

  v31 = v6;
  v27 = objc_opt_self();
  v7 = [v27 mainRunLoop];
  v30 = v7;
  v24 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v8 = *(v24 - 8);
  v23 = *(v8 + 56);
  v25 = v8 + 56;
  v23(v3, 1, 1, v24);
  v22[3] = sub_100009F70(&qword_100220D78);
  v22[2] = sub_1001440C0();
  v22[1] = sub_10000D1EC(&qword_100220D88, &qword_100220D78);
  sub_1001441B8(&qword_100220D90, sub_1001440C0);
  Publisher.receive<A>(on:options:)();
  sub_10000D52C(v3, &qword_100220D68);

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10014410C;
  *(v10 + 24) = v9;
  v22[0] = sub_10000D1EC(&qword_100220D98, &qword_100220D70);
  v11 = v26;
  v12 = Publisher<>.sink(receiveValue:)();

  v13 = *(v28 + 8);
  v13(v5, v11);
  sub_100140008(v12);
  static SystemMusicPlayer.shared.getter();
  dispatch thunk of SystemMusicPlayer.queue.getter();

  v14 = dispatch thunk of MusicPlayer.Queue.objectWillChange.getter();

  v31 = v14;
  v15 = [v27 mainRunLoop];
  v30 = v15;
  v23(v3, 1, 1, v24);
  Publisher.receive<A>(on:options:)();
  sub_10000D52C(v3, &qword_100220D68);

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = v29;
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100144174;
  *(v19 + 24) = v17;
  v20 = Publisher<>.sink(receiveValue:)();

  v13(v5, v11);
  return sub_100140300(v20);
}

uint64_t sub_1001417AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000D58C(a3, v25 - v10, &qword_10021F7D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D52C(v11, &qword_10021F7D0);
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

void sub_100141A6C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for MusicPlayer.Queue.Entry();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_100009F70(&qword_100220DA8);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v37 = v14;
    v38 = v11;
    v39 = v4;
    v16 = a1 + 32;
    KeyPath = swift_getKeyPath();
    v36 = &v35;
    __chkstk_darwin(KeyPath);
    *(&v35 - 2) = v2;
    *(&v35 - 1) = a1;
    v40 = OBJC_IVAR____TtC15ShazamEventsApp16AppleMusicPlayer___observationRegistrar;
    v43[0] = v2;
    v18 = sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10005DA94(v16, v43);
    v19 = swift_getKeyPath();
    v36 = &v35;
    __chkstk_darwin(v19);
    *(&v35 - 2) = v2;
    *(&v35 - 1) = v43;
    v41[0] = v2;
    v35 = v18;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10000D52C(v43, &qword_10021A650);
    if (*(v2 + 64) != 1)
    {
      v20 = swift_getKeyPath();
      __chkstk_darwin(v20);
      *(&v35 - 2) = v2;
      *(&v35 - 8) = 1;
      v43[0] = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v42 = &_swiftEmptyArrayStorage;
    sub_100144498(0, v15, 0);
    v21 = v42;
    do
    {
      sub_10005DA94(v16, v43);
      v22 = v44;
      v23 = v45;
      v24 = sub_100028124(v43, v44);
      v41[3] = v22;
      v41[4] = *(v23 + 8);
      v25 = sub_100043D3C(v41);
      (*(*(v22 - 8) + 16))(v25, v24, v22);
      MusicPlayer.Queue.Entry.init(_:startTime:endTime:)();
      sub_100021498(v43);
      v42 = v21;
      v27 = v21[2];
      v26 = v21[3];
      if (v27 >= v26 >> 1)
      {
        sub_100144498(v26 > 1, v27 + 1, 1);
        v21 = v42;
      }

      v21[2] = v27 + 1;
      (*(v6 + 32))(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v8, v5);
      v16 += 40;
      --v15;
    }

    while (v15);
    type metadata accessor for SystemMusicPlayer();
    static SystemMusicPlayer.shared.getter();
    (*(v6 + 56))(v37, 1, 1, v5);
    v43[0] = v21;
    type metadata accessor for MusicPlayer.Queue();
    swift_allocObject();
    sub_100009F70(&qword_100220DB8);
    sub_10000D1EC(&qword_100220DC0, &qword_100220DB8);
    MusicPlayer.Queue.init<A>(_:startingAt:)();
    dispatch thunk of SystemMusicPlayer.queue.setter();

    v28 = type metadata accessor for TaskPriority();
    v29 = v38;
    (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v39;
    sub_10013F12C(0, 0, v29, &unk_1001B99D8, v30);
  }

  else
  {
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10001FDF4(v31, qword_100230610);
    v40 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v40, v32, "Cannot play empty playlist.", v33, 2u);
    }

    v34 = v40;
  }
}

void sub_100142178()
{
  v1 = *v0;
  v2 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  if (sub_100140BF4())
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v1;
    sub_10013F12C(0, 0, v4, &unk_1001B99B8, v6);
  }

  else
  {
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10001FDF4(v7, qword_100230610);
    v12 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v12, v8, "Player asked to resume song but current song not in system player queue.", v9, 2u);
    }

    v10 = v12;
  }
}

void sub_100142380()
{
  if (sub_100140BF4())
  {
    type metadata accessor for SystemMusicPlayer();
    static SystemMusicPlayer.shared.getter();
    dispatch thunk of MusicPlayer.pause()();
  }

  else
  {
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10001FDF4(v0, qword_100230610);
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v1, "Failed to pause song. Current song not in System player..", v2, 2u);
    }
  }
}

uint64_t sub_1001424C8()
{
  type metadata accessor for SystemMusicPlayer();
  *(v0 + 48) = static SystemMusicPlayer.shared.getter();
  v3 = (&async function pointer to dispatch thunk of MusicPlayer.play() + async function pointer to dispatch thunk of MusicPlayer.play());
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100142580;

  return v3();
}

uint64_t sub_100142580()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1001427B0;
  }

  else
  {

    v2 = sub_10014269C;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10014269C()
{
  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Song playback started.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001427B0()
{
  v12 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10005D4E8(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to play song with error %s", v4, 0xCu);
    sub_100021498(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100142978()
{
  v1 = type metadata accessor for MusicPlayer.PlaybackStatus();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100140BF4();
  if ((result & 1) == 0)
  {
    if (!*(v0 + 64))
    {
      return result;
    }

    goto LABEL_7;
  }

  type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  MusicPlayer.state.getter();

  dispatch thunk of MusicPlayer.State.playbackStatus.getter();

  result = (*(v2 + 88))(v4, v1);
  if (result == enum case for MusicPlayer.PlaybackStatus.stopped(_:))
  {
    result = sub_100140B38();
    if (v6 > 0.0 && *(v0 + 64))
    {
LABEL_7:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v13 - 2) = v0;
      *(&v13 - 8) = 0;
      v14 = v0;
      sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
LABEL_8:
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (result == enum case for MusicPlayer.PlaybackStatus.playing(_:))
  {
    if (*(v0 + 64) != 2)
    {
      v8 = swift_getKeyPath();
      __chkstk_darwin(v8);
      *(&v13 - 2) = v0;
      *(&v13 - 8) = 2;
      v14 = v0;
      sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
      goto LABEL_8;
    }
  }

  else
  {
    if (result != enum case for MusicPlayer.PlaybackStatus.paused(_:) && result != enum case for MusicPlayer.PlaybackStatus.interrupted(_:))
    {
      return (*(v2 + 8))(v4, v1);
    }

    if (*(v0 + 64) != 3)
    {
      v10 = swift_getKeyPath();
      __chkstk_darwin(v10);
      *(&v13 - 2) = v0;
      *(&v13 - 8) = 3;
      v14 = v0;
      sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    static SystemMusicPlayer.shared.getter();
    dispatch thunk of MusicPlayer.playbackTime.getter();
    v12 = v11;

    if (v12 == 0.0 && *(v0 + 64))
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_100142EC4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100142978();
  }

  return result;
}

uint64_t sub_100142F1C()
{
  v0 = type metadata accessor for MusicPlayer.Queue.Entry();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009F70(&qword_100220DA8);
  __chkstk_darwin(v4 - 8);
  v6 = v37 - v5;
  v7 = sub_100009F70(&qword_100220DB0);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if (sub_100140BF4())
    {
    }

    type metadata accessor for SystemMusicPlayer();
    static SystemMusicPlayer.shared.getter();
    dispatch thunk of SystemMusicPlayer.queue.getter();

    dispatch thunk of MusicPlayer.Queue.currentEntry.getter();

    if ((*(v1 + 48))(v6, 1, v0))
    {
      sub_10000D52C(v6, &qword_100220DA8);
      goto LABEL_17;
    }

    (*(v1 + 16))(v3, v6, v0);
    sub_10000D52C(v6, &qword_100220DA8);
    MusicPlayer.Queue.Entry.item.getter();
    (*(v1 + 8))(v3, v0);
    v12 = type metadata accessor for MusicPlayer.Queue.Entry.Item();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_10000D52C(v9, &qword_100220DB0);
      goto LABEL_17;
    }

    v14 = MusicPlayer.Queue.Entry.Item.id.getter();
    v16 = v15;
    (*(v13 + 8))(v9, v12);
    swift_getKeyPath();
    v17 = OBJC_IVAR____TtC15ShazamEventsApp16AppleMusicPlayer___observationRegistrar;
    *&v38 = v11;
    v18 = sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
    v37[2] = v17;
    v37[1] = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v11 + 16);
    v20 = *(v19 + 16);

    if (!v20)
    {
LABEL_16:

LABEL_17:
      if (qword_100218470 != -1)
      {
LABEL_32:
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10001FDF4(v26, qword_100230610);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "System player finished playing queued songs.", v29, 2u);
      }

      v42 = 0;
      memset(v41, 0, sizeof(v41));
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v11;
      v37[-1] = v41;
      *&v40[0] = v11;
      sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_10000D52C(v41, &qword_10021A650);
      if (*(v11 + 64))
      {
        v31 = swift_getKeyPath();
        __chkstk_darwin(v31);
        v37[-2] = v11;
        LOBYTE(v37[-1]) = 0;
        *&v41[0] = v11;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    v21 = 0;
    v22 = v19 + 32;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      sub_10005DA94(v22, &v38);
      sub_100028124(&v38, v39);
      if (dispatch thunk of MusicItem.id.getter() == v14 && v23 == v16)
      {

        goto LABEL_26;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        break;
      }

      ++v21;
      sub_100021498(&v38);
      v22 += 40;
      if (v20 == v21)
      {
        goto LABEL_16;
      }
    }

LABEL_26:

    sub_100071318(&v38, v40);
    sub_100071318(v40, v41);
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10001FDF4(v32, qword_100230610);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "System player started playing next queued song.", v35, 2u);
    }

    sub_10005DA94(v41, v40);
    v36 = swift_getKeyPath();
    __chkstk_darwin(v36);
    v37[-2] = v11;
    v37[-1] = v40;
    *&v38 = v11;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100021498(v41);

    return sub_10000D52C(v40, &qword_10021A650);
  }

  return result;
}

uint64_t sub_100143730()
{

  sub_10000D52C(v0 + 24, &qword_10021A650);

  v1 = OBJC_IVAR____TtC15ShazamEventsApp16AppleMusicPlayer___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleMusicPlayer()
{
  result = qword_100220CA8;
  if (!qword_100220CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100143858()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100143918()
{
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001439BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10000D58C(v3 + 24, a1, &qword_10021A650);
}

uint64_t sub_100143AB0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 64);
}

uint64_t sub_100143BBC()
{
  v0 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_1001417AC(0, 0, v2, &unk_1001B9898, v5);
  sub_10000D52C(v2, &qword_10021F7D0);
  return sub_1001405F8(v6);
}

uint64_t sub_100143D0C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1001441B8(&qword_100220D60, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 88))
  {

    Task.cancel()();
  }

  return result;
}

uint64_t sub_100143DFC()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
}

uint64_t sub_100143E38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100143E70()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100143EB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D890;

  return sub_1001410E8(a1, v4, v5, v6);
}

uint64_t sub_100143F64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000214E4;

  return sub_1000A8094(a1, v4);
}

uint64_t sub_10014401C()
{

  return swift_deallocObject();
}

unint64_t sub_1001440C0()
{
  result = qword_100220D80;
  if (!qword_100220D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100220D80);
  }

  return result;
}

uint64_t sub_10014413C()
{

  return swift_deallocObject();
}

uint64_t sub_10014417C()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_1001441B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100144280(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A650);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001442F0()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t sub_10014432C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100144364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000214E4;

  return sub_1001424AC();
}

uint64_t sub_100144418()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

size_t sub_100144454(size_t a1, int64_t a2, char a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DF8, &unk_1001B9A28, &type metadata accessor for Art);
  *v3 = result;
  return result;
}

size_t sub_100144498(size_t a1, int64_t a2, char a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DC8, &unk_1001B99E0, &type metadata accessor for MusicPlayer.Queue.Entry);
  *v3 = result;
  return result;
}

char *sub_1001444DC(char *a1, int64_t a2, char a3)
{
  result = sub_10014464C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001444FC(size_t a1, int64_t a2, char a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DE0, &unk_1001B9A10, &type metadata accessor for Dance);
  *v3 = result;
  return result;
}

size_t sub_100144540(size_t a1, int64_t a2, char a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DF0, &unk_1001B9A20, &type metadata accessor for Music);
  *v3 = result;
  return result;
}

size_t sub_100144584(size_t a1, int64_t a2, char a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DE8, &unk_1001B9A18, &type metadata accessor for Sport);
  *v3 = result;
  return result;
}

size_t sub_1001445C8(size_t a1, int64_t a2, char a3)
{
  result = sub_10014488C(a1, a2, a3, *v3, &qword_100220DD8, &unk_1001B9A08, &type metadata accessor for Theater);
  *v3 = result;
  return result;
}

char *sub_10014460C(char *a1, int64_t a2, char a3)
{
  result = sub_100144758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10014462C(char *a1, int64_t a2, char a3)
{
  result = sub_100144A68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10014464C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009F70(qword_100220E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100144758(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009F70(&qword_10021B768);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10014488C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009F70(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100144A68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009F70(&qword_100220E08);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100144B74(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100144C68;

  return v5(v2 + 32);
}

uint64_t sub_100144C68()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100144D7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000214E4;

  return sub_100144B74(a1, v4);
}

uint64_t sub_100144E34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D890;

  return sub_100144B74(a1, v4);
}

uint64_t sub_100144F58@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

double sub_100144FAC@<D0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PromotionalAssetsEntryViewModel();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  *&v17 = a2;
  *(&v17 + 1) = a3;
  v18 = a4;
  v11 = type metadata accessor for PromotionalAssetsEntryView();
  v12 = v11[13];
  *(a5 + v12) = swift_getKeyPath();
  sub_100009F70(&qword_100219718);
  swift_storeEnumTagMultiPayload();
  v13 = v11[14];
  *(a5 + v13) = swift_getKeyPath();
  sub_100009F70(&qword_100219720);
  swift_storeEnumTagMultiPayload();
  v14 = a5 + v11[15];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a5 + v11[16];
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  result = a2;
  *v15 = v17;
  *(v15 + 16) = v18;
  return result;
}

uint64_t sub_100145150@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

void sub_1001451A4()
{
  type metadata accessor for PromotionalAssetsEntryViewModel();
  if (v0 <= 0x3F)
  {
    sub_10014B58C(319, &qword_1002198B8, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10014B58C(319, &qword_10021BD18, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100027AA4();
        if (v3 <= 0x3F)
        {
          sub_10014B58C(319, &qword_100220E98, type metadata accessor for CGSize, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10014530C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v4 = *(v32 - 8);
  v5 = *(v4 + 84);
  v30 = *(a3 + 24);
  v6 = *(v30 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v31 = v8;
  if (v8 <= v5)
  {
    v8 = *(v4 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v33 = *(type metadata accessor for ColorScheme() - 8);
  v10 = *(v33 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v34 = v10;
  v11 = *(type metadata accessor for ContentSizeCategory() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  if (!v7)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v4 + 64) + v13;
  if (v9 < a2)
  {
    v16 = *(v33 + 80) & 0xF8 | 7;
    v17 = *(v11 + 80) & 0xF8 | 7;
    v18 = ((v12 + ((v34 + v17 + ((v16 + (((((v15 & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v16) + 1) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 24;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v9 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v18);
      if (v23)
      {
LABEL_31:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          LODWORD(v19) = *a1;
        }

        return v9 + (v19 | v24) + 1;
      }
    }
  }

  if (v5 == v9)
  {
    v26 = *(v4 + 48);

    return v26(a1, v5, v32);
  }

  v27 = (a1 + v15) & ~v13;
  if (v31 == v9)
  {
    if (v7 >= 2)
    {
      v29 = (*(v6 + 48))(v27, v7, v30);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(((v27 + v14) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void sub_10014566C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v34 = *(a4 + 16);
  v4 = *(v34 - 8);
  v33 = v4;
  v5 = *(v4 + 84);
  v31 = *(a4 + 24);
  v6 = *(v31 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v32 = v8;
  if (v8 <= v5)
  {
    v8 = *(v4 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(type metadata accessor for ColorScheme() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = type metadata accessor for ContentSizeCategory();
  v13 = v7;
  v14 = 0;
  v15 = *(v12 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v6 + 80);
  v18 = *(v4 + 64) + v17;
  v19 = *(v6 + 64);
  if (!v13)
  {
    ++v19;
  }

  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = *(v15 + 80) & 0xF8 | 7;
  v22 = ((v16 + ((v11 + v21 + ((v20 + (((((v18 & ~v17) + v19) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v20) + 1) & ~v21) + 24) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 < a3)
  {
    if (((v16 + ((v11 + v21 + ((v20 + (((((v18 & ~v17) + v19) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 32) & ~v20) + 1) & ~v21) + 24) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v23 = a3 - v9 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v14 = v24;
    }

    else
    {
      v14 = 0;
    }
  }

  v25 = a2;
  if (a2 > v9)
  {
    if (v22)
    {
      v26 = 1;
    }

    else
    {
      v26 = a2 - v9;
    }

    if (v22)
    {
      bzero(a1, v22);
      *a1 = ~v9 + a2;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v22) = v26;
      }

      else
      {
        *(a1 + v22) = v26;
      }
    }

    else if (v14)
    {
      *(a1 + v22) = v26;
    }

    return;
  }

  v27 = a1;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v22) = 0;
  }

  else if (v14)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v5 == v9)
  {
    v28 = v34;
    v29 = *(v33 + 56);
    v13 = v5;
  }

  else
  {
    v27 = ((a1 + v18) & ~v17);
    if (v32 != v9)
    {
      v30 = ((v27 + v19) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        v30[3] = 0;
        v30[4] = 0;
        v30[1] = a2 & 0x7FFFFFFF;
        v30[2] = 0;
      }

      else
      {
        v30[2] = a2 - 1;
      }

      return;
    }

    v29 = *(v6 + 56);
    v25 = a2 + 1;
    v28 = v31;
  }

  v29(v27, v25, v13, v28);
}

double sub_100145A30()
{
  sub_100009F70(&qword_10021F868);
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_100145AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = sub_100009F70(&qword_100220EA0);
  sub_100145C80(v2, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a2 + *(v5 + 44));
  v6 = a2 + *(sub_100009F70(&qword_100220EA8) + 36);
  sub_100148D58(a1, v6);
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = (v6 + *(sub_100009F70(&qword_100220EB0) + 36));
  *v10 = v7;
  v10[1] = v9;
  if (qword_100218428 != -1)
  {
    swift_once();
  }

  v11 = qword_1002305F8;
  v12 = (a2 + *(sub_100009F70(&qword_100220EB8) + 36));
  v13 = *(type metadata accessor for RoundedRectangle() + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = v11;
  v12[1] = v11;
  result = sub_100009F70(&qword_100218928);
  *(v12 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100145C80@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a5;
  v102 = a4;
  *(&v101 + 1) = a3;
  *&v101 = a2;
  v100 = a1;
  v99 = a6;
  v11 = sub_100009F70(&qword_100220ED8);
  __chkstk_darwin(v11 - 8);
  v91 = (&v85 - v12);
  v90 = sub_100009F70(&qword_100220EE0);
  __chkstk_darwin(v90);
  v96 = &v85 - v13;
  v95 = sub_100009F70(&qword_100220EE8);
  v14 = __chkstk_darwin(v95);
  v98 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v94 = &v85 - v17;
  __chkstk_darwin(v16);
  v97 = &v85 - v18;
  v19 = type metadata accessor for RoundedRectangle();
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = (&v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_100009F70(&qword_10021BE10);
  __chkstk_darwin(v23 - 8);
  v25 = &v85 - v24;
  v26 = sub_100009F70(&qword_100220EF0);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v29 = &v85 - v28;
  v86 = sub_100009F70(&qword_100220EF8);
  __chkstk_darwin(v86);
  v89 = &v85 - v30;
  v88 = sub_100009F70(&qword_100220F00);
  v31 = __chkstk_darwin(v88);
  v93 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v87 = &v85 - v34;
  __chkstk_darwin(v33);
  v92 = &v85 - v35;
  sub_1001466FC(a1, a2, a3, a4, a5, v29);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = &v29[*(sub_100009F70(&qword_100220F08) + 36)];
  v37 = v104;
  *v36 = v103;
  *(v36 + 1) = v37;
  *(v36 + 2) = v105;
  *&v29[*(sub_100009F70(&qword_100220F10) + 36)] = 0;
  v38 = 6.0;
  if (static Solarium.isEnabled.getter())
  {
    v39 = 10.0;
  }

  else
  {
    v39 = 6.0;
  }

  v40 = &v29[*(v27 + 44)];
  v41 = *(v20 + 28);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  v44 = *(*(v43 - 8) + 104);
  v44(v40 + v41, v42, v43);
  *v40 = v39;
  v40[1] = v39;
  *(v40 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
  if (static Solarium.isEnabled.getter())
  {
    v38 = 10.0;
  }

  v44(v22 + *(v20 + 28), v42, v43);
  v45 = v85;
  *v22 = v38;
  v22[1] = v38;
  v109 = v101;
  *&v110 = v102;
  *(&v110 + 1) = v45;
  if (*(v100 + *(type metadata accessor for PromotionalAssetsEntryViewModel() + 56)))
  {
    static Color.white.getter();
  }

  else
  {
    static Color.black.getter();
  }

  v46 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_10014943C(v22, v25, &type metadata accessor for RoundedRectangle);
  v47 = &v25[*(sub_100009F70(&qword_10021BE20) + 36)];
  v48 = v107;
  *v47 = v106;
  *(v47 + 1) = v48;
  *(v47 + 4) = v108;
  v49 = sub_100009F70(&qword_10021BE28);
  *&v25[*(v49 + 52)] = v46;
  *&v25[*(v49 + 56)] = 256;
  v50 = static Alignment.center.getter();
  v52 = v51;
  sub_1001494A4(v22, &type metadata accessor for RoundedRectangle);
  v53 = &v25[*(sub_100009F70(&qword_10021BE30) + 36)];
  *v53 = v50;
  v53[1] = v52;
  v54 = static Alignment.center.getter();
  v56 = v55;
  v57 = v89;
  v58 = &v89[*(v86 + 36)];
  sub_10000F618(v25, v58, &qword_10021BE10);
  v59 = (v58 + *(sub_100009F70(&qword_10021BDF8) + 36));
  *v59 = v54;
  v59[1] = v56;
  sub_10000F618(v29, v57, &qword_100220EF0);
  v60 = static Edge.Set.all.getter();
  v61 = v57;
  v62 = v87;
  sub_10000F618(v61, v87, &qword_100220EF8);
  v63 = v62 + *(v88 + 36);
  *v63 = v60;
  *(v63 + 8) = 0u;
  *(v63 + 24) = 0u;
  *(v63 + 40) = 1;
  v64 = v92;
  sub_10000F618(v62, v92, &qword_100220F00);
  v65 = static HorizontalAlignment.leading.getter();
  v66 = v91;
  *v91 = v65;
  *(v66 + 8) = 0x4020000000000000;
  *(v66 + 16) = 0;
  v67 = sub_100009F70(&qword_100220F18);
  sub_100146D58(v100, v101, *(&v101 + 1), v102, v45, v66 + *(v67 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v68 = v96;
  sub_10000F618(v66, v96, &qword_100220ED8);
  v69 = (v68 + *(v90 + 36));
  v70 = v114;
  v69[4] = v113;
  v69[5] = v70;
  v69[6] = v115;
  v71 = v110;
  *v69 = v109;
  v69[1] = v71;
  v72 = v112;
  v69[2] = v111;
  v69[3] = v72;
  sub_100009F70(&qword_100218DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  v74 = static Edge.Set.vertical.getter();
  *(inited + 32) = v74;
  v75 = static Edge.Set.trailing.getter();
  *(inited + 33) = v75;
  v76 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v74)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v75)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  v77 = v94;
  sub_10000F618(v68, v94, &qword_100220EE0);
  v78 = v77 + *(v95 + 36);
  *v78 = v76;
  *(v78 + 8) = 0u;
  *(v78 + 24) = 0u;
  *(v78 + 40) = 1;
  v79 = v97;
  sub_10000F618(v77, v97, &qword_100220EE8);
  v80 = v93;
  sub_10000D58C(v64, v93, &qword_100220F00);
  v81 = v98;
  sub_10000D58C(v79, v98, &qword_100220EE8);
  v82 = v99;
  sub_10000D58C(v80, v99, &qword_100220F00);
  v83 = sub_100009F70(&qword_100220F20);
  sub_10000D58C(v81, v82 + *(v83 + 48), &qword_100220EE8);
  sub_10000D52C(v79, &qword_100220EE8);
  sub_10000D52C(v64, &qword_100220F00);
  sub_10000D52C(v81, &qword_100220EE8);
  return sub_10000D52C(v80, &qword_100220F00);
}

uint64_t sub_1001466FC@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a6;
  v49 = type metadata accessor for PhotoView(0);
  __chkstk_darwin(v49);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100009F70(&qword_100220FC0);
  __chkstk_darwin(v46);
  v48 = (&v40 - v12);
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  v51 = type metadata accessor for URL();
  v20 = *(v51 - 8);
  __chkstk_darwin(v51);
  v40 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v43 = a3;
  v52 = a2;
  v53 = a3;
  v44 = a4;
  v45 = a5;
  v54 = a4;
  v55 = a5;
  result = type metadata accessor for PromotionalAssetsEntryView();
  v23 = a1 + *(result + 60);
  v24 = *v23;
  v25 = *(v23 + 8);
  v47 = a1;
  if (v25 == 1)
  {
    v26 = *&v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v24, 0);
    result = (*(v14 + 8))(v16, v13);
    v26 = v52;
  }

  v28 = v26 * 96.0;
  if (COERCE__INT64(fabs(v26 * 96.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v25)
  {
    v29 = *&v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v24, 0);
    result = (*(v14 + 8))(v16, v13);
    v29 = v52;
  }

  v31 = v51;
  v32 = v29 * 96.0;
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v33 = v32;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v34 = type metadata accessor for PromotionalAssetsEntryViewModel();
  sub_100086D70(v28, v33, v34, v19);
  if ((*(v20 + 48))(v19, 1, v31) == 1)
  {
    sub_10000D52C(v19, qword_100218748);
    v35 = sub_100086AC4(v34);
    *v48 = v35;
    swift_storeEnumTagMultiPayload();
    sub_10014AEEC(&qword_100220FC8, type metadata accessor for PhotoView);
    sub_10014AF34();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v36 = v40;
    (*(v20 + 32))(v40, v19, v31);
    v37 = v41;
    (*(v20 + 16))(v41, v36, v31);
    v38 = sub_100086AC4(v34);
    v39 = v48;
    *(v37 + *(v49 + 20)) = v38;
    sub_10014943C(v37, v39, type metadata accessor for PhotoView);
    swift_storeEnumTagMultiPayload();
    sub_10014AEEC(&qword_100220FC8, type metadata accessor for PhotoView);
    sub_10014AF34();
    _ConditionalContent<>.init(storage:)();
    sub_1001494A4(v37, type metadata accessor for PhotoView);
    return (*(v20 + 8))(v36, v31);
  }
}

uint64_t sub_100146D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v104 = a5;
  v114 = a4;
  v111 = a6;
  v113 = type metadata accessor for ColorScheme();
  v112 = *(v113 - 8);
  v10 = __chkstk_darwin(v113);
  v99 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = &v99 - v12;
  v106 = sub_100009F70(&qword_100220F28);
  v13 = __chkstk_darwin(v106);
  v110 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v99 - v16;
  __chkstk_darwin(v15);
  v109 = &v99 - v18;
  v19 = sub_100009F70(&qword_100220F30);
  __chkstk_darwin(v19 - 8);
  v21 = &v99 - v20;
  v22 = sub_100009F70(&qword_100220F38);
  v23 = v22 - 8;
  v24 = __chkstk_darwin(v22);
  v108 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v99 - v27;
  __chkstk_darwin(v26);
  v30 = &v99 - v29;
  *v21 = static HorizontalAlignment.leading.getter();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v31 = &v21[*(sub_100009F70(&qword_100220F40) + 44)];
  v100 = a1;
  v32 = a2;
  v102 = a2;
  v33 = a2;
  v103 = a3;
  v34 = v114;
  sub_100147720(a1, v33, a3, v114, v6, v31);
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v21, v28, &qword_100220F30);
  v35 = &v28[*(v23 + 44)];
  v36 = v126;
  v37 = v128;
  v38 = v129;
  *(v35 + 4) = v127;
  *(v35 + 5) = v37;
  *(v35 + 6) = v38;
  v39 = v124;
  *v35 = v123;
  *(v35 + 1) = v39;
  *(v35 + 2) = v125;
  *(v35 + 3) = v36;
  v107 = v30;
  sub_10000F618(v28, v30, &qword_100220F38);
  v115 = v32;
  v116 = a3;
  v117 = v34;
  v118 = v6;
  v40 = type metadata accessor for PromotionalAssetsEntryViewModel();

  v41 = Text.init(_:tableName:bundle:comment:)();
  v43 = v42;
  LOBYTE(v6) = v44;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v45 = Text.font(_:)();
  v47 = v46;
  v49 = v48;
  v101 = v50;

  sub_10000D60C(v41, v43, v6 & 1);
  v51 = v100;

  LOBYTE(v6) = *(v51 + *(v40 + 56));
  v115 = v102;
  v116 = v103;
  v117 = v114;
  v118 = v104;
  v114 = type metadata accessor for PromotionalAssetsEntryView();
  v52 = v105;
  sub_100024640(v105);
  if ((v6 & 1) != 0 || (v53 = v112, v54 = v99, v55 = v113, (*(v112 + 104))(v99, enum case for ColorScheme.light(_:), v113), v56 = static ColorScheme.== infix(_:_:)(), v99 = *(v53 + 8), (v99)(v54, v55), (v56 & 1) == 0))
  {
    v115 = static Color.white.getter();
    v104 = Text.foregroundStyle<A>(_:)();
    v103 = v61;
    v59 = v62;
    v102 = v63;
    sub_10000D60C(v45, v47, v49 & 1);

    (*(v112 + 8))(v52, v113);
  }

  else
  {
    v115 = static Color.blue.getter();
    v104 = Text.foregroundStyle<A>(_:)();
    v103 = v57;
    v59 = v58;
    v102 = v60;
    sub_10000D60C(v45, v47, v49 & 1);

    (v99)(v52, v113);
  }

  LODWORD(v113) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v112 = v64;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v59 & 1;
  v120 = v59 & 1;
  v119 = 0;
  v72 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v121 = 0;
  sub_100148B68(v114, &v115);
  v81 = v115;
  v82 = v116;
  v83 = static Alignment.center.getter();
  v85 = v84;
  v122 = v82;
  if (static Solarium.isEnabled.getter())
  {
    v86 = 16.0;
  }

  else
  {
    v86 = 14.0;
  }

  v87 = &v17[*(v106 + 36)];
  v88 = *(type metadata accessor for RoundedRectangle() + 20);
  v89 = enum case for RoundedCornerStyle.continuous(_:);
  v90 = type metadata accessor for RoundedCornerStyle();
  (*(*(v90 - 8) + 104))(v87 + v88, v89, v90);
  *v87 = v86;
  v87[1] = v86;
  *(v87 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
  v91 = v103;
  *v17 = v104;
  *(v17 + 1) = v91;
  v17[16] = v71;
  *(v17 + 3) = v102;
  v17[32] = v113;
  *(v17 + 5) = v112;
  *(v17 + 6) = v66;
  *(v17 + 7) = v68;
  *(v17 + 8) = v70;
  v17[72] = 0;
  v17[80] = v72;
  *(v17 + 11) = v74;
  *(v17 + 12) = v76;
  *(v17 + 13) = v78;
  *(v17 + 14) = v80;
  v17[120] = 0;
  *(v17 + 16) = v81;
  v17[136] = v82;
  *(v17 + 18) = v83;
  *(v17 + 19) = v85;
  v92 = v109;
  sub_10000F618(v17, v109, &qword_100220F28);
  v93 = v107;
  v94 = v108;
  sub_10000D58C(v107, v108, &qword_100220F38);
  v95 = v110;
  sub_10000D58C(v92, v110, &qword_100220F28);
  v96 = v111;
  sub_10000D58C(v94, v111, &qword_100220F38);
  v97 = sub_100009F70(&qword_100220F48);
  sub_10000D58C(v95, v96 + *(v97 + 48), &qword_100220F28);
  sub_10000D52C(v92, &qword_100220F28);
  sub_10000D52C(v93, &qword_100220F38);
  sub_10000D52C(v95, &qword_100220F28);
  return sub_10000D52C(v94, &qword_100220F38);
}

uint64_t sub_100147720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a6;
  v62 = type metadata accessor for ContentSizeCategory();
  v11 = *(v62 - 8);
  v12 = __chkstk_darwin(v62);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v53[-v15];
  v17 = sub_100009F70(&qword_100220F50);
  v18 = __chkstk_darwin(v17 - 8);
  v64 = &v53[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v53[-v20];
  *v21 = static VerticalAlignment.center.getter();
  *(v21 + 1) = 0x4000000000000000;
  v21[16] = 0;
  v22 = sub_100009F70(&qword_100220F58);
  sub_100147CCC(a1, a2, a3, a4, a5, &v21[*(v22 + 44)]);
  v58 = a2;
  v70 = a2;
  v71 = a3;
  v59 = a3;
  v60 = a4;
  v72 = a4;
  v73 = a5;
  v61 = a5;
  v23 = type metadata accessor for PromotionalAssetsEntryViewModel();
  sub_100086C80(v23);
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  v28 = v27;
  if (*(a1 + *(v23 + 56)))
  {
    v70 = static Color.white.getter();
    v56 = Text.foregroundStyle<A>(_:)();
    v55 = v29;
    v54 = v30;
    v57 = v31;
    sub_10000D60C(v24, v26, v28 & 1);
  }

  else
  {
    LODWORD(v70) = static HierarchicalShapeStyle.primary.getter();
    v56 = Text.foregroundStyle<A>(_:)();
    v55 = v32;
    v54 = v33;
    v57 = v34;
    sub_10000D60C(v24, v26, v28 & 1);
  }

  v70 = v58;
  v71 = v59;
  v72 = v60;
  v73 = v61;
  type metadata accessor for PromotionalAssetsEntryView();
  sub_100024890(v16);
  v35 = v62;
  (*(v11 + 104))(v14, enum case for ContentSizeCategory.accessibilityMedium(_:), v62);
  v36 = sub_1000B06A0(v16, v14);
  v37 = *(v11 + 8);
  v37(v14, v35);
  v37(v16, v35);
  if (v36)
  {
    v38 = 3;
  }

  else
  {
    v38 = 2;
  }

  KeyPath = swift_getKeyPath();
  v62 = static Font.subheadline.getter();
  v40 = swift_getKeyPath();
  v61 = v40;
  v41 = v54 & 1;
  v83 = v54 & 1;
  v81 = 0;
  v42 = v64;
  sub_10000D58C(v21, v64, &qword_100220F50);
  v43 = v63;
  sub_10000D58C(v42, v63, &qword_100220F50);
  v44 = v43 + *(sub_100009F70(&qword_100220F60) + 48);
  v45 = v56;
  *&v65 = v56;
  v46 = v55;
  *(&v65 + 1) = v55;
  LOBYTE(v66) = v41;
  *(&v66 + 1) = *v82;
  DWORD1(v66) = *&v82[3];
  v47 = v21;
  v48 = v57;
  *(&v66 + 1) = v57;
  *&v67 = KeyPath;
  *(&v67 + 1) = v38;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = *v80;
  DWORD1(v68) = *&v80[3];
  *(&v68 + 1) = v40;
  v49 = v62;
  v69 = v62;
  *(v44 + 64) = v62;
  v50 = v66;
  *v44 = v65;
  *(v44 + 16) = v50;
  v51 = v68;
  *(v44 + 32) = v67;
  *(v44 + 48) = v51;
  sub_10000D58C(&v65, &v70, &qword_10021C168);
  sub_10000D52C(v47, &qword_100220F50);
  v70 = v45;
  v71 = v46;
  LOBYTE(v72) = v41;
  *(&v72 + 1) = *v82;
  HIDWORD(v72) = *&v82[3];
  v73 = v48;
  v74 = KeyPath;
  v75 = v38;
  v76 = 0;
  *v77 = *v80;
  *&v77[3] = *&v80[3];
  v78 = v61;
  v79 = v49;
  sub_10000D52C(&v70, &qword_10021C168);
  return sub_10000D52C(v42, &qword_100220F50);
}

uint64_t sub_100147CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v111 = a4;
  v112 = a5;
  v109 = a2;
  v110 = a3;
  v108 = a6;
  *&v117 = a2;
  *(&v117 + 1) = a3;
  *&v118 = a4;
  *(&v118 + 1) = a5;
  v7 = type metadata accessor for PromotionalAssetsEntryView();
  v106 = *(v7 - 8);
  v103 = *(v106 + 64);
  __chkstk_darwin(v7);
  v104 = &v82 - v8;
  v101 = type metadata accessor for ColorScheme();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Material();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100009F70(&qword_100220F68);
  __chkstk_darwin(v89);
  v87 = &v82 - v11;
  v90 = sub_100009F70(&qword_100220F70);
  __chkstk_darwin(v90);
  v92 = &v82 - v12;
  v91 = sub_100009F70(&qword_100220F78);
  __chkstk_darwin(v91);
  v95 = &v82 - v13;
  v94 = sub_100009F70(&qword_100220F80);
  v14 = __chkstk_darwin(v94);
  v102 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v93 = &v82 - v17;
  __chkstk_darwin(v16);
  v98 = &v82 - v18;
  v19 = sub_100009F70(&qword_100220F88);
  v20 = v19 - 8;
  v21 = __chkstk_darwin(v19);
  v97 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v82 - v23;
  sub_1001487E4(v7, &v117);
  BYTE3(v118) = 1;
  sub_100009F70(&qword_100220F90);
  sub_10014AA30();
  View.accessibilityHidden(_:)();
  j__swift_release();
  v107 = v7;
  sub_100145A30();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v25 = *(v20 + 44);
  v96 = v24;
  v26 = &v24[v25];
  v27 = v118;
  *v26 = v117;
  *(v26 + 1) = v27;
  *(v26 + 2) = v119;
  v113 = v109;
  v114 = v110;
  v115 = v111;
  v116 = v112;
  v28 = type metadata accessor for PromotionalAssetsEntryViewModel();

  v29 = Text.init(_:tableName:bundle:comment:)();
  v31 = v30;
  v33 = v32;
  v34 = *(v28 + 56);
  v105 = a1;
  v88 = *(a1 + v34);
  if (v88)
  {
    v35 = v82;
    static Material.thin.getter();
    v36 = v84;
    v86 = Text.foregroundStyle<A>(_:)();
    v85 = v37;
    v39 = v38;
    v41 = v40;
    sub_10000D60C(v29, v31, v33 & 1);

    (*(v83 + 8))(v35, v36);
  }

  else
  {
    v42 = [objc_opt_self() secondaryLabelColor];
    v113 = Color.init(uiColor:)();
    v86 = Text.foregroundStyle<A>(_:)();
    v85 = v43;
    v39 = v44;
    v41 = v45;
    sub_10000D60C(v29, v31, v33 & 1);
  }

  static Font.caption2.getter();
  static Font.Weight.bold.getter();
  v46 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v48 = v87;
  v49 = &v87[*(v89 + 36)];
  v50 = *(sub_100009F70(&qword_100219828) + 28);
  v51 = enum case for Text.Case.uppercase(_:);
  v52 = type metadata accessor for Text.Case();
  v53 = *(v52 - 8);
  (*(v53 + 104))(v49 + v50, v51, v52);
  (*(v53 + 56))(v49 + v50, 0, 1, v52);
  *v49 = swift_getKeyPath();
  v54 = v85;
  *v48 = v86;
  *(v48 + 8) = v54;
  *(v48 + 16) = v39 & 1;
  *(v48 + 24) = v41;
  *(v48 + 32) = KeyPath;
  *(v48 + 40) = v46;
  v55 = swift_getKeyPath();
  v56 = v92;
  sub_10000F618(v48, v92, &qword_100220F68);
  v57 = v56 + *(v90 + 36);
  *v57 = v55;
  *(v57 + 8) = 1;
  *(v57 + 16) = 0;
  v58 = swift_getKeyPath();
  if (v88)
  {
    v59 = v100;
    v60 = v99;
    v61 = v101;
    (*(v100 + 104))(v99, enum case for ColorScheme.light(_:), v101);
    v62 = v107;
    v63 = v105;
  }

  else
  {
    v62 = v107;
    v63 = v105;
    v60 = v99;
    sub_100024640(v99);
    v61 = v101;
    v59 = v100;
  }

  v64 = v95;
  v65 = &v95[*(v91 + 36)];
  v66 = sub_100009F70(&qword_1002208B8);
  (*(v59 + 32))(v65 + *(v66 + 28), v60, v61);
  *v65 = v58;
  sub_10000F618(v56, v64, &qword_100220F70);
  v67 = v106;
  v68 = v104;
  (*(v106 + 16))(v104, v63, v62);
  v69 = (*(v67 + 80) + 48) & ~*(v67 + 80);
  v70 = swift_allocObject();
  v71 = v110;
  *(v70 + 2) = v109;
  *(v70 + 3) = v71;
  v72 = v112;
  *(v70 + 4) = v111;
  *(v70 + 5) = v72;
  (*(v67 + 32))(&v70[v69], v68, v62);
  v73 = v93;
  sub_10000F618(v64, v93, &qword_100220F78);
  v74 = (v73 + *(v94 + 36));
  *v74 = sub_10010BFE8;
  v74[1] = 0;
  v74[2] = sub_10014AE18;
  v74[3] = v70;
  v75 = v98;
  sub_10000F618(v73, v98, &qword_100220F80);
  v76 = v96;
  v77 = v97;
  sub_10000D58C(v96, v97, &qword_100220F88);
  v78 = v102;
  sub_10000D58C(v75, v102, &qword_100220F80);
  v79 = v108;
  sub_10000D58C(v77, v108, &qword_100220F88);
  v80 = sub_100009F70(&qword_100220FB0);
  sub_10000D58C(v78, v79 + *(v80 + 48), &qword_100220F80);
  sub_10000D52C(v75, &qword_100220F80);
  sub_10000D52C(v76, &qword_100220F88);
  sub_10000D52C(v78, &qword_100220F80);
  return sub_10000D52C(v77, &qword_100220F88);
}

double sub_1001487E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorScheme();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = *(a1 + 32);
  v29 = *(a1 + 16);
  v30 = v16;
  if ((*(v2 + *(type metadata accessor for PromotionalAssetsEntryViewModel() + 56)) & 1) != 0 || (sub_100024640(v15), (*(v10 + 104))(v13, enum case for ColorScheme.light(_:), v9), v17 = static ColorScheme.== infix(_:_:)(), v18 = *(v10 + 8), v18(v13, v9), v18(v15, v9), (v17 & 1) == 0))
  {
    Image.init(_:bundle:)();
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v20 = Image.resizable(capInsets:resizingMode:)();

    (*(v6 + 8))(v8, v5);
    v25 = v20;
    v26 = 0;
    v27 = 1;
    v28 = 1;
  }

  else
  {
    Image.init(_:bundle:)();
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v19 = Image.resizable(capInsets:resizingMode:)();

    (*(v6 + 8))(v8, v5);
    v25 = v19;
    v26 = 0;
    v27 = 1;
    v28 = 0;
  }

  sub_100009F70(&qword_10021B5E8);
  sub_100079534();
  _ConditionalContent<>.init(storage:)();
  result = *&v29;
  v22 = v30;
  v23 = BYTE2(v30);
  *a2 = v29;
  *(a2 + 16) = v22;
  *(a2 + 18) = v23;
  return result;
}

uint64_t sub_100148B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(a1 + 32);
  v20 = *(a1 + 16);
  v21 = v12;
  if ((*(v2 + *(type metadata accessor for PromotionalAssetsEntryViewModel() + 56)) & 1) != 0 || (sub_100024640(v11), (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5), v13 = static ColorScheme.== infix(_:_:)(), v14 = *(v6 + 8), v14(v9, v5), v14(v11, v5), (v13 & 1) == 0))
  {
    v18 = 11;
    v19 = 1;
  }

  else
  {
    v15 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
    v18 = Color.init(uiColor:)();
    v19 = 0;
  }

  sub_100019990();
  result = _ConditionalContent<>.init(storage:)();
  v17 = BYTE8(v20);
  *a2 = v20;
  *(a2 + 8) = v17;
  return result;
}

uint64_t sub_100148D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v43 = sub_100009F70(&qword_100220EC0);
  __chkstk_darwin(v43);
  v45 = (&v38 - v5);
  v44 = type metadata accessor for PhotoBackgroundView(0);
  __chkstk_darwin(v44);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v38 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v40 = *(a1 + 32);
  v41 = v18;
  v19 = v3 + *(a1 + 60);
  v20 = *v19;
  v21 = *(v19 + 8);
  v42 = v3;
  if (v21 == 1)
  {
    v22 = *&v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v20, 0);
    result = (*(v8 + 8))(v10, v7);
    v22 = *&v47;
  }

  v24 = v22 * 96.0;
  if (COERCE__INT64(fabs(v22 * 96.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v21)
  {
    v25 = *&v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v20, 0);
    result = (*(v8 + 8))(v10, v7);
    v25 = *&v47;
  }

  v27 = v25 * 96.0;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v28 = v27;
  v47 = v41;
  v48 = v40;
  v29 = type metadata accessor for PromotionalAssetsEntryViewModel();
  v30 = v42;
  sub_100086D70(v24, v28, v29, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000D52C(v13, qword_100218748);
    v31 = sub_100086AC4(v29);
    v32 = *(v30 + *(v29 + 56));
    v33 = v45;
    *v45 = v31;
    *(v33 + 8) = v32;
    swift_storeEnumTagMultiPayload();
    sub_10014AEEC(&qword_100220EC8, type metadata accessor for PhotoBackgroundView);
    sub_1001493E8();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v34 = v38;
    (*(v15 + 32))(v38, v13, v14);
    v35 = *(v30 + *(v29 + 56));
    v36 = v39;
    (*(v15 + 16))(v39, v34, v14);
    v37 = v45;
    *(v36 + *(v44 + 20)) = v35;
    sub_10014943C(v36, v37, type metadata accessor for PhotoBackgroundView);
    swift_storeEnumTagMultiPayload();
    sub_10014AEEC(&qword_100220EC8, type metadata accessor for PhotoBackgroundView);
    sub_1001493E8();
    _ConditionalContent<>.init(storage:)();
    sub_1001494A4(v36, type metadata accessor for PhotoBackgroundView);
    return (*(v15 + 8))(v34, v14);
  }
}

unint64_t sub_1001493E8()
{
  result = qword_100220ED0;
  if (!qword_100220ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220ED0);
  }

  return result;
}

uint64_t sub_10014943C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001494A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100149504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AsyncImagePhase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  if ((*(v11 + 88))(v13, v10) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v14 = Image.resizable(capInsets:resizingMode:)();
    (*(v7 + 8))(v9, v6);
    v21 = v14;
    v22 = 0;
    v23 = 257;
    v24 = 0;
    swift_retain_n();
    sub_100009F70(&qword_10021B5E8);
    sub_100079534();
    sub_10014AF34();
    _ConditionalContent<>.init(storage:)();

    v16 = v25;
    v17 = v26;
    v18 = v27;
  }

  else
  {
    v21 = *(a2 + *(type metadata accessor for PhotoView(0) + 20));
    v22 = 0;
    v23 = 0;
    v24 = 1;
    v19 = v21;
    sub_100009F70(&qword_10021B5E8);
    sub_100079534();
    sub_10014AF34();
    _ConditionalContent<>.init(storage:)();
    v20 = v25;
    v17 = v26;
    v18 = v27;
    result = (*(v11 + 8))(v13, v10);
    v16 = v20;
  }

  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 18) = v18;
  return result;
}

uint64_t sub_100149834(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1 - 8);
  v5 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, v2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_10014943C(v2, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_10014B9EC(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PhotoView);
  sub_100009F70(&qword_100221170);
  sub_10014B800(&qword_100221178, &qword_100221170, &unk_1001B9F78, sub_10014AF34);
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_100149A88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_100009F70(&qword_100221120);
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_100009F70(&qword_100221128);
  __chkstk_darwin(v12);
  v14 = (&v26 - v13);
  v15 = sub_100009F70(&qword_100221130);
  __chkstk_darwin(v15);
  v17 = (&v26 - v16);
  if (*(v1 + *(type metadata accessor for PhotoBackgroundView(0) + 20)))
  {
    *v14 = static Alignment.center.getter();
    v14[1] = v18;
    v27 = v14 + *(sub_100009F70(&qword_100221138) + 44);
    v19 = type metadata accessor for URL();
    v28 = a1;
    v29 = v12;
    v20 = v19;
    v21 = *(v19 - 8);
    (*(v21 + 16))(v5, v1, v19);
    (*(v21 + 56))(v5, 0, 1, v20);
    sub_100009F70(&qword_100221140);
    sub_10014B800(&qword_100221148, &qword_100221140, &unk_1001B9F60, sub_10004FA48);
    AsyncImage.init(url:scale:transaction:content:)();
    v22 = &v11[*(v6 + 36)];
    *v22 = 0x4039000000000000;
    v22[8] = 0;
    sub_10000D58C(v11, v9, &qword_100221120);
    v23 = v27;
    sub_10000D58C(v9, v27, &qword_100221120);
    *(v23 + *(sub_100009F70(&qword_100221150) + 48)) = 18;
    sub_10000D52C(v11, &qword_100221120);
    sub_10000D52C(v9, &qword_100221120);
    sub_10000D58C(v14, v17, &qword_100221128);
    swift_storeEnumTagMultiPayload();
    sub_10000D1EC(&qword_100221158, &qword_100221128);
    _ConditionalContent<>.init(storage:)();
    return sub_10000D52C(v14, &qword_100221128);
  }

  else
  {
    v25 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    *v17 = Color.init(uiColor:)();
    swift_storeEnumTagMultiPayload();
    sub_10000D1EC(&qword_100221158, &qword_100221128);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100149F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AsyncImagePhase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v12 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    v18 = v12;
    v19 = 0;
    v20 = 257;
    v21 = 0;
    swift_retain_n();
    sub_100009F70(&qword_10021B5E8);
    sub_100009F70(&qword_10021A7B8);
    sub_100079534();
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();

    v14 = v22;
    v15 = v23;
    v16 = v24;
  }

  else
  {
    v18 = static Color.blue.getter();
    v19 = 0;
    v20 = 0;
    v21 = 1;
    sub_100009F70(&qword_10021B5E8);
    sub_100009F70(&qword_10021A7B8);
    sub_100079534();
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();
    v17 = v22;
    v15 = v23;
    v16 = v24;
    result = (*(v9 + 8))(v11, v8);
    v14 = v17;
  }

  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 18) = v16;
  return result;
}

uint64_t sub_10014A258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RoundedRectangle();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F70(&qword_10021B648);
  v9 = __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = *(v5 + 28);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(&v7[v17], v18, v19);
  __asm { FMOV            V0.2D, #6.0 }

  *v7 = _Q0;
  if (a1)
  {
    v25 = a1;
    v26 = Color.init(cgColor:)();
  }

  else
  {
    v26 = static Color.blue.getter();
  }

  v27 = v26;
  sub_10014B9EC(v7, v14, &type metadata accessor for RoundedRectangle);
  *&v14[*(v8 + 52)] = v27;
  *&v14[*(v8 + 56)] = 256;
  sub_10000F618(v14, v16, &qword_10021B648);
  v28 = Image.init(_:bundle:)();
  v29 = Image.init(systemName:)();
  v48 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  sub_100009F70(&qword_1002199C0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1001ACB00;
  static Color.white.getter();
  v32 = Color.opacity(_:)();

  *(v31 + 32) = v32;
  *(v31 + 40) = static Color.white.getter();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v33 = v57;
  v34 = v58;
  v35 = v59;
  v36 = v60;
  v37 = v61;
  static Color.black.getter();
  v38 = Color.opacity(_:)();

  sub_10000D58C(v16, v11, &qword_10021B648);
  sub_10000D58C(v11, a2, &qword_10021B648);
  v39 = sub_100009F70(&qword_100221188);
  *(a2 + v39[12]) = 16;
  *(a2 + v39[16]) = v28;
  v40 = (a2 + v39[20]);
  *&v49 = v29;
  *(&v49 + 1) = KeyPath;
  v47 = v11;
  v41 = v48;
  *&v50 = v48;
  *(&v50 + 1) = v33;
  *&v51 = v34;
  *(&v51 + 1) = v35;
  *&v52 = v36;
  *(&v52 + 1) = v37;
  *&v53[0] = v38;
  v46 = xmmword_1001B5A00;
  *(v53 + 8) = xmmword_1001B5A00;
  *(&v53[1] + 1) = 0x4020000000000000;
  v42 = v52;
  v40[2] = v51;
  v40[3] = v42;
  v43 = v50;
  *v40 = v49;
  v40[1] = v43;
  v44 = v53[1];
  v40[4] = v53[0];
  v40[5] = v44;

  sub_10000D58C(&v49, v54, &qword_100221190);
  sub_10000D52C(v16, &qword_10021B648);
  v54[0] = v29;
  v54[1] = KeyPath;
  v54[2] = v41;
  v54[3] = v33;
  v54[4] = v34;
  v54[5] = v35;
  v54[6] = v36;
  v54[7] = v37;
  v54[8] = v38;
  v55 = v46;
  v56 = 0x4020000000000000;
  sub_10000D52C(v54, &qword_100221190);

  return sub_10000D52C(v47, &qword_10021B648);
}

uint64_t sub_10014A730@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = sub_100009F70(&qword_100221180);
  return sub_10014A258(v3, a1 + *(v5 + 44));
}

double sub_10014A780@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    static Alignment.center.getter();
    sub_10014A8BC(a1, v10);
  }

  else
  {
    v5 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    Color.init(uiColor:)();
  }

  sub_100009F70(&qword_100221160);
  sub_10000D1EC(&qword_100221168, &qword_100221160);
  _ConditionalContent<>.init(storage:)();
  result = *v10;
  v7 = v10[1];
  v8 = v11;
  v9 = v12;
  *a3 = v10[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  return result;
}

uint64_t sub_10014A8BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    Color.init(cgColor:)();
  }

  else
  {
    static Color.blue.getter();
  }

  result = _ConditionalContent<>.init(storage:)();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 17;
  return result;
}

uint64_t sub_10014A978(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100220FB8);
  __chkstk_darwin(v2 - 8);
  sub_10000D58C(a1, &v5 - v3, &qword_100220FB8);
  return EnvironmentValues.textCase.setter();
}

unint64_t sub_10014AA30()
{
  result = qword_100220F98;
  if (!qword_100220F98)
  {
    sub_10000B3DC(&qword_100220F90);
    sub_10014AABC();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220F98);
  }

  return result;
}

unint64_t sub_10014AABC()
{
  result = qword_100220FA0;
  if (!qword_100220FA0)
  {
    sub_10000B3DC(&qword_100220FA8);
    sub_100079534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220FA0);
  }

  return result;
}

uint64_t sub_10014AB6C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for PromotionalAssetsEntryView();
  v4 = v0 + ((*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80));
  (*(*(v2 - 8) + 8))(v4, v2);
  v5 = *(type metadata accessor for PromotionalAssetsEntryViewModel() + 52);
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v4 + v5, 1, v1))
  {
    (*(v6 + 8))(v4 + v5, v1);
  }

  v7 = v3[13];
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v3[14];
  sub_100009F70(&qword_100219720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ContentSizeCategory();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
  }

  sub_100027EB0(*(v4 + v3[15]), *(v4 + v3[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_10014AE18()
{
  type metadata accessor for PromotionalAssetsEntryView();
  type metadata accessor for PromotionalAssetsEntryView();
  return sub_100145A90();
}

uint64_t sub_10014AEEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10014AF34()
{
  result = qword_100220FD0;
  if (!qword_100220FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220FD0);
  }

  return result;
}

uint64_t sub_10014AF88(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10014AF9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10014AFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10014B070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10014B13C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10014B1F4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10014B274(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10014B2D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10014B344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10014B420(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_10014B4D8()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10014B58C(319, &qword_100219580, type metadata accessor for CGColor, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10014B58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10014B5F4()
{
  result = qword_1002210F8;
  if (!qword_1002210F8)
  {
    sub_10000B3DC(&qword_100220EB8);
    sub_10014B6AC();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002210F8);
  }

  return result;
}

unint64_t sub_10014B6AC()
{
  result = qword_100221100;
  if (!qword_100221100)
  {
    sub_10000B3DC(&qword_100220EA8);
    sub_10000D1EC(&qword_100221108, &qword_100221110);
    sub_10000D1EC(&qword_100221118, &qword_100220EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221100);
  }

  return result;
}

uint64_t sub_10014B800(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    sub_100079534();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014B884()
{
  v1 = (type metadata accessor for PhotoView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_10014B96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100149504(a1, v6, a2);
}

uint64_t sub_10014B9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10014BA58()
{
  result = qword_100221198;
  if (!qword_100221198)
  {
    sub_10000B3DC(&qword_1002211A0);
    sub_10000D1EC(&qword_100221158, &qword_100221128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221198);
  }

  return result;
}

unint64_t sub_10014BB14()
{
  result = qword_1002211A8;
  if (!qword_1002211A8)
  {
    sub_10000B3DC(&qword_1002211B0);
    sub_10000D1EC(&qword_100221168, &qword_100221160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002211A8);
  }

  return result;
}

uint64_t sub_10014BC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100009F70(&qword_100219838);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10014BD78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100009F70(&qword_100219838);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CalendarIcon()
{
  result = qword_100221238;
  if (!qword_100221238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014BECC()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100027A4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10014BF6C()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_1002211D8 = result;
  return result;
}

uint64_t sub_10014C050@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v134 = a1;
  v3 = sub_100009F70(&qword_10021BE10);
  __chkstk_darwin(v3 - 8);
  v133 = &v110 - v4;
  v139 = type metadata accessor for ColorScheme();
  v140 = *(v139 - 8);
  v5 = __chkstk_darwin(v139);
  v138 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v137 = &v110 - v7;
  v136 = type metadata accessor for RoundedRectangle();
  v8 = __chkstk_darwin(v136);
  v130 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v135 = (&v110 - v10);
  v128 = sub_100009F70(&qword_100221270);
  __chkstk_darwin(v128);
  v132 = &v110 - v11;
  v129 = sub_100009F70(&qword_100221278);
  __chkstk_darwin(v129);
  v131 = &v110 - v12;
  v126 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v124 = *(v126 - 1);
  __chkstk_darwin(v126);
  v123 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v121 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v114 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Date.FormatStyle();
  v115 = *(v117 - 8);
  v15 = __chkstk_darwin(v117);
  v17 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v113 = &v110 - v19;
  __chkstk_darwin(v18);
  v116 = &v110 - v20;
  v21 = type metadata accessor for AccessibilityChildBehavior();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100009F70(&qword_100221280);
  __chkstk_darwin(v111);
  v26 = &v110 - v25;
  *&v118 = sub_100009F70(&qword_100221288);
  *&v119 = *(v118 - 8);
  __chkstk_darwin(v118);
  v112 = &v110 - v27;
  v122 = sub_100009F70(&qword_100221290) - 8;
  __chkstk_darwin(v122);
  v29 = &v110 - v28;
  v127 = sub_100009F70(&qword_100221298);
  __chkstk_darwin(v127);
  v125 = &v110 - v30;
  *v26 = static HorizontalAlignment.center.getter();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v31 = sub_100009F70(&qword_1002212A0);
  sub_10014CFD0(v2, &v26[*(v31 + 44)]);
  static AccessibilityChildBehavior.ignore.getter();
  v32 = sub_10000D1EC(&qword_1002212A8, &qword_100221280);
  v33 = v111;
  View.accessibilityElement(children:)();
  (*(v22 + 8))(v24, v21);
  sub_10000D52C(v26, &qword_100221280);
  static FormatStyle<>.dateTime.getter();
  v34 = v114;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  v35 = v113;
  Date.FormatStyle.month(_:)();
  (*(v120 + 8))(v34, v121);
  v36 = *(v115 + 8);
  v37 = v117;
  v36(v17, v117);
  v38 = v123;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  v39 = v116;
  Date.FormatStyle.day(_:)();
  (*(v124 + 8))(v38, v126);
  v36(v35, v37);
  sub_10014DDCC(&qword_10021F178, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v36(v39, v37);
  v147 = v141;
  v144 = v33;
  *&v145 = v32;
  swift_getOpaqueTypeConformance2();
  sub_100027068();
  v40 = v118;
  v41 = v112;
  View.accessibilityLabel<A>(_:)();

  (*(v119 + 8))(v41, v40);
  v42 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = &v29[*(sub_100009F70(&qword_1002212B0) + 36)];
  *v51 = v42;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v52 = *(v122 + 44);
  v126 = v29;
  v53 = &v29[v52];
  v54 = v142;
  *v53 = v141;
  *(v53 + 1) = v54;
  *(v53 + 2) = v143;
  v55 = *(v136 + 20);
  v56 = enum case for RoundedCornerStyle.continuous(_:);
  v57 = type metadata accessor for RoundedCornerStyle();
  v58 = *(v57 - 8);
  v59 = *(v58 + 104);
  v60 = v135;
  LODWORD(v124) = v56;
  v123 = v59;
  v122 = v58 + 104;
  (v59)(v135 + v55, v56, v57);
  __asm { FMOV            V0.2D, #12.0 }

  v121 = _Q0;
  *v60 = _Q0;
  v120 = *(type metadata accessor for CalendarIcon() + 20);
  v66 = v137;
  sub_100024640(v137);
  v67 = enum case for ColorScheme.light(_:);
  v68 = v140;
  v69 = *(v140 + 104);
  v70 = v138;
  v71 = v139;
  v69(v138, enum case for ColorScheme.light(_:), v139);
  LOBYTE(v39) = static ColorScheme.== infix(_:_:)();
  v72 = *(v68 + 8);
  v72(v70, v71);
  v140 = v68 + 8;
  v72(v66, v71);
  sub_100009F70(&qword_1002199C0);
  if (v39)
  {
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1001AEB90;
    *(v73 + 32) = static Color.white.getter();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
  }

  else
  {
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1001ACB00;
    if (qword_100218448 != -1)
    {
      swift_once();
    }

    *(v74 + 32) = qword_1002211D8;
    v75 = objc_opt_self();

    v76 = [v75 systemGray6Color];
    *(v74 + 40) = Color.init(uiColor:)();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
  }

  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v77 = v144;
  v119 = v145;
  v118 = v146;
  v78 = v132;
  sub_10004F958(v135, v132);
  v79 = v78 + *(v128 + 36);
  *v79 = v77;
  *(v79 + 24) = v118;
  *(v79 + 8) = v119;
  v80 = v130;
  (v123)(&v130[*(v136 + 20)], v124, v57);
  *v80 = v121;
  v81 = v137;
  sub_100024640(v137);
  v82 = v138;
  v83 = v139;
  v69(v138, v67, v139);
  v84 = static ColorScheme.== infix(_:_:)();
  v72(v82, v83);
  v72(v81, v83);
  v85 = objc_opt_self();
  v86 = &selRef_systemGray4Color;
  if ((v84 & 1) == 0)
  {
    v86 = &selRef_systemGray5Color;
  }

  v87 = [v85 *v86];
  v88 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v89 = v133;
  sub_1000A3BD8(v80, v133);
  v90 = v89 + *(sub_100009F70(&qword_10021BE20) + 36);
  v91 = v148;
  *v90 = v147;
  *(v90 + 16) = v91;
  *(v90 + 32) = v149;
  v92 = sub_100009F70(&qword_10021BE28);
  *(v89 + *(v92 + 52)) = v88;
  *(v89 + *(v92 + 56)) = 256;
  v93 = static Alignment.center.getter();
  v95 = v94;
  sub_1000A3C3C(v80);
  v96 = (v89 + *(sub_100009F70(&qword_10021BE30) + 36));
  *v96 = v93;
  v96[1] = v95;
  v97 = static Alignment.center.getter();
  v99 = v98;
  v100 = v131;
  v101 = &v131[*(v129 + 36)];
  sub_10000F618(v89, v101, &qword_10021BE10);
  v102 = (v101 + *(sub_100009F70(&qword_10021BDF8) + 36));
  *v102 = v97;
  v102[1] = v99;
  sub_10000F618(v78, v100, &qword_100221270);
  v103 = static Alignment.center.getter();
  v105 = v104;
  v106 = v125;
  v107 = &v125[*(v127 + 36)];
  sub_10000F618(v100, v107, &qword_100221278);
  v108 = (v107 + *(sub_100009F70(&qword_1002212B8) + 36));
  *v108 = v103;
  v108[1] = v105;
  sub_10014DAC0(v126, v106);
  sub_10014DB30();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v106, &qword_100221298);
}

uint64_t sub_10014CFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v93 = a1;
  v89 = sub_100009F70(&qword_1002212F0);
  __chkstk_darwin(v89);
  v88 = &v80 - v2;
  v3 = sub_100009F70(&qword_1002212F8);
  v4 = __chkstk_darwin(v3 - 8);
  v91 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = &v80 - v6;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  v94 = v7;
  v95 = v8;
  __chkstk_darwin(v7);
  v84 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v10 = *(v83 - 1);
  __chkstk_darwin(v83);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Date.FormatStyle();
  v13 = *(v81 - 8);
  v14 = __chkstk_darwin(v81);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100009F70(&qword_10021BF80);
  __chkstk_darwin(v82);
  v22 = &v80 - v21;
  v85 = sub_100009F70(&qword_100221300);
  __chkstk_darwin(v85);
  v24 = &v80 - v23;
  v25 = sub_100009F70(&qword_100221308);
  v26 = __chkstk_darwin(v25 - 8);
  v87 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v86 = &v80 - v28;
  (*(v18 + 16))(v20, v93, v17);
  static FormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.FormatStyle.month(_:)();
  (*(v10 + 8))(v12, v83);
  (*(v13 + 8))(v16, v81);
  sub_10014DDCC(&qword_10021F178, &type metadata accessor for Date.FormatStyle);
  sub_10014DDCC(&qword_10021FDF8, &type metadata accessor for Date);
  v29 = Text.init<A>(_:format:)();
  v31 = v30;
  LOBYTE(v12) = v32;
  v83 = v33;
  v34 = &v22[*(sub_100009F70(&qword_100219820) + 36)];
  v35 = *(sub_100009F70(&qword_100219828) + 28);
  v36 = enum case for Text.Case.uppercase(_:);
  v37 = type metadata accessor for Text.Case();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v34 + v35, v36, v37);
  (*(v38 + 56))(v34 + v35, 0, 1, v37);
  *v34 = swift_getKeyPath();
  *v22 = v29;
  *(v22 + 1) = v31;
  v22[16] = v12 & 1;
  *(v22 + 3) = v83;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  v39 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v41 = &v22[*(v82 + 36)];
  *v41 = KeyPath;
  v41[1] = v39;
  v42 = enum case for DynamicTypeSize.medium(_:);
  v43 = v94;
  v44 = v95;
  v45 = v84;
  v83 = *(v95 + 104);
  (v83)(v84, enum case for DynamicTypeSize.medium(_:), v94);
  sub_10008F064();
  View.dynamicTypeSize(_:)();
  v46 = *(v44 + 8);
  v47 = v45;
  v95 = v44 + 8;
  v82 = v46;
  v46(v45, v43);
  sub_10014DE24(v22);
  if (qword_100218320 != -1)
  {
    swift_once();
  }

  v48 = qword_100230558;
  *&v24[*(sub_100009F70(&qword_100221310) + 36)] = v48;
  v49 = swift_getKeyPath();
  v50 = &v24[*(sub_100009F70(&qword_100221318) + 36)];
  *v50 = v49;
  *(v50 + 1) = 1;
  v50[16] = 0;
  v51 = swift_getKeyPath();
  v52 = &v24[*(v85 + 36)];
  *v52 = v51;
  v52[1] = 0x3FE3333333333333;
  sub_10014DEE8();

  v53 = v86;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v24, &qword_100221300);
  v54 = [objc_allocWithZone(NSDateFormatter) init];
  v55 = String._bridgeToObjectiveC()();
  [v54 setDateFormat:v55];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v57 = [v54 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Font.largeTitle.getter();
  static Font.Weight.light.getter();
  Font.weight(_:)();

  v58 = Text.font(_:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v96 = v58;
  v97 = v60;
  v65 = v62 & 1;
  v98 = v62 & 1;
  v99 = v64;
  v66 = v42;
  v67 = v94;
  (v83)(v47, v66, v94);
  v68 = v88;
  View.dynamicTypeSize(_:)();
  (v82)(v47, v67);
  sub_10000D60C(v58, v60, v65);

  LODWORD(v58) = static HierarchicalShapeStyle.primary.getter();
  *(v68 + *(sub_100009F70(&qword_100221348) + 36)) = v58;
  LOBYTE(v58) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v69 = v68 + *(v89 + 36);
  *v69 = v58;
  *(v69 + 8) = v70;
  *(v69 + 16) = v71;
  *(v69 + 24) = v72;
  *(v69 + 32) = v73;
  *(v69 + 40) = 0;
  sub_10014E14C(&qword_100221350, &qword_1002212F0, &unk_1001BA068, sub_10014E1D0);
  v74 = v90;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v68, &qword_1002212F0);
  v75 = v87;
  sub_10000D58C(v53, v87, &qword_100221308);
  v76 = v91;
  sub_10000D58C(v74, v91, &qword_1002212F8);
  v77 = v92;
  sub_10000D58C(v75, v92, &qword_100221308);
  v78 = sub_100009F70(&qword_100221360);
  sub_10000D58C(v76, v77 + *(v78 + 48), &qword_1002212F8);
  sub_10000D52C(v74, &qword_1002212F8);
  sub_10000D52C(v53, &qword_100221308);
  sub_10000D52C(v76, &qword_1002212F8);
  return sub_10000D52C(v75, &qword_100221308);
}

uint64_t sub_10014DAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100221290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10014DB30()
{
  result = qword_1002212C0;
  if (!qword_1002212C0)
  {
    sub_10000B3DC(&qword_100221298);
    sub_10014DBE8();
    sub_10000D1EC(&qword_1002212E8, &qword_1002212B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002212C0);
  }

  return result;
}

unint64_t sub_10014DBE8()
{
  result = qword_1002212C8;
  if (!qword_1002212C8)
  {
    sub_10000B3DC(&qword_100221290);
    sub_10014E14C(&qword_1002212D0, &qword_1002212B0, &unk_1001BA050, sub_10014DCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002212C8);
  }

  return result;
}

unint64_t sub_10014DCA0()
{
  result = qword_1002212D8;
  if (!qword_1002212D8)
  {
    sub_10000B3DC(&qword_1002212E0);
    sub_10000B3DC(&qword_100221280);
    sub_10000D1EC(&qword_1002212A8, &qword_100221280);
    swift_getOpaqueTypeConformance2();
    sub_10014DDCC(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002212D8);
  }

  return result;
}

uint64_t sub_10014DDCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014DE24(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021BF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014DE94@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10014DEE8()
{
  result = qword_100221320;
  if (!qword_100221320)
  {
    sub_10000B3DC(&qword_100221300);
    sub_10014DFA0();
    sub_10000D1EC(&qword_100221338, &qword_100221340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221320);
  }

  return result;
}

unint64_t sub_10014DFA0()
{
  result = qword_100221328;
  if (!qword_100221328)
  {
    sub_10000B3DC(&qword_100221318);
    sub_10014E058();
    sub_10000D1EC(&qword_100219800, &qword_100219808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221328);
  }

  return result;
}

unint64_t sub_10014E058()
{
  result = qword_100221330;
  if (!qword_100221330)
  {
    sub_10000B3DC(&qword_100221310);
    sub_10000B3DC(&qword_10021BF80);
    sub_10008F064();
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221330);
  }

  return result;
}

uint64_t sub_10014E14C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10014E1D0()
{
  result = qword_100221358;
  if (!qword_100221358)
  {
    sub_10000B3DC(&qword_100221348);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021B450, &qword_10021B458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221358);
  }

  return result;
}

unint64_t sub_10014E2BC()
{
  result = qword_100221368;
  if (!qword_100221368)
  {
    sub_10000B3DC(&qword_100221370);
    sub_10014DB30();
    sub_10014DDCC(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221368);
  }

  return result;
}

uint64_t sub_10014E378@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10014F59C(&qword_10021E540, type metadata accessor for EventController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC15ShazamEventsApp15EventController__state;
  swift_beginAccess();
  return sub_10014F720(v5 + v3, a1);
}

uint64_t sub_10014E440(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = sub_100009F70(&qword_10021F138);
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v5 = sub_100009F70(&qword_100221500);
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v6 = sub_100009F70(&qword_10021B370);
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v7 = sub_100009F70(&qword_10021D8F8);
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v8 = sub_100009F70(&qword_100219428);
  v3[36] = v8;
  v3[37] = *(v8 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = sub_100009F70(&qword_10021E530);
  v3[40] = swift_task_alloc();
  v3[41] = type metadata accessor for EventController.State(0);
  v3[42] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[43] = static MainActor.shared.getter();
  v3[44] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[45] = v9;

  return _swift_task_switch(sub_10014E750);
}

uint64_t sub_10014E750()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[35];
  v22 = v0[32];
  v24 = v0[29];
  v25 = v0[26];
  v5 = v0[23];
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[46] = OBJC_IVAR____TtC15ShazamEventsApp15EventController___observationRegistrar;
  v0[18] = v5;
  v0[47] = sub_10014F59C(&qword_10021E540, type metadata accessor for EventController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10014F538(v1);
  v7 = v3[16];
  v8 = v3[20];
  v9 = v3[24];
  v0[2] = v2 + v3[12];
  v0[3] = v2 + v7;
  v0[4] = v2 + v8;
  v0[5] = v2 + v9;
  v23 = type metadata accessor for Art();
  sub_10014F59C(qword_100219438, &type metadata accessor for Art);
  static EventService.RequestType.art.getter();
  v21 = type metadata accessor for Dance();
  v10 = sub_10014F59C(&qword_10021D908, &type metadata accessor for Dance);
  static EventService.RequestType.dance.getter();
  v0[6] = v4;
  v11 = type metadata accessor for Music();
  sub_10014F59C(&qword_10021B378, &type metadata accessor for Music);
  static EventService.RequestType<>.music.getter();
  v0[7] = v22;
  v12 = type metadata accessor for Sport();
  sub_10014F59C(&qword_100221508, &type metadata accessor for Sport);
  static EventService.RequestType<>.sport.getter();
  v0[8] = v24;
  v13 = type metadata accessor for Theater();
  v14 = sub_10014F59C(&qword_10021F148, &type metadata accessor for Theater);
  static EventService.RequestType.theater.getter();
  v0[9] = v25;
  v15 = swift_task_alloc();
  v0[48] = v15;
  v0[10] = v21;
  v0[11] = v11;
  v0[12] = v12;
  v0[13] = v13;
  v0[14] = v10;
  v0[15] = sub_10014F59C(&qword_10021CB90, &type metadata accessor for Music);
  v0[16] = sub_10014F59C(&qword_100221510, &type metadata accessor for Sport);
  v0[17] = v14;
  *v15 = v0;
  v15[1] = sub_10014EBB8;
  v16 = v0[40];
  v17 = v0[38];
  v18 = v0[21];
  v19 = v0[22];

  return EventService.event<A, B>(identifier:ofType:_:)(v16, v0 + 2, v18, v19, v17, v0 + 6, 4, v23);
}

uint64_t sub_10014EBB8()
{
  v2 = *v1;
  v2[49] = v0;

  v3 = v2[38];
  v4 = v2[37];
  v5 = v2[36];
  if (v0)
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10014EF3C;
  }

  else
  {
    v7 = v2[34];
    v18 = v2[33];
    v19 = v2[35];
    v17 = v2[32];
    v8 = v2[31];
    v16 = v2[30];
    v9 = v2[28];
    v10 = v2[29];
    v12 = v2[26];
    v11 = v2[27];
    v14 = v2[24];
    v13 = v2[25];
    (*(v4 + 8))(v3, v5);
    (*(v13 + 8))(v12, v14);
    (*(v9 + 8))(v10, v11);
    (*(v8 + 8))(v17, v16);
    (*(v7 + 8))(v19, v18);
    v6 = sub_10014EDC4;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_10014EDC4()
{
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[23];

  sub_10014F5E4(v2, v1);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[20] = v3;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10014F538(v1);
  sub_10014F654(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10014EF3C()
{
  v18 = v0[49];
  v17 = v0[42];
  v1 = v0[34];
  v15 = v0[33];
  v16 = v0[35];
  v2 = v0[31];
  v13 = v0[30];
  v14 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];

  (*(v7 + 8))(v5, v8);
  (*(v3 + 8))(v4, v6);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v16, v15);
  *v17 = v18;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v17;
  v0[19] = v9;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10014F538(v17);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10014F144(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ShazamEventsApp15EventController__state;
  swift_beginAccess();
  sub_10014F6BC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10014F1B0()
{
  sub_10014F538(v0 + OBJC_IVAR____TtC15ShazamEventsApp15EventController__state);
  v1 = OBJC_IVAR____TtC15ShazamEventsApp15EventController_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15ShazamEventsApp15EventController___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10014F2C4()
{
  result = type metadata accessor for EventController.State(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EventService();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_10014F3E8()
{
  sub_10009FE14();
  if (v0 <= 0x3F)
  {
    sub_10014F45C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10014F45C()
{
  if (!qword_1002214D0)
  {
    sub_10000B3DC(&qword_10021E548);
    sub_10000B3DC(&qword_10021E550);
    sub_10000B3DC(&qword_10021E4E0);
    sub_10000B3DC(&qword_10021E558);
    sub_10000B3DC(&qword_10021E560);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1002214D0);
    }
  }
}

uint64_t sub_10014F538(uint64_t a1)
{
  v2 = type metadata accessor for EventController.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014F59C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014F5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021E530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F654(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021E530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014F6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventController.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventController.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F79C()
{

  v1 = OBJC_IVAR____TtC15ShazamEventsApp17PlaybackViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaybackViewModel()
{
  result = qword_100221548;
  if (!qword_100221548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014F894@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10008815C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15ShazamEventsAppP33_1C7073CF0CC1C2E3B987F96E1178132819SubscriptionUpdater__subscription;
  swift_beginAccess();
  return sub_10000D58C(v3 + v4, a2, &qword_10021B910);
}

uint64_t sub_10014F93C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021B910);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000D58C(a1, &v6 - v3, &qword_10021B910);
  return sub_10007E41C(v4);
}

void sub_10014F9E8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = (a1 + 4);
    sub_100028124(a1 + 4, a1[7]);
    *(&v86 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_100043D3C(&v85);
    dispatch thunk of Identifiable.id.getter();
    sub_100071318(&v85, v88);
    v82[0] = &_swiftEmptyArrayStorage;
    sub_1001444DC(0, v1, 0);
    v3 = &_swiftEmptyArrayStorage;
    do
    {
      sub_10005DA94(v2, &v85);
      v4 = *(&v86 + 1);
      v5 = AssociatedConformanceWitness;
      sub_100028124(&v85, *(&v86 + 1));
      v6 = (*(v5 + 88))(v4, v5);
      v8 = v7;
      sub_100021498(&v85);
      v82[0] = v3;
      v10 = v3[2];
      v9 = v3[3];
      if (v10 >= v9 >> 1)
      {
        sub_1001444DC((v9 > 1), v10 + 1, 1);
        v3 = v82[0];
      }

      v3[2] = v10 + 1;
      v11 = &v3[2 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v8;
      v2 += 40;
      --v1;
    }

    while (v1);
    isa = oslog[5].isa;
    v13 = oslog[6].isa;
    sub_100028124(&oslog[2].isa, isa);
    v14 = (*(v13 + 1))(isa, v13);
    v15 = *(v14 + 16);
    if (v15)
    {
      v82[0] = &_swiftEmptyArrayStorage;
      sub_1001444DC(0, v15, 0);
      v16 = &_swiftEmptyArrayStorage;
      v17 = v14 + 32;
      do
      {
        sub_10005DA94(v17, &v85);
        v18 = *(&v86 + 1);
        v19 = AssociatedConformanceWitness;
        sub_100028124(&v85, *(&v86 + 1));
        v20 = (*(v19 + 88))(v18, v19);
        v22 = v21;
        sub_100021498(&v85);
        v82[0] = v16;
        v24 = v16[2];
        v23 = v16[3];
        if (v24 >= v23 >> 1)
        {
          sub_1001444DC((v23 > 1), v24 + 1, 1);
          v16 = v82[0];
        }

        v16[2] = v24 + 1;
        v25 = &v16[2 * v24];
        *(v25 + 4) = v20;
        *(v25 + 5) = v22;
        v17 += 40;
        --v15;
      }

      while (v15);
    }

    else
    {

      v16 = &_swiftEmptyArrayStorage;
    }

    v29 = oslog[5].isa;
    v30 = oslog[6].isa;
    sub_100028124(&oslog[2].isa, v29);
    (*(v30 + 2))(v82, v29, v30);
    if (v83)
    {
      sub_100028124(v82, v83);
      *(&v86 + 1) = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_100043D3C(&v85);
      dispatch thunk of Identifiable.id.getter();
      sub_100021498(v82);
    }

    else
    {
      sub_10000D52C(v82, &qword_10021A650);
      v85 = 0u;
      v86 = 0u;
      AssociatedConformanceWitness = 0;
    }

    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    v31._countAndFlagsBits = 0x6F73207473726946;
    v31._object = 0xEC000000203A676ELL;
    String.append(_:)(v31);
    sub_100009F70(&qword_10021BF78);
    _print_unlocked<A, B>(_:_:)();
    v32 = v82[1];
    v74 = v82[0];
    strcpy(v82, "All songs: ");
    HIDWORD(v82[1]) = -352321536;
    v33._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v33);

    v34 = v82[0];
    v35 = v82[1];
    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v80 = v82[0];
    v81 = v82[1];
    v36._countAndFlagsBits = 0x20746E6572727543;
    v36._object = 0xEE00203A676E6F73;
    String.append(_:)(v36);
    sub_10000D58C(&v85, &v78, qword_1002216A0);
    if (v79)
    {
      sub_100071318(&v78, v82);
    }

    else
    {
      v83 = &type metadata for String;
      v84 = &protocol witness table for String;
      v82[0] = 1701736270;
      v82[1] = 0xE400000000000000;
    }

    _print_unlocked<A, B>(_:_:)();
    sub_100021498(v82);
    v37 = v80;
    v38 = v81;
    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v82, "Queued songs: ");
    HIBYTE(v82[1]) = -18;
    v39._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v39);

    v41 = v82[0];
    v40 = v82[1];
    v42 = sub_1000E5FF4(v3, v16);

    if (v42)
    {
      v43 = oslog[5].isa;
      v44 = oslog[6].isa;
      sub_100028124(&oslog[2].isa, v43);
      v45 = (*(v44 + 4))(v43, v44);
      if (v45 > 1)
      {
        if (v45 == 2)
        {

          if (qword_100218470 != -1)
          {
            swift_once();
          }

          v58 = type metadata accessor for Logger();
          sub_10001FDF4(v58, qword_100230610);

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v82[0] = swift_slowAlloc();
            *v61 = 136315394;
            v62 = sub_10005D4E8(v37, v38, v82);

            *(v61 + 4) = v62;
            *(v61 + 12) = 2080;
            v63 = sub_10005D4E8(v41, v40, v82);

            *(v61 + 14) = v63;
            _os_log_impl(&_mh_execute_header, v59, v60, "Pause song playback. %s. %s.", v61, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v70 = oslog[5].isa;
          v71 = oslog[6].isa;
          sub_100028124(&oslog[2].isa, v70);
          (*(v71 + 8))(v70, v71);
        }

        else
        {

          if (qword_100218470 != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for Logger();
          sub_10001FDF4(v64, qword_100230610);

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v82[0] = swift_slowAlloc();
            *v67 = 136315394;
            v68 = sub_10005D4E8(v37, v38, v82);

            *(v67 + 4) = v68;
            *(v67 + 12) = 2080;
            v69 = sub_10005D4E8(v41, v40, v82);

            *(v67 + 14) = v69;
            _os_log_impl(&_mh_execute_header, v65, v66, "Resume song playback. %s. %s.", v67, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v72 = oslog[5].isa;
          v73 = oslog[6].isa;
          sub_100028124(&oslog[2].isa, v72);
          (*(v73 + 7))(v72, v73);
        }

        goto LABEL_40;
      }

      if (v45)
      {
        sub_100021498(v88);

        goto LABEL_41;
      }

      if (qword_100218470 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10001FDF4(v46, qword_100230610);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v82[0] = swift_slowAlloc();
        *v49 = 136315394;
        v50 = sub_10005D4E8(v74, v32, v82);

        *(v49 + 4) = v50;
        *(v49 + 12) = 2080;
        v51 = sub_10005D4E8(v34, v35, v82);

        *(v49 + 14) = v51;
        v52 = "Player was previously idle/stopped. Restart song playback. %s. %s.";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v47, v48, v52, v49, 0x16u);
        swift_arrayDestroy();

LABEL_39:

        v56 = oslog[5].isa;
        v57 = oslog[6].isa;
        sub_100028124(&oslog[2].isa, v56);
        (*(v57 + 6))(a1, v56, v57);
LABEL_40:
        sub_100021498(v88);
LABEL_41:
        sub_10000D52C(&v85, qword_1002216A0);
        return;
      }
    }

    else
    {

      if (qword_100218470 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_10001FDF4(v53, qword_100230610);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v82[0] = swift_slowAlloc();
        *v49 = 136315394;
        v54 = sub_10005D4E8(v74, v32, v82);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2080;
        v55 = sub_10005D4E8(v34, v35, v82);

        *(v49 + 14) = v55;
        v52 = "Start song playback. %s. %s.";
        goto LABEL_37;
      }
    }

    goto LABEL_39;
  }

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10001FDF4(v26, qword_100230610);
  osloga = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(osloga, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, osloga, v27, "Cannot play empty playlist.", v28, 2u);
  }
}

uint64_t sub_100150754()
{
  v0 = sub_100009F70(&qword_10021B910);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-v1];
  if (qword_100218358 != -1)
  {
    swift_once();
  }

  v3 = *(qword_1002305A0 + 16);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_getKeyPath();
  *&v16 = v4;
  sub_10008815C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC15ShazamEventsAppP33_1C7073CF0CC1C2E3B987F96E1178132819SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_10000D58C(v4 + v5, v2, &qword_10021B910);
  os_unfair_lock_unlock((v3 + 24));
  v6 = type metadata accessor for MusicSubscription();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_10000D52C(v2, &qword_10021B910);

LABEL_7:
    v9 = type metadata accessor for MusicPreviewPlayer(0);
    v11 = [objc_allocWithZone(v9) init];
    v12 = &off_10020B5A0;
    goto LABEL_8;
  }

  v8 = MusicSubscription.canPlayCatalogContent.getter();
  (*(v7 + 8))(v2, v6);

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = type metadata accessor for AppleMusicPlayer();
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptyArrayStorage;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 49) = 0u;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 72) = 0;
  ObservationRegistrar.init()();
  v11 = v10;
  v12 = &off_1002104E0;
LABEL_8:
  v17 = v9;
  v18 = v12;
  *&v16 = v11;
  type metadata accessor for PlaybackController();
  v13 = swift_allocObject();
  ObservationRegistrar.init()();
  result = sub_100071318(&v16, v13 + 16);
  qword_100230608 = v13;
  return result;
}

uint64_t sub_100150A18()
{
  v1 = v0;
  sub_10005DA94(v0 + 16, v7);
  v2 = v8;
  v3 = v9;
  sub_100028124(v7, v8);
  (*(v3 + 80))(v2, v3);
  sub_100021498(v7);
  sub_100021498(v0 + 16);
  v4 = OBJC_IVAR____TtC15ShazamEventsApp18PlaybackController___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaybackController()
{
  result = qword_100221608;
  if (!qword_100221608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100150B5C()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100150C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  v6 = sub_100043D3C(v9);
  (*(*(a3 - 8) + 16))(v6, a1, a3);
  sub_100009F70(&qword_100221698);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001AEB90;
  sub_10005DA94(v9, v7 + 32);
  sub_10014F9E8(v7);

  return sub_100021498(v9);
}

void sub_100150CC8()
{
  type metadata accessor for EntertainmentEventViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      sub_1000391A4();
      if (v2 <= 0x3F)
      {
        sub_100050558();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100150DA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218950);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_100150E70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_100218950);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100150FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_100151024(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_10015120C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000A818C;

  return v5();
}

uint64_t sub_1001512F4@<X0>(uint64_t a1@<X1>, char a2@<W2>, void *a3@<X8>)
{
  State.init(wrappedValue:)();
  *a3 = v11;
  a3[1] = v12;
  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  a3[2] = EnvironmentObject.init()();
  a3[3] = v6;
  v7 = type metadata accessor for EntertainmentEventView();
  v8 = *(v7 + 40);
  *(a3 + v8) = swift_getKeyPath();
  sub_100009F70(&qword_100219710);
  result = swift_storeEnumTagMultiPayload();
  v10 = a3 + *(v7 + 44);
  *v10 = a1;
  v10[8] = a2 & 1;
  return result;
}

uint64_t sub_100151494()
{
  type metadata accessor for EntertainmentEventViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_1001514E8()
{
  type metadata accessor for EntertainmentEventViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v1;
}

uint64_t sub_100151540(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 44);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001517C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v119 = a2;
  v118 = type metadata accessor for TaskPriority();
  v117 = *(v118 - 8);
  v3 = __chkstk_darwin(v118);
  v116 = v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(a1 - 8);
  v124 = *(v115 + 64);
  __chkstk_darwin(v3);
  v114 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  type metadata accessor for Optional();
  v113 = type metadata accessor for Binding();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = v91 - v7;
  v122 = type metadata accessor for NavigationPath();
  v8 = *(a1 + 24);
  v9 = sub_10006FEE0();
  OpaqueTypeMetadata2 = v6;
  v134 = &type metadata for DefaultHeroImageView;
  v135 = v8;
  v136 = v9;
  type metadata accessor for HeaderModule();
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v144 = &protocol witness table for _PaddingLayout;
  v11 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v10;
  v134 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule();
  v134 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  v125 = v8;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v135 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v136 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v12 = type metadata accessor for ScrollView();
  v13 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v12;
  v134 = v13;
  v14 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v12;
  v134 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v14;
  v134 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v14;
  v134 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v16;
  v134 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_1002188F8);
  v18 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v16;
  v134 = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
  v141 = v19;
  v142 = v20;
  v21 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v18;
  v134 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v18;
  v134 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_100027068();
  OpaqueTypeMetadata2 = v22;
  v134 = &type metadata for String;
  v135 = v23;
  v136 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v22;
  v134 = &type metadata for String;
  v135 = v23;
  v136 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v25;
  v134 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v25;
  v134 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v27;
  v134 = &type metadata for Bool;
  v135 = v28;
  v136 = &protocol witness table for Bool;
  v29 = swift_getOpaqueTypeMetadata2();
  v30 = sub_10000B3DC(&qword_10021E3C0);
  OpaqueTypeMetadata2 = v27;
  v134 = &type metadata for Bool;
  v135 = v28;
  v136 = &protocol witness table for Bool;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_10000B3DC(&qword_10021A8B8);
  v33 = sub_1000DB938();
  OpaqueTypeMetadata2 = v32;
  v134 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v29;
  v134 = v30;
  v135 = v31;
  v136 = v34;
  v100 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v29;
  v134 = v30;
  v135 = v31;
  v136 = v34;
  v98 = swift_getOpaqueTypeConformance2();
  v35 = type metadata accessor for NavigationStack();
  v99 = *(v35 - 8);
  __chkstk_darwin(v35);
  v96 = v91 - v36;
  type metadata accessor for AccessibilityAttachmentModifier();
  v37 = type metadata accessor for ModifiedContent();
  v109 = *(v37 - 8);
  __chkstk_darwin(v37);
  v120 = v91 - v38;
  v39 = swift_getWitnessTable();
  v93 = v39;
  v40 = sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v139 = v39;
  v140 = v40;
  v41 = swift_getWitnessTable();
  v42 = *(v125 + 16);
  v43 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v37;
  v134 = v6;
  v44 = v37;
  v92 = v37;
  v135 = a1;
  v136 = v41;
  v45 = v41;
  v95 = v41;
  v137 = v42;
  v138 = v43;
  v94 = v42;
  v91[1] = v43;
  v102 = swift_getOpaqueTypeMetadata2();
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v121 = v91 - v46;
  v47 = type metadata accessor for ModifiedContent();
  v104 = v47;
  v110 = *(v47 - 8);
  __chkstk_darwin(v47);
  v122 = v91 - v48;
  OpaqueTypeMetadata2 = v44;
  v134 = v6;
  v135 = a1;
  v136 = v45;
  v137 = v42;
  v138 = v43;
  v97 = swift_getOpaqueTypeConformance2();
  v131 = v97;
  v132 = &protocol witness table for _AppearanceActionModifier;
  v103 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v47;
  v134 = v103;
  v108 = swift_getOpaqueTypeMetadata2();
  v107 = *(v108 - 8);
  v49 = __chkstk_darwin(v108);
  v101 = v91 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v105 = v91 - v51;
  v52 = v125;
  v128 = v6;
  v129 = v125;
  v130 = v123;
  v53 = v96;
  NavigationStack.init<>(root:)();
  View.accessibilityIdentifier(_:)();
  (*(v99 + 8))(v53, v35);
  v54 = a1;
  v55 = sub_1001514E8();
  v57 = v56;
  v59 = v58;
  v60 = v6;
  v126 = v6;
  v127 = v52;
  swift_getKeyPath();
  OpaqueTypeMetadata2 = v55;
  v134 = v57;
  v135 = v59;
  type metadata accessor for EntertainmentEventViewModel();
  type metadata accessor for Binding();
  v61 = v111;
  Binding.subscript.getter();

  v62 = swift_allocObject();
  *(v62 + 16) = v60;
  *(v62 + 24) = v52;
  v63 = v92;
  v91[0] = v60;
  v64 = v54;
  v65 = v120;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v112 + 8))(v61, v113);
  (*(v109 + 8))(v65, v63);
  v66 = v115;
  v120 = *(v115 + 16);
  v67 = v114;
  v68 = v123;
  (v120)(v114, v123, v64);
  v69 = *(v66 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = v60;
  *(v70 + 24) = v52;
  v71 = *(v66 + 32);
  v71(v70 + ((v69 + 32) & ~v69), v67, v64);
  v72 = v102;
  v73 = v121;
  View.onAppear(perform:)();

  (*(v106 + 8))(v73, v72);
  (v120)(v67, v68, v64);
  type metadata accessor for MainActor();
  v74 = static MainActor.shared.getter();
  v75 = swift_allocObject();
  v75[2] = v74;
  v75[3] = &protocol witness table for MainActor;
  v76 = v125;
  v75[4] = v91[0];
  v75[5] = v76;
  v71(v75 + ((v69 + 48) & ~v69), v67, v64);
  v77 = v116;
  v78 = v104;
  v79 = v103;
  j___sScP13userInitiatedScPvgZ();
  v90 = v79;
  v80 = v101;
  v81 = v77;
  v82 = v77;
  v83 = v122;
  sub_100009FB8(0, v81, 0xD00000000000002CLL, 0x80000001001C18F0, 120, &unk_1001BA3A0, v75, v101, v78, v90);
  (*(v117 + 8))(v82, v118);
  (*(v110 + 8))(v83, v78);
  v84 = v107;
  v85 = *(v107 + 16);
  v86 = v105;
  v87 = v108;
  v85(v105, v80, v108);
  v88 = *(v84 + 8);
  v88(v80, v87);
  v85(v119, v86, v87);
  return (v88)(v86, v87);
}

uint64_t sub_100152868@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v157 = a4;
  v158 = a1;
  v154 = type metadata accessor for EntertainmentEventView();
  v153 = *(v154 - 8);
  v151 = *(v153 + 64);
  __chkstk_darwin(v154);
  v152 = &v97 - v6;
  v150 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for ContentMarginPlacement();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for ScrollIndicatorVisibility();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v133 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10006FEE0();
  OpaqueTypeMetadata2 = a2;
  v167 = &type metadata for DefaultHeroImageView;
  v168 = a3;
  v169 = v10;
  type metadata accessor for HeaderModule();
  v11 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v165 = &protocol witness table for _PaddingLayout;
  v12 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v11;
  v167 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule();
  v167 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v168 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v169 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v100 = type metadata accessor for VStack();
  v99 = swift_getWitnessTable();
  v13 = type metadata accessor for ScrollView();
  v135 = *(v13 - 8);
  __chkstk_darwin(v13);
  v98 = &v97 - v14;
  v15 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v13;
  v167 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v127 = *(v16 - 8);
  __chkstk_darwin(v16);
  v121 = &v97 - v17;
  v117 = v13;
  OpaqueTypeMetadata2 = v13;
  v167 = v15;
  v113 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v16;
  v167 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v120 = *(v19 - 8);
  __chkstk_darwin(v19);
  v114 = &v97 - v20;
  v132 = v16;
  OpaqueTypeMetadata2 = v16;
  v167 = OpaqueTypeConformance2;
  v109 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v19;
  v167 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v130 = *(v22 - 8);
  __chkstk_darwin(v22);
  v123 = &v97 - v23;
  sub_10000B3DC(&qword_1002188F8);
  v134 = v22;
  v24 = type metadata accessor for ModifiedContent();
  v128 = *(v24 - 8);
  __chkstk_darwin(v24);
  v122 = &v97 - v25;
  v124 = v19;
  OpaqueTypeMetadata2 = v19;
  v167 = v21;
  v106 = v21;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
  v101 = v26;
  v162 = v26;
  v163 = v27;
  v28 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v24;
  v167 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v116 = *(v29 - 8);
  __chkstk_darwin(v29);
  v111 = &v97 - v30;
  OpaqueTypeMetadata2 = v24;
  v167 = v28;
  v102 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_100027068();
  OpaqueTypeMetadata2 = v29;
  v167 = &type metadata for String;
  v168 = v31;
  v169 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v131 = *(v33 - 8);
  __chkstk_darwin(v33);
  v125 = &v97 - v34;
  v119 = v29;
  OpaqueTypeMetadata2 = v29;
  v167 = &type metadata for String;
  v104 = v31;
  v168 = v31;
  v169 = v32;
  v103 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v33;
  v167 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v141 = *(v36 - 8);
  __chkstk_darwin(v36);
  v139 = &v97 - v37;
  v136 = v33;
  OpaqueTypeMetadata2 = v33;
  v167 = v35;
  v110 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v36;
  v167 = &type metadata for Bool;
  v168 = v38;
  v169 = &protocol witness table for Bool;
  v39 = swift_getOpaqueTypeMetadata2();
  v138 = *(v39 - 8);
  __chkstk_darwin(v39);
  v137 = &v97 - v40;
  v41 = sub_10000B3DC(&qword_10021E3C0);
  v142 = v36;
  OpaqueTypeMetadata2 = v36;
  v167 = &type metadata for Bool;
  v129 = v38;
  v168 = v38;
  v169 = &protocol witness table for Bool;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_10000B3DC(&qword_10021A8B8);
  v44 = sub_1000DB938();
  OpaqueTypeMetadata2 = v43;
  v167 = v44;
  v45 = v98;
  v46 = swift_getOpaqueTypeConformance2();
  v140 = v39;
  OpaqueTypeMetadata2 = v39;
  v167 = v41;
  v126 = v41;
  v118 = v42;
  v168 = v42;
  v169 = v46;
  v108 = v46;
  v115 = swift_getOpaqueTypeMetadata2();
  v112 = *(v115 - 8);
  v47 = __chkstk_darwin(v115);
  v105 = &v97 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v107 = &v97 - v49;
  v155 = a2;
  v159 = a2;
  v160 = a3;
  v50 = v133;
  v156 = a3;
  v161 = v158;
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v39) = static Axis.Set.vertical.getter();
  *(inited + 32) = v39;
  v52 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v52;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v39)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v52)
  {
    Axis.Set.init(rawValue:)();
  }

  v53 = v121;
  v54 = v117;
  View.scrollIndicators(_:axes:)();
  (*(v143 + 8))(v50, v144);
  (*(v135 + 8))(v45, v54);
  static Edge.Set.bottom.getter();
  v55 = v145;
  static ContentMarginPlacement.scrollContent.getter();
  v56 = v114;
  v57 = v132;
  View.contentMargins(_:_:for:)();
  v58 = *(v146 + 8);
  v59 = v147;
  v58(v55, v147);
  (*(v127 + 8))(v53, v57);
  static Edge.Set.top.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v60 = v123;
  v61 = v124;
  View.contentMargins(_:_:for:)();
  v58(v55, v59);
  (*(v120 + 8))(v56, v61);
  v62 = [objc_opt_self() systemGroupedBackgroundColor];
  OpaqueTypeMetadata2 = Color.init(uiColor:)();
  static Edge.Set.all.getter();
  v63 = v122;
  v64 = v134;
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v130 + 8))(v60, v64);
  v65 = v149;
  v66 = v148;
  v67 = v150;
  (*(v149 + 104))(v148, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v150);
  v68 = v111;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v65 + 8))(v66, v67);
  (*(v128 + 8))(v63, v24);
  v69 = v154;
  v70 = v158;
  sub_100151494();
  v71 = sub_1000EB4B4();
  v73 = v72;

  OpaqueTypeMetadata2 = v71;
  v167 = v73;
  v74 = v125;
  v75 = v119;
  View.navigationTitle<A>(_:)();

  (*(v116 + 8))(v68, v75);
  sub_100151494();
  sub_1000E88E8();

  sub_100009F70(&qword_10021A898);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1001AEB90;
  static ToolbarPlacement.navigationBar.getter();
  v76 = v139;
  v77 = v136;
  View.toolbarBackgroundVisibility(_:for:)();

  (*(v131 + 8))(v74, v77);
  v78 = swift_allocObject();
  v79 = v155;
  v80 = v156;
  *(v78 + 16) = v155;
  *(v78 + 24) = v80;
  v81 = v153;
  v82 = v152;
  (*(v153 + 16))(v152, v70, v69);
  v83 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v79;
  *(v84 + 24) = v80;
  (*(v81 + 32))(v84 + v83, v82, v69);
  v96 = &protocol witness table for Bool;
  v85 = v137;
  v86 = v142;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v87 = (*(v141 + 8))(v76, v86);
  __chkstk_darwin(v87);
  *(&v97 - 4) = v79;
  *(&v97 - 3) = v80;
  v96 = v70;
  v88 = v105;
  v89 = v140;
  View.toolbar<A>(content:)();
  (*(v138 + 8))(v85, v89);
  v90 = v112;
  v91 = *(v112 + 16);
  v92 = v107;
  v93 = v115;
  v91(v107, v88, v115);
  v94 = *(v90 + 8);
  v94(v88, v93);
  v91(v157, v92, v93);
  return (v94)(v92, v93);
}

uint64_t sub_100153D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_10006FEE0();
  type metadata accessor for HeaderModule();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v23 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule();
  v25 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v26 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v27 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v8 = type metadata accessor for VStack();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v18[-v13];
  static HorizontalAlignment.leading.getter();
  v19 = a2;
  v20 = a3;
  v21 = a1;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v12, v8);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v15(a4, v14, v8);
  return (v16)(v14, v8);
}

uint64_t sub_100154090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v187 = a4;
  type metadata accessor for Optional();
  v7 = type metadata accessor for Binding();
  __chkstk_darwin(v7 - 8);
  v159 = &v156 - v8;
  v9 = type metadata accessor for UpcomingViewModel();
  __chkstk_darwin(v9 - 8);
  v157 = &v156 - v10;
  v11 = type metadata accessor for UpcomingModule();
  v183 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v160 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v158 = &v156 - v14;
  v184 = v15;
  v186 = type metadata accessor for Optional();
  v185 = *(v186 - 8);
  v16 = __chkstk_darwin(v186);
  v200 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v199 = &v156 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v156 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v190 = &v156 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v191 = AssociatedTypeWitness;
  v189 = AssociatedConformanceWitness;
  v22 = type metadata accessor for LocationModule();
  v181 = *(v22 - 8);
  __chkstk_darwin(v22);
  v179 = &v156 - v23;
  v182 = v24;
  v198 = type metadata accessor for ModifiedContent();
  v209 = *(v198 - 8);
  v25 = __chkstk_darwin(v198);
  v197 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v180 = &v156 - v28;
  __chkstk_darwin(v27);
  v208 = &v156 - v29;
  v30 = type metadata accessor for DetailsModule();
  v176 = *(v30 - 8);
  __chkstk_darwin(v30);
  v175 = (&v156 - v31);
  v177 = v32;
  v207 = type metadata accessor for ModifiedContent();
  v206 = *(v207 - 8);
  v33 = __chkstk_darwin(v207);
  v196 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v174 = &v156 - v36;
  __chkstk_darwin(v35);
  v205 = &v156 - v37;
  v38 = type metadata accessor for EntertainmentEventView();
  v201 = *(v38 - 8);
  v192 = v201[8];
  v39 = __chkstk_darwin(v38);
  OpaqueTypeConformance2 = &v156 - v40;
  v188 = *(a2 - 8);
  v41 = __chkstk_darwin(v39);
  v164 = (&v156 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v41);
  v44 = &v156 - v43;
  v194 = (&v156 - v43);
  v167 = sub_10006FEE0();
  *&v217 = a2;
  *(&v217 + 1) = &type metadata for DefaultHeroImageView;
  *&v218 = a3;
  *(&v218 + 1) = v167;
  v45 = type metadata accessor for HeaderModule();
  v170 = *(v45 - 8);
  __chkstk_darwin(v45);
  v165 = &v156 - v46;
  v47 = type metadata accessor for ModifiedContent();
  v173 = *(v47 - 8);
  __chkstk_darwin(v47);
  v172 = &v156 - v48;
  v171 = v45;
  WitnessTable = swift_getWitnessTable();
  v220 = WitnessTable;
  v221 = &protocol witness table for _PaddingLayout;
  v49 = swift_getWitnessTable();
  v178 = v47;
  *&v217 = v47;
  *(&v217 + 1) = v49;
  v169 = v49;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v203 = *(OpaqueTypeMetadata2 - 8);
  v50 = __chkstk_darwin(OpaqueTypeMetadata2);
  v195 = &v156 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v168 = &v156 - v53;
  __chkstk_darwin(v52);
  v202 = &v156 - v54;
  v210 = a3;
  v163 = type metadata accessor for HeaderViewModel();
  sub_100151494();
  sub_1000E8FE4(v44);

  v55 = a1;
  v56 = sub_100151494();
  v162 = sub_1000E917C(v56);
  v161 = v57;

  sub_100151494();
  v58 = sub_1000E928C();
  v60 = v59;

  sub_100151494();
  v61 = sub_1000E95C0();
  v63 = v62;

  sub_100151494();
  v64 = v164;
  sub_1000E8FE4(v164);

  v65 = sub_1000A0020(a2, a3);
  (*(v188 + 8))(v64, a2);
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  sub_100079D3C(v194, v162, v161, v58, v60, v61, v63, 0, 0, v65 & 1, &v217);
  v66 = v201;
  v67 = OpaqueTypeConformance2;
  v164 = v201[2];
  (v164)(OpaqueTypeConformance2, v55, v38);
  v68 = v66;
  v69 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v70 = swift_allocObject();
  v188 = a2;
  v71 = v210;
  *(v70 + 16) = a2;
  *(v70 + 24) = v71;
  v72 = v68[4];
  v201 = v68 + 4;
  v163 = v72;
  v72(v70 + v69, v67, v38);
  v73 = v165;
  sub_1000A89F0(sub_100157588, v70, v165);
  static Edge.Set.horizontal.getter();
  v74 = v38;
  if (sub_100151540(v38))
  {
    sub_1000505EC();
  }

  v75 = v172;
  v76 = v171;
  View.padding(_:_:)();
  (*(v170 + 8))(v73, v76);
  v77 = OpaqueTypeConformance2;
  (v164)(OpaqueTypeConformance2, v55, v74);
  v78 = swift_allocObject();
  v79 = v210;
  *(v78 + 16) = v188;
  *(v78 + 24) = v79;
  v163(v78 + v69, v77, v74);
  v80 = v168;
  v81 = v178;
  v82 = v169;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v173 + 8))(v75, v81);
  *&v217 = v81;
  *(&v217 + 1) = v82;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = v203;
  v84 = *(v203 + 16);
  v85 = OpaqueTypeMetadata2;
  v192 = v203 + 16;
  v178 = v84;
  (v84)(v202, v80, OpaqueTypeMetadata2);
  v86 = *(v83 + 8);
  v203 = v83 + 8;
  v201 = v86;
  (v86)(v80, v85);
  type metadata accessor for DetailsViewModel();
  sub_100151494();
  v87 = v194;
  sub_1000E8FE4(v194);

  sub_100151494();
  v88 = sub_1000EB61C();
  v89 = v88;

  sub_100183444(v87, v88);
  v90 = v175;
  sub_1000FF934(v175);
  static Edge.Set.horizontal.getter();
  if (sub_100151540(v74))
  {
    sub_1000506BC();
  }

  else
  {
    static Solarium.isEnabled.getter();
  }

  v91 = v177;
  v92 = swift_getWitnessTable();
  v93 = v174;
  View.padding(_:_:)();
  (*(v176 + 1))(v90, v91);
  v216[6] = v92;
  v216[7] = &protocol witness table for _PaddingLayout;
  v94 = v207;
  v188 = swift_getWitnessTable();
  v95 = v206;
  v96 = *(v206 + 16);
  v177 = v206 + 16;
  v176 = v96;
  v96(v205, v93, v94);
  v97 = *(v95 + 8);
  v206 = v95 + 8;
  v194 = v97;
  (v97)(v93, v94);
  type metadata accessor for LocationViewModel();
  v98 = sub_100151494();
  v99 = sub_1000E95E0(v98);
  v101 = v100;

  v102 = sub_100151494();
  v103 = v190;
  sub_1000E96F0(v102);

  sub_100151494();
  v104 = sub_1000EB61C();
  v105 = v104;

  v106 = sub_100151494();
  LOBYTE(v93) = sub_1000EAA10(v106);

  sub_1000C6E18(v99, v101, v103, v104, v93);
  v107 = v179;
  sub_1000A2404(v179);
  static Edge.Set.horizontal.getter();
  if (sub_100151540(v74))
  {
    sub_100050654();
  }

  v108 = v182;
  v109 = swift_getWitnessTable();
  v110 = v180;
  View.padding(_:_:)();
  (*(v181 + 8))(v107, v108);
  v216[4] = v109;
  v216[5] = &protocol witness table for _PaddingLayout;
  v111 = v198;
  v181 = swift_getWitnessTable();
  v112 = v209;
  v113 = *(v209 + 16);
  v179 = v209 + 16;
  v175 = v113;
  (v113)(v208, v110, v111);
  v114 = *(v112 + 8);
  v209 = v112 + 8;
  v182 = v114;
  v114(v110, v111);
  sub_100151494();
  v115 = sub_1000EB540();

  *&v217 = v115;
  type metadata accessor for Array();
  swift_getWitnessTable();
  LOBYTE(v112) = Collection.isEmpty.getter();

  if (v112)
  {
    v116 = v200;
    (*(v183 + 56))(v200, 1, 1, v184);
    swift_getWitnessTable();
  }

  else
  {
    v117 = sub_100151494();
    v118 = (v117 + *(*v117 + 144));
    v119 = v118[1];
    v180 = *v118;

    v120 = sub_100151494();
    v121 = v190;
    sub_1000E96F0(v120);

    v122 = v191;
    v189 = (*(v189 + 48))(v191);
    v174 = v123;
    (*(v156 + 8))(v121, v122);
    sub_100151494();
    v124 = sub_1000EB540();

    v125 = sub_1001514E8();
    v127 = v126;
    v129 = v128;
    __chkstk_darwin(v125);
    swift_getKeyPath();
    *&v217 = v125;
    *(&v217 + 1) = v127;
    *&v218 = v129;
    type metadata accessor for EntertainmentEventViewModel();
    type metadata accessor for Binding();
    v130 = v159;
    Binding.subscript.getter();

    v131 = v157;
    sub_1000F6C94(v180, v119, v189, v174, 1, v124, v130, v157);
    KeyPath = swift_getKeyPath();
    v133 = v160;
    sub_1000C117C(v131, KeyPath, 0, v160);
    v134 = v184;
    swift_getWitnessTable();
    v135 = v183;
    v136 = *(v183 + 16);
    v137 = v158;
    v136(v158, v133, v134);
    v138 = *(v135 + 8);
    v138(v133, v134);
    v136(v133, v137, v134);
    v138(v137, v134);
    v116 = v200;
    (*(v135 + 32))(v200, v133, v134);
    (*(v135 + 56))(v116, 0, 1, v134);
  }

  v139 = v185;
  v140 = *(v185 + 16);
  v141 = v186;
  v140(v199, v116, v186);
  v210 = *(v139 + 8);
  v210(v116, v141);
  v142 = v195;
  v143 = OpaqueTypeMetadata2;
  v178(v195, v202);
  *&v217 = v142;
  v144 = v196;
  v145 = v207;
  v176(v196, v205, v207);
  *(&v217 + 1) = v144;
  v146 = v197;
  v147 = v198;
  (v175)(v197, v208, v198);
  *&v218 = v146;
  v148 = v199;
  v140(v116, v199, v141);
  *(&v218 + 1) = v116;
  v216[0] = v143;
  v216[1] = v145;
  v216[2] = v147;
  v216[3] = v141;
  v212 = OpaqueTypeConformance2;
  v213 = v188;
  v214 = v181;
  v211 = swift_getWitnessTable();
  v215 = swift_getWitnessTable();
  sub_100151024(&v217, 4uLL, v216);
  v149 = v210;
  v210(v148, v141);
  v150 = v182;
  v182(v208, v147);
  v151 = v145;
  v152 = v194;
  (v194)(v205, v151);
  v153 = v143;
  v154 = v201;
  (v201)(v202, v153);
  v149(v200, v141);
  v150(v197, v147);
  v152(v196, v207);
  return v154(v195, OpaqueTypeMetadata2);
}

uint64_t sub_100155940@<X0>(void *a1@<X8>)
{
  type metadata accessor for EntertainmentEventView();
  v2 = sub_100151494();
  v3 = (v2 + *(*v2 + 152));
  v5 = *v3;
  v4 = v3[1];

  sub_100151494();
  sub_100009F70(&qword_1002199C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001ACB00;
  *(v6 + 32) = Color.init(_:bundle:)();
  *(v6 + 40) = Color.init(_:bundle:)();

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  return result;
}

uint64_t sub_100155A4C(char a1)
{
  type metadata accessor for EntertainmentEventView();
  sub_100151494();
  sub_1000E9E74((a1 & 1) == 0);
}

uint64_t sub_100155AA8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for EntertainmentEventView();
  sub_100151494();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  sub_1000E8970(v3);
}

uint64_t sub_100155B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a2;
  v43 = a3;
  v6 = sub_100009F70(&qword_10021A8A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100009F70(&qword_10021A8B0);
  v39 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v37 = *(v14 - 8);
  v38 = v14;
  __chkstk_darwin(v14);
  v36 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009F70(&qword_10021A8B8);
  v17 = __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v35 - v21;
  v44 = a1;
  v23 = *(a1 + 16);
  if (v23)
  {
    v40 = v20;
    v41 = a4;
    if (*(v23 + 88) && (*(v23 + 80) & 1) != 0)
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        if (*(v23 + 32) > 1u || *(v23 + 32))
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v29 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
        }

        v30 = v44 + *(type metadata accessor for EntertainmentEventView() + 44);
        v31 = *v30;
        if (*(v30 + 8) == 1)
        {
          if ((v31 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {

          v35[1] = static os_log_type_t.fault.getter();
          v32 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v33 = v36;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100027EB0(v31, 0);
          (*(v37 + 8))(v33, v38);
          if (v45 != 1)
          {
LABEL_17:
            (*(v7 + 56))(v19, 1, 1, v6);
            v34 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
            v45 = v11;
            v46 = v34;
            swift_getOpaqueTypeConformance2();
            static ToolbarContentBuilder.buildIf<A>(_:)();
            sub_1000DBA94(v19);
            goto LABEL_9;
          }
        }
      }
    }

    else
    {
    }

LABEL_8:
    v25 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v25);
    v26 = v43;
    *&v35[-8] = v42;
    *&v35[-6] = v26;
    *&v35[-4] = v44;
    sub_100042DC4();
    ToolbarItem<>.init(placement:content:)();
    v27 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v7 + 16))(v19, v9, v6);
    (*(v7 + 56))(v19, 0, 1, v6);
    v45 = v11;
    v46 = v27;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000DBA94(v19);
    (*(v7 + 8))(v9, v6);
    (*(v39 + 8))(v13, v11);
LABEL_9:
    sub_1000DB938();
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    return sub_1000DBA94(v22);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001561DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EntertainmentEventView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (*(v9 + 32))(v13 + v12, v11, v8);
  *a4 = 0;
  *(a4 + 8) = sub_1001574CC;
  *(a4 + 16) = v13;
  return result;
}

uint64_t sub_100156320(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EntertainmentEventView();
  sub_100151494();
  v6 = *(a1 + 16);
  if (v6)
  {

    sub_1000EAB68(0, 2, 0, 3u, v6);

    sub_100024868(v5);
    DismissAction.callAsFunction()();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001564C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EntertainmentEventView();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  type metadata accessor for EntertainmentEventViewModel();
  (*(v6 + 16))(v8, a1, a2);
  sub_1000E8580(v8);
  KeyPath = swift_getKeyPath();
  sub_1001512F4(KeyPath, 0, v13);
  swift_getWitnessTable();
  v17 = *(v10 + 16);
  v17(v15, v13, v9);
  v18 = *(v10 + 8);
  v18(v13, v9);
  v17(a3, v15, v9);
  return v18(v15, v9);
}

uint64_t sub_1001566F4(uint64_t a1)
{
  type metadata accessor for EntertainmentEventView();
  sub_100151494();
  if (*(a1 + 16))
  {

    sub_1000EAB08(v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001567BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[179] = a5;
  v5[173] = a4;
  v5[167] = a3;
  v6 = type metadata accessor for EntertainmentEventView();
  v5[185] = v6;
  v7 = *(v6 - 8);
  v5[186] = v7;
  v5[187] = *(v7 + 64);
  v5[188] = swift_task_alloc();
  v5[189] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[190] = static MainActor.shared.getter();
  v5[191] = dispatch thunk of Actor.unownedExecutor.getter();
  v5[192] = v8;

  return _swift_task_switch(sub_1001568D8);
}

uint64_t sub_1001568D8()
{
  v1 = v0[189];
  v2 = v0[186];
  v3 = v0[185];
  v4 = v0[179];
  v5 = v0[173];
  v14 = v5;
  v17 = v0[167];
  v18 = v0[188];
  v15 = v4;
  v16 = *(v2 + 16);
  v16(v1);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[193] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v8 = *(v2 + 32);
  v8(v7 + v6, v1, v3);
  v9 = swift_task_alloc();
  v0[194] = v9;
  *(v9 + 16) = &unk_1001BA3B0;
  *(v9 + 24) = v7;
  swift_asyncLet_begin();
  (v16)(v18, v17, v3);
  v10 = swift_allocObject();
  v0[195] = v10;
  *(v10 + 16) = v14;
  *(v10 + 24) = v15;
  v8(v10 + v6, v18, v3);
  v11 = swift_task_alloc();
  v0[196] = v11;
  *(v11 + 16) = &unk_1001BA3D0;
  *(v11 + 24) = v10;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v12, sub_100156ADC, v0 + 162);
}

uint64_t sub_100156B30()
{

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_100156BC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100156C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100156C7C);
}

uint64_t sub_100156C7C()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100156D10);
}

uint64_t sub_100156D10()
{

  type metadata accessor for EntertainmentEventView();
  *(v0 + 48) = sub_100151494();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10005983C;

  return sub_1000EA520();
}

uint64_t sub_100156DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100156DF0);
}

uint64_t sub_100156DF0()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100156E84);
}

uint64_t sub_100156E84()
{

  type metadata accessor for EntertainmentEventView();
  *(v0 + 48) = sub_100151494();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100057EA0;

  return sub_1000E9EAC();
}

__n128 sub_100156FA4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100156FE4()
{
  v1 = type metadata accessor for EntertainmentEventView();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 40);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_100027EB0(*(v3 + *(v1 + 44)), *(v3 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_10015713C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for EntertainmentEventView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000D890;

  return sub_1001567BC(v6, v7, v0 + v5, v2, v3);
}

uint64_t sub_100157234()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for EntertainmentEventView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000214E4;

  return sub_100156C58(v0 + v5, v2, v3);
}

uint64_t sub_10015731C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for EntertainmentEventView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000214E4;

  return sub_100156DCC(v0 + v5, v2, v3);
}

uint64_t sub_100157418(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for EntertainmentEventView();

  return sub_100155AA8(a1, a2);
}

uint64_t sub_1001574E4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for EntertainmentEventView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_100157588@<X0>(void *a1@<X8>)
{
  type metadata accessor for EntertainmentEventView();

  return sub_100155940(a1);
}

uint64_t sub_100157614()
{
  v1 = type metadata accessor for EntertainmentEventView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 40);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_100027EB0(*(v2 + *(v1 + 44)), *(v2 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_100157764(char a1)
{
  type metadata accessor for EntertainmentEventView();

  return sub_100155A4C(a1);
}

uint64_t sub_1001577F0()
{
  type metadata accessor for NavigationPath();
  sub_10006FEE0();
  type metadata accessor for HeaderModule();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_1002188F8);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100027068();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021E3C0);
  swift_getOpaqueTypeConformance2();
  sub_10000B3DC(&qword_10021A8B8);
  sub_1000DB938();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for EntertainmentEventView();
  swift_getWitnessTable();
  sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100157F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100158060(v3 + 40, v12);
  v7 = v13;
  if (v13)
  {
    v8 = v14;
    sub_100028124(v12, v13);
    (*(v8 + 40))(a1, a2, 0, v7, v8);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
    return sub_100021498(v12);
  }

  else
  {
    sub_1001580D0(v12);
    v9 = type metadata accessor for URL();
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_100158060(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001580D0(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100219768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100158138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10015815C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1001581A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10015820C()
{
  type metadata accessor for Optional();
  if (v0 <= 0x3F)
  {
    sub_100010780();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v3 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1001583A0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  swift_getKeyPath();
  sub_10015B5EC();

  v3 = *(*v1 + 144);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a1, v1 + v3);
}

uint64_t sub_10015847C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1001583A0(&v9 - v5);
  v7 = (*(*(*(v2 + 88) + 8) + 136))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1001585D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v10 - v6;
  if (sub_10015C80C(v5))
  {
    v8 = 0;
  }

  else
  {
    sub_1001583A0(v7);
    v8 = sub_1000A0020(v3, *(*(v2 + 88) + 8));
    (*(v4 + 8))(v7, v3);
  }

  return v8 & 1;
}

uint64_t sub_1001586F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v11 - v6;
  v8 = sub_10015C80C(v5);
  sub_1001583A0(v7);
  v9 = *(v2 + 88);
  if (v8)
  {
    (*(v9 + 96))(v3);
  }

  else
  {
    (*(v9 + 88))(v3);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100158830(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10015847C(a1);
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  return sub_10015B764(v1, v2);
}

uint64_t sub_100158868(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1001583A0(&v9 - v5);
  v7 = (*(*(*(v2 + 88) + 8) + 120))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_10015897C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10015B5EC();

  v3 = *(*v1 + 128);
  swift_beginAccess();
  return sub_10000F680(v1 + v3, a1);
}

uint64_t sub_100158A2C()
{
  v0 = sub_10015D804();

  return v0;
}

uint64_t sub_100158A64(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1001583A0(&v9 - v5);
  v7 = sub_1000A199C(v6, v3, *(*(v2 + 88) + 8));
  (*(v4 + 8))(v6, v3);
  return v7;
}

void *sub_100158B60()
{
  v0 = sub_10015D504();
  v1 = v0;
  return v0;
}

uint64_t sub_100158B8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - v5;
  sub_1001583A0(&v8 - v5);
  (*(*(*(v2 + 88) + 8) + 176))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100158C98()
{
  v1 = *(*(*v0 + 88) + 8);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = __chkstk_darwin(AssociatedTypeWitness);
  v5 = *(v2 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-v6];
  sub_1001583A0(&v23[-v6]);
  (*(v1 + 128))(v2, v1);
  (*(v5 + 8))(v7, v2);
  sub_100009F70(&qword_10021C558);
  if (swift_dynamicCast())
  {
    v9 = v24;
    v8 = v25;
    v11 = v26;
    v10 = v27;
    sub_100009F70(qword_1002217A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001ACB00;
    *(inited + 32) = static EventCategory<>.tennis.getter();
    *(inited + 40) = v13;
    *(inited + 48) = v14;
    *(inited + 56) = v15;
    *(inited + 64) = static EventCategory<>.golf.getter();
    *(inited + 72) = v16;
    *(inited + 80) = v17;
    *(inited + 88) = v18;
    v24 = sub_10015D890();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v19 = Collection.isEmpty.getter();
    if ((v19 & 1) == 0)
    {
      v24 = v9;
      v25 = v8;
      v26 = v11;
      v27 = v10;
      __chkstk_darwin(v19);
      *&v23[-16] = &v24;
      v21 = sub_10015B460(sub_10015E3B0, &v23[-32], inited);
      swift_setDeallocating();
      swift_arrayDestroy();

      v20 = v21 ^ 1;
      return v20 & 1;
    }

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100158FB0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v17 - v4;
  v7 = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  sub_1001583A0(v5);
  (*(v7 + 80))(v2, v7);
  (*(v3 + 8))(v5, v2);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v13 + 8))(v12, AssociatedTypeWitness);
    return v16;
  }
}

uint64_t sub_100159240()
{
  sub_10015D890();
}

uint64_t sub_100159268@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10015B5EC();

  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100159350(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v20 - v6;
  v8 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_10001EF0C(a1);
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = v11;
  v14 = v12;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
LABEL_5:
    sub_10015C5C4(v11);
    v16 = type metadata accessor for URL();
    v17 = (*(*(v16 - 8) + 48))(v10, 1, v16);
    sub_10000D52C(v10, qword_100218748);
    if (v17 == 1)
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      sub_1001583A0(v7);
      v18 = sub_1000A0020(v4, *(*(v3 + 88) + 8));
      (*(v5 + 8))(v7, v4);
      LOBYTE(v15) = v18 ^ 1;
    }
  }

  return v15 & 1;
}

uint64_t sub_100159560()
{
  v0 = sub_10015D478();

  return v0;
}

uint64_t sub_100159598()
{
  swift_getKeyPath();
  sub_10015B5EC();

  return *(v0 + *(*v0 + 112));
}

uint64_t sub_100159620(char a1)
{
  v3 = *(*v1 + 112);
  sub_10001EBF4();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015B68C();
  }

  return result;
}

uint64_t sub_100159780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v16 - v7;
  v9 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  sub_1001583A0(v8);
  (*(*(v4 + 88) + 64))(v5);
  (*(v6 + 8))(v8, v5);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000D52C(v11, qword_100218748);
    v14 = 1;
  }

  else
  {
    sub_10015C6CC();
    URL.appending(queryItems:)();

    (*(v13 + 8))(v11, v12);
    v14 = 0;
  }

  return (*(v13 + 56))(a2, v14, 1, v12);
}

uint64_t sub_1001599B8()
{
  v0 = sub_100009F70(qword_100218748);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  sub_10015C5C4(v1);
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  v6 = sub_10000D52C(v3, qword_100218748);
  if (v5 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_10015C80C(v6);
  }

  return v7 & 1;
}

void sub_100159AAC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v9 = a1;
  v10 = sub_100158868(a1);
  v12 = v11;
  v13 = sub_100158A64(v10);
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = v9;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a2;
  *(inited + 160) = a3;
  *(inited + 168) = a4;
  if (*(a5 + 72))
  {
    v15 = *(a5 + 64);
    v16 = *(a5 + 72);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  sub_1000109A4(a2, a3, a4);

  v17 = sub_1001666DC(1, 5, 1, inited);
  v21 = v17;
  sub_1000109BC(&aBlock, v28);
  sub_1000EB0D0(4, v28, &v21, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001BDDE0;
  v19[4] = v17;
  v26 = sub_100038F2C;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000DCA40;
  v25 = &unk_100210C90;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v20);
}

uint64_t sub_100159D44(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_10015CC04(a1);
  return v2;
}

void sub_100159D84(uint64_t a1)
{
  v2 = sub_100158868(a1);
  v4 = v3;
  v5 = sub_100158A64(v2);
  sub_1000DCEDC(v2, v4, v5, a1);

  v7 = sub_10015C80C(v6);
  if ((v7 & 1) == 0)
  {
    v8 = sub_100158868(v7);
    v10 = v9;
    v11 = sub_100158A64(v8);
    sub_100009F70(qword_100218F38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AD8A0;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_10021CBD0;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = v10;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_10021CBA8;
    *(inited + 72) = v11;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_10021CC30;
    *(inited + 112) = 1;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_10021CC08;
    *(inited + 152) = xmmword_1001BA4C0;
    *(inited + 168) = 3;
    if (*(a1 + 72))
    {
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
    }

    else
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    v21 = v13;
    v22 = v14;

    v15 = sub_1001666DC(1, 5, 1, inited);
    v19 = v15;
    sub_1000109BC(&aBlock, v26);
    sub_1000EB0D0(4, v26, &v19, &type metadata for AnalyticsString, &off_10021CBD0);
    sub_100010A18(&aBlock);
    v16 = String._bridgeToObjectiveC()();
    v17 = swift_allocObject();
    v17[2] = 0xD00000000000001ELL;
    v17[3] = 0x80000001001BDDE0;
    v17[4] = v15;
    v24 = sub_100010AAC;
    v25 = v17;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1000DCA40;
    v23 = &unk_100210C40;
    v18 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v18);
  }
}

uint64_t sub_10015A038()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*(*v0 + 88) + 8);
  v1[4] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[5] = AssociatedTypeWitness;
  v1[6] = *(AssociatedTypeWitness - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v1[9] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v4;

  return _swift_task_switch(sub_10015A174);
}

uint64_t sub_10015A174()
{
  if (sub_10015D504())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    sub_100158B8C(0);
    v3 = swift_task_alloc();
    v0[11] = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_10015A298;
    v5 = v0[7];
    v6 = v0[5];

    return sub_10019C8F0(v5, v6, AssociatedConformanceWitness);
  }
}

uint64_t sub_10015A298(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);

  v7 = (v6 + 8);
  v8 = *(v4 + 56);
  v9 = *(v4 + 40);
  if (v1)
  {

    (*v7)(v8, v9);
    v10 = sub_10015A4B8;
  }

  else
  {
    *(v5 + 96) = a1;
    (*v7)(v8, v9);
    v10 = sub_10015A440;
  }

  return _swift_task_switch(v10);
}

uint64_t sub_10015A440()
{
  v1 = *(v0 + 96);

  sub_10015BDAC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015A4B8()
{

  sub_10015BDAC(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015A52C()
{
  v1[42] = v0;
  v1[43] = *v0;
  v2 = type metadata accessor for URLComponents();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[47] = static MainActor.shared.getter();
  v1[48] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[49] = v3;

  return _swift_task_switch(sub_10015A648);
}

uint64_t sub_10015A648()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_10015A774;

  return sub_10013AF88(v0 + 144, v4, v6);
}

uint64_t sub_10015A774()
{

  return _swift_task_switch(sub_10015A894);
}

uint64_t sub_10015A894()
{

  sub_10015C02C((v0 + 18));
  sub_10015DBEC((v0 + 10));
  if (v0[15] && v0[17])
  {
    sub_100009F70(&qword_10021C438);
    type metadata accessor for URLQueryItem();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1001ACB00;
    sub_10008319C((v0 + 10), (v0 + 34));
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    sub_1000831F8((v0 + 10));
    v2 = v1;
  }

  else
  {
    v2 = &_swiftEmptyArrayStorage;
  }

  v3 = v2[2];

  if (v3)
  {
    URLComponents.init()();
    sub_10015DBEC((v0 + 2));
    if (v0[7] && v0[9])
    {
      sub_100009F70(&qword_10021C438);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_1001ACB00;
      sub_10008319C((v0 + 2), (v0 + 26));
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      sub_1000831F8((v0 + 2));
    }

    v5 = v0[45];
    v4 = v0[46];
    v6 = v0[44];
    URLComponents.queryItems.setter();
    v7 = URLComponents.percentEncodedQuery.getter();
    sub_10015C180(v7, v8);
    (*(v5 + 8))(v4, v6);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10015AB78()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*v0 + 88);
  v3 = *(v2 + 80);
  v1[4] = v3;
  v1[5] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v1[13] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;

  return _swift_task_switch(sub_10015AD20);
}

uint64_t sub_10015AD20()
{
  v1 = v0[3];
  sub_1001583A0(v0[11]);
  v2 = *(v1 + 8);
  v6 = (*(v2 + 184) + **(v2 + 184));
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_10015AE48;
  v4 = v0[4];

  return v6(v4, v2);
}

uint64_t sub_10015AE48(uint64_t a1)
{
  v4 = *v2;
  v4[16] = v1;

  v5 = v4[11];
  v6 = v4[9];
  v7 = v4[4];
  if (v1)
  {
    v8 = *(v6 + 8);
    v4[18] = v8;
    v4[19] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v7);
    v9 = sub_10015B068;
  }

  else
  {
    v4[17] = a1;
    (*(v6 + 8))(v5, v7);
    v9 = sub_10015AFDC;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_10015AFDC()
{
  v1 = *(v0 + 136);

  sub_10015B8DC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015B068()
{
  v26 = v0;
  v1 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0 + 5;
    v6 = v1[5];
    v22 = v1[18];
    v7 = v1[10];
    v8 = v1[8];
    v10 = v1[3];
    v9 = v1[4];
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v11 = 136315394;
    sub_1001583A0(v7);
    (*(v10 + 80))(v9, v10);
    v22(v7, v9);
    v12 = *(v6 - 8);
    if ((*(v12 + 48))(v8, 1, v6) == 1)
    {
      v12 = v1[7];
      v5 = v1 + 6;
      v13 = 0xE100000000000000;
      v14 = 45;
    }

    else
    {
      v15 = v1[5];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v14 = (*(AssociatedConformanceWitness + 40))(v15, AssociatedConformanceWitness);
      v13 = v17;
    }

    (*(v12 + 8))(v1[8], *v5);
    v18 = sub_10005D4E8(v14, v13, &v25);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v19;
    *v23 = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch schedule for league: %s, error: %@", v11, 0x16u);
    sub_10000D52C(v23, &qword_10021B938);

    sub_100021498(v24);
  }

  else
  {
  }

  v20 = v1[1];

  return v20();
}

uint64_t sub_10015B3E4()
{
  v0 = sub_100009F70(qword_100218748);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v5 - v2;
  sub_100159780(v1, &v5 - v2);
  return sub_10015BB0C(v3);
}

uint64_t sub_10015B460(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v7 += 4;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_10015B524()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 574;
  }

  else
  {
    return 312;
  }
}

uint64_t sub_10015B588()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 1020;
  }

  else
  {
    return 555;
  }
}

uint64_t sub_10015B764(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 104));
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015B68C();
  }
}

uint64_t sub_10015B8DC(uint64_t a1)
{
  v3 = *(*v1 + 120);
  type metadata accessor for Array();
  swift_getWitnessTable();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015B68C();
  }
}

uint64_t sub_10015BA78(uint64_t a1)
{
  v2 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000F680(a1, &v6 - v3);
  return sub_10015BB0C(v4);
}

uint64_t sub_10015BB0C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = *(v4 + 128);
  swift_beginAccess();
  sub_10000F680(v1 + v8, v7);
  v13[0] = *(v4 + 80);
  sub_1000BA1A0();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = sub_10000D52C(v7, qword_100218748);
  if (v9)
  {
    swift_beginAccess();
    sub_1000BA254(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v10);
    v13[-1] = v13[0];
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v13[-1] = v2;
    *(&v13[-1] + 1) = a1;
    sub_10015B68C();
  }

  return sub_10000D52C(a1, qword_100218748);
}

uint64_t sub_10015BD34(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 128);
  swift_beginAccess();
  sub_1000BA254(a2, a1 + v4);
  return swift_endAccess();
}

void sub_10015BDAC(void *a1)
{
  v3 = *(*v1 + 136);
  sub_100009F70(&qword_10021D568);
  sub_1000BB21C();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    v5 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015B68C();
  }
}

uint64_t sub_10015BF24(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 144);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(a1 + v5, a2);
  return swift_endAccess();
}

double sub_10015BFE0@<D0>(_OWORD *a1@<X8>)
{
  sub_10015DBEC(v6);
  sub_10008319C(v6, &v5);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  result = *&v7;
  v4 = v8;
  a1[2] = v7;
  a1[3] = v4;
  return result;
}

uint64_t sub_10015C02C(uint64_t a1)
{
  swift_getKeyPath();
  sub_10015B68C();
  sub_1000831F8(a1);
}

uint64_t sub_10015C0DC(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + *(*a1 + 152));
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  sub_10008319C(a2, &v6);
}

uint64_t sub_10015C180(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 160));
  sub_100009F70(&qword_100219F00);
  sub_10007CA7C();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015B68C();
  }
}

uint64_t sub_10015C30C(uint64_t a1, uint64_t a2)
{
  v27[0] = a1;
  v27[1] = a2;
  v3 = *(*(*v2 + 88) + 8);
  v4 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v9 = v27 - v8;
  v10 = *(v4 - 8);
  v11 = __chkstk_darwin(v7);
  v13 = v27 - v12;
  v14 = sub_10015C80C(v11);
  v15 = 0;
  v16 = 0;
  if ((v14 & 1) == 0)
  {
    sub_1001583A0(v13);
    (*(v3 + 168))(v4, v3);
    (*(v10 + 8))(v13, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = sub_1000FC8F4(AssociatedTypeWitness, AssociatedConformanceWitness);
    v16 = v18;
    v14 = (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  v19 = v15;
  v20 = sub_10015C80C(v14);
  if (v20)
  {
    result = sub_10015CB74();
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    result = sub_100158FB0(v20);
    if (!v16)
    {
      return result;
    }
  }

  if (!v22)
  {
    return v15;
  }

  v23 = result;
  v24 = v22;
  sub_100009F70(&qword_100219EF8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001ACB00;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_100096600();
  *(v25 + 32) = v19;
  *(v25 + 40) = v16;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  *(v25 + 64) = v26;
  *(v25 + 72) = v23;
  *(v25 + 80) = v24;
  return String.init(format:_:)();
}

uint64_t sub_10015C5C4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - v5;
  sub_1001583A0(&v8 - v5);
  (*(*(v2 + 88) + 64))(v3);
  return (*(v4 + 8))(v6, v3);
}

void *sub_10015C6CC()
{
  sub_10015DBEC(v3);
  if (!v4 || !v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100009F70(&qword_10021C438);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001ACB00;
  sub_10008319C(v3, &v2);
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  sub_1000831F8(v3);
  return v0;
}

uint64_t sub_10015C80C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v24[-v4];
  v7 = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11];
  v13 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v13 - 8);
  v15 = &v24[-v14];
  sub_1001583A0(v5);
  (*(v7 + 96))(v2, v7);
  (*(v3 + 8))(v5, v2);
  v16 = *(AssociatedTypeWitness - 8);
  v17 = 1;
  if ((*(v16 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v18 = 0;
    AssociatedTypeWitness = v9;
  }

  else
  {
    v19 = sub_10015B588();
    v20 = sub_10015B524();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(v19, v20, AssociatedTypeWitness, AssociatedConformanceWitness);
    v17 = 0;
    v18 = 1;
    v10 = v16;
  }

  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v15, v17, 1, v22);
  sub_10000D52C(v15, qword_100218748);
  return v18;
}

id sub_10015CB74()
{
  result = sub_10015D504();
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v1 = result;
      v2 = [result cityName];

      if (v2)
      {
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_10015CC04(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v4 - 8);
  v6 = &v36[-v5];
  v7 = *(v3 + 80);
  v8 = type metadata accessor for Optional();
  __chkstk_darwin(v8 - 8);
  v10 = &v36[-v9];
  (*(*(v7 - 8) + 56))(&v36[-v9], 1, 1, v7);
  v11 = *(*v1 + 96);
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 32))(v1 + v11, v10, v12);
  v13 = (v1 + *(*v1 + 104));
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v1 + *(*v1 + 112)) = 1;
  *(v1 + *(*v1 + 120)) = static Array._allocateUninitialized(_:)();
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1000B9AEC(v6, v1 + *(*v1 + 128));
  *(v1 + *(*v1 + 136)) = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v41, 0, 64);
  sub_10008319C(&v37, v36);
  sub_1000831F8(v41);
  v15 = (v1 + *(*v1 + 152));
  v16 = v40;
  v15[2] = v39;
  v15[3] = v16;
  v17 = v38;
  *v15 = v37;
  v15[1] = v17;
  v18 = (v1 + *(*v1 + 160));
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + *(*v1 + 168));
  v20 = objc_opt_self();
  v21 = [v20 mainBundle];
  v42._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD00000000000002ALL;
  v22._object = 0x80000001001BF370;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v42);

  *v19 = v24;
  v25 = (v1 + *(*v1 + 176));
  v26 = [v20 mainBundle];
  v43._object = 0xE000000000000000;
  v27._object = 0x80000001001C0320;
  v27._countAndFlagsBits = 0xD000000000000029;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v43);

  *v25 = v29;
  v30 = (v1 + *(*v1 + 184));
  v31 = [v20 mainBundle];
  v44._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000037;
  v32._object = 0x80000001001C0350;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v44);

  *v30 = v34;
  ObservationRegistrar.init()();
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 144), a1);
  return v1;
}

uint64_t sub_10015D0D8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);

  sub_10000D52C(v0 + *(*v0 + 128), qword_100218748);

  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 144), v2);

  v4 = *(*v0 + 192);
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_10015D340()
{
  sub_10015D0D8();

  return swift_deallocClassInstance();
}

uint64_t sub_10015D3B0()
{
  type metadata accessor for Sport();
  sub_10015E3D0(&qword_100221510, &type metadata accessor for Sport);
  return static EventCategory.== infix<A, B>(_:_:)() & 1;
}

uint64_t sub_10015D478()
{
  swift_getKeyPath();
  sub_10015B5EC();

  return *(v0 + *(*v0 + 104));
}

uint64_t sub_10015D504()
{
  swift_getKeyPath();
  sub_10015B5EC();

  return *(v0 + *(*v0 + 136));
}

uint64_t sub_10015D58C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a3;
  v8 = *v4;
  v9 = sub_100009F70(qword_100218748);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = *(v8 + 80);
  v14 = *(v13 - 8);
  __chkstk_darwin(v10);
  v16 = &v29 - v15;
  sub_1001583A0(&v29 - v15);
  v17 = sub_1000A0020(v13, *(*(v8 + 88) + 8));
  v18 = (*(v14 + 8))(v16, v13);
  sub_10015C5C4(v18);
  v19 = type metadata accessor for URL();
  v20 = (*(*(v19 - 8) + 48))(v12, 1, v19);
  sub_10000D52C(v12, qword_100218748);
  v21 = [a4 isHidden];
  v22 = *(a1 + 72);
  if (!v22)
  {
    v23 = 0;
    v24 = 0;
    if ((v20 == 1 || (v17 & 1) == 0) | v21 & 1)
    {
      return v24 & 1;
    }

    goto LABEL_11;
  }

  if (*(a1 + 64) == a2 && v22 == v30)
  {
    if (!((v20 == 1 || (v17 & 1) == 0) | v21 & 1))
    {
      v23 = 1;
LABEL_11:
      v24 = v23 ^ 1;
      return v24 & 1;
    }
  }

  else
  {
    v25 = v20 == 1;
    v26 = v21;
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (!((v25 || (v17 & 1) == 0) | v26 & 1))
    {
      v23 = v27;
      goto LABEL_11;
    }
  }

  v24 = 0;
  return v24 & 1;
}

uint64_t sub_10015D804()
{
  swift_getKeyPath();
  sub_10015B5EC();

  return *(v0 + *(*v0 + 160));
}

uint64_t sub_10015D890()
{
  swift_getKeyPath();
  sub_10015B5EC();

  return *(v0 + *(*v0 + 120));
}

__n128 sub_10015D94C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10015D974(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  v10 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  v11 = *(v4 + 88);
  v15[4] = *(*(*(v11 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = (*(v7 + 8))(v9, v6);
  if (v4)
  {
    swift_beginAccess();
    (*(v7 + 24))(v2 + v10, a1, v6);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v12);
    v15[-2] = v5;
    v15[-1] = v11;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[-2] = v2;
    v15[-1] = a1;
    sub_10015B68C();
  }
}

__n128 sub_10015DBEC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10015B5EC();

  v3 = v1 + *(*v1 + 152);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_10015DC90@<X0>(_OWORD *a1@<X8>)
{
  sub_10015DBEC(v6);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  v3 = v6[3];
  a1[2] = v6[2];
  a1[3] = v3;
  return sub_10008319C(v6, &v5);
}

uint64_t sub_10015DCE0(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_10008319C(v5, &v4);
  return sub_10015C02C(v5);
}

uint64_t sub_10015DDA8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v14[-v7];
  v9 = *(v4 + 144);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = *(v4 + 88);
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = (*(v6 + 8))(v8, v5);
  if (v4)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    *&v14[-16] = v5;
    *&v14[-8] = v10;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v14[-16] = v2;
    *&v14[-8] = a1;
    sub_10015B68C();
  }
}

uint64_t sub_10015DFFC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10015D890();
}

uint64_t sub_10015E070@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10015D804();
  a1[1] = v2;
}

uint64_t sub_10015E0B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10015C180(v1, v2);
}

uint64_t sub_10015E0FC()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 160));
  *v2 = v0[3];
  v2[1] = v1;
}

id sub_10015E154@<X0>(void *a1@<X8>)
{
  v2 = sub_10015D504();
  *a1 = v2;

  return v2;
}

void sub_10015E190(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10015BDAC(v1);
}

void sub_10015E1CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 136);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}