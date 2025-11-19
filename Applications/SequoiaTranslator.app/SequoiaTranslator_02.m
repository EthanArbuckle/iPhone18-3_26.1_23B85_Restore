void sub_100038618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      PersistedTranslation.selectedAlternativeIndex.setter();
      sub_100031DD8(*(a4 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_session) + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, v10);
      sub_1000085CC(v10, v10[3]);
      dispatch thunk of TranslationStore.save()();
      sub_100008664(v10);
      v9 = sub_100032204();
      sub_10028A040(v8);

      v6 = v9;
    }
  }
}

id sub_100038720()
{
  type metadata accessor for CardCollectionViewCell();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    result = [v0 superview];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v2 = sub_100038720();
  }

  return v2;
}

void sub_100038790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v8 = type metadata accessor for Locale();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = __chkstk_darwin(v8);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = sub_100033A4C();
  v21 = [v20 indexPathForCell:a5];

  if (v21)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = v14;
    (*(v14 + 32))(v19, v17, v13);

    v22 = IndexPath.row.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v55 & 0xC000000000000001) == 0)
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v22 < *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v55 + 8 * v22 + 32);
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    }

    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v24 = v23;
    v46 = v19;
    v47 = v13;

    v25 = sub_100032204();
    v26 = sub_100293D50();

    v27 = [v26 text];
    if (v27)
    {
      v28 = v27;

      v29 = String._bridgeToObjectiveC()();
      v30 = [v28 stringByReplacingCharactersInRange:v50 withString:{v51, v29}];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_conversation);
      v34 = [v24 identifier];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = v24;
      v38 = v12;
      dispatch thunk of PersistedTranslation.sourceLocale.getter();
      v39 = v52;
      dispatch thunk of PersistedTranslation.targetLocale.getter();
      v40 = objc_allocWithZone(_LTLocalePair);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v42 = Locale._bridgeToObjectiveC()().super.isa;
      v43 = [v40 initWithSourceLocale:isa targetLocale:v42];

      v44 = v54;
      v45 = *(v53 + 8);
      v45(v39, v54);
      v45(v38, v44);
      sub_1000970AC(v50, v36, v51, v32, v43);

      (*(v48 + 8))(v46, v47);
      return;
    }

LABEL_12:
    __break(1u);
  }
}

void sub_100038BF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19[-1] - v10;
  v12 = sub_100033A4C();
  v13 = [v12 indexPathForCell:a2];

  if (v13)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v11, v9, v5);
    v14 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController_session;

    v15 = IndexPath.row.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v19[0] & 0xC000000000000001) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((v19[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(v19[0] + 8 * v15 + 32);
LABEL_6:
        v17 = v16;

        PersistedTranslation.selectedAlternativeIndex.setter();
        sub_100031DD8(*(v3 + v14) + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, v19);
        sub_1000085CC(v19, v19[3]);
        dispatch thunk of TranslationStore.save()();

        (*(v6 + 8))(v11, v5);
        sub_100008664(v19);
        return;
      }

      __break(1u);
      return;
    }

    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }
}

void sub_100038E64(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = [a1 view];
  if (v16)
  {
    v36 = v16;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17 && (v33 = v17, (v18 = sub_100038720()) != 0))
    {
      v34 = v10;
      v35 = v18;
      v19 = sub_100033A4C();
      v20 = [v19 indexPathForCell:v35];

      if (v20)
      {
        v32 = v3;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v34 + 32))(v15, v13, v9);

        v21 = IndexPath.item.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if ((v37[0] & 0xC000000000000001) == 0)
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v21 < *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v22 = *(v37[0] + 8 * v21 + 32);
LABEL_9:
            v23 = v22;

            dispatch thunk of PersistedTranslation.speechResult.getter();
            sub_1000085CC(v37, v38);
            dispatch thunk of AnnotatedResult.locale.getter();
            sub_100008664(v37);
            dispatch thunk of PersistedTranslation.translationResult.getter();
            sub_1000085CC(v37, v38);
            dispatch thunk of TranslationResult.locale.getter();
            sub_100008664(v37);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (!Strong)
            {

              goto LABEL_18;
            }

            v25 = Strong;
            v26 = [v33 text];
            if (v26)
            {
              v27 = v26;
              isa = Locale._bridgeToObjectiveC()().super.isa;
              v29 = Locale._bridgeToObjectiveC()().super.isa;
              [v25 startTranslationWith:v27 sourceLocale:isa targetLocale:v29];

              swift_unknownObjectRelease();
LABEL_18:
              v31 = *(v32 + 8);
              v31(v6, v2);
              v31(v8, v2);
              (*(v34 + 8))(v15, v9);
              return;
            }

LABEL_23:
            __break(1u);
            return;
          }

          __break(1u);
          goto LABEL_23;
        }

        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }

      v30 = v35;
    }

    else
    {
      v30 = v36;
    }
  }
}

void sub_100039300(void *a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v5 = type metadata accessor for Locale();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v48 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  v18 = sub_100033A4C();
  v19 = [v18 indexPathForCell:a2];

  if (!v19)
  {
    return;
  }

  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = v12;
  (*(v12 + 32))(v17, v15, v11);

  v49 = v17;
  v20 = IndexPath.row.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v51 = v11;
  if ((v55 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v55 + 8 * v20 + 32);
      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
  v22 = v21;

  v23 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_dictionaryManager);
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v24 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v26 = Locale._bridgeToObjectiveC()().super.isa;
  v27 = [v24 initWithSourceLocale:isa targetLocale:v26];

  v28 = v54;
  v29 = *(v53 + 8);
  v29(v8, v54);
  v29(v10, v28);
  LOBYTE(v29) = sub_1000DCA80(v27);

  if ((v29 & 1) != 0 && (v30 = v52, v31 = [v52 view], v33 = v49, v32 = v50, v31))
  {
    v34 = v31;
    type metadata accessor for HighlightTextView();
    v35 = swift_dynamicCastClass();
    if (!v35)
    {

      goto LABEL_14;
    }

    v36 = v35;
    v37 = v34;
    [v30 locationInView:v36];
    v39 = v38;
    v41 = v40;
    [v30 locationInView:v36];
    v43 = v42;
    v45 = v44;

    v46 = HighlightTextView.getWordAtPoint(_:)(v43, v45);
    if (v47)
    {
      sub_100037DC0(v33, v46, v47, v39, v41, 0, 0);

LABEL_14:
      (*(v32 + 8))(v33, v51);
      return;
    }

    (*(v32 + 8))(v33, v51);
  }

  else
  {
    (*(v50 + 8))(v49, v51);
  }
}

void sub_1000397C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a5 deleteCell:isa];

  v7 = sub_1000336B0();
  v8 = sub_10012267C();

  [v8 resetSwipedItemAnimated:1 completion:0];
}

void sub_100039850(int a1, int a2, int a3, int a4, id a5, uint64_t a6)
{
  [a5 favorite:a6];
  v6 = sub_1000336B0();
  v7 = sub_10012267C();

  [v7 resetSwipedItemAnimated:1 completion:0];
}

void sub_1000398CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20[-1] - v9;
  v11 = sub_100033A4C();
  v12 = [v11 indexPathForCell:a1];

  if (v12)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v10, v8, v4);
    v13 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController_session;

    v14 = IndexPath.row.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v20[0] & 0xC000000000000001) == 0)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v20[0] + 8 * v14 + 32);
        goto LABEL_6;
      }

      __break(1u);
      return;
    }

    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v16 = v15;

    sub_100031DD8(*(v2 + v13) + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, v20);
    sub_1000085CC(v20, v20[3]);
    dispatch thunk of TranslationStore.toggleFavoriteBackground(_:)();
    sub_100008664(v20);
    if (*(a1 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded))
    {
      (*(v5 + 8))(v10, v4);
    }

    else
    {
      v17 = sub_100032204();
      v18 = sub_100294CA4();

      [v18 setHidden:(dispatch thunk of PersistedTranslation.isFavorite.getter() & 1) == 0];
      (*(v5 + 8))(v10, v4);
    }
  }
}

void sub_100039C04(uint64_t a1)
{
  v2 = v1;

  v4 = IndexPath.row.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v13 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v13 + 8 * v4 + 32);
LABEL_5:
    v6 = v5;

    sub_10028917C(v6);

    v7 = sub_100033A4C();
    sub_100005AD4(&qword_1003AB968);
    v8 = type metadata accessor for IndexPath();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002D3160;
    (*(v9 + 16))(v11 + v10, a1, v8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 deleteItemsAtIndexPaths:isa];

    [*(v2 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController____lazy_storage___collectionView) performBatchUpdates:0 completion:0];
    return;
  }

  __break(1u);
}

uint64_t sub_100039F1C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100039FA0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10003A020()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A058()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10003A0AC(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  sub_10001F620(a1, v18, &unk_1003AB9C0);
  if (v18[3])
  {
    sub_10000A2CC(0, &qword_1003AFCF0);
    if (swift_dynamicCast())
    {
      v9 = v17[1];
      v10 = sub_100038720();

      if (v10)
      {
        v11 = sub_100033A4C();
        v12 = [v11 indexPathForCell:v10];

        if (v12)
        {
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v3 + 32))(v8, v6, v2);

          v13 = IndexPath.row.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if ((v18[0] & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_9;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v13 < *((v18[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v14 = *(v18[0] + 8 * v13 + 32);
LABEL_9:
            v15 = v14;

            swift_getKeyPath();
            swift_getKeyPath();
            v18[0] = v15;
            v16 = v15;

            static Published.subscript.setter();

            (*(v3 + 8))(v8, v2);
            return;
          }

          __break(1u);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    sub_100009EBC(v18, &unk_1003AB9C0);
  }
}

void sub_10003A3C0(uint64_t a1)
{
  sub_10001F620(a1, v6, &unk_1003AB9C0);
  if (!v7)
  {
    goto LABEL_8;
  }

  sub_10000A2CC(0, &qword_1003AFCF0);
  if (swift_dynamicCast())
  {
    v3 = sub_100038720();

    if (v3)
    {
      sub_10001F620(a1, v6, &unk_1003AB9C0);
      if (v7)
      {
        type metadata accessor for ActionButton();
        if (swift_dynamicCast())
        {
          v4 = v5;
          [v4 setSelected:{objc_msgSend(v4, "isSelected") ^ 1}];

          [v3 endEditing:1];
          [v1 favorite:v3];
        }

        else
        {
        }

        return;
      }

LABEL_8:
      sub_100009EBC(v6, &unk_1003AB9C0);
    }
  }
}

void sub_10003A540(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v27 - v9;
  sub_10001F620(a1, v32, &unk_1003AB9C0);
  if (!v32[3])
  {
    sub_100009EBC(v32, &unk_1003AB9C0);
    return;
  }

  sub_10000A2CC(0, &qword_1003AFCF0);
  if (swift_dynamicCast())
  {
    v11 = v31;
    v12 = sub_100038720();

    if (v12)
    {
      v13 = sub_100033A4C();
      v14 = [v13 indexPathForCell:v12];

      if (!v14)
      {

        return;
      }

      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 32))(v10, v8, v4);

      v15 = IndexPath.row.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v29 = v12;
      v30 = v5;
      v27[1] = v2;
      if ((v32[0] & 0xC000000000000001) == 0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v15 < *((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v32[0] + 8 * v15 + 32);
          goto LABEL_9;
        }

        __break(1u);
        return;
      }

      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
      v17 = v16;

      v28 = v17;
      v18 = dispatch thunk of PersistedTranslation.displayText.getter();
      v20 = v19;
      v21 = swift_allocObject();
      *(v21 + 32) = 0u;
      *(v21 + 16) = 0u;
      v32[0] = v18;
      v32[1] = v20;
      v31 = 15;
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = v18;
      v22[4] = v20;

      sub_100005AD4(&unk_1003AB9D0);
      sub_10001F278();
      sub_10001BAEC(&unk_1003AB9E0, &unk_1003AB9D0);
      StringProtocol.enumerateSubstrings<A>(in:options:_:)();

      swift_beginAccess();
      v23 = *(v21 + 40);

      if (v23)
      {
        v24 = static String._fromSubstring(_:)();
        v26 = v25;

        sub_100037DC0(v10, v24, v26, 0, 0, 1, 1);

        (*(v30 + 8))(v10, v4);
      }

      else
      {
        (*(v30 + 8))(v10, v4);
      }
    }
  }
}

void sub_10003A9D0(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  sub_10001F620(a2, v24, &unk_1003AB9C0);
  if (!v24[3])
  {
    sub_100009EBC(v24, &unk_1003AB9C0);
    return;
  }

  sub_10000A2CC(0, &qword_1003AFCF0);
  if (swift_dynamicCast())
  {
    v13 = v23[1];
    v14 = sub_100038720();

    if (v14)
    {
      v15 = sub_100033A4C();
      v16 = [v15 indexPathForCell:v14];

      if (!v16)
      {

        return;
      }

      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v7 + 32))(v12, v10, v6);

      v17 = IndexPath.row.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v24[0] & 0xC000000000000001) == 0)
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v17 < *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v18 = *(v24[0] + 8 * v17 + 32);
          goto LABEL_9;
        }

        __break(1u);
        return;
      }

      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
      v19 = v18;

      [v14 endEditing:1];
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v20 = LOBYTE(v24[0]);
      if (a1 <= 1u)
      {
        v21 = 0.5;
        if (a1)
        {
          v21 = 0.75;
        }
      }

      else if (a1 == 2)
      {
        v21 = 1.0;
      }

      else
      {
        if (a1 != 3)
        {
LABEL_19:
          v22 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_conversation);
          sub_10009698C(v19, v20);

          (*(v7 + 8))(v12, v6);
          return;
        }

        v21 = 1.25;
      }

      [v19 setTtsPlaybackRateDouble:v21];
      goto LABEL_19;
    }
  }
}

void sub_10003AD70()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController_dictionaryManager;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for DictionaryManager()) init];
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v2 = sub_10011ED3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_subscriptions) = v2;
  v3 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController_currentExpandedIndexPath;
  v4 = type metadata accessor for IndexPath();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_collectionViewSpacing) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController____lazy_storage___layout) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_initialAppearance) = 1;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_minSourceTextSize) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10003AEE4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100033A4C();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [v7 cellForItemAtIndexPath:isa];

  result = 0;
  if (v9)
  {
    type metadata accessor for CardCollectionViewCell();
    v11 = swift_dynamicCastClass();
    if (!v11 || v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded] == 1)
    {

      return 0;
    }

    v72 = v11;
    v76 = a1;
    v12 = objc_opt_self();
    v13 = [v12 mainBundle];
    v83._object = 0x80000001002F14A0;
    v14._countAndFlagsBits = 0x455449524F564146;
    v83._countAndFlagsBits = 0xD000000000000029;
    v14._object = 0xE800000000000000;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v83);
    v71[1] = v16._object;
    v71[2] = v16._countAndFlagsBits;

    v17 = [v12 mainBundle];
    v84._object = 0x80000001002F14D0;
    v18._countAndFlagsBits = 0x49524F5641464E55;
    v84._countAndFlagsBits = 0xD00000000000002BLL;
    v18._object = 0xEA00000000004554;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v84);
    object = v20._object;
    *&v75 = v20._countAndFlagsBits;

    v21 = [v12 mainBundle];
    v85._object = 0x80000001002F1500;
    v22._countAndFlagsBits = 0x4554454C4544;
    v85._countAndFlagsBits = 0xD000000000000027;
    v22._object = 0xE600000000000000;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v85);

    (*(v5 + 16))(v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v76, v4);
    v24 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    (*(v5 + 32))(v25 + v24, v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v26 = v2;
    v27 = String._bridgeToObjectiveC()();

    v81 = sub_10003B980;
    v82 = v25;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v71[0] = &v79;
    v79 = sub_1002A34F8;
    v80 = &unk_100380260;
    v28 = _Block_copy(&aBlock);
    v29 = objc_opt_self();
    v30 = [v29 contextualActionWithStyle:1 title:v27 handler:v28];

    _Block_release(v28);

    v31 = objc_opt_self();
    v32 = [v31 systemRedColor];
    v73 = v30;
    [v30 setBackgroundColor:v32];

    v33 = String._bridgeToObjectiveC()();
    v34 = objc_opt_self();
    v35 = [v34 systemImageNamed:v33];

    [v30 setImage:v35];
    v36 = swift_allocObject();
    v37 = v72;
    *(v36 + 16) = v26;
    *(v36 + 24) = v37;
    v38 = v26;
    v39 = v9;
    v40 = String._bridgeToObjectiveC()();

    v81 = sub_10003BA34;
    v82 = v36;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = sub_1002A34F8;
    v80 = &unk_1003802B0;
    v41 = _Block_copy(&aBlock);
    v42 = [v29 contextualActionWithStyle:0 title:v40 handler:v41];

    _Block_release(v41);

    v43 = String._bridgeToObjectiveC()();
    v44 = [v31 colorNamed:v43];

    [v42 setBackgroundColor:v44];
    v45 = String._bridgeToObjectiveC()();
    v46 = [v34 systemImageNamed:v45];

    [v42 setImage:v46];
    v47 = swift_allocObject();
    *(v47 + 16) = v38;
    *(v47 + 24) = v37;
    v38;
    v72 = v39;
    v48 = String._bridgeToObjectiveC()();

    v81 = sub_10003BECC;
    v82 = v47;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = sub_1002A34F8;
    v80 = &unk_100380300;
    v49 = _Block_copy(&aBlock);
    v50 = [v29 contextualActionWithStyle:0 title:v48 handler:v49];

    _Block_release(v49);

    v51 = String._bridgeToObjectiveC()();
    v52 = [v31 colorNamed:v51];

    [v50 setBackgroundColor:v52];
    v53 = String._bridgeToObjectiveC()();
    v54 = [v34 systemImageNamed:v53];

    [v50 setImage:v54];
    sub_100005AD4(&unk_1003AFCC0);
    v55 = swift_allocObject();
    v75 = xmmword_1002D5560;
    *(v55 + 16) = xmmword_1002D5560;
    v56 = v73;
    *(v55 + 32) = v73;
    *(v55 + 40) = v42;
    sub_10000A2CC(0, &qword_1003AB960);
    v57 = v56;
    v58 = v42;
    v59 = Array._bridgeToObjectiveC()().super.isa;

    v60 = objc_opt_self();
    v61 = [v60 configurationWithActions:v59];

    v62 = swift_allocObject();
    *(v62 + 16) = v75;
    *(v62 + 32) = v57;
    *(v62 + 40) = v50;
    v63 = v57;
    v64 = v50;
    v65 = Array._bridgeToObjectiveC()().super.isa;

    v66 = [v60 configurationWithActions:v65];

    v67 = IndexPath.item.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((aBlock & 0xC000000000000001) == 0)
    {
      if ((v67 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v67 < *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v68 = aBlock[v67 + 4];
        goto LABEL_10;
      }

      __break(1u);
      return result;
    }

    v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
    v69 = v68;

    v70 = dispatch thunk of PersistedTranslation.isFavorite.getter();

    if (v70)
    {

      return v66;
    }

    else
    {

      return v61;
    }
  }

  return result;
}

uint64_t sub_10003B8BC()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10003B980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IndexPath();
  v9 = *(v4 + 16);

  sub_1000397C0(a1, a2, a3, a4, v9);
}

uint64_t sub_10003BA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003BA64()
{
  v0 = sub_100033A4C();
  [v0 performBatchUpdates:0 completion:0];
}

uint64_t sub_10003BABC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10003BB04()
{
  v0 = sub_100033A4C();
  [v0 reloadData];
}

uint64_t sub_10003BB64()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10003BB9C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_100033A4C();
  [v3 setContentOffset:{v1, v2}];
}

uint64_t sub_10003BC04()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10003BCD0()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_100035480(v2, v3, v4);
}

uint64_t sub_10003BD34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003BD84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100005AD4(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003BDF4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003BE2C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10003BFC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardRevealController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10003C018(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for CardActions()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_container;
  *&v4[v10] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = &v4[OBJC_IVAR____TtC17SequoiaTranslator8CardView_delegate];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTopAnchor] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackLeadingAnchor] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTrailingAnchor] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionLeadingAnchor] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionTrailingAnchor] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionBottomAnchor] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator8CardView_separationConstraint] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator8CardView_containerBottom] = 0;
  v4[OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CardView();
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 secondarySystemGroupedBackgroundColor];
  [v14 setBackgroundColor:v15];

  [v14 setClipsToBounds:1];
  sub_10003C23C();
  sub_10003C2FC();

  return v14;
}

id sub_10003C23C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_container;
  [*&v0[OBJC_IVAR____TtC17SequoiaTranslator8CardView_container] setAxis:1];
  [*&v0[v1] setDistribution:0];
  [*&v0[v1] setAlignment:0];
  [*&v0[v1] setLayoutMarginsRelativeArrangement:1];
  [*&v0[v1] setInsetsLayoutMarginsFromSafeArea:0];
  [v0 addSubview:*&v0[v1]];
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions];

  return [v0 addSubview:v2];
}

