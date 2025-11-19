Swift::Void __swiftcall ICKeyboardHandler.validate(_:)(UICommand a1)
{
  [(objc_class *)a1.super.super.isa action];
  if (static Selector.== infix(_:_:)())
  {
    v3 = [v1 delegate];
    if (!v3)
    {
      return;
    }

    v4 = v3;
    if ([v3 respondsToSelector:"cmd3Title"])
    {
      v5 = [v4 cmd3Title];
LABEL_17:
      v12 = v5;
      swift_unknownObjectRelease();
      v54 = v12;
      v13 = v12;
      if (!v12)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = String._bridgeToObjectiveC()();

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = String._bridgeToObjectiveC()();
      }

      v14 = v12;
      [(objc_class *)a1.super.super.isa setTitle:v13];

      [(objc_class *)a1.super.super.isa setDiscoverabilityTitle:v54];
      goto LABEL_20;
    }

    goto LABEL_57;
  }

  if (static Selector.== infix(_:_:)())
  {
    v6 = [v1 delegate];
    if (!v6)
    {
      return;
    }

    v7 = v6;
    if ([v6 respondsToSelector:"toggleEditorCalloutsTitle"])
    {
      v5 = [v7 toggleEditorCalloutsTitle];
      goto LABEL_17;
    }

    goto LABEL_57;
  }

  if (static Selector.== infix(_:_:)())
  {
    v8 = [v1 delegate];
    if (!v8)
    {
      return;
    }

    v9 = v8;
    if ([v8 respondsToSelector:"toggleNoteActivityTitle"])
    {
      v5 = [v9 toggleNoteActivityTitle];
      goto LABEL_17;
    }

    goto LABEL_57;
  }

  if (static Selector.== infix(_:_:)())
  {
    v10 = [v1 delegate];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    if ([v10 respondsToSelector:"toggleFolderActivityTitle"])
    {
      v5 = [v11 toggleFolderActivityTitle];
      goto LABEL_17;
    }

    goto LABEL_57;
  }

  if (static Selector.== infix(_:_:)())
  {
    v15 = [v1 delegate];
    if (v15)
    {
      v16 = v15;
      if ([v15 respondsToSelector:"toggleLockNoteTitle"])
      {
        v17 = [v16 toggleLockNoteTitle];
        swift_unknownObjectRelease();
        v18 = v17;
        v19 = v17;
        if (!v17)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = String._bridgeToObjectiveC()();

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = String._bridgeToObjectiveC()();
        }

        v20 = v17;
        [(objc_class *)a1.super.super.isa setTitle:v19];

        [(objc_class *)a1.super.super.isa setDiscoverabilityTitle:v18];
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v29 = [v1 delegate];
    if (v29)
    {
      v30 = v29;
      if ([v29 respondsToSelector:"toggleLockNoteIconString"])
      {
        v31 = [v30 toggleLockNoteIconString];
        swift_unknownObjectRelease();
        if (!v31)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = String._bridgeToObjectiveC()();
        }

LABEL_56:
        v54 = [objc_opt_self() systemImageNamed:v31];

        [(objc_class *)a1.super.super.isa setImage:v54];
LABEL_20:

        return;
      }

      goto LABEL_57;
    }

    return;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      v27 = [v1 delegate];
      if (!v27)
      {
        return;
      }

      v28 = v27;
      if ([v27 respondsToSelector:"duplicateNotesTitle"])
      {
        v54 = [v28 duplicateNotesTitle];
        swift_unknownObjectRelease();
        if (!v54)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = String._bridgeToObjectiveC()();
        }

        [(objc_class *)a1.super.super.isa setTitle:v54];
        goto LABEL_20;
      }

      goto LABEL_57;
    }

    if (static Selector.== infix(_:_:)())
    {
      v32 = [v1 delegate];
      if (!v32)
      {
        return;
      }

      v33 = v32;
      if ([v32 respondsToSelector:"toggleTodoCheckedTitle"])
      {
        v5 = [v33 toggleTodoCheckedTitle];
        goto LABEL_17;
      }

      goto LABEL_57;
    }

    if (static Selector.== infix(_:_:)())
    {
      v36 = [v1 delegate];
      if (!v36)
      {
        return;
      }

      v37 = v36;
      if (([v36 respondsToSelector:"toggleBoldfaceState"] & 1) == 0)
      {
        goto LABEL_57;
      }

      v38 = [v37 toggleBoldfaceState];
      goto LABEL_80;
    }

    if (static Selector.== infix(_:_:)())
    {
      v39 = [v1 delegate];
      if (!v39)
      {
        return;
      }

      v40 = v39;
      if (([v39 respondsToSelector:"toggleItalicsState"] & 1) == 0)
      {
        goto LABEL_57;
      }

      v38 = [v40 toggleItalicsState];
      goto LABEL_80;
    }

    if (static Selector.== infix(_:_:)())
    {
      v41 = [v1 delegate];
      if (!v41)
      {
        return;
      }

      v42 = v41;
      if (([v41 respondsToSelector:"toggleUnderlineState"] & 1) == 0)
      {
        goto LABEL_57;
      }

      v38 = [v42 toggleUnderlineState];
      goto LABEL_80;
    }

    if (static Selector.== infix(_:_:)())
    {
      v43 = [v1 delegate];
      if (!v43)
      {
        return;
      }

      v44 = v43;
      if (([v43 respondsToSelector:"toggleStrikethroughState"] & 1) == 0)
      {
        goto LABEL_57;
      }

      v38 = [v44 toggleStrikethroughState];
      goto LABEL_80;
    }

    if (static Selector.== infix(_:_:)())
    {
      v45 = [v1 delegate];
      if (!v45)
      {
        return;
      }

      v46 = v45;
      if (([v45 respondsToSelector:"toggleEmphasisState"] & 1) == 0)
      {
        goto LABEL_57;
      }

      v38 = [v46 toggleEmphasisState];
LABEL_80:
      v47 = v38;
      swift_unknownObjectRelease();
      v48 = "setState:";
      isa = a1.super.super.isa;
      v50 = v47;
LABEL_81:

      [isa v48];
      return;
    }

    if ((static Selector.== infix(_:_:)() & 1) == 0)
    {
      return;
    }

    v51 = [v1 delegate];
    if (v51)
    {
      v52 = v51;
      if ([v51 respondsToSelector:"canPerformManageSharedFolderAction"])
      {
        v53 = [v52 canPerformManageSharedFolderAction];
        swift_unknownObjectRelease();
        if (v53)
        {
          v50 = 0;
LABEL_93:
          v48 = "setAttributes:";
          isa = a1.super.super.isa;
          goto LABEL_81;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v50 = 4;
    goto LABEL_93;
  }

  v21 = [v1 delegate];
  if (v21)
  {
    v22 = v21;
    if ([v21 respondsToSelector:"togglePinNoteActivityTitle"])
    {
      v23 = [v22 togglePinNoteActivityTitle];
      swift_unknownObjectRelease();
      v24 = v23;
      v25 = v23;
      if (!v23)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = String._bridgeToObjectiveC()();

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
      }

      v26 = v23;
      [(objc_class *)a1.super.super.isa setTitle:v25];

      [(objc_class *)a1.super.super.isa setDiscoverabilityTitle:v24];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v34 = [v1 delegate];
  if (v34)
  {
    v35 = v34;
    if ([v34 respondsToSelector:"togglePinNoteIconName"])
    {
      v31 = [v35 togglePinNoteIconName];
      swift_unknownObjectRelease();
      if (!v31)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = String._bridgeToObjectiveC()();
      }

      goto LABEL_56;
    }

LABEL_57:

    swift_unknownObjectRelease();
  }
}

id sub_1002C663C(uint64_t a1, SEL *a2)
{
  result = [v2 delegate];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector:*a2])
    {
      sub_10027CA3C(a1, v13);
      v7 = v14;
      if (v14)
      {
        v8 = sub_10017CC60(v13, v14);
        v9 = *(v7 - 8);
        __chkstk_darwin(v8);
        v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v9 + 16))(v11);
        v12 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v9 + 8))(v11, v7);
        sub_100009F60(v13);
      }

      else
      {
        v12 = 0;
      }

      [v6 *a2];
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1002C67FC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
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
    memset(v19, 0, sizeof(v19));
    v7 = a1;
  }

  v8 = [a1 delegate];
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector:*a4])
    {
      sub_10027CA3C(v19, v17);
      v10 = v18;
      if (v18)
      {
        v11 = sub_10017CC60(v17, v18);
        v12 = *(v10 - 8);
        __chkstk_darwin(v11);
        v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v12 + 16))(v14);
        v15 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v12 + 8))(v14, v10);
        sub_100009F60(v17);
      }

      else
      {
        v15 = 0;
      }

      [v9 *a4];
      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_10027CAAC(v19);
}

id sub_1002C6DDC(void *a1, SEL *a2)
{
  result = [v2 delegate];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector:*a2])
    {
      sub_10017CC60(a1, a1[3]);
      [v6 *a2];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002C6EA8(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v7 = [v6 delegate];
  if (v7)
  {
    v8 = v7;
    if ([v7 respondsToSelector:*a4])
    {
      sub_10017CC60(v10, v10[3]);
      [v8 *a4];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_100009F60(v10);
}

id ICKeyboardHandler.findAndReplace(_:)(uint64_t a1)
{
  v2 = v1;
  result = [v2 delegate];
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector:"performFindAndReplace:"])
    {
      sub_10027CA3C(a1, &v6);
      sub_10015DA04(&qword_1006BE7A0);
      [v5 performFindAndReplace:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

__n128 sub_1002C7200@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v36 = a1;
  v40 = a2;
  v2 = type metadata accessor for PlainListStyle();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10015DA04(&qword_1006C30E0);
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v36 - v7;
  v9 = sub_10015DA04(&qword_1006C30E8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  sub_10015DA04(&qword_1006BE910);
  _s6ObjectVMa(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100531E30;
  _s10ControllerCMa(0);
  sub_1002C83FC(&qword_1006C30F0, _s10ControllerCMa);
  v14 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *&v41 = v13;
  swift_getKeyPath();
  type metadata accessor for SyncingDebugSection.SyncStatusLabel();
  sub_1000060B4(&qword_1006C30F8, &unk_1006C2648);
  sub_1002C83FC(&qword_1006C3100, type metadata accessor for SyncingDebugSection.SyncStatusLabel);
  sub_1002C83FC(&qword_1006C3108, _s6ObjectVMa);
  List<>.init<A, B>(_:children:rowContent:)();
  PlainListStyle.init()();
  sub_1000060B4(&qword_1006C3110, &qword_1006C30E0);
  v16 = v37;
  v15 = v38;
  View.listStyle<A>(_:)();
  (*(v39 + 8))(v5, v15);
  (*(v6 + 8))(v8, v16);
  v17 = static Alignment.center.getter();
  v19 = v18;
  v20 = static Color.white.getter();
  v21 = &v12[*(sub_10015DA04(&qword_1006C3118) + 36)];
  *v21 = v20;
  v21[1] = v17;
  v21[2] = v19;
  v22 = &v12[*(v10 + 44)];
  v23 = *(type metadata accessor for RoundedRectangle() + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = type metadata accessor for RoundedCornerStyle();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #8.0 }

  *v22 = _Q0;
  *&v22[*(sub_10015DA04(&qword_1006C3120) + 36)] = 256;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v31 = v40;
  sub_10002F870(v12, v40);
  v32 = v31 + *(sub_10015DA04(&qword_1006C3128) + 36);
  v33 = v46;
  *(v32 + 64) = v45;
  *(v32 + 80) = v33;
  *(v32 + 96) = v47;
  v34 = v42;
  *v32 = v41;
  *(v32 + 16) = v34;
  result = v44;
  *(v32 + 32) = v43;
  *(v32 + 48) = result;
  return result;
}

uint64_t sub_1002C77C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10015DA04(&qword_1006C3200);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_10015DA04(&qword_1006C3208);
  sub_1002C7A34(&v9[*(v10 + 44)]);
  sub_1002C7CA4(a1, &v37);
  v11 = v38;
  v29 = v39;
  v30 = v37;
  v28 = v40;
  v27 = v41;
  v12 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v14 = static Color.secondary.getter();
  v15 = swift_getKeyPath();
  v26 = v15;
  v31 = v7;
  sub_100006038(v9, v7, &qword_1006C3200);
  sub_100006038(v7, a2, &qword_1006C3200);
  v16 = a2 + *(sub_10015DA04(&qword_1006C3210) + 48);
  v17 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v11;
  v18 = v11;
  v19 = v29;
  v20 = v28;
  *&v33 = v29;
  *(&v33 + 1) = v28;
  v21 = v27;
  LOWORD(v34) = v27;
  *(&v34 + 1) = KeyPath;
  *&v35 = v12;
  *(&v35 + 1) = v15;
  v36 = v14;
  *(v16 + 64) = v14;
  v22 = v33;
  *v16 = v32;
  *(v16 + 16) = v22;
  v23 = v35;
  *(v16 + 32) = v34;
  *(v16 + 48) = v23;
  sub_100006038(&v32, &v37, &qword_1006C3218);
  sub_1000073B4(v9, &qword_1006C3200);
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  v42 = KeyPath;
  v43 = v12;
  v44 = v26;
  v45 = v14;
  sub_1000073B4(&v37, &qword_1006C3218);
  return sub_1000073B4(v31, &qword_1006C3200);
}

uint64_t sub_1002C7A34@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006C3220);
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v24[-v7];

  v9 = Image.init(systemName:)();
  v10 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v12 = (v8 + *(v3 + 44));
  v13 = *(sub_10015DA04(&qword_1006BE3D0) + 28);
  v14 = enum case for Image.Scale.medium(_:);
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v8 = v9;
  v8[1] = KeyPath;
  v8[2] = v10;

  v16 = Text.strikethrough(_:color:)();
  v18 = v17;
  LOBYTE(v10) = v19;
  v21 = v20;

  sub_100006038(v8, v6, &qword_1006C3220);
  sub_100006038(v6, a1, &qword_1006C3220);
  v22 = a1 + *(sub_10015DA04(&qword_1006C3228) + 48);
  *v22 = v16;
  *(v22 + 8) = v18;
  *(v22 + 16) = v10 & 1;
  *(v22 + 24) = v21;
  sub_1001B39C4(v16, v18, v10 & 1);

  sub_1000073B4(v8, &qword_1006C3220);
  sub_1001B39D4(v16, v18, v10 & 1);

  return sub_1000073B4(v6, &qword_1006C3220);
}

uint64_t sub_1002C7CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10015DA04(&unk_1006C1710);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v17 = _s6ObjectVMa(0);
  v18 = (a1 + *(v17 + 40));
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    sub_100006038(a1 + *(v17 + 36), v9, &unk_1006C1710);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1000073B4(v9, &unk_1006C1710);
      *&v30 = v20;
      *(&v30 + 1) = v19;
      *&v31 = 0;
      *(&v31 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v32) = 1;
      swift_bridgeObjectRetain_n();
      _ConditionalContent<>.init(storage:)();
      v30 = v33;
      v31 = v34;
      v32 = v35;
      sub_10015DA04(&qword_1006C2A50);
      sub_1002B02D0();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
      *&v33 = v20;
      *(&v33 + 1) = v19;

      v25._countAndFlagsBits = 544108320;
      v25._object = 0xE400000000000000;
      String.append(_:)(v25);
      v26 = Date.formatted()();
      String.append(_:)(v26);

      v30 = v33;
      *&v31 = 0;
      *(&v31 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v32) = 0;

      _ConditionalContent<>.init(storage:)();
      v30 = v33;
      v31 = v34;
      v32 = v35;
      sub_10015DA04(&qword_1006C2A50);
      sub_1002B02D0();
      _ConditionalContent<>.init(storage:)();

      result = (*(v11 + 8))(v16, v10);
    }

    v22 = v33;
    v24 = v34;
    v27 = v35;
    if (v36)
    {
      v28 = 256;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_13;
  }

  sub_100006038(a1 + *(v17 + 36), v7, &unk_1006C1710);
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v7, v10);
    *&v33 = 0x2064657461647055;
    *(&v33 + 1) = 0xEB00000000206E6FLL;
    v29 = Date.formatted()();
    String.append(_:)(v29);

    v30 = v33;
    *&v31 = 0;
    *(&v31 + 1) = _swiftEmptyArrayStorage;
    v32 = 256;
    sub_10015DA04(&qword_1006C2A50);
    sub_1002B02D0();
    _ConditionalContent<>.init(storage:)();
    result = (*(v11 + 8))(v14, v10);
    v22 = v33;
    v24 = v34;
    v27 = v35;
    if (v36)
    {
      v28 = 256;
    }

    else
    {
      v28 = 0;
    }

LABEL_13:
    v23 = v28 | v27;
    goto LABEL_14;
  }

  result = sub_1000073B4(v7, &unk_1006C1710);
  v22 = 0uLL;
  v23 = -256;
  v24 = 0uLL;
LABEL_14:
  *a2 = v22;
  *(a2 + 16) = v24;
  *(a2 + 32) = v23;
  return result;
}

uint64_t sub_1002C81AC@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10015DA04(&qword_1006C31F0);
  sub_1002C77C4(v1, a1 + *(v3 + 44));
  KeyPath = swift_getKeyPath();
  result = sub_10015DA04(&qword_1006C31F8);
  v6 = a1 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 1;
  *(v6 + 16) = 0;
  return result;
}

