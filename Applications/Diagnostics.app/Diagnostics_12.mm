void sub_100145EA4(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_100064B74(v11), (v6 & 1) != 0))
    {
      sub_10003E010(*(v4 + 56) + 32 * v5, v12);
      sub_10003DB48(v11);

      sub_10003E110(0, &unk_100201860);
      if (swift_dynamicCast())
      {
        if (([v10 changedProperties] & 0x20) != 0)
        {
          v7 = [v10 snapshot];
          v8 = [v7 history];

          sub_10003E110(0, &qword_1001FDEB8);
          v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          *(a2 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries) = v9;

          sub_100146DD0();
        }
      }
    }

    else
    {

      sub_10003DB48(v11);
    }
  }
}

void sub_100146034()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView]];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView]];
}

void sub_1001460E8()
{
  sub_10003C49C(&unk_1001FD020);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100180E60;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView];
  v3 = [v2 topAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v1 + 32) = v7;
  v8 = [v2 bottomAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 bottomAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v1 + 40) = v12;
  v13 = [v2 leadingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v1 + 48) = v17;
  v18 = [v2 trailingAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v1 + 56) = v22;
  v23 = *&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView];
  v24 = [v23 topAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v1 + 64) = v28;
  v29 = [v23 bottomAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v29 constraintEqualToAnchor:v32];
  *(v1 + 72) = v33;
  v34 = [v23 leadingAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v34 constraintEqualToAnchor:v37];
  *(v1 + 80) = v38;
  v39 = [v23 trailingAnchor];
  v40 = [v0 view];
  if (!v40)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v41 = v40;
  v42 = objc_opt_self();
  v43 = [v41 trailingAnchor];

  v44 = [v39 constraintEqualToAnchor:v43];
  *(v1 + 88) = v44;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];
}

id sub_1001465C0(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for HistoryTableViewController();
  result = objc_msgSendSuper2(&v8, "viewWillDisappear:", a1 & 1);
  v4 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_deviceStateChangedObserver;
  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_deviceStateChangedObserver];
  if (v5)
  {
    v6 = objc_opt_self();
    swift_unknownObjectRetain();
    v7 = [v6 defaultCenter];
    [v7 removeObserver:v5];

    swift_unknownObjectRelease();
    *&v1[v4] = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001466E4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 dequeueReusableCellWithIdentifier:v8];

  if (v9)
  {
    type metadata accessor for HistoryTableViewCell();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries;
      v13 = *(v1 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries);
      v14 = v13 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (IndexPath.row.getter() < v14)
      {
        v15 = *(v1 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntriesRendered);
        v16 = v15 - 1;
        if (__OFSUB__(v15, 1))
        {
          __break(1u);
        }

        else
        {
          v17 = IndexPath.row.getter();
          v18 = __OFSUB__(v16, v17);
          v19 = v16 - v17;
          if (!v18)
          {
            v20 = *(v1 + v12);
            v57 = v5;
            if ((v20 & 0xC000000000000001) == 0)
            {
              if ((v19 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v19 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v21 = *(v20 + 8 * v19 + 32);
                goto LABEL_12;
              }

              __break(1u);
              goto LABEL_30;
            }

LABEL_27:

            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_12:
            v22 = OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel;
            v23 = *(v2 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView);
            v24 = *&v11[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel];
            [v23 bounds];
            v26 = v25;
            v27 = v9;
            [v11 separatorInset];
            [v24 setPreferredMaxLayoutWidth:v26 - (v28 + v28)];

            v29 = *&v11[v22];
            if ([v21 skipped])
            {
              sub_10003C49C(&unk_1001FEAD0);
              v30 = swift_allocObject();
              *(v30 + 16) = xmmword_10017EC00;
              v31 = [v21 testSuiteName];
              v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v34 = v33;

              *(v30 + 56) = &type metadata for String;
              *(v30 + 64) = sub_10003DFBC();
              *(v30 + 32) = v32;
              *(v30 + 40) = v34;
              v35 = 0x5F44455050494B53;
              v36 = 0xED00004554495553;
              v37 = v30;
            }

            else
            {
              v39 = [v21 testSuiteName];
              v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v42 = v41;

              v37 = _swiftEmptyArrayStorage;
              v35 = v40;
              v36 = v42;
            }

            sub_1000494C8(0, 0, v37, v35, v36);

            v43 = String._bridgeToObjectiveC()();

            [v29 setText:v43];

            v44 = *&v11[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel];
            v45 = objc_opt_self();
            v46 = v44;
            v47 = [v45 sharedFormatter];
            if (v47)
            {
              v48 = v47;
              v49 = [v47 formatterWithType:6];

              if (v49)
              {
                v50 = [v21 date];
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                (*(v57 + 8))(v7, v4);
                v52 = [v49 stringFromDate:isa];

                if (!v52)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v52 = String._bridgeToObjectiveC()();
                }

                [v46 setText:v52];

                v53 = objc_opt_self();
                v54 = v27;
                v55 = [v53 clearColor];
                [v11 setBackgroundColor:v55];

                [v11 setSelectionStyle:0];
                return;
              }

LABEL_31:
              __break(1u);
              return;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }
  }

  v38 = objc_allocWithZone(UITableViewCell);

  [v38 init];
}

id sub_100146DD0()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntriesRendered;
  v8 = *(v1 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntriesRendered);
  v9 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries;
  v10 = *(v1 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries);
  if (v10 >> 62)
  {
LABEL_33:
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = *(v1 + v7);
  v13 = *(v9 + v1);
  v14 = v13 >> 62;
  if (v8 >= v11)
  {
    if (!v14)
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= v12)
      {
        return result;
      }

      goto LABEL_19;
    }

LABEL_37:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= v12)
    {
      return result;
    }

LABEL_19:
    v21 = *(v9 + v1);
    if (!(v21 >> 62))
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v1 + v7) = v22;
      if (!v22)
      {
        goto LABEL_21;
      }

      return [*(v1 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView) reloadData];
    }

LABEL_41:
    v43 = _CocoaArrayWrapper.endIndex.getter();
    *(v1 + v7) = v43;
    if (!v43)
    {
LABEL_21:
      v23 = *(v1 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView);
      [v23 alpha];
      if (v4 == 0.0)
      {
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        v25 = objc_opt_self();
        v50 = sub_10003D8B8;
        v51 = v24;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_100031FA8;
        v49 = &unk_1001C9120;
        v26 = _Block_copy(&aBlock);
        v27 = v23;

        [v25 animateWithDuration:0x10000 delay:v26 options:0 animations:0.375 completion:0.0];
        _Block_release(v26);
      }
    }

    return [*(v1 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView) reloadData];
  }

  if (!v14)
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 - 1;
    if (!__OFSUB__(v15, 1))
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_6:
  if (v16 < v12)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v44 = v1;
  v45 = v7;
  v7 = 0;
  v17 = v12 - v15 + 1;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    IndexPath.init(row:section:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1000D5328(0, v9[2] + 1, 1, v9);
    }

    v8 = v9[2];
    v18 = v9[3];
    if (v8 >= v18 >> 1)
    {
      v9 = sub_1000D5328(v18 > 1, v8 + 1, 1, v9);
    }

    v9[2] = v8 + 1;
    (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v6, v2);
    v1 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (!(v17 + v7))
    {
      break;
    }

    v19 = v12 + v7++;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_32;
    }
  }

  v28 = v44;
  v29 = *&v44[v45];
  v30 = __OFADD__(v29, v1);
  v31 = v29 + v1;
  if (v30)
  {
    goto LABEL_40;
  }

  *&v44[v45] = v31;
  v32 = *&v28[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v32 insertRowsAtIndexPaths:isa withRowAnimation:4];

  if (v1 < 1)
  {
  }

  v34 = *&v28[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView];
  [v34 alpha];
  v36 = v35;

  if (v36 > 0.0)
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x59524F54534948, 0xE700000000000000);
    v37 = String._bridgeToObjectiveC()();

    [v28 setTitle:v37];

    result = [v34 alpha];
    if (v38 == 1.0)
    {
      v39 = swift_allocObject();
      *(v39 + 16) = v34;
      v40 = objc_opt_self();
      v50 = sub_100044298;
      v51 = v39;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_100031FA8;
      v49 = &unk_1001C9170;
      v41 = _Block_copy(&aBlock);
      v42 = v34;

      [v40 animateWithDuration:0x20000 delay:v41 options:0 animations:0.125 completion:0.0];
      _Block_release(v41);
    }
  }

  return result;
}

void sub_10014739C()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView);
}

id sub_10014740C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001474E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100147520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100147538(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_cellRowEstimatedHeight] = 0x404E000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_deviceStateChangedObserver] = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView;
  *&v1[v3] = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  result = [objc_allocWithZone(_UIContentUnavailableView) initWithFrame:0 title:0 style:{0.0, 0.0, 0.0, 0.0}];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView] = result;
    *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_state] = a1;
    v5 = *(a1 + 40);

    v6 = [v5 history];
    sub_10003E110(0, &qword_1001FDEB8);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries] = v7;
    v8 = [v5 history];
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntriesRendered] = v10;
    v11.receiver = v1;
    v11.super_class = type metadata accessor for HistoryTableViewController();
    return objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001476FC()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_cellRowEstimatedHeight) = 0x404E000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_deviceStateChangedObserver) = 0;
  v1 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView;
  *(v0 + v1) = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  v2 = [objc_allocWithZone(_UIContentUnavailableView) initWithFrame:0 title:0 style:{0.0, 0.0, 0.0, 0.0}];
  if (!v2)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10014780C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100147854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1001478CC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static VerticalAlignment.center.getter();
  LOBYTE(v67[0]) = 0;
  sub_100147C88(v2, &v32);
  v61 = v44;
  v62 = v45;
  v63 = v46;
  v57 = v40;
  v58 = v41;
  v59 = v42;
  v60 = v43;
  v53 = v36;
  v54 = v37;
  v55 = v38;
  v56 = v39;
  v49 = v32;
  v50 = v33;
  v51 = v34;
  v52 = v35;
  v65[12] = v44;
  v65[13] = v45;
  v65[14] = v46;
  v65[8] = v40;
  v65[9] = v41;
  v65[10] = v42;
  v65[11] = v43;
  v65[4] = v36;
  v65[5] = v37;
  v65[6] = v38;
  v65[7] = v39;
  v65[0] = v32;
  v65[1] = v33;
  v64 = v47;
  v66 = v47;
  v65[2] = v34;
  v65[3] = v35;
  sub_100044704(&v49, v31, &qword_100202720);
  sub_10003DD84(v65, &qword_100202720);
  *&v48[199] = v61;
  *&v48[215] = v62;
  *&v48[231] = v63;
  *&v48[135] = v57;
  *&v48[151] = v58;
  *&v48[167] = v59;
  *&v48[183] = v60;
  *&v48[71] = v53;
  *&v48[87] = v54;
  *&v48[103] = v55;
  *&v48[119] = v56;
  *&v48[7] = v49;
  *&v48[23] = v50;
  *&v48[39] = v51;
  v48[247] = v64;
  *&v48[55] = v52;
  v5 = v67[0];
  v6 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v32) = 0;
  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  v16 = Color.init(_:)();
  v17 = static Edge.Set.all.getter();
  v18 = v2[4];
  v19 = (a1 + *(sub_10003C49C(&qword_100202728) + 36));
  v20 = *(type metadata accessor for RoundedRectangle() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = v18;
  *(v19 + 1) = v18;
  *&v19[*(sub_10003C49C(&qword_100200048) + 36)] = 256;
  v23 = *&v48[208];
  *(a1 + 209) = *&v48[192];
  *(a1 + 225) = v23;
  *(a1 + 241) = *&v48[224];
  v24 = *&v48[144];
  *(a1 + 145) = *&v48[128];
  *(a1 + 161) = v24;
  v25 = *&v48[176];
  *(a1 + 177) = *&v48[160];
  *(a1 + 193) = v25;
  v26 = *&v48[80];
  *(a1 + 81) = *&v48[64];
  *(a1 + 97) = v26;
  v27 = *&v48[112];
  *(a1 + 113) = *&v48[96];
  *(a1 + 129) = v27;
  v28 = *&v48[16];
  *(a1 + 17) = *v48;
  *(a1 + 33) = v28;
  result = *&v48[32];
  v30 = *&v48[48];
  *(a1 + 49) = *&v48[32];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 257) = *&v48[240];
  *(a1 + 65) = v30;
  *(a1 + 265) = v32;
  *(a1 + 268) = *(&v32 + 3);
  *(a1 + 272) = v6;
  *(a1 + 273) = v31[0];
  *(a1 + 276) = *(v31 + 3);
  *(a1 + 280) = v8;
  *(a1 + 288) = v10;
  *(a1 + 296) = v12;
  *(a1 + 304) = v14;
  *(a1 + 312) = 0;
  *(a1 + 313) = v67[0];
  *(a1 + 316) = *(v67 + 3);
  *(a1 + 320) = v16;
  *(a1 + 328) = v17;
  return result;
}