void sub_10003C2FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_container;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_container) setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [*(v1 + v2) topAnchor];
  v5 = [v1 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  v7 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTopAnchor;
  v8 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTopAnchor);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTopAnchor) = v6;

  v9 = [*(v1 + v2) leadingAnchor];
  v10 = [v1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  v12 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackLeadingAnchor);
  v62 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackLeadingAnchor;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackLeadingAnchor) = v11;

  v13 = [v1 trailingAnchor];
  v14 = [*(v1 + v2) trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  v16 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTrailingAnchor);
  v60 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTrailingAnchor;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTrailingAnchor) = v15;

  v17 = [v3 leadingAnchor];
  v18 = [v1 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  v20 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionLeadingAnchor;
  v21 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionLeadingAnchor);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionLeadingAnchor) = v19;

  v22 = [v3 trailingAnchor];
  v23 = [v1 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  v25 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionTrailingAnchor);
  v59 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionTrailingAnchor;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionTrailingAnchor) = v24;

  v26 = [v3 bottomAnchor];
  v27 = [v1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  v29 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionBottomAnchor;
  v30 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionBottomAnchor);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionBottomAnchor) = v28;

  v31 = [v1 bottomAnchor];
  v32 = [*(v1 + v2) bottomAnchor];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:20.0];

  v34 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_containerBottom;
  v35 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_containerBottom);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_containerBottom) = v33;
  v36 = v33;

  if (v36)
  {
    LODWORD(v37) = 1132068864;
    [v36 setPriority:v37];
  }

  v38 = [*(v1 + v2) heightAnchor];
  v39 = [v38 constraintLessThanOrEqualToConstant:0.0];

  type metadata accessor for UILayoutPriority(0);
  sub_10003CBF4();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v40) = v64;
  [v39 setPriority:v40];
  sub_100005AD4(&unk_1003AFCC0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1002D5820;
  v42 = *(v1 + v7);
  if (!v42)
  {
    __break(1u);
    goto LABEL_12;
  }

  v43 = v41;
  *(v41 + 32) = v42;
  v44 = *(v1 + v62);
  if (!v44)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v41 + 40) = v44;
  v45 = *&v60[v1];
  if (!v45)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v41 + 48) = v45;
  v46 = *(v1 + v34);
  if (!v46)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v41 + 56) = v46;
  *(v41 + 64) = v39;
  v47 = *(v1 + v20);
  if (!v47)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v63 = v39;
  *(v41 + 72) = v47;
  v48 = *(v1 + v59);
  if (!v48)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v41 + 80) = v48;
  v49 = *(v1 + v29);
  if (v49)
  {
    v61 = objc_opt_self();
    *(v43 + 88) = v49;
    sub_100033604();
    v50 = v42;
    v51 = v44;
    v52 = v45;
    v53 = v46;
    v54 = v63;
    v55 = v47;
    v56 = v48;
    v57 = v49;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v61 activateConstraints:isa];

    (*((swift_isaMask & *v1) + 0x1E0))();
    return;
  }

LABEL_17:
  __break(1u);
}

id sub_10003C8A8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 1)
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 32.0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTopAnchor);
  if (v5)
  {
    v6 = (*((swift_isaMask & *v0) + 0x1C8))();
    v7 = 32.0;
    if ((v6 & 1) == 0)
    {
      v7 = 16.0;
    }

    v3 = [v5 setConstant:v7];
  }

  v8 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackLeadingAnchor);
  if (v8)
  {
    v9 = (*((swift_isaMask & *v0) + 0x1C8))(v3);
    v10 = 32.0;
    if ((v9 & 1) == 0)
    {
      v10 = v4;
    }

    v3 = [v8 setConstant:v10];
  }

  v11 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTrailingAnchor);
  if (v11)
  {
    v12 = (*((swift_isaMask & *v0) + 0x1C8))(v3);
    v13 = 32.0;
    if ((v12 & 1) == 0)
    {
      v13 = v4;
    }

    v3 = [v11 setConstant:v13];
  }

  v14 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_containerBottom);
  if (v14)
  {
    v15 = (*((swift_isaMask & *v0) + 0x1C8))(v3);
    v16 = 0.0;
    if (v15)
    {
      v16 = 20.0;
    }

    [v14 setConstant:v16];
  }

  return [v0 setNeedsLayout];
}

id sub_10003CAC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10003CBF4()
{
  result = qword_1003ABB28;
  if (!qword_1003ABB28)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABB28);
  }

  return result;
}

void sub_10003CC4C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for CardActions()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_container;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_delegate;
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTopAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackLeadingAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_stackTrailingAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionLeadingAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionTrailingAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actionBottomAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_separationConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_containerBottom) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10003CD98(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003AB7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003CE14()
{
  result = qword_1003ABB30;
  if (!qword_1003ABB30)
  {
    sub_100005EA8(&qword_1003ABB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABB30);
  }

  return result;
}

double sub_10003CE78@<D0>(char a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  *&v18[16] = a5;
  *&v18[24] = a6;
  *v18 = a3;
  *&v18[8] = a4;
  v12 = CGRectGetMinX(*&a3) + 5.0;
  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = a5;
  v36.size.height = a6;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  v14 = CGRectGetWidth(v37) + -5.0;
  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  Height = CGRectGetHeight(v38);
  Path.init()();
  v39.origin.x = v12;
  v39.origin.y = MinY;
  v39.size.width = v14;
  v39.size.height = Height;
  CGRectGetMinX(v39);
  v40.origin.x = v12;
  v40.origin.y = MinY;
  v40.size.width = v14;
  v40.size.height = Height;
  CGRectGetMinY(v40);
  Path.move(to:)();
  v41.origin.x = v12;
  v41.origin.y = MinY;
  v41.size.width = v14;
  v41.size.height = Height;
  CGRectGetMaxX(v41);
  v42.origin.x = v12;
  v42.origin.y = MinY;
  v42.size.width = v14;
  v42.size.height = Height;
  CGRectGetMinY(v42);
  Path.addLine(to:)();
  v43.origin.x = v12;
  v43.origin.y = MinY;
  v43.size.width = v14;
  v43.size.height = Height;
  CGRectGetMaxX(v43);
  v44.origin.x = v12;
  v44.origin.y = MinY;
  v44.size.width = v14;
  v44.size.height = Height;
  CGRectGetMinY(v44);
  v30 = 0x3FF0000000000000;
  v31 = 0;
  v32 = 0;
  v33 = 0x3FF0000000000000;
  v34 = 0;
  v35 = 0;
  Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  v45.origin.x = v12;
  v45.origin.y = MinY;
  v45.size.width = v14;
  v45.size.height = Height;
  CGRectGetMaxX(v45);
  v46.origin.x = v12;
  v46.origin.y = MinY;
  v46.size.width = v14;
  v46.size.height = Height;
  CGRectGetMaxY(v46);
  Path.addLine(to:)();
  v47.origin.x = v12;
  v47.origin.y = MinY;
  v47.size.width = v14;
  v47.size.height = Height;
  CGRectGetMaxX(v47);
  v48.origin.x = v12;
  v48.origin.y = MinY;
  v48.size.width = v14;
  v48.size.height = Height;
  CGRectGetMaxY(v48);
  Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  v49.origin.x = v12;
  v49.origin.y = MinY;
  v49.size.width = v14;
  v49.size.height = Height;
  CGRectGetMinX(v49);
  v50.origin.x = v12;
  v50.origin.y = MinY;
  v50.size.width = v14;
  v50.size.height = Height;
  CGRectGetMaxY(v50);
  Path.addLine(to:)();
  v51.origin.x = v12;
  v51.origin.y = MinY;
  v51.size.width = v14;
  v51.size.height = Height;
  CGRectGetMinX(v51);
  v52.origin.x = v12;
  v52.origin.y = MinY;
  v52.size.width = v14;
  v52.size.height = Height;
  CGRectGetMaxY(v52);
  Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  CGRectGetMinX(*v18);
  CGRectGetMaxY(*v18);
  Path.addCurve(to:control1:control2:)();
  v53.origin.x = v12;
  v53.origin.y = MinY;
  v53.size.width = v14;
  v53.size.height = Height;
  CGRectGetMinX(v53);
  v54.origin.x = v12;
  v54.origin.y = MinY;
  v54.size.width = v14;
  v54.size.height = Height;
  CGRectGetMaxY(v54);
  Path.addCurve(to:control1:control2:)();
  v55.origin.x = v12;
  v55.origin.y = MinY;
  v55.size.width = v14;
  v55.size.height = Height;
  CGRectGetMinX(v55);
  v56.origin.x = v12;
  v56.origin.y = MinY;
  v56.size.width = v14;
  v56.size.height = Height;
  CGRectGetMinY(v56);
  Path.addLine(to:)();
  v57.origin.x = v12;
  v57.origin.y = MinY;
  v57.size.width = v14;
  v57.size.height = Height;
  CGRectGetMinX(v57);
  v58.origin.x = v12;
  v58.origin.y = MinY;
  v58.size.width = v14;
  v58.size.height = Height;
  CGRectGetMinY(v58);
  Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  if ((a1 & 1) == 0)
  {
    v28[0] = v19;
    v28[1] = v20;
    v29 = v21;
    CGAffineTransformMakeScale(&v27, -1.0, 1.0);
    Path.applying(_:)();
    sub_10003D6BC(v28);
    v24[0] = v22[0];
    v24[1] = v22[1];
    v25 = v23;
    sub_10003D710(v24, &v26);
    Width = CGRectGetWidth(*v18);
    CGAffineTransformMakeTranslation(&v26, Width, 0.0);
    Path.applying(_:)();
    sub_10003D6BC(v22);
    sub_10003D6BC(v22);
  }

  result = *&v19;
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  return result;
}

double sub_10003D364@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_10003CE78(*v5, v9, a2, a3, a4, a5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_10003D3CC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_10003D454;
}

void sub_10003D454(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10003D4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003D76C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10003D504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003D76C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10003D568(uint64_t a1)
{
  v2 = sub_10003D76C();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_10003D5B8()
{
  result = qword_1003ABB40;
  if (!qword_1003ABB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABB40);
  }

  return result;
}

unint64_t sub_10003D610()
{
  result = qword_1003ABB48;
  if (!qword_1003ABB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABB48);
  }

  return result;
}

unint64_t sub_10003D668()
{
  result = qword_1003ABB50;
  if (!qword_1003ABB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABB50);
  }

  return result;
}

unint64_t sub_10003D76C()
{
  result = qword_1003ABB58;
  if (!qword_1003ABB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABB58);
  }

  return result;
}

id sub_10003D7C0()
{
  result = [objc_opt_self() effectWithStyle:10];
  qword_1003ABB60 = result;
  return result;
}