uint64_t sub_1002C823C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1002C82B8(uint64_t a1, void **a2)
{
  v4 = _s6ObjectVMa(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_10029865C(a1, &v13 - v8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10029865C(v9, v7);
  v11 = v10;
  static Published.subscript.setter();
  return sub_1002986C0(v9);
}

uint64_t type metadata accessor for SyncingDebugSection.SyncStatusLabel()
{
  result = qword_1006C3188;
  if (!qword_1006C3188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002C83FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002C846C()
{
  result = _s6ObjectVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1002C84D8()
{
  result = qword_1006C31C0;
  if (!qword_1006C31C0)
  {
    sub_10017992C(&qword_1006C3128);
    sub_1002C8564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C31C0);
  }

  return result;
}

unint64_t sub_1002C8564()
{
  result = qword_1006C31C8;
  if (!qword_1006C31C8)
  {
    sub_10017992C(&qword_1006C30E8);
    sub_1002C861C();
    sub_1000060B4(&qword_1006C31E8, &qword_1006C3120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C31C8);
  }

  return result;
}

unint64_t sub_1002C861C()
{
  result = qword_1006C31D0;
  if (!qword_1006C31D0)
  {
    sub_10017992C(&qword_1006C3118);
    sub_10017992C(&qword_1006C30E0);
    type metadata accessor for PlainListStyle();
    sub_1000060B4(&qword_1006C3110, &qword_1006C30E0);
    swift_getOpaqueTypeConformance2();
    sub_1000060B4(&qword_1006C31D8, &qword_1006C31E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C31D0);
  }

  return result;
}

uint64_t sub_1002C87A4(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_1002C886C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1002C88D0()
{
  result = qword_1006C3230;
  if (!qword_1006C3230)
  {
    sub_10017992C(&qword_1006C31F8);
    sub_1000060B4(&qword_1006C3238, &qword_1006C3240);
    sub_1000060B4(&qword_1006C3248, &qword_1006C3250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3230);
  }

  return result;
}

uint64_t sub_1002C89C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1002CB480(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void *sub_1002C90D8()
{
  v1 = *(v0 + OBJC_IVAR___ICTagsActionMenu_viewControllerManager);
  v2 = sub_1002C9304(v1);
  sub_10015DA04(&qword_1006C32B0);
  Array.appendNonNil(_:)();

  v6 = sub_1002C9E14(v1, &OBJC_IVAR___ICTagsActionMenu_presentingViewController, &OBJC_IVAR___ICTagsActionMenu_completion, &unk_100653DD8);
  Array.appendNonNil(_:)();

  sub_1002C9FF8();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v3 = sub_1002CA120();
  Array.appendNonNil(_:)();

  v7 = sub_1002CA248();
  Array.appendNonNil(_:)();

  if ([*(v0 + OBJC_IVAR___ICTagsActionMenu_tagSelection) isEmpty])
  {
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_1000054A4(0, &qword_1006C6400);

    v4 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000054A4(0, &qword_1006C6400);
    v4 = _swiftEmptyArrayStorage;
  }

  return v4;
}

id sub_1002C9304(void *a1)
{
  if ([a1 noteContainerViewMode] != 1)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  result = [result view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result ic_hasCompactWidth];

  if (v6 || (v7 = objc_opt_self(), ([v7 ic_isiPad] & 1) == 0) && ((objc_msgSend(v7, "ic_isVision") & 1) == 0 || (objc_msgSend(a1, "isMainSplitViewDisplayModeSecondaryOnly") & 1) != 0))
  {

    return 0;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v43 = @"ICNoteBrowseCollectionViewGalleryWideModeNumberOfColumnsKey";
  v10 = String._bridgeToObjectiveC()();
  v42 = objc_opt_self();
  v11 = [v42 systemImageNamed:v10];

  v41 = objc_opt_self();
  v12 = [v41 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 localizedStringForKey:v13 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000054A4(0, &unk_1006BD380);
  v15 = swift_allocObject();
  v15[2] = v45;
  v15[3] = v9;
  v15[4] = 6;
  v15[5] = v1;
  v44 = v11;

  v16 = v1;
  v40 = v15;
  v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v42 systemImageNamed:{v18, 0, 8, 0, sub_1002CB554, v40}];

  v20 = [v41 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 localizedStringForKey:v21 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = swift_allocObject();
  v23[2] = v45;
  v23[3] = v9;
  v23[4] = 3;
  v23[5] = v16;
  v24 = v16;
  v25 = v19;
  v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v27 = [a1 adjustedNumberOfGalleryViewColumns];
  v28 = [objc_opt_self() standardUserDefaults];
  v29 = [v28 integerForKey:v43];

  v31 = v29 == 3 || v27 == 3;
  [v26 setIc_disabled:v31];
  v33 = v29 == 6 || v27 == 6;
  [v17 setIc_disabled:v33];
  sub_10015DA04(&unk_1006BD390);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100531E20;
  *(v34 + 32) = v17;
  *(v34 + 40) = v26;
  v35 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C6400);
  v36 = v17;
  v37 = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v39 = [v35 ic_inlineMenuWithElementSize:1 children:isa];

  return v39;
}

id sub_1002C987C(void *a1)
{
  if ([a1 noteContainerViewMode] != 1)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  result = [result view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result ic_hasCompactWidth];

  if (v6 || (v7 = objc_opt_self(), ([v7 ic_isiPad] & 1) == 0) && ((objc_msgSend(v7, "ic_isVision") & 1) == 0 || (objc_msgSend(a1, "isMainSplitViewDisplayModeSecondaryOnly") & 1) != 0))
  {

    return 0;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v43 = @"ICNoteBrowseCollectionViewGalleryWideModeNumberOfColumnsKey";
  v10 = String._bridgeToObjectiveC()();
  v42 = objc_opt_self();
  v11 = [v42 systemImageNamed:v10];

  v41 = objc_opt_self();
  v12 = [v41 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 localizedStringForKey:v13 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000054A4(0, &unk_1006BD380);
  v15 = swift_allocObject();
  v15[2] = v45;
  v15[3] = v9;
  v15[4] = 6;
  v15[5] = v1;
  v44 = v11;

  v16 = v1;
  v40 = v15;
  v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v42 systemImageNamed:{v18, 0, 8, 0, sub_1002CB5A4, v40}];

  v20 = [v41 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 localizedStringForKey:v21 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = swift_allocObject();
  v23[2] = v45;
  v23[3] = v9;
  v23[4] = 3;
  v23[5] = v16;
  v24 = v16;
  v25 = v19;
  v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v27 = [a1 adjustedNumberOfGalleryViewColumns];
  v28 = [objc_opt_self() standardUserDefaults];
  v29 = [v28 integerForKey:v43];

  v31 = v29 == 3 || v27 == 3;
  [v26 setIc_disabled:v31];
  v33 = v29 == 6 || v27 == 6;
  [v17 setIc_disabled:v33];
  sub_10015DA04(&unk_1006BD390);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100531E20;
  *(v34 + 32) = v17;
  *(v34 + 40) = v26;
  v35 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C6400);
  v36 = v17;
  v37 = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v39 = [v35 ic_inlineMenuWithElementSize:1 children:isa];

  return v39;
}

id sub_1002C9E14(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ([a1 behavior] == 1)
  {
    return 0;
  }

  aBlock[6] = _swiftEmptyArrayStorage;
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = [objc_allocWithZone(ICNoteContainerViewModeActivity) initWithPresentingViewController:Strong viewControllerManager:a1];

  v11 = (v4 + *a3);
  if (*v11)
  {
    v12 = v11[1];
    aBlock[4] = *v11;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10017C07C;
    aBlock[3] = a4;
    v13 = _Block_copy(aBlock);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v10 actionWithCompletion:v13];
  _Block_release(v13);
  aBlock[0] = v14;
  sub_10015DA04(&qword_1006C32B8);
  Array.appendNonNil(_:)();
  v15 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v15 ic_inlineMenuWithChildren:isa];

  return v17;
}

id sub_1002C9FF8()
{
  v0 = sub_1002CA3B8();
  sub_10015DA04(&qword_1006C32B8);
  Array.appendNonNil(_:)();

  v1 = sub_1002CA534();
  Array.appendNonNil(_:)();

  v6 = sub_1002CA6D8();
  Array.appendNonNil(_:)();

  v2 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 ic_inlineMenuWithChildren:{isa, v6, _swiftEmptyArrayStorage}];

  return v4;
}

id sub_1002CA120()
{
  if ([*(v0 + OBJC_IVAR___ICTagsActionMenu_tagSelection) mode])
  {
    return 0;
  }

  v2 = sub_1002CAA34();
  sub_10015DA04(&qword_1006C32B8);
  Array.appendNonNil(_:)();

  v6 = sub_1002CA8A0();
  Array.appendNonNil(_:)();

  v3 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 ic_inlineMenuWithChildren:{isa, v6, _swiftEmptyArrayStorage}];

  return v5;
}

id sub_1002CA248()
{
  if ([*(v0 + OBJC_IVAR___ICTagsActionMenu_tagSelection) mode])
  {
    return 0;
  }

  v2 = sub_1002CACEC();
  v3 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100534670;
  *(v4 + 32) = v2;
  sub_1000054A4(0, &qword_1006C6400);
  v5 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v3 ic_inlineMenuWithChildren:isa];

  return v7;
}

id sub_1002CA3B8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong tagsActionMenuNoteCount:v0];
    swift_unknownObjectRelease();
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  v5 = [objc_allocWithZone(ICSelectNotesActivity) initWithPresentingViewController:v4];

  if (*(v0 + OBJC_IVAR___ICTagsActionMenu_completion))
  {
    v6 = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion + 8);
    v10[4] = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion);
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10017C07C;
    v10[3] = &unk_100653DB0;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 actionWithCompletion:v7];
  _Block_release(v7);
  [v8 setIc_disabled:v3];

  return v8;
}

id sub_1002CA534()
{
  v1 = [*(v0 + OBJC_IVAR___ICTagsActionMenu_viewControllerManager) noteContainerViewMode];
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 eventReporter];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(ICSortQueryActivity) initWithPresentingViewController:Strong noteContainerViewMode:v1 eventReporter:v6];

  if (*(v0 + OBJC_IVAR___ICTagsActionMenu_completion))
  {
    v8 = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion + 8);
    v12[4] = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion);
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10017C07C;
    v12[3] = &unk_100653D88;
    v9 = _Block_copy(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 menuWithCompletion:v9];
  _Block_release(v9);

  return v10;
}

id sub_1002CA6D8()
{
  if (![objc_opt_self() supportsQueryDateHeaders])
  {
    return 0;
  }

  v1 = [*(v0 + OBJC_IVAR___ICTagsActionMenu_viewControllerManager) noteContainerViewMode];
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 eventReporter];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = [objc_allocWithZone(ICQueryDateHeadersActivity) initWithPresentingViewController:Strong noteContainerViewMode:v1 eventReporter:v6];

  if (*(v0 + OBJC_IVAR___ICTagsActionMenu_completion))
  {
    v9 = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion + 8);
    v12[4] = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion);
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10017C07C;
    v12[3] = &unk_100653D60;
    v10 = _Block_copy(v12);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v8 menuWithCompletion:v10];
  _Block_release(v10);

  return v11;
}

id sub_1002CA8A0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + OBJC_IVAR___ICTagsActionMenu_tagSelection);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 eventReporter];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(ICDeleteTagActivity) initWithPresentingViewController:Strong tagSelection:v2 eventReporter:v6];

  v8 = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion + 8);
    v13[4] = v8;
    v13[5] = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10017C07C;
    v13[3] = &unk_100653D10;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 actionWithCompletion:v10];
  _Block_release(v10);

  return v11;
}

id sub_1002CAA34()
{
  v1 = *(v0 + OBJC_IVAR___ICTagsActionMenu_tagSelection);
  v2 = [v1 objectIDs];
  sub_1000054A4(0, &qword_1006BFEC0);
  sub_1001C607C();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *(v3 + 16);
  }

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [v1 objectIDs];
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_1000150AC(v6, &qword_1006BFEC0);

  if (!v7)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v0 + OBJC_IVAR___ICTagsActionMenu_viewControllerManager);
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    v13 = v9;
    if (v12)
    {
      v12 = [v12 eventReporter];
    }
  }

  else
  {
    v15 = v9;
    v12 = 0;
  }

  v16 = objc_allocWithZone(ICRenameTagActivity);
  v17 = v7;
  v18 = [v16 initWithPresentingViewController:Strong viewControllerManager:v9 tagObjectID:v17 eventReporter:v12];

  v19 = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion);
  if (v19)
  {
    v20 = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion + 8);
    v23[4] = v19;
    v23[5] = v20;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_10017C07C;
    v23[3] = &unk_100653D38;
    v21 = _Block_copy(v23);
  }

  else
  {
    v21 = 0;
  }

  v22 = [v18 actionWithCompletion:v21];

  _Block_release(v21);
  return v22;
}

id sub_1002CACEC()
{
  v1 = *(v0 + OBJC_IVAR___ICTagsActionMenu_tagSelection);
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 eventReporter];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(ICCreateSmartFolderActivity) initWithTagSelection:v1 presentingViewController:Strong eventReporter:v6];

  v8 = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion + 8);
    v13[4] = v8;
    v13[5] = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10017C07C;
    v13[3] = &unk_100653CE8;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 actionWithCompletion:v10];
  _Block_release(v10);

  return v11;
}

uint64_t sub_1002CAF64()
{
  v1 = *(v0 + OBJC_IVAR___ICTagsActionMenu_completion);
  sub_100010854(v1);
  return v1;
}

void *sub_1002CAFB4()
{
  v1 = *(v0 + OBJC_IVAR___ICTagsActionMenu_presentingBarButtonItem);
  v2 = v1;
  return v1;
}

uint64_t sub_1002CAFE4()
{
  swift_getObjectType();

  return ActionMenuProvider.title.getter();
}

void sub_1002CB024()
{
  swift_getObjectType();

  ActionMenuProvider.willShowMenu()();
}

UIMenu sub_1002CB060(Swift::Bool a1)
{
  swift_getObjectType();

  return ActionMenuProvider.makeMenu(deferredChildren:)(a1);
}

UIDeferredMenuElement sub_1002CB0B0()
{
  swift_getObjectType();

  return ActionMenuProvider.makeDeferredMenuElement()();
}

void sub_1002CB0EC(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 integerForKey:v11];

  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    if ((v12 + 1) < a4)
    {
      a4 = v12 + 1;
    }

    v13 = [v9 standardUserDefaults];
    v14 = String._bridgeToObjectiveC()();
    [v13 setInteger:a4 forKey:v14];

    v15 = *(a5 + *a6);
    if (v15)
    {

      v16 = [a1 identifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v15(1, v17, v19);
      sub_10000C840(v15);
    }
  }
}

void sub_1002CB298(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 integerForKey:v11];

  if (__OFSUB__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    if ((v12 - 1) > a4)
    {
      a4 = v12 - 1;
    }

    v13 = [v9 standardUserDefaults];
    v14 = String._bridgeToObjectiveC()();
    [v13 setInteger:a4 forKey:v14];

    v15 = *(a5 + *a6);
    if (v15)
    {

      v16 = [a1 identifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v15(1, v17, v19);
      sub_10000C840(v15);
    }
  }
}

uint64_t sub_1002CB480@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1002CB5CC()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_1002CB634(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v12 = &v7[OBJC_IVAR___ICTagsActionMenu_completion];
  *v12 = 0;
  v12[1] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR___ICTagsActionMenu_presentingBarButtonItem;
  *&v7[OBJC_IVAR___ICTagsActionMenu_presentingBarButtonItem] = 0;
  *&v7[OBJC_IVAR___ICTagsActionMenu_tagSelection] = a1;
  swift_unknownObjectWeakAssign();
  v14 = *&v7[v13];
  *&v7[v13] = a3;
  v15 = a1;
  v16 = a3;

  *&v7[OBJC_IVAR___ICTagsActionMenu_viewControllerManager] = a4;
  swift_unknownObjectWeakAssign();
  v17 = *v12;
  *v12 = a6;
  v12[1] = a7;
  v18 = a4;
  sub_100010854(a6);
  sub_10000C840(v17);
  v22.receiver = v7;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, "init");
}

Class sub_1002CB764(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for TagsActionMenu();
  v11 = objc_allocWithZone(v10);
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR___ICTagsActionMenu_completion];
  *v12 = 0;
  v12[1] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR___ICTagsActionMenu_presentingBarButtonItem;
  *&v11[OBJC_IVAR___ICTagsActionMenu_presentingBarButtonItem] = 0;
  *&v11[OBJC_IVAR___ICTagsActionMenu_tagSelection] = a1;
  swift_unknownObjectWeakAssign();
  v14 = *&v11[v13];
  *&v11[v13] = a3;
  v15 = a1;
  v16 = a3;

  *&v11[OBJC_IVAR___ICTagsActionMenu_viewControllerManager] = a4;
  swift_unknownObjectWeakAssign();
  v17 = *v12;
  *v12 = a6;
  v12[1] = a7;
  v18 = a4;
  sub_100010854(a6);
  sub_10000C840(v17);
  v24.receiver = v11;
  v24.super_class = v10;
  v19 = objc_msgSendSuper2(&v24, "init");
  sub_1002CBA14();
  isa = ActionMenuProvider.makeMenu(deferredChildren:)(1).super.super.isa;

  return isa;
}

Class sub_1002CB8B8(void *a1, uint64_t a2, void *a3, void *a4, Swift::Bool a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = type metadata accessor for TagsActionMenu();
  v12 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  v13 = &v12[OBJC_IVAR___ICTagsActionMenu_completion];
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR___ICTagsActionMenu_presentingBarButtonItem;
  *&v12[OBJC_IVAR___ICTagsActionMenu_presentingBarButtonItem] = 0;
  *&v12[OBJC_IVAR___ICTagsActionMenu_tagSelection] = a1;
  swift_unknownObjectWeakAssign();
  v15 = *&v12[v14];
  *&v12[v14] = a3;
  v16 = a1;
  v17 = a3;

  *&v12[OBJC_IVAR___ICTagsActionMenu_viewControllerManager] = a4;
  swift_unknownObjectWeakAssign();
  v18 = *v13;
  *v13 = a7;
  v13[1] = a8;
  v19 = a4;
  sub_100010854(a7);
  sub_10000C840(v18);
  v26.receiver = v12;
  v26.super_class = v11;
  v20 = objc_msgSendSuper2(&v26, "init");
  sub_1002CBA14();
  isa = ActionMenuProvider.makeMenu(deferredChildren:)(a5).super.super.isa;

  return isa;
}

unint64_t sub_1002CBA14()
{
  result = qword_1006C32C0;
  if (!qword_1006C32C0)
  {
    type metadata accessor for TagsActionMenu();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C32C0);
  }

  return result;
}