uint64_t sub_100147C88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  if (v4)
  {
    v48 = v4;
    sub_1000B7164(v48, &v96);
    v5 = v98;
    v6 = BYTE2(v98);
    v46 = v97;
    v47 = v96;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v129) = v6;
    *&v62[5] = v126;
    *&v62[21] = v127;
    *&v62[37] = v128;
    v7 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v96) = 0;
    v63[1] = v46;
    v63[0] = v47;
    *v64 = v5;
    v64[2] = v6;
    *&v64[3] = *v62;
    *&v64[19] = *&v62[16];
    *&v64[35] = *&v62[32];
    *&v64[48] = *&v62[45];
    v64[56] = v7;
    *&v65 = v8;
    *(&v65 + 1) = v9;
    *&v66 = v10;
    *(&v66 + 1) = v11;
    v67 = 0;
    v12 = a1[7];
    *&v96 = a1[6];
    *(&v96 + 1) = v12;
    sub_100079A64();

    v13 = Text.init<A>(_:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v96) = v17 & 1;
    LOBYTE(v129) = 0;
    *&v68 = v13;
    *(&v68 + 1) = v15;
    LOBYTE(v69) = v17 & 1;
    *(&v69 + 1) = v19;
    LOBYTE(v70) = v20;
    *(&v70 + 1) = v21;
    *&v71 = v22;
    *(&v71 + 1) = v23;
    *v72 = v24;
    v72[8] = 0;
    *&v72[16] = swift_getKeyPath();
    v72[24] = 0;
    v60 = v65;
    v61 = v66;
    v56 = *v64;
    v57 = *&v64[16];
    v58 = *&v64[32];
    v59 = *&v64[48];
    v77[2] = v70;
    v77[3] = v71;
    v78[0] = *v72;
    *(v78 + 9) = *&v72[9];
    v77[0] = v68;
    v77[1] = v69;
    v73[6] = v65;
    v73[7] = v66;
    v74 = 0;
    v73[2] = *v64;
    v73[3] = *&v64[16];
    v73[4] = *&v64[32];
    v73[5] = *&v64[48];
    v73[0] = v47;
    v73[1] = v46;
    v53 = v65;
    v54 = v66;
    v55[0] = 0;
    v49 = *v64;
    v50 = *&v64[16];
    v51 = *&v64[32];
    v52 = *&v64[48];
    v75[2] = v70;
    v75[3] = v71;
    v76[0] = *v72;
    *(v76 + 9) = *&v72[9];
    v75[0] = v68;
    v75[1] = v69;
    *&v55[40] = v70;
    *&v55[56] = v71;
    *&v55[81] = *&v72[9];
    *&v55[72] = *v72;
    *&v55[8] = v68;
    *&v55[24] = v69;
    v93 = *&v55[64];
    v94 = *&v55[80];
    LOBYTE(v95) = 0;
    v89 = *v55;
    v90 = *&v55[16];
    v92 = *&v55[48];
    v91 = *&v55[32];
    v85 = *&v64[32];
    v86 = *&v64[48];
    v88 = v66;
    v87 = v65;
    v81 = v47;
    v82 = v46;
    v84 = *&v64[16];
    v83 = *v64;
    sub_100044704(v63, &v96, &qword_100200058);
    sub_100044704(&v68, &v96, &qword_100202738);
    sub_100044704(v73, &v96, &qword_100200058);
    sub_100044704(v75, &v96, &qword_100202738);
    sub_10003DD84(v77, &qword_100202738);
    v79[6] = v60;
    v79[7] = v61;
    v80 = 0;
    v79[2] = v56;
    v79[3] = v57;
    v79[5] = v59;
    v79[4] = v58;
    v79[1] = v46;
    v79[0] = v47;
    sub_10003DD84(v79, &qword_100200058);
    v108 = *&v55[64];
    v109 = *&v55[80];
    LOBYTE(v110) = v55[96];
    v104 = *v55;
    v105 = *&v55[16];
    v107 = *&v55[48];
    v106 = *&v55[32];
    v100 = v51;
    v101 = v52;
    v103 = v54;
    v102 = v53;
    v96 = v47;
    v97 = v46;
    v99 = v50;
    v98 = v49;
    sub_1001497CC(&v96);
    v141 = v108;
    v142 = v109;
    v143 = v110;
    v137 = v104;
    v138 = v105;
    v140 = v107;
    v139 = v106;
    v133 = v100;
    v134 = v101;
    v136 = v103;
    v135 = v102;
    v129 = v96;
    v130 = v97;
    v132 = v99;
    v131 = v98;
    sub_100044704(&v81, &v111, &qword_100202768);
    sub_10003C49C(&qword_100202730);
    sub_10003C49C(&qword_100202738);
    sub_10005C71C(&qword_100202740, &qword_100202730);
    sub_100149690();
    _ConditionalContent<>.init(storage:)();

    sub_10003DD84(&v81, &qword_100202768);
    sub_10003DD84(&v68, &qword_100202738);
    sub_10003DD84(v63, &qword_100200058);
    v141 = v123;
    v142 = v124;
    v143 = v125;
    v137 = v119;
    v138 = v120;
    v140 = v122;
    v139 = v121;
    v133 = v115;
    v134 = v116;
    v136 = v118;
    v135 = v117;
    v129 = v111;
    v130 = v112;
    v132 = v114;
    v131 = v113;
  }

  else
  {
    sub_100079A64();

    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v129) = 0;
    *&v96 = v25;
    *(&v96 + 1) = v27;
    LOBYTE(v97) = v29 & 1;
    *(&v97 + 1) = v31;
    LOBYTE(v98) = v32;
    *(&v98 + 1) = v33;
    *&v99 = v34;
    *(&v99 + 1) = v35;
    *&v100 = v36;
    BYTE8(v100) = 0;
    *&v101 = swift_getKeyPath();
    BYTE8(v101) = 0;
    sub_100149684(&v96);
    v123 = v108;
    v124 = v109;
    v125 = v110;
    v119 = v104;
    v120 = v105;
    v122 = v107;
    v121 = v106;
    v115 = v100;
    v116 = v101;
    v118 = v103;
    v117 = v102;
    v111 = v96;
    v112 = v97;
    v114 = v99;
    v113 = v98;
    sub_10003C49C(&qword_100202730);
    sub_10003C49C(&qword_100202738);
    sub_10005C71C(&qword_100202740, &qword_100202730);
    sub_100149690();
    _ConditionalContent<>.init(storage:)();
  }

  v123 = v141;
  v124 = v142;
  v119 = v137;
  v120 = v138;
  v122 = v140;
  v121 = v139;
  v115 = v133;
  v116 = v134;
  v118 = v136;
  v117 = v135;
  v111 = v129;
  v112 = v130;
  v114 = v132;
  v113 = v131;
  v93 = v141;
  v94 = v142;
  v89 = v137;
  v90 = v138;
  v92 = v140;
  v91 = v139;
  v85 = v133;
  v86 = v134;
  v88 = v136;
  v87 = v135;
  v81 = v129;
  v82 = v130;
  v84 = v132;
  v83 = v131;
  v108 = v141;
  v109 = v142;
  v104 = v137;
  v105 = v138;
  v107 = v140;
  v106 = v139;
  v100 = v133;
  v101 = v134;
  v103 = v136;
  v102 = v135;
  v96 = v129;
  v97 = v130;
  v125 = v143;
  v95 = v143;
  LOWORD(v110) = v143;
  v99 = v132;
  v98 = v131;
  LOBYTE(v73[0]) = 1;
  v37 = v142;
  *(a2 + 192) = v141;
  *(a2 + 208) = v37;
  v38 = v110;
  v39 = v105;
  *(a2 + 128) = v104;
  *(a2 + 144) = v39;
  v40 = v107;
  *(a2 + 160) = v106;
  *(a2 + 176) = v40;
  v41 = v101;
  *(a2 + 64) = v100;
  *(a2 + 80) = v41;
  v42 = v103;
  *(a2 + 96) = v102;
  *(a2 + 112) = v42;
  v43 = v97;
  *a2 = v96;
  *(a2 + 16) = v43;
  v44 = v99;
  *(a2 + 32) = v98;
  *(a2 + 48) = v44;
  *(a2 + 224) = v38;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  sub_100044704(&v81, v79, &qword_100202760);
  return sub_10003DD84(&v111, &qword_100202760);
}

void *sub_1001486AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static HorizontalAlignment.leading.getter();
  v19 = 1;
  sub_1001487CC(v2, __src);
  memcpy(__dst, __src, 0x1D1uLL);
  memcpy(v21, __src, 0x1D1uLL);
  sub_100044704(__dst, v16, &qword_1002026E0);
  sub_10003DD84(v21, &qword_1002026E0);
  memcpy(&v18[7], __dst, 0x1D1uLL);
  v5 = v19;
  v6 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  result = memcpy((a1 + 17), v18, 0x1D8uLL);
  *(a1 + 496) = v6;
  *(a1 + 504) = v8;
  *(a1 + 512) = v10;
  *(a1 + 520) = v12;
  *(a1 + 528) = v14;
  *(a1 + 536) = 0;
  return result;
}

uint64_t sub_1001487CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v98 = *(a1 + 32);

  v97 = static Font.title.getter();
  v96 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  LOBYTE(v174) = 0;
  v11 = *(a1 + 48);
  v12 = [v11 result];
  __asm { FMOV            V0.2D, #20.0 }

  v99 = _Q0;
  if (v12)
  {
    v18 = v12;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v20;
    v91 = v19;

    v21 = [v11 name];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *&v174 = v22;
    *(&v174 + 1) = v24;
    sub_100079A64();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    LOBYTE(v24) = v28;
    static Font.title3.getter();
    v29 = Text.font(_:)();
    v93 = v11;
    v31 = v30;
    v33 = v32;

    sub_10007C874(v25, v27, v24 & 1);

    static Font.Weight.semibold.getter();
    v34 = Text.fontWeight(_:)();
    v87 = v35;
    v88 = v34;
    LOBYTE(v27) = v36;
    v38 = v37;
    sub_10007C874(v29, v31, v33 & 1);

    v39 = [v93 status];
    LOBYTE(v24) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    LOBYTE(v174) = 0;
    v48 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v27) = v27 & 1;
    LOBYTE(v133) = v27;
    v106 = xmmword_100185F80;
    v107 = v99;
    DWORD1(v110) = *&v100[3];
    *(&v110 + 1) = *v100;
    HIDWORD(v112) = *&v102[3];
    *(&v112 + 9) = *v102;
    DWORD1(v113) = *&v101[3];
    *(&v113 + 1) = *v101;
    *&v108 = 0x403A000000000000;
    *(&v108 + 1) = v39;
    *&v109 = v91;
    *(&v109 + 1) = v89;
    LOBYTE(v110) = v24;
    *(&v110 + 1) = v41;
    *&v111 = v43;
    *(&v111 + 1) = v45;
    *&v112 = v47;
    BYTE8(v112) = 0;
    LOBYTE(v113) = v48;
    *(&v113 + 1) = v49;
    *v114 = v50;
    *&v114[8] = v51;
    *&v114[16] = v52;
    v114[24] = 0;
    v144 = v99;
    v143 = xmmword_100185F80;
    v148 = v111;
    v147 = v110;
    v146 = v109;
    v145 = v108;
    *&v151[9] = *&v114[9];
    *v151 = *v114;
    v150 = v113;
    v149 = v112;
    *&v156 = 0x403A000000000000;
    *(&v156 + 1) = v39;
    v154 = xmmword_100185F80;
    v155 = v99;
    *&v157 = v91;
    *(&v157 + 1) = v89;
    LOBYTE(v158) = v24;
    *(&v158 + 1) = *v100;
    DWORD1(v158) = *&v100[3];
    *(&v158 + 1) = v41;
    *&v159 = v43;
    *(&v159 + 1) = v45;
    *&v160 = v47;
    BYTE8(v160) = 0;
    HIDWORD(v160) = *&v102[3];
    *(&v160 + 9) = *v102;
    LOBYTE(v161) = v48;
    DWORD1(v161) = *&v101[3];
    *(&v161 + 1) = *v101;
    *(&v161 + 1) = v49;
    *&v162 = v50;
    *(&v162 + 1) = v51;
    *&v163 = v52;
    BYTE8(v163) = 0;
    sub_10007C884(v88, v87, v27);

    sub_100044704(&v106, &v174, &qword_1002026F8);
    sub_10003DD84(&v154, &qword_1002026F8);
    sub_10007C874(v88, v87, v27);

    *&v174 = v88;
    *(&v174 + 1) = v87;
    LOBYTE(v175) = v27;
    v11 = v93;
    *(&v175 + 1) = v38;
    v182 = v149;
    v183 = v150;
    *v184 = *v151;
    *&v184[9] = *&v151[9];
    v178 = v145;
    v179 = v146;
    v180 = v147;
    v181 = v148;
    v176 = v143;
    v177 = v144;
    Int.id.getter(&v174);
    v193 = v182;
    v194 = v183;
    *v195 = *v184;
    *&v195[9] = *&v184[9];
    v189 = v178;
    v190 = v179;
    v191 = v180;
    v192 = v181;
    v185 = v174;
    v186 = v175;
    v187 = v176;
    v188 = v177;
  }

  else
  {
    sub_1001494B4(&v185);
  }

  v53 = [v11 testDescription];
  if (v53)
  {
    v54 = v53;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v56;
    v92 = v55;

    *&v174 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x48545F54554F4241, 0xEF545345545F5349);
    *(&v174 + 1) = v57;
    sub_100079A64();
    v58 = Text.init<A>(_:)();
    v60 = v59;
    v62 = v61;
    static Font.title3.getter();
    v63 = Text.font(_:)();
    v65 = v64;
    v67 = v66;

    sub_10007C874(v58, v60, v62 & 1);

    static Font.Weight.semibold.getter();
    v68 = Text.fontWeight(_:)();
    v70 = v69;
    LOBYTE(v60) = v71;
    v94 = v72;
    sub_10007C874(v63, v65, v67 & 1);

    LOBYTE(v58) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    LOBYTE(v174) = 0;
    v81 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v60) = v60 & 1;
    LOBYTE(v117) = v60;
    v133 = xmmword_100185F80;
    v134 = v99;
    v135 = 0x403A000000000000uLL;
    *&v136 = v92;
    *(&v136 + 1) = v90;
    LOBYTE(v137) = v58;
    DWORD1(v137) = *&v103[3];
    *(&v137 + 1) = *v103;
    *(&v137 + 1) = v74;
    *&v138 = v76;
    *(&v138 + 1) = v78;
    *&v139 = v80;
    BYTE8(v139) = 0;
    HIDWORD(v139) = *&v105[3];
    *(&v139 + 9) = *v105;
    LOBYTE(v140) = v81;
    DWORD1(v140) = *&v104[3];
    *(&v140 + 1) = *v104;
    *(&v140 + 1) = v82;
    *v141 = v83;
    *&v141[8] = v84;
    *&v141[16] = v85;
    v141[24] = 0;
    v106 = xmmword_100185F80;
    v107 = v99;
    v110 = v137;
    v111 = v138;
    v108 = 0x403A000000000000uLL;
    v109 = v136;
    *&v114[9] = *&v141[9];
    v113 = v140;
    *v114 = *v141;
    v112 = v139;
    LOBYTE(v165) = 1;
    *&v146 = v92;
    *(&v146 + 1) = v90;
    v143 = xmmword_100185F80;
    v144 = v99;
    v145 = 0x403A000000000000uLL;
    LOBYTE(v147) = v58;
    *(&v147 + 1) = *v103;
    DWORD1(v147) = *&v103[3];
    *(&v147 + 1) = v74;
    *&v148 = v76;
    *(&v148 + 1) = v78;
    *&v149 = v80;
    BYTE8(v149) = 0;
    HIDWORD(v149) = *&v105[3];
    *(&v149 + 9) = *v105;
    LOBYTE(v150) = v81;
    DWORD1(v150) = *&v104[3];
    *(&v150 + 1) = *v104;
    *(&v150 + 1) = v82;
    *v151 = v83;
    *&v151[8] = v84;
    *&v151[16] = v85;
    v151[24] = 0;
    sub_10007C884(v68, v70, v60);

    sub_100044704(&v133, &v174, &qword_1002026F8);
    sub_10003DD84(&v143, &qword_1002026F8);
    sub_10007C874(v68, v70, v60);

    *&v154 = v68;
    *(&v154 + 1) = v70;
    LOBYTE(v155) = v60;
    *(&v155 + 1) = v94;
    v162 = v112;
    v163 = v113;
    *v164 = *v114;
    *&v164[9] = *&v114[9];
    v158 = v108;
    v159 = v109;
    v160 = v110;
    v161 = v111;
    v156 = v106;
    v157 = v107;
    *&v164[32] = 0;
    v164[40] = 1;
    Int.id.getter(&v154);
    *v184 = *v164;
    *&v184[16] = *&v164[16];
    *&v184[25] = *&v164[25];
    v180 = v160;
    v181 = v161;
    v183 = v163;
    v182 = v162;
    v176 = v156;
    v177 = v157;
    v179 = v159;
    v178 = v158;
    v175 = v155;
    v174 = v154;
  }

  else
  {
    sub_1001494D8(&v174);
  }

  v125 = v193;
  v126 = v194;
  v127[0] = *v195;
  *(v127 + 9) = *&v195[9];
  v121 = v189;
  v122 = v190;
  v123 = v191;
  v124 = v192;
  v117 = v185;
  v118 = v186;
  v119 = v187;
  v120 = v188;
  *v164 = *v184;
  *&v164[16] = *&v184[16];
  *&v164[25] = *&v184[25];
  v160 = v180;
  v161 = v181;
  v163 = v183;
  v162 = v182;
  v156 = v176;
  v157 = v177;
  v159 = v179;
  v158 = v178;
  v155 = v175;
  v154 = v174;
  v128 = v98;
  *&v129 = v97;
  BYTE8(v129) = v96;
  *(&v129 + 9) = v196[0];
  HIDWORD(v129) = *(v196 + 3);
  *&v130 = v4;
  *(&v130 + 1) = v6;
  *&v131 = v8;
  *(&v131 + 1) = v10;
  __src[2] = v130;
  __src[3] = v131;
  __src[0] = v98;
  __src[1] = v129;
  v136 = v188;
  v135 = v187;
  v134 = v186;
  v133 = v185;
  v140 = v192;
  v139 = v191;
  v138 = v190;
  v137 = v189;
  *(v142 + 9) = *&v195[9];
  v142[0] = *v195;
  *&v141[16] = v194;
  *v141 = v193;
  *(&__src[12] + 8) = v193;
  *(&__src[13] + 8) = v194;
  *(&__src[14] + 8) = *v195;
  *(&__src[15] + 1) = *&v195[9];
  *(&__src[8] + 8) = v189;
  *(&__src[9] + 8) = v190;
  *(&__src[10] + 8) = v191;
  *(&__src[11] + 8) = v192;
  *(&__src[4] + 8) = v185;
  *(&__src[5] + 8) = v186;
  *(&__src[6] + 8) = v187;
  *(&__src[7] + 8) = v188;
  v152 = *v184;
  v153[0] = *&v184[16];
  *(v153 + 9) = *&v184[25];
  v149 = v180;
  v150 = v181;
  *&v151[16] = v183;
  *v151 = v182;
  v145 = v176;
  v146 = v177;
  v148 = v179;
  v147 = v178;
  v144 = v175;
  v143 = v174;
  *(&__src[26] + 8) = *v184;
  *(&__src[27] + 8) = *&v184[16];
  *(&__src[28] + 1) = *&v184[25];
  *(&__src[22] + 8) = v180;
  *(&__src[23] + 8) = v181;
  *(&__src[24] + 8) = v182;
  *(&__src[25] + 8) = v183;
  *(&__src[18] + 8) = v176;
  *(&__src[19] + 8) = v177;
  v132 = 0;
  LOBYTE(__src[4]) = 0;
  *(&__src[20] + 8) = v178;
  *(&__src[21] + 8) = v179;
  *(&__src[16] + 8) = v174;
  *(&__src[17] + 8) = v175;
  memcpy(a2, __src, 0x1D1uLL);
  sub_100044704(&v128, &v106, &qword_1001FF288);
  sub_100044704(&v133, &v106, &qword_1002026E8);
  sub_100044704(&v143, &v106, &qword_1002026F0);
  sub_10003DD84(&v154, &qword_1002026F0);
  *v114 = v125;
  *&v114[16] = v126;
  v115[0] = v127[0];
  *(v115 + 9) = *(v127 + 9);
  v110 = v121;
  v111 = v122;
  v112 = v123;
  v113 = v124;
  v106 = v117;
  v107 = v118;
  v108 = v119;
  v109 = v120;
  sub_10003DD84(&v106, &qword_1002026E8);
  v165 = v98;
  v166 = v97;
  v167 = v96;
  *v168 = v196[0];
  *&v168[3] = *(v196 + 3);
  v169 = v4;
  v170 = v6;
  v171 = v8;
  v172 = v10;
  v173 = 0;
  return sub_10003DD84(&v165, &qword_1001FF288);
}