void sub_10003D9C8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator9ChromeBar_backgroundView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D53E0;
  v5 = [v2 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v2 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_100033604();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_10003DC24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChromeBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003DCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003ABB98);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100005AD4(&qword_1003ABBA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10003DDDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100005AD4(&qword_1003ABB98);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100005AD4(&qword_1003ABBA0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CombinedLanguagePickerPill()
{
  result = qword_1003ABC00;
  if (!qword_1003ABC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003DF4C()
{
  sub_10003E044(319, &qword_1003ABC10, &type metadata accessor for LanguageOption);
  if (v0 <= 0x3F)
  {
    sub_10003E044(319, &qword_1003ABC18, &type metadata accessor for Locale);
    if (v1 <= 0x3F)
    {
      sub_10003E098();
      if (v2 <= 0x3F)
      {
        sub_10003E0E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10003E044(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Binding();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10003E098()
{
  if (!qword_1003ABC20)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1003ABC20);
    }
  }
}

void sub_10003E0E8()
{
  if (!qword_1003ABC28)
  {
    type metadata accessor for LanguagesService();
    sub_10003FD74(&unk_1003ABC30, &type metadata accessor for LanguagesService);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1003ABC28);
    }
  }
}

uint64_t sub_10003E198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_100005AD4(&qword_1003ABC88);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = sub_100005AD4(&qword_1003ABC90);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_100005AD4(&qword_1003ABC98);
  sub_10003E470(a1, &v16[*(v17 + 44)]);
  KeyPath = swift_getKeyPath();
  v19 = &v16[*(sub_100005AD4(&qword_1003ABCA0) + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
  v20 = static Color.primary.getter();
  v21 = swift_getKeyPath();
  v22 = &v16[*(v11 + 44)];
  *v22 = v21;
  v22[1] = v20;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v23 = sub_100005AD4(&qword_1003ABCA8);
  sub_10003EF00(a1, &v9[*(v23 + 44)]);
  v24 = static Color.primary.getter();
  v25 = swift_getKeyPath();
  v26 = &v9[*(v4 + 44)];
  *v26 = v25;
  v26[1] = v24;
  sub_10001F620(v16, v14, &qword_1003ABC90);
  sub_10001F620(v9, v7, &qword_1003ABC88);
  v27 = v31;
  sub_10001F620(v14, v31, &qword_1003ABC90);
  v28 = sub_100005AD4(&qword_1003ABCB0);
  sub_10001F620(v7, v27 + *(v28 + 48), &qword_1003ABC88);
  sub_100009EBC(v9, &qword_1003ABC88);
  sub_100009EBC(v16, &qword_1003ABC90);
  sub_100009EBC(v7, &qword_1003ABC88);
  return sub_100009EBC(v14, &qword_1003ABC90);
}

uint64_t sub_10003E470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v3 - 8);
  v74 = v62 - v4;
  v5 = type metadata accessor for LanguageOption();
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin(v5);
  v76 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100005AD4(&qword_1003ABBA0);
  __chkstk_darwin(v87);
  v68 = v62 - v7;
  v82 = type metadata accessor for LanguagePicker();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005AD4(&qword_1003ABD10);
  v10 = __chkstk_darwin(v9 - 8);
  v84 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = v62 - v12;
  v72 = sub_100005AD4(&qword_1003ABD18);
  __chkstk_darwin(v72);
  v70 = v62 - v13;
  v14 = sub_100005AD4(&qword_1003ABD20);
  v15 = __chkstk_darwin(v14 - 8);
  v81 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v69 = v62 - v17;
  v71 = type metadata accessor for Locale();
  v66 = *(v71 - 8);
  v18 = __chkstk_darwin(v71);
  v73 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v86 = sub_100005AD4(&qword_1003ABB98);
  __chkstk_darwin(v86);
  v63 = type metadata accessor for DetectableLanguagePicker();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v21 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100005AD4(&qword_1003ABD28);
  v23 = __chkstk_darwin(v22 - 8);
  v75 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v62 - v25;
  v27 = type metadata accessor for CombinedLanguagePickerPill();
  v28 = v27[6];
  v62[1] = a1;
  v29 = a1 + v28;
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v29) = *(v29 + 16);
  v88 = v30;
  *&v89 = v31;
  BYTE8(v89) = v29;
  sub_100005AD4(&qword_1003BA760);
  Binding.projectedValue.getter();
  Binding.projectedValue.getter();
  v65 = v27[5];
  Binding.wrappedValue.getter();
  v67 = *(a1 + v27[10] + 8);
  LanguagesService.models.getter();
  v32 = v66;
  DetectableLanguagePicker.init(isDetected:selectedOption:preferredLocales:oppositeLocale:languageModels:sourceUsesOCR:)();
  sub_10003FD74(&qword_1003ABD30, &type metadata accessor for DetectableLanguagePicker);
  v33 = v63;
  View.accessibilityIdentifier(_:)();
  (*(v64 + 8))(v21, v33);
  v34 = Image.init(systemName:)();
  static UnitPoint.center.getter();
  v88 = v34;
  __asm { FMOV            V2.2D, #0.75 }

  v89 = _Q2;
  v90 = v40;
  v91 = v41;
  sub_100005AD4(&qword_1003ABD38);
  sub_10003FBF4();
  v42 = v70;
  v43 = v74;
  View.bold(_:)();

  v44 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v46 = (v42 + *(v72 + 36));
  *v46 = KeyPath;
  v46[1] = v44;
  sub_10003FC80();
  v47 = v69;
  View.accessibilityHidden(_:)();
  sub_100009EBC(v42, &qword_1003ABD18);
  Binding.projectedValue.getter();
  v48 = v76;
  Binding.wrappedValue.getter();
  LanguageOption.locale.getter();
  v49 = v48;
  v50 = v71;
  (*(v77 + 8))(v49, v78);
  v51 = *(v32 + 48);
  if (v51(v43, 1, v50) == 1)
  {
    static Locale.current.getter();
    if (v51(v43, 1, v50) != 1)
    {
      sub_100009EBC(v43, &qword_1003AFCE0);
    }
  }

  else
  {
    (*(v32 + 32))(v73, v43, v50);
  }

  LanguagesService.models.getter();
  v52 = v79;
  LanguagePicker.init(selectedLocale:preferredLocales:oppositeLocale:languageModels:disabledLanguages:)();
  sub_10003FD74(&qword_1003ABD50, &type metadata accessor for LanguagePicker);
  v53 = v82;
  v54 = v83;
  View.accessibilityIdentifier(_:)();
  (*(v80 + 8))(v52, v53);
  v55 = v75;
  sub_10001F620(v26, v75, &qword_1003ABD28);
  v56 = v47;
  v57 = v81;
  sub_10001F620(v47, v81, &qword_1003ABD20);
  v58 = v84;
  sub_10001F620(v54, v84, &qword_1003ABD10);
  v59 = v85;
  sub_10001F620(v55, v85, &qword_1003ABD28);
  v60 = sub_100005AD4(&qword_1003ABD58);
  sub_10001F620(v57, v59 + *(v60 + 48), &qword_1003ABD20);
  sub_10001F620(v58, v59 + *(v60 + 64), &qword_1003ABD10);
  sub_100009EBC(v54, &qword_1003ABD10);
  sub_100009EBC(v56, &qword_1003ABD20);
  sub_100009EBC(v26, &qword_1003ABD28);
  sub_100009EBC(v58, &qword_1003ABD10);
  sub_100009EBC(v57, &qword_1003ABD20);
  return sub_100009EBC(v55, &qword_1003ABD28);
}

uint64_t sub_10003EF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v3 - 8);
  v73 = &v60 - v4;
  v77 = type metadata accessor for LanguageOption();
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100005AD4(&qword_1003ABBA0);
  __chkstk_darwin(v90);
  v70 = &v60 - v6;
  v85 = type metadata accessor for LanguagePicker();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v79 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100005AD4(&qword_1003ABCB8);
  __chkstk_darwin(v84);
  v81 = &v60 - v8;
  v9 = sub_100005AD4(&qword_1003ABCC0);
  __chkstk_darwin(v9 - 8);
  v82 = &v60 - v10;
  v76 = sub_100005AD4(&qword_1003ABCC8);
  __chkstk_darwin(v76);
  v80 = &v60 - v11;
  v78 = sub_100005AD4(&qword_1003ABCD0);
  v12 = __chkstk_darwin(v78);
  v87 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v75 = &v60 - v15;
  __chkstk_darwin(v14);
  v86 = &v60 - v16;
  v68 = type metadata accessor for Locale();
  v65 = *(v68 - 8);
  v17 = __chkstk_darwin(v68);
  v69 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v89 = sub_100005AD4(&qword_1003ABB98);
  __chkstk_darwin(v89);
  v64 = sub_100005AD4(&qword_1003ABCD8);
  __chkstk_darwin(v64);
  v20 = &v60 - v19;
  v66 = sub_100005AD4(&qword_1003ABCE0) - 8;
  v21 = __chkstk_darwin(v66);
  v71 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v60 - v23;
  v25 = type metadata accessor for CombinedLanguagePickerPill();
  v26 = v25[6];
  v61 = a1;
  v27 = (a1 + v26);
  v28 = *v27;
  v29 = v27[1];
  LOBYTE(v27) = *(v27 + 16);
  v92 = v28;
  v93 = v29;
  v94 = v27;
  v62 = sub_100005AD4(&qword_1003BA760);
  Binding.projectedValue.getter();
  Binding.projectedValue.getter();
  v63 = v25[5];
  Binding.wrappedValue.getter();
  v67 = *(a1 + v25[10] + 8);
  LanguagesService.models.getter();
  v30 = v65;
  DetectableLanguagePicker.init(isDetected:selectedOption:preferredLocales:oppositeLocale:languageModels:sourceUsesOCR:)();
  sub_10001BAEC(&qword_1003ABCE8, &qword_1003ABCD8);
  View.accessibilityIdentifier(_:)();
  sub_100009EBC(v20, &qword_1003ABCD8);
  v31 = (v61 + v25[7]);
  v32 = *v31;
  v33 = v31[1];
  LOBYTE(v31) = *(v31 + 16);
  v92 = v32;
  v93 = v33;
  v94 = v31;
  Binding.wrappedValue.getter();
  v34 = v91;
  KeyPath = swift_getKeyPath();
  v36 = &v24[*(sub_100005AD4(&qword_1003ABCF0) + 36)];
  v37 = type metadata accessor for CombinedLanguagePickerPillStyle();
  *&v36[*(v37 + 24)] = KeyPath;
  sub_100005AD4(&qword_1003ABCF8);
  swift_storeEnumTagMultiPayload();
  *v36 = v34;
  v36[1] = 0;
  v38 = v73;
  v39 = swift_getKeyPath();
  v40 = &v24[*(v66 + 44)];
  *v40 = v39;
  v40[8] = 0;
  Binding.projectedValue.getter();
  v41 = v72;
  Binding.wrappedValue.getter();
  LanguageOption.locale.getter();
  v42 = v41;
  v43 = v68;
  (*(v74 + 8))(v42, v77);
  v44 = *(v30 + 48);
  if (v44(v38, 1, v43) == 1)
  {
    static Locale.current.getter();
    if (v44(v38, 1, v43) != 1)
    {
      sub_100009EBC(v38, &qword_1003AFCE0);
    }
  }

  else
  {
    (*(v30 + 32))(v69, v38, v43);
  }

  LanguagesService.models.getter();
  v45 = v79;
  LanguagePicker.init(selectedLocale:preferredLocales:oppositeLocale:languageModels:disabledLanguages:)();
  v46 = v81;
  (*(v83 + 32))(v81, v45, v85);
  sub_10001BAEC(&qword_1003ABD00, &qword_1003ABCB8);
  v47 = v82;
  View.accessibilityIdentifier(_:)();
  sub_100009EBC(v46, &qword_1003ABCB8);
  v48 = swift_getKeyPath();
  v49 = v80;
  v50 = &v80[*(v76 + 36)];
  *&v50[*(v37 + 24)] = v48;
  swift_storeEnumTagMultiPayload();
  *v50 = 0;
  sub_100023BD4(v47, v49, &qword_1003ABCC0);
  v51 = swift_getKeyPath();
  v52 = v75;
  sub_100023BD4(v49, v75, &qword_1003ABCC8);
  v53 = v52 + *(v78 + 36);
  *v53 = v51;
  *(v53 + 8) = 0;
  v54 = v86;
  sub_100023BD4(v52, v86, &qword_1003ABCD0);
  v55 = v71;
  sub_10001F620(v24, v71, &qword_1003ABCE0);
  v56 = v87;
  sub_10001F620(v54, v87, &qword_1003ABCD0);
  v57 = v88;
  sub_10001F620(v55, v88, &qword_1003ABCE0);
  v58 = sub_100005AD4(&qword_1003ABD08);
  sub_10001F620(v56, v57 + *(v58 + 48), &qword_1003ABCD0);
  sub_100009EBC(v54, &qword_1003ABCD0);
  sub_100009EBC(v24, &qword_1003ABCE0);
  sub_100009EBC(v56, &qword_1003ABCD0);
  return sub_100009EBC(v55, &qword_1003ABCE0);
}

uint64_t sub_10003F9F8@<X0>(_BYTE *a1@<X8>)
{
  *a1 = static Axis.Set.horizontal.getter();
  v3 = sub_100005AD4(&qword_1003ABC78);
  sub_10003E198(v1, &a1[*(v3 + 44)]);
  KeyPath = swift_getKeyPath();
  result = sub_100005AD4(&qword_1003ABC80);
  v6 = &a1[*(result + 36)];
  *v6 = KeyPath;
  v6[1] = 1;
  return result;
}

uint64_t sub_10003FA78@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.languageLabelContext.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003FACC(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_10003FB94@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityShowButtonShapes.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10003FBF4()
{
  result = qword_1003ABD40;
  if (!qword_1003ABD40)
  {
    sub_100005EA8(&qword_1003ABD38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABD40);
  }

  return result;
}

unint64_t sub_10003FC80()
{
  result = qword_1003ABD48;
  if (!qword_1003ABD48)
  {
    sub_100005EA8(&qword_1003ABD18);
    sub_100005EA8(&qword_1003ABD38);
    sub_10003FBF4();
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABD48);
  }

  return result;
}

uint64_t sub_10003FD74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003FDC0()
{
  result = qword_1003ABD60;
  if (!qword_1003ABD60)
  {
    sub_100005EA8(&qword_1003ABC80);
    sub_10001BAEC(&qword_1003ABD68, &qword_1003ABD70);
    sub_10001BAEC(&qword_1003ABD78, &qword_1003ABD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABD60);
  }

  return result;
}

uint64_t sub_10003FEB8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_100005AD4(&qword_1003ABD88);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10003FF88(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003ABD88);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CombinedLanguagePickerPillStyle()
{
  result = qword_1003ABDE8;
  if (!qword_1003ABDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100040080()
{
  sub_1000400FC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000400FC()
{
  if (!qword_1003ABDF8)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1003ABDF8);
    }
  }
}

uint64_t sub_100040180@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003ABCF8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CombinedLanguagePickerPillStyle();
  sub_10001F620(v1 + *(v10 + 24), v9, &qword_1003ABCF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100040388@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v2 = sub_100005AD4(&qword_1003ABE30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - v4;
  Solarium.init()();
  v14 = v1;
  sub_100005AD4(&qword_1003ABE38);
  sub_100005AD4(&qword_1003ABE40);
  sub_100005AD4(&qword_1003ABE48);
  sub_10001BAEC(&qword_1003ABE50, &qword_1003ABE38);
  sub_100041C84();
  sub_100041D3C();
  View.staticIf<A, B, C>(_:then:else:)();
  if (*(v1 + 1) == 1)
  {
    v6 = static Color.primary.getter();
  }

  else
  {
    v6 = static Color.secondary.getter();
  }

  v7 = v6;
  KeyPath = swift_getKeyPath();
  v9 = v13;
  (*(v3 + 32))(v13, v5, v2);
  result = sub_100005AD4(&qword_1003ABE88);
  v11 = (v9 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v7;
  return result;
}

uint64_t sub_1000405B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_100005AD4(&qword_1003ABE38);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_100005AD4(&qword_1003ABE40);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_100040688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_100005AD4(&qword_1003ABE38);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(sub_100005AD4(&qword_1003ABE40) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a2 + *(sub_100005AD4(&qword_1003ABE70) + 36);
  *v23 = a1;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  v24 = a2 + *(sub_100005AD4(&qword_1003ABE48) + 36);
  sub_1000407F8(v24);
  v25 = static Alignment.center.getter();
  v27 = v26;
  result = sub_100005AD4(&qword_1003ABE80);
  v29 = (v24 + *(result + 36));
  *v29 = v25;
  v29[1] = v27;
  return result;
}

uint64_t sub_1000407F8@<X0>(uint64_t a1@<X8>)
{
  v70 = sub_100005AD4(&qword_1003ABE90);
  __chkstk_darwin(v70);
  v63 = &v59 - v3;
  v69 = sub_100005AD4(&qword_1003ABE98);
  __chkstk_darwin(v69);
  v62 = &v59 - v4;
  v66 = sub_100005AD4(&qword_1003ABEA0);
  __chkstk_darwin(v66);
  v68 = &v59 - v5;
  v75 = sub_100005AD4(&qword_1003ABEA8);
  __chkstk_darwin(v75);
  v71 = &v59 - v6;
  v65 = sub_100005AD4(&qword_1003ABEB0);
  __chkstk_darwin(v65);
  v61 = &v59 - v7;
  v72 = sub_100005AD4(&qword_1003ABEB8);
  __chkstk_darwin(v72);
  v74 = &v59 - v8;
  v64 = sub_100005AD4(&qword_1003ABEC0);
  __chkstk_darwin(v64);
  v10 = &v59 - v9;
  v73 = sub_100005AD4(&qword_1003ABEC8);
  __chkstk_darwin(v73);
  v67 = &v59 - v11;
  v12 = sub_100005AD4(&qword_1003ABED0);
  __chkstk_darwin(v12);
  v14 = &v59 - v13;
  v15 = type metadata accessor for DynamicTypeSize();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100005AD4(&qword_1003ABED8);
  __chkstk_darwin(v76);
  v20 = &v59 - v19;
  v21 = sub_100005AD4(&qword_1003ABEE0);
  __chkstk_darwin(v21);
  v24 = &v59 - v23;
  if (qword_1003A91F0 != -1)
  {
    v60 = v22;
    swift_once();
    v22 = v60;
  }

  if (byte_1003D26A0 == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_100042364();
    return _ConditionalContent<>.init(storage:)();
  }

  v59 = a1;
  v60 = v22;
  v26 = *v1;
  sub_100040180(v18);
  v27 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v16 + 8))(v18, v15);
  if (v26 != 1)
  {
    if (v27)
    {
      v42 = *(type metadata accessor for RoundedRectangle() + 20);
      v43 = enum case for RoundedCornerStyle.continuous(_:);
      v44 = type metadata accessor for RoundedCornerStyle();
      v45 = v62;
      (*(*(v44 - 8) + 104))(&v62[v42], v43, v44);
      __asm { FMOV            V0.2D, #10.0 }

      *v45 = _Q0;
      static Material.bar.getter();
      v39 = &qword_1003ABE98;
      sub_10001F620(v45, v10, &qword_1003ABE98);
      swift_storeEnumTagMultiPayload();
      sub_100042108();
      sub_1000421F0();
      v47 = v67;
      _ConditionalContent<>.init(storage:)();
      sub_10001F620(v47, v74, &qword_1003ABEC8);
      swift_storeEnumTagMultiPayload();
      sub_10004207C();
      sub_1000422D8();
      _ConditionalContent<>.init(storage:)();
      sub_100009EBC(v47, &qword_1003ABEC8);
      v41 = v45;
      goto LABEL_10;
    }

    v57 = enum case for RoundedCornerStyle.continuous(_:);
    v58 = type metadata accessor for RoundedCornerStyle();
    v51 = v63;
    (*(*(v58 - 8) + 104))(v63, v57, v58);
    static Material.bar.getter();
    v55 = &qword_1003ABE90;
    sub_10001F620(v51, v68, &qword_1003ABE90);
    swift_storeEnumTagMultiPayload();
    sub_100041EAC();
    sub_100041F94();
    v56 = v71;
    _ConditionalContent<>.init(storage:)();
    sub_10001F620(v56, v74, &qword_1003ABEA8);
    swift_storeEnumTagMultiPayload();
    sub_10004207C();
    sub_1000422D8();
LABEL_13:
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v56, &qword_1003ABEA8);
    v41 = v51;
    v48 = v55;
    goto LABEL_14;
  }

  if ((v27 & 1) == 0)
  {
    v49 = enum case for RoundedCornerStyle.continuous(_:);
    v50 = type metadata accessor for RoundedCornerStyle();
    v51 = v61;
    (*(*(v50 - 8) + 104))(v61, v49, v50);
    v52 = static Color.translateAccentColor.getter();
    KeyPath = swift_getKeyPath();
    v54 = (v51 + *(v65 + 36));
    *v54 = KeyPath;
    v54[1] = v52;
    v55 = &qword_1003ABEB0;
    sub_10001F620(v51, v68, &qword_1003ABEB0);
    swift_storeEnumTagMultiPayload();
    sub_100041EAC();
    sub_100041F94();
    v56 = v71;
    _ConditionalContent<>.init(storage:)();
    sub_10001F620(v56, v74, &qword_1003ABEA8);
    swift_storeEnumTagMultiPayload();
    sub_10004207C();
    sub_1000422D8();
    goto LABEL_13;
  }

  v28 = *(type metadata accessor for RoundedRectangle() + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = type metadata accessor for RoundedCornerStyle();
  (*(*(v30 - 8) + 104))(&v14[v28], v29, v30);
  __asm { FMOV            V0.2D, #10.0 }

  *v14 = _Q0;
  v36 = static Color.translateAccentColor.getter();
  v37 = swift_getKeyPath();
  v38 = &v14[*(v12 + 36)];
  *v38 = v37;
  v38[1] = v36;
  v39 = &qword_1003ABED0;
  sub_10001F620(v14, v10, &qword_1003ABED0);
  swift_storeEnumTagMultiPayload();
  sub_100042108();
  sub_1000421F0();
  v40 = v67;
  _ConditionalContent<>.init(storage:)();
  sub_10001F620(v40, v74, &qword_1003ABEC8);
  swift_storeEnumTagMultiPayload();
  sub_10004207C();
  sub_1000422D8();
  _ConditionalContent<>.init(storage:)();
  sub_100009EBC(v40, &qword_1003ABEC8);
  v41 = v14;
LABEL_10:
  v48 = v39;
LABEL_14:
  sub_100009EBC(v41, v48);
  sub_10001F620(v20, v24, &qword_1003ABED8);
  swift_storeEnumTagMultiPayload();
  sub_100042364();
  _ConditionalContent<>.init(storage:)();
  return sub_100009EBC(v20, &qword_1003ABED8);
}

uint64_t sub_1000412C4@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v66 = a3;
  v5 = type metadata accessor for BorderlessButtonMenuStyle();
  v57 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100005AD4(&qword_1003ABF40);
  __chkstk_darwin(v68);
  v58 = &v53 - v7;
  v69 = sub_100005AD4(&qword_1003ABF48);
  v59 = *(v69 - 8);
  __chkstk_darwin(v69);
  v60 = &v53 - v8;
  v63 = sub_100005AD4(&qword_1003ABF50);
  __chkstk_darwin(v63);
  v67 = &v53 - v9;
  v65 = type metadata accessor for Capsule();
  __chkstk_darwin(v65);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Glass();
  v61 = *(v12 - 8);
  v62 = v12;
  __chkstk_darwin(v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100005AD4(&qword_1003ABF58);
  v55 = *(v64 - 8);
  __chkstk_darwin(v64);
  v16 = &v53 - v15;
  v17 = type metadata accessor for EnvironmentValues();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
LABEL_3:
      v21 = v56;
      BorderlessButtonMenuStyle.init()();
      v55 = sub_100005AD4(&qword_1003ABF60);
      v54 = sub_10001BAEC(&qword_1003ABF68, &qword_1003ABF60);
      sub_10004253C(&qword_1003ABF70, &type metadata accessor for BorderlessButtonMenuStyle);
      v22 = v58;
      View.menuStyle<A>(_:)();
      (*(v57 + 8))(v21, v5);
      v23 = static Edge.Set.horizontal.getter();
      v24 = v59;
      v25 = v23;
      v26 = v22 + *(sub_100005AD4(&qword_1003ABF78) + 36);
      *v26 = v25;
      *(v26 + 8) = 0u;
      *(v26 + 24) = 0u;
      *(v26 + 40) = 1;
      v27 = static Edge.Set.vertical.getter();
      EdgeInsets.init(_all:)();
      v28 = v68;
      v29 = v22 + *(v68 + 36);
      *v29 = v27;
      *(v29 + 8) = v30;
      *(v29 + 16) = v31;
      *(v29 + 24) = v32;
      *(v29 + 32) = v33;
      *(v29 + 40) = 0;
      static Glass.regular.getter();
      v34 = enum case for RoundedCornerStyle.continuous(_:);
      v35 = type metadata accessor for RoundedCornerStyle();
      (*(*(v35 - 8) + 104))(v11, v34, v35);
      v36 = sub_100041E20(&qword_1003ABF80, &qword_1003ABF40, &unk_1002D5E38, sub_1000423F0);
      v37 = sub_10004253C(&qword_1003ABF90, &type metadata accessor for Capsule);
      v38 = v60;
      v39 = v65;
      View.glassEffect<A>(_:in:)();
      sub_100042584(v11);
      (*(v61 + 8))(v14, v62);
      sub_1000425E0(v22);
      v40 = v69;
      (*(v24 + 16))(v67, v38, v69);
      swift_storeEnumTagMultiPayload();
      v70 = v55;
      v71 = v39;
      v72 = v54;
      v73 = v37;
      swift_getOpaqueTypeConformance2();
      v70 = v28;
      v71 = v39;
      v72 = v36;
      v73 = v37;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v24 + 8))(v38, v40);
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    v54 = v16;
    v43 = v42;
    os_log(_:dso:log:_:_:)();

    v16 = v54;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10002F620(a1, 0);
    (*(v18 + 8))(v20, v17);
    if (v70 != 1)
    {
      goto LABEL_3;
    }
  }

  static Glass.regular.getter();
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  (*(*(v45 - 8) + 104))(v11, v44, v45);
  v46 = sub_100005AD4(&qword_1003ABF60);
  v47 = sub_10001BAEC(&qword_1003ABF68, &qword_1003ABF60);
  v48 = sub_10004253C(&qword_1003ABF90, &type metadata accessor for Capsule);
  v49 = v65;
  View.glassEffect<A>(_:in:)();
  sub_100042584(v11);
  (*(v61 + 8))(v14, v62);
  v50 = v55;
  v51 = v64;
  (*(v55 + 16))(v67, v16, v64);
  swift_storeEnumTagMultiPayload();
  v70 = v46;
  v71 = v49;
  v72 = v47;
  v73 = v48;
  swift_getOpaqueTypeConformance2();
  v52 = sub_100041E20(&qword_1003ABF80, &qword_1003ABF40, &unk_1002D5E38, sub_1000423F0);
  v70 = v68;
  v71 = v49;
  v72 = v52;
  v73 = v48;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v50 + 8))(v16, v51);
}

unint64_t sub_100041C84()
{
  result = qword_1003ABE58;
  if (!qword_1003ABE58)
  {
    sub_100005EA8(&qword_1003ABE40);
    sub_10001BAEC(&qword_1003ABE50, &qword_1003ABE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABE58);
  }

  return result;
}

unint64_t sub_100041D3C()
{
  result = qword_1003ABE60;
  if (!qword_1003ABE60)
  {
    sub_100005EA8(&qword_1003ABE48);
    sub_100041E20(&qword_1003ABE68, &qword_1003ABE70, &unk_1002D5D80, sub_100041C84);
    sub_10001BAEC(&qword_1003ABE78, &qword_1003ABE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABE60);
  }

  return result;
}

uint64_t sub_100041E20(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100041EAC()
{
  result = qword_1003ABEE8;
  if (!qword_1003ABEE8)
  {
    sub_100005EA8(&qword_1003ABEB0);
    sub_10004253C(&qword_1003ABEF0, &type metadata accessor for Capsule);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABEE8);
  }

  return result;
}

unint64_t sub_100041F94()
{
  result = qword_1003ABEF8;
  if (!qword_1003ABEF8)
  {
    sub_100005EA8(&qword_1003ABE90);
    sub_10004253C(&qword_1003ABEF0, &type metadata accessor for Capsule);
    sub_10001BAEC(&qword_1003ABF00, &qword_1003ABF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABEF8);
  }

  return result;
}

unint64_t sub_10004207C()
{
  result = qword_1003ABF10;
  if (!qword_1003ABF10)
  {
    sub_100005EA8(&qword_1003ABEC8);
    sub_100042108();
    sub_1000421F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABF10);
  }

  return result;
}

unint64_t sub_100042108()
{
  result = qword_1003ABF18;
  if (!qword_1003ABF18)
  {
    sub_100005EA8(&qword_1003ABED0);
    sub_10004253C(&qword_1003ABF20, &type metadata accessor for RoundedRectangle);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABF18);
  }

  return result;
}

unint64_t sub_1000421F0()
{
  result = qword_1003ABF28;
  if (!qword_1003ABF28)
  {
    sub_100005EA8(&qword_1003ABE98);
    sub_10004253C(&qword_1003ABF20, &type metadata accessor for RoundedRectangle);
    sub_10001BAEC(&qword_1003ABF00, &qword_1003ABF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABF28);
  }

  return result;
}

unint64_t sub_1000422D8()
{
  result = qword_1003ABF30;
  if (!qword_1003ABF30)
  {
    sub_100005EA8(&qword_1003ABEA8);
    sub_100041EAC();
    sub_100041F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABF30);
  }

  return result;
}

unint64_t sub_100042364()
{
  result = qword_1003ABF38;
  if (!qword_1003ABF38)
  {
    sub_100005EA8(&qword_1003ABED8);
    sub_10004207C();
    sub_1000422D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABF38);
  }

  return result;
}

unint64_t sub_1000423F0()
{
  result = qword_1003ABF88;
  if (!qword_1003ABF88)
  {
    sub_100005EA8(&qword_1003ABF78);
    sub_100005EA8(&qword_1003ABF60);
    type metadata accessor for BorderlessButtonMenuStyle();
    sub_10001BAEC(&qword_1003ABF68, &qword_1003ABF60);
    sub_10004253C(&qword_1003ABF70, &type metadata accessor for BorderlessButtonMenuStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABF88);
  }

  return result;
}