id sub_1002CBAAC()
{
  v1 = v0;
  result = [v0 workerContext];
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1002CC29C;
    *(v5 + 24) = v4;
    v8[4] = sub_10000EFBC;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10000EAF8;
    v8[3] = &unk_100653FE0;
    v6 = _Block_copy(v8);
    v7 = v1;

    [v3 performBlockAndWait:v6];

    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if ((v3 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1002CBC28(void *a1)
{
  v55 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v56 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = __chkstk_darwin(v7);
  v53 = &v46 - v11;
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  result = [a1 workerContext];
  if (result)
  {
    v15 = result;
    v16 = [objc_opt_self() allActiveAccountsInContext:result];

    sub_1002CC2A4();
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v17 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v19 = 0;
      v57 = v17 & 0xFFFFFFFFFFFFFF8;
      v58 = v17 & 0xC000000000000001;
      v50 = enum case for URL.DirectoryHint.isDirectory(_:);
      v48 = (v2 + 1);
      v49 = (v2 + 13);
      v47 = (v56 + 8);
      v59 = (v56 + 32);
      v2 = _swiftEmptyArrayStorage;
      v51 = i;
      v52 = v17;
      while (1)
      {
        if (v58)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v57 + 16))
          {
            goto LABEL_19;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v23 = [v20 identifier];
        if (v23)
        {
          v24 = v23;
          v25 = v13;
          v26 = v4;
          v27 = [objc_opt_self() sharedInstance];
          v28 = [v27 applicationDocumentsURLForAccountIdentifier:v24];

          v4 = v26;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v60 = 7368052;
          v61 = 0xE300000000000000;
          v30 = v54;
          v29 = v55;
          (*v49)(v54, v50, v55);
          sub_10019E0AC();
          v31 = v53;
          URL.appending<A>(path:directoryHint:)();

          v32 = v29;
          v13 = v25;
          (*v48)(v30, v32);
          (*v47)(v9, v4);
          v33 = *v59;
          (*v59)(v25, v31, v4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1001CB50C(0, v2[2] + 1, 1, v2);
          }

          v35 = v2[2];
          v34 = v2[3];
          v17 = v52;
          if (v35 >= v34 >> 1)
          {
            v2 = sub_1001CB50C(v34 > 1, v35 + 1, 1, v2);
          }

          v2[2] = v35 + 1;
          v33(v2 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v35, v13, v4);
          i = v51;
        }

        else
        {
        }

        ++v19;
        if (v22 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v2 = _swiftEmptyArrayStorage;
LABEL_22:

    v36 = sub_1002701AC(v2);

    v37 = 0;
    v38 = 1 << *(v36 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v36 + 56);
    v41 = (v38 + 63) >> 6;
    v42 = v56;
    for (j = v46; v40; result = (*(v42 + 8))(j, v4))
    {
      v44 = v37;
LABEL_30:
      v45 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      (*(v42 + 16))(j, *(v36 + 48) + *(v42 + 72) * (v45 | (v44 << 6)), v4);
      sub_1002CC2F0();
    }

    while (1)
    {
      v44 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v44 >= v41)
      {
      }

      v40 = *(v36 + 56 + 8 * v44);
      ++v37;
      if (v40)
      {
        v37 = v44;
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002CC2A4()
{
  result = qword_1006C32F0;
  if (!qword_1006C32F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C32F0);
  }

  return result;
}

uint64_t sub_1002CC2F0()
{
  v66 = type metadata accessor for Logger();
  v0 = *(v66 - 8);
  __chkstk_darwin(v66);
  v2 = &v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for CocoaError.Code();
  v3 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&unk_1006BE0B0);
  __chkstk_darwin(v5 - 8);
  v72 = &v57 - v6;
  v7 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v7 - 8);
  v9 = &v57 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v70 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v75 = &v57 - v15;
  __chkstk_darwin(v14);
  v17 = &v57 - v16;
  v18 = [objc_opt_self() defaultManager];
  v76 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();
  if (v76)
  {
    v73 = v18;
    v65 = v2;
    v71 = 0;
    v20 = (v11 + 56);
    v21 = (v11 + 48);
    v77 = (v11 + 32);
    v22 = v11;
    v23 = (v11 + 8);
    v67 = (v3 + 8);
    v62 = v22;
    v64 = (v22 + 16);
    v63 = (v0 + 8);
    *&v19 = 136315394;
    v61 = v19;
LABEL_3:
    v24 = v72;
LABEL_5:
    v25 = v76;
    while (1)
    {
      if ([v25 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v78 = 0u;
        v79 = 0u;
      }

      v80 = v78;
      v81 = v79;
      if (!*(&v79 + 1))
      {

        v11 = v62;
        goto LABEL_24;
      }

      v26 = swift_dynamicCast();
      (*v20)(v9, v26 ^ 1u, 1, v10);
      if ((*v21)(v9, 1, v10) == 1)
      {
        break;
      }

      (*v77)(v17, v9, v10);
      *&v80 = URL.pathExtension.getter();
      *(&v80 + 1) = v27;
      *&v78 = 0x656C646E7562;
      *(&v78 + 1) = 0xE600000000000000;
      sub_10019E0AC();
      v28 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      if (v28)
      {
        (*v23)(v17, v10);
      }

      else
      {
        v29 = v75;
        URL.deletingPathExtension()();
        URL.lastPathComponent.getter();
        v30 = v29;
        v31 = *v23;
        (*v23)(v30, v10);
        UUID.init(uuidString:)();

        v32 = type metadata accessor for UUID();
        if ((*(*(v32 - 8) + 48))(v24, 1, v32) == 1)
        {
          v31(v17, v10);
          sub_1000073B4(v24, &unk_1006BE0B0);
          goto LABEL_5;
        }

        v74 = v31;
        sub_1000073B4(v24, &unk_1006BE0B0);
        URL._bridgeToObjectiveC()(v33);
        v35 = v34;
        *&v80 = 0;
        v36 = [v73 removeItemAtURL:v34 error:&v80];

        v25 = v76;
        if (!v36)
        {
          v38 = v80;
          v39 = _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_errorRetain();
          v40 = v68;
          static CocoaError.fileNoSuchFile.getter();
          sub_1002CCD48(&qword_1006C32F8, &type metadata accessor for CocoaError.Code);
          v41 = v69;
          v42 = static _ErrorCodeProtocol.~= infix(_:_:)();
          v71 = v39;

          (*v67)(v40, v41);
          if (v42)
          {
            v74(v17, v10);

            v71 = 0;
          }

          else
          {
            v43 = v65;
            Logger.init(subsystem:category:)();
            (*v64)(v70, v17, v10);
            swift_errorRetain();
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.error.getter();

            v60 = v45;
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              *&v80 = v59;
              *v46 = v61;
              sub_1002CCD48(&qword_1006C0FF8, &type metadata accessor for URL);
              v57 = v44;
              v47 = v70;
              v48 = dispatch thunk of CustomStringConvertible.description.getter();
              v50 = v49;
              v74(v47, v10);
              v51 = sub_100009D88(v48, v50, &v80);

              *(v46 + 4) = v51;
              *(v46 + 12) = 2112;
              swift_errorRetain();
              v52 = _swift_stdlib_bridgeErrorToNSError();
              *(v46 + 14) = v52;
              v53 = v58;
              *v58 = v52;
              v54 = v57;
              _os_log_impl(&_mh_execute_header, v57, v60, "RemoveTemporaryPaperKitBundlesLaunchTask failed to remove %s - error: %@", v46, 0x16u);
              sub_1000073B4(v53, &qword_1006C1440);

              sub_100009F60(v59);

              (*v63)(v65, v66);
              v74(v17, v10);
            }

            else
            {

              v55 = v74;
              v74(v70, v10);
              (*v63)(v43, v66);
              v55(v17, v10);
            }

            v71 = 0;
          }

          goto LABEL_3;
        }

        v37 = v80;
        v74(v17, v10);
      }
    }
  }

  else
  {

    v80 = 0u;
    v81 = 0u;
LABEL_24:
    sub_1000073B4(&v80, &qword_1006BE7A0);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  return sub_1000073B4(v9, &qword_1006BCC20);
}

uint64_t sub_1002CCD48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FastSync.LeaveActivityAction.isRelatedTo(_:)(uint64_t a1)
{
  v3 = type metadata accessor for EditNoteActivity();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(type metadata accessor for FastSync.LeaveActivityAction(0) + 20));
  v8 = *(v7 + 16);
  v13 = *v7;
  v14 = v8;
  sub_10015DA04(&qword_1006C3300);
  Result.value.getter();
  v9 = v12;
  swift_getObjectType();
  if (v9 && (swift_unknownObjectRelease(), v9 == a1))
  {
    v10 = 1;
  }

  else
  {
    dispatch thunk of GroupSessionProvider.activity.getter();
    v10 = static EditNoteActivity.== infix(_:_:)();
    (*(v4 + 8))(v6, v3);
  }

  return v10 & 1;
}

uint64_t FastSync.JoinActivityAction.perform()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002CD008;

  return sub_1002CF040();
}

uint64_t sub_1002CD008(uint64_t a1, uint64_t a2)
{
  v5 = *v3;

  v6 = *(v5 + 8);
  if (v2)
  {

    return v6();
  }

  else
  {
    v9 = *(v5 + 8);
    v8 = swift_unknownObjectRetain();

    return v9(v8, a2);
  }
}

uint64_t FastSync.LeaveActivityAction.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EditNoteActivity();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FastSync.LeaveActivityAction.perform()()
{
  v1[4] = v0;
  v1[5] = sub_10015DA04(&qword_1006C3308);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v2 = type metadata accessor for CancellationError();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for GroupSessionProviderState();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = type metadata accessor for EditNoteActivity();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1002CD428, 0, 0);
}

uint64_t sub_1002CD428()
{
  v75 = v0;
  v1 = *(v0 + 32);
  v2 = type metadata accessor for FastSync.LeaveActivityAction(0);
  v3 = *(v2 + 24);
  *(v0 + 248) = v3;
  if ((*(v1 + v3) & 1) == 0)
  {
    v8 = v1 + *(v2 + 20);
    v9 = *v8;
    *(v0 + 216) = *v8;
    v10 = *(v8 + 8);
    *(v0 + 224) = v10;
    if (*(v8 + 16))
    {
      *(v0 + 16) = v9;
      swift_errorRetain();
      sub_10015DA04(&unk_1006C9B40);
      swift_willThrowTypedImpl();
      *(v0 + 24) = v9;
      swift_errorRetain();
      sub_10015DA04(&unk_1006C9B40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v34 = *(v0 + 248);
        v35 = *(v0 + 32);

        *(v35 + v34) = 1;
        goto LABEL_3;
      }

      v12 = *(v0 + 120);
      v11 = *(v0 + 128);
      v14 = *(v0 + 80);
      v13 = *(v0 + 88);
      (*(v11 + 56))(v13, 1, 1, v12);
      sub_1002CF7A8(v13, v14);
      if ((*(v11 + 48))(v14, 1, v12) == 1)
      {
        v15 = *(v0 + 80);
        sub_1002CF818(*(v0 + 88));

LABEL_26:
        sub_1002CF818(v15);
        (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

        *(*(v0 + 32) + *(v0 + 248)) = 1;

        v6 = *(v0 + 8);
        goto LABEL_4;
      }

      v41 = *(v0 + 120);
      v40 = *(v0 + 128);
      v42 = *(v0 + 72);
      sub_1002CF7A8(*(v0 + 80), v42);
      v43 = (*(v40 + 88))(v42, v41);
      if (v43 == enum case for GroupSessionProviderState.invalidated(_:))
      {
        v45 = *(v0 + 120);
        v44 = *(v0 + 128);
        v15 = *(v0 + 80);
        v46 = *(v0 + 72);
        sub_1002CF818(*(v0 + 88));

        (*(v44 + 8))(v46, v45);
        goto LABEL_26;
      }

      if (v43 == enum case for GroupSessionProviderState.waiting(_:) || v43 == enum case for GroupSessionProviderState.joined(_:))
      {
        v59 = *(v0 + 88);
        v60 = *(v0 + 64);
        sub_1002CF818(*(v0 + 80));
        sub_1002CF7A8(v59, v60);
        static Logger.realtimeCollaboration.getter();
        LOBYTE(v60) = static os_log_type_t.fault.getter();
        v61 = Logger.logObject.getter();
        if (!os_log_type_enabled(v61, v60))
        {
          v62 = *(v0 + 200);
          v64 = *(v0 + 176);
          v63 = *(v0 + 184);
          v15 = *(v0 + 88);
          v65 = *(v0 + 64);

          (*(v63 + 8))(v62, v64);
          sub_1002CF818(v65);
          goto LABEL_26;
        }

        v66 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v66 = 136315650;
        v67 = StaticString.description.getter();
        sub_100009D88(v67, v68, &v73);

        v74[0] = 0;
        v74[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(78);
        __break(1u);
      }

      else
      {
        v48 = *(v0 + 120);
        v47 = *(v0 + 128);
        v49 = *(v0 + 88);
        v50 = *(v0 + 72);
        v51 = *(v0 + 48);

        (*(v47 + 8))(v50, v48);
        static Logger.realtimeCollaboration.getter();
        sub_1002CF7A8(v49, v51);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v52, v53))
        {
          v55 = *(v0 + 184);
          v54 = *(v0 + 192);
          v56 = *(v0 + 176);
          v57 = *(v0 + 88);
          v58 = *(v0 + 48);

          sub_1002CF818(v58);
          (*(v55 + 8))(v54, v56);
          sub_1002CF818(v57);
          v15 = *(v0 + 80);
          goto LABEL_26;
        }
      }

      swift_slowAlloc();
      v38 = swift_slowAlloc();
      __break(1u);
    }

    else
    {
      swift_unknownObjectRetain();
      static Logger.realtimeCollaboration.getter();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 208);
      v21 = *(v0 + 176);
      v20 = *(v0 + 184);
      if (v18)
      {
        v70 = v17;
        v22 = *(v0 + 168);
        v72 = *(v0 + 176);
        v23 = *(v0 + 144);
        v24 = *(v0 + 152);
        v25 = swift_slowAlloc();
        v74[0] = swift_slowAlloc();
        *v25 = 136315394;
        swift_getObjectType();
        v71 = v19;
        v26 = v9;
        sub_1001F2774(v9, v10, 0);
        log = v16;
        dispatch thunk of GroupSessionProvider.activity.getter();
        sub_1001F2780(v9, v10, 0);
        sub_1002CF880(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        (*(v24 + 8))(v22, v23);
        v30 = sub_100009D88(v27, v29, v74);

        *(v25 + 4) = v30;
        *(v25 + 12) = 2080;
        swift_getObjectType();
        sub_1001F2774(v26, v10, 0);
        dispatch thunk of GroupSessionProvider.state.getter();
        sub_1001F2780(v26, v10, 0);
        CurrentValueSubject.value.getter();

        v31 = String.init<A>(reflecting:)();
        v33 = sub_100009D88(v31, v32, v74);

        *(v25 + 14) = v33;
        _os_log_impl(&_mh_execute_header, log, v70, "%s: About to leave group session provider in state: %s", v25, 0x16u);
        swift_arrayDestroy();

        (*(v20 + 8))(v71, v72);
      }

      else
      {

        (*(v20 + 8))(v19, v21);
      }

      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v37 = swift_task_alloc();
      *(v0 + 232) = v37;
      *v37 = v0;
      v37[1] = sub_1002CDD34;
      v38 = ObjectType;
      v39 = v10;
    }

    return GroupSessionProvider.leave()(v38, v39);
  }

  v4 = type metadata accessor for FastSyncError();
  sub_1002CF880(&qword_1006C8910, &type metadata accessor for FastSyncError);
  swift_allocError();
  (*(*(v4 - 8) + 104))(v5, enum case for FastSyncError.leaveSessionMoreThanOnce(_:), v4);
  swift_willThrow();
LABEL_3:

  v6 = *(v0 + 8);
LABEL_4:

  return v6();
}

uint64_t sub_1002CDD34()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1002CDF84;
  }

  else
  {
    v2 = sub_1002CDE48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CDE48()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  sub_1001F2780(v1, v2, 0);
  sub_1001F2780(v1, v2, 0);
  *(*(v0 + 32) + *(v0 + 248)) = 1;

  v3 = *(v0 + 8);

  return v3();
}

void sub_1002CDF84()
{
  v85 = v0;
  sub_1001F2780(*(v0 + 216), *(v0 + 224), 0);
  *(v0 + 24) = *(v0 + 240);
  v1 = *(v0 + 216);
  swift_errorRetain();
  sub_10015DA04(&unk_1006C9B40);
  if (swift_dynamicCast())
  {
    if (v1)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of GroupSessionProvider.state.getter();
      swift_unknownObjectRelease();
      CurrentValueSubject.value.getter();

      v2 = 0;
    }

    else
    {
      v2 = 1;
    }

    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    (*(v7 + 56))(v8, v2, 1, v6);
    sub_1002CF7A8(v8, v9);
    if ((*(v7 + 48))(v9, 1, v6) == 1)
    {
      v10 = *(v0 + 80);
      sub_1002CF818(*(v0 + 88));

      v11 = v10;
LABEL_21:
      sub_1002CF818(v11);
      (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

      swift_unknownObjectRelease();
      *(*(v0 + 32) + *(v0 + 248)) = 1;

      v5 = *(v0 + 8);
      goto LABEL_22;
    }

    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    v14 = *(v0 + 72);
    sub_1002CF7A8(*(v0 + 80), v14);
    v15 = (*(v13 + 88))(v14, v12);
    if (v15 == enum case for GroupSessionProviderState.invalidated(_:))
    {
      v16 = *(v0 + 120);
      v17 = *(v0 + 128);
      v18 = *(v0 + 80);
      v19 = *(v0 + 72);
      sub_1002CF818(*(v0 + 88));

      (*(v17 + 8))(v19, v16);
      v11 = v18;
      goto LABEL_21;
    }

    if (v15 == enum case for GroupSessionProviderState.waiting(_:) || v15 == enum case for GroupSessionProviderState.joined(_:))
    {
      v40 = *(v0 + 88);
      v41 = *(v0 + 64);
      sub_1002CF818(*(v0 + 80));
      sub_1002CF7A8(v40, v41);
      static Logger.realtimeCollaboration.getter();
      v42 = static os_log_type_t.fault.getter();
      v43 = Logger.logObject.getter();
      if (!os_log_type_enabled(v43, v42))
      {
        v58 = *(v0 + 200);
        v60 = *(v0 + 176);
        v59 = *(v0 + 184);
        v61 = *(v0 + 88);
        v62 = *(v0 + 64);

        (*(v59 + 8))(v58, v60);
        sub_1002CF818(v62);
        v11 = v61;
        goto LABEL_21;
      }

      v79 = v42;
      loga = v43;
      v44 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v44 = 136315650;
      v45 = StaticString.description.getter();
      v47 = sub_100009D88(v45, v46, &v82);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2048;
      *(v44 + 14) = 119;
      *(v44 + 22) = 2080;
      v83 = 0;
      v84 = 0xE000000000000000;
      _StringGuts.grow(_:)(78);
      if (v1)
      {
        v75 = *(v0 + 176);
        v77 = *(v0 + 200);
        v48 = *(v0 + 168);
        v50 = *(v0 + 144);
        v49 = *(v0 + 152);
        v71 = *(v0 + 184);
        v73 = *(v0 + 88);
        v51 = *(v0 + 56);
        v69 = *(v0 + 64);
        swift_unknownObjectRetain();

        swift_getObjectType();
        dispatch thunk of GroupSessionProvider.activity.getter();
        swift_unknownObjectRelease();
        sub_1002CF880(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
        v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v52);

        (*(v49 + 8))(v48, v50);
        v53._object = 0x800000010056BB50;
        v53._countAndFlagsBits = 0xD00000000000004ALL;
        String.append(_:)(v53);
        sub_1002CF7A8(v69, v51);
        v54._countAndFlagsBits = String.init<A>(reflecting:)();
        String.append(_:)(v54);

        v55 = v83;
        v56 = v84;
        sub_1002CF818(v69);
        v57 = sub_100009D88(v55, v56, &v82);

        *(v44 + 24) = v57;
        _os_log_impl(&_mh_execute_header, loga, v79, "Failed assertion at %s:%lu: %s", v44, 0x20u);
        swift_arrayDestroy();

        (*(v71 + 8))(v77, v75);
        v11 = v73;
        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      v21 = *(v0 + 120);
      v20 = *(v0 + 128);
      v22 = *(v0 + 88);
      v23 = *(v0 + 72);
      v24 = *(v0 + 48);

      (*(v20 + 8))(v23, v21);
      static Logger.realtimeCollaboration.getter();
      sub_1002CF7A8(v22, v24);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v25, v26))
      {
        v64 = *(v0 + 184);
        v63 = *(v0 + 192);
        v65 = *(v0 + 176);
        v66 = *(v0 + 88);
        v67 = *(v0 + 48);

        sub_1002CF818(v67);
        (*(v64 + 8))(v63, v65);
        v39 = v66;
        goto LABEL_20;
      }

      log = v26;
      v27 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v27 = 136315394;
      if (v1)
      {
        v76 = *(v0 + 176);
        v78 = *(v0 + 192);
        v29 = *(v0 + 152);
        v28 = *(v0 + 160);
        v30 = *(v0 + 144);
        v72 = *(v0 + 184);
        v74 = *(v0 + 88);
        v68 = *(v0 + 48);
        v70 = *(v0 + 56);
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of GroupSessionProvider.activity.getter();
        swift_unknownObjectRelease();
        sub_1002CF880(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        (*(v29 + 8))(v28, v30);
        v34 = sub_100009D88(v31, v33, &v83);

        *(v27 + 4) = v34;
        *(v27 + 12) = 2080;
        sub_1002CF7A8(v68, v70);
        v35 = String.init<A>(reflecting:)();
        v37 = v36;
        sub_1002CF818(v68);
        v38 = sub_100009D88(v35, v37, &v83);

        *(v27 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v25, log, "%s: GroupSessionProvider is in an unknown state: %s", v27, 0x16u);
        swift_arrayDestroy();

        (*(v72 + 8))(v78, v76);
        v39 = v74;
LABEL_20:
        sub_1002CF818(v39);
        v11 = *(v0 + 80);
        goto LABEL_21;
      }
    }

    __break(1u);
    return;
  }

  v3 = *(v0 + 248);
  v4 = *(v0 + 32);

  swift_unknownObjectRelease();
  *(v4 + v3) = 1;

  v5 = *(v0 + 8);
LABEL_22:

  v5();
}

uint64_t FastSync.PresenceAction.perform(onJoinActivity:onLeaveActivity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  type metadata accessor for FastSync.LeaveActivityAction(0);
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for FastSync.PresenceAction(0);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002CE9A4, 0, 0);
}