double sub_1001494B4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1001494D8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1001494FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100149544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001495A8()
{
  result = qword_100202700;
  if (!qword_100202700)
  {
    sub_10003C4E4(&qword_100202708);
    sub_10005C71C(&qword_100202710, &qword_100202718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202700);
  }

  return result;
}

unint64_t sub_100149690()
{
  result = qword_100202748;
  if (!qword_100202748)
  {
    sub_10003C4E4(&qword_100202738);
    sub_100149748();
    sub_10005C71C(&qword_1001FE908, &qword_1001FE910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202748);
  }

  return result;
}

unint64_t sub_100149748()
{
  result = qword_100202750;
  if (!qword_100202750)
  {
    sub_10003C4E4(&qword_100202758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202750);
  }

  return result;
}

unint64_t sub_1001497D8()
{
  result = qword_100202770;
  if (!qword_100202770)
  {
    sub_10003C4E4(&qword_100202728);
    sub_100149890();
    sub_10005C71C(&qword_1002000B0, &qword_100200048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202770);
  }

  return result;
}

unint64_t sub_100149890()
{
  result = qword_100202778;
  if (!qword_100202778)
  {
    sub_10003C4E4(&qword_100202780);
    sub_100149948();
    sub_10005C71C(&qword_1002000A0, &qword_1002000A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202778);
  }

  return result;
}

unint64_t sub_100149948()
{
  result = qword_100202788;
  if (!qword_100202788)
  {
    sub_10003C4E4(&qword_100202790);
    sub_10005C71C(&qword_100202798, &qword_1002027A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202788);
  }

  return result;
}

void sub_100149A00(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_text);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label);
  if (v3[1])
  {
    String.uppercased()();
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];
}

id sub_100149AA8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10003C49C(&qword_1001FD070);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for UIButton.Configuration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  *&v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_textSize] = 0x4028000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonTextSize] = 0x402E000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonWidthHeight] = 0x4036000000000000;
  v20 = _UISolariumEnabled();
  v21 = 8.0;
  if (v20)
  {
    v21 = 23.0;
  }

  *&v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_horizontalSpacing] = v21;
  v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_showsButton] = 0;
  v22 = &v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_text];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label;
  *&v5[v24] = [objc_allocWithZone(UILabel) init];
  v25 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightMedium];
  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v25;
  v26 = v25;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v27 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v27 - 8) + 56))(v12, 0, 1, v27);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  sub_10003E110(0, &qword_1001FD078);
  (*(v14 + 16))(v16, v19, v13);
  *&v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button] = UIButton.init(configuration:primaryAction:)();
  v28 = type metadata accessor for DashboardSectionHeaderView();
  v31.receiver = v5;
  v31.super_class = v28;
  v29 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  (*(v14 + 8))(v19, v13);
  return v29;
}

id sub_100149E1C(void *a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&qword_1001FD070);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  *&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_textSize] = 0x4028000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonTextSize] = 0x402E000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonWidthHeight] = 0x4036000000000000;
  v14 = _UISolariumEnabled();
  v15 = 8.0;
  if (v14)
  {
    v15 = 23.0;
  }

  *&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_horizontalSpacing] = v15;
  v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_showsButton] = 0;
  v16 = &v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_text];
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label;
  *&v2[v18] = [objc_allocWithZone(UILabel) init];
  v19 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightMedium];
  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v19;
  v20 = v19;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v21 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  sub_10003E110(0, &qword_1001FD078);
  (*(v8 + 16))(v10, v13, v7);
  *&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button] = UIButton.init(configuration:primaryAction:)();
  v22 = type metadata accessor for DashboardSectionHeaderView();
  v25.receiver = v2;
  v25.super_class = v22;
  v23 = objc_msgSendSuper2(&v25, "initWithCoder:", a1);

  (*(v8 + 8))(v13, v7);
  return v23;
}

id sub_10014A178()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FD3A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = *&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label];
  v9 = objc_opt_self();
  v10 = [v9 grayColor];
  [v8 setTextColor:v10];

  v11 = [objc_opt_self() defaultMetrics];
  v12 = [objc_opt_self() systemFontOfSize:12.0];
  v13 = [v11 scaledFontForFont:v12];

  [v8 setFont:v13];
  [v8 setAlpha:0.0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button;
  v15 = *&v1[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button];
  v16 = String._bridgeToObjectiveC()();
  [v15 setTitle:v16 forState:0];

  v17 = *&v1[v14];
  v18 = [v9 clearColor];
  [v17 setBackgroundColor:v18];

  v19 = *&v1[v14];
  UIButton.configuration.getter();
  v20 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v20 - 8) + 48))(v7, 1, v20))
  {
    sub_10014B014(v7, v4);
    UIButton.configuration.setter();

    sub_10014B084(v7);
  }

  else
  {
    UIButton.Configuration.contentInsets.setter();
    UIButton.configuration.setter();
  }

  [*&v1[v14] setAlpha:0.0];
  v21 = [*&v1[v14] layer];
  [v21 setBorderWidth:1.25];

  v22 = [*&v1[v14] layer];
  result = [v1 tintColor];
  if (result)
  {
    v24 = result;
    v25 = [result CGColor];

    [v22 setBorderColor:v25];
    [*&v1[v14] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v1[v14] addTarget:v1 action:"buttonPressedWithSender:" forControlEvents:64];
    [*&v1[v14] addTarget:v1 action:"buttonDownWithSender:" forControlEvents:1];
    [*&v1[v14] addTarget:v1 action:"buttonDownWithSender:" forControlEvents:16];
    [*&v1[v14] addTarget:v1 action:"buttonUpWithSender:" forControlEvents:32];
    return [*&v1[v14] addTarget:v1 action:"buttonUpWithSender:" forControlEvents:256];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10014A5B4()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button];

  return [v0 addSubview:v1];
}

void sub_10014A610()
{
  v27 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100180E60;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = [v2 bottomAnchor];
  v7 = [v0 bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-9.0];

  *(v1 + 40) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v0 leadingAnchor];
  sub_1000A4A08();
  v11 = [v9 constraintEqualToAnchor:v10 constant:?];

  *(v1 + 48) = v11;
  v12 = [v2 trailingAnchor];
  v13 = OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button;
  v14 = [*&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button] leadingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:*&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_horizontalSpacing]];

  *(v1 + 56) = v15;
  v16 = [*&v0[v13] trailingAnchor];
  v17 = [v0 trailingAnchor];
  sub_1000A4A08();
  v19 = [v16 constraintEqualToAnchor:v17 constant:-v18];

  *(v1 + 64) = v19;
  v20 = [*&v0[v13] centerYAnchor];
  v21 = [v2 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v1 + 72) = v22;
  v23 = [*&v0[v13] widthAnchor];
  v24 = [v23 constraintEqualToConstant:22.0];

  *(v1 + 80) = v24;
  v25 = [*&v0[v13] heightAnchor];
  v26 = [v25 constraintEqualToConstant:22.0];

  *(v1 + 88) = v26;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];
}

void sub_10014ACAC(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() animationWithKeyPath:v3];

  v5 = OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button;
  v6 = [*(v1 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button) layer];
  v7 = [v6 borderColor];

  [v4 setFromValue:v7];
  [v4 setToValue:a1];
  [v4 setDuration:0.333];
  v8 = [*(v1 + v5) layer];
  [v8 setBorderColor:a1];

  v9 = [*(v1 + v5) layer];
  v10 = String._bridgeToObjectiveC()();
  [v9 addAnimation:v4 forKey:v10];
}

id sub_10014AE60(uint64_t a1)
{
  result = [*(a1 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label) setAlpha:1.0];
  if (*(a1 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_showsButton) == 1)
  {
    v3 = *(a1 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button);

    return [v3 setAlpha:1.0];
  }

  return result;
}

void sub_10014AEE0()
{
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction));

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button);
}

id sub_10014AF48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardSectionHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10014B014(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FD3A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014B084(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FD3A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10014B0EC()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction];
  if (v1)
  {

    v1(v2);
    sub_10003C52C(v1);
  }

  v3 = [v0 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 CGColor];

    sub_10014ACAC(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10014B1B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10014B1F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014B208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014B260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

Swift::Int sub_10014B2C0(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_1001862A0[a2]);
  }

  return Hasher._finalize()();
}

void sub_10014B338()
{
  v1 = *(v0 + 8);
  if (v1 >= 9)
  {

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_1001862A0[v1]);
  }
}

Swift::Int sub_10014B39C()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_1001862A0[v1]);
  }

  return Hasher._finalize()();
}

unint64_t sub_10014B424()
{
  result = qword_100202818;
  if (!qword_100202818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202818);
  }

  return result;
}

BOOL sub_10014B478(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  Hasher.init(_seed:)();
  if (a2 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_1001862A0[a2]);
  }

  v6 = Hasher._finalize()();
  Hasher.init(_seed:)();
  if (a4 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_1001862A0[a4]);
  }

  return v6 == Hasher._finalize()();
}