uint64_t sub_10004253C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100042584(uint64_t a1)
{
  v2 = type metadata accessor for Capsule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000425E0(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003ABF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004264C()
{
  result = qword_1003ABF98;
  if (!qword_1003ABF98)
  {
    sub_100005EA8(&qword_1003ABE88);
    sub_100005EA8(&qword_1003ABE38);
    sub_100005EA8(&qword_1003ABE40);
    sub_100005EA8(&qword_1003ABE48);
    sub_10001BAEC(&qword_1003ABE50, &qword_1003ABE38);
    sub_100041C84();
    sub_100041D3C();
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABF98);
  }

  return result;
}

unint64_t sub_1000427DC()
{
  result = qword_1003ABFA0;
  if (!qword_1003ABFA0)
  {
    sub_100005EA8(&qword_1003ABFA8);
    sub_100005EA8(&qword_1003ABF60);
    type metadata accessor for Capsule();
    sub_10001BAEC(&qword_1003ABF68, &qword_1003ABF60);
    sub_10004253C(&qword_1003ABF90, &type metadata accessor for Capsule);
    swift_getOpaqueTypeConformance2();
    sub_100005EA8(&qword_1003ABF40);
    sub_100041E20(&qword_1003ABF80, &qword_1003ABF40, &unk_1002D5E38, sub_1000423F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABFA0);
  }

  return result;
}

NSString sub_1000429A0()
{
  result = String._bridgeToObjectiveC()();
  qword_1003D24F8 = result;
  return result;
}

uint64_t sub_1000429D8()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100042A7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_100042B28()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100042BCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
}

uint64_t sub_100042C78(uint64_t a1)
{
  if (*(v1 + 64) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_100042DAC()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);

  return v1;
}

void sub_100042E5C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  type metadata accessor for PersistedTranslation();
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 72);
    *(v2 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_100042FB8()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id sub_100043060@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_100043118(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for DictionaryManager();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 80);
LABEL_8:
  *(v2 + 80) = a1;
}

void *sub_100043298()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

id sub_100043340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

void sub_1000433F8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100043428(v1);
}

void sub_100043428(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for DisambiguationResultModel();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 88);
LABEL_8:
  *(v2 + 88) = a1;
}

uint64_t sub_1000435A8()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  sub_10001AD18(v1);
  return v1;
}

uint64_t sub_10004365C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100050ECC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_10001AD18(v4);
}

uint64_t sub_100043748(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100050E7C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10001AD18(v1);
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_10001ABE4(v4);
}

uint64_t sub_1000438A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  sub_10001AD18(a2);
  return sub_10001ABE4(v3);
}

uint64_t sub_1000438F0()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 112);
  sub_10001AD18(v1);
  return v1;
}

uint64_t sub_1000439A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10004FC10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_10001AD18(v4);
}

uint64_t sub_100043A90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_10004FBD0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10001AD18(v1);
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_10001ABE4(v4);
}

uint64_t sub_100043BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  sub_10001AD18(a2);
  return sub_10001ABE4(v3);
}

uint64_t sub_100043C38()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 128);
}

uint64_t sub_100043CD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_100043DA8(uint64_t result)
{
  if (*(v1 + 128) == (result & 1))
  {
    *(v1 + 128) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100043EB8()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100043F5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 152);
}

uint64_t sub_100044008()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000440C4()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 160);
}

uint64_t sub_100044164@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 160);
  return result;
}

uint64_t sub_100044234(uint64_t result)
{
  if (*(v1 + 160) == (result & 1))
  {
    *(v1 + 160) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100044344()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 161);
}

uint64_t sub_1000443E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 161);
  return result;
}

uint64_t sub_1000444B4(uint64_t result)
{
  if (*(v1 + 161) == (result & 1))
  {
    *(v1 + 161) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000445C4()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 162);
}

uint64_t sub_100044664@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 162);
  return result;
}

uint64_t sub_100044734(uint64_t result)
{
  v2 = *(v1 + 162);
  if (v2 == 4)
  {
    if (result != 4)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + 162) = result;
  return result;
}

void *sub_10004485C()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 168);
  v2 = v1;
  return v1;
}

id sub_100044904@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 168);
  *a2 = v4;

  return v4;
}

void sub_1000449BC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000449EC(v1);
}

void sub_1000449EC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 168);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000A2CC(0, &qword_1003AC720);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 168);
LABEL_8:
  *(v2 + 168) = a1;
}

void *sub_100044B7C()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

id sub_100044C24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 176);
  *a2 = v4;

  return v4;
}

void sub_100044CDC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100044D0C(v1);
}

void sub_100044D0C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 176);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000A2CC(0, &qword_1003AC720);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 176);
LABEL_8:
  *(v2 + 176) = a1;
}

void *sub_100044E9C()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 184);
  v2 = v1;
  return v1;
}

id sub_100044F44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 184);
  *a2 = v4;

  return v4;
}

void sub_100044FFC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10004502C(v1);
}

void sub_10004502C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 184);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for ASRAlternativesBehaviour();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 184);
LABEL_8:
  *(v2 + 184) = a1;
}

uint64_t sub_1000451AC()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100045244()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000452E0()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000453A4()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 192);
}

uint64_t sub_100045444@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 192);
  return result;
}

uint64_t sub_100045514(uint64_t result)
{
  if (*(v1 + 192) == (result & 1))
  {
    *(v1 + 192) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100045624()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 193);
}

uint64_t sub_1000456C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 193);
  return result;
}

uint64_t sub_100045794(uint64_t result)
{
  if (*(v1 + 193) == (result & 1))
  {
    *(v1 + 193) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000458A4(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for DisambiguationResultModel.RenderingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v1;
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 194) != v3)
  {
    swift_getKeyPath();
    v14 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v1 + 88);
    if (v9)
    {
      swift_getKeyPath();
      v14 = v2;
      v10 = v9;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = &enum case for DisambiguationResultModel.RenderingMode.dictionary(_:);
      if (!*(v2 + 194))
      {
        v11 = &enum case for DisambiguationResultModel.RenderingMode.disambiguation(_:);
      }

      (*(v5 + 104))(v7, *v11, v4);
      dispatch thunk of DisambiguationResultModel.renderMode.setter();
    }

    sub_100045EE4(0, 0, 1);
    sub_100046394(0, 0, 1);
    swift_getKeyPath();
    v14 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(v2 + 112);
    if (v12)
    {
      swift_getKeyPath();
      v14 = v2;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v12(v2, *(v2 + 194));
      return sub_10001ABE4(v12);
    }
  }

  return result;
}

uint64_t sub_100045B54()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 194);
}

uint64_t sub_100045BF4(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 194);
  if (v3 == v2)
  {
    *(v1 + 194) = v2;

    return sub_1000458A4(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100045D28(uint64_t a1, char a2)
{
  v3 = *(a1 + 194);
  *(a1 + 194) = a2;
  return sub_1000458A4(v3);
}

uint64_t sub_100045D5C()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 200);
}

__n128 sub_100045E00@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 216);
  result = *(v3 + 200);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_100045EE4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 216);
  if (v4 & 1) != 0 || (a3)
  {
    if ((v4 & a3 & 1) == 0)
    {
LABEL_12:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (*(v3 + 200) != a1 || *(v3 + 208) != a2)
  {
    goto LABEL_12;
  }

  *(v3 + 200) = a1;
  *(v3 + 208) = a2;
  *(v3 + 216) = a3 & 1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 194) == 1)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v3 + 216) & 1) == 0)
    {
      return sub_100046394(0, 0, 1);
    }
  }

  return result;
}

uint64_t sub_1000460F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 200) = a2;
  *(a1 + 208) = a3;
  *(a1 + 216) = a4 & 1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 194) == 1)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(a1 + 216) & 1) == 0)
    {
      return sub_100046394(0, 0, 1);
    }
  }

  return result;
}

uint64_t sub_10004620C()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 224);
}

__n128 sub_1000462B0@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3[15].n128_u8[0];
  result = v3[14];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_100046394(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 240);
  if (v4 & 1) != 0 || (a3)
  {
    if ((v4 & a3 & 1) == 0)
    {
LABEL_12:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (*(v3 + 224) != a1 || *(v3 + 232) != a2)
  {
    goto LABEL_12;
  }

  *(v3 + 224) = a1;
  *(v3 + 232) = a2;
  *(v3 + 240) = a3 & 1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 194) == 1)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v3 + 240) & 1) == 0)
    {
      return sub_100045EE4(0, 0, 1);
    }
  }

  return result;
}

uint64_t sub_1000465A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 224) = a2;
  *(a1 + 232) = a3;
  *(a1 + 240) = a4 & 1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 194) == 1)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(a1 + 240) & 1) == 0)
    {
      return sub_100045EE4(0, 0, 1);
    }
  }

  return result;
}

uint64_t sub_1000466BC()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 241);
}

uint64_t sub_10004675C(uint64_t result)
{
  if (*(v1 + 241) == (result & 1))
  {
    *(v1 + 241) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100046874()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 242);
}

uint64_t sub_100046914@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 242);
  return result;
}

uint64_t sub_1000469E4(uint64_t result)
{
  if (*(v1 + 242) == (result & 1))
  {
    *(v1 + 242) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100046AF4()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 243);
}

uint64_t sub_100046B94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 243);
  return result;
}

uint64_t sub_100046C64(uint64_t result)
{
  if (*(v1 + 243) == (result & 1))
  {
    *(v1 + 243) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100046D74()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100046E2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 248);
}

uint64_t sub_100046EEC(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_100162494(v3, a1);

  if (v4)
  {
    *(v1 + 248) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100047034(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 248) = a2;
}

uint64_t sub_10004709C()
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100047154@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 256);
}

uint64_t sub_100047214(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_100162494(v3, a1);

  if (v4)
  {
    *(v1 + 256) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10004735C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 256) = a2;
}

uint64_t sub_1000473C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10001F620(v1 + 264, a1, &qword_1003BBD20);
}

uint64_t sub_100047494@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10001F620(v3 + 264, a2, &qword_1003BBD20);
}

uint64_t sub_100047564(uint64_t a1)
{
  sub_10001F620(a1, v2, &qword_1003BBD20);
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100009EBC(v2, &qword_1003BBD20);
}

uint64_t sub_10004766C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1000512B8(a2, a1 + 264);
  return swift_endAccess();
}

void sub_1000476D0(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v55) = a2;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  v7 = __chkstk_darwin(v5);
  v54 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v52[-v9];
  sub_100042E5C(a1);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC17SequoiaTranslator29CommittedTranslationViewModel___observationRegistrar;
  *&v61 = v3;
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v3 + 72);
  v13 = dispatch thunk of PersistedTranslation.showDisambiguation.getter();

  v58 = v11;
  if (v13)
  {
    swift_getKeyPath();
    *&v61 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v3 + 72);
    dispatch thunk of PersistedTranslation.speechResult.getter();

    sub_1000085CC(&v61, *(&v62 + 1));
    dispatch thunk of SpeechResult.alternatives.getter();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v52[-16] = v3;
    *&v52[-8] = v60;
    v59 = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100009EBC(v60, &qword_1003BBD20);
    sub_100008664(&v61);
  }

  else
  {
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    *&v52[-16] = v3;
    *&v52[-8] = &v61;
    v60[0] = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100009EBC(&v61, &qword_1003BBD20);
  }

  v53 = sub_10004C444();
  if (v53)
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D28C0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "asrAlternatives exists and has low-confidence items so creating asrAlternativesBehaviour object", v20, 2u);
    }

    v21 = [objc_allocWithZone(type metadata accessor for ASRAlternativesBehaviour()) init];
    sub_10004502C(v21);
    swift_getKeyPath();
    *&v61 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v3 + 184);
    if (v22)
    {
      *(v22 + OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_delegate + 8) = &off_1003807C0;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    swift_getKeyPath();
    *&v61 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v3 + 184))
    {
      if (qword_1003A9290 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000078E8(v23, qword_1003D28C0);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "asrAlternatives is nil or is high confidence, so clearing asrAlternativesBehaviour object", v26, 2u);
      }

      if (*(v3 + 184))
      {
        v27 = swift_getKeyPath();
        __chkstk_darwin(v27);
        *&v52[-16] = v3;
        *&v52[-8] = 0;
        *&v61 = v3;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  if (v55)
  {
    [*(v3 + 304) reset];
  }

  sub_10004A140();
  swift_getKeyPath();
  *&v61 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v3 + 72);
  dispatch thunk of PersistedTranslation.sourceLocale.getter();

  swift_getKeyPath();
  *&v61 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v3 + 72);
  v30 = v54;
  dispatch thunk of PersistedTranslation.targetLocale.getter();

  v31 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v33 = Locale._bridgeToObjectiveC()().super.isa;
  v55 = [v31 initWithSourceLocale:isa targetLocale:v33];

  v34 = v56;
  v35 = v57 + 8;
  v36 = *(v57 + 8);
  v36(v30, v56);
  v57 = v35;
  v36(v10, v34);
  if ((v53 & 1) != 0 || (swift_getKeyPath(), *&v61 = v3, ObservationRegistrar.access<A, B>(_:keyPath:)(), , (v37 = *(v3 + 80)) == 0))
  {
    v39 = 0;
  }

  else
  {
    v38 = v37;
    v39 = sub_1000DCA80(v55);
  }

  swift_getKeyPath();
  *&v61 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v39 & 1) != *(v3 + 193))
  {
    v40 = swift_getKeyPath();
    __chkstk_darwin(v40);
    *&v52[-16] = v3;
    v52[-8] = v39 & 1;
    *&v61 = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  *&v61 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(v3 + 72);
  swift_getKeyPath();
  *&v61 = v3;
  v42 = v41;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v3 + 72);
  dispatch thunk of PersistedTranslation.sourceLocale.getter();

  swift_allocObject();
  swift_weakInit();

  v44 = sub_10004FF40(v42, v10, sub_1000516E0);

  v36(v10, v56);

  sub_100043428(v44);
  swift_getKeyPath();
  *&v61 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = *(v3 + 72);
  v46 = sub_10028AF00();

  swift_getKeyPath();
  *&v61 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(v3 + 162);
  if (v46 == 4)
  {
    if (v47 == 4)
    {
      goto LABEL_36;
    }

LABEL_31:
    swift_getKeyPath();
    *&v61 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v48 = *(v3 + 72);
    v49 = sub_10028AF00();

    v50 = *(v3 + 162);
    if (v50 == 4)
    {
      if (v49 != 4)
      {
LABEL_33:
        v51 = swift_getKeyPath();
        __chkstk_darwin(v51);
        *&v52[-16] = v3;
        v52[-8] = v49;
        *&v61 = v3;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_36;
      }
    }

    else if (v50 != v49)
    {
      goto LABEL_33;
    }

    *(v3 + 162) = v49;
    goto LABEL_36;
  }

  if (v47 == 4 || v47 != v46)
  {
    goto LABEL_31;
  }

LABEL_36:
  sub_100049538();
}

uint64_t sub_1000481D8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004BE0C(a2);
  }

  return result;
}

uint64_t sub_100048238()
{
  v1 = v0;
  v54 = sub_100005AD4(&qword_1003AABE8);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = v48 - v2;
  v3 = sub_100005AD4(&qword_1003AC768);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  __chkstk_darwin(v3);
  v61 = v48 - v5;
  v6 = sub_100005AD4(&qword_1003AC770);
  v7 = *(v6 - 8);
  v65 = v6;
  v66 = v7;
  __chkstk_darwin(v6);
  v62 = v48 - v8;
  v9 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v9 - 8);
  v67 = v48 - v10;
  v11 = sub_100005AD4(&qword_1003AC778);
  v12 = *(v11 - 8);
  v70 = v11;
  v71 = v12;
  __chkstk_darwin(v11);
  v14 = v48 - v13;
  v15 = sub_100005AD4(&qword_1003AABE0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v48 - v17;
  v57 = sub_100005AD4(&qword_1003AC780);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v20 = v48 - v19;
  v59 = sub_100005AD4(&qword_1003AC788);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = v48 - v21;
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC17SequoiaTranslator29CommittedTranslationViewModel___observationRegistrar;
  v73[0] = v0;
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  v56 = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  v48[2] = sub_100005AD4(&qword_1003AABF0);
  Published.projectedValue.getter();
  swift_endAccess();

  swift_getKeyPath();
  v73[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  sub_100005AD4(&qword_1003AC790);
  Published.projectedValue.getter();
  swift_endAccess();

  v23 = sub_10001BAEC(&qword_1003AABF8, &qword_1003AABE0);
  sub_10001BAEC(&qword_1003AC798, &qword_1003AC778);
  v24 = v70;
  v48[1] = v23;
  Publisher.combineLatest<A>(_:)();
  (*(v71 + 8))(v14, v24);
  v25 = *(v16 + 8);
  v49 = v18;
  v51 = v15;
  v50 = v16 + 8;
  v48[0] = v25;
  v25(v18, v15);
  v71 = sub_10000A2CC(0, &qword_1003A9C40);
  v26 = static OS_dispatch_queue.main.getter();
  v73[0] = v26;
  v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v69 = v28 + 56;
  v70 = v29;
  v30 = v67;
  v29(v67, 1, 1, v27);
  sub_10001BAEC(&qword_1003AC7A0, &qword_1003AC780);
  v68 = sub_100051450();
  v31 = v55;
  v32 = v57;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v30, &qword_1003B23F0);

  v58[1](v20, v32);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_10005152C;
  *(v34 + 24) = v33;
  v58 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001BAEC(&qword_1003AC7A8, &qword_1003AC788);
  v35 = v59;
  Publisher<>.sink(receiveValue:)();

  (*(v60 + 8))(v31, v35);
  swift_getKeyPath();
  v73[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v73[0] = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v73[0] = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v73[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10001F620(v1 + 264, v73, &qword_1003BBD20);
  sub_100005AD4(&qword_1003BBD20);
  v36 = v61;
  Optional.publisher.getter();
  sub_100009EBC(v73, &qword_1003BBD20);
  v37 = static OS_dispatch_queue.main.getter();
  v72 = v37;
  v60 = v27;
  v70(v30, 1, 1, v27);
  sub_10001BAEC(&qword_1003AC7B0, &qword_1003AC768);
  v39 = v62;
  v38 = v63;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v30, &qword_1003B23F0);

  (*(v64 + 8))(v36, v38);
  swift_allocObject();
  swift_weakInit();
  sub_10001BAEC(&qword_1003AC7B8, &qword_1003AC770);
  v40 = v65;
  Publisher<>.sink(receiveValue:)();

  (*(v66 + 8))(v39, v40);
  swift_getKeyPath();
  v73[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v73[0] = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v73[0] = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v73[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 152))
  {
    swift_beginAccess();

    v42 = v49;
    Published.projectedValue.getter();
    swift_endAccess();

    v43 = static OS_dispatch_queue.main.getter();
    v73[0] = v43;
    v44 = v67;
    v70(v67, 1, 1, v60);
    v45 = v52;
    v46 = v51;
    Publisher.receive<A>(on:options:)();
    sub_100009EBC(v44, &qword_1003B23F0);

    (v48[0])(v42, v46);
    swift_allocObject();
    swift_weakInit();
    sub_10001BAEC(qword_1003AAC00, &qword_1003AABE8);
    v47 = v54;
    Publisher<>.sink(receiveValue:)();

    (*(v53 + 8))(v45, v47);
    swift_getKeyPath();
    v73[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v73[0] = v1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v73[0] = v1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_1000490C0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v23 = a3;
  swift_getKeyPath();
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = [*(v7 + 72) identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (!a2)
  {

    v14 = 0;
    goto LABEL_12;
  }

  if (v9 == a1 && v11 == a2)
  {

    goto LABEL_11;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v14 = 0;
  if (v13)
  {
LABEL_11:
    v14 = (v23 & 1) == 0;
  }

LABEL_12:
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = [*(v7 + 72) identifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (a2)
  {
    if (v16 == a1 && v18 == a2)
    {

LABEL_18:
      v19 = v23;
      goto LABEL_19;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = 0;
    if (v20)
    {
      goto LABEL_18;
    }
  }

  else
  {

    v19 = 0;
  }

LABEL_19:
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v14 != *(v7 + 160))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v19 & 1) != *(v7 + 161))
  {
    v22 = swift_getKeyPath();
    __chkstk_darwin(v22);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100049488()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004C678();
  }

  return result;
}

uint64_t sub_1000494E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004A140();
  }

  return result;
}

uint64_t sub_100049538()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v2 - 8);
  v61 = &v55 - v3;
  v62 = sub_100005AD4(&qword_1003AC740);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v55 - v4;
  v5 = sub_100005AD4(&qword_1003AC748);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v55 - v9;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC17SequoiaTranslator29CommittedTranslationViewModel___observationRegistrar;
  v68 = v1;
  v11 = sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  v57 = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v12 = v1[32];
  v64 = v5;
  v65 = v11;
  v63 = v6;
  if ((v12 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_10005116C(&qword_1003AC750, &type metadata accessor for AnyCancellable);
    Set.Iterator.init(_cocoa:)();
    v13 = v68;
    v14 = v69;
    v15 = v70;
    v16 = v71;
    v17 = v72;
  }

  else
  {
    v18 = -1 << *(v12 + 32);
    v14 = v12 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v12 + 56);
    swift_bridgeObjectRetain_n();
    v16 = 0;
    v13 = v12;
  }

  v58 = v15;
  v21 = (v15 + 64) >> 6;
  if (v13 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v22 = v16;
    v23 = v17;
    v24 = v16;
    if (!v17)
    {
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v24 >= v21)
        {
          goto LABEL_18;
        }

        v23 = *(v14 + 8 * v24);
        ++v22;
        if (v23)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_12:
    v25 = (v23 - 1) & v23;
    v26 = *(*(v13 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));

    if (!v26)
    {
      break;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v16 = v24;
      v17 = v25;
      if ((v13 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v27 = __CocoaSet.Iterator.next()();
      if (v27)
      {
        v66 = v27;
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v24 = v16;
        v25 = v17;
        if (v67)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

LABEL_18:
  sub_10000C1D0();

  if (!(&_swiftEmptyArrayStorage >> 62))
  {
    v28 = &_swiftEmptySetSingleton;
    goto LABEL_20;
  }

LABEL_32:
  if (_CocoaArrayWrapper.endIndex.getter())
  {
    v28 = sub_10011ED3C(&_swiftEmptyArrayStorage);
  }

  else
  {
    v28 = &_swiftEmptySetSingleton;
  }

LABEL_20:
  sub_100047214(v28);
  swift_getKeyPath();
  v67 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = v1[11];
  if (v29)
  {
    v30 = v29;
    v31 = dispatch thunk of DisambiguationResultModel.sourceAttributedText.getter();
  }

  else
  {
    v31 = 0;
  }

  sub_1000449EC(v31);
  swift_getKeyPath();
  v67 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = v1[11];
  if (v32)
  {
    v33 = v32;
    v34 = v59;
    dispatch thunk of DisambiguationResultModel.$sourceAttributedText.getter();

    sub_10000A2CC(0, &qword_1003A9C40);
    v35 = static OS_dispatch_queue.main.getter();
    v67 = v35;
    v36 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v37 = v61;
    (*(*(v36 - 8) + 56))(v61, 1, 1, v36);
    sub_10001BAEC(&qword_1003AC758, &qword_1003AC740);
    sub_100051450();
    v38 = v55;
    v39 = v62;
    Publisher.receive<A>(on:options:)();
    sub_100009EBC(v37, &qword_1003B23F0);

    (*(v60 + 8))(v34, v39);
    swift_allocObject();
    swift_weakInit();
    sub_10001BAEC(&qword_1003AC760, &qword_1003AC748);
    v40 = v64;
    Publisher<>.sink(receiveValue:)();

    (*(v63 + 8))(v38, v40);
    swift_getKeyPath();
    v67 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v67 = v1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v67 = v1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  swift_getKeyPath();
  v67 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = v1[11];
  if (v41)
  {
    v42 = v41;
    v43 = dispatch thunk of DisambiguationResultModel.targetAttributedText.getter();
  }

  else
  {
    v43 = 0;
  }

  sub_100044D0C(v43);
  swift_getKeyPath();
  v67 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = v1[11];
  if (v45)
  {
    v46 = v45;
    v47 = v63;
    v48 = v59;
    dispatch thunk of DisambiguationResultModel.$targetAttributedText.getter();

    sub_10000A2CC(0, &qword_1003A9C40);
    v49 = static OS_dispatch_queue.main.getter();
    v67 = v49;
    v50 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v51 = v61;
    (*(*(v50 - 8) + 56))(v61, 1, 1, v50);
    sub_10001BAEC(&qword_1003AC758, &qword_1003AC740);
    sub_100051450();
    v52 = v56;
    v53 = v62;
    Publisher.receive<A>(on:options:)();
    sub_100009EBC(v51, &qword_1003B23F0);

    (*(v60 + 8))(v48, v53);
    swift_allocObject();
    swift_weakInit();
    sub_10001BAEC(&qword_1003AC760, &qword_1003AC748);
    v54 = v64;
    Publisher<>.sink(receiveValue:)();

    (*(v47 + 8))(v52, v54);
    swift_getKeyPath();
    v67 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v67 = v1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v67 = v1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_10004A00C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v3 + 176);
    if (v4)
    {
      sub_10000A2CC(0, &qword_1003AC720);
      v5 = v1;
      v6 = v4;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
      }
    }

    else
    {
      v8 = v1;
    }

    sub_100044D0C(v1);
  }

  return result;
}

uint64_t sub_10004A140()
{
  v1 = v0;
  v2 = type metadata accessor for GenderTipManager.Registration(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v13 = v0;
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v0 + 72);
  v6 = dispatch thunk of PersistedTranslation.showDisambiguation.getter();

  if ((v6 & 1) == 0)
  {
    swift_getKeyPath();
    v13 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + 192) != 1)
    {
      return result;
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v12 - 2) = v1;
    *(&v12 - 8) = 0;
    v13 = v1;
    goto LABEL_9;
  }

  swift_getKeyPath();
  v13 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 152))
  {
    swift_getKeyPath();
    v13 = v1;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v1 + 72);
    sub_10010993C(v7, 0, v4);
    v8 = sub_100109B6C(v4);

    sub_10005139C(v4);
  }

  else
  {
    v8 = 0;
  }

  swift_getKeyPath();
  v13 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v8 & 1) != *(v1 + 192))
  {
    v11 = swift_getKeyPath();
    __chkstk_darwin(v11);
    *(&v12 - 2) = v1;
    *(&v12 - 8) = v8 & 1;
    v13 = v1;
LABEL_9:
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10004A464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 480) = a5;
  *(v5 + 240) = a4;
  sub_100005AD4(&qword_1003AA3B8);
  *(v5 + 248) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v5 + 256) = v6;
  *(v5 + 264) = *(v6 - 8);
  *(v5 + 272) = swift_task_alloc();
  sub_100005AD4(&unk_1003B8C90);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  *(v5 + 296) = v7;
  *(v5 + 304) = *(v7 - 8);
  *(v5 + 312) = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  *(v5 + 320) = v8;
  *(v5 + 328) = *(v8 - 8);
  *(v5 + 336) = swift_task_alloc();
  v9 = type metadata accessor for Locale();
  *(v5 + 344) = v9;
  v10 = *(v9 - 8);
  *(v5 + 352) = v10;
  *(v5 + 360) = *(v10 + 64);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_10004A6E4, 0, 0);
}