uint64_t sub_1002CE9A4()
{
  sub_1002CF8E8(*(v0 + 72), *(v0 + 96), type metadata accessor for FastSync.PresenceAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 56);
    sub_1002CF8E8(*(v0 + 96), *(v0 + 80), type metadata accessor for FastSync.LeaveActivityAction);
    v9 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_1002CED54;
    v3 = *(v0 + 80);
  }

  else
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 40);
    v6 = *(v4 + 16);
    *(v0 + 16) = *v4;
    *(v0 + 32) = v6;
    v9 = (v5 + *v5);
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_1002CEBB0;
    v3 = v0 + 16;
  }

  return v9(v3);
}

uint64_t sub_1002CEBB0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1002CEF0C;
  }

  else
  {
    v2 = sub_1002CECC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CECC4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  swift_storeEnumTagMultiPayload();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002CED54()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1002CEF9C;
  }

  else
  {
    v2 = sub_1002CEE68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CEE68()
{
  sub_1002CF8E8(v0[10], v0[9], type metadata accessor for FastSync.LeaveActivityAction);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002CEF0C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  swift_storeEnumTagMultiPayload();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002CEF9C()
{
  sub_1002CF8E8(v0[10], v0[9], type metadata accessor for FastSync.LeaveActivityAction);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002CF040()
{
  v1[4] = v0;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for FastSyncError();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002CF168, 0, 0);
}

uint64_t sub_1002CF168()
{
  v38 = v0;
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    (*(v5 + 104))(v3, enum case for FastSyncError.joinSessionMoreThanOnce(_:), v4);
    v6 = *(v5 + 16);
    v6(v2, v3, v4);
    static Logger.realtimeCollaboration.getter();
    v7 = static os_log_type_t.fault.getter();
    v8 = Logger.logObject.getter();
    v9 = os_log_type_enabled(v8, v7);
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[7];
    v36 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    if (v9)
    {
      v34 = v0[5];
      v15 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v15 = 136315650;
      v16 = StaticString.description.getter();
      v35 = v6;
      v33 = v12;
      v18 = sub_100009D88(v16, v17, v37);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 51;
      *(v15 + 22) = 2080;
      v0[2] = 0;
      v0[3] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v19 = v0[2];
      v20 = v0[3];
      log = v8;
      v21 = *(v11 + 8);
      v21(v10, v36);
      v22 = sub_100009D88(v19, v20, v37);
      v6 = v35;

      *(v15 + 24) = v22;
      _os_log_impl(&_mh_execute_header, log, v7, "Failed assertion at %s:%lu: %s", v15, 0x20u);
      swift_arrayDestroy();

      v23 = v21;

      (*(v13 + 8))(v33, v34);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
      v23 = *(v11 + 8);
      v23(v10, v36);
    }

    v27 = v0[11];
    v28 = v0[8];
    sub_1002CF880(&qword_1006C8910, &type metadata accessor for FastSyncError);
    swift_allocError();
    v6(v29, v27, v28);
    swift_willThrow();
    v23(v27, v28);

    v30 = v0[1];

    return v30();
  }

  else
  {
    v0[12] = *v1;
    v24 = *(v1 + 8);
    v0[13] = v24;
    ObjectType = swift_getObjectType();
    v26 = swift_task_alloc();
    v0[14] = v26;
    *v26 = v0;
    v26[1] = sub_1002CF580;

    return GroupSessionProvider.join()(ObjectType, v24);
  }
}

uint64_t sub_1002CF580()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1002CF71C;
  }

  else
  {
    v2 = sub_1002CF694;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CF694()
{
  *(v0[4] + 16) = 1;

  v1 = v0[1];
  v2 = v0[12];
  v3 = v0[13];

  return v1(v2, v3);
}

uint64_t sub_1002CF71C()
{
  *(*(v0 + 32) + 16) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CF7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C3308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CF818(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C3308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002CF880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002CF8E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1002CF988()
{
  type metadata accessor for EditNoteActivity();
  if (v0 <= 0x3F)
  {
    sub_1002CFA14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002CFA14()
{
  if (!qword_1006C3378)
  {
    sub_10017992C(&qword_1006BFD18);
    sub_10017992C(&unk_1006C9B40);
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C3378);
    }
  }
}

uint64_t sub_1002CFA9C()
{
  result = type metadata accessor for FastSync.LeaveActivityAction(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1002CFB18(void *a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v2 = sub_1002CFB90();
    [a1 insertSiblingMenu:v2 beforeMenuForIdentifier:UIMenuFind];
    swift_unknownObjectRelease();
  }
}

id sub_1002CFB90()
{
  v61 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1005346C0;
  v1 = objc_opt_self();
  v2 = objc_opt_self();
  v3 = UIKeyInputLeftArrow;
  v4 = [v2 mainBundle];
  v62._object = 0x800000010056BBA0;
  v5._object = 0xED00007466654C20;
  v5._countAndFlagsBits = 0x657461676976614ELL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v62._countAndFlagsBits = 0xD000000000000030;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v62);

  v7 = String._bridgeToObjectiveC()();

  v8 = [v1 ic_keyCommandWithInput:v3 modifierFlags:0x100000 action:"systemPaperNavigateLeft:" discoverabilityTitle:v7 image:0];

  [v8 setWantsPriorityOverSystemBehavior:1];
  [v8 setAttributes:4];
  *(v0 + 32) = v8;
  v9 = UIKeyInputRightArrow;
  v10 = [v2 mainBundle];
  v63._object = 0x800000010056BBE0;
  v11._object = 0xEE00746867695220;
  v63._countAndFlagsBits = 0xD000000000000031;
  v11._countAndFlagsBits = 0x657461676976614ELL;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v63);

  v13 = String._bridgeToObjectiveC()();

  v14 = [v1 ic_keyCommandWithInput:v9 modifierFlags:0x100000 action:"systemPaperNavigateRight:" discoverabilityTitle:v13 image:0];

  [v14 setWantsPriorityOverSystemBehavior:1];
  [v14 setAttributes:4];
  *(v0 + 40) = v14;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v2 mainBundle];
  v64._object = 0x800000010056BC20;
  v17._countAndFlagsBits = 0x206E4920776F6853;
  v17._object = 0xED00007365746F4ELL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0xD000000000000030;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v64);

  v19 = String._bridgeToObjectiveC()();

  v20 = [v1 ic_keyCommandWithInput:v15 modifierFlags:0x100000 action:"systemPaperShowInNotes:" discoverabilityTitle:v19 image:0];

  [v20 setAttributes:4];
  *(v0 + 48) = v20;
  v21 = String._bridgeToObjectiveC()();
  v22 = [v2 mainBundle];
  v65._countAndFlagsBits = 0xD000000000000028;
  v65._object = 0x800000010056BC60;
  v23._countAndFlagsBits = 0x73756F6976657250;
  v23._object = 0xED000065746F4E20;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v65);

  v25 = String._bridgeToObjectiveC()();

  v26 = String._bridgeToObjectiveC()();
  v27 = objc_opt_self();
  v28 = [v27 systemImageNamed:v26];

  v29 = [v1 ic_keyCommandWithInput:v21 modifierFlags:1572864 action:"gotoPreviousNote:" discoverabilityTitle:v25 image:v28];
  [v29 setAttributes:4];
  *(v0 + 56) = v29;
  v30 = String._bridgeToObjectiveC()();
  v31 = [v2 mainBundle];
  v66._countAndFlagsBits = 0xD000000000000024;
  v66._object = 0x800000010056BCB0;
  v32._countAndFlagsBits = 0x746F4E207478654ELL;
  v32._object = 0xE900000000000065;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v66);

  v34 = String._bridgeToObjectiveC()();

  v35 = String._bridgeToObjectiveC()();
  v36 = [v27 systemImageNamed:v35];

  v37 = [v1 ic_keyCommandWithInput:v30 modifierFlags:1572864 action:"gotoNextNote:" discoverabilityTitle:v34 image:v36];
  [v37 setAttributes:4];
  *(v0 + 64) = v37;
  v38 = UIKeyInputUpArrow;
  v39 = [v2 mainBundle];
  v40._countAndFlagsBits = 0xD000000000000010;
  v67._countAndFlagsBits = 0xD00000000000002ELL;
  v67._object = 0x800000010056BD20;
  v40._object = 0x800000010056BD00;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v67);

  v42 = String._bridgeToObjectiveC()();

  v43 = [v1 ic_keyCommandWithInput:v38 modifierFlags:0x100000 action:"handleEnclosingFolderKey:" discoverabilityTitle:v42 image:0];

  [v43 setAttributes:4];
  *(v0 + 72) = v43;
  v44 = String._bridgeToObjectiveC()();
  v45 = [v2 mainBundle];
  v68._countAndFlagsBits = 0xD000000000000023;
  v68._object = 0x800000010056BD50;
  v46._countAndFlagsBits = 0x7469644520646E45;
  v46._object = 0xEB00000000676E69;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v68);

  v48 = String._bridgeToObjectiveC()();

  v49 = [v1 ic_keyCommandWithInput:v44 modifierFlags:0x100000 action:"handleCmdReturnKey:" discoverabilityTitle:v48];

  [v49 setAttributes:4];
  [v49 setWantsPriorityOverSystemBehavior:1];
  *(v0 + 80) = v49;
  v50 = String._bridgeToObjectiveC()();
  v51 = [v2 mainBundle];
  v69._countAndFlagsBits = 0xD00000000000001CLL;
  v69._object = 0x800000010056BD80;
  v52._countAndFlagsBits = 0x746F4E2074696445;
  v52._object = 0xE900000000000065;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v51, v53, v69);

  v54 = String._bridgeToObjectiveC()();

  v55 = [v1 ic_keyCommandWithInput:v50 modifierFlags:0 action:"handleReturnKey:" discoverabilityTitle:v54];

  [v55 setAttributes:4];
  [v55 setWantsPriorityOverSystemBehavior:1];
  *(v0 + 88) = v55;
  v56 = String._bridgeToObjectiveC()();
  v57 = [v1 keyCommandWithInput:v56 modifierFlags:1572864 action:"handleAltToggleBlockQuote:"];

  *(v0 + 96) = v57;
  sub_1002D0574();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v59 = [v61 ic_inlineMenuWithChildren:isa];

  return v59;
}

unint64_t sub_1002D0574()
{
  result = qword_1006C6400;
  if (!qword_1006C6400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C6400);
  }

  return result;
}

uint64_t sub_1002D05E8()
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
  sub_100025918(v6, static CreateNoteFromMarkdownIntent.title);
  sub_10002597C(v6, static CreateNoteFromMarkdownIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t CreateNoteFromMarkdownIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC738 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static CreateNoteFromMarkdownIntent.title);
}

uint64_t static CreateNoteFromMarkdownIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC738 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static CreateNoteFromMarkdownIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateNoteFromMarkdownIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
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

uint64_t static CreateNoteFromMarkdownIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C3458);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C3460);
  __chkstk_darwin(v1);
  sub_1002D0E1C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x6120657461657243;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C3470);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x6E692065746F6E20;
  v3._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C3478);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0x6F63207461687420;
  v4._object = 0xEF20736E6961746ELL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t sub_1002D0E1C()
{
  result = qword_1006C3468;
  if (!qword_1006C3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3468);
  }

  return result;
}

double CreateNoteFromMarkdownIntent.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1002D4454(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t (*CreateNoteFromMarkdownIntent.name.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*CreateNoteFromMarkdownIntent.markdownContents.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t CreateNoteFromMarkdownIntent.folder.setter(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  sub_100006038(a1, &v5 - v3, &unk_1006BF9D0);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(a1, &unk_1006BF9D0);
}

uint64_t (*CreateNoteFromMarkdownIntent.folder.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*CreateNoteFromMarkdownIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t CreateNoteFromMarkdownIntent.perform()(uint64_t a1)
{
  v2[46] = a1;
  v2[47] = v1;
  v3 = type metadata accessor for Logger();
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  sub_10015DA04(&unk_1006BF9D0);
  v2[51] = swift_task_alloc();
  v4 = type metadata accessor for FolderEntity();
  v2[52] = v4;
  v2[53] = *(v4 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = type metadata accessor for NoteEntity(0);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  sub_10015DA04(&unk_1006BE0D0);
  v2[61] = swift_task_alloc();
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[62] = v5;
  v2[63] = *(v5 - 8);
  v2[64] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[65] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[66] = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource();
  v2[67] = v6;
  v2[68] = *(v6 - 8);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v7 = type metadata accessor for IntentSystemContext.Source();
  v2[71] = v7;
  v2[72] = *(v7 - 8);
  v2[73] = swift_task_alloc();
  v2[74] = sub_10015DA04(&qword_1006BF9F0);
  v2[75] = swift_task_alloc();
  sub_10015DA04(&qword_1006BF9F8);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v8 = type metadata accessor for IntentSystemContext();
  v2[79] = v8;
  v2[80] = *(v8 - 8);
  v2[81] = swift_task_alloc();

  return _swift_task_switch(sub_1002D15F0, 0, 0);
}

uint64_t sub_1002D15F0()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  v6 = *(v0 + 600);
  v69 = *(v0 + 592);
  v7 = *(v0 + 576);
  v8 = *(v0 + 568);
  v9 = *(v0 + 376);
  v10 = *(v9 + 32);
  v11 = *(v9 + 16);
  *(v0 + 96) = *v9;
  *(v0 + 112) = v11;
  *(v0 + 128) = v10;
  sub_1002D0E1C();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v2 + 8))(v1, v3);
  (*(v7 + 104))(v5, enum case for IntentSystemContext.Source.actionButton(_:), v8);
  (*(v7 + 56))(v5, 0, 1, v8);
  v12 = *(v69 + 48);
  sub_100006038(v4, v6, &qword_1006BF9F8);
  sub_100006038(v5, v6 + v12, &qword_1006BF9F8);
  v13 = *(v7 + 48);
  if (v13(v6, 1, v8) == 1)
  {
    v14 = *(v0 + 624);
    v15 = *(v0 + 568);
    sub_1000073B4(*(v0 + 616), &qword_1006BF9F8);
    sub_1000073B4(v14, &qword_1006BF9F8);
    if (v13(v6 + v12, 1, v15) == 1)
    {
      v16 = *(v0 + 600);
      v17 = &qword_1006BF9F8;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v18 = *(v0 + 568);
  sub_100006038(*(v0 + 600), *(v0 + 608), &qword_1006BF9F8);
  v19 = v13(v6 + v12, 1, v18);
  v20 = *(v0 + 624);
  v21 = *(v0 + 616);
  v22 = *(v0 + 608);
  if (v19 == 1)
  {
    v23 = *(v0 + 576);
    v24 = *(v0 + 568);
    sub_1000073B4(*(v0 + 616), &qword_1006BF9F8);
    sub_1000073B4(v20, &qword_1006BF9F8);
    (*(v23 + 8))(v22, v24);
LABEL_6:
    v16 = *(v0 + 600);
    v17 = &qword_1006BF9F0;
    goto LABEL_8;
  }

  v25 = *(v0 + 600);
  v26 = *(v0 + 584);
  v27 = *(v0 + 576);
  v28 = *(v0 + 568);
  (*(v27 + 32))(v26, v6 + v12, v28);
  sub_1002D4FA4(&qword_1006C3480, &type metadata accessor for IntentSystemContext.Source);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v27 + 8);
  v29(v26, v28);
  sub_1000073B4(v21, &qword_1006BF9F8);
  sub_1000073B4(v20, &qword_1006BF9F8);
  v29(v22, v28);
  v16 = v25;
  v17 = &qword_1006BF9F8;
LABEL_8:
  sub_1000073B4(v16, v17);
  IntentParameter.wrappedValue.getter();
  v30 = *(v0 + 224);
  if (v30)
  {
    v31 = *(v0 + 216);

    v32 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v32 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      goto LABEL_16;
    }
  }

  IntentParameter.wrappedValue.getter();
  v33 = *(v0 + 272);
  if (!v33)
  {
    goto LABEL_18;
  }

  v34 = *(v0 + 264);

  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
LABEL_16:
    IntentParameter.wrappedValue.getter();
    v36 = objc_allocWithZone(ICMarkdownRepresentation);
    v37 = sub_1002D4388();
    v39 = *(v0 + 416);
    v38 = *(v0 + 424);
    v40 = *(v0 + 408);
    v41 = *(v0 + 376);
    v42 = v37;
    v68 = [v37 createRenderableAttributedString];
    *(v0 + 656) = v68;

    *(v0 + 664) = *(v41 + 24);
    AppDependency.wrappedValue.getter();
    v43 = *(v0 + 280);
    v44 = [objc_allocWithZone(ICCreateNoteAction) initWithNoteContext:v43];
    *(v0 + 672) = v44;

    IntentParameter.wrappedValue.getter();
    if ((*(v38 + 48))(v40, 1, v39) == 1)
    {
      sub_1000073B4(*(v0 + 408), &unk_1006BF9D0);
      IntentParameter.wrappedValue.getter();
      v45 = v68;
      v46 = ICCreateNoteAction.perform(withTitle:contents:pinned:container:)();

      *(v0 + 720) = v46;
      v65 = v46;
      AppDependency.wrappedValue.getter();
      *(v0 + 728) = *(v0 + 336);
      v66 = swift_task_alloc();
      *(v0 + 736) = v66;
      v67 = sub_10015DA04(&unk_1006BFA20);
      *v66 = v0;
      v66[1] = sub_1002D26C8;

      return ICUnifiedNoteContext.perform<A, B>(with:using:)(v67, v65, sub_1001E2490, 0, v67, &type metadata for () + 8);
    }

    else
    {
      v57 = *(v0 + 376);
      sub_1001E345C(*(v0 + 408), *(v0 + 432), type metadata accessor for FolderEntity);
      AppDependency.wrappedValue.getter();
      v58 = *(v0 + 360);
      *(v0 + 680) = v58;
      v59 = swift_allocObject();
      *(v0 + 688) = v59;
      *(v59 + 16) = v44;
      v60 = *(v57 + 16);
      v61 = *(v57 + 32);
      *(v59 + 24) = *v57;
      *(v59 + 40) = v60;
      *(v59 + 56) = v61;
      *(v59 + 64) = v68;
      v62 = v44;

      v63 = v68;
      v64 = swift_task_alloc();
      *(v0 + 696) = v64;
      *v64 = v0;
      v64[1] = sub_1002D2450;

      return sub_1001A7EE8(v58, sub_1002D4F80, v59);
    }
  }

  else
  {
LABEL_18:
    v47 = *(v0 + 560);
    v48 = *(v0 + 552);
    v49 = *(v0 + 544);
    v70 = *(v0 + 536);
    v50 = *(v0 + 504);
    v51 = *(v0 + 512);
    v52 = *(v0 + 488);
    v53 = *(v0 + 496);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v50 + 104))(v51, enum case for LocalizedStringResource.BundleDescription.main(_:), v53);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    (*(v49 + 16))(v48, v47, v70);
    IntentDialog.init(_:)();
    v54 = type metadata accessor for IntentDialog();
    (*(*(v54 - 8) + 56))(v52, 0, 1, v54);
    type metadata accessor for AppIntentError();
    sub_1002D4FA4(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v52, &unk_1006BE0D0);
    swift_willThrow();
    (*(v49 + 8))(v47, v70);

    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_1002D2450(uint64_t a1)
{
  v4 = *v2;
  v4[88] = v1;

  v5 = v4[85];

  if (v1)
  {
    v6 = sub_1002D3244;
  }

  else
  {
    v4[89] = a1;
    v6 = sub_1002D25AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002D25AC()
{
  sub_1001E34E4(v0[54], type metadata accessor for FolderEntity);
  v1 = v0[89];
  v0[90] = v1;
  v2 = v1;
  AppDependency.wrappedValue.getter();
  v0[91] = v0[42];
  v3 = swift_task_alloc();
  v0[92] = v3;
  v4 = sub_10015DA04(&unk_1006BFA20);
  *v3 = v0;
  v3[1] = sub_1002D26C8;

  return ICUnifiedNoteContext.perform<A, B>(with:using:)(v4, v2, sub_1001E2490, 0, v4, &type metadata for () + 8);
}

uint64_t sub_1002D26C8()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  v3 = *(v2 + 728);

  if (v0)
  {
    v4 = sub_1002D37A4;
  }

  else
  {
    v4 = sub_1002D2814;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002D2814()
{
  v1 = [*(v0 + 720) managedObjectContext];
  *(v0 + 752) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 720) objectID];
    v4 = v2;
    v5 = swift_task_alloc();
    *(v0 + 760) = v5;
    *v5 = v0;
    v5[1] = sub_1002D2E70;
    v6 = *(v0 + 472);

    return NoteEntity.init(for:in:)(v6, v3, v4);
  }

  v8 = *(v0 + 720);
  v9 = *(v0 + 672);
  type metadata accessor for ICError(0);
  *(v0 + 352) = 225;
  sub_1001E27A0(_swiftEmptyArrayStorage);
  sub_1002D4FA4(&qword_1006BE4D0, type metadata accessor for ICError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = _convertErrorToNSError(_:)();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "CreateNoteIntent failed with error: %@", v12, 0xCu);
    sub_1000073B4(v13, &qword_1006C1440);
  }

  v16 = *(v0 + 392);
  v15 = *(v0 + 400);
  v17 = *(v0 + 384);

  (*(v16 + 8))(v15, v17);
  type metadata accessor for Code(0);
  *(v0 + 288) = 228;
  swift_errorRetain();
  sub_1002D4FA4(&unk_1006BFA00, type metadata accessor for Code);
  LOBYTE(v17) = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v17)
  {
    v18 = *(v0 + 656);
    sub_100197CCC();
    swift_allocError();
    v20 = 9;
  }

  else
  {
    *(v0 + 296) = 229;
    swift_errorRetain();
    v21 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v21 & 1) == 0)
    {
      *(v0 + 304) = 218;
      swift_errorRetain();
      v22 = static _ErrorCodeProtocol.~= infix(_:_:)();

      v23 = *(v0 + 656);
      if (v22)
      {
        sub_100197CCC();
        swift_allocError();
        *v24 = 8;
      }

      else
      {
        *(v0 + 320) = 218;
        sub_10015DA04(&qword_1006BFBE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100531E30;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v26;
        swift_getErrorValue();
        v27 = *(v0 + 168);
        v28 = *(v0 + 176);
        *(inited + 72) = v28;
        v29 = sub_100180240((inited + 48));
        (*(*(v28 - 8) + 16))(v29, v27, v28);
        sub_10018F334(inited);
        swift_setDeallocating();
        sub_1000073B4(inited + 32, &unk_1006BFA10);
        _BridgedStoredNSError.init(_:userInfo:)();
      }

      swift_willThrow();

      goto LABEL_16;
    }

    v18 = *(v0 + 656);
    sub_100197CCC();
    swift_allocError();
    v20 = 10;
  }

  *v19 = v20;
  swift_willThrow();