void *sub_10014B558(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_errorRetain();
      sub_10003C49C(&qword_100201C30);
      sub_10003E110(0, &qword_100202990);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_10014B66C(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_1000B7D40(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000B7D40((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      v7[2] = v14 + 1;
      sub_100049EFC(&v17, &v7[4 * v14 + 4]);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_10014B804(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1000B7D40(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10003C49C(&qword_1002018E0);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000B7D40((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100049EFC(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10014B914(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1000B7D40(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000B7D40((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100049EFC(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_10014BA14()
{
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_commonHeight] = 0x4045000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_componentPadding] = 0x403E000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_topPadding] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_topPaddingForLabel] = 0x4034000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_labelWidth] = 0x4059000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_textFieldSpacer] = 0x402E000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureViewHeight] = 0x4069000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_fontSizeForLabels] = 0x4032000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_documentHelper] = 0;
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x8000000100194120);
  v1 = String._bridgeToObjectiveC()();

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100194140);
  v2 = String._bridgeToObjectiveC()();

  v5.receiver = v0;
  v5.super_class = type metadata accessor for ConsentSignatureController();
  v3 = objc_msgSendSuper2(&v5, "initWithTitle:detailText:symbolName:contentLayout:", v1, v2, 0, 2);

  return v3;
}

void sub_10014BCAC()
{
  v1 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x80000001001940B0);
  v2 = String._bridgeToObjectiveC()();

  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:"generateConsentDocument" forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton:v1];

  v4 = [objc_opt_self() linkButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001ELL, 0x80000001001940D0);
  v5 = String._bridgeToObjectiveC()();

  [v4 setTitle:v5 forState:0];

  [v4 addTarget:v0 action:"cancelConsent" forControlEvents:64];
  v6 = [v0 buttonTray];
  [v6 addButton:v4];
}

void sub_10014BE9C()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FD070);
  __chkstk_darwin(v2 - 8);
  v4 = &v112 - v3;
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v112 - v10;
  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"handleTapOutside:"];
  v13 = [v1 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_38;
  }

  v14 = v13;
  v114 = v4;
  v115 = v8;
  v116 = v6;
  v117 = v5;
  [v13 addGestureRecognizer:v12];

  v15 = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel;
  v17 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel];
  *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel] = v15;
  v18 = v15;

  if (!v18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x8000000100194010);
  v19 = String._bridgeToObjectiveC()();

  [v18 setText:v19];

  v20 = *&v1[v16];
  if (!v20)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 defaultMetrics];
  v24 = objc_opt_self();
  v25 = [v24 systemFontOfSize:18.0 weight:UIFontWeightRegular];
  v26 = [v23 scaledFontForFont:v25];

  [v22 setFont:v26];
  v27 = *&v1[v16];
  if (!v27)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v27 sizeToFit];
  v28 = *&v1[v16];
  if (!v28)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v28 setNumberOfLines:2];
  v29 = *&v1[v16];
  if (!v29)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v29 setAdjustsFontSizeToFitWidth:1];
  if (!_UISolariumEnabled())
  {
    goto LABEL_10;
  }

  v30 = *&v1[v16];
  if (v30)
  {
    v31 = objc_opt_self();
    v32 = v30;
    v33 = [v31 secondaryLabelColor];
    [v32 setTextColor:v33];

LABEL_10:
    v34 = [v1 contentView];
    if (*&v1[v16])
    {
      v35 = v34;
      [v34 addSubview:?];

      v36 = [objc_allocWithZone(ELSConsentSignatureView) init];
      v37 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView;
      v38 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView];
      *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView] = v36;

      v39 = [v1 contentView];
      if (*&v1[v37])
      {
        v40 = v39;
        [v39 addSubview:?];

        v41 = [objc_allocWithZone(UILabel) init];
        v42 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel;
        v43 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel];
        *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel] = v41;
        v44 = v41;

        if (v44)
        {
          sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000022, 0x8000000100194030);
          v45 = String._bridgeToObjectiveC()();

          [v44 setText:v45];

          v46 = *&v1[v42];
          if (v46)
          {
            v47 = v46;
            v48 = [v21 defaultMetrics];
            v49 = [v24 systemFontOfSize:18.0 weight:UIFontWeightSemibold];
            v50 = [v48 scaledFontForFont:v49];

            [v47 setFont:v50];
            v51 = *&v1[v42];
            if (v51)
            {
              [v51 sizeToFit];
              v52 = *&v1[v42];
              if (v52)
              {
                [v52 setAdjustsFontSizeToFitWidth:1];
                v53 = [v1 contentView];
                if (*&v1[v42])
                {
                  v54 = v53;
                  v113 = v12;
                  [v53 addSubview:?];

                  v55 = [objc_allocWithZone(UITextField) init];
                  v56 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField;
                  v57 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField];
                  *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField] = v55;
                  v58 = v55;

                  if (v58)
                  {
                    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100193FE0);
                    v59 = String._bridgeToObjectiveC()();

                    [v58 setPlaceholder:v59];

                    v60 = *&v1[v56];
                    if (v60)
                    {
                      [v60 setKeyboardType:6];
                      v61 = *&v1[v56];
                      if (v61)
                      {
                        [v61 setReturnKeyType:4];
                        v62 = *&v1[v56];
                        if (v62)
                        {
                          [v62 setDelegate:v1];
                          v63 = [v1 contentView];
                          if (*&v1[v56])
                          {
                            v64 = v63;
                            [v63 addSubview:?];

                            v65 = [objc_allocWithZone(UILabel) init];
                            v66 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel;
                            v67 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel];
                            *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel] = v65;
                            v68 = v65;

                            if (v68)
                            {
                              sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000021, 0x8000000100194060);
                              v69 = String._bridgeToObjectiveC()();

                              [v68 setText:v69];

                              v70 = *&v1[v66];
                              if (v70)
                              {
                                v71 = v70;
                                v72 = [v21 defaultMetrics];
                                v73 = [v24 systemFontOfSize:18.0 weight:UIFontWeightSemibold];
                                v74 = [v72 scaledFontForFont:v73];

                                [v71 setFont:v74];
                                v75 = *&v1[v66];
                                if (v75)
                                {
                                  [v75 sizeToFit];
                                  v76 = *&v1[v66];
                                  if (v76)
                                  {
                                    [v76 setAdjustsFontSizeToFitWidth:1];
                                    v77 = [v1 contentView];
                                    if (*&v1[v66])
                                    {
                                      v78 = v77;
                                      [v77 addSubview:?];

                                      v79 = [objc_allocWithZone(UITextField) init];
                                      v80 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField;
                                      v81 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField];
                                      *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField] = v79;
                                      v82 = v79;

                                      if (v82)
                                      {
                                        sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100193FE0);
                                        v83 = String._bridgeToObjectiveC()();

                                        [v82 setPlaceholder:v83];

                                        v84 = *&v1[v80];
                                        if (v84)
                                        {
                                          [v84 setKeyboardType:6];
                                          v85 = *&v1[v80];
                                          if (v85)
                                          {
                                            [v85 setReturnKeyType:9];
                                            v86 = *&v1[v80];
                                            if (v86)
                                            {
                                              [v86 setDelegate:v1];
                                              v87 = [v1 contentView];
                                              if (*&v1[v80])
                                              {
                                                v88 = v87;
                                                [v87 addSubview:?];

                                                v89 = [v21 defaultMetrics];
                                                [v24 defaultFontSize];
                                                v90 = [v24 systemFontOfSize:?];
                                                v91 = [v89 scaledFontForFont:v90];

                                                static UIButton.Configuration.plain()();
                                                *(swift_allocObject() + 16) = v91;
                                                v92 = v91;
                                                v93 = v114;
                                                UIConfigurationTextAttributesTransformer.init(_:)();
                                                v94 = type metadata accessor for UIConfigurationTextAttributesTransformer();
                                                (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
                                                UIButton.Configuration.titleTextAttributesTransformer.setter();

                                                sub_10003E110(0, &qword_1001FD078);
                                                v95 = v116;
                                                v96 = v117;
                                                (*(v116 + 16))(v115, v11, v117);
                                                v97 = UIButton.init(configuration:primaryAction:)();
                                                v98 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn;
                                                v99 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn];
                                                *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn] = v97;
                                                v100 = v97;

                                                v101 = [objc_opt_self() systemBackgroundColor];
                                                [v100 setBackgroundColor:v101];

                                                v102 = *&v1[v98];
                                                if (v102)
                                                {
                                                  v103 = v102;
                                                  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x8000000100194090);
                                                  v104 = String._bridgeToObjectiveC()();

                                                  [v103 setTitle:v104 forState:0];

                                                  v105 = *&v1[v98];
                                                  if (v105)
                                                  {
                                                    v106 = objc_allocWithZone(UIColor);
                                                    v107 = v105;
                                                    v108 = [v106 initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
                                                    [v107 setTitleColor:v108 forState:0];

                                                    v109 = *&v1[v98];
                                                    if (v109)
                                                    {
                                                      [v109 addTarget:v1 action:"clearSignature" forControlEvents:64];
                                                      v110 = [v1 contentView];
                                                      if (*&v1[v98])
                                                      {
                                                        v111 = v110;
                                                        [v110 addSubview:?];

                                                        (*(v95 + 8))(v11, v96);
                                                        return;
                                                      }

                                                      goto LABEL_68;
                                                    }

LABEL_67:
                                                    __break(1u);
LABEL_68:
                                                    __break(1u);
                                                    goto LABEL_69;
                                                  }

LABEL_66:
                                                  __break(1u);
                                                  goto LABEL_67;
                                                }

LABEL_65:
                                                __break(1u);
                                                goto LABEL_66;
                                              }

LABEL_64:
                                              __break(1u);
                                              goto LABEL_65;
                                            }

LABEL_63:
                                            __break(1u);
                                            goto LABEL_64;
                                          }

LABEL_62:
                                          __break(1u);
                                          goto LABEL_63;
                                        }

LABEL_61:
                                        __break(1u);
                                        goto LABEL_62;
                                      }

LABEL_60:
                                      __break(1u);
                                      goto LABEL_61;
                                    }

LABEL_59:
                                    __break(1u);
                                    goto LABEL_60;
                                  }

LABEL_58:
                                  __break(1u);
                                  goto LABEL_59;
                                }

LABEL_57:
                                __break(1u);
                                goto LABEL_58;
                              }

LABEL_56:
                              __break(1u);
                              goto LABEL_57;
                            }

LABEL_55:
                            __break(1u);
                            goto LABEL_56;
                          }

LABEL_54:
                          __break(1u);
                          goto LABEL_55;
                        }

LABEL_53:
                        __break(1u);
                        goto LABEL_54;
                      }

LABEL_52:
                      __break(1u);
                      goto LABEL_53;
                    }

LABEL_51:
                    __break(1u);
                    goto LABEL_52;
                  }

LABEL_50:
                  __break(1u);
                  goto LABEL_51;
                }

LABEL_49:
                __break(1u);
                goto LABEL_50;
              }

LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_69:
  __break(1u);
}

void sub_10014CB74()
{
  v1 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel];
  if (!v2)
  {
    __break(1u);
    goto LABEL_49;
  }

  v3 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField;
  v5 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField];
  if (!v5)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel;
  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel];
  if (!v7)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField;
  v9 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField];
  if (!v9)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v143 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel;
  v10 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel];
  if (!v10)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v142 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView;
  v11 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView];
  if (!v11)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn;
  v13 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn];
  if (!v13)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v144 = v8;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10003C49C(&unk_1001FD020);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10017ED60;
  v15 = *&v3[v1];
  if (!v15)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = [v15 leadingAnchor];
  v17 = [v3 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v14 + 32) = v19;
  v20 = *&v3[v1];
  if (!v20)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v21 = [v20 topAnchor];
  v22 = [v3 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:20.0];
  *(v14 + 40) = v24;
  v25 = *&v3[v1];
  if (!v25)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v26 = [v25 widthAnchor];
  v27 = [v26 constraintEqualToConstant:100.0];

  *(v14 + 48) = v27;
  v28 = *&v3[v1];
  if (!v28)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v29 = objc_opt_self();
  v30 = [v28 heightAnchor];
  v31 = [v30 constraintEqualToConstant:42.0];

  *(v14 + 56) = v31;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:isa];

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10017ED60;
  v34 = *&v3[v4];
  if (!v34)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v141 = v12;
  v35 = [v34 topAnchor];
  v36 = *&v3[v1];
  if (!v36)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v37 = [v36 topAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];

  *(v33 + 32) = v38;
  v39 = *&v3[v4];
  if (!v39)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v40 = [v39 leadingAnchor];
  v41 = *&v3[v1];
  if (!v41)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v42 = [v41 trailingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:30.0];

  *(v33 + 40) = v43;
  v44 = *&v3[v4];
  if (!v44)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v45 = [v44 trailingAnchor];
  v46 = [v3 contentView];
  v47 = [v46 trailingAnchor];

  v48 = [v45 constraintEqualToAnchor:v47];
  *(v33 + 48) = v48;
  v49 = *&v3[v4];
  if (!v49)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v50 = [v49 heightAnchor];
  v51 = [v50 constraintEqualToConstant:42.0];

  *(v33 + 56) = v51;
  v52 = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:v52];

  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_10017ED60;
  v54 = *&v3[v6];
  if (!v54)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v55 = [v54 leadingAnchor];
  v56 = [v3 contentView];
  v57 = [v56 leadingAnchor];

  v58 = [v55 constraintEqualToAnchor:v57];
  *(v53 + 32) = v58;
  v59 = *&v3[v6];
  if (!v59)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v60 = [v59 topAnchor];
  v61 = *&v3[v1];
  if (!v61)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v62 = [v61 bottomAnchor];
  v63 = [v60 constraintEqualToAnchor:v62 constant:15.0];

  *(v53 + 40) = v63;
  v64 = *&v3[v6];
  if (!v64)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v65 = [v64 widthAnchor];
  v66 = [v65 constraintEqualToConstant:100.0];

  *(v53 + 48) = v66;
  v67 = *&v3[v6];
  if (!v67)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v68 = [v67 heightAnchor];
  v69 = [v68 constraintEqualToConstant:42.0];

  *(v53 + 56) = v69;
  v70 = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:v70];

  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_10017ED60;
  v72 = *&v3[v144];
  if (!v72)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v73 = [v72 topAnchor];
  v74 = *&v3[v6];
  if (!v74)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v75 = [v74 topAnchor];
  v76 = [v73 constraintEqualToAnchor:v75];

  *(v71 + 32) = v76;
  v77 = *&v3[v144];
  if (!v77)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v78 = [v77 leadingAnchor];
  v79 = *&v3[v6];
  if (!v79)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v80 = [v79 trailingAnchor];
  v81 = [v78 constraintEqualToAnchor:v80 constant:30.0];

  *(v71 + 40) = v81;
  v82 = *&v3[v144];
  if (!v82)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v83 = [v82 trailingAnchor];
  v84 = [v3 contentView];
  v85 = [v84 trailingAnchor];

  v86 = [v83 constraintEqualToAnchor:v85];
  *(v71 + 48) = v86;
  v87 = *&v3[v144];
  if (!v87)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v88 = [v87 heightAnchor];
  v89 = [v88 constraintEqualToConstant:42.0];

  *(v71 + 56) = v89;
  v90 = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:v90];

  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_10017ED60;
  v92 = *&v3[v143];
  if (!v92)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v93 = [v92 topAnchor];
  v94 = *&v3[v6];
  if (!v94)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v95 = [v94 bottomAnchor];
  v96 = [v93 constraintEqualToAnchor:v95 constant:30.0];

  *(v91 + 32) = v96;
  v97 = *&v3[v143];
  if (!v97)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v98 = [v97 leftAnchor];
  v99 = [v3 contentView];
  v100 = [v99 leftAnchor];

  v101 = [v98 constraintEqualToAnchor:v100];
  *(v91 + 40) = v101;
  v102 = *&v3[v143];
  if (!v102)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v103 = [v102 rightAnchor];
  v104 = [v3 contentView];
  v105 = [v104 rightAnchor];

  v106 = [v103 constraintEqualToAnchor:v105];
  *(v91 + 48) = v106;
  v107 = *&v3[v143];
  if (!v107)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v108 = [v107 heightAnchor];
  v109 = [v108 constraintEqualToConstant:42.0];

  *(v91 + 56) = v109;
  v110 = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:v110];

  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_10017ED90;
  v112 = *&v3[v142];
  if (!v112)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v113 = [v112 topAnchor];
  v114 = *&v3[v143];
  if (!v114)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v115 = [v114 bottomAnchor];
  v116 = [v113 constraintEqualToAnchor:v115 constant:20.0];

  *(v111 + 32) = v116;
  v117 = *&v3[v142];
  if (!v117)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v118 = [v117 heightAnchor];
  v119 = [v118 constraintEqualToConstant:200.0];

  *(v111 + 40) = v119;
  v120 = sub_10014FCF8(&off_1001BE1B0);
  v121 = [objc_opt_self() currentDevice];
  v122 = [v121 userInterfaceIdiom];

  LOBYTE(v121) = sub_1000743A4(v122, v120);

  if (v121)
  {
    v123 = sub_10014DA40(v3);
  }

  else
  {
    v123 = sub_10014DBC4(v3);
  }

  sub_100074470(v123);
  v124 = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:v124];

  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_10017ED80;
  v126 = *&v3[v141];
  if (!v126)
  {
    goto LABEL_84;
  }

  v127 = [v126 centerXAnchor];
  v128 = *&v3[v142];
  if (!v128)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v129 = [v128 centerXAnchor];
  v130 = [v127 constraintEqualToAnchor:v129];

  *(v125 + 32) = v130;
  v131 = *&v3[v141];
  if (!v131)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v132 = [v131 topAnchor];
  v133 = *&v3[v142];
  if (!v133)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v134 = [v133 bottomAnchor];
  v135 = [v132 constraintEqualToAnchor:v134 constant:10.0];

  *(v125 + 40) = v135;
  v136 = *&v3[v141];
  if (!v136)
  {
LABEL_88:
    __break(1u);
    return;
  }

  v137 = [v136 bottomAnchor];
  v138 = [v3 contentView];
  v139 = [v138 bottomAnchor];

  v140 = [v137 constraintEqualToAnchor:v139];
  *(v125 + 48) = v140;
  v145 = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:v145];
}