uint64_t sub_10004A6E4()
{
  v1 = v0[30];
  swift_getKeyPath();
  v0[50] = OBJC_IVAR____TtC17SequoiaTranslator29CommittedTranslationViewModel___observationRegistrar;
  v0[21] = v1;
  v0[51] = sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[52] = v1[8];
  swift_getKeyPath();
  v0[22] = v1;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v1[9];
  v0[53] = v2;
  swift_getKeyPath();
  v0[23] = v1;
  v3 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1[2])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v4 = v0[19];
    v5 = v0[20];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v0[54] = v4;
  v0[55] = v5;
  v0[56] = sub_10005116C(&qword_1003AC7C8, &type metadata accessor for PersistedTranslation);
  v6 = [v3 identifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v0[57] = v7;
  v0[58] = v9;
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  swift_weakInit();

  return _swift_task_switch(sub_10004A95C, 0, 0);
}

uint64_t sub_10004A95C()
{
  v1 = v0;
  v2 = v0;
  v40 = v0 + 2;
  v28 = v0[57];
  v29 = v0[58];
  v33 = v0[56];
  aBlock = v0 + 10;
  v30 = v0[54];
  v31 = v0[53];
  v32 = v0[55];
  v25 = v0[49];
  v26 = v0[48];
  v3 = v0[46];
  v4 = v0[47];
  v22 = v4;
  v23 = v3;
  v5 = v0[44];
  v6 = v0[45];
  v7 = v0[43];
  v35 = v1[42];
  v41 = v1[41];
  v42 = v1[40];
  v38 = v1[39];
  v27 = *(v1 + 480);
  v39 = v1[38];
  v37 = v1[37];
  v1[2] = v2;
  v1[3] = sub_10004AD80;
  v24 = swift_continuation_init();
  sub_10000A2CC(0, &qword_1003A9C40);
  v36 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = *(v5 + 16);
  v9(v4, v25, v7);
  v9(v3, v26, v7);
  v10 = *(v5 + 80);
  v11 = (v10 + 49) & ~v10;
  v12 = v11 + v6;
  v13 = (v10 + v11 + v6 + 1) & ~v10;
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v24;
  *(v15 + 32) = v28;
  *(v15 + 40) = v29;
  *(v15 + 48) = v27 ^ 1;
  v16 = *(v5 + 32);
  v16(v15 + v11, v22, v7);
  *(v15 + v12) = v27;
  v16(v15 + v13, v23, v7);
  v17 = (v15 + v14);
  *v17 = v30;
  v17[1] = v32;
  v18 = v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v18 = v31;
  *(v18 + 8) = v33;
  *(v18 + 16) = 0;
  *(v18 + 18) = 0;
  v1[14] = sub_100026C4C;
  v1[15] = v15;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100096948;
  v1[13] = &unk_100380988;
  v19 = _Block_copy(aBlock);
  v20 = v31;

  static DispatchQoS.unspecified.getter();
  v1[25] = _swiftEmptyArrayStorage;
  sub_10005116C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v39 + 8))(v38, v37);
  (*(v41 + 8))(v35, v42);

  return _swift_continuation_await(v40);
}

uint64_t sub_10004AD80()
{
  v1 = *(*v0 + 48);
  *(*v0 + 472) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_10004B1C0;
  }

  else
  {
    swift_weakDestroy();
    v2 = sub_10004AEA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004AEA4()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  v26 = *(v0 + 480);
  v6 = *(v0 + 240);

  v7 = *(v5 + 8);
  v7(v2, v4);
  v7(v3, v4);
  swift_getKeyPath();
  *(v0 + 224) = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v6 + 72);
  dispatch thunk of PersistedTranslation.selfLoggingInvocationId.getter();

  v9 = 1;
  if (v26)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  swift_getKeyPath();
  *(v0 + 232) = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v6 + 72) ttsPlaybackRateDouble];
  if (v11 != 0.5)
  {
    if (v11 == 0.75)
    {
      v9 = 2;
    }

    else if (v11 == 1.0)
    {
      v9 = 3;
    }

    else if (v11 == 1.25)
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }
  }

  v12 = *(v0 + 280);
  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  sub_10001F620(*(v0 + 288), v12, &unk_1003B8C90);
  v15 = (*(v14 + 48))(v12, 1, v13);
  v16 = *(v0 + 280);
  if (v15 == 1)
  {
    sub_100009EBC(*(v0 + 288), &unk_1003B8C90);
    v17 = v16;
  }

  else
  {
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = *(v0 + 256);
    v21 = *(v0 + 288);
    (*(v19 + 32))(v18, *(v0 + 280), v20);
    v22 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v22 translationTTSPlayedWithInvocationId:isa sourceOrTargetLanguage:v10 isAutoplayTranslation:0 ttsPlaybackSpeed:v9 audioChannel:1];

    (*(v19 + 8))(v18, v20);
    v17 = v21;
  }

  sub_100009EBC(v17, &unk_1003B8C90);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10004B1C0()
{
  v1 = v0[53];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[43];
  v5 = v0[44];

  swift_weakDestroy();
  v6 = *(v5 + 8);
  v6(v2, v4);
  v6(v3, v4);
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D28C0);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Exception while toggling TTS: %@", v10, 0xCu);
    sub_100009EBC(v11, &unk_1003AECA0);
  }

  v13 = _convertErrorToNSError(_:)();
  v14 = [v13 underlyingErrors];

  sub_100005AD4(&unk_1003B9E90);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v15 + 16))
  {

    goto LABEL_11;
  }

  v16 = *(v15 + 32);
  swift_errorRetain();

  v0[26] = v16;
  sub_10000A2CC(0, &qword_1003A9A88);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    goto LABEL_17;
  }

  v17 = v0[27];
  v18 = [v17 domain];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == 0x65746F6D6552544CLL && v21 == 0xEF6572756C696146)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
LABEL_15:

      goto LABEL_16;
    }
  }

  if ([v17 code] != 919)
  {
    goto LABEL_15;
  }

  v23 = v0[31];
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v25 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v25;

  sub_10005E66C(0, 0, v23, &unk_1002D6660, v27);

LABEL_16:

LABEL_17:

  v28 = v0[1];

  return v28();
}

uint64_t sub_10004B690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004B728, v6, v5);
}

uint64_t sub_10004B728()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    if (*(Strong + 242) == 1)
    {
      *(Strong + 242) = 1;
    }

    else
    {
      swift_getKeyPath();
      v3 = swift_task_alloc();
      *(v3 + 16) = v2;
      *(v3 + 24) = 1;
      *(v0 + 40) = v2;
      sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  **(v0 + 48) = v2 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10004B8A4(char a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v5 = sub_100005AD4(&qword_1003AC738);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for DisambiguationResultModel.LinkRangeInfo();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005AD4(&unk_1003B28D0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = type metadata accessor for DisambiguationLinkInfo();
  __chkstk_darwin(v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v38 = v9;
    v39 = v19;
    swift_getKeyPath();
    v22 = OBJC_IVAR____TtC17SequoiaTranslator29CommittedTranslationViewModel___observationRegistrar;
    v41 = v3;
    v36 = sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    v37 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(v3 + 88);
    if (v23)
    {
      v24 = v23;
      v25 = DisambiguationResultModel.disambiguableResult.getter();
      if (v25)
      {
        v35 = v24;

        sub_10001F620(v40, v17, &unk_1003B28D0);
        v26 = v39;
        if ((*(v39 + 48))(v17, 1, v18) == 1)
        {

          sub_100009EBC(v17, &unk_1003B28D0);
        }

        else
        {
          (*(v26 + 32))(v21, v17, v18);
          (*(v26 + 16))(v15, v21, v18);
          (*(v26 + 56))(v15, 0, 1, v18);
          v28 = v35;
          dispatch thunk of DisambiguationResultModel.rangeInfo(for:)();
          sub_100009EBC(v15, &unk_1003B28D0);
          v29 = v38;
          if ((*(v38 + 48))(v7, 1, v8) == 1)
          {
            (*(v26 + 8))(v21, v18);

            sub_100009EBC(v7, &qword_1003AC738);
          }

          else
          {
            (*(v29 + 32))(v11, v7, v8);
            swift_getKeyPath();
            v41 = v3;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            if ((*(v3 + 194) & 1) == 0)
            {
              v30 = DisambiguationResultModel.LinkRangeInfo.sourceRange.getter();
              sub_100045EE4(v30, v31, 0);
              v32 = DisambiguationResultModel.LinkRangeInfo.targetRange.getter();
              sub_100046394(v32, v33, 0);

              (*(v29 + 8))(v11, v8);
              return (*(v39 + 8))(v21, v18);
            }

            (*(v29 + 8))(v11, v8);
            (*(v39 + 8))(v21, v18);
          }
        }
      }

      else
      {
      }
    }

    sub_100045EE4(0, 0, 1);
    return sub_100046394(0, 0, 1);
  }

  else
  {
    sub_100045EE4(0, 0, 1);

    return sub_100046394(0, 0, 1);
  }
}

id sub_10004BE0C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CoreAnalyticsLogger.CardType();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = __chkstk_darwin(v6);
  v48 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = v45 - v9;
  v10 = sub_100005AD4(&qword_1003AC730);
  __chkstk_darwin(v10 - 8);
  v12 = v45 - v11;
  v13 = type metadata accessor for CoreAnalyticsLogger.InteractionLocation();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v49 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000078E8(v16, qword_1003D28C0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "User changed disambiguation selection; saving changes to the database", v19, 2u);
  }

  v55 = v14;
  v56 = v13;
  if (a1)
  {
    v20 = [a1 edge];
    v21 = [v20 type];

    v22 = *(v2 + 304);
    v46 = v21;
    v23 = [v22 hasAnyChangeOfType:v21];
  }

  else
  {
    v46 = 0;
    v23 = 1;
  }

  sub_1000085CC((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v24 = OBJC_IVAR____TtC17SequoiaTranslator29CommittedTranslationViewModel___observationRegistrar;
  v57 = v2;
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  v45[1] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v2 + 72);
  dispatch thunk of TranslationStore.updateDisambiguation(for:)();

  result = [*(v2 + 304) addUserSelection:a1];
  if (a1 && (v23 & 1) == 0)
  {
    v27 = *(v2 + 136);
    v28 = *(v2 + 144);
    sub_100005B2C(v27, v28);
    sub_10000C750(v27, v28, v12);
    v30 = v55;
    v29 = v56;
    if ((*(v55 + 48))(v12, 1, v56) == 1)
    {
      return sub_100009EBC(v12, &qword_1003AC730);
    }

    else
    {
      v31 = v49;
      (*(v30 + 32))(v49, v12, v29);
      swift_getKeyPath();
      v57 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = *(v2 + 72);
      v33 = v47;
      dispatch thunk of PersistedTranslation.sourceLocale.getter();

      swift_getKeyPath();
      v57 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v34 = *(v2 + 72);
      v35 = v48;
      dispatch thunk of PersistedTranslation.targetLocale.getter();

      v36 = objc_allocWithZone(_LTLocalePair);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v38 = Locale._bridgeToObjectiveC()().super.isa;
      v39 = [v36 initWithSourceLocale:isa targetLocale:v38];

      v40 = v51;
      v41 = *(v50 + 8);
      v41(v35, v51);
      v41(v33, v40);
      type metadata accessor for CoreAnalyticsLogger();
      static CoreAnalyticsLogger.shared.getter();
      v43 = v52;
      v42 = v53;
      v44 = v54;
      (*(v53 + 104))(v52, enum case for CoreAnalyticsLogger.CardType.committed(_:), v54);
      dispatch thunk of CoreAnalyticsLogger.didInteractWithDisambiguation(fromCard:location:type:localePair:)();

      (*(v42 + 8))(v43, v44);
      return (*(v30 + 8))(v31, v29);
    }
  }

  return result;
}

uint64_t sub_10004C444()
{
  swift_getKeyPath();
  v11[0] = v0;
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10001F620(v0 + 264, &v9, &qword_1003BBD20);
  if (!v10)
  {
    sub_100009EBC(&v9, &qword_1003BBD20);
    return 0;
  }

  sub_100051124(&v9, v11);
  sub_1000085CC(v11, v11[3]);
  result = dispatch thunk of SpeechSausage.tokenBins.getter();
  v2 = result;
  v3 = *(result + 16);
  if (!v3)
  {
LABEL_10:
    v7 = 0;
LABEL_11:

    sub_100008664(v11);
    return v7;
  }

  v4 = 0;
  v5 = result + 32;
  while (v4 < *(v2 + 16))
  {
    sub_100031DD8(v5, &v9);
    sub_1000085CC(&v9, v10);
    sub_10028AF80(v8);
    sub_1000085CC(v8, v8[3]);
    if (dispatch thunk of SpeechTokenAlternatives.isLowConfidence.getter())
    {
      sub_1000085CC(&v9, v10);
      v6 = *(sub_10028B00C(0) + 16);

      sub_100008664(v8);
      result = sub_100008664(&v9);
      if (v6)
      {
        v7 = 1;
        goto LABEL_11;
      }
    }

    else
    {
      sub_100008664(v8);
      result = sub_100008664(&v9);
    }

    ++v4;
    v5 += 40;
    if (v3 == v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_10004C678()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString();
  __chkstk_darwin(v2 - 8);
  v71 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DisambiguationResultModel.TextLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DisambiguationResultModel.RenderingMode();
  v8 = *(v74 - 8);
  v9 = __chkstk_darwin(v74);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75 = v62 - v12;
  if (sub_10004C444())
  {
    v69 = v7;
    swift_getKeyPath();
    v13 = OBJC_IVAR____TtC17SequoiaTranslator29CommittedTranslationViewModel___observationRegistrar;
    v76[0] = v0;
    v14 = sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_10001F620(v0 + 264, &v78, &qword_1003BBD20);
    if (v79)
    {
      v66 = v5;
      sub_100051124(&v78, v80);
      swift_getKeyPath();
      *&v78 = v0;
      v68 = v13;
      v67 = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v8 + 104);
      v16 = &enum case for DisambiguationResultModel.RenderingMode.dictionary(_:);
      if (!*(v0 + 194))
      {
        v16 = &enum case for DisambiguationResultModel.RenderingMode.disambiguation(_:);
      }

      v17 = *v16;
      v73 = v8 + 104;
      v72 = v15;
      v15(v75, v17, v74);
      v18 = objc_allocWithZone(NSMutableAttributedString);
      v19 = String._bridgeToObjectiveC()();
      v20 = [v18 initWithString:v19];

      sub_1000085CC(v80, v80[3]);
      v21 = dispatch thunk of SpeechSausage.tokenBins.getter();
      v22 = *(v21 + 16);
      if (v22)
      {
        v63 = v4;
        v23 = v20;
        v65 = v1;
        v62[1] = v21;
        v24 = v21 + 32;
        v64 = v8;
        v25 = (v8 + 8);
        v70 = enum case for DisambiguationResultModel.RenderingMode.disambiguation(_:);
        do
        {
          sub_100031DD8(v24, &v78);
          sub_1000085CC(&v78, v79);
          sub_10028AF80(v76);
          sub_1000085CC(v76, v77);
          dispatch thunk of SpeechTokenAlternatives.text.getter();
          v26 = objc_allocWithZone(NSMutableAttributedString);
          v27 = String._bridgeToObjectiveC()();

          v28 = [v26 initWithString:v27];

          sub_1000085CC(&v78, v79);
          v29 = sub_10028B194(1);
          if (v29)
          {
            v30 = v29;
            v31 = v74;
            v72(v11, v70, v74);
            v32 = static DisambiguationResultModel.RenderingMode.== infix(_:_:)();
            (*v25)(v11, v31);
            if (v32)
            {
              if (qword_1003A91C0 != -1)
              {
                swift_once();
              }

              v33 = qword_1003D24F8;
              v34 = v30;
              [v28 addAttribute:v33 value:v34 range:{0, objc_msgSend(v28, "length")}];
            }
          }

          sub_1000085CC(v76, v77);
          if (dispatch thunk of SpeechTokenAlternatives.hasSpaceAfter.getter())
          {
            sub_10000A2CC(0, &qword_1003AC720);
            AttributedString.init(stringLiteral:)();
            v35 = NSAttributedString.init(_:)();
            [v28 appendAttributedString:v35];
          }

          [v23 appendAttributedString:v28];

          sub_100008664(v76);
          sub_100008664(&v78);
          v24 += 40;
          --v22;
        }

        while (v22);

        v1 = v65;
        v8 = v64;
        v20 = v23;
        v4 = v63;
      }

      else
      {
      }

      swift_weakInit();
      v49 = v66;
      v50 = v69;
      (*(v66 + 104))(v69, enum case for DisambiguationResultModel.TextLocation.source(_:), v4);
      v51 = sub_10004D164(v50, v75);
      (*(v49 + 8))(v50, v4);
      if (v51)
      {
        type metadata accessor for Key(0);
        sub_10005116C(&qword_1003A98E0, type metadata accessor for Key);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v20 addAttributes:isa range:{0, objc_msgSend(v20, "length")}];
      }

      if (qword_1003A9290 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000078E8(v53, qword_1003D28C0);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Updating sourceText from ASR alternatives", v56, 2u);
      }

      swift_getKeyPath();
      v76[0] = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v57 = *(v1 + 168);
      if (v57)
      {
        sub_10000A2CC(0, &qword_1003AC720);
        v58 = v20;
        v59 = v57;
        v60 = static NSObject.== infix(_:_:)();

        if (v60)
        {

LABEL_47:
          swift_weakDestroy();
          (*(v8 + 8))(v75, v74);
          sub_100008664(v80);
          return;
        }
      }

      else
      {
        v61 = v20;
      }

      sub_1000449EC(v20);
      goto LABEL_47;
    }

    sub_100009EBC(&v78, &qword_1003BBD20);
  }

  swift_getKeyPath();
  v80[0] = v0;
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = *(v0 + 168);
  swift_getKeyPath();
  v80[0] = v0;
  v37 = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(v0 + 88);
  if (v38)
  {
    v39 = v38;
    v40 = dispatch thunk of DisambiguationResultModel.sourceAttributedText.getter();

    if (v36)
    {
      if (v40)
      {
        sub_10000A2CC(0, &qword_1003AC720);
        v41 = static NSObject.== infix(_:_:)();

        if (v41)
        {
          return;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v37 = v40;
      if (!v40)
      {
        return;
      }
    }
  }

  else if (!v36)
  {
    return;
  }

LABEL_27:
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000078E8(v42, qword_1003D28C0);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Updating sourceText from resultModel", v45, 2u);
  }

  swift_getKeyPath();
  v80[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = *(v1 + 88);
  if (v46)
  {
    v47 = v46;
    v48 = dispatch thunk of DisambiguationResultModel.sourceAttributedText.getter();
  }

  else
  {
    v48 = 0;
  }

  sub_1000449EC(v48);
}

unint64_t sub_10004D164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v26[-v9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_getKeyPath();
    v27 = v12;
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v12 + 72);

    dispatch thunk of PersistedTranslation.sourceLocale.getter();
    dispatch thunk of PersistedTranslation.targetLocale.getter();
    v14 = objc_allocWithZone(_LTLocalePair);
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v16 = Locale._bridgeToObjectiveC()().super.isa;
    v17 = [v14 initWithSourceLocale:isa targetLocale:v16];

    v18 = *(v5 + 8);
    v18(v8, v4);
    v18(v10, v4);
    v19 = [v17 sourceLocale];

    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    Locale.isRTL()();
    v18(v10, v4);
  }

  type metadata accessor for DisambiguationResultModel();
  v20 = static DisambiguationResultModel.defaultAttributes(forRTL:)();
  if (!v20)
  {
    v20 = sub_100292588(&_swiftEmptyArrayStorage);
  }

  v21 = v20;
  v22 = sub_1000E4D48(a1, a2);
  if (!v22)
  {
    v22 = sub_100292588(&_swiftEmptyArrayStorage);
  }

  v23 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v23;
  sub_1000506AC(v21, sub_10004FC40, 0, isUniquelyReferenced_nonNull_native, &v27);

  return v27;
}

void sub_10004D470(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v59 - v7;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v59 - v14;
  if (a2)
  {
    v16 = a2;
  }

  else
  {
    swift_getKeyPath();
    v66 = v2;
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v2 + 168);
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = [v17 string];
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v19;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  swift_bridgeObjectRetain_n();

  if (v20)
  {
    v62 = v16;
    v63 = v8;
    v64 = a1;
    swift_getKeyPath();
    v66 = v3;
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    v60 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = [*(v3 + 72) identifier];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    swift_getKeyPath();
    v66 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(v3 + 72);
    dispatch thunk of PersistedTranslation.sourceLocale.getter();
    dispatch thunk of PersistedTranslation.targetLocale.getter();
    v25 = objc_allocWithZone(_LTLocalePair);
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v27 = Locale._bridgeToObjectiveC()().super.isa;
    v28 = [v25 initWithSourceLocale:isa targetLocale:v27];

    v29 = *(v10 + 8);
    v30 = v60;
    v29(v13, v60);
    v29(v15, v30);
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000078E8(v31, qword_1003D28C0);
    v32 = v62;

    v33 = v28;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v64;
    v38 = v23;
    if (v36)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v23;
      v42 = swift_slowAlloc();
      v66 = v42;
      *v39 = 136446722;
      v43 = v61;
      *(v39 + 4) = sub_10028D78C(v61, v41, &v66);
      *(v39 + 12) = 2050;
      *(v39 + 14) = String.count.getter();

      *(v39 + 22) = 2114;
      *(v39 + 24) = v33;
      *v40 = v33;
      v44 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "Retranslating translation %{public}s with text of length %{public}ld with pair: %{public}@", v39, 0x20u);
      sub_100009EBC(v40, &unk_1003AECA0);

      sub_100008664(v42);
      v38 = v41;
      v37 = v64;

      v45 = v63;
    }

    else
    {

      v45 = v63;
      v43 = v61;
    }

    v46 = type metadata accessor for TaskPriority();
    (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v37;
    v48[5] = v32;
    v48[6] = v33;
    v48[7] = v47;
    v48[8] = v43;
    v48[9] = v38;
    sub_10005E36C(0, 0, v45, &unk_1002D61B8, v48);

    return;
  }

LABEL_15:
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000078E8(v49, qword_1003D28C0);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v66 = v53;
    *v52 = 136446210;
    swift_getKeyPath();
    v65 = v3;
    sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v54 = [*(v3 + 72) identifier];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = sub_10028D78C(v55, v57, &v66);

    *(v52 + 4) = v58;

    _os_log_impl(&_mh_execute_header, v50, v51, "Not retranslating translation %{public}s because the new source text is empty or nil", v52, 0xCu);
    sub_100008664(v53);
  }

  else
  {
  }
}