LABEL_16:

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002D2E70()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_1002D3CEC;
  }

  else
  {
    v2 = sub_1002D2F84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D2F84()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 720);
  v15 = *(v0 + 656);
  v3 = *(v0 + 480);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);

  sub_1001E345C(v4, v3, type metadata accessor for NoteEntity);
  sub_1001AD0E0(v3, v5);
  v8 = _s11MobileNotes14OpenNoteIntentVACycfC_0();
  v10 = v9;
  v12 = v11;
  sub_1001AD0E0(v5, v7);
  sub_1001AD0E0(v7, v6);
  IntentParameter.wrappedValue.setter();
  sub_1001E34E4(v7, type metadata accessor for NoteEntity);
  sub_1001E34E4(v5, type metadata accessor for NoteEntity);
  *(v0 + 192) = v8;
  *(v0 + 200) = v10;
  *(v0 + 208) = v12;
  sub_1002D4FA4(&qword_1006BE480, type metadata accessor for NoteEntity);
  sub_10002128C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_1001E34E4(v3, type metadata accessor for NoteEntity);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002D3244()
{
  v1 = *(v0 + 432);

  sub_1001E34E4(v1, type metadata accessor for FolderEntity);
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "CreateNoteIntent failed with error: %@", v4, 0xCu);
    sub_1000073B4(v5, &qword_1006C1440);
  }

  v8 = *(v0 + 392);
  v7 = *(v0 + 400);
  v9 = *(v0 + 384);

  (*(v8 + 8))(v7, v9);
  type metadata accessor for Code(0);
  *(v0 + 288) = 228;
  swift_errorRetain();
  sub_1002D4FA4(&unk_1006BFA00, type metadata accessor for Code);
  LOBYTE(v9) = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v9)
  {
    v10 = *(v0 + 656);
    sub_100197CCC();
    swift_allocError();
    v12 = 9;
  }

  else
  {
    *(v0 + 296) = 229;
    swift_errorRetain();
    v13 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      *(v0 + 304) = 218;
      swift_errorRetain();
      v14 = static _ErrorCodeProtocol.~= infix(_:_:)();

      v15 = *(v0 + 656);
      if (v14)
      {
        sub_100197CCC();
        swift_allocError();
        *v16 = 8;
      }

      else
      {
        type metadata accessor for ICError(0);
        *(v0 + 320) = 218;
        sub_10015DA04(&qword_1006BFBE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100531E30;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v18;
        swift_getErrorValue();
        v19 = *(v0 + 168);
        v20 = *(v0 + 176);
        *(inited + 72) = v20;
        v21 = sub_100180240((inited + 48));
        (*(*(v20 - 8) + 16))(v21, v19, v20);
        sub_10018F334(inited);
        swift_setDeallocating();
        sub_1000073B4(inited + 32, &unk_1006BFA10);
        sub_1002D4FA4(&qword_1006BE4D0, type metadata accessor for ICError);
        _BridgedStoredNSError.init(_:userInfo:)();
      }

      swift_willThrow();

      goto LABEL_12;
    }

    v10 = *(v0 + 656);
    sub_100197CCC();
    swift_allocError();
    v12 = 10;
  }

  *v11 = v12;
  swift_willThrow();

LABEL_12:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1002D37A4()
{
  v1 = *(v0 + 720);

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "CreateNoteIntent failed with error: %@", v4, 0xCu);
    sub_1000073B4(v5, &qword_1006C1440);
  }

  v8 = *(v0 + 392);
  v7 = *(v0 + 400);
  v9 = *(v0 + 384);

  (*(v8 + 8))(v7, v9);
  type metadata accessor for Code(0);
  *(v0 + 288) = 228;
  swift_errorRetain();
  sub_1002D4FA4(&unk_1006BFA00, type metadata accessor for Code);
  LOBYTE(v9) = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v9)
  {
    v10 = *(v0 + 656);
    sub_100197CCC();
    swift_allocError();
    v12 = 9;
  }

  else
  {
    *(v0 + 296) = 229;
    swift_errorRetain();
    v13 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      *(v0 + 304) = 218;
      swift_errorRetain();
      v14 = static _ErrorCodeProtocol.~= infix(_:_:)();

      v15 = *(v0 + 656);
      if (v14)
      {
        sub_100197CCC();
        swift_allocError();
        *v16 = 8;
      }

      else
      {
        type metadata accessor for ICError(0);
        *(v0 + 320) = 218;
        sub_10015DA04(&qword_1006BFBE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100531E30;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v18;
        swift_getErrorValue();
        v19 = *(v0 + 168);
        v20 = *(v0 + 176);
        *(inited + 72) = v20;
        v21 = sub_100180240((inited + 48));
        (*(*(v20 - 8) + 16))(v21, v19, v20);
        sub_10018F334(inited);
        swift_setDeallocating();
        sub_1000073B4(inited + 32, &unk_1006BFA10);
        sub_1002D4FA4(&qword_1006BE4D0, type metadata accessor for ICError);
        _BridgedStoredNSError.init(_:userInfo:)();
      }

      swift_willThrow();

      goto LABEL_12;
    }

    v10 = *(v0 + 656);
    sub_100197CCC();
    swift_allocError();
    v12 = 10;
  }

  *v11 = v12;
  swift_willThrow();

LABEL_12:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1002D3CEC()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 720);

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "CreateNoteIntent failed with error: %@", v5, 0xCu);
    sub_1000073B4(v6, &qword_1006C1440);
  }

  v9 = *(v0 + 392);
  v8 = *(v0 + 400);
  v10 = *(v0 + 384);

  (*(v9 + 8))(v8, v10);
  type metadata accessor for Code(0);
  *(v0 + 288) = 228;
  swift_errorRetain();
  sub_1002D4FA4(&unk_1006BFA00, type metadata accessor for Code);
  LOBYTE(v10) = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v10)
  {
    v11 = *(v0 + 656);
    sub_100197CCC();
    swift_allocError();
    v13 = 9;
  }

  else
  {
    *(v0 + 296) = 229;
    swift_errorRetain();
    v14 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v14 & 1) == 0)
    {
      *(v0 + 304) = 218;
      swift_errorRetain();
      v15 = static _ErrorCodeProtocol.~= infix(_:_:)();

      v16 = *(v0 + 656);
      if (v15)
      {
        sub_100197CCC();
        swift_allocError();
        *v17 = 8;
      }

      else
      {
        type metadata accessor for ICError(0);
        *(v0 + 320) = 218;
        sub_10015DA04(&qword_1006BFBE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100531E30;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v19;
        swift_getErrorValue();
        v20 = *(v0 + 168);
        v21 = *(v0 + 176);
        *(inited + 72) = v21;
        v22 = sub_100180240((inited + 48));
        (*(*(v21 - 8) + 16))(v22, v20, v21);
        sub_10018F334(inited);
        swift_setDeallocating();
        sub_1000073B4(inited + 32, &unk_1006BFA10);
        sub_1002D4FA4(&qword_1006BE4D0, type metadata accessor for ICError);
        _BridgedStoredNSError.init(_:userInfo:)();
      }

      swift_willThrow();

      goto LABEL_12;
    }

    v11 = *(v0 + 656);
    sub_100197CCC();
    swift_allocError();
    v13 = 10;
  }

  *v12 = v13;
  swift_willThrow();

LABEL_12:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1002D423C@<X0>(uint64_t *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  v3 = ICCreateNoteAction.perform(withTitle:contents:pinned:container:)();

  if (!v1)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1002D42DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1001E26AC;

  return CreateNoteFromMarkdownIntent.perform()(a1);
}

id sub_1002D4388()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithPlainMarkdown:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1002D4454@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v1 = sub_10015DA04(&unk_1006BF9D0);
  __chkstk_darwin(v1 - 8);
  v55 = &v48[-v2];
  v72 = type metadata accessor for InputConnectionBehavior();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v73 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10015DA04(&unk_1006BE0D0);
  v5 = __chkstk_darwin(v4 - 8);
  v54 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v69 = &v48[-v7];
  v8 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v8 - 8);
  v61 = &v48[-v9];
  v10 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v10 - 8);
  v60 = &v48[-v11];
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for LocalizedStringResource();
  v67 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v59 = &v48[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v13 + 104);
  v49 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v57 = v12;
  v22(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v50 = v22;
  v58 = v13 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22(v15, v21, v12);
  v23 = v60;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = *(v19 + 56);
  v66 = v19 + 56;
  v68 = v24;
  v24(v23, 0, 1, v18);
  v25 = type metadata accessor for String.IntentInputOptions();
  v77 = 0;
  v78 = 0;
  v26 = *(v25 - 8);
  v51 = *(v26 + 56);
  v52 = v26 + 56;
  v51(v61, 1, 1, v25);
  v62 = type metadata accessor for IntentDialog();
  v27 = *(v62 - 8);
  v63 = *(v27 + 56);
  v64 = v27 + 56;
  v63(v69, 1, 1, v62);
  v71 = enum case for InputConnectionBehavior.default(_:);
  v65 = *(v74 + 104);
  v74 += 104;
  v28 = v72;
  v65(v73);
  v53 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = v49;
  v30 = v57;
  v31 = v50;
  v50(v15, v49, v57);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31(v15, v29, v30);
  v32 = v60;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v68(v32, 0, 1, v67);
  v77 = 0;
  v78 = 0;
  v51(v61, 1, 1, v25);
  v33 = v69;
  v63(v69, 1, 1, v62);
  (v65)(v73, v71, v28);
  v70 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v61 = sub_10015DA04(&unk_1006BCB60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = v57;
  v31(v15, v29, v57);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31(v15, v29, v34);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v68(v32, 0, 1, v67);
  v35 = type metadata accessor for FolderEntity();
  (*(*(v35 - 8) + 56))(v55, 1, 1, v35);
  v36 = v62;
  v37 = v63;
  v63(v33, 1, 1, v62);
  v37(v54, 1, 1, v36);
  v77 = sub_10019C71C();
  v78 = v38;
  v79 = v39 & 1;
  v80 = v40 & 1;
  v81 = v41 & 1;
  v82 = v42 & 1;
  (v65)(v73, v71, v72);
  sub_100179874();
  v43 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_10015DA04(&qword_1006C34B0);
  v75 = 0xD000000000000021;
  v76 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v44 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v75 = 0xD000000000000024;
  v76 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v46 = v56;
  v47 = v70;
  *v56 = v53;
  v46[1] = v47;
  v46[2] = v43;
  v46[3] = v44;
  v46[4] = result;
  return result;
}

uint64_t sub_1002D4FA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002D4FF0()
{
  result = qword_1006C3488;
  if (!qword_1006C3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3488);
  }

  return result;
}

unint64_t sub_1002D5048()
{
  result = qword_1006C3490;
  if (!qword_1006C3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3490);
  }

  return result;
}

unint64_t sub_1002D5214()
{
  result = qword_1006C34E0;
  if (!qword_1006C34E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C34E0);
  }

  return result;
}

void sub_1002D5260(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C5F80);
    sub_1002D938C();
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000054A4(0, &qword_1006C5F80), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_10019E530();
      return;
    }

LABEL_17:
    v12 = [v11 ic_participantName];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1001CAE70(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_1001CAE70((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

double InsertMentionIntent.init()@<D0>(_OWORD *a1@<X8>)
{
  sub_1002D896C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t InsertMentionIntent.target.setter(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v2 - 8);
  sub_1002D9248(a1, &v5 - v3);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(a1, &unk_1006BCAC0);
}

uint64_t sub_1002D5610()
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
  sub_100025918(v6, static InsertMentionIntent.title);
  sub_10002597C(v6, static InsertMentionIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t InsertMentionIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC740 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static InsertMentionIntent.title);
}

uint64_t static InsertMentionIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC740 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static InsertMentionIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static InsertMentionIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
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

uint64_t static InsertMentionIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C34E8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C34F0);
  __chkstk_darwin(v1);
  sub_10021B188();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010056BEE0;
  v2._countAndFlagsBits = 0xD000000000000013;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C34F8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544106784;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C3500);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*InsertMentionIntent.target.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*InsertMentionIntent.mentionText.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t InsertNoteLinkIntent.insertionRange.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t InsertMentionIntent.perform()(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[26] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[27] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_10015DA04(&unk_1006BE0D0);
  v2[32] = swift_task_alloc();
  sub_10015DA04(&unk_1006BCAC0);
  v2[33] = swift_task_alloc();
  v5 = type metadata accessor for NoteEntity(0);
  v2[34] = v5;
  v2[35] = *(v5 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_1002D616C, 0, 0);
}

uint64_t sub_1002D616C()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[22];
  v5 = swift_allocObject();
  v0[38] = v5;
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  v0[39] = v6;
  *(v6 + 16) = 0;
  v0[40] = *v4;
  IntentParameter.wrappedValue.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[30];
    v18 = v0[31];
    v19 = v0[29];
    v20 = v0[28];
    v21 = v0[32];
    v8 = v0[24];
    v9 = v0[25];
    v10 = v0[23];
    sub_1000073B4(v0[33], &unk_1006BCAC0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v8 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    (*(v19 + 16))(v7, v18, v20);
    IntentDialog.init(_:)();
    v11 = type metadata accessor for IntentDialog();
    (*(*(v11 - 8) + 56))(v21, 0, 1, v11);
    type metadata accessor for AppIntentError();
    sub_1002D9420(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v21, &unk_1006BE0D0);
    swift_willThrow();
    (*(v19 + 8))(v18, v20);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[22];
    sub_1002D92B8(v0[33], v0[37]);
    v0[41] = *(v14 + 40);
    AppDependency.wrappedValue.getter();
    v15 = v0[14];
    v0[42] = v15;
    v16 = swift_allocObject();
    v0[43] = v16;
    *(v16 + 16) = v5;
    *(v16 + 24) = v6;

    v17 = swift_task_alloc();
    v0[44] = v17;
    *v17 = v0;
    v17[1] = sub_1002D65B0;

    return sub_1001A9A64(sub_1001A9A64, v15, sub_1002D931C, v16);
  }
}