void *sub_10014DA40(char *a1)
{
  sub_10003C49C(&unk_1001FD020);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView;
  result = *&a1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView];
  if (result)
  {
    v5 = [result centerXAnchor];
    v6 = [a1 contentView];
    v7 = [v6 centerXAnchor];

    v8 = [v5 constraintEqualToAnchor:v7];
    *(v2 + 32) = v8;
    result = *&a1[v3];
    if (result)
    {
      v9 = [result widthAnchor];
      v10 = [a1 contentView];
      v11 = [v10 widthAnchor];

      v12 = [v9 constraintEqualToAnchor:v11 multiplier:0.666666667];
      *(v2 + 40) = v12;
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10014DBC4(char *a1)
{
  sub_10003C49C(&unk_1001FD020);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView;
  result = *&a1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView];
  if (result)
  {
    v5 = [result leftAnchor];
    v6 = [a1 contentView];
    v7 = [v6 leftAnchor];

    v8 = [v5 constraintEqualToAnchor:v7];
    *(v2 + 32) = v8;
    result = *&a1[v3];
    if (result)
    {
      v9 = [result rightAnchor];
      v10 = [a1 contentView];
      v11 = [v10 rightAnchor];

      v12 = [v9 constraintEqualToAnchor:v11];
      *(v2 + 40) = v12;
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10014DD58()
{
  v1 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField;
  result = *(v0 + OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField);
  if (!result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = [result text];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    v10 = *(v0 + v1);
    if (!v10)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v11 = v10;
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100193FE0);
    sub_10003C49C(&qword_1002020A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10017EC00;
    *(inited + 32) = NSForegroundColorAttributeName;
    v13 = objc_opt_self();
    v14 = NSForegroundColorAttributeName;
    v15 = [v13 redColor];
    *(inited + 64) = sub_10003E110(0, &qword_100202970);
    *(inited + 40) = v15;
    sub_1000D6020(inited);
    swift_setDeallocating();
    sub_10014FEF0(inited + 32);
    v16 = objc_allocWithZone(NSAttributedString);
    v17 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10014FF58(&qword_1001FCCE0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = [v16 initWithString:v17 attributes:isa];

    [v11 setAttributedPlaceholder:v19];
    v9 = 0;
  }

  else
  {
LABEL_6:
    v9 = 1;
  }

  v20 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField;
  result = *(v0 + OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField);
  if (!result)
  {
    goto LABEL_22;
  }

  v21 = [result text];
  if (!v21)
  {
    goto LABEL_16;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
LABEL_16:
    v37 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView;
    result = *(v0 + OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView);
    if (result)
    {
      if ([result signatureExists])
      {
        return v9;
      }

      result = *(v0 + v37);
      if (result)
      {
        v38 = [result layer];
        v39 = [objc_opt_self() redColor];
        v40 = [v39 CGColor];

        [v38 setBorderColor:v40];
        return 0;
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = *(v0 + v20);
  if (v27)
  {
    v28 = v27;
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100193FE0);
    sub_10003C49C(&qword_1002020A8);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_10017EC00;
    *(v29 + 32) = NSForegroundColorAttributeName;
    v30 = objc_opt_self();
    v31 = NSForegroundColorAttributeName;
    v32 = [v30 redColor];
    *(v29 + 64) = sub_10003E110(0, &qword_100202970);
    *(v29 + 40) = v32;
    sub_1000D6020(v29);
    swift_setDeallocating();
    sub_10014FEF0(v29 + 32);
    v33 = objc_allocWithZone(NSAttributedString);
    v34 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10014FF58(&qword_1001FCCE0, type metadata accessor for Key);
    v35 = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = [v33 initWithString:v34 attributes:v35];

    [v28 setAttributedPlaceholder:v36];
    v9 = 0;
    goto LABEL_16;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_10014E2C8()
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(3, 0);
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100125854(1, 0, 1, 0, 0);
    }
  }
}

void sub_10014E440()
{
  if (sub_10014DD58())
  {
    v1 = sub_10014E85C();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField];
    if (v3)
    {
      v4 = v2;
      v5 = v0;
      v6 = [v3 text];
      if (!v6)
      {
LABEL_14:

        static os_log_type_t.fault.getter();
        sub_10003E110(0, &qword_1001FD6F0);
        v33 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        sub_10014EA98(v5);

        return;
      }

      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = *&v5[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField];
      if (v11)
      {
        v12 = [v11 text];
        if (!v12)
        {
LABEL_13:

          goto LABEL_14;
        }

        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = *&v5[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView];
        if (v17)
        {
          v18 = [v17 signatureImage];
          [v18 copy];

          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_10003E110(0, &unk_100202950);
          if (swift_dynamicCast())
          {
            v34 = v41;
            sub_10014B914(v1);
            v19 = objc_allocWithZone(DADocumentHelper);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v21 = [v19 initWithConsentHandles:isa];

            v22 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_documentHelper;
            v23 = *&v5[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_documentHelper];
            *&v5[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_documentHelper] = v21;
            v24 = v21;

            if (v24)
            {
              aBlock = v8;
              v36 = v10;

              v25._countAndFlagsBits = 32;
              v25._object = 0xE100000000000000;
              String.append(_:)(v25);

              v26._countAndFlagsBits = v14;
              v26._object = v16;
              String.append(_:)(v26);

              v27 = String._bridgeToObjectiveC()();

              [v24 setFullName:v27];

              v28 = *&v5[v22];
              if (v28)
              {
                [v28 setImageSignature:v34];
                v29 = *&v5[v22];
                if (v29)
                {
                  v30 = v29;

                  v31 = swift_allocObject();
                  *(v31 + 16) = sub_10014FE98;
                  *(v31 + 24) = v4;
                  v39 = sub_10003D960;
                  v40 = v31;
                  aBlock = _NSConcreteStackBlock;
                  v36 = 1107296256;
                  v37 = sub_100031FA8;
                  v38 = &unk_1001C94C8;
                  v32 = _Block_copy(&aBlock);

                  [v30 saveConsentDocument:v32];
                  _Block_release(v32);

                  return;
                }

                goto LABEL_21;
              }

LABEL_20:
              __break(1u);
LABEL_21:
              __break(1u);
              return;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

uint64_t sub_10014E85C()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 snapshot];

  v2 = [v1 consentHandles];
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  sub_10003C49C(&unk_100202960);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_10:

    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  sub_1000B7CBC(0, v5, 0);
  v6 = 0;
  v3 = _swiftEmptyArrayStorage;
  while (v6 < *(v4 + 16))
  {
    v7 = *(v4 + 8 * v6 + 32);

    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16))
    {
      goto LABEL_13;
    }

    v8 = sub_100064B74(v14);
    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_10003E010(*(v7 + 56) + 32 * v8, v15);
    sub_10003DB48(v14);
    sub_100049EFC(v15, &v16);
    swift_dynamicCast();
    v10 = String.uppercased()();

    v17 = v3;
    v12 = v3[2];
    v11 = v3[3];
    if (v12 >= v11 >> 1)
    {
      sub_1000B7CBC((v11 > 1), v12 + 1, 1);
      v3 = v17;
    }

    ++v6;
    v3[2] = v12 + 1;
    *&v3[2 * v12 + 4] = v10;
    if (v5 == v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_13:
  result = sub_10003DB48(v14);
  __break(1u);
  return result;
}

void sub_10014EA98(void *a1)
{
  v6 = [a1 parentViewController];
  if (!v6)
  {
    return;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = [v1 viewControllers];

  sub_10003E110(0, &qword_1001FDE30);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v4 = *(v3 + 32);
    }

    v6 = v4;

    type metadata accessor for EnhancedLoggingConsentViewController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      sub_10014EC64(v5);
    }

LABEL_10:

    return;
  }
}

void sub_10014EC64(void *a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter() && (v7 = Session.requiresDeviceSelection.getter(), , (v7 & 1) != 0))
  {
    v8 = objc_allocWithZone(type metadata accessor for DeviceSelector());
    v16 = sub_1000BDA58(2);
    [a1 showViewController:v16 sender:v1];
    v9 = v16;
  }

  else
  {
    v10 = [v1 buttonTray];
    [v10 showButtonsBusy];

    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    type metadata accessor for MainActor();
    v12 = v2;
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    sub_1000539D8(0, 0, v6, &unk_100186370, v14);
  }
}

uint64_t sub_10014EE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for Session.CollectOptions();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_10014EF70, v7, v6);
}

uint64_t sub_10014EF70()
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v1 = SessionManager.currentSession.getter();
  v0[10] = v1;
  if (v1)
  {
    v0[2] = _swiftEmptyArrayStorage;
    sub_10014FF58(&qword_100202930, &type metadata accessor for Session.CollectOptions);
    sub_10003C49C(&unk_1001FFE30);
    sub_10014FE34();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_10014F1E8;
    v3 = v0[6];

    return Session.startCollectingFromLocalDevice(options:)(v3);
  }

  else
  {

    sub_10008CDB0();
    v4 = swift_allocError();
    swift_willThrow();
    v5 = v0[3];
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = v5;
    v8 = sub_1000B99C8(v4, sub_1000CA504, v6);

    [v7 presentViewController:v8 animated:1 completion:0];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10014F1E8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[5] + 8))(v2[6], v2[4]);
  v3 = v2[9];
  v4 = v2[8];
  if (v0)
  {
    v5 = sub_10014F464;
  }

  else
  {
    v5 = sub_10014F370;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10014F370()
{
  v1 = *(v0 + 24);

  v2 = [v1 parentViewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100125854(1, 0, 1, 0, 0);

      goto LABEL_7;
    }
  }

LABEL_7:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10014F464()
{

  v1 = v0[12];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  v5 = sub_1000B99C8(v1, sub_1000CA504, v3);

  [v4 presentViewController:v5 animated:1 completion:0];

  v6 = v0[1];

  return v6();
}

id sub_10014F5C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConsentSignatureController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10014F6C4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField;
  v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField);
  if (v5)
  {
    sub_10003E110(0, &qword_100202928);
    v6 = a1;
    v7 = v5;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      [v6 resignFirstResponder];
      return 1;
    }
  }

  v9 = *(v2 + OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField);
  if (!v9)
  {
    return 1;
  }

  sub_10003E110(0, &qword_100202928);
  v10 = a1;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    return 1;
  }

  result = *(v2 + v4);
  if (result)
  {
    [result becomeFirstResponder];
    return 1;
  }

  __break(1u);
  return result;
}

void sub_10014F820(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v1 view];
  [a1 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v4 hitTest:0 withEvent:{v7, v9}];
  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();

    if (v11)
    {
      return;
    }
  }

  v12 = [v1 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 endEditing:1];
}

uint64_t sub_10014F9D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10014FA18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_10014EE7C(a1, v4, v5, v6);
}

uint64_t sub_10014FACC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10014FB04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_1002029A8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_10014FCF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100202978);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10014FE34()
{
  result = qword_100202940;
  if (!qword_100202940)
  {
    sub_10003C4E4(&unk_1001FFE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202940);
  }

  return result;
}

uint64_t sub_10014FEA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014FED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10014FEF0(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_100200718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014FF58(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_10014FFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&unk_100202998);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    while (1)
    {
      v6 = *(v26 + v4);
      v27 = v4 + 1;
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 2)
          {
            if (v13 != 3)
            {
              v14 = 0x487972616D697270;
              v15 = 0xEF6C6562614C6275;
              if (v13 != 4)
              {
                v14 = 0x614C72656B6E6974;
                v15 = 0xEB000000006C6562;
                if (v6 > 2)
                {
                  goto LABEL_32;
                }

                goto LABEL_22;
              }

              goto LABEL_21;
            }

            v14 = 0xD00000000000001BLL;
            v15 = 0x8000000100188950;
            if (v6 > 2)
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (!*(*(v3 + 48) + v9))
            {
              v14 = 0xD000000000000010;
              v15 = 0x80000001001888F0;
LABEL_21:
              if (v6 > 2)
              {
                goto LABEL_32;
              }

              goto LABEL_22;
            }

            if (v13 == 1)
            {
              v14 = 0xD000000000000010;
            }

            else
            {
              v14 = 0xD000000000000011;
            }

            if (v13 == 1)
            {
              v15 = 0x8000000100188910;
            }

            else
            {
              v15 = 0x8000000100188930;
            }

            if (v6 > 2)
            {
LABEL_32:
              v18 = 0x614C72656B6E6974;
              if (v6 == 4)
              {
                v18 = 0x487972616D697270;
              }

              v19 = 0xEF6C6562614C6275;
              if (v6 != 4)
              {
                v19 = 0xEB000000006C6562;
              }

              if (v6 == 3)
              {
                v20 = 0xD00000000000001BLL;
              }

              else
              {
                v20 = v18;
              }

              if (v6 == 3)
              {
                v17 = 0x8000000100188950;
              }

              else
              {
                v17 = v19;
              }

              if (v14 != v20)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }
          }

LABEL_22:
          if (v6)
          {
            if (v6 == 1)
            {
              v16 = 0xD000000000000010;
            }

            else
            {
              v16 = 0xD000000000000011;
            }

            if (v6 == 1)
            {
              v17 = 0x8000000100188910;
            }

            else
            {
              v17 = 0x8000000100188930;
            }

            if (v14 != v16)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v17 = 0x80000001001888F0;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_46;
            }
          }

LABEL_45:
          if (v15 == v17)
          {

            goto LABEL_4;
          }