uint64_t sub_10004DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = a8;
  v8[32] = v15;
  v8[29] = a6;
  v8[30] = a7;
  v8[27] = a4;
  v8[28] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[33] = v9;
  v8[34] = *(v9 - 8);
  v8[35] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[36] = v10;
  v8[37] = *(v10 - 8);
  v8[38] = swift_task_alloc();
  v11 = type metadata accessor for Locale();
  v8[39] = v11;
  v8[40] = *(v11 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v8[43] = v12;
  v8[44] = *(v12 - 8);
  v8[45] = swift_task_alloc();

  return _swift_task_switch(sub_10004DE34, 0, 0);
}

uint64_t sub_10004DE34()
{
  v1 = *(v0 + 232);
  UUID.init()();
  v2 = [objc_allocWithZone(_LTTranslator) init];
  *(v0 + 368) = v2;
  v3 = [v1 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v1 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = objc_allocWithZone(_LTTextTranslationRequest);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v7 = Locale._bridgeToObjectiveC()().super.isa;
  v8 = [v5 initWithSourceLocale:isa targetLocale:v7];
  *(v0 + 376) = v8;

  v9 = v8;
  [v9 setTaskHint:1];
  v10 = objc_allocWithZone(NSAttributedString);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithString:v11];

  [v9 setText:v12];
  [v9 setIsFinal:1];
  [v9 set_supportsGenderDisambiguation:1];
  [v9 setCensorSpeech:byte_1003D2A90];
  [v9 setSourceOrigin:0];
  sub_10000A2CC(0, &qword_1003A9B80);
  v13 = static NSUserDefaults.translationGroupDefaults.getter();
  LOBYTE(v11) = NSUserDefaults.onDeviceOnly.getter();

  [v9 setForcedOfflineTranslation:v11 & 1];
  *(v0 + 128) = &type metadata for TranslateFeatures;
  v14 = sub_100009DF8();
  *(v0 + 104) = 18;
  *(v0 + 136) = v14;
  v15 = isFeatureEnabled(_:)();
  sub_100008664(v0 + 104);
  if (v15)
  {
    [v9 setPreferOnDeviceIfAvailable:1];
  }

  [v9 setOverrideOngoingSessionIfNeeded:1];
  v16 = UUID._bridgeToObjectiveC()().super.isa;
  [v9 setLogIdentifier:v16];

  v17 = swift_task_alloc();
  *(v0 + 384) = v17;
  *(v17 + 16) = v9;
  *(v17 + 24) = v2;
  v18 = swift_task_alloc();
  *(v0 + 392) = v18;
  v19 = sub_100005AD4(&qword_1003AC710);
  *v18 = v0;
  v18[1] = sub_10004E1A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 64, 0, 0, 0xD000000000000039, 0x80000001002F1BB0, sub_1000510C4, v17, v19);
}

uint64_t sub_10004E1A8()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_10004E688;
  }

  else
  {
    v2 = sub_10004E2D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004E2D8()
{
  v1 = *(v0 + 47);
  v27 = *(v0 + 45);
  v2 = *(v0 + 42);
  v25 = *(v0 + 44);
  v26 = *(v0 + 43);
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v5 = *(v0 + 39);
  v23 = *(v0 + 37);
  v24 = *(v0 + 36);
  v19 = *(v0 + 38);
  v20 = *(v0 + 35);
  v22 = *(v0 + 34);
  v6 = *(v0 + 32);
  v21 = *(v0 + 33);
  v7 = *(v0 + 28);
  v18 = *(v0 + 29);
  v16 = *(v0 + 31);
  v17 = *(v0 + 27);

  v8 = *(v3 + 8);
  v8(v4, v5);
  v8(v2, v5);
  sub_10000A2CC(0, &qword_1003A9C40);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_100031DD8((v0 + 4), (v0 + 9));
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v16;
  v11[4] = v6;
  sub_100051124(v0 + 9, (v11 + 5));
  v11[10] = v17;
  v11[11] = v7;
  v11[12] = v18;
  *(v0 + 6) = sub_10005113C;
  *(v0 + 7) = v11;
  *(v0 + 2) = _NSConcreteStackBlock;
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_100096948;
  *(v0 + 5) = &unk_1003808E8;
  v12 = _Block_copy(v0 + 1);

  v13 = v18;
  static DispatchQoS.unspecified.getter();
  *(v0 + 26) = _swiftEmptyArrayStorage;
  sub_10005116C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v22 + 8))(v20, v21);
  (*(v23 + 8))(v19, v24);
  sub_100008664((v0 + 4));
  (*(v25 + 8))(v27, v26);

  v14 = *(v0 + 1);

  return v14();
}

uint64_t sub_10004E688()
{
  v22 = v0;
  v1 = *(v0 + 376);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v8 = *(v0 + 312);

  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  (*(v3 + 8))(v2, v4);
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000078E8(v10, qword_1003D28C0);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = *(v0 + 248);
    v13 = *(v0 + 256);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_10028D78C(v14, v13, &v21);
    *(v15 + 12) = 2112;
    v18 = _convertErrorToNSError(_:)();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to retranslate %{public}s with new source: %@", v15, 0x16u);
    sub_100009EBC(v16, &unk_1003AECA0);

    sub_100008664(v17);
  }

  else
  {
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10004E928(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v62 = a7;
  v64 = a5;
  v68 = a4;
  v69 = a3;
  v67 = a2;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v63 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoredSpeechResult();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v66 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005AD4(&qword_1003AC718);
  __chkstk_darwin(v13 - 8);
  v15 = v54 - v14;
  v16 = type metadata accessor for SpeechResultOrigin();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v61 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v65 = v54 - v20;
  v21 = type metadata accessor for CoreAnalyticsLogger.CardType();
  v55 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v25 = result;
  v57 = a6;
  v60 = v16;
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_1000078E8(v56, qword_1003D28C0);
  v26 = v69;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  v29 = os_log_type_enabled(v27, v28);
  v58 = v11;
  v59 = v10;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v70[0] = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_10028D78C(v67, v26, v70);
    _os_log_impl(&_mh_execute_header, v27, v28, "Finished retranslation with identifier %{public}s, replacing it in the card", v30, 0xCu);
    sub_100008664(v31);
  }

  sub_1000085CC(v68, v68[3]);
  v32 = dispatch thunk of TranslationResult.disambiguableResult.getter();
  if (v32)
  {
    v33 = v32;
    if ([*(v25 + 304) restoreChangesToResult:v32])
    {
      if (qword_1003A9238 != -1)
      {
        swift_once();
      }

      sub_1000078E8(v56, qword_1003D27B8);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Restored user selection changes to disambiguable result after retranslation", v36, 2u);
      }
    }

    if ([v33 hasDisambiguations])
    {
      [v33 hasDisambiguationsOfType:1];
      v54[3] = [v33 hasDisambiguationsOfType:0];
      sub_10000A2CC(0, &qword_1003A9B80);
      v37 = static NSUserDefaults.translationGroupDefaults.getter();
      NSUserDefaults.genderDisambiguationEnabled.getter();

      type metadata accessor for CoreAnalyticsLogger();
      static CoreAnalyticsLogger.shared.getter();
      v38 = v55;
      (*(v55 + 104))(v23, enum case for CoreAnalyticsLogger.CardType.committed(_:), v21);
      dispatch thunk of CoreAnalyticsLogger.didOfferDisambiguation(fromCard:hasGender:hasMeaning:genderDisambiguationSettingEnabled:)();

      (*(v38 + 8))(v23, v21);
    }

    else
    {
    }
  }

  swift_getKeyPath();
  v70[0] = v25;
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = [*(v25 + 72) sourceInput];
  if (!v39)
  {
    v41 = v60;
    (*(v17 + 56))(v15, 1, 1, v60);
    v43 = v66;
LABEL_20:
    v44 = v65;
    (*(v17 + 104))(v65, enum case for SpeechResultOrigin.text(_:), v41);
    if ((*(v17 + 48))(v15, 1, v41) != 1)
    {
      sub_100009EBC(v15, &qword_1003AC718);
    }

    goto LABEL_22;
  }

  v40 = v39;
  dispatch thunk of AnySpeechResult.value.getter();

  sub_1000085CC(v70, v70[3]);
  dispatch thunk of SpeechResult.origin.getter();
  v41 = v60;
  (*(v17 + 56))(v15, 0, 1, v60);
  sub_100008664(v70);
  v42 = (*(v17 + 48))(v15, 1, v41);
  v43 = v66;
  if (v42 == 1)
  {
    goto LABEL_20;
  }

  v44 = v65;
  (*(v17 + 32))(v65, v15, v41);
LABEL_22:

  v45 = [v62 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v17 + 16))(v61, v44, v41);
  StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
  swift_getKeyPath();
  v70[0] = v25;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = *(v25 + 16);
  v47 = v69;
  if (v46 && (, v48 = sub_100050240(v67, v47, v43, v68, v46), , v48))
  {
    sub_1000476D0(v48, 1);

    (*(v58 + 8))(v43, v59);
  }

  else
  {
    v49 = v58;
    if (qword_1003A9278 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v56, qword_1003D2878);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v70[0] = v53;
      *v52 = 136446210;
      *(v52 + 4) = sub_10028D78C(v67, v47, v70);
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to update translation %{public}s in session after retranslating", v52, 0xCu);
      sub_100008664(v53);

      (*(v49 + 8))(v43, v59);
      return (*(v17 + 8))(v44, v60);
    }

    (*(v49 + 8))(v43, v59);
  }

  return (*(v17 + 8))(v44, v41);
}

void sub_10004F36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  v33 = v4;
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v4 + 168);
  if (!v7)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000078E8(v20, qword_1003D2890);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_20;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Can't retranslate after ASR disambiguation because source text is nil", v23, 2u);
    goto LABEL_19;
  }

  v8 = [v7 string];
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String.count.getter();

  if (a3 < 0 || v9 < a4 + a3)
  {

    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000078E8(v24, qword_1003D2890);
    v21 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v25))
    {
      goto LABEL_20;
    }

    v26 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v26 = 136446466;
    v27 = _NSRange.description.getter();
    v29 = sub_10028D78C(v27, v28, &v33);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    v30 = _NSRange.description.getter();
    v32 = sub_10028D78C(v30, v31, &v33);

    *(v26 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v25, "Can't retranslate after ASR disambiguation because replacement range %{public}s is out of bounds of source text range %{public}s", v26, 0x16u);
    swift_arrayDestroy();

LABEL_19:

LABEL_20:

    return;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 stringByReplacingCharactersInRange:a3 withString:{a4, v10}];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000078E8(v15, qword_1003D2890);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136642819;
    *(v18 + 4) = sub_10028D78C(v12, v14, &v33);
    _os_log_impl(&_mh_execute_header, v16, v17, "User selected ASR disambiguation; retranslating with new source text: %{sensitive}s", v18, 0xCu);
    sub_100008664(v19);
  }

  sub_10004D470(v12, v14);
}