uint64_t sub_1002D65B0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 336);

  if (v0)
  {
    v4 = sub_1002D8118;
  }

  else
  {
    v4 = sub_1002D66FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002D66FC()
{
  v1 = *(v0 + 304);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 368) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = [v3 managedObjectContext];
    *(v0 + 376) = v4;
    if (v4)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      v6 = swift_allocObject();
      *(v0 + 384) = v6;
      *(v6 + 16) = sub_1002D9488;
      *(v6 + 24) = v5;
      v7 = v3;
      v8 = swift_task_alloc();
      *(v0 + 392) = v8;
      v9 = sub_10015DA04(&qword_1006BE060);
      *v8 = v0;
      v8[1] = sub_1002D6DB4;
      v10 = sub_1002D94A4;
      v11 = v0 + 544;
      v12 = v6;
LABEL_4:

      return NSManagedObjectContext.perform<A>(_:)(v11, v10, v12, v9);
    }

    *(v0 + 408) = *(*(v0 + 176) + 8);
    IntentParameter.wrappedValue.getter();
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);

    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    v19 = *(v0 + 368);
    if (v18)
    {
      v20 = [*(v0 + 368) managedObjectContext];
      *(v0 + 416) = v20;
      if (v20)
      {
        v21 = *(v0 + 368);
        v22 = swift_allocObject();
        *(v0 + 424) = v22;
        *(v22 + 16) = v21;
        v23 = v21;
        v24 = swift_task_alloc();
        *(v0 + 432) = v24;
        v9 = sub_1000054A4(0, &qword_1006C3508);
        *v24 = v0;
        v24[1] = sub_1002D7244;
        v10 = sub_1002D9338;
        v11 = v0 + 120;
        v12 = v22;
        goto LABEL_4;
      }

      v34 = *(v0 + 368);
      v14 = *(v0 + 296);
      sub_100197CCC();
      swift_allocError();
      *v35 = 40;
      swift_willThrow();
    }

    else
    {
      v14 = *(v0 + 296);
      v32 = *(v0 + 256);
      IntentParameter.projectedValue.getter();
      v33 = type metadata accessor for IntentDialog();
      (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
      type metadata accessor for AppIntentError();
      sub_1002D9420(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_1000073B4(v32, &unk_1006BE0D0);
      swift_willThrow();
    }
  }

  else
  {
    v13 = *(v0 + 312);
    swift_beginAccess();
    if (*(v13 + 16))
    {
      v14 = *(v0 + 296);
      sub_100197CCC();
      swift_allocError();
      *v15 = 4;
      swift_willThrow();
    }

    else
    {
      v25 = *(v0 + 248);
      v26 = *(v0 + 256);
      v27 = *(v0 + 240);
      v38 = *(v0 + 232);
      v39 = *(v0 + 224);
      v40 = *(v0 + 296);
      v28 = *(v0 + 200);
      v30 = *(v0 + 184);
      v29 = *(v0 + 192);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v29 + 104))(v28, enum case for LocalizedStringResource.BundleDescription.main(_:), v30);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentParameter.projectedValue.getter();
      (*(v38 + 16))(v27, v25, v39);
      IntentDialog.init(_:)();
      v31 = type metadata accessor for IntentDialog();
      (*(*(v31 - 8) + 56))(v26, 0, 1, v31);
      type metadata accessor for AppIntentError();
      sub_1002D9420(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_1000073B4(v26, &unk_1006BE0D0);
      swift_willThrow();
      (*(v38 + 8))(v25, v39);
      v14 = v40;
    }
  }

  sub_1001AD144(v14);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1002D6DB4()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 376);

  if (v0)
  {
    v4 = sub_1002D8208;
  }

  else
  {
    v4 = sub_1002D6F00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002D6F00()
{
  *(v0 + 408) = *(*(v0 + 176) + 8);
  IntentParameter.wrappedValue.getter();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = *(v0 + 368);
  if (v3)
  {
    v5 = [*(v0 + 368) managedObjectContext];
    *(v0 + 416) = v5;
    if (v5)
    {
      v6 = *(v0 + 368);
      v7 = swift_allocObject();
      *(v0 + 424) = v7;
      *(v7 + 16) = v6;
      v8 = v6;
      v9 = swift_task_alloc();
      *(v0 + 432) = v9;
      v10 = sub_1000054A4(0, &qword_1006C3508);
      *v9 = v0;
      v9[1] = sub_1002D7244;

      return NSManagedObjectContext.perform<A>(_:)(v0 + 120, sub_1002D9338, v7, v10);
    }

    v4 = *(v0 + 368);
    v11 = *(v0 + 296);
    sub_100197CCC();
    swift_allocError();
    *v14 = 40;
  }

  else
  {
    v11 = *(v0 + 296);
    v12 = *(v0 + 256);
    IntentParameter.projectedValue.getter();
    v13 = type metadata accessor for IntentDialog();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    type metadata accessor for AppIntentError();
    sub_1002D9420(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v12, &unk_1006BE0D0);
  }

  swift_willThrow();

  sub_1001AD144(v11);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1002D7244()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 416);

    return _swift_task_switch(sub_1002D7384, 0, 0);
  }
}

uint64_t sub_1002D7384()
{
  v1 = *(v0 + 120);
  *(v0 + 440) = v1;
  v2 = v1;
  IntentParameter.wrappedValue.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 participantsForKey:v3];

  if (!v4)
  {
    goto LABEL_9;
  }

  sub_1000054A4(0, &qword_1006C5F80);
  sub_1002D938C();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*(v5 + 16) >= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (__CocoaSet.count.getter() < 1)
  {
LABEL_8:

LABEL_9:
    v20 = *(v0 + 368);
    v21 = *(v0 + 296);
    sub_100197CCC();
    swift_allocError();
    *v22 = 40;
    swift_willThrow();

    sub_1001AD144(v21);

    goto LABEL_10;
  }

LABEL_4:
  *(v0 + 128) = v5;
  sub_10015DA04(&qword_1006C3510);
  sub_1000060B4(&qword_1006C3518, &qword_1006C3510);
  Collection.only.getter();
  v6 = *(v0 + 136);
  *(v0 + 448) = v6;
  v7 = *(v0 + 368);
  if (v6)
  {

    v8 = [v7 managedObjectContext];
    *(v0 + 456) = v8;
    if (v8)
    {
      v9 = *(v0 + 368);
      v10 = *(v0 + 176);
      v11 = swift_allocObject();
      *(v0 + 464) = v11;
      v13 = v10[1];
      v12 = v10[2];
      *(v11 + 16) = *v10;
      *(v11 + 32) = v13;
      *(v11 + 48) = v12;
      *(v11 + 64) = v9;
      *(v11 + 72) = v6;
      v14 = v9;

      v15 = v6;
      v16 = swift_task_alloc();
      *(v0 + 472) = v16;
      v17 = sub_10015DA04(&qword_1006BE558);
      *v16 = v0;
      v16[1] = sub_1002D78F8;
      v18 = sub_1002D9468;
      v19 = v0 + 96;
LABEL_15:

      return NSManagedObjectContext.perform<A>(_:)(v19, v18, v11, v17);
    }

    v27 = *(v0 + 368);
    v28 = *(v0 + 296);

    type metadata accessor for ICError(0);
    *(v0 + 160) = 227;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1002D9420(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_1001AD144(v28);
  }

  else
  {
    v25 = [*(v0 + 368) managedObjectContext];
    *(v0 + 520) = v25;
    if (v25)
    {
      v11 = swift_allocObject();
      *(v0 + 528) = v11;
      *(v11 + 16) = v5;
      v26 = swift_task_alloc();
      *(v0 + 536) = v26;
      v17 = sub_10015DA04(&qword_1006C13F0);
      *v26 = v0;
      v26[1] = sub_1002D7C30;
      v18 = sub_1002D93F4;
      v19 = v0 + 144;
      goto LABEL_15;
    }

    v29 = *(v0 + 440);
    v30 = *(v0 + 368);
    v31 = *(v0 + 296);
    sub_100197CCC();
    swift_allocError();
    *v32 = 40;
    swift_willThrow();

    sub_1001AD144(v31);
  }

LABEL_10:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1002D78F8()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 456);

  if (v0)
  {
    v4 = sub_1002D8304;
  }

  else
  {
    v4 = sub_1002D7A44;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002D7A44()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 368);

  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 488) = v3;
  *(v0 + 496) = v4;
  v5 = v3;
  v6 = v4;
  v7 = swift_task_alloc();
  *(v0 + 504) = v7;
  *v7 = v0;
  v7[1] = sub_1002D7B1C;
  v8 = *(v0 + 288);

  return NoteEntity.init(for:in:)(v8, v5, v6);
}

uint64_t sub_1002D7B1C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_1002D840C;
  }

  else
  {
    v2 = sub_1002D7FB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D7C30()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 520);

    return _swift_task_switch(sub_1002D7D74, 0, 0);
  }
}

uint64_t sub_1002D7D74()
{
  if (*(v0[18] + 16) < 2uLL)
  {

    v1 = v0[55];
    v2 = v0[46];
    v3 = v0[37];
    sub_100197CCC();
    swift_allocError();
    *v6 = 40;
  }

  else
  {
    v1 = v0[55];
    v2 = v0[46];
    v3 = v0[37];
    v4 = v0[32];
    IntentParameter.projectedValue.getter();
    v5 = type metadata accessor for IntentDialog();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    type metadata accessor for AppIntentError();
    sub_1002D9420(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsDisambiguationError(among:dialog:)();

    sub_1000073B4(v4, &unk_1006BE0D0);
  }

  swift_willThrow();

  sub_1001AD144(v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002D7FB4()
{
  v2 = v0[61];
  v1 = v0[62];
  v4 = v0[36];
  v3 = v0[37];
  sub_1002D9420(&qword_1006BE480, type metadata accessor for NoteEntity);
  static IntentResult.result<A>(value:)();

  sub_1001AD144(v4);
  sub_1001AD144(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D8118()
{
  sub_1001AD144(*(v0 + 296));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D8208()
{
  v1 = *(v0 + 296);

  sub_1001AD144(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002D8304()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 368);
  v3 = *(v0 + 296);

  sub_1001AD144(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002D840C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 296);

  sub_1001AD144(v2);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1002D850C(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = a1;
  }

  swift_beginAccess();
  v8 = *(a2 + 16);
  *(a2 + 16) = v6;

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = a1;
  }

  swift_beginAccess();
  v11 = *(a3 + 16);
  *(a3 + 16) = v9;
}

id sub_1002D85DC(void *a1)
{
  if (![a1 isSharedViaICloud])
  {
    v2 = 5;
    goto LABEL_5;
  }

  if ([a1 isPasswordProtectedAndLocked])
  {
    v2 = 15;
LABEL_5:
    sub_100197CCC();
    swift_allocError();
    *v3 = v2;
    return swift_willThrow();
  }

  result = [a1 isEditable];
  if (!result)
  {
    v2 = 16;
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1002D867C@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  IntentParameter.wrappedValue.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = [a2 ic_participantNameMatchingString:v7 returnFullName:0];

  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    IntentParameter.wrappedValue.getter();
  }

  v9 = [a2 ic_userRecordNameInNote:a1];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_1002D967C(a1);
  if (v3)
  {
  }

  else
  {
    v13 = v10;
    v14 = v11;

    *a3 = v13;
    a3[1] = v14;
  }

  return result;
}

uint64_t sub_1002D87CC(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1002D8878;

  return InsertMentionIntent.perform()(a1);
}

uint64_t sub_1002D8878()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002D896C@<X0>(void *a1@<X8>)
{
  v62 = a1;
  v1 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v1 - 8);
  v61 = &v44[-v2];
  v3 = type metadata accessor for InputConnectionBehavior();
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  __chkstk_darwin(v3);
  v65 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10015DA04(&unk_1006BE0D0);
  v7 = __chkstk_darwin(v6 - 8);
  v60 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v64 = &v44[-v9];
  v10 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v10 - 8);
  v59 = &v44[-v11];
  v12 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v12 - 8);
  v63 = &v44[-v13];
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for Locale();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for LocalizedStringResource();
  v56 = v20;
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v47 = &v44[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v24 = *(v15 + 104);
  v48 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v49 = v14;
  v24(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  v51 = v24;
  v50 = v15 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v17, v23, v14);
  v25 = v63;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = *(v21 + 56);
  v55 = v21 + 56;
  v57 = v26;
  v26(v25, 0, 1, v20);
  v27 = type metadata accessor for NoteEntity(0);
  (*(*(v27 - 8) + 56))(v59, 1, 1, v27);
  v28 = type metadata accessor for IntentDialog();
  v52 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v53 = v30;
  v54 = v29 + 56;
  v30(v64, 1, 1, v28);
  v30(v60, 1, 1, v28);
  v70 = sub_10026EE08();
  v71 = v31;
  v72 = v32;
  v73 = v33;
  v74 = v34;
  v45 = enum case for InputConnectionBehavior.default(_:);
  v35 = *(v67 + 104);
  v67 += 104;
  v46 = v35;
  v35(v65);
  sub_1001797CC();
  v36 = v63;
  v60 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_10015DA04(&unk_1006BCB70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v37 = v48;
  v38 = v49;
  v39 = v51;
  v51(v17, v48, v49);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39(v17, v37, v38);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v57(v36, 0, 1, v56);
  v40 = type metadata accessor for String.IntentInputOptions();
  v70 = 0;
  v71 = 0;
  (*(*(v40 - 8) + 56))(v61, 1, 1, v40);
  v53(v64, 1, 1, v52);
  v46(v65, v45, v66);
  v41 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10015DA04(&qword_1006C34B0);
  v68 = 0xD000000000000021;
  v69 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v43 = v62;
  *v62 = v60;
  v43[1] = v41;
  v43[2] = 0;
  v43[3] = 0;
  *(v43 + 32) = 1;
  v43[5] = result;
  return result;
}

uint64_t sub_1002D9248(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006BCAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D92B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1002D9338@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(ICMentionsController) initWithNote:*(v1 + 16)];
  *a1 = result;
  return result;
}

unint64_t sub_1002D938C()
{
  result = qword_1006C1800;
  if (!qword_1006C1800)
  {
    sub_1000054A4(255, &qword_1006C5F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1800);
  }

  return result;
}

uint64_t sub_1002D9420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002D94A4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

unint64_t sub_1002D94DC()
{
  result = qword_1006C3520;
  if (!qword_1006C3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3520);
  }

  return result;
}

unint64_t sub_1002D9534()
{
  result = qword_1006C3528;
  if (!qword_1006C3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3528);
  }

  return result;
}

uint64_t sub_1002D95D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1002D9620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1002D967C(void *a1)
{
  v1 = a1;
  v2 = [a1 managedObjectContext];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 textStorage];
    if (v4)
    {
      v14 = v4;
      v13 = [v4 length];
      v5 = [objc_allocWithZone(ICAttachmentInsertionController) initWithNote:v1];
      v6 = objc_opt_self();
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      v9 = [v6 createMentionAttachmentIfApplicableWithMentionText:v7 userRecordName:v8 note:v1 parentAttachment:0];

      if (v9)
      {

        v10 = String._bridgeToObjectiveC()();
        [v9 updateChangeCountWithReason:v10];
      }

      [v1 updateModificationDateAndChangeCountAndSaveImmediately];
      v15 = 0;
      if ([v3 save:&v15])
      {
        v11 = v15;
        v1 = [v1 objectID];
      }

      else
      {
        v1 = v15;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      type metadata accessor for ICError(0);
      sub_1001E27A0(_swiftEmptyArrayStorage);
      sub_1002D9420(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1002D9420(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1002D9A24()
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
  sub_100025918(v6, static OpenNotesViewIntent.title);
  sub_10002597C(v6, static OpenNotesViewIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenNotesViewIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC748 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static OpenNotesViewIntent.title);
}

uint64_t static OpenNotesViewIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC748 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static OpenNotesViewIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenNotesViewIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
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

uint64_t static OpenNotesViewIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C3540);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C3548);
  __chkstk_darwin(v1);
  sub_100020BCC();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C3550);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7765697620;
  v3._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*OpenNotesViewIntent.target.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*OpenNotesViewIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_1002DA2B0@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1002DA324(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t sub_1002DA398()
{
  v0 = sub_10015DA04(&qword_1006C3540);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C3548);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C3550);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7765697620;
  v3._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1002DA53C@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes04OpenB10ViewIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s11MobileNotes04OpenB10ViewIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v26 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v23 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v24 = v23 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23[1] = sub_10015DA04(&qword_1006BCCC0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v24;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v32 = 2;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v25, 1, 1, v19);
  v20(v26, 1, 1, v19);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_100179AA8();
  v21 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10015DA04(&unk_1006BCA40);
  v30 = 0xD000000000000024;
  v31 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v21;
}

unint64_t sub_1002DAAC4()
{
  result = qword_1006C3558;
  if (!qword_1006C3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3558);
  }

  return result;
}

unint64_t sub_1002DAB1C()
{
  result = qword_1006C3560;
  if (!qword_1006C3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3560);
  }

  return result;
}

uint64_t ICArchivePreviewer.__allocating_init(forArchiveAt:)(void (**a1)(char *, uint64_t))
{
  v2 = swift_allocObject();
  ICArchivePreviewer.init(forArchiveAt:)(a1);
  return v2;
}