LABEL_46:
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(v3 + 16) = v24;
LABEL_4:
      v4 = v27;
      if (v27 == v25)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_100150354(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10003C49C(&unk_1002029B0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10003E110(0, &qword_1002012D0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10003E110(0, &qword_1002012D0);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

Swift::Int sub_100150644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&unk_100202980);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_1000681EC(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_1000681EC(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = sub_10003DB48(v18);
        if (v11)
        {
          sub_10003DB48(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_1001507AC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      type metadata accessor for CardViewCell();
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_100064FA0(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

unint64_t sub_100150864(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_10003E110(0, &qword_1001FF090);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100150974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TargetDevice.DeviceType() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1001572DC(&qword_1001FDEB0, &type metadata accessor for TargetDevice.DeviceType);
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_100150A94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_22:
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v19 == v3)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v17 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a2 + 8 * v3 + 32);
    }

    v5 = [*(v4 + 40) serialNumber];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [*(a1 + 40) serialNumber];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

uint64_t sub_100150C44()
{
  v1 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardStates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CardState();
    sub_1001572DC(&qword_1001FE6B0, type metadata accessor for CardState);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v22;
    v4 = v23;
    v5 = v24;
    v6 = v25;
    v7 = v26;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_10004A320();
    }

    type metadata accessor for CardState();
    swift_dynamicCast();
    v16 = v21;
    v14 = v6;
    v15 = v7;
    if (!v21)
    {
      return sub_10004A320();
    }

LABEL_19:
    if (*(v16 + 16) == 1)
    {
      v17 = [*(v16 + 40) serialNumber];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_100102FA4(v18, v20, 0);
    }

    else
    {
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      return sub_10004A320();
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      return sub_10004A320();
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100150EDC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

NSString sub_100150F74()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A650 = result;
  return result;
}

NSString sub_100150FAC()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A658 = result;
  return result;
}

NSString sub_100150FE4()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A660 = result;
  return result;
}

uint64_t sub_10015101C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC11Diagnostics11CardManager_cardFilter;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;

  v8 = *(v3 + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly);
  *(v7 + 16) = v8;
  swift_endAccess();
  swift_beginAccess();
  v11 = _swiftEmptyArrayStorage;

  sub_100073A18(v9, a1, a2, v8, &v11);
}

uint64_t sub_100151130()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly);
  v2 = v0 + OBJC_IVAR____TtC11Diagnostics11CardManager_cardFilter;
  swift_beginAccess();
  *(v2 + 16) = v1;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardStates;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v11 = _swiftEmptyArrayStorage;

  sub_100073A18(v6, v3, v4, v1, &v11);

  v7 = *v2;
  v8 = *(v2 + 8);
  LODWORD(v2) = *(v2 + 16);
  v9 = *(v0 + v5);
  v11 = _swiftEmptyArrayStorage;

  sub_100073A18(v9, v7, v8, v2, &v11);
}

void sub_10015127C()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1001FC850 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A650;
  sub_10003C49C(&qword_1002018D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  AnyHashable.init<A>(_:)();
  v5 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16) && (v7 = sub_100068EB8(1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    swift_endAccess();
    v10 = 0;
  }

  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = v10;
  sub_1000D57AC(inited);
  swift_setDeallocating();
  sub_10003DD84(inited + 32, &qword_1001FE6C0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 postNotificationName:v3 object:v1 userInfo:{isa, 0xD000000000000012, 0x800000010018BB50}];
}

uint64_t sub_10015147C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (*(v3 + 16) && (v4 = sub_100068EB8(0), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + v2);
  if (*(v8 + 16))
  {
    v9 = sub_100068EB8(1);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      if (v11 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
        v13 = __OFADD__(v7, v20);
        v7 += v20;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = __OFADD__(v7, v12);
        v7 += v12;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }

LABEL_12:
  v14 = *(v1 + v2);
  if (!*(v14 + 16))
  {
    return v7;
  }

  v15 = sub_100068EB8(2);
  if ((v16 & 1) == 0)
  {
    return v7;
  }

  v17 = *(*(v14 + 56) + 8 * v15);
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = __OFADD__(v7, v18);
    result = v7 + v18;
    if (!v13)
    {
      return result;
    }

    goto LABEL_17;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  v13 = __OFADD__(v7, v21);
  result = v7 + v21;
  if (v13)
  {
LABEL_17:
    __break(1u);
    return v7;
  }

  return result;
}

uint64_t sub_1001515E0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue) & 1) == 0 && (result)
  {
    v2 = OBJC_IVAR____TtC11Diagnostics11CardManager_changeQueue;
    result = swift_beginAccess();
    if (*(*(v1 + v2) + 16))
    {
      sub_10015400C();
      v3 = [objc_opt_self() defaultCenter];
      if (qword_1001FC858 != -1)
      {
        swift_once();
      }

      v4 = qword_10020A658;
      sub_10003C49C(&qword_1002018D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC00;
      strcpy(v8, "cardActionsKey");
      HIBYTE(v8[1]) = -18;
      AnyHashable.init<A>(_:)();
      v6 = *(v1 + v2);
      *(inited + 96) = sub_10003C49C(&qword_1001FEAC0);
      *(inited + 72) = v6;

      sub_1000D57AC(inited);
      swift_setDeallocating();
      sub_10003DD84(inited + 32, &qword_1001FE6C0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v3 postNotificationName:v4 object:v1 userInfo:{isa, v8[0], v8[1]}];

      *(v1 + v2) = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

char *sub_1001517D8()
{
  v1 = &v0[OBJC_IVAR____TtC11Diagnostics11CardManager_cardFilter];
  if (qword_1001FC708 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10020A3A8 + 24);
  v3 = *(qword_10020A3A8 + 32);
  *v1 = *(qword_10020A3A8 + 16);
  *(v1 + 1) = v2;
  v1[16] = v3;
  v0[OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly] = 1;
  v4 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  sub_10003C49C(&qword_100202A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EF10;
  *(inited + 32) = 0;
  *(inited + 40) = _swiftEmptyArrayStorage;
  *(inited + 48) = 1;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = 2;
  *(inited + 72) = _swiftEmptyArrayStorage;
  v6 = sub_1000D6270(inited);
  swift_setDeallocating();

  sub_10003C49C(&unk_100202A98);
  swift_arrayDestroy();
  *&v0[v4] = v6;
  v7 = OBJC_IVAR____TtC11Diagnostics11CardManager_deviceManager;
  *&v0[v7] = [objc_allocWithZone(type metadata accessor for DeviceManager()) init];
  *&v0[OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC11Diagnostics11CardManager_cardStates] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC11Diagnostics11CardManager_cardCells] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC11Diagnostics11CardManager_changeQueue] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue] = 0;
  v49.receiver = v0;
  v49.super_class = type metadata accessor for CardManager();
  super_class = v49.super_class;
  v8 = objc_msgSendSuper2(&v49, "init");
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  if (qword_1001FC810 != -1)
  {
    swift_once();
  }

  v12 = qword_10020A578;
  v40 = OBJC_IVAR____TtC11Diagnostics11CardManager_deviceManager;
  v13 = *&v10[OBJC_IVAR____TtC11Diagnostics11CardManager_deviceManager];
  v14 = objc_opt_self();
  v15 = v13;
  v42 = v14;
  v16 = [v14 mainQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  v47 = sub_1001572C4;
  v48 = v17;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100060B2C;
  v46 = &unk_1001C96A8;
  v18 = _Block_copy(&aBlock);
  v19 = v10;

  v20 = [v11 addObserverForName:v12 object:v15 queue:v16 usingBlock:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  v21 = [v9 defaultCenter];
  if (qword_1001FC818 != -1)
  {
    swift_once();
  }

  v22 = qword_10020A580;
  v23 = *&v10[v40];
  v24 = [v42 mainQueue];
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  v47 = sub_1001572CC;
  v48 = v25;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100060B2C;
  v46 = &unk_1001C96F8;
  v26 = _Block_copy(&aBlock);

  v27 = [v21 addObserverForName:v22 object:v23 queue:v24 usingBlock:v26];
  _Block_release(v26);
  swift_unknownObjectRelease();

  v28 = [v9 defaultCenter];
  v29 = v10;
  if (qword_1001FC710 != -1)
  {
    swift_once();
  }

  v30 = qword_10020A3B0;
  v31 = [v42 mainQueue];
  v32 = swift_allocObject();
  *(v32 + 16) = v19;
  v47 = sub_1001572D4;
  v48 = v32;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100060B2C;
  v46 = &unk_1001C9748;
  v33 = _Block_copy(&aBlock);
  v34 = v19;

  v35 = [v28 addObserverForName:v30 object:0 queue:v31 usingBlock:v33];
  _Block_release(v33);
  swift_unknownObjectRelease();

  v36 = *&v29[v40];
  v46 = super_class;
  v47 = &off_1001C9518;
  v37 = v36;

  aBlock = v34;
  v38 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
  swift_beginAccess();
  sub_1001196C4(&aBlock, v37 + v38, &qword_100201810);
  swift_endAccess();

  return v34;
}

uint64_t sub_100151E38()
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v1 = result;
    strcpy(v6, "deviceStateKey");
    HIBYTE(v6[1]) = -18;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_100064B74(v7), (v3 & 1) != 0))
    {
      sub_10003E010(*(v1 + 56) + 32 * v2, v8);
      sub_10003DB48(v7);

      sub_10003E110(0, &qword_1001FF0E0);
      result = swift_dynamicCast();
      if (result)
      {
        type metadata accessor for CardState();
        swift_allocObject();
        v4 = v6[0];
        v5 = sub_100073C08(v4);

        sub_100152560(v5);
      }
    }

    else
    {

      return sub_10003DB48(v7);
    }
  }

  return result;
}

void sub_100151F84()
{
  v0 = Notification.userInfo.getter();
  if (v0)
  {
    v1 = v0;
    strcpy(v9, "deviceStateKey");
    HIBYTE(v9[1]) = -18;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_100064B74(v10), (v3 & 1) != 0))
    {
      sub_10003E010(*(v1 + 56) + 32 * v2, v11);
      sub_10003DB48(v10);

      sub_10003E110(0, &qword_1001FF0E0);
      if (swift_dynamicCast())
      {
        v4 = [v9[0] serialNumber];
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v6;

        v8 = sub_100154768(v5, v7);

        if (v8)
        {
          sub_1001528CC(v8);
        }
      }
    }

    else
    {

      sub_10003DB48(v10);
    }
  }
}

uint64_t sub_1001520F8()
{
  if (qword_1001FC708 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10020A3A8 + 16);
  v1 = *(qword_10020A3A8 + 24);
  v2 = *(qword_10020A3A8 + 32);

  return sub_10015101C(v0, v1, v2);
}

uint64_t sub_1001521A4(unint64_t a1, char a2)
{
  v4 = type metadata accessor for IndexPath();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C49C(&unk_1001FFEC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v28 - v14;
  v16 = [*(a1 + 40) serialNumber];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = sub_100154768(v17, v19);

  if (v20)
  {
    sub_10007287C(a1);
    a1 = v20;
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if ((a2 & 0x20) == 0)
    {
      goto LABEL_9;
    }
  }

  v21 = sub_1001544D8(a1);
  if (v21 == 3)
  {
    goto LABEL_9;
  }

  v22 = 1 << *(a1 + 32);
  if ((v22 & 0x1FE0) != 0)
  {
    if (!v21)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((v22 & 0xE) != 0)
  {
    if (v21 == 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_100153AEC(a1);
    goto LABEL_9;
  }

  if (v21 != 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((a2 & 4) != 0)
  {
    v24 = v29;
    v25 = (v29 + 48);
    if (*(a1 + 17) == 1)
    {
      sub_100154954(a1, v15);
      if ((*v25)(v15, 1, v4) == 1)
      {

        v26 = v15;
      }

      else
      {
        sub_10003DD84(v15, &unk_1001FFEC0);
        sub_100152A38(a1, 1, 0, v11);

        v26 = v11;
      }
    }

    else
    {
      sub_100154954(a1, v8);
      if ((*v25)(v8, 1, v4) == 1)
      {
        sub_10003DD84(v8, &unk_1001FFEC0);
        v27 = v28;
        sub_1001530F0(a1, 1, v28);

        return (*(v24 + 8))(v27, v4);
      }

      v26 = v8;
    }

    return sub_10003DD84(v26, &unk_1001FFEC0);
  }

  else
  {
  }
}

uint64_t sub_100152560(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1001FC6F0 != -1)
  {
    swift_once();
  }

  v4 = qword_10020A3A0;
  v5 = [objc_opt_self() mainQueue];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  aBlock[4] = sub_1001572BC;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100060B2C;
  aBlock[3] = &unk_1001C9658;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  v9 = [v3 addObserverForName:v4 object:a1 queue:v5 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v10 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardStates;
  swift_beginAccess();

  sub_1001090EC(&v16, a1);
  swift_endAccess();

  v11 = &v8[OBJC_IVAR____TtC11Diagnostics11CardManager_cardFilter];
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 1);
  LODWORD(v11) = v11[16];
  v14 = *&v8[v10];
  v16 = _swiftEmptyArrayStorage;

  sub_100073A18(v14, v12, v13, v11, &v16);
}

uint64_t sub_1001527C4()
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v1 = result;
    strcpy(v4, "changeInfoKey");
    HIWORD(v4[1]) = -4864;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_100064B74(v5), (v3 & 1) != 0))
    {
      sub_10003E010(*(v1 + 56) + 32 * v2, v6);
      sub_10003DB48(v5);

      result = swift_dynamicCast();
      if (result)
      {
        sub_1001521A4(v4[0], v4[1]);
      }
    }

    else
    {

      return sub_10003DB48(v5);
    }
  }

  return result;
}