uint64_t sub_10004F80C()
{

  sub_100008664(v0 + 24);

  sub_10001ABE4(*(v0 + 96));
  sub_10001ABE4(*(v0 + 112));
  sub_10000A958(*(v0 + 136), *(v0 + 144));

  sub_100009EBC(v0 + 264, &qword_1003BBD20);

  v1 = OBJC_IVAR____TtC17SequoiaTranslator29CommittedTranslationViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10004F904()
{
  sub_10004F80C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CommittedTranslationViewModel()
{
  result = qword_1003ABFE0;
  if (!qword_1003ABFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004F9B0()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10004FAE8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CommittedTranslationViewModel();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

void sub_10004FB48(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100043428(v1);
}

uint64_t sub_10004FB98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004FBD0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

id sub_10004FC40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_10000A37C((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

uint64_t sub_10004FC90@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000A37C(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_10005128C(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_100009EBC(v21, &qword_1003AC7C0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10004FDF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_10000A37C(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_10005128C(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_100009EBC(&v18, &qword_1003AC728);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004FF40(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - v11;
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v27 = &type metadata for TranslateFeatures;
  v28 = sub_100009DF8();
  v26[0] = 5;
  v15 = isFeatureEnabled(_:)();
  sub_100008664(v26);
  if ((v15 & 1) == 0 || (dispatch thunk of PersistedTranslation.showDisambiguation.getter() & 1) == 0)
  {
    goto LABEL_6;
  }

  v16 = a1;
  if (!dispatch thunk of PersistedTranslation.disambiguableResult.getter())
  {

LABEL_6:
    v24 = dispatch thunk of PersistedTranslation.displaySourceText.getter();
    dispatch thunk of PersistedTranslation.displayText.getter();
    v19 = v9;
    v20 = *(v6 + 16);
    v20(v12, v25, v5);
    v20(v19, v14, v5);
    v21 = objc_allocWithZone(type metadata accessor for DisambiguationResultModel());
    v18 = DisambiguationResultModel.init(withStaticSource:staticTarget:sourceLocale:targetLocale:globalAttributeProvider:)();
    goto LABEL_7;
  }

  v24 = v16;
  v17 = *(v6 + 16);
  v17(v12, v25, v5);
  v17(v9, v14, v5);
  objc_allocWithZone(type metadata accessor for DisambiguationResultModel());
  sub_10001AD18(a3);
  v18 = DisambiguationResultModel.init(disambiguableResult:excludedTypes:sourceLocale:targetLocale:globalAttributeProvider:linkAttributeProvider:userSelectionHandler:)();

LABEL_7:
  (*(v6 + 8))(v14, v5);
  return v18;
}

uint64_t sub_100050240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v9 = type metadata accessor for StoredSpeechResult();
  v40[3] = v9;
  v40[4] = sub_10005116C(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult);
  v10 = sub_100050D60(v40);
  (*(*(v9 - 8) + 16))(v10, a3, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v39[0];
  v38 = a5;
  if (v39[0] >> 62)
  {
LABEL_34:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = v11 & 0xC000000000000001;
  v11 += 32;
  while (1)
  {
    if (!v12)
    {

      v23 = 0;
LABEL_30:
      sub_100008664(v40);
      return v23;
    }

    if (__OFSUB__(v12--, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v13)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v12 >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v15 = *(v11 + 8 * v12);
    }

    v16 = v15;
    v17 = [v15 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == a1 && v20 == a2)
    {
      break;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_19;
    }
  }

LABEL_19:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v39[0] & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_23;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v12 >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v25 = *(v39[0] + 8 * v12 + 32);
LABEL_23:
  v26 = v25;

  sub_100031DD8(v40, v39);
  dispatch thunk of PersistedTranslation.speechResult.setter();
  sub_100031DD8(v37, v39);
  dispatch thunk of PersistedTranslation.translationResult.setter();
  sub_1000085CC((v38 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v38 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  dispatch thunk of TranslationStore.save()();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v26;
  v27 = static Published.subscript.modify();
  v29 = v28;
  v30 = *v28;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v29 = v30;
  if (!result || (v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
  {
    result = sub_1000A38E0(v30);
    v30 = result;
    *v29 = result;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v12 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
    *((v30 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20) = v23;

    v27(v39, 0);

    sub_100005AD4(&unk_1003BA780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002D3160;
    v33 = [v23 identifier];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *(inited + 32) = v34;
    *(inited + 40) = v36;
    sub_1002B2E1C(inited);
    swift_setDeallocating();
    sub_1000511F4(inited + 32);
    goto LABEL_30;
  }

LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_1000506AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_10004FDF0(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_10005128C(v41, v39);
  v13 = *a5;
  result = sub_10028DF64(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_10028F114(v19, a4 & 1);
    result = sub_10028DF64(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for Key(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_100290AA0();
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    sub_100008664(v24);
    sub_10005128C(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_10005128C(v39, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_10004FDF0(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_10005128C(v41, v39);
        v30 = *a5;
        result = sub_10028DF64(v12);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_10028F114(v34, 1);
          result = sub_10028DF64(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = result;

          v29 = (v36[7] + 32 * v28);
          sub_100008664(v29);
          sub_10005128C(v39, v29);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_10005128C(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_10004FDF0(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_10000C1D0();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10005098C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v34[3] = a14;
  v34[4] = a15;
  v21 = sub_100050D60(v34);
  (*(*(a14 - 8) + 32))(v21, a3, a14);
  type metadata accessor for CommittedTranslationViewModel();
  v22 = swift_allocObject();
  v23 = v22;
  *(v22 + 16) = 0;
  *(v22 + 152) = 0;
  *(v22 + 160) = 0;
  *(v22 + 80) = 0u;
  *(v22 + 96) = 0u;
  *(v22 + 112) = 0u;
  *(v22 + 128) = 0;
  *(v22 + 162) = 4;
  *(v22 + 176) = 0;
  *(v22 + 184) = 0;
  *(v22 + 168) = 0;
  *(v22 + 191) = 0;
  *(v22 + 200) = 0;
  *(v22 + 208) = 0;
  *(v22 + 216) = 1;
  *(v22 + 224) = 0;
  *(v22 + 232) = 0;
  *(v22 + 240) = 1;
  *(v22 + 241) = 1;
  *(v22 + 243) = 0;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v31 = sub_10011ED3C(_swiftEmptyArrayStorage);
    }

    else
    {
      v31 = &_swiftEmptySetSingleton;
    }

    *(v23 + 248) = v31;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v24 = sub_10011ED3C(_swiftEmptyArrayStorage);
    }

    else
    {
      v24 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v24 = &_swiftEmptySetSingleton;
    *(v22 + 248) = &_swiftEmptySetSingleton;
  }

  *(v23 + 256) = v24;
  *(v23 + 296) = 0;
  *(v23 + 264) = 0u;
  *(v23 + 280) = 0u;
  ObservationRegistrar.init()();
  *(v23 + 72) = a1;
  v25 = a1;

  *(v23 + 16) = a2;
  sub_100031DD8(v34, v23 + 24);
  *(v23 + 64) = a4;
  v26 = *(v23 + 80);

  v27 = a8;

  *(v23 + 80) = a8;

  *(v23 + 136) = a5;
  *(v23 + 144) = a6;
  *(v23 + 152) = a7;
  *(v23 + 304) = [objc_allocWithZone(_LTDisambiguationChangeManager) init];
  sub_1000476D0(v25, 1);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10001AD18(a9);
  sub_10005116C(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_10001ABE4(a9);

  v29 = swift_getKeyPath();
  __chkstk_darwin(v29);
  sub_10001AD18(a11);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_10001ABE4(a11);

  sub_100048238();
  sub_100008664(v34);
  return v23;
}

uint64_t *sub_100050D60(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100050DE4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 112);
  *(v2 + 112) = v1;
  *(v2 + 120) = v3;
  sub_10001AD18(v1);
  return sub_10001ABE4(v4);
}

uint64_t sub_100050E30()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 96);
  *(v2 + 96) = v1;
  *(v2 + 104) = v3;
  sub_10001AD18(v1);
  return sub_10001ABE4(v4);
}

uint64_t sub_100050E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 16);
  v13 = a1;
  v11[1] = a5;
  v12 = a3;
  v10[1] = a7;
  v11[0] = a4;
  v10[0] = a6;
  return v8(&v13, a2, &v12, v11, v10);
}

void sub_100050F10(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000449EC(v1);
}

uint64_t sub_100050F48()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050F80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100050FD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001B16C;

  return sub_10004DC44(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000510CC()
{

  sub_100008664(v0 + 40);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100051124(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100051154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005116C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100051248()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

_OWORD *sub_10005128C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000512B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003BBD20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005139C(uint64_t a1)
{
  v2 = type metadata accessor for GenderTipManager.Registration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000513F8()
{
  *(*(v0 + 16) + 152) = *(v0 + 24);
}

unint64_t sub_100051450()
{
  result = qword_1003B2410;
  if (!qword_1003B2410)
  {
    sub_10000A2CC(255, &qword_1003A9C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2410);
  }

  return result;
}

void sub_1000514CC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100044D0C(v1);
}

void sub_100051640(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10004502C(v1);
}

void sub_100051674(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100043118(v1);
}

void sub_100051724()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 184);
  *(v1 + 184) = v2;
  v4 = v2;
}

uint64_t sub_100051918()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 194);
  *(v1 + 194) = *(v0 + 24);
  return sub_1000458A4(v2);
}

void sub_10005195C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 176);
  *(v1 + 176) = v2;
  v4 = v2;
}

void sub_100051994()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 168);
  *(v1 + 168) = v2;
  v4 = v2;
}

void sub_100051A08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  v4 = v2;
}

void sub_100051A40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

uint64_t sub_100051A78()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_100051ABC()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4 + 1) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v7 + 19, v3 | 7);
}

uint64_t sub_100051BE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100051C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_10004B690(a1, v4, v5, v6);
}

uint64_t sub_100051DEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B23E0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_10001F620(v2, &v13 - v9, &qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100023BD4(v10, a1, &qword_1003AC848);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100051FCC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ComposeTranslationCardView() + 44));
  v6 = *v5;
  if (*(v5 + 16) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10005C8D0();
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_100052140()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003AC998);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100005AD4(&qword_1003AC848);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_100051DEC(&v23 - v14);
  (*(v1 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_10001F620(v15, v6, &qword_1003AC848);
  sub_10001F620(v13, &v6[v16], &qword_1003AC848);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_100009EBC(v13, &qword_1003AC848);
    sub_100009EBC(v15, &qword_1003AC848);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_100009EBC(v6, &qword_1003AC848);
LABEL_9:
      v24 = static VerticalAlignment.top.getter();
      v25 = 0;
      v26 = 1;
      sub_10005DC8C();
      return AnyLayout.init<A>(_:)();
    }

    goto LABEL_6;
  }

  sub_10001F620(v6, v10, &qword_1003AC848);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_100009EBC(v13, &qword_1003AC848);
    sub_100009EBC(v15, &qword_1003AC848);
    (*(v1 + 8))(v10, v0);
LABEL_6:
    sub_100009EBC(v6, &qword_1003AC998);
    goto LABEL_7;
  }

  v18 = &v6[v16];
  v19 = v23;
  (*(v1 + 32))(v23, v18, v0);
  sub_10005E050(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v1 + 8);
  v21(v19, v0);
  sub_100009EBC(v13, &qword_1003AC848);
  sub_100009EBC(v15, &qword_1003AC848);
  v21(v10, v0);
  sub_100009EBC(v6, &qword_1003AC848);
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_7:
  v24 = static HorizontalAlignment.leading.getter();
  v25 = 0;
  v26 = 1;
  sub_10005DC38();
  return AnyLayout.init<A>(_:)();
}

id sub_1000525C8()
{
  type metadata accessor for ComposeTranslationCardView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8)
  {
    v0 = &UIFontTextStyleTitle3;
  }

  else
  {
    v0 = &UIFontTextStyleTitle1;
  }

  v1 = *v0;
  v2 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*v0 compatibleWithTraitCollection:0];
  v3 = objc_opt_self();
  [v2 pointSize];
  v4 = [v3 systemFontOfSize:? weight:?];
  v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:v1];
  v6 = [v5 scaledFontForFont:v4 maximumPointSize:1.79769313e308];

  return v6;
}

uint64_t sub_100052740()
{
  type metadata accessor for ComposeTranslationCardView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (((v1 | (BYTE2(v1) << 16)) & 0xFF0000) != 0x80000)
    {
      sub_100008E34(BYTE1(v1));
      sub_100005AD4(&qword_1003AA740);
      static Binding.constant(_:)();

      return v1;
    }
  }

  type metadata accessor for ComposeTranslationViewModel(0);
  sub_10005E050(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  return v1;
}

id sub_100052908()
{
  type metadata accessor for ComposeTranslationCardView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v2 << 16 != 0x80000)
    {
      sub_10005CEB0();
      return static UIColor.quaternarySourceTextColor.getter();
    }
  }

  v0 = [objc_opt_self() labelColor];

  return v0;
}

id sub_100052A40()
{
  type metadata accessor for ComposeTranslationCardView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (((v9 | (BYTE2(v9) << 16)) & 0xFF0000) == 0x80000)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v9;
  }

  else
  {
    sub_100008E34(BYTE1(v9));
    sub_100005AD4(&unk_1003BBD30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002D3160;
    *(inited + 32) = NSForegroundColorAttributeName;
    v2 = sub_10005CEB0();
    v3 = NSForegroundColorAttributeName;
    v4 = static UIColor.quaternaryTranslateAccentColor.getter();
    *(inited + 64) = v2;
    *(inited + 40) = v4;
    sub_100292588(inited);
    swift_setDeallocating();
    sub_100009EBC(inited + 32, &qword_1003B3490);
    v5 = objc_allocWithZone(NSAttributedString);
    v6 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10005E050(&qword_1003A98E0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = [v5 initWithString:v6 attributes:isa];

    return v8;
  }
}

uint64_t sub_100052C80@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for ComposeTranslationCardView();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  v4 = v2 - 8;
  v41 = v2 - 8;
  v50 = v3;
  __chkstk_darwin(v2 - 8);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005AD4(&qword_1003AC8D8);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v48 = sub_100005AD4(&qword_1003AC8E0);
  __chkstk_darwin(v48);
  v10 = &v39 - v9;
  v11 = sub_100005AD4(&qword_1003AC8E8);
  v12 = *(v11 - 8);
  v45 = v11;
  v46 = v12;
  __chkstk_darwin(v11);
  v49 = &v39 - v13;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0x3FF0000000000000;
  v8[16] = 0;
  v14 = sub_100005AD4(&qword_1003AC8F0);
  sub_1000533E8(v1, &v8[*(v14 + 44)]);
  v43 = *(v1 + *(v4 + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8[*(v6 + 36)] = v51;
  v15 = v1 + *(v4 + 48);
  v16 = *v15;
  v17 = *(v15 + 8);
  v55 = v16;
  v56 = v17;
  sub_100005AD4(&qword_1003AC8F8);
  State.projectedValue.getter();
  type metadata accessor for GenderDisambiguationLearnMoreView();
  sub_10005C7B0();
  sub_10005E050(&qword_1003AC918, &type metadata accessor for GenderDisambiguationLearnMoreView);
  View.formSheet<A>(isPresented:content:)();

  sub_100009EBC(v8, &qword_1003AC8D8);
  v18 = v1;
  v19 = v42;
  sub_10005C868(v1, v42);
  v20 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v21 = swift_allocObject();
  sub_10005CBBC(v19, v21 + v20, type metadata accessor for ComposeTranslationCardView);
  v22 = &v10[*(v48 + 36)];
  *v22 = sub_10005C8DC;
  v22[1] = v21;
  v22[2] = 0;
  v22[3] = 0;
  v23 = v18 + *(v41 + 44);
  v40 = v18;
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v23) = *(v23 + 16);
  LOBYTE(v51) = v24;
  v52 = v25;
  LOBYTE(v53) = v23;
  sub_100005AD4(&qword_1003AC920);
  FocusState.wrappedValue.getter();
  LOBYTE(v51) = v55;
  sub_10005C868(v18, v19);
  v26 = swift_allocObject();
  sub_10005CBBC(v19, v26 + v20, type metadata accessor for ComposeTranslationCardView);
  v27 = sub_10005C90C();
  View.onChange<A>(of:initial:_:)();

  sub_100009EBC(v10, &qword_1003AC8E0);
  v28 = *(v43 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
  swift_getKeyPath();
  v51 = v28;
  sub_10005E050(&qword_1003AC930, type metadata accessor for CardMetrics);

  v29 = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v30 = v47;

  LOBYTE(v21) = *(v28 + 24);

  v55 = v21;
  sub_10005C868(v29, v19);
  v31 = swift_allocObject();
  sub_10005CBBC(v19, v31 + v20, type metadata accessor for ComposeTranslationCardView);
  v51 = v48;
  v52 = &type metadata for Bool;
  v53 = v27;
  v54 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v32 = v45;
  v33 = v49;
  View.onChange<A>(of:initial:_:)();

  (*(v46 + 8))(v33, v32);
  v34 = [objc_opt_self() defaultCenter];
  if (qword_1003A9358 != -1)
  {
    swift_once();
  }

  v35 = sub_100005AD4(&qword_1003AC938);
  NSNotificationCenter.publisher(for:object:)();

  sub_10005C868(v29, v19);
  v36 = swift_allocObject();
  result = sub_10005CBBC(v19, v36 + v20, type metadata accessor for ComposeTranslationCardView);
  v38 = (v30 + *(v35 + 56));
  *v38 = sub_10005CAD8;
  v38[1] = v36;
  return result;
}

uint64_t sub_1000533E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v47 = sub_100005AD4(&qword_1003AC940);
  __chkstk_darwin(v47);
  v4 = (&v46 - v3);
  v5 = sub_100005AD4(&qword_1003AC948);
  __chkstk_darwin(v5 - 8);
  v7 = &v46 - v6;
  v46 = sub_100005AD4(&qword_1003AC950);
  __chkstk_darwin(v46);
  v9 = &v46 - v8;
  v48 = sub_100005AD4(&qword_1003AC958);
  __chkstk_darwin(v48);
  v11 = &v46 - v10;
  v49 = sub_100005AD4(&qword_1003AC960);
  __chkstk_darwin(v49);
  v13 = &v46 - v12;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v14 = sub_100005AD4(&qword_1003AC968);
  sub_10005394C(a1, &v7[*(v14 + 44)]);
  v15 = *(*(a1 + *(type metadata accessor for ComposeTranslationCardView() + 28) + 8) + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
  swift_getKeyPath();
  v51 = v15;
  sub_10005E050(&qword_1003AC930, type metadata accessor for CardMetrics);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + 16);

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v51 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_10001F620(v7, v4 + *(v47 + 36), &qword_1003AC948);
  *v4 = v16;
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = static Animation.linear.getter();
  }

  sub_100009EBC(v7, &qword_1003AC948);
  sub_100023BD4(v4, v9, &qword_1003AC940);
  v19 = &v9[*(v46 + 36)];
  *v19 = v18;
  v19[1] = v16;
  v20 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_100023BD4(v9, v11, &qword_1003AC950);
  v29 = &v11[*(v48 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v31 = Color.init(uiColor:)();
  v32 = static Edge.Set.all.getter();
  sub_100023BD4(v11, v13, &qword_1003AC958);
  v33 = &v13[*(v49 + 36)];
  *v33 = v31;
  v33[8] = v32;
  v34 = sub_100005AD4(&qword_1003AC970);
  v35 = v50;
  v36 = (v50 + *(v34 + 36));
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #10.0 }

  *v36 = _Q0;
  *&v36[*(sub_100005AD4(&qword_1003AC978) + 36)] = 256;
  return sub_100023BD4(v13, v35, &qword_1003AC960);
}

uint64_t sub_10005394C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005AD4(&qword_1003AC980);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (v22 - v9);
  *v10 = sub_100052140();
  sub_100053B38(a1, v10 + *(v5 + 52));
  type metadata accessor for ComposeTranslationCardView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v22[1];
  LOBYTE(v5) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10001F620(v10, v8, &qword_1003AC980);
  sub_10001F620(v8, a2, &qword_1003AC980);
  v20 = a2 + *(sub_100005AD4(&qword_1003AC988) + 48);
  *v20 = v11;
  *(v20 + 8) = v5;
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  *(v20 + 48) = 0;

  sub_100009EBC(v10, &qword_1003AC980);

  return sub_100009EBC(v8, &qword_1003AC980);
}

uint64_t sub_100053B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = sub_100005AD4(&qword_1003AC990);
  v4 = __chkstk_darwin(v3 - 8);
  v132 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v130 = (&v100 - v6);
  v122 = type metadata accessor for UUID();
  v121 = *(v122 - 8);
  v7 = __chkstk_darwin(v122);
  v120 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v119 = &v100 - v9;
  v10 = type metadata accessor for ComposeTranslationCardView();
  v116 = *(v10 - 8);
  __chkstk_darwin(v10);
  v117 = v11;
  v118 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UserInterfaceSizeClass();
  v137 = *(v12 - 8);
  __chkstk_darwin(v12);
  v103 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_100005AD4(&qword_1003AC998);
  v14 = __chkstk_darwin(v136);
  v126 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v100 - v16;
  v18 = sub_100005AD4(&qword_1003AC848);
  v19 = __chkstk_darwin(v18 - 8);
  v102 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v134 = &v100 - v22;
  v23 = __chkstk_darwin(v21);
  v135 = &v100 - v24;
  v25 = __chkstk_darwin(v23);
  v112 = &v100 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v100 - v28;
  __chkstk_darwin(v27);
  v31 = &v100 - v30;
  v114 = type metadata accessor for LanguageFlipperBindingView(0);
  __chkstk_darwin(v114);
  v33 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100005AD4(&qword_1003AC9A0);
  __chkstk_darwin(v115);
  v133 = &v100 - v34;
  v124 = sub_100005AD4(&qword_1003AC9A8);
  v35 = __chkstk_darwin(v124);
  v129 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v123 = &v100 - v38;
  __chkstk_darwin(v37);
  v127 = &v100 - v39;
  v40 = sub_100005AD4(&qword_1003AC9B0);
  v41 = __chkstk_darwin(v40 - 8);
  v128 = &v100 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v100 - v43;
  *v44 = static HorizontalAlignment.leading.getter();
  *(v44 + 1) = 0x4008000000000000;
  v44[16] = 0;
  v45 = *(sub_100005AD4(&qword_1003AC9B8) + 44);
  v125 = v44;
  sub_100054BC4(a1, &v44[v45]);
  type metadata accessor for ComposeTranslationViewModel(0);
  sub_10005E050(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel);
  v46 = v31;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v106 = v142;
  v105 = v143;
  v104 = v144;
  v138 = a1;
  sub_100051DEC(v31);
  v47 = v137;
  v48 = *(v137 + 104);
  v111 = enum case for UserInterfaceSizeClass.compact(_:);
  v110 = v137 + 104;
  v109 = v48;
  v48(v29);
  v49 = *(v47 + 56);
  v108 = v47 + 56;
  v107 = v49;
  v49(v29, 0, 1, v12);
  v50 = *(v136 + 48);
  sub_10001F620(v46, v17, &qword_1003AC848);
  sub_10001F620(v29, &v17[v50], &qword_1003AC848);
  v51 = *(v47 + 48);
  v52 = v51(v17, 1, v12);
  v113 = v51;
  if (v52 == 1)
  {
    sub_100009EBC(v29, &qword_1003AC848);
    sub_100009EBC(v46, &qword_1003AC848);
    if (v51(&v17[v50], 1, v12) == 1)
    {
      sub_100009EBC(v17, &qword_1003AC848);
      v53 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10001F620(v17, v112, &qword_1003AC848);
  if (v51(&v17[v50], 1, v12) == 1)
  {
    sub_100009EBC(v29, &qword_1003AC848);
    sub_100009EBC(v46, &qword_1003AC848);
    (*(v137 + 8))(v112, v12);
LABEL_6:
    sub_100009EBC(v17, &qword_1003AC998);
    v53 = 0;
    goto LABEL_8;
  }

  v54 = v137;
  v55 = *(v137 + 32);
  v101 = v46;
  v56 = v103;
  v55(v103, &v17[v50], v12);
  sub_10005E050(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
  v57 = v112;
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v54 + 8);
  v58(v56, v12);
  sub_100009EBC(v29, &qword_1003AC848);
  sub_100009EBC(v101, &qword_1003AC848);
  v58(v57, v12);
  sub_100009EBC(v17, &qword_1003AC848);
LABEL_8:
  v59 = v118;
  sub_10005C868(v138, v118);
  v60 = (*(v116 + 80) + 16) & ~*(v116 + 80);
  v61 = swift_allocObject();
  sub_10005CBBC(v59, v61 + v60, type metadata accessor for ComposeTranslationCardView);
  v62 = v105;
  *v33 = v106;
  *(v33 + 1) = v62;
  v33[16] = v104;
  v33[17] = v53 & 1;
  *(v33 + 9) = 256;
  *(v33 + 3) = sub_10005CB40;
  *(v33 + 4) = v61;
  v63 = v114;
  v64 = v119;
  UUID.init()();
  v65 = v121;
  v66 = v122;
  (*(v121 + 16))(v120, v64, v122);
  State.init(wrappedValue:)();
  (*(v65 + 8))(v64, v66);
  v67 = &v33[*(v63 + 40)];
  v139 = 0;
  State.init(wrappedValue:)();
  v68 = v141;
  *v67 = v140;
  *(v67 + 1) = v68;
  v69 = v133;
  sub_10005CBBC(v33, v133, type metadata accessor for LanguageFlipperBindingView);
  *(v69 + *(v115 + 36)) = 0x3FB999999999999ALL;
  LODWORD(v122) = static Edge.Set.horizontal.getter();
  v70 = v135;
  sub_100051DEC(v135);
  v71 = v134;
  v109(v134, v111, v12);
  v107(v71, 0, 1, v12);
  v72 = *(v136 + 48);
  v73 = v126;
  sub_10001F620(v70, v126, &qword_1003AC848);
  sub_10001F620(v71, v73 + v72, &qword_1003AC848);
  v74 = v113;
  if (v113(v73, 1, v12) != 1)
  {
    v75 = v102;
    sub_10001F620(v73, v102, &qword_1003AC848);
    if (v74(v73 + v72, 1, v12) != 1)
    {
      v76 = v137;
      v77 = v103;
      (*(v137 + 32))(v103, v73 + v72, v12);
      sub_10005E050(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v78 = *(v76 + 8);
      v78(v77, v12);
      sub_100009EBC(v134, &qword_1003AC848);
      sub_100009EBC(v135, &qword_1003AC848);
      v78(v75, v12);
      v69 = v133;
      sub_100009EBC(v73, &qword_1003AC848);
      goto LABEL_15;
    }

    sub_100009EBC(v134, &qword_1003AC848);
    sub_100009EBC(v135, &qword_1003AC848);
    (*(v137 + 8))(v75, v12);
    goto LABEL_13;
  }

  sub_100009EBC(v71, &qword_1003AC848);
  sub_100009EBC(v70, &qword_1003AC848);
  if (v74(v73 + v72, 1, v12) != 1)
  {
LABEL_13:
    sub_100009EBC(v73, &qword_1003AC998);
    goto LABEL_15;
  }

  sub_100009EBC(v73, &qword_1003AC848);
LABEL_15:
  EdgeInsets.init(_all:)();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v87 = v123;
  sub_100023BD4(v69, v123, &qword_1003AC9A0);
  v88 = v87 + *(v124 + 36);
  *v88 = v122;
  *(v88 + 8) = v80;
  *(v88 + 16) = v82;
  *(v88 + 24) = v84;
  *(v88 + 32) = v86;
  *(v88 + 40) = 0;
  v89 = v127;
  sub_100023BD4(v87, v127, &qword_1003AC9A8);
  v90 = static HorizontalAlignment.leading.getter();
  v91 = v130;
  *v130 = v90;
  *(v91 + 8) = 0x4008000000000000;
  *(v91 + 16) = 0;
  v92 = sub_100005AD4(&qword_1003AC9C0);
  sub_100057104(v138, v91 + *(v92 + 44));
  v93 = v125;
  v94 = v128;
  sub_10001F620(v125, v128, &qword_1003AC9B0);
  v95 = v129;
  sub_10001F620(v89, v129, &qword_1003AC9A8);
  v96 = v132;
  sub_10001F620(v91, v132, &qword_1003AC990);
  v97 = v131;
  sub_10001F620(v94, v131, &qword_1003AC9B0);
  v98 = sub_100005AD4(&qword_1003AC9C8);
  sub_10001F620(v95, v97 + *(v98 + 48), &qword_1003AC9A8);
  sub_10001F620(v96, v97 + *(v98 + 64), &qword_1003AC990);
  sub_100009EBC(v91, &qword_1003AC990);
  sub_100009EBC(v89, &qword_1003AC9A8);
  sub_100009EBC(v93, &qword_1003AC9B0);
  sub_100009EBC(v96, &qword_1003AC990);
  sub_100009EBC(v95, &qword_1003AC9A8);
  return sub_100009EBC(v94, &qword_1003AC9B0);
}

uint64_t sub_100054BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v83 = a2;
  v3 = type metadata accessor for ErrorStateView();
  v81 = *(v3 - 8);
  v82 = v3;
  __chkstk_darwin(v3);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for UserInterfaceSizeClass();
  v73 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100005AD4(&qword_1003AC998) - 8;
  __chkstk_darwin(v74);
  v71 = &v66 - v6;
  v7 = sub_100005AD4(&qword_1003AC848);
  v8 = __chkstk_darwin(v7 - 8);
  v76 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v72 = &v66 - v11;
  __chkstk_darwin(v10);
  v85 = &v66 - v12;
  v13 = sub_100005AD4(&qword_1003ACA08);
  v14 = __chkstk_darwin(v13 - 8);
  v80 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v66 - v16;
  v17 = sub_100005AD4(&qword_1003ACAE8);
  v18 = __chkstk_darwin(v17 - 8);
  v79 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v66 - v20;
  v22 = type metadata accessor for Locale();
  __chkstk_darwin(v22 - 8);
  v23 = sub_100005AD4(&qword_1003ABBA0);
  __chkstk_darwin(v23 - 8);
  v75 = sub_100005AD4(&qword_1003ACAF0);
  __chkstk_darwin(v75);
  v25 = &v66 - v24;
  v26 = sub_100005AD4(&qword_1003ACAF8);
  v27 = __chkstk_darwin(v26 - 8);
  v78 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v66 - v29;
  v31 = *(a1 + *(type metadata accessor for ComposeTranslationCardView() + 28) + 8);
  type metadata accessor for ComposeTranslationViewModel(0);
  sub_10005E050(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v32 = v70;

  swift_getKeyPath();
  swift_getKeyPath();
  v68 = v31;
  static Published.subscript.getter();

  v33 = v69;

  LanguagesService.models.getter();
  LanguagePicker.init(selectedLocale:preferredLocales:oppositeLocale:languageModels:disabledLanguages:)();
  v34 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v36 = &v25[*(v75 + 9)];
  *v36 = KeyPath;
  v36[1] = v34;
  sub_10005D478();
  v77 = v30;
  v37 = v71;
  v38 = v85;
  View.accessibilityIdentifier(_:)();
  sub_100009EBC(v25, &qword_1003ACAF0);
  *v21 = static VerticalAlignment.top.getter();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v39 = *(sub_100005AD4(&qword_1003ACB08) + 44);
  v75 = v21;
  v40 = &v21[v39];
  v41 = v73;
  sub_100055708(v33, v40);
  sub_100051DEC(v38);
  v42 = v72;
  (*(v41 + 104))(v72, enum case for UserInterfaceSizeClass.compact(_:), v32);
  (*(v41 + 56))(v42, 0, 1, v32);
  v43 = *(v74 + 56);
  sub_10001F620(v38, v37, &qword_1003AC848);
  sub_10001F620(v42, v37 + v43, &qword_1003AC848);
  v44 = *(v41 + 48);
  if (v44(v37, 1, v32) == 1)
  {
    sub_100009EBC(v42, &qword_1003AC848);
    sub_100009EBC(v38, &qword_1003AC848);
    if (v44(v37 + v43, 1, v32) == 1)
    {
      sub_100009EBC(v37, &qword_1003AC848);
LABEL_10:
      v50 = 1;
      v46 = v81;
      v49 = v82;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_10001F620(v37, v76, &qword_1003AC848);
  if (v44(v37 + v43, 1, v32) == 1)
  {
    sub_100009EBC(v42, &qword_1003AC848);
    sub_100009EBC(v85, &qword_1003AC848);
    (*(v41 + 8))(v76, v32);
LABEL_6:
    sub_100009EBC(v37, &qword_1003AC998);
    goto LABEL_7;
  }

  v51 = v37 + v43;
  v52 = v66;
  (*(v41 + 32))(v66, v51, v32);
  sub_10005E050(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
  v53 = v76;
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  v55 = *(v41 + 8);
  v55(v52, v32);
  sub_100009EBC(v42, &qword_1003AC848);
  sub_100009EBC(v85, &qword_1003AC848);
  v55(v53, v32);
  sub_100009EBC(v37, &qword_1003AC848);
  if (v54)
  {
    goto LABEL_10;
  }

LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v86 == 3)
  {
    goto LABEL_10;
  }

  v45 = v67;
  sub_100056DF0(v86, v67);
  v46 = v81;
  v47 = v45;
  v48 = v82;
  (*(v81 + 32))(v84, v47, v82);
  v49 = v48;
  v50 = 0;
LABEL_11:
  v56 = v84;
  (*(v46 + 56))(v84, v50, 1, v49);
  v58 = v77;
  v57 = v78;
  sub_10001F620(v77, v78, &qword_1003ACAF8);
  v59 = v75;
  v60 = v79;
  sub_10001F620(v75, v79, &qword_1003ACAE8);
  v61 = v80;
  sub_10001F620(v56, v80, &qword_1003ACA08);
  v62 = v83;
  sub_10001F620(v57, v83, &qword_1003ACAF8);
  v63 = sub_100005AD4(&qword_1003ACB10);
  sub_10001F620(v60, v62 + v63[12], &qword_1003ACAE8);
  v64 = v62 + v63[16];
  *v64 = 0x3F847AE147AE147BLL;
  *(v64 + 8) = 0;
  sub_10001F620(v61, v62 + v63[20], &qword_1003ACA08);
  sub_100009EBC(v56, &qword_1003ACA08);
  sub_100009EBC(v59, &qword_1003ACAE8);
  sub_100009EBC(v58, &qword_1003ACAF8);
  sub_100009EBC(v61, &qword_1003ACA08);
  sub_100009EBC(v60, &qword_1003ACAE8);
  return sub_100009EBC(v57, &qword_1003ACAF8);
}

uint64_t sub_100055708@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v123 = a2;
  v3 = type metadata accessor for Locale.Language();
  v121 = *(v3 - 8);
  v122 = v3;
  __chkstk_darwin(v3);
  v120 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v116 = *(v5 - 8);
  v117 = v5;
  __chkstk_darwin(v5);
  v112 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LayoutDirection();
  v114 = *(v7 - 8);
  v115 = v7;
  __chkstk_darwin(v7);
  v113 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ComposeTranslationCardView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = v9 - 8;
  v127 = v9 - 8;
  __chkstk_darwin(v9 - 8);
  v13 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LanguageAwareEditor(0);
  __chkstk_darwin(v14);
  v16 = (&v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_100005AD4(&qword_1003ACB18);
  v106 = *(v17 - 8);
  KeyPath = v17;
  __chkstk_darwin(v17);
  v104 = &v93 - v18;
  v105 = sub_100005AD4(&qword_1003ACB20) - 8;
  __chkstk_darwin(v105);
  v124 = &v93 - v19;
  v109 = sub_100005AD4(&qword_1003ACB28);
  __chkstk_darwin(v109);
  v108 = &v93 - v20;
  v111 = sub_100005AD4(&qword_1003ACB30);
  __chkstk_darwin(v111);
  v110 = &v93 - v21;
  v22 = sub_100005AD4(&qword_1003ACB38);
  v118 = *(v22 - 8);
  v119 = v22;
  v23 = __chkstk_darwin(v22);
  v128 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v126 = &v93 - v25;
  v26 = sub_100052740();
  v101 = v27;
  v102 = v26;
  v99 = v29;
  v100 = v28;
  v125 = *(a1 + *(v12 + 36) + 8);
  v30 = sub_1000601DC();
  v97 = v31;
  v98 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v96 = sub_100052908();
  v95 = [objc_opt_self() quaternaryLabelColor];
  v94 = sub_1000525C8();
  sub_10005C868(a1, v13);
  v32 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v93 = swift_allocObject();
  sub_10005CBBC(v13, v93 + v32, type metadata accessor for ComposeTranslationCardView);
  sub_10005C868(a1, v13);
  v33 = swift_allocObject();
  sub_10005CBBC(v13, v33 + v32, type metadata accessor for ComposeTranslationCardView);
  v103 = a1;
  sub_10005C868(a1, v13);
  v34 = swift_allocObject();
  sub_10005CBBC(v13, v34 + v32, type metadata accessor for ComposeTranslationCardView);
  type metadata accessor for LanguageAwareTextViewSizeThatFitsCache();
  v35 = swift_allocObject();
  v35[2] = sub_1002926E8(_swiftEmptyArrayStorage);
  v35[3] = _swiftEmptyArrayStorage;
  v35[4] = 100;
  v36 = v101;
  *v16 = v102;
  v16[1] = v36;
  v37 = v99;
  v16[2] = v100;
  v16[3] = v37;
  v38 = v97;
  v16[4] = v98;
  v16[5] = v38;
  v39 = v95;
  *(v16 + v14[7]) = v96;
  *(v16 + v14[8]) = v39;
  *(v16 + v14[9]) = v94;
  *(v16 + v14[10]) = 4;
  *(v16 + v14[11]) = 1;
  *(v16 + v14[12]) = 0;
  *(v16 + v14[13]) = 1;
  v40 = (v16 + v14[14]);
  v41 = v93;
  *v40 = sub_10005D560;
  v40[1] = v41;
  v42 = (v16 + v14[15]);
  *v42 = sub_10005CE04;
  v42[1] = v33;
  v43 = (v16 + v14[16]);
  *v43 = sub_10005D578;
  v43[1] = v34;
  v44 = (v16 + v14[17]);
  *v44 = 0;
  v44[1] = 0;
  *(v16 + v14[18]) = 205;
  *(v16 + v14[19]) = v35;
  v45 = a1 + *(v127 + 44);
  LOBYTE(v41) = *v45;
  v46 = *(v45 + 8);
  LOBYTE(v45) = *(v45 + 16);
  LOBYTE(v158) = v41;
  *(&v158 + 1) = v46;
  LOBYTE(v159) = v45;
  sub_100005AD4(&qword_1003AC920);
  FocusState.projectedValue.getter();
  sub_10005E050(&qword_1003ACB40, type metadata accessor for LanguageAwareEditor);
  v47 = v104;
  View.focused(_:)();

  sub_10005D614(v16);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v48 = v124;
  (*(v106 + 32))(v124, v47, KeyPath);
  v49 = (v48 + *(v105 + 44));
  v50 = v180;
  v49[4] = v179;
  v49[5] = v50;
  v49[6] = v181;
  v51 = v176;
  *v49 = v175;
  v49[1] = v51;
  v52 = v178;
  v49[2] = v177;
  v49[3] = v52;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v112;
  static Published.subscript.getter();

  LOBYTE(v48) = Locale.isRTL()();
  v54 = v117;
  v116 = *(v116 + 8);
  (v116)(v53, v117);
  v56 = v113;
  v55 = v114;
  v57 = &enum case for LayoutDirection.rightToLeft(_:);
  if ((v48 & 1) == 0)
  {
    v57 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v58 = v115;
  (*(v114 + 104))(v113, *v57, v115);
  v59 = v108;
  v60 = &v108[*(v109 + 36)];
  v61 = sub_100005AD4(&qword_1003AA938);
  (*(v55 + 32))(v60 + *(v61 + 28), v56, v58);
  *v60 = KeyPath;
  sub_100023BD4(v124, v59, &qword_1003ACB20);
  sub_10005D670(&qword_1003ACB48, &qword_1003ACB28, &unk_1002D6FF8, sub_10005D720);
  v62 = v110;
  View.accessibilityIdentifier(_:)();
  sub_100009EBC(v59, &qword_1003ACB28);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v63 = v120;
  Locale.language.getter();
  (v116)(v53, v54);
  sub_10005D80C();
  v64 = v126;
  View.typesettingLanguage(_:isEnabled:)();
  (*(v121 + 8))(v63, v122);
  sub_100009EBC(v62, &qword_1003ACB30);
  v65 = static Alignment.center.getter();
  v67 = v66;
  sub_10005666C(v103, &v158);
  v133 = v162;
  v134 = v163;
  v135 = v164;
  v136 = v165;
  v129 = v158;
  v130 = v159;
  v131 = v160;
  v132 = v161;
  v137[0] = v158;
  v137[1] = v159;
  v137[2] = v160;
  v137[3] = v161;
  v137[4] = v162;
  v137[5] = v163;
  v137[6] = v164;
  v138 = v165;
  sub_10001F620(&v129, v149, &qword_1003ACB60);
  sub_100009EBC(v137, &qword_1003ACB60);
  v143 = v133;
  v144 = v134;
  v145 = v135;
  v146 = v136;
  v139 = v129;
  v140 = v130;
  v141 = v131;
  v142 = v132;
  LOBYTE(v62) = static Edge.Set.top.getter();
  sub_100005AD4(&qword_1003AC7D8);
  ScaledMetric.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  LOBYTE(v158) = 0;
  v77 = v118;
  v76 = v119;
  v78 = *(v118 + 16);
  v79 = v128;
  v78(v128, v64, v119);
  v80 = v123;
  v78(v123, v79, v76);
  v81 = &v80[*(sub_100005AD4(&qword_1003ACB68) + 48)];
  *&v149[0] = v65;
  *(&v149[0] + 1) = v67;
  v151 = v143;
  v152 = v144;
  v153 = v145;
  LOBYTE(v154) = v146;
  v149[3] = v141;
  v150 = v142;
  v149[1] = v139;
  v149[2] = v140;
  DWORD1(v154) = *&v148[3];
  *(&v154 + 1) = *v148;
  BYTE8(v154) = v62;
  *(&v154 + 9) = *v147;
  HIDWORD(v154) = *&v147[3];
  *&v155 = v69;
  *(&v155 + 1) = v71;
  *&v156 = v73;
  *(&v156 + 1) = v75;
  v157 = 0;
  v82 = v149[0];
  v83 = v139;
  v84 = v141;
  *(v81 + 2) = v140;
  *(v81 + 3) = v84;
  *v81 = v82;
  *(v81 + 1) = v83;
  v85 = v150;
  v86 = v151;
  v87 = v153;
  *(v81 + 6) = v152;
  *(v81 + 7) = v87;
  *(v81 + 4) = v85;
  *(v81 + 5) = v86;
  v88 = v154;
  v89 = v155;
  v90 = v156;
  v81[176] = 0;
  *(v81 + 9) = v89;
  *(v81 + 10) = v90;
  *(v81 + 8) = v88;
  sub_10001F620(v149, &v158, &qword_1003ACB70);
  v91 = *(v77 + 8);
  v91(v126, v76);
  *&v158 = v65;
  *(&v158 + 1) = v67;
  v163 = v143;
  v164 = v144;
  v165 = v145;
  v166 = v146;
  v159 = v139;
  v160 = v140;
  v161 = v141;
  v162 = v142;
  *&v167[3] = *&v148[3];
  *v167 = *v148;
  v168 = v62;
  *&v169[3] = *&v147[3];
  *v169 = *v147;
  v170 = v69;
  v171 = v71;
  v172 = v73;
  v173 = v75;
  v174 = 0;
  sub_100009EBC(&v158, &qword_1003ACB70);
  return (v91)(v128, v76);
}

id sub_1000564D8(void *a1)
{
  result = [a1 text];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    type metadata accessor for ComposeTranslationCardView();
    sub_100064410(v3, v5);
  }

  return result;
}