id ICArchivePreviewer.startPreviewing(_:completion:)(uint64_t a1, void (*a2)(void *, uint64_t), void *a3)
{
  v4 = v3;
  v73 = a2;
  v74 = a3;
  v6 = type metadata accessor for URL();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10015DA04(&qword_1006BE8D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v70 - v15;
  __chkstk_darwin(v14);
  v18 = &v70 - v17;
  swift_beginAccess();
  v19 = *(v3 + 24);
  if (*(v19 + 16) && (v20 = sub_1002DF478(a1), (v21 & 1) != 0))
  {
    v70 = a1;
    v22 = *(v19 + 56) + 24 * v20;
    v24 = *v22;
    v23 = *(v22 + 8);
    v25 = *(v22 + 16);
    swift_endAccess();
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        swift_errorRetain();
        v73(v24, 1);
        v44 = [objc_allocWithZone(NSProgress) init];
        sub_1002E6310(v24, v23, 2);
        return v44;
      }

      else
      {
        v49 = [objc_opt_self() progressWithTotalUnitCount:1];
        sub_10015DA04(&qword_1006BF470);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_100531E30;
        v51 = swift_allocObject();
        v52 = v74;
        *(v51 + 16) = v73;
        *(v51 + 24) = v52;
        *(v50 + 32) = sub_1002E1934;
        *(v50 + 40) = v51;
        swift_beginAccess();

        v74 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = *(v4 + 24);
        *(v4 + 24) = 0x8000000000000000;
        v54 = v70;
        sub_1002E6110(v49, v50, 0, v70, isUniquelyReferenced_nonNull_native);
        *(v4 + 24) = v76;
        swift_endAccess();
        v55 = v10;
        v56 = *(v10 + 16);
        v56(v18, v54, v9);
        v57 = *(v55 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = v4;
        v71 = *(v55 + 32);
        v72 = v58;
        v59 = v18;
        v60 = v9;
        (v71)(v58 + ((v57 + 24) & ~v57), v59, v9);
        v73 = *(v4 + 16);
        v56(v16, v70, v9);
        v61 = (v57 + 16) & ~v57;
        v62 = (v11 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
        v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
        v64 = swift_allocObject();
        (v71)(v64 + v61, v16, v60);
        v65 = v74;
        *(v64 + v62) = v74;
        *(v64 + v63) = v4;
        v66 = (v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8));
        v67 = v72;
        *v66 = sub_1002E6308;
        v66[1] = v67;
        aBlock[4] = sub_1002E630C;
        aBlock[5] = v64;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002DEFE0;
        aBlock[3] = &unk_100654460;
        v68 = _Block_copy(aBlock);
        swift_retain_n();
        v69 = v65;

        [v73 performBackgroundTask:v68];
        _Block_release(v68);

        return v69;
      }
    }

    else if (v25)
    {
      v45 = objc_opt_self();
      v46 = v24;
      v47 = [v45 progressWithTotalUnitCount:1];
      [v47 setCompletedUnitCount:{objc_msgSend(v47, "totalUnitCount")}];
      v48 = v46;
      v73(v24, 0);
      sub_1002E6310(v24, v23, 1);
      sub_1002E6310(v24, v23, 1);
      return v47;
    }

    else
    {
      sub_10015DA04(&qword_1006BF470);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100531E30;
      v27 = swift_allocObject();
      v28 = v74;
      *(v27 + 16) = v73;
      *(v27 + 24) = v28;
      *(inited + 32) = sub_1002ED094;
      *(inited + 40) = v27;
      aBlock[0] = v23;
      sub_1001CD894(v24, v23, 0);
      v29 = v24;

      sub_1002DBAA8(inited);
      v30 = aBlock[0];
      swift_beginAccess();
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v76 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      sub_1002E6110(v24, v30, 0, v70, v31);
      *(v4 + 24) = v76;
      swift_endAccess();
      return v29;
    }
  }

  else
  {
    swift_endAccess();
    if (qword_1006BC750 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10002597C(v33, qword_1006C3588);
    v34 = v10;
    (*(v10 + 16))(v13, a1, v9);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock[0] = v70;
      *v37 = 136315138;
      ICObjectReferences.identifier.getter();
      sub_1002ED028(&qword_1006C0FF8, &type metadata accessor for URL);
      v38 = v72;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v71 + 8))(v8, v38);
      (*(v34 + 8))(v13, v9);
      v42 = sub_100009D88(v39, v41, aBlock);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "Object to be previewed does not exist {url: %s}", v37, 0xCu);
      sub_100009F60(v70);
    }

    else
    {

      (*(v34 + 8))(v13, v9);
    }

    sub_1001CDC44();
    swift_allocError();
    *v43 = 4;
    (v73)();

    return [objc_allocWithZone(NSProgress) init];
  }
}