uint64_t sub_1001528CC(uint64_t a1)
{
  v3 = sub_10003C49C(&unk_1001FFEC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = [objc_opt_self() defaultCenter];
  if (qword_1001FC6F0 != -1)
  {
    swift_once();
  }

  [v6 removeObserver:v1 name:qword_10020A3A0 object:a1];

  swift_beginAccess();
  sub_1001282FC(a1);
  swift_endAccess();

  sub_100152A38(a1, 1, 0, v5);
  return sub_10003DD84(v5, &unk_1001FFEC0);
}

uint64_t sub_100152A38@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, char *a4@<X8>)
{
  v5 = v4;
  v65 = a2;
  v66 = type metadata accessor for Remove(0);
  __chkstk_darwin(v66);
  v10 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10003C49C(&unk_1001FFEC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v57 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  sub_100154954(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10003DD84(v16, &unk_1001FFEC0);
    v21 = 1;
  }

  else
  {
    v63 = a3;
    v61 = *(v18 + 32);
    v62 = v18 + 32;
    v61(v20, v16, v17);
    v22 = *(v5 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue);
    v60 = OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue;
    *(v5 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue) = 1;
    v59 = v22;
    sub_1001515E0(v22);
    v23 = IndexPath.section.getter();
    v64 = a4;
    if (v23 > 2)
    {
      v25 = 0;
      v24 = 2;
    }

    else
    {
      v24 = v23;
      v25 = IndexPath.row.getter();
    }

    v26 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
    swift_beginAccess();
    v27 = *(v5 + v26);
    if (*(v27 + 16))
    {
      v28 = sub_100068EB8(v24);
      if (v29)
      {
        v72 = *(*(v27 + 56) + 8 * v28);

        sub_100150EDC(v25, sub_10003E3D8);

        v30 = v72;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = *(v5 + v26);
        *(v5 + v26) = 0x8000000000000000;
        sub_100142CD4(v30, v24, isUniquelyReferenced_nonNull_native);
        *(v5 + v26) = v71;
        swift_endAccess();
        sub_10015127C();
        v58 = *(v67 + 40);
        v32 = [v58 serialNumber];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        swift_beginAccess();
        sub_100155D10(v33, v35, v13);
        sub_10003DD84(v13, &unk_1001FFEC0);
        swift_endAccess();

        if (v65)
        {
          v36 = [v58 serialNumber];
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          (*(v18 + 16))(v10 + *(v66 + 20), v20, v17);
          *v10 = v37;
          v10[1] = v39;
          v40 = OBJC_IVAR____TtC11Diagnostics11CardManager_changeQueue;
          swift_beginAccess();
          v41 = *(v5 + v40);
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *(v5 + v40) = v41;
          if ((v42 & 1) == 0)
          {
            v41 = sub_1000D552C(0, v41[2] + 1, 1, v41);
            *(v5 + v40) = v41;
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            v41 = sub_1000D552C((v43 > 1), v44 + 1, 1, v41);
            *(v5 + v40) = v41;
          }

          v69 = v66;
          v70 = &off_1001C9770;
          v45 = sub_10005BAD0(&v68);
          sub_1001571FC(v10, v45, type metadata accessor for Remove);
          v41[2] = v44 + 1;
          sub_100049F74(&v68, &v41[5 * v44 + 4]);
          sub_100081AB8(v10, type metadata accessor for Remove);
          *(v5 + v40) = v41;
          swift_endAccess();
        }
      }
    }

    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    sub_10003C49C(&unk_1001FEAD0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_10017EF10;
    v47 = v67;
    v48 = [*(v67 + 40) serialNumber];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_10003DFBC();
    *(v46 + 32) = v49;
    *(v46 + 40) = v51;
    v52 = IndexPath.section.getter();
    *(v46 + 96) = &type metadata for Int;
    *(v46 + 104) = &protocol witness table for Int;
    *(v46 + 72) = v52;
    v53 = IndexPath.row.getter();
    *(v46 + 136) = &type metadata for Int;
    *(v46 + 144) = &protocol witness table for Int;
    *(v46 + 112) = v53;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v54 = *(v5 + v60);
    *(v5 + v60) = v59;
    sub_1001515E0(v54);
    if ((v63 & 1) == 0)
    {
      swift_beginAccess();
      v55 = sub_100155E80(v47);
      swift_endAccess();
    }

    a4 = v64;
    v61(v64, v20, v17);
    v21 = 0;
  }

  return (*(v18 + 56))(a4, v21, 1, v17);
}

uint64_t sub_1001530F0@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v84 = type metadata accessor for Add(0);
  __chkstk_darwin(v84);
  v85 = (&v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v3 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue);
  v87 = OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue;
  *(v3 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue) = 1;
  v86 = v7;
  sub_1001515E0(v7);
  v8 = byte_10018644A[*(a1 + 32)];
  v9 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v89 = v3;
  v81 = v9;
  v10 = *(v3 + v9);
  v11 = &selRef_btManagerAvailableSemaphore;
  if (!*(v10 + 16) || (v12 = sub_100068EB8(v8), (v13 & 1) == 0))
  {
LABEL_77:
    IndexPath.init(row:section:)();
    v53 = a3;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    sub_10003C49C(&unk_1001FEAD0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10017EF10;
    v55 = *(a1 + 40);
    v56 = [v55 v11[435]];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v11;
    v60 = v59;

    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_10003DFBC();
    *(v54 + 32) = v57;
    *(v54 + 40) = v60;
    v61 = IndexPath.section.getter();
    *(v54 + 96) = &type metadata for Int;
    *(v54 + 104) = &protocol witness table for Int;
    *(v54 + 72) = v61;
    v62 = IndexPath.row.getter();
    *(v54 + 136) = &type metadata for Int;
    *(v54 + 144) = &protocol witness table for Int;
    *(v54 + 112) = v62;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (v83)
    {
      v63 = [v55 v58[435]];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = *(v84 + 20);
      v68 = type metadata accessor for IndexPath();
      v69 = v85;
      (*(*(v68 - 8) + 16))(v85 + v67, v53, v68);
      *v69 = v64;
      v69[1] = v66;
      v70 = OBJC_IVAR____TtC11Diagnostics11CardManager_changeQueue;
      v71 = v89;
      swift_beginAccess();
      v72 = *(v71 + v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v71 + v70) = v72;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = sub_1000D552C(0, v72[2] + 1, 1, v72);
        *(v89 + v70) = v72;
      }

      v75 = v72[2];
      v74 = v72[3];
      if (v75 >= v74 >> 1)
      {
        v72 = sub_1000D552C((v74 > 1), v75 + 1, 1, v72);
        *(v89 + v70) = v72;
      }

      v98 = v84;
      v99 = &off_1001C9778;
      v76 = sub_10005BAD0(&v97);
      v77 = v85;
      sub_1001571FC(v85, v76, type metadata accessor for Add);
      v72[2] = v75 + 1;
      sub_100049F74(&v97, &v72[5 * v75 + 4]);
      sub_100081AB8(v77, type metadata accessor for Add);
      *(v89 + v70) = v72;
      swift_endAccess();
    }

    v78 = *(v89 + v87);
    *(v89 + v87) = v86;
    return sub_1001515E0(v78);
  }

  v14 = *(*(v10 + 56) + 8 * v12);
  v100 = v14;
  v94 = a1;
  if (v14 >> 62)
  {
LABEL_69:
    v47 = v14;
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v47;
      v93 = v48;
      if (v48)
      {
        goto LABEL_5;
      }

      goto LABEL_75;
    }

LABEL_72:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_75:
    v88 = 0;
LABEL_76:
    v49 = v100;
    v50 = v89;
    v51 = v81;
    swift_beginAccess();
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v96 = *(v50 + v51);
    *(v50 + v51) = 0x8000000000000000;
    sub_100142CD4(v49, v8, v52);
    *(v50 + v51) = v96;
    swift_endAccess();
    sub_10015127C();
    a1 = v94;
    goto LABEL_77;
  }

  v93 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v93)
  {
    goto LABEL_72;
  }

LABEL_5:
  v79 = v8;
  v80 = a3;
  v91 = *(a1 + 48);
  v92 = v14 & 0xC000000000000001;
  v82 = v14 & 0xFFFFFFFFFFFFFF8;
  v15 = v14;
  swift_bridgeObjectRetain_n();
  v16 = v15;
  v8 = 0;
  v88 = 0;
  v90 = v15;
  while (1)
  {
    if (v92)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v82 + 16))
      {
        goto LABEL_68;
      }

      v17 = *(v16 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v18 = *(v17 + 48);
    v14 = *(v18 + 16);
    if (v14 < 2)
    {
      goto LABEL_63;
    }

    v14 = *(v18 + 56);
    if (v14 > 8)
    {
      v19 = 0;
    }

    else
    {
      v19 = qword_100186458[v14];
    }

    if (*(v91 + 16) < 2uLL)
    {
      goto LABEL_64;
    }

    v20 = *(v91 + 56);
    v21 = v20 > 8 ? 0 : qword_100186458[v20];
    v95 = v8 + 1;
    if (v14 > 8)
    {
      v14 = 0;
      if (v20 > 8)
      {
LABEL_24:
        v22 = 0;
        if (v19 != v21)
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v14 = qword_1001864A0[v14];
      if (v20 > 8)
      {
        goto LABEL_24;
      }
    }

    v22 = qword_1001864A0[v20];
    if (v19 != v21)
    {
LABEL_25:
      if (v22 < v14)
      {
        break;
      }

      goto LABEL_33;
    }

LABEL_29:
    v23 = [*(v17 + 40) v11[435]];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v25;

    v26 = [*(a1 + 40) v11[435]];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (v27 == v24 && v29 == a3)
    {

      goto LABEL_33;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      break;
    }

LABEL_33:
    a1 = v15 >> 62;
    if (v15 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (!v31)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    else
    {
      v31 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_6;
      }
    }

    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v32)
    {
      goto LABEL_65;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      a3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

      if (v33 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      a3 = *(v15 + 8 * v33 + 32);
    }

    v34 = *(a3 + 40);

    v35 = [v34 v11[435]];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = [*(v17 + 40) v11[435]];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (v36 == v40 && v38 == v42)
    {

LABEL_44:
      v11 = &selRef_btManagerAvailableSemaphore;
      if (a1)
      {
        v88 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v88 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = v94;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        a1 = v94;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v15 = v100;
      goto LABEL_8;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_44;
    }

    v11 = &selRef_btManagerAvailableSemaphore;
LABEL_7:
    a1 = v94;
LABEL_8:
    ++v8;
    v14 = v95;
    v16 = v90;
    if (v95 == v93)
    {

      a3 = v80;
      v8 = v79;
      goto LABEL_76;
    }
  }

  result = sub_100150A94(v17, v15);
  v88 = result;
  if ((v45 & 1) == 0)
  {

    a3 = v80;
    v8 = v79;
    if (v15 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = v88;
    if (result < v88)
    {
      __break(1u);
    }

    else if ((v88 & 0x8000000000000000) == 0)
    {

      sub_10003D760(v46, v46, a1);

      goto LABEL_76;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100153AEC(unint64_t a1)
{
  v2 = v1;
  v54 = type metadata accessor for Move(0);
  __chkstk_darwin(v54);
  v53 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10003C49C(&unk_1001FFEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v47[-v6];
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  v15 = OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue;
  v16 = *(v1 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue);
  *(v1 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue) = 1;
  sub_1001515E0(v16);
  sub_100152A38(a1, 0, 1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10003DD84(v7, &unk_1001FFEC0);
  }

  v48 = v16;
  v49 = v15;
  (*(v9 + 32))(v14, v7, v8);
  sub_1001530F0(a1, 0, v11);
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v52 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100180D00;
  v19 = *(a1 + 40);
  v20 = [v19 serialNumber];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10003DFBC();
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  v24 = IndexPath.section.getter();
  *(v18 + 96) = &type metadata for Int;
  *(v18 + 104) = &protocol witness table for Int;
  *(v18 + 72) = v24;
  v25 = IndexPath.row.getter();
  *(v18 + 136) = &type metadata for Int;
  *(v18 + 144) = &protocol witness table for Int;
  *(v18 + 112) = v25;
  v26 = IndexPath.section.getter();
  *(v18 + 176) = &type metadata for Int;
  *(v18 + 184) = &protocol witness table for Int;
  *(v18 + 152) = v26;
  v27 = IndexPath.row.getter();
  *(v18 + 216) = &type metadata for Int;
  *(v18 + 224) = &protocol witness table for Int;
  *(v18 + 192) = v27;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v28 = [v19 serialNumber];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = v54;
  v33 = *(v54 + 20);
  v50 = v9;
  v51 = v14;
  v34 = *(v9 + 16);
  v35 = v53;
  v34(v53 + v33, v14, v8);
  v36 = v35 + *(v32 + 24);
  v52 = v11;
  v34(v36, v11, v8);
  *v35 = v29;
  v35[1] = v31;
  v37 = OBJC_IVAR____TtC11Diagnostics11CardManager_changeQueue;
  swift_beginAccess();
  v38 = *(v2 + v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v37) = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = sub_1000D552C(0, v38[2] + 1, 1, v38);
    *(v2 + v37) = v38;
  }

  v41 = v38[2];
  v40 = v38[3];
  v42 = v50;
  if (v41 >= v40 >> 1)
  {
    v38 = sub_1000D552C((v40 > 1), v41 + 1, 1, v38);
    *(v2 + v37) = v38;
  }

  v56 = v54;
  v57 = &off_1001C9780;
  v43 = sub_10005BAD0(&v55);
  v44 = v53;
  sub_1001571FC(v53, v43, type metadata accessor for Move);
  v38[2] = v41 + 1;
  sub_100049F74(&v55, &v38[5 * v41 + 4]);
  sub_100081AB8(v44, type metadata accessor for Move);
  *(v2 + v37) = v38;
  swift_endAccess();
  v45 = *(v2 + v49);
  *(v2 + v49) = v48;
  sub_1001515E0(v45);
  v46 = *(v42 + 8);
  v46(v52, v8);
  return (v46)(v51, v8);
}

uint64_t sub_10015400C()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v50 - v7;
  v8 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = *(v9 + 64);
  v51 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v67 = OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber;
  v50 = (v11 + 63) >> 6;
  v64 = (v3 + 32);
  v58 = v3;
  v56 = v3 + 40;

  v14 = 0;
  v57 = v1;
  v52 = v9;
  do
  {
LABEL_5:
    if (!v13)
    {
      do
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_38;
        }

        if (v15 >= v50)
        {
        }

        v13 = *(v51 + 8 * v15);
        ++v14;
      }

      while (!v13);
      v14 = v15;
    }

    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = *(v9 + 56);
    v63 = *(*(v9 + 48) + v16);
    v18 = *(v17 + 8 * v16);
    if (v18 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 &= v13 - 1;
  }

  while (!v19);
  v53 = v14;
  v62 = v18 & 0xC000000000000001;
  v54 = v13;
  v55 = v18 & 0xFFFFFFFFFFFFFF8;

  v20 = 0;
  v21 = v2;
  v60 = v19;
  v61 = v18;
  while (v62)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_35;
    }

LABEL_22:
    v65 = v24;
    v66 = v23;
    v25 = [*(v23 + 40) serialNumber];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = v21;
    v30 = v59;
    IndexPath.init(row:section:)();
    v31 = v67;
    swift_beginAccess();
    v32 = *v64;
    v33 = v5;
    v34 = v30;
    v21 = v29;
    (*v64)(v5, v34, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v1 + v31);
    v36 = v68;
    *(v1 + v31) = 0x8000000000000000;
    v38 = sub_100064AFC(v26, v28);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_36;
    }

    v42 = v37;
    if (v36[3] >= v41)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v37)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_100143C34();
        if (v42)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_100141874(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_100064AFC(v26, v28);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_40;
      }

      v38 = v43;
      if (v42)
      {
LABEL_14:

        v22 = v68;
        v5 = v33;
        (*(v58 + 40))(v68[7] + *(v58 + 72) * v38, v33, v21);
        goto LABEL_15;
      }
    }

    v22 = v68;
    v68[(v38 >> 6) + 8] |= 1 << v38;
    v45 = (v22[6] + 16 * v38);
    *v45 = v26;
    v45[1] = v28;
    v5 = v33;
    v32((v22[7] + *(v58 + 72) * v38), v33, v21);
    v46 = v22[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_37;
    }

    v22[2] = v48;
LABEL_15:
    v1 = v57;
    *(v57 + v67) = v22;

    swift_endAccess();

    ++v20;
    if (v65 == v60)
    {
      v2 = v21;

      v9 = v52;
      v13 = v54;
      v14 = v53;
      goto LABEL_5;
    }
  }

  if (v20 >= *(v55 + 16))
  {
    goto LABEL_39;
  }

  v24 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    goto LABEL_22;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001544D8(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FFEC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100154954(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10003DD84(v4, &unk_1001FFEC0);
    return 3;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = IndexPath.section.getter();
    if (v10 > 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10;
      IndexPath.row.getter();
    }

    (*(v6 + 8))(v8, v5);
    return v11;
  }
}

uint64_t sub_100154694(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  result = sub_100068EB8(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    return v10;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v10 = *(v9 + 8 * a2 + 32);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100154768(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (!*(v13 + 16))
  {
    return 0;
  }

  v14 = sub_100064AFC(a1, a2);
  if (v15)
  {
    (*(v6 + 16))(v8, *(v13 + 56) + *(v6 + 72) * v14, v5);

    (*(v6 + 32))(v11, v8, v5);
    v16 = IndexPath.section.getter();
    if (v16 >= 3)
    {
      v18 = 0;
      v17 = 2;
    }

    else
    {
      v17 = v16;
      v18 = IndexPath.row.getter();
    }

    v20 = sub_100154694(v17, v18);
    (*(v6 + 8))(v11, v5);
    return v20;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100154954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(a1 + 40) serialNumber];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (*(v9 + 16) && (, v10 = sub_100064AFC(v5, v7), v12 = v11, , (v12 & 1) != 0))
  {
    v13 = *(v9 + 56);
    v14 = type metadata accessor for IndexPath();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a2, v13 + *(v15 + 72) * v10, v14);

    return (*(v15 + 56))(a2, 0, 1, v14);
  }

  else
  {

    v17 = type metadata accessor for IndexPath();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

id sub_100154B08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100154C08(char *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&a1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState] = a2;

  sub_1000A2A0C();
  v7 = *(v4 + OBJC_IVAR____TtC11Diagnostics11CardManager_deviceManager);
  v21[3] = type metadata accessor for DeviceManager();
  v21[4] = &off_1001C6908;
  v21[0] = v7;
  v8 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller;
  swift_beginAccess();
  v9 = v7;
  sub_1001196C4(v21, &a1[v8], &qword_1001FD060);
  swift_endAccess();
  [a1 setClipsToBounds:1];
  v10 = objc_opt_self();
  v11 = [v10 clearColor];
  [a1 setBackgroundColor:v11];

  v12 = [a1 contentView];
  v13 = [v10 clearColor];
  [v12 setBackgroundColor:v13];

  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v15 = &a1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler];
  v16 = *&a1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler];
  *v15 = sub_100157154;
  v15[1] = v14;
  v17 = a3;
  sub_10003C52C(v16);
  v18 = (*&a1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView] + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler);
  v19 = *v18;
  *v18 = sub_100157154;
  v18[1] = v14;

  return sub_10003C52C(v19);
}

char *sub_100154E10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (IndexPath.section.getter())
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    sub_10003C49C(&unk_1001FEAD0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10017EC00;
    v7 = sub_1000729F8();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_10003DFBC();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v10 = objc_allocWithZone(type metadata accessor for CardViewSessionCell());
  }

  else
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    sub_10003C49C(&unk_1001FEAD0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10017EC00;
    v12 = sub_1000729F8();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_10003DFBC();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v10 = objc_allocWithZone(type metadata accessor for CardViewPersistentCell());
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = [v10 initWithStyle:0 reuseIdentifier:v15];

  v17 = v16;
  sub_100154C08(v17, a1, a4);

  return v17;
}

uint64_t sub_100155078(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_opt_self();
  v7[4] = sub_10015715C;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100031FA8;
  v7[3] = &unk_1001C9608;
  v4 = _Block_copy(v7);
  v5 = a1;

  [v3 animateWithDuration:0 delay:v4 options:0 animations:0.25 completion:0.0];
  _Block_release(v4);
}

id sub_10015518C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10017EC00;
  v7 = IndexPath.description.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10003DFBC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  static os_log_type_t.default.getter();
  v10 = 2;
  os_log(_:dso:log:type:_:)();

  v11 = IndexPath.section.getter();
  if (v11 > 2)
  {
    v13 = 0;
  }

  else
  {
    v12 = v11;
    v13 = IndexPath.row.getter();
    v10 = v12;
  }

  v14 = sub_100154694(v10, v13);
  if (v14)
  {
    v15 = v14;
    v16 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardCells;
    swift_beginAccess();
    v17 = *(v3 + v16);

    v18 = sub_1001507AC(v15, v17);

    if (!v18)
    {
      v18 = sub_100154E10(v15, a2, v3, a1);
    }

    swift_beginAccess();
    v19 = *(v3 + v16);
    if ((v19 & 0xC000000000000001) == 0)
    {
      v24 = v18;
      goto LABEL_19;
    }

    if (v19 < 0)
    {
      v20 = *(v3 + v16);
    }

    else
    {
      v20 = v19 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = v18;
    result = __CocoaDictionary.count.getter();
    if (!__OFADD__(result, 1))
    {
      *(v3 + v16) = sub_100155FD8(v20, result + 1);
LABEL_19:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v3 + v16);
      sub_100142B78(v18, v15, isUniquelyReferenced_nonNull_native);
      *(v3 + v16) = v26;
      swift_endAccess();

      return v18;
    }

    __break(1u);
  }

  else
  {
    v23 = objc_allocWithZone(UITableViewCell);

    return [v23 init];
  }

  return result;
}

uint64_t sub_10015569C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_100064AFC(a1, a2);
    if (v10)
    {
      v11 = v9;
      v12 = *(v8 + 56);
      v13 = type metadata accessor for IndexPath();
      v14 = *(v13 - 8);
      (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);

      return (*(v14 + 56))(a3, 0, 1, v13);
    }
  }

  v16 = type metadata accessor for IndexPath();
  return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
}

uint64_t sub_10015597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (!*(v18 + 16))
  {
    return a4(1);
  }

  v19 = sub_100064AFC(a2, a3);
  if ((v20 & 1) == 0)
  {

    return a4(1);
  }

  (*(v11 + 16))(v13, *(v18 + 56) + *(v11 + 72) * v19, v10);

  (*(v11 + 32))(v16, v13, v10);
  v21 = IndexPath.section.getter();
  if (v21 >= 3)
  {
    v23 = 0;
    v22 = 2;
  }

  else
  {
    v22 = v21;
    v23 = IndexPath.row.getter();
  }

  v25 = sub_100154694(v22, v23);
  if (v25)
  {
    v26 = v25;
    type metadata accessor for CardState();
    swift_allocObject();
    v27 = sub_1000737F8(v26);
    v28 = swift_allocObject();
    v28[2] = a4;
    v28[3] = a5;
    v28[4] = v26;
    v29 = *(v27 + 56);
    *(v27 + 56) = sub_100156F74;
    *(v27 + 64) = v28;

    sub_10003C52C(v29);
    v30 = *(v27 + 19);
    *(v27 + 19) = 1;
    if ((v30 & 1) == 0)
    {
      v31 = *(v27 + 80);
      if ((v31 & 8) == 0)
      {
        *(v27 + 80) = v31 | 8;
      }

      sub_1000724B4();
    }

    sub_10007287C(v27);
  }

  else
  {
    a4(1);
  }

  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_100155C78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100064AFC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1001437E0();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1001563FC(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_100155D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100064AFC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100143C34();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for IndexPath();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_100156738(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for IndexPath();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_100155E80(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v13 = sub_100064FA0(a1);
    if (v14)
    {
      v4 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v17 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v4);
        sub_100156924(v4, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100143EB4();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_100155FD8(v5, v7);

  v9 = sub_100064FA0(a1);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100156924(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_100155FD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003C49C(&qword_100202588);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v21 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      v4 = v3;
      type metadata accessor for CardState();
      do
      {
        swift_dynamicCast();
        type metadata accessor for CardViewCell();
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          sub_100141BF4(v14 + 1, 1);
        }

        v2 = v21;
        Hasher.init(_seed:)();
        v5 = [*(v20 + 40) serialNumber];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.hash(into:)();

        result = Hasher._finalize()();
        v7 = v21 + 64;
        v8 = -1 << *(v21 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v21 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v21 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v10 == v16;
            if (v10 == v16)
            {
              v10 = 0;
            }

            v15 |= v17;
            v18 = *(v7 + 8 * v10);
          }

          while (v18 == -1);
          v11 = __clz(__rbit64(~v18)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v21 + 48) + 8 * v11) = v20;
        *(*(v21 + 56) + 8 * v11) = v19;
        ++*(v21 + 16);
        v12 = __CocoaDictionary.Iterator.next()();
        v4 = v13;
      }

      while (v12);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_10015624C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001563FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1001565AC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_100156738(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for IndexPath() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100156924(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v10 = *(v9 + 40);

      v11 = [v10 serialNumber];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.hash(into:)();

      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100156B0C(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __n128), uint64_t a5)
{
  v27 = a2;
  v28 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return a4(1, v13);
  }

  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if (v18)
  {
    return a4(1, v13);
  }

  v19 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v19)
  {
    return a4(1, v13);
  }

  sub_10003E110(0, &qword_1001FD040);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  v23 = v27;
  v24 = v28;
  v22[2] = v5;
  v22[3] = v23;
  v22[4] = v24;
  v22[5] = a4;
  v22[6] = a5;
  aBlock[4] = sub_100156F0C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C9568;
  v25 = _Block_copy(aBlock);
  v26 = v5;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001572DC(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v30 + 8))(v11, v9);
  return (*(v29 + 8))(v15, v12);
}

uint64_t sub_100156EC4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100156F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100156F34()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100156F74()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  v2 = *(v1 + 19);
  *(v1 + 19) = 0;
  if (v2 == 1)
  {
    v3 = *(v1 + 80);
    if ((v3 & 8) == 0)
    {
      *(v1 + 80) = v3 | 8;
    }

    sub_1000724B4();
  }
}

uint64_t sub_100156FCC(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_100068EB8(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  if (v7 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10015706C()
{
  v0 = IndexPath.section.getter();
  if (v0 > 2)
  {
    v2 = 0;
    v1 = 2;
  }

  else
  {
    v1 = v0;
    v2 = IndexPath.row.getter();
  }

  v3 = sub_100154694(v1, v2);
  if (!v3)
  {
    return 0;
  }

  v4 = [*(v3 + 40) serialNumber];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_10015711C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10015715C()
{
  v1 = *(v0 + 16);
  [v1 beginUpdates];
  [v1 endUpdates];
  v2 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v2, 0);
}

uint64_t sub_1001571FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100157284(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001572DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100157380()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100157410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IndexPath();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001574D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IndexPath();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100157574()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_100157664(int a1, int a2, int a3)
{
  if (qword_10020A340 == -1)
  {
    v3 = dword_10020A330 < a1;
    if (dword_10020A330 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_10015970C();
    a2 = v6;
    a3 = v5;
    v3 = dword_10020A330 < a1;
    if (dword_10020A330 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_10020A334 > a2)
  {
    return 1;
  }

  if (dword_10020A334 < a2)
  {
    return 0;
  }

  return dword_10020A338 >= a3;
}

uint64_t sub_100157724(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_10020A348 == -1)
  {
    if (qword_10020A350)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100159724();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10020A350)
    {
      return _availability_version_check();
    }
  }

  if (qword_10020A340 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10015970C();
    a3 = v10;
    a4 = v9;
    v8 = dword_10020A330 < v11;
    if (dword_10020A330 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10020A334 > a3)
      {
        return 1;
      }

      if (dword_10020A334 >= a3)
      {
        return dword_10020A338 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10020A330 < a2;
  if (dword_10020A330 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1001578B8(uint64_t result)
{
  v1 = qword_10020A350;
  if (qword_10020A350)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10020A350 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10020A330, &dword_10020A334, &dword_10020A338);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100157BEC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No serial numbers are present for paired airpods device %@", &v2, 0xCu);
}

void sub_100157C8C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to add Bluetooth device: %@", &v2, 0xCu);
}

void sub_100157D48(uint64_t a1, id *a2, NSObject *a3)
{
  v4 = *(a1 + 40);
  v5 = [*a2 description];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to switch to device: %@ with error: %@", &v6, 0x16u);
}

void sub_100157E84(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2048;
  *&v3[14] = a2;
  sub_10000CDF4(&_mh_execute_header, a2, a3, "ASTSession %@ ended without error, with reason: %ld", *v3, *&v3[8], *&v3[16]);
}

void sub_1001580CC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 action];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Unrecognized action %@", a1, 0xCu);
}

void sub_1001581B4(void *a1, NSObject *a2)
{
  v4 = [a1 domain];
  v5 = 138412546;
  v6 = v4;
  v7 = 2048;
  v8 = [a1 code];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Send auth info result failed with error: (domain = %@, code = %ld)", &v5, 0x16u);
}

void sub_100158420(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Session does not exist for serial numbers: %@, error: %@", &v4, 0x16u);
}

void sub_1001584F4(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 unsignedIntegerValue];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognised housing color returned with value %lu", &v3, 0xCu);
}

void sub_10015861C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unsupported watch case size %d. Falling back to default size", v2, 8u);
}

void sub_1001586C8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[Localization] [%@] => [%@]", &v3, 0x16u);
}

void sub_10015878C()
{
  v1[0] = 136315394;
  sub_100012C44();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s Failed to retrieve remote object proxy: %@", v1, 0x16u);
}

void sub_10015880C()
{
  v1[0] = 136315394;
  sub_100012C44();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s Failed to retrieve remote object proxy: %@", v1, 0x16u);
}

void sub_100158948(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error downloading asset: %@", &v3, 0xCu);
}

void sub_1001589EC(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get in-box update mode status with error: %@", &v4, 0xCu);
}

void sub_100158B18(id *a1)
{
  v1 = [*a1 destination];
  sub_10001B264(&_mh_execute_header, v2, v3, "Cannot communicate to destination: %@; dropping message: %@;", v4, v5, v6, v7, 2u);
}

void sub_100158D10(uint64_t a1)
{
  v1 = [*(a1 + 64) destination];
  sub_10001B24C();
  sub_10001B264(&_mh_execute_header, v2, v3, "Response block is nil. Dropping response message: %@; for destination: %@", v4, v5, v6, v7, v8);
}

void sub_100158DA4(uint64_t a1)
{
  v1 = [*(a1 + 40) destination];
  sub_10001B24C();
  sub_10001B264(&_mh_execute_header, v2, v3, "Round trip timer expired for message: %@; destination: %@", v4, v5, v6, v7, v8);
}

void sub_100158E34(uint64_t a1)
{
  v1 = [*(a1 + 40) destination];
  sub_10001B24C();
  sub_10001B264(&_mh_execute_header, v2, v3, "Response block is nil. Dropping response message: %@; for destination: %@", v4, v5, v6, v7, v8);
}

void sub_100158EC4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Ignoring device state update since it is stale. last = %@, this = %@", &v3, 0x16u);
}

void sub_100159184(void *a1, NSObject *a2)
{
  v3 = [a1 path];
  sub_10001FA0C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create file handle from file at path = %@.", v4, 0xCu);
}

void sub_100159470(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Connection %@ not established because the process is not appropriately entitled.", &v2, 0xCu);
}

void sub_100159570(void *a1)
{
  v1 = [a1 airpodsDevice];
  sub_10002AD30(&_mh_execute_header, v2, v3, "Timed out waiting for AirPods device %@ to connect", v4, v5, v6, v7, 2u);
}

void sub_1001595F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "allowSessionAccessoryDisconnectForDuration called with an invalid duration of %@. Ignoring request. If the accessory disconnects, the session will end. This is a bug in the calling DK.", &v2, 0xCu);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  v4 = _CGSizeApplyAffineTransform(size, t);
  height = v4.height;
  width = v4.width;
  result.height = height;
  result.width = width;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}