void ICArchivePreviewer.stopPreviewing(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&qword_1006BE8D0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  swift_beginAccess();
  v12 = v1[3];
  if (!*(v12 + 16) || (v13 = sub_1002DF478(a1), (v14 & 1) == 0))
  {
    v37 = v5;
    swift_endAccess();
    if (qword_1006BC750 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  v15 = *(v12 + 56) + 24 * v13;
  v16 = *v15;
  v4 = *(v15 + 8);
  v17 = *(v15 + 16);
  swift_endAccess();
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v2[3];
      v2[3] = 0x8000000000000000;
      v31 = v16;
      v32 = v4;
      goto LABEL_15;
    }

LABEL_14:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v2[3];
    v2[3] = 0x8000000000000000;
    v31 = 0;
    v32 = 0;
LABEL_15:
    sub_1002E6110(v31, v32, 3, a1, isUniquelyReferenced_nonNull_native);
    v2[3] = v38;
    swift_endAccess();
    return;
  }

  if (!v17)
  {
    v8 = v16;

    [v8 cancel];
    swift_beginAccess();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v2[3];
    v2[3] = 0x8000000000000000;
    sub_1002E6110(0, 0, 3, a1, v18);
    v2[3] = v38;
    swift_endAccess();
    v2 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v9 = *(v4 + 16);
    if (!v9)
    {
LABEL_9:

      return;
    }

    v7 = 0;
    v11 = (v4 + 40);
    while (v7 < *(v4 + 16))
    {
      ++v7;
      v19 = *(v11 - 1);
      v39 = v2;
      v40 = 1;

      v19(&v39);

      v11 += 16;
      if (v9 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
LABEL_11:
    v20 = type metadata accessor for Logger();
    sub_10002597C(v20, qword_1006C3588);
    (*(v9 + 16))(v11, a1, v8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = a1;
      v24 = v23;
      v35 = swift_slowAlloc();
      v39 = v35;
      *v24 = 136315138;
      ICObjectReferences.identifier.getter();
      sub_1002ED028(&qword_1006C0FF8, &type metadata accessor for URL);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v4;
      v28 = v27;
      (*(v37 + 8))(v7, v26);
      (*(v9 + 8))(v11, v8);
      v29 = sub_100009D88(v25, v28, &v39);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Object to be previewed does not exist {url: %s}", v24, 0xCu);
      sub_100009F60(v35);

      a1 = v36;
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    goto LABEL_14;
  }

  [v16 setMarkedForDeletion:1];
  swift_beginAccess();
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v2[3];
  v2[3] = 0x8000000000000000;
  sub_1002E6110(0, 0, 3, a1, v33);
  v2[3] = v38;
  swift_endAccess();
  sub_1002E6310(v16, v4, 1);
}

void *sub_1002DBAA8(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1001CAC30(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10015DA04(&qword_1006BFE10);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002DBBAC(void *a1)
{
  v2 = v1;
  if (*a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v3 & (v3 >> 63);
  v5 = *v1;
  v6 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = v5[3] >> 1, v8 < v6 + v4))
  {
    v5 = sub_1001CAF7C(isUniquelyReferenced_nonNull_native, v6, 1, v5);
    v8 = v5[3] >> 1;
  }

  v9 = v5[2];
  v10 = v8 - v9;
  v11 = sub_1001CA1B8(v27, &v5[2 * v9 + 4], v8 - v9);
  if (v11 < v4)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= 1)
    {
      v12 = v5[2];
      v13 = __OFADD__(v12, v11);
      v14 = v12 + v11;
      if (v13)
      {
        __break(1u);
LABEL_27:
        v5[2] = v10;
        goto LABEL_11;
      }

      v5[2] = v14;
    }

    if (v11 != v10)
    {
      goto LABEL_11;
    }
  }

  v10 = v5[2];
  v16 = sub_1002EBC0C();
  if (v16)
  {
    while (1)
    {
      v18 = v5[3];
      v19 = v18 >> 1;
      if ((v18 >> 1) < v10 + 1)
      {
        v22 = v16;
        v23 = v17;
        v24 = sub_1001CAF7C((v18 > 1), v10 + 1, 1, v5);
        v17 = v23;
        v5 = v24;
        v16 = v22;
        v19 = v5[3] >> 1;
      }

      if (v10 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v10;
      }

      v21 = &v5[2 * v10 + 5];
      while (v20 != v10)
      {
        *(v21 - 1) = v16;
        *v21 = v17;
        ++v10;
        v16 = sub_1002EBC0C();
        v21 += 2;
        if (!v16)
        {
          goto LABEL_27;
        }
      }

      v5[2] = v20;
      v10 = v20;
    }
  }

LABEL_11:
  v25[0] = v27[0];
  v25[1] = v27[1];
  v25[2] = v27[2];
  v26 = v28;
  result = sub_1000073B4(v25, &qword_1006C36E8);
  *v2 = v5;
  return result;
}

uint64_t sub_1002DBDC8(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_100017230(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_1001CA440(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_10019E530();
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_1000054A4(0, &qword_1006BFEC0);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_1000054A4(0, &qword_1006BFEC0);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1002DC150(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1001CB534(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1002DC284(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1001CB6C0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10015DA04(&qword_1006BF3C0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002DC388(uint64_t a1)
{
  v66 = _s3TagVMa();
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&qword_1006C3670);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v63 = &v51 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = *(a1 + 16);
  v16 = *v2;
  v17 = *(*v2 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1001CBA60(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1001CA8FC(&v67, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v25 = v16[2];
    v26 = __OFADD__(v25, result);
    v27 = v25 + result;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v16[2] = v27;
  }

  if (result != v23)
  {
    result = sub_10019E530();
LABEL_14:
    *v2 = v16;
    return result;
  }

LABEL_17:
  v62 = v16[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_1002EC12C(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v14, _s3TagVMa);
    v33 = v66;
    v57 = *(v1 + 56);
    v57(v14, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_100006038(v14, v63, &qword_1006C3670);
      v35 = *(v1 + 48);
      v1 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_1000073B4(v34, &qword_1006C3670);
        v39 = v16[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v16 = sub_1001CBA60(v39 > 1, v36 + 1, 1, v16);
          v40 = v16[3] >> 1;
        }

        v41 = v65;
        sub_100006038(v14, v65, &qword_1006C3670);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_1000073B4(v43, &qword_1006C3670);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v16[2] = v37;
        v34 = v63;
        sub_100006038(v14, v63, &qword_1006C3670);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v16 + v18;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_1002EC194(v43, v64, _s3TagVMa);
        if (v62 == v59)
        {
          sub_10024E354(v47);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_1000073B4(v14, &qword_1006C3670);
        sub_1002EC194(v47, &v58[v4 * v17], _s3TagVMa);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_1002EC12C(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v14, _s3TagVMa);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v14, v45, 1, v66);
        v43 = v65;
        sub_100006038(v14, v65, &qword_1006C3670);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v1 + 56);
      v57(v14, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_1000073B4(v14, &qword_1006C3670);
    sub_10019E530();
    result = sub_1000073B4(v34, &qword_1006C3670);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002DCAB0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100017230(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1002DCBD4(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1002DCD18(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v67 = a2;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10015DA04(&unk_1006C1710);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v65 = &v51 - v17;
  __chkstk_darwin(v16);
  v18 = &v51;
  v20 = &v51 - v19;
  v21 = (a4 >> 1);
  v22 = __OFSUB__(a4 >> 1, a3);
  v23 = (a4 >> 1) - a3;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  v66 = v11;
  v68 = v9;
  v69 = a1;
  v11 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = (v11[3] >> 1), v18 < v25))
  {
    if (v24 <= v25)
    {
      v27 = v24 + v23;
    }

    else
    {
      v27 = v24;
    }

    v11 = sub_1001CBEC4(isUniquelyReferenced_nonNull_native, v27, 1, v11);
    v18 = (v11[3] >> 1);
  }

  v28 = &v18[-v11[2]];
  if (v21 == a3)
  {
    if (v23 <= 0)
    {
      v23 = 0;
      v18 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v28 < v23)
  {
    __break(1u);
    goto LABEL_27;
  }

  result = swift_arrayInitWithCopy();
  if (v23 <= 0)
  {
LABEL_16:
    v18 = v21;
LABEL_17:
    if (v23 != v28)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v11;
      return result;
    }

LABEL_23:
    v64 = v18;
    v23 = v11[2];
    v25 = v68;
    v53 = *(v68 + 56);
    v54 = v68 + 56;
    v53(v20, 1, 1, v8);
    v32 = v65;
    sub_100006038(v20, v65, &unk_1006C1710);
    v61 = *(v25 + 48);
    v62 = v25 + 48;
    if (v61(v32, 1, v8) == 1)
    {
      v33 = v65;
LABEL_25:
      sub_1000073B4(v20, &unk_1006C1710);
      swift_unknownObjectRelease();
      result = sub_1000073B4(v33, &unk_1006C1710);
      goto LABEL_19;
    }

LABEL_27:
    v57 = (v25 + 32);
    v51 = (v25 + 8);
    v52 = (v25 + 16);
    v34 = v23;
    v33 = v65;
    v59 = v20;
    v60 = v15;
    do
    {
      sub_1000073B4(v33, &unk_1006C1710);
      v36 = v11[3];
      v37 = v36 >> 1;
      v38 = v34;
      if ((v36 >> 1) < v34 + 1)
      {
        v11 = sub_1001CBEC4(v36 > 1, v34 + 1, 1, v11);
        v37 = v11[3] >> 1;
      }

      v39 = *(v68 + 80);
      sub_100006038(v20, v15, &unk_1006C1710);
      if (v61(v15, 1, v8) == 1)
      {
        v34 = v38;
        v40 = v60;
LABEL_34:
        sub_1000073B4(v40, &unk_1006C1710);
        v35 = v34;
        v33 = v65;
        v15 = v40;
      }

      else
      {
        v56 = v11 + ((v39 + 32) & ~v39);
        v41 = *v57;
        v34 = v38;
        if (v38 <= v37)
        {
          v42 = v37;
        }

        else
        {
          v42 = v38;
        }

        v58 = v42;
        v40 = v60;
        v55 = v41;
        while (1)
        {
          v46 = v66;
          v41(v66, v40, v8);
          if (v58 == v34)
          {
            break;
          }

          v47 = v59;
          sub_1000073B4(v59, &unk_1006C1710);
          v48 = v34;
          v49 = *(v68 + 72);
          v63 = v48;
          result = (v41)(&v56[v49 * v48], v46, v8);
          if (v64 == v21)
          {
            v43 = 1;
            v64 = v21;
            v44 = v60;
          }

          else
          {
            v44 = v60;
            if (v64 < a3 || v64 >= v21)
            {
              goto LABEL_47;
            }

            v50 = v64;
            (*v52)(v47, v67 + v49 * v64, v8);
            v43 = 0;
            v64 = v50 + 1;
          }

          v53(v47, v43, 1, v8);
          sub_100006038(v47, v44, &unk_1006C1710);
          v45 = v61(v44, 1, v8);
          v34 = v63 + 1;
          v40 = v44;
          v41 = v55;
          if (v45 == 1)
          {
            goto LABEL_34;
          }
        }

        (*v51)(v46, v8);
        v35 = v58;
        v34 = v58;
        v33 = v65;
        v15 = v60;
      }

      v20 = v59;
      v11[2] = v35;
      sub_100006038(v20, v33, &unk_1006C1710);
    }

    while (v61(v33, 1, v8) != 1);
    goto LABEL_25;
  }

  v30 = v11[2];
  v22 = __OFADD__(v30, v23);
  v31 = v30 + v23;
  if (!v22)
  {
    v11[2] = v31;
    goto LABEL_16;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1002DD33C()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C3588);
  sub_10002597C(v0, qword_1006C3588);
  return static Logger.archiving.getter();
}

uint64_t ICArchivePreviewer.init(forArchiveAt:)(void (**a1)(char *, uint64_t))
{
  v3 = v1;
  v73 = sub_10015DA04(&qword_1006BE860);
  v78 = *(v73 - 8);
  __chkstk_darwin(v73);
  v6 = v65 - v5;
  v82 = sub_10015DA04(&qword_1006BE8D0);
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = v65 - v7;
  *(v1 + 24) = sub_10018FDFC(_swiftEmptyArrayStorage);
  v8 = (v1 + 24);
  v9 = [objc_opt_self() sharedContext];
  if (!v9 || (v10 = v9, v11 = [v9 persistentContainer], v10, !v11))
  {
    if (qword_1006BC750 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_6;
  }

  v70 = v6;
  v71 = v8;
  *(v3 + 16) = v11;
  v72 = v11;
  v12 = [v72 viewContext];
  v13 = type metadata accessor for ICArchiveImporter();
  v76 = objc_allocWithZone(v13);
  ObjectType = swift_getObjectType();
  v14 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v74 = v2;
  v16 = IsAlexandriaDemoModeEnabled;
  v17 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v18 = objc_allocWithZone(v13);
  v18[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_isImporting] = 0;
  v19 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_errors;
  *&v18[v19] = sub_10018FC14(_swiftEmptyArrayStorage);
  *&v18[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_saveBatchSize] = 32;
  v18[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v20 = &v18[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v20 = 0u;
  v20[1] = 0u;
  *&v18[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_context] = v12;
  v21 = &v18[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration];
  *v21 = v16;
  v21[1] = v17;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = 0;
  *(v21 + 16) = 2;
  v22 = &v18[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager];
  *v22 = v14;
  v22[1] = &protocol witness table for NSFileManager;
  v81.receiver = v18;
  v81.super_class = v13;
  v23 = v12;
  v24 = objc_msgSendSuper2(&v81, "init");
  sub_10029FDE0();

  swift_deallocPartialClassInstance();
  v25 = v74;
  v26 = ICArchiveImporter.objects(forArchiveAt:)();
  if (v25)
  {
    v27 = type metadata accessor for URL();
    (*(*(v27 - 8) + 8))(a1, v27);

    return v3;
  }

  v66 = v24;
  v67 = 0;
  v34 = v26[2];
  v68 = a1;
  v69 = v3;
  if (v34)
  {
    v35 = *(v79 + 16);
    v36 = *(v79 + 80);
    v65[1] = v26;
    v74 = (v36 + 32) & ~v36;
    ObjectType = v35;
    v37 = v26 + v74;
    v3 = *(v79 + 72);
    v76 = (v79 + 16);
    a1 = (v79 + 8);
    v38 = _swiftEmptyArrayStorage;
    while (1)
    {
      v39 = v77;
      v40 = v82;
      ObjectType(v77, v37, v82);
      v41 = ICObjectReferences.recursiveChildren.getter();
      (*a1)(v39, v40);
      v42 = *(v41 + 16);
      v43 = v38[2];
      v44 = v43 + v42;
      if (__OFADD__(v43, v42))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        swift_once();
LABEL_6:
        v28 = type metadata accessor for Logger();
        sub_10002597C(v28, qword_1006C3588);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "No shared note context has been set up", v31, 2u);
        }

        [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:134060 userInfo:0];
        swift_willThrow();
        v32 = type metadata accessor for URL();
        (*(*(v32 - 8) + 8))(a1, v32);

        swift_deallocPartialClassInstance();
        return v3;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v44 <= v38[3] >> 1)
      {
        if (*(v41 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v43 <= v44)
        {
          v46 = v43 + v42;
        }

        else
        {
          v46 = v43;
        }

        v38 = sub_1001CAC0C(isUniquelyReferenced_nonNull_native, v46, 1, v38);
        if (*(v41 + 16))
        {
LABEL_23:
          if ((v38[3] >> 1) - v38[2] < v42)
          {
            goto LABEL_43;
          }

          swift_arrayInitWithCopy();

          if (v42)
          {
            v47 = v38[2];
            v48 = __OFADD__(v47, v42);
            v49 = v47 + v42;
            if (v48)
            {
              goto LABEL_44;
            }

            v38[2] = v49;
          }

          goto LABEL_13;
        }
      }

      if (v42)
      {
        goto LABEL_42;
      }

LABEL_13:
      v37 += v3;
      if (!--v34)
      {

        a1 = v68;
        v3 = v69;
        goto LABEL_29;
      }
    }
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_29:
  v50 = v38[2];
  v51 = v70;
  if (v50)
  {
    v80 = _swiftEmptyArrayStorage;
    sub_1001894E4(0, v50, 0);
    v52 = v80;
    v77 = *(v79 + 16);
    v53 = v38 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v79 += 16;
    v54 = *(v79 + 56);
    v55 = v73;
    do
    {
      (v77)(v51, v53, v82);
      v56 = v51 + *(v55 + 48);
      *v56 = 0;
      *(v56 + 8) = 0;
      *(v56 + 16) = 3;
      v80 = v52;
      v58 = v52[2];
      v57 = v52[3];
      if (v58 >= v57 >> 1)
      {
        sub_1001894E4(v57 > 1, v58 + 1, 1);
        v55 = v73;
        v52 = v80;
      }

      v52[2] = v58 + 1;
      sub_1002EBD08(v51, v52 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v58);
      v53 += v54;
      --v50;
    }

    while (v50);

    a1 = v68;
    v3 = v69;
  }

  else
  {

    v52 = _swiftEmptyArrayStorage;
  }

  v59 = v67;
  if (v52[2])
  {
    sub_10015DA04(&qword_1006BDD38);
    v60 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v60 = &_swiftEmptyDictionarySingleton;
  }

  v61 = v72;
  v80 = v60;
  sub_1002EB674(v52, 1, &v80);
  if (!v59)
  {
    v62 = type metadata accessor for URL();
    (*(*(v62 - 8) + 8))(a1, v62);

    v63 = v80;
    v64 = v71;
    swift_beginAccess();
    *v64 = v63;

    return v3;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t ICArchivePreviewer.deinit()
{
  v1 = sub_10015DA04(&qword_1006BE8D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  swift_beginAccess();
  v5 = *(v0 + 24);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v14 = v2 + 16;
  swift_bridgeObjectRetain_n();

  for (i = 0; v8; result = (*(v2 + 8))(v4, v1))
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v2 + 16))(v4, *(v5 + 48) + *(v2 + 72) * (v13 | (v12 << 6)), v1);
    ICArchivePreviewer.stopPreviewing(_:)(v4);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      *(v0 + 24) = &_swiftEmptyDictionarySingleton;

      return v0;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ICArchivePreviewer.__deallocating_deinit()
{
  ICArchivePreviewer.deinit();

  return swift_deallocClassInstance();
}

uint64_t ICArchivePreviewer.Errors.errorDescription.getter(uint64_t a1)
{
  if (a1)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v4;
  }

  return result;
}

uint64_t sub_1002DDF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002EC074();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

void *sub_1002DDFA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1002DDFC4(uint64_t a1)
{
  v2 = sub_1002EC074();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1002DE000(uint64_t a1)
{
  v2 = sub_1002EC074();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1002DE03C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002EC074();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

void sub_1002DE0C8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10015DA04(&qword_1006BE8D0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = (&v47 - v15);
  swift_beginAccess();
  v17 = *(a3 + 24);
  v18 = *(v17 + 16);
  v50 = v9;
  v51 = v8;
  v56 = a4;
  if (v18 && (v19 = sub_1002DF478(a4), (v20 & 1) != 0))
  {
    v21 = *(v17 + 56) + 24 * v19;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v54 = *v21;
    v55 = v23;
    sub_1001CD894(v54, v22, v23);
  }

  else
  {
    v54 = 0;
    v22 = 0;
    v55 = 255;
  }

  swift_endAccess();
  v52 = *(v12 + 16);
  v52(v16, v56, v11);
  swift_beginAccess();
  v24 = v12;
  v25 = v11;
  if (a2)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  sub_1002EC34C(a1, a2 & 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  v28 = v26;
  v29 = v25;
  sub_1002E6110(a1, 0, v28, v16, isUniquelyReferenced_nonNull_native);
  v30 = *(v24 + 8);
  v30(v16, v25);
  *(a3 + 24) = v57;
  swift_endAccess();
  LOBYTE(v16) = v55;
  if (v55)
  {
    v48 = v30;
    if (qword_1006BC750 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v43 = v54;
    sub_1001CD894(v54, v22, 0);

    v44 = *(v22 + 16);
    if (!v44)
    {
LABEL_16:
      sub_1002EC358(v43, v22, 0);

      return;
    }

    v45 = 0;
    v46 = v22 + 40;
    while (v45 < *(v22 + 16))
    {
      ++v45;
      v16 = *(v46 - 8);
      v58 = a1;
      v59 = a2 & 1;

      v16(&v58);

      v46 += 16;
      if (v44 == v45)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_10:
  v31 = type metadata accessor for Logger();
  sub_10002597C(v31, qword_1006C3588);
  v32 = v53;
  v52(v53, v56, v29);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v58 = v56;
    *v35 = 136315138;
    v36 = v49;
    LODWORD(v52) = v34;
    ICObjectReferences.identifier.getter();
    sub_1002ED028(&qword_1006C0FF8, &type metadata accessor for URL);
    v37 = v51;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v29;
    v41 = v40;
    (*(v50 + 8))(v36, v37);
    v48(v32, v39);
    v42 = sub_100009D88(v38, v41, &v58);

    *(v35 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v52, "Preview object is in unexpected state {url: %s}", v35, 0xCu);
    sub_100009F60(v56);

    sub_1002EC358(v54, v22, v55);
  }

  else
  {
    sub_1002EC358(v54, v22, v16);

    v48(v32, v29);
  }
}

uint64_t sub_1002DE614(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v64 = a5;
  v65 = a6;
  v61 = a4;
  v62 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin(v8);
  v68 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchQoS();
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v63 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for ICArchiveImporter();
  v13 = objc_allocWithZone(v12);
  swift_getObjectType();
  v14 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v16 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v17 = objc_allocWithZone(v12);
  v17[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_isImporting] = 0;
  v18 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_errors;
  v19 = a1;
  *&v17[v18] = sub_10018FC14(_swiftEmptyArrayStorage);
  v20 = a3;
  *&v17[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_saveBatchSize] = 32;
  v17[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v21 = &v17[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v21 = 0u;
  v21[1] = 0u;
  *&v17[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_context] = v19;
  v22 = &v17[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration];
  *v22 = IsAlexandriaDemoModeEnabled;
  v22[1] = v16;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 1) = 0;
  *(v22 + 16) = 2;
  v23 = &v17[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager];
  *v23 = v14;
  v23[1] = &protocol witness table for NSFileManager;
  v77.receiver = v17;
  v77.super_class = v12;
  v24 = v19;
  v25 = objc_msgSendSuper2(&v77, "init");
  sub_10029FDE0();

  swift_deallocPartialClassInstance();
  v26 = [objc_opt_self() inMemoryAccountInContext:v24];
  v27 = [v26 defaultFolder];
  v28 = sub_1002A35EC(v62, v27, &off_100659218, a3);
  v30 = v29;
  v31 = v28;
  v60 = v32;
  v62 = v33;
  v34 = v61;

  aBlock = 0;
  v35 = [v24 save:&aBlock];
  v36 = aBlock;
  if (v35)
  {
    sub_1000054A4(0, &qword_1006BE9E0);
    v37 = v36;
    v59 = static OS_dispatch_queue.main.getter();
    v38 = swift_allocObject();
    v58 = v31;
    v39 = v60;
    *(v38 + 16) = v31;
    *(v38 + 24) = v39;
    v40 = v62;
    *(v38 + 32) = v62;
    v41 = v30 & 1;
    *(v38 + 40) = v41;
    v57 = v41;
    *(v38 + 48) = v34;
    *(v38 + 56) = v20;
    v42 = v65;
    *(v38 + 64) = v64;
    *(v38 + 72) = v42;
    v75 = sub_1002EC2E4;
    v76 = v38;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_10028DCE8;
    v74 = &unk_1006545D8;
    v64 = _Block_copy(&aBlock);
    sub_1002EC2FC(v31, v39, v40, v41);

    v43 = v20;

    v44 = v63;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1002ED028(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
    sub_10015DA04(&unk_1006C3F20);
    sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
    v45 = v68;
    v46 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v64;
    v48 = v59;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v47);

    sub_1002EC294(v58, v60, v62, v57);
  }

  else
  {
    v49 = aBlock;
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1002EC294(v31, v60, v62, v30 & 1);
    v46 = v70;
    v44 = v63;

    sub_1000054A4(0, &qword_1006BE9E0);
    v51 = static OS_dispatch_queue.main.getter();
    v52 = swift_allocObject();
    v53 = v65;
    v52[2] = v64;
    v52[3] = v53;
    v52[4] = v50;
    v75 = sub_1002EC260;
    v76 = v52;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_10028DCE8;
    v74 = &unk_100654588;
    v54 = _Block_copy(&aBlock);

    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1002ED028(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
    sub_10015DA04(&unk_1006C3F20);
    sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
    v45 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v54);
  }

  (*(v69 + 8))(v45, v46);
  return (*(v66 + 8))(v44, v67);
}

void sub_1002DEDCC(void *a1, uint64_t a2, void *a3, char a4, uint64_t a5, void *a6, void (*a7)(void *, uint64_t))
{
  v9 = a1;
  if (a4)
  {
    swift_errorRetain();
    v10 = 1;
  }

  else
  {
    v14[0] = a1;
    v14[1] = a2;
    v14[2] = a3;

    v13 = a3;
    sub_1002DEEB8(v14, a5, &v15);

    v9 = v15;
    v10 = v16;
  }

  [a6 setCompletedUnitCount:{objc_msgSend(a6, "totalUnitCount")}];
  a7(v9, v10);

  sub_1001CDC18(v9, v10);
}

void sub_1002DEEB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = [*(a2 + 16) viewContext];
  v6 = [v4 objectID];
  v7 = [v5 objectWithID:v6];

  v14[3] = sub_1000054A4(0, &qword_1006C2D00);
  v14[0] = v7;
  v8 = v7;
  v9 = sub_1001C98A0(v14);
  sub_100009F60(v14);
  v10 = [v9 isPasswordProtected];
  v11 = v10;
  if (v10)
  {
    sub_1002EBDD0();
    v12 = swift_allocError();
    *v13 = 0;

    v9 = v12;
  }

  *a3 = v9;
  *(a3 + 8) = v11;
}

void sub_1002DEFE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_1002DF048(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1002ED028(&qword_1006C07C8, &type metadata accessor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1002E00D4(a1, v2, &type metadata accessor for UUID, &qword_1006C1820, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1002DF134(uint64_t a1)
{
  type metadata accessor for FolderID();
  sub_1002ED028(&qword_1006C1B50, &type metadata accessor for FolderID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1002E00D4(a1, v2, &type metadata accessor for FolderID, &qword_1006C3740, &type metadata accessor for FolderID, &protocol conformance descriptor for FolderID);
}

unint64_t sub_1002DF208(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1002E0694(a1, v2);
}

unint64_t sub_1002DF298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();

  return sub_1002E0274(a1, a2, a3, a4, v8);
}

unint64_t sub_1002DF354(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1002E13D4(a1, v4, &qword_1006BFEC0);
}

unint64_t sub_1002DF3A4(uint64_t a1)
{
  type metadata accessor for URL();
  sub_1002ED028(&qword_1006C07C0, &type metadata accessor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1002E00D4(a1, v2, &type metadata accessor for URL, &qword_1006C1750, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_1002DF478(uint64_t a1)
{
  sub_10015DA04(&qword_1006BE8D0);
  sub_1000060B4(&qword_1006C3710, &qword_1006BE8D0);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1002E0380(a1, v2);
}

unint64_t sub_1002DF520(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002E0544(a1 & 1, v2);
}

unint64_t sub_1002DF5D0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002E0798(a1, v2);
}

unint64_t sub_1002DF6CC(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002E0950(a1 & 1, v2);
}

unint64_t sub_1002DF758(uint64_t a1)
{
  type metadata accessor for NoteID();
  sub_1002ED028(&qword_1006C5320, &type metadata accessor for NoteID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1002E00D4(a1, v2, &type metadata accessor for NoteID, &qword_1006C3720, &type metadata accessor for NoteID, &protocol conformance descriptor for NoteID);
}

unint64_t sub_1002DF82C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return sub_1002E0A48(a1, a2, v4);
}

unint64_t sub_1002DF8C0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002E0B14(a1, v2);
}

unint64_t sub_1002DF9DC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002E0D0C(a1, v2);
}

unint64_t sub_1002DFA9C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  ParagraphStyle.rawValue.getter(a1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002E0E90(a1, v2);
}

unint64_t sub_1002DFB24(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1002E11B4(a1, v2);
}

unint64_t sub_1002DFB90(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1002E1224(a1, v2);
}

uint64_t sub_1002DFBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  return a3(a1, a2, v5);
}

unint64_t sub_1002DFC58(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002E1290(a1 & 1, v2);
}

unint64_t sub_1002DFD08(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1002E13D4(a1, v4, &qword_1006C6840);
}

unint64_t sub_1002DFD58(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002E14A0(a1, v2);
}

unint64_t sub_1002DFE3C(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_1002E1224(a1, v2);
}

unint64_t sub_1002DFEA4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002E1640(a1, v2);
}

unint64_t sub_1002DFF5C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002E17B0(a1, v2);
}

unint64_t sub_1002E001C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1002E00D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1002ED028(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1002E0274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v16)
        {
          if (a4)
          {
            v19 = v17 == a3 && v16 == a4;
            if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1002E0380(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10015DA04(&qword_1006BE8D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1000060B4(&qword_1006C3730, &qword_1006BE8D0);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1002E0544(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x776569567473696CLL;
    }

    else
    {
      v6 = 0x567972656C6C6167;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xEB00000000776569;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x776569567473696CLL : 0x567972656C6C6167;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xEB00000000776569;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002E0694(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002E0798(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v21 + 48) + v4);
      v7 = v6 == 2 ? 0x746F4E6B63697571 : 0x6957646572616873;
      v8 = v6 == 2 ? 0xEA00000000007365 : 0xED0000756F596874;
      v9 = *(*(v21 + 48) + v4) ? 0x65746F4E6874616DLL : 0x65746F4E6C6C6163;
      v10 = *(*(v21 + 48) + v4) <= 1u ? v9 : v7;
      v11 = *(*(v21 + 48) + v4) <= 1u ? 0xE900000000000073 : v8;
      v12 = v5 == 2 ? 0x746F4E6B63697571 : 0x6957646572616873;
      v13 = v5 == 2 ? 0xEA00000000007365 : 0xED0000756F596874;
      v14 = v5 ? 0x65746F4E6874616DLL : 0x65746F4E6C6C6163;
      v15 = v5 <= 1 ? v14 : v12;
      v16 = v5 <= 1 ? 0xE900000000000073 : v13;
      if (v10 == v15 && v11 == v16)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002E0950(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 7105633;
    }

    else
    {
      v6 = 7958113;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 7105633 : 7958113;
      if (v7 == v6)
      {
        break;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1002E0A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1002E0B14(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v23 = v4;
      v5 = *(*(v22 + 48) + v4);
      if (v5 == 3)
      {
        v6 = 0xD000000000000014;
      }

      else
      {
        v6 = 0xD000000000000013;
      }

      if (v5 == 3)
      {
        v7 = 0x800000010055CBA0;
      }

      else
      {
        v7 = 0x800000010055CBC0;
      }

      if (v5 == 2)
      {
        v6 = 0x6363416C61636F6CLL;
        v7 = 0xEC000000746E756FLL;
      }

      if (*(*(v22 + 48) + v4))
      {
        v8 = 0xD000000000000014;
      }

      else
      {
        v8 = 0xD000000000000010;
      }

      if (v5)
      {
        v9 = 0x800000010055CB70;
      }

      else
      {
        v9 = 0x800000010055CB50;
      }

      if (v5 <= 1)
      {
        v10 = v8;
      }

      else
      {
        v10 = v6;
      }

      if (v5 <= 1)
      {
        v11 = v9;
      }

      else
      {
        v11 = v7;
      }

      if (v21 == 3)
      {
        v12 = 0xD000000000000014;
      }

      else
      {
        v12 = 0xD000000000000013;
      }

      if (v21 == 3)
      {
        v13 = 0x800000010055CBA0;
      }

      else
      {
        v13 = 0x800000010055CBC0;
      }

      if (v21 == 2)
      {
        v12 = 0x6363416C61636F6CLL;
        v13 = 0xEC000000746E756FLL;
      }

      v14 = v21 ? 0xD000000000000014 : 0xD000000000000010;
      v15 = v21 ? 0x800000010055CB70 : 0x800000010055CB50;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        return v23;
      }

      v4 = (v23 + 1) & v20;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v23;
  }

  return v4;
}

unint64_t sub_1002E0D0C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x656C6261736964;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE600000000000000;
          v8 = 0x656C67676F74;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE600000000000000;
            if (v8 != 0x656C62616E65)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE600000000000000;
        v8 = 0x656C62616E65;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x656C6261736964;
      }

      else
      {
        v10 = 0x656C67676F74;
      }

      if (v9 == 1)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002E0E90(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      if (v6 > 4)
      {
        if (*(*(v27 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v12 = 0xE700000000000000;
            v11 = 0x6E6F6974706163;
          }

          else
          {
            v12 = 0xEA00000000007465;
            v11 = 0x6C6C75427473696CLL;
          }
        }

        else if (v6 == 7)
        {
          v12 = 0xE800000000000000;
          v11 = 0x687361447473696CLL;
        }

        else if (v6 == 8)
        {
          v11 = 0x626D754E7473696CLL;
          v12 = 0xEC00000064657265;
        }

        else
        {
          v12 = 0xE800000000000000;
          v11 = 0x6F646F547473696CLL;
        }
      }

      else
      {
        v7 = 0xEA00000000006874;
        if (v6 == 3)
        {
          v8 = 2036625250;
        }

        else
        {
          v8 = 0x6469576465786966;
        }

        if (v6 == 3)
        {
          v7 = 0xE400000000000000;
        }

        if (v6 == 2)
        {
          v8 = 0x6964616568627573;
          v7 = 0xEA0000000000676ELL;
        }

        v9 = *(*(v27 + 48) + v4) ? 0x676E6964616568 : 0x656C746974;
        v10 = *(*(v27 + 48) + v4) ? 0xE700000000000000 : 0xE500000000000000;
        v11 = *(*(v27 + 48) + v4) <= 1u ? v9 : v8;
        v12 = *(*(v27 + 48) + v4) <= 1u ? v10 : v7;
      }

      v13 = 0x6F646F547473696CLL;
      if (v5 == 8)
      {
        v13 = 0x626D754E7473696CLL;
      }

      v14 = 0xEC00000064657265;
      if (v5 != 8)
      {
        v14 = 0xE800000000000000;
      }

      if (v5 == 7)
      {
        v13 = 0x687361447473696CLL;
        v14 = 0xE800000000000000;
      }

      v15 = 0xEA00000000007465;
      v16 = 0x6C6C75427473696CLL;
      if (v5 == 5)
      {
        v16 = 0x6E6F6974706163;
        v15 = 0xE700000000000000;
      }

      if (v5 <= 6)
      {
        v13 = v16;
        v14 = v15;
      }

      v17 = 0xEA00000000006874;
      if (v5 == 3)
      {
        v18 = 2036625250;
      }

      else
      {
        v18 = 0x6469576465786966;
      }

      if (v5 == 3)
      {
        v17 = 0xE400000000000000;
      }

      if (v5 == 2)
      {
        v18 = 0x6964616568627573;
        v17 = 0xEA0000000000676ELL;
      }

      if (v5)
      {
        v19 = 0x676E6964616568;
      }

      else
      {
        v19 = 0x656C746974;
      }

      if (v5)
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (v5 <= 1)
      {
        v18 = v19;
        v17 = v20;
      }

      v21 = v5 <= 4 ? v18 : v13;
      v22 = v5 <= 4 ? v17 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}