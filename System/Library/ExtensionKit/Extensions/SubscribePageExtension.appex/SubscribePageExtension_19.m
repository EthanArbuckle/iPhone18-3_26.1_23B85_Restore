uint64_t sub_1002161B4()
{
  v1 = v0;
  v2 = sub_100750354();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100750304();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074A014();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v54 - v8;
  v9 = sub_1007479B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = sub_100747064();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LockupCollectionSearchResultContentView();
  v81.receiver = v0;
  v81.super_class = v19;
  objc_msgSendSuper2(&v81, "layoutSubviews");
  [v0 bounds];
  v61 = v20;
  [v0 layoutMargins];
  v70 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v15, qword_10097E3A8);
  v22 = [v1 traitCollection];
  (*(v16 + 16))(v18, v21, v15);
  v23 = sub_100746FD4();
  if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v26 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v26 = qword_10093FF58;
    }

    v27 = sub_10000D0FC(v9, v26);
    v28 = v58;
    (*(v10 + 16))(v58, v27, v9);
    (*(v10 + 32))(v14, v28, v9);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v10 + 8))(v14, v9);
  }

  sub_100746F14();

  (*(v16 + 8))(v18, v15);
  v29 = v70 - 1;
  if (__OFSUB__(v70, 1))
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  v30 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_iconHeadingView);
  v80[3] = type metadata accessor for ImageHeadingView();
  v80[4] = &protocol witness table for UIView;
  v80[0] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_titleHeadingView);
  result = type metadata accessor for SearchHeadingView();
  v79[3] = result;
  v79[4] = &protocol witness table for UIView;
  v79[0] = v31;
  v33 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView);
  if (!v33)
  {
    __break(1u);
    return result;
  }

  v58 = v1;
  v77[0] = v33;
  sub_100016C60(0, &qword_100929830);
  v34 = v30;
  v35 = v31;
  sub_1007503E4();
  v18 = v62;
  v29 = v59;
  v1 = v60;
  if (qword_100920608 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v36 = sub_100750534();
  v37 = sub_10000D0FC(v36, qword_10092E138);
  v38 = *(v36 - 8);
  v70 = *(v38 + 16);
  v57 = v38 + 16;
  v70(v29, v37, v36);
  v39 = v1[13];
  v56 = enum case for FontSource.useCase(_:);
  v55 = v39;
  v39(v29);
  v40 = sub_100750B04();
  v77[3] = v40;
  v77[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v77);
  v75 = v18;
  v76 = &protocol witness table for FontSource;
  v41 = sub_10000D134(v74);
  v42 = v1[2];
  v42(v41, v29, v18);
  sub_100750B14();
  v43 = v1[1];
  v43(v29, v18);
  if (qword_100920618 != -1)
  {
    swift_once();
  }

  v44 = sub_10000D0FC(v36, qword_10092E178);
  v70(v29, v44, v36);
  v55(v29, v56, v18);
  v75 = v40;
  v76 = &protocol witness table for StaticDimension;
  sub_10000D134(v74);
  v72 = v18;
  v73 = &protocol witness table for FontSource;
  v45 = sub_10000D134(v71);
  v42(v45, v29, v18);
  sub_100750B14();
  v43(v29, v18);
  v72 = &type metadata for CGFloat;
  v73 = &protocol witness table for CGFloat;
  v71[0] = 0x4030000000000000;
  v46 = v64;
  sub_10074A004();
  v48 = v65;
  v47 = v66;
  (*(v65 + 16))(v63, v46, v66);
  sub_10000C824(v80, v77);
  sub_10000C824(v79, v74);
  sub_10000C824(v78, v71);
  sub_10074A034();
  swift_allocObject();
  v77[0] = sub_10074A024();
  (*(v48 + 8))(v46, v47);
  sub_10000C620(v78);
  sub_10000C620(v79);
  sub_10000C620(v80);
  sub_10021ABB8(&qword_10092E2D8, 255, &type metadata accessor for SearchLockupListLayout);
  v49 = v67;
  v50 = v58;
  sub_100751124();
  (*(v68 + 8))(v49, v69);
  v51 = &v50[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock];
  swift_beginAccess();
  v52 = *v51;
  if (*v51)
  {

    v52(v53);
    sub_1000164A8(v52);
  }
}

id sub_100216C14()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_10021A360;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002B6430;
  v7[3] = &unk_10086D048;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

id sub_100216D40(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = Strong[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration];
  v6 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8];
  [Strong layoutMargins];
  v9 = sub_10021A380(v5, v6, a2, v7, v8);
  if (v9)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10021A82C;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005D5E28;
    aBlock[3] = &unk_10086D070;
    v11 = _Block_copy(aBlock);
    v12 = v9;

    [v12 setVisibleItemsInvalidationHandler:v11];

    _Block_release(v11);
    v4 = v12;
  }

  return v9;
}

void sub_100216EB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver);
    v2 = Strong;

    if (v1)
    {
      sub_10074B544();
      sub_100744F54();
    }
  }
}

uint64_t sub_1002171A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000C518(&qword_10092E2A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v63 - v7;
  v9 = sub_10074C814();
  sub_10021ABB8(&qword_100936A70, 255, &type metadata accessor for LockupCollectionSearchResult);
  result = sub_1007468B4();
  v11 = v67;
  if (!v67)
  {
    return result;
  }

  v63[1] = v9;
  v64 = v8;
  v65 = v6;
  v66 = v5;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_objectGraph] = a2;

  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_iconHeadingView];
  sub_10074C804();
  v13 = *(v12 + OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel);
  v14 = sub_100753064();

  [v13 setText:v14];

  v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_titleHeadingView];
  sub_10074C7F4();
  v16 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel);
  v17 = sub_100753064();

  [v16 setText:v17];

  v18 = sub_10074C7C4();
  if (v18)
  {
    v19 = v18;
    sub_10074ECB4();
    if (v20)
    {
      v21 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton);
      v22 = sub_100753064();

      [v21 setTitle:v22 forState:0];

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v19;
      v25 = (v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
      v26 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
      *v25 = sub_10021A320;
      v25[1] = v24;

      sub_1000164A8(v26);

      goto LABEL_7;
    }
  }

  [*(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton) setTitle:0 forState:0];
  v27 = (v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
  v28 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
  *v27 = 0;
  v27[1] = 0;
  sub_1000164A8(v28);
LABEL_7:
  swift_getKeyPath();
  sub_100746914();

  v29 = v67;
  v30 = sub_100753804();
  v31 = sub_1007537D4();

  v32 = 4;
  if (v31)
  {
    v32 = 2;
  }

  if (v30)
  {
    v33 = 1;
  }

  else
  {
    v33 = v32;
  }

  result = sub_1002160D8(((v31 & 1) == 0), v33);
  v34 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v34)
  {
    __break(1u);
    goto LABEL_57;
  }

  swift_allocObject();
  swift_weakInit();
  v35 = objc_allocWithZone(sub_10000C518(&unk_10092E2B0));
  v36 = v34;
  v37 = sub_100751884();
  v38 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource;
  v39 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource] = v37;
  v40 = v37;

  v41 = swift_allocObject();
  *(v41 + 16) = (v31 & 1) == 0;
  *(v41 + 24) = v33;
  sub_100751894();

  if ((v31 & 1) == 0)
  {
    v44 = v11;
    v45 = sub_10074C7E4();
    v46 = v45;
    v47 = v45 & 0xFFFFFFFFFFFFFF8;
    v48 = v45 >> 62;
    if (!(v45 >> 62))
    {
      v49 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v49 >= v33)
      {
        v50 = v33;
      }

      else
      {
        v50 = *(v47 + 16);
      }

      if (v49 >= v50)
      {
LABEL_20:
        if ((v46 & 0xC000000000000001) != 0 && v50)
        {
          sub_10074EFD4();

          v51 = 0;
          do
          {
            v52 = v51 + 1;
            sub_100754554(v51);
            v51 = v52;
          }

          while (v50 != v52);
        }

        else
        {
        }

        if (v48)
        {
          v44 = sub_100754674();
          v31 = v53;
          v33 = v54;
          v50 = v55;

          if (v50)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v33 = 0;
          v44 = v46 & 0xFFFFFFFFFFFFFF8;
          v31 = (v46 & 0xFFFFFFFFFFFFFF8) + 32;
          v50 = (2 * v50) | 1;
          if (v50)
          {
LABEL_31:
            sub_100754774();
            swift_unknownObjectRetain_n();
            v56 = swift_dynamicCastClass();
            if (!v56)
            {
              swift_unknownObjectRelease();
              v56 = _swiftEmptyArrayStorage;
            }

            v57 = v56[2];

            if (!__OFSUB__(v50 >> 1, v33))
            {
              if (v57 == (v50 >> 1) - v33)
              {
                v58 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                v43 = v64;
                if (v58)
                {
LABEL_37:

                  v42 = sub_10074C7D4();
                  goto LABEL_38;
                }

LABEL_36:
                swift_unknownObjectRelease();
                goto LABEL_37;
              }

              goto LABEL_55;
            }

LABEL_54:
            __break(1u);
LABEL_55:
            swift_unknownObjectRelease_n();
          }
        }

        sub_1006314BC(v44, v31, v33, v50);
        v43 = v64;
        goto LABEL_36;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v45 < 0)
    {
      v44 = v45;
    }

    else
    {
      v44 = v45 & 0xFFFFFFFFFFFFFF8;
    }

    v31 = sub_100754664();
    result = sub_100754664();
    if ((result & 0x8000000000000000) == 0)
    {
      if (v31 >= v33)
      {
        v62 = v33;
      }

      else
      {
        v62 = v31;
      }

      if (v31 >= 0)
      {
        v50 = v62;
      }

      else
      {
        v50 = v33;
      }

      if (sub_100754664() >= v50)
      {
        goto LABEL_20;
      }

      goto LABEL_53;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  v42 = v11;
  v43 = v64;
LABEL_38:
  sub_10000C518(&unk_1009231A0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1007A5CF0;
  *(v59 + 32) = v42;
  swift_getKeyPath();
  sub_10021ABB8(&qword_10092E2C0, 255, &type metadata accessor for LockupCollectionSearchResult);
  sub_10021ABB8(&unk_10092E2C8, 255, &type metadata accessor for Lockup);

  sub_1007505D4();

  v60 = *&v3[v38];
  if (v60)
  {
    v61 = v60;
    sub_1007518C4();
  }

  [v3 setNeedsLayout];

  return (*(v65 + 8))(v43, v66);
}

void sub_100217928(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_objectGraph);
    v8 = Strong;

    if (v7)
    {
      v9 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) == 1)
      {

        sub_10000C8CC(v5, &unk_100923960);
      }

      else
      {
        sub_1003C0E00(a2, 1, v7, v5);

        (*(v10 + 8))(v5, v9);
      }
    }
  }
}

char *sub_100217AC8(void *a1)
{
  v2 = sub_10074F314();
  __chkstk_darwin(v2 - 8);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - v9;
  v11 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v11 - 8);
  v13 = v41 - v12;
  v14 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v14 - 8);
  v16 = v41 - v15;
  v17 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v17 - 8);
  v43 = v41 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v41[3] = v4;
  v42 = v10;
  v20 = Strong;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  sub_1007539D4();
  v21 = sub_100753064();

  isa = sub_100741704().super.isa;
  v23 = [a1 dequeueReusableCellWithReuseIdentifier:v21 forIndexPath:isa];

  v24 = swift_dynamicCastClass();
  if (v24)
  {
    sub_10000C518(&qword_100937CD0);
    sub_100752564();
    v25 = v44;
    sub_1007442C4();
    sub_100752764();
    v26 = v20;
    sub_100752D34();
    v41[2] = v44;
    v27 = sub_100742E24();
    v28 = v43;
    (*(*(v27 - 8) + 56))(v43, 1, 1, v27);
    v29 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension35SmallSearchLockupCollectionViewCell_lockupView];
    v30 = sub_10000C518(&unk_10092EEA0);
    (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
    v31 = sub_100745E94();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
    v32 = sub_10000C518(&unk_100925560);
    v33 = v42;
    (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
    v34 = sub_10074F8B4();
    (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
    sub_100656038(v25, v29, v16, v26, 0, 0, v28, v13, v7, v33);
    sub_10000C8CC(v7, &unk_100925520);
    v29[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v29 setNeedsLayout];
    sub_10000C8CC(v33, &unk_100925990);
    sub_10000C8CC(v13, &unk_1009259A0);
    sub_10000C8CC(v16, &unk_100925540);
    v35 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v36 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
    sub_100743344();
    v37 = sub_1007433C4();
    sub_10021ABB8(&qword_100925570, 255, &type metadata accessor for ArtworkView);
    v41[1] = v37;
    sub_100744274();
    v42 = v25;
    if (sub_10074EF24())
    {
      v41[0] = v35;
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v38 = sub_100747064();
      sub_10000D0FC(v38, qword_10097E3A8);
      sub_100746F34();
      [v36 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v36 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();
      v39 = *&v29[v41[0]];
      sub_100744204();
    }

    [v24 setNeedsLayout];

    sub_10000C8CC(v43, &unk_100925530);
  }

  else
  {
  }

  return v24;
}

uint64_t sub_100218240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_100753064();
  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007539D4();
  v9 = sub_100753064();

  isa = sub_100741704().super.isa;
  v11 = [a1 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  v12 = swift_dynamicCastClass();
  v13 = v12;
  if (!v12)
  {

    return v13;
  }

  v14 = v12 + OBJC_IVAR____TtC22SubscribePageExtension27SeparatorSpacerReusableView_separatorInsets;
  *v14 = xmmword_1007B2E60;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  result = sub_100741774();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!a6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL || a6 != -1)
  {
    [v13 setHidden:(result + 1) % a6 == 0];
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_10021838C(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_100752914();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E290);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_10000C518(&qword_100937CD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = sub_1007417F4();
  v55 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v50 = v14;
  v48 = v11;
  v57 = Strong;
  v46 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView;
  v19 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = [v19 indexPathsForVisibleItems];
  v21 = sub_1007532A4();

  v56 = v21;
  v22 = v48;
  v54 = *(v21 + 16);
  if (!v54)
  {
LABEL_21:

    return;
  }

  v23 = 0;
  v52 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v53 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource;
  v51 = v55 + 16;
  v49 = (v12 + 48);
  v45 = (v12 + 32);
  v42 = (v47 + 6);
  v39 = (v47 + 4);
  v38 = (v47 + 1);
  v43 = (v12 + 8);
  v24 = (v55 + 8);
  v47 = (v12 + 56);
  v40 = v7;
  v44 = v10;
  while (v23 < *(v56 + 16))
  {
    (*(v55 + 16))(v17, v52 + *(v55 + 72) * v23, v15);
    v25 = *&v57[v53];
    if (!v25)
    {
      (*v24)(v17, v15);
      (*v47)(v10, 1, 1, v22);
LABEL_6:
      sub_10000C8CC(v10, &unk_10092E290);
      goto LABEL_7;
    }

    v26 = v25;
    sub_1007518A4();

    if ((*v49)(v10, 1, v22) == 1)
    {
      (*v24)(v17, v15);
      goto LABEL_6;
    }

    v27 = v10;
    v28 = v15;
    v29 = v4;
    (*v45)(v50, v27, v22);
    v30 = *&v57[v46];
    if (!v30)
    {
      goto LABEL_24;
    }

    v31 = v30;
    isa = sub_100741704().super.isa;
    v33 = [v31 cellForItemAtIndexPath:isa];

    if (v33)
    {
      swift_getKeyPath();
      v4 = v29;
      v34 = v48;
      v35 = v50;
      sub_100752554();

      if ((*v42)(v4, 1, v5) == 1)
      {

        (*v43)(v35, v34);
        (*v24)(v17, v28);
        sub_10000C8CC(v4, &unk_100925380);
        v22 = v34;
        v15 = v28;
      }

      else
      {
        v36 = v40;
        (*v39)(v40, v4, v5);
        sub_100016C60(0, &qword_100925390);
        sub_100753A94();
        if ((v58 & 1) == 0)
        {
          sub_100749544();
        }

        (*v38)(v36, v5);
        v22 = v48;
        (*v43)(v50, v48);
        v15 = v28;
        (*v24)(v17, v28);
      }
    }

    else
    {
      v22 = v48;
      (*v43)(v50, v48);
      (*v24)(v17, v28);
      v4 = v29;
      v15 = v28;
    }

    v10 = v44;
LABEL_7:
    if (v54 == ++v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_100218A88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupCollectionSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for LockupCollectionSearchResultContentView.ListConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LockupCollectionSearchResultContentView.ListConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void (*sub_100218C84(uint64_t **a1))(void *a1)
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
  v2[4] = sub_100215A78(v2);
  return sub_100018728;
}

uint64_t sub_100218CF4()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_100218D50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

void (*sub_100218E10(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_100218FA8;
}

uint64_t sub_100218EE8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10021ABB8(&qword_10092E278, a2, type metadata accessor for LockupCollectionSearchResultContentView);
  result = sub_10021ABB8(&unk_10092E280, v3, type metadata accessor for LockupCollectionSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100218F6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100218FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), unsigned int a7, void (*a8)(char *, uint64_t, uint64_t), void *a9, uint64_t a10)
{
  v88 = a8;
  v87 = a7;
  v84 = a5;
  v85 = a6;
  v81 = a3;
  v82 = a4;
  v98 = a2;
  v80 = a1;
  v90 = sub_100750304();
  v86 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074A014();
  v93 = *(v11 - 8);
  v94 = v11;
  __chkstk_darwin(v11);
  v91 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = &v71 - v14;
  v97 = sub_10074CD14();
  v99 = *(v97 - 8);
  __chkstk_darwin(v97);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ImageHeadingView();
  if (qword_100920600 != -1)
  {
    swift_once();
  }

  v17 = qword_10092E130;
  if (qword_100920608 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_10092E138);
  if (qword_100920610 != -1)
  {
    swift_once();
  }

  v20 = sub_100016C60(0, &qword_100923AB0);
  v21 = [a9 traitCollection];
  v96 = v20;
  v22 = sub_100753C14();

  v23 = objc_opt_self();
  v78 = v22;
  v75 = [v23 configurationWithFont:v22];
  v24 = [v17 imageByApplyingSymbolConfiguration:?];
  v25 = v24;
  v95 = v18;
  if (v24)
  {
    [v24 size];
  }

  v26 = sub_100750F34();
  swift_allocObject();
  v27 = sub_100750F14();

  v28 = [a9 traitCollection];
  v83 = v19;
  sub_100753C14();

  v29 = sub_10074F3F4();
  *(&v109 + 1) = v29;
  v77 = sub_10021ABB8(&qword_10092AC70, 255, &type metadata accessor for Feature);
  *&v110 = v77;
  v30 = sub_10000D134(&v108);
  v31 = *(v29 - 8);
  v32 = *(v31 + 104);
  v76 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v73 = v31 + 104;
  v74 = v32;
  v32(v30);
  sub_10074FC74();
  sub_10000C620(&v108);
  sub_10074CD04();
  v33 = sub_10074CCF4();
  v35 = v34;
  v36 = *(v99 + 8);
  v99 += 8;
  v72 = v36;
  v36(v16, v97);
  v37 = *(v35 + 8);

  swift_unknownObjectRetain();
  sub_100380868(v27, &protocol witness table for LayoutViewPlaceholder, v33, v37, qword_10092E150, &v108);

  swift_unknownObjectRelease();
  sub_1001A41D4(&v108, &v113);
  v38 = swift_allocObject();
  sub_100219FC4(&v113, (v38 + 16));
  swift_allocObject();
  v98 = sub_100750EF4();

  swift_unknownObjectRelease();

  sub_10000C620(&v108);
  if (qword_100920618 != -1)
  {
    swift_once();
  }

  v39 = v95;
  v40 = sub_10000D0FC(v95, qword_10092E178);
  if (qword_100920620 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v39, qword_10092E190);
  if (qword_100920628 != -1)
  {
    swift_once();
  }

  v41 = [a9 traitCollection];
  v80 = v40;
  sub_100753C14();

  *(&v109 + 1) = v29;
  *&v110 = v77;
  v42 = sub_10000D134(&v108);
  v74(v42, v76, v29);
  sub_10074FC74();
  sub_10000C620(&v108);
  sub_10074CD04();
  v43 = sub_10074CCF4();
  v45 = v44;
  v72(v16, v97);
  v46 = swift_allocObject();
  v47 = v85;
  *(v46 + 16) = v84;
  *(v46 + 24) = v47;
  swift_allocObject();

  v48 = sub_100750EF4();
  sub_1001BD96C(&unk_10092E1A8, &v108);
  v49 = swift_allocObject();
  v50 = v111;
  *(v49 + 48) = v110;
  *(v49 + 64) = v50;
  *(v49 + 80) = v112;
  v51 = v109;
  *(v49 + 16) = v108;
  *(v49 + 32) = v51;
  *(v49 + 96) = v43;
  *(v49 + 104) = v45;
  *(v49 + 112) = v48;
  swift_allocObject();
  v52 = sub_100750EF4();
  v53 = swift_allocObject();
  *(v53 + 16) = a10;
  *(v53 + 24) = v87 & 1;
  *(v53 + 32) = v88;
  swift_allocObject();
  v99 = sub_100750EF4();
  *(&v109 + 1) = v26;
  *&v110 = &protocol witness table for LayoutViewPlaceholder;
  v107[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v108 = v98;
  v114 = v26;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  *&v113 = v52;
  v97 = v52;
  v107[3] = v26;
  v107[0] = v99;
  v54 = *(v39 - 8);
  v88 = *(v54 + 16);
  v96 = v54 + 16;
  v55 = v39;
  v56 = v89;
  v88(v89, v83, v55);
  v87 = enum case for FontSource.useCase(_:);
  v57 = v86;
  v85 = *(v86 + 104);
  v58 = v90;
  v85(v56);
  v59 = sub_100750B04();
  v106[3] = v59;
  v106[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v106);
  v104 = v58;
  v105 = &protocol witness table for FontSource;
  v60 = sub_10000D134(v103);
  v61 = *(v57 + 16);
  v61(v60, v56, v58);

  sub_100750B14();
  v62 = *(v57 + 8);
  v62(v56, v58);
  v88(v56, v80, v95);
  (v85)(v56, v87, v58);
  v104 = v59;
  v105 = &protocol witness table for StaticDimension;
  sub_10000D134(v103);
  v101 = v58;
  v102 = &protocol witness table for FontSource;
  v63 = sub_10000D134(v100);
  v61(v63, v56, v58);
  sub_100750B14();
  v62(v56, v58);
  v101 = &type metadata for CGFloat;
  v102 = &protocol witness table for CGFloat;
  v100[0] = 0x4030000000000000;
  v64 = v92;
  sub_10074A004();
  v66 = v93;
  v65 = v94;
  (*(v93 + 16))(v91, v64, v94);
  sub_10000C824(&v108, v106);
  sub_10000C824(&v113, v103);
  sub_10000C824(v107, v100);
  sub_10074A034();
  swift_allocObject();
  v67 = sub_10074A024();
  (*(v66 + 8))(v64, v65);
  sub_10000C620(v107);
  sub_10000C620(&v113);
  sub_10000C620(&v108);
  *&v108 = v67;
  sub_10021ABB8(&qword_10092E2A0, 255, &type metadata accessor for SearchLockupListLayout);
  sub_100750404();
  v69 = v68;

  return v69;
}

double sub_100219C40()
{
  v1 = sub_100747C14();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074F704();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074C814();
  sub_10021ABB8(&qword_100936A70, 255, &type metadata accessor for LockupCollectionSearchResult);
  sub_1007468B4();
  if (!v28)
  {
    return 0.0;
  }

  v26 = v3;
  v27 = v2;
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  v25 = v0;

  sub_10074F6A4();
  swift_getKeyPath();
  sub_100746914();

  v6 = v28;
  v7 = sub_100753804();
  v8 = sub_1007537D4();

  v9 = 4;
  if (v8)
  {
    v9 = 2;
  }

  if (v7)
  {
    v9 = 1;
  }

  v24 = v9;
  HIDWORD(v23) = v8 ^ 1;
  v10 = sub_10074C804();
  v12 = v11;
  v13 = sub_10074C7F4();
  v15 = v14;
  if (sub_10074C7C4())
  {
    v16 = sub_10074ECB4();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_10074F674();
  v20 = sub_10007DC04();
  swift_getObjectType();
  sub_100218FD4(v10, v12, v13, v15, v16, v18, BYTE4(v23) & 1, v24, v20, v25);
  v19 = v21;
  swift_unknownObjectRelease();

  (*(v26 + 8))(v5, v27);
  return v19;
}

uint64_t sub_100219F8C()
{
  sub_10000C620(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

_OWORD *sub_100219FC4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100219FE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021A024()
{
  sub_10000C620(v0 + 16);
  sub_10000C620(v0 + 56);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

void sub_10021A094(void *a1)
{
  v3 = *(v1 + 32);
  swift_getObjectType();
  sub_10021A1E0(v3, a1);
}

void sub_10021A0FC()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_compoundScrollObserver;
  v3 = objc_allocWithZone(sub_100749AF4());
  *(v0 + v2) = sub_100749AE4();
  sub_100754644();
  __break(1u);
}

void sub_10021A1E0(uint64_t a1, void *a2)
{
  type metadata accessor for SmallLockupView();
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v4 = sub_100747064();
  v5 = sub_10000D0FC(v4, qword_10097E3A8);
  sub_1001CF184(v5, a2);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }
}

uint64_t sub_10021A2C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10021A328()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021A368(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10021A380(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007539D4();
  v15 = v8;
  v16 = sub_100753064();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v41 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000C518(&unk_1009231A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A5CF0;
  *(v21 + 32) = v17;
  sub_100016C60(0, &unk_10092E470);
  v22 = v17;
  isa = sub_100753294().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v28 = v27;
    swift_unknownObjectRelease();
    v10 = v28 - a4 - a5;
    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v41];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (a1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_10021A834()
{
  v1 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_10000C518(&unk_10092E290);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_10000C518(&qword_100937CD0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_objectGraph);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource);
    if (v13)
    {

      v14 = v13;
      sub_1007518A4();

      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v11, v6, v7);
        sub_100752564();
        v17 = sub_10074EDC4();

        if (!v17)
        {
          (*(v8 + 8))(v11, v7);

          return;
        }

        v18 = sub_10000C518(&unk_100923210);
        sub_1007526C4();
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(v3, 1, v18) != 1)
        {
          sub_1003C0E00(v17, 1, v12, v3);

          (*(v8 + 8))(v11, v7);
          (*(v19 + 8))(v3, v18);
          return;
        }

        (*(v8 + 8))(v11, v7);

        v15 = &unk_100923960;
        v16 = v3;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7, v9);
    }

    v15 = &unk_10092E290;
    v16 = v6;
LABEL_7:
    sub_10000C8CC(v16, v15);
  }
}

uint64_t sub_10021ABB8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10021AD20()
{
  result = qword_10092E2E0;
  if (!qword_10092E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E2E0);
  }

  return result;
}

uint64_t type metadata accessor for ScrollablePillView()
{
  result = qword_10092E300;
  if (!qword_10092E300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10021AE1C()
{
  if (qword_100920A08 != -1)
  {
    swift_once();
  }

  v1 = qword_10097FC88;
  qword_10097E780 = qword_10097FC88;

  return v1;
}

uint64_t sub_10021AE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1007539A4();
  sub_1000746BC(a1, &v24);
  sub_10000C824(a2, v20);
  if (qword_100920630 != -1)
  {
    swift_once();
  }

  v6 = qword_10097E780;
  v22 = &type metadata for SearchLinkLayout;
  v23 = sub_10007472C();
  v7 = swift_allocObject();
  v21 = v7;
  v8 = sub_1000747D0();
  v9 = swift_allocObject();
  sub_10000C824(v20, v9 + 16);
  sub_1000746BC(&v24, &v18);
  if (v19)
  {
    sub_100012160(&v18, v17);
    v10 = swift_allocObject();
    sub_100012160(v17, v10 + 16);
    v11 = v6;
    sub_10000C620(v20);
    sub_10007485C(&v24);
    v12 = &type metadata for AutoAdjustingPlaceable;
    v13 = v8;
  }

  else
  {
    v14 = v6;
    sub_10000C620(v20);
    sub_10007485C(&v24);
    v12 = 0;
    v13 = 0;
    v10 = 0;
  }

  v7[2] = v10;
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = v12;
  v7[6] = v13;
  v7[7] = v9;
  v7[10] = &type metadata for AutoAdjustingPlaceable;
  v7[11] = v8;
  v7[12] = v6;
  v7[13] = 0x4014000000000000;
  v25 = sub_1007511A4();
  v26 = &protocol witness table for Margins;
  sub_10000D134(&v24);
  sub_100751194();
  a3[3] = &type metadata for AutoAdjustingPlaceable;
  a3[4] = v8;
  v15 = swift_allocObject();
  *a3 = v15;
  return sub_100012160(&v24, v15 + 16);
}

char *sub_10021B0B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v54 = sub_100750E94();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  __chkstk_darwin(v15);
  v17 = v53 - v16;
  __chkstk_darwin(v18);
  v53[1] = v53 - v19;
  v20 = qword_10092E2F0;
  *&v4[v20] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = qword_10092E2F8;
  sub_100750614();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = type metadata accessor for ScrollablePillView();
  v56.receiver = v4;
  v56.super_class = v22;
  v23 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = [v27 layer];
  [v28 setCornerCurve:kCACornerCurveContinuous];

  v29 = [v27 layer];
  [v27 bounds];
  [v29 setCornerRadius:CGRectGetHeight(v57) * 0.5];

  v30 = [v27 layer];
  [v30 setBorderWidth:1.0];

  [v27 setNeedsDisplay];
  v31 = [v27 layer];
  if (qword_1009209F0 != -1)
  {
    swift_once();
  }

  v32 = [qword_10097FC70 CGColor];
  [v31 setBorderColor:v32];

  [v27 setNeedsDisplay];
  v33 = qword_10092E2F0;
  v34 = qword_1009209F8;
  v35 = *&v27[qword_10092E2F0];
  if (v34 != -1)
  {
    swift_once();
  }

  [v35 setTintColor:qword_10097FC78];

  v36 = *&v27[v33];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  sub_100743224();

  v40 = *&v27[v33];
  sub_1007432A4();

  v41 = qword_100920630;
  v42 = *&v27[v33];
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = [objc_opt_self() configurationWithTextStyle:qword_10097E780 scale:2];
  sub_1007432D4();

  [v27 addSubview:*&v27[v33]];
  v44 = qword_10092E2F8;
  v45 = qword_1009209E0;
  v46 = *&v27[qword_10092E2F8];
  if (v45 != -1)
  {
    swift_once();
  }

  [v46 setTextColor:qword_10097FC60];

  v47 = *&v27[v44];
  v48 = [v27 traitCollection];

  sub_100750E84();
  sub_100750DF4();
  v49 = *(v9 + 8);
  v50 = v11;
  v51 = v54;
  v49(v50, v54);
  sub_100750E74();
  v49(v14, v51);
  sub_100750E64();
  v49(v17, v51);
  sub_1007505F4();

  [v27 addSubview:*&v27[v44]];
  sub_10021C300();
  sub_100753844();
  sub_100753D44();

  swift_unknownObjectRelease();

  return v27;
}

void sub_10021B6F4(uint64_t a1)
{
  v2 = qword_10092E2F0;
  *(a1 + v2) = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_10092E2F8;
  sub_100750614();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100754644();
  __break(1u);
}

uint64_t sub_10021B7B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + qword_10092E2F0);
  v5 = sub_100743334();
  if (v5)
  {

    v6 = sub_1007433C4();
    v7 = sub_10021C34C(&qword_10092E370, &type metadata accessor for ArtworkView);
    v5 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v32[1] = 0;
    v32[2] = 0;
  }

  v32[0] = v5;
  v32[3] = v6;
  v32[4] = v7;
  v8 = *(v2 + qword_10092E2F8);
  v31[3] = sub_100750614();
  v31[4] = &protocol witness table for UILabel;
  v31[0] = v8;
  v9 = v8;
  sub_1007539A4();
  sub_1000746BC(v32, &v28);
  sub_10000C824(v31, v24);
  if (qword_100920630 != -1)
  {
    swift_once();
  }

  v10 = qword_10097E780;
  v26 = &type metadata for SearchLinkLayout;
  v27 = sub_10007472C();
  v11 = swift_allocObject();
  v25 = v11;
  v12 = sub_1000747D0();
  v13 = swift_allocObject();
  sub_10000C824(v24, v13 + 16);
  sub_1000746BC(&v28, &v22);
  if (v23)
  {
    sub_100012160(&v22, v21);
    v14 = swift_allocObject();
    sub_100012160(v21, v14 + 16);
    v15 = v10;
    sub_10000C620(v24);
    sub_10007485C(&v28);
    v16 = &type metadata for AutoAdjustingPlaceable;
    v17 = v12;
  }

  else
  {
    v18 = v10;
    sub_10000C620(v24);
    sub_10007485C(&v28);
    v16 = 0;
    v17 = 0;
    v14 = 0;
  }

  v11[2] = v14;
  v11[3] = 0;
  v11[4] = 0;
  v11[5] = v16;
  v11[6] = v17;
  v11[7] = v13;
  v11[10] = &type metadata for AutoAdjustingPlaceable;
  v11[11] = v12;
  v11[12] = v10;
  v11[13] = 0x4014000000000000;
  v29 = sub_1007511A4();
  v30 = &protocol witness table for Margins;
  sub_10000D134(&v28);
  sub_100751194();
  a1[3] = &type metadata for AutoAdjustingPlaceable;
  a1[4] = v12;
  v19 = swift_allocObject();
  *a1 = v19;
  sub_100012160(&v28, v19 + 16);
  sub_10000C620(v31);
  return sub_10007485C(v32);
}

id sub_10021BA98()
{
  sub_100750B54();
  v1 = sub_100750B64();
  v1();
  v2 = [v0 layer];
  [v0 bounds];
  [v2 setCornerRadius:CGRectGetHeight(v6) * 0.5];

  v3 = [v0 layer];
  [v3 setBorderWidth:1.0];

  return [v0 setNeedsDisplay];
}

void sub_10021BB78()
{
  v1 = *(v0 + qword_10092E2F8);
}

id sub_10021BBB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollablePillView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10021BBF0(uint64_t a1)
{
  v2 = *(a1 + qword_10092E2F8);
}

id sub_10021BC7C()
{
  if (qword_100920630 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() configurationWithTextStyle:qword_10097E780 scale:2];

  return v0;
}

uint64_t sub_10021BD04()
{
  v0 = sub_100750E94();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  sub_100750E84();
  if (qword_100920630 != -1)
  {
    swift_once();
  }

  sub_100750DF4();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_100750E74();
  v10(v6, v0);
  sub_100750E64();
  return (v10)(v9, v0);
}

double sub_10021BEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006FD960(a1, a3, WitnessTable);
}

void sub_10021BF04(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1006FB498(a1, a2, a3, WitnessTable);
}

void sub_10021BF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1006FD99C(a1, a3, WitnessTable);
}

uint64_t sub_10021BFD4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006FB810(a1, WitnessTable, a2);
}

uint64_t sub_10021C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006FDACC(a1, a2, a4, WitnessTable);
}

uint64_t sub_10021C104(void *a1)
{
  a1[1] = sub_10021C34C(&qword_10092E358, type metadata accessor for ScrollablePillView);
  a1[2] = sub_10021C34C(&qword_10092E360, type metadata accessor for ScrollablePillView);
  result = sub_10021C34C(&qword_10092E368, type metadata accessor for ScrollablePillView);
  a1[3] = result;
  return result;
}

uint64_t sub_10021C1B0()
{
  if (*(v0 + 40))
  {
    sub_10000C620(v0 + 16);
  }

  sub_10000C620(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10021C200()
{
  sub_10000C620(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

id sub_10021C238(void *a1)
{
  v2 = [a1 layer];
  if (qword_1009209F0 != -1)
  {
    swift_once();
  }

  v3 = [qword_10097FC70 CGColor];
  [v2 setBorderColor:v3];

  return [a1 setNeedsDisplay];
}

unint64_t sub_10021C300()
{
  result = qword_1009239F8;
  if (!qword_1009239F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009239F8);
  }

  return result;
}

uint64_t sub_10021C34C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10021C3A8()
{
  result = qword_10092E380;
  if (!qword_10092E380)
  {
    sub_10074CB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E380);
  }

  return result;
}

uint64_t sub_10021C408(uint64_t a1, uint64_t a2)
{
  v3 = sub_100743184();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000C518(&qword_100930CA0);
  v7 = sub_100752DE4();
  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  v8 = v24[1];
  sub_10074B274();
  v9 = (*(v4 + 88))(v6, v3);
  if (v9 == enum case for ArcadeState.notSubscribed(_:))
  {
    (*(v4 + 96))(v6, v3);
    v10 = sub_10074CB34();
    v11 = sub_100748FD4();
    v12 = *(*(v11 - 8) + 8);

    v12(v6, v11);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else if (v9 == enum case for ArcadeState.purchasing(_:))
  {
    (*(v4 + 8))(v6, v3);
    v13 = sub_10074CB14();

    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 != enum case for ArcadeState.subscribed(_:))
    {
      v18 = enum case for ArcadeState.unknown(_:);
      v19 = v9;
      v20 = sub_10074CB44();
      if (v19 == v18)
      {

        if (v20)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v22 = *(v4 + 8);

        v22(v6, v3);
        if (v20)
        {
          goto LABEL_12;
        }
      }

LABEL_14:
      sub_10021C780();
      swift_allocError();
      sub_100752DA4();

      return v7;
    }

    (*(v4 + 96))(v6, v3);

    v14 = *(sub_10000C518(&qword_10092E390) + 48);
    v15 = sub_10074CB24();
    v16 = sub_10074AAE4();
    v17 = *(*(v16 - 8) + 8);

    v17(v6 + v14, v16);
    if (!v15)
    {
      goto LABEL_14;
    }
  }

LABEL_12:

  sub_10052AB60(v21, 1, a2);

  sub_100752D54();

  return v7;
}

unint64_t sub_10021C780()
{
  result = qword_10092E388;
  if (!qword_10092E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E388);
  }

  return result;
}

unint64_t sub_10021C7E8()
{
  result = qword_10092E398;
  if (!qword_10092E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E398);
  }

  return result;
}

uint64_t sub_10021C90C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10021C954()
{
  v1 = v0;
  sub_100745784();
  sub_100745BD4();

  sub_100745774();
  if (v2)
  {
    v3 = sub_100743AD4();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage] = v3;
  v5 = v3;

  sub_1004E30AC();

  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for SearchFocusLayoutSectionProvider()
{
  result = qword_10092E3F8;
  if (!qword_10092E3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021CAC8()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 != v2)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = sub_100754574();
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_14:
        __break(1u);
        return;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (!__OFADD__(v3, 1))
    {
      v0[1] = v3 + 1;
      v6 = v0[2];
      v8 = v4;
      v6(&v7, &v8);

      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_10021CC04(uint64_t a1)
{
  v2 = v1;
  sub_10000C824(a1, v9);
  type metadata accessor for SearchLandingLayoutSectionProvider();
  swift_allocObject();
  sub_10000C824(v9, v8);
  sub_10000C824(v8, v7);

  v4 = sub_10074CB64();
  sub_10000C620(v8);
  sub_10000C620(v9);
  *(v2 + qword_10092E3F0) = v4;
  sub_10000C824(a1, v9);
  sub_10000C824(v9, v8);
  v5 = sub_10074CB64();
  sub_10000C620(a1);
  sub_10000C620(v9);
  return v5;
}

id sub_10021CD04(__objc2_prop *a1, uint64_t (*a2)(void), void (*a3)(char *, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v237 = a8;
  v232 = a7;
  v228 = a6;
  v229 = a5;
  v230 = a4;
  v251 = a3;
  v252 = a2;
  v253 = a10;
  v236 = a9;
  v11 = sub_100752404();
  __chkstk_darwin(v11 - 8);
  v239 = (&v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1007469A4();
  v245 = *(v13 - 8);
  v246 = v13;
  __chkstk_darwin(v13);
  v240 = (&v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v224 - v16;
  v226 = sub_10074F704();
  v227 = *(v226 - 8);
  __chkstk_darwin(v226);
  v225 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v19 - 8);
  v231 = &v224 - v20;
  v21 = sub_10074E984();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v235 = &v224 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v249 = &v224 - v25;
  __chkstk_darwin(v26);
  v28 = &v224 - v27;
  v29 = sub_10000C518(&unk_10092E450);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  *&v234 = &v224 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v224 - v33;
  __chkstk_darwin(v35);
  v238 = &v224 - v36;
  __chkstk_darwin(v37);
  v39 = &v224 - v38;
  v233 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v40 = *(v30 + 8);
  v243 = v29;
  v242 = v30 + 8;
  v241 = v40;
  v40(v39, v29);
  v247 = v28;
  v248 = v22;
  v43 = *(v22 + 88);
  v42 = (v22 + 88);
  v41 = v43;
  v244 = v21;
  v44 = (v43)(v28, v21);
  if (v44 == enum case for Shelf.ContentType.singleColumnList(_:) || v44 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v64 = v252();
    v65 = *(v64 + 16);
    v66 = _swiftEmptyArrayStorage;
    if (v65)
    {
      v254 = _swiftEmptyArrayStorage;
      sub_10001E46C(0, v65, 0);
      v249 = *(v245 + 16);
      v67 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v224 = v64;
      v68 = v64 + v67;
      v235 = "outSectionProvider";
      v69 = *(v245 + 72);
      v247 = v245 + 8;
      v248 = v69;
      v234 = xmmword_1007A5A00;
      v66 = v254;
      v70 = v246;
      v71 = v240;
      v245 += 16;
      do
      {
        (v249)(v71, v68, v70);
        sub_10074CB74();
        sub_10000C888(&aBlock, v258);
        if (sub_10074D754() && swift_conformsToProtocol2())
        {
          sub_10000C620(&aBlock);
          sub_100748B84();
          v73 = v72;
        }

        else
        {
          sub_10000C620(&aBlock);
          if (qword_100921ED0 != -1)
          {
            swift_once();
          }

          v252 = sub_100752E44();
          v251 = sub_10000D0FC(v252, qword_1009832E8);
          sub_10000C518(&qword_100923930);
          sub_100752454();
          *(swift_allocObject() + 16) = v234;
          sub_1007523F4();
          v261._object = (v235 | 0x8000000000000000);
          v261._countAndFlagsBits = 0xD000000000000047;
          sub_1007523E4(v261);
          swift_getKeyPath();
          v74 = v238;
          sub_100746914();

          swift_getKeyPath();
          v258 = v244;
          sub_10000D134(&aBlock);
          v75 = v243;
          sub_1007525B4();

          v76 = v75;
          v71 = v240;
          v241(v74, v76);
          sub_1007523C4();
          sub_10000C8CC(&aBlock, &unk_100923520);
          v262._countAndFlagsBits = 0;
          v262._object = 0xE000000000000000;
          sub_1007523E4(v262);
          sub_100752414();
          sub_100752D04();

          v73 = 0;
          v70 = v246;
        }

        (*v247)(v71, v70);
        v254 = v66;
        v78 = v66[2];
        v77 = v66[3];
        if (v78 >= v77 >> 1)
        {
          sub_10001E46C((v77 > 1), v78 + 1, 1);
          v66 = v254;
        }

        v66[2] = v78 + 1;
        v66[v78 + 4] = v73;
        v68 += v248;
        --v65;
      }

      while (v65);
      v49 = v233;
      v79 = v231;
    }

    else
    {
      v49 = v233;
      v79 = v231;
    }

    v89 = COERCE_DOUBLE(sub_10018875C(v66));
    v90 = v229;
    if ((v91 & 1) != 0 || v89 <= 0.0)
    {

      goto LABEL_31;
    }

    v92 = sub_1007499F4();

    v93 = [objc_opt_self() sectionWithGroup:v92];
    swift_getObjectType();
    sub_10074BE74();
    sub_100016C60(0, &qword_10092E460);
    isa = sub_100753294().super.isa;

    [v93 setBoundarySupplementaryItems:isa];

    sub_10074BE64();
    sub_100016C60(0, &qword_10092E468);
    v95 = sub_100753294().super.isa;

    [v93 setDecorationItems:v95];

    v96 = v225;
    sub_100747B84();
    sub_10074F694();
    v98 = v97;
    v100 = v99;
    (*(v227 + 8))(v96, v226);
    sub_10000C888(v90, v90[3]);
    sub_10074BE34();
    v102 = v101;
    sub_10000C888(v90, v90[3]);
    sub_10074BE54();
    [v93 setContentInsets:{v102, v98, v103, v100}];
    sub_10074CB94();
    v104 = sub_1007532C4();
    v106 = v105;

    if (v104)
    {
      v259 = v104;
      v260 = v106;
      aBlock = _NSConcreteStackBlock;
      v256 = 1107296256;
      v257 = sub_1005D5E28;
      v258 = &unk_10086D320;
      v104 = _Block_copy(&aBlock);
    }

    [v93 setVisibleItemsInvalidationHandler:{v104, v224}];
    _Block_release(v104);

    return v93;
  }

  if (v44 != enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v240 = &v224;
    v250 = *(v250 + qword_10092E3F0);
    __chkstk_darwin(v44);
    v47 = v233;
    sub_100747C04();
    swift_getKeyPath();
    v80 = v249;
    v81 = v243;
    sub_1007525B4();

    v241(v34, v81);
    v239 = v41;
    v82 = (v41)(v80, v244);
    v83 = v230;
    if (v82 == enum case for Shelf.ContentType.action(_:))
    {
      v84 = ASKDeviceTypeGetCurrent();
      v85 = sub_100753094();
      v87 = v86;
      if (v85 == sub_100753094() && v87 == v88)
      {
        goto LABEL_23;
      }

      v145 = sub_100754754();

      if (v145)
      {
        goto LABEL_46;
      }

      v84 = ASKDeviceTypeGetCurrent();
      v182 = sub_100753094();
      v184 = v183;
      if (v182 == sub_100753094() && v184 == v185)
      {
LABEL_23:

LABEL_46:
        v146 = (v252)(v82);
        v147 = *(v146 + 16);
        v42 = _swiftEmptyArrayStorage;
        v243 = v147;
        if (v147)
        {
          aBlock = _swiftEmptyArrayStorage;
          sub_10001E46C(0, v147, 0);
          v148 = type metadata accessor for SearchActionContentView(0);
          v42 = aBlock;
          v149 = v245 + 16;
          v251 = *(v245 + 16);
          v252 = v148;
          v150 = *(v245 + 80);
          v245 = v146;
          v151 = v146 + ((v150 + 32) & ~v150);
          v152 = *(v149 + 56);
          v153 = (v149 - 8);
          v154 = v147;
          do
          {
            v155 = v246;
            (v251)(v17, v151, v246);
            v156 = sub_100637E50(v17);
            (*v153)(v17, v155);
            aBlock = v42;
            v158 = v42[2];
            v157 = v42[3];
            if (v158 >= v157 >> 1)
            {
              sub_10001E46C((v157 > 1), v158 + 1, 1);
              v42 = aBlock;
            }

            v42[2] = (v158 + 1);
            *&v42[v158 + 4] = v156;
            v151 += v152;
            --v154;
          }

          while (v154);
          v47 = v233;
          v159 = v231;
        }

        else
        {
LABEL_64:
          v159 = v231;
        }

        v166 = COERCE_DOUBLE(sub_10018875C(v42));
        if ((v167 & 1) == 0 && v166 > 0.0)
        {
          v168 = *&v166;
          v169 = v225;
          sub_100747B84();
          sub_10074F594();
          v171 = v170;
          v172 = v227 + 8;
          v173 = *(v227 + 8);
          v173(v169, v226);
          v227 = v172;
          v251 = v173;
          if (v171 < 2.0)
          {
            goto LABEL_89;
          }

          v174 = v243;
          if (!v243)
          {
            goto LABEL_89;
          }

          v175 = sub_100753324();
          *(v175 + 16) = v174;
          v176 = (v175 + 32);
          if (v174 >= 4)
          {
            v177 = v174 & 0x7FFFFFFFFFFFFFFCLL;
            v176 += v174 & 0x7FFFFFFFFFFFFFFCLL;
            v200 = vdupq_n_s64(v168);
            v201 = (v175 + 48);
            v202 = v174 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v201[-1] = v200;
              *v201 = v200;
              v201 += 2;
              v202 -= 4;
            }

            while (v202);
            if (v174 == v177)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v177 = 0;
          }

          v203 = v174 - v177;
          do
          {
            *v176++ = v168;
            --v203;
          }

          while (v203);
LABEL_89:
          v204 = sub_1007499F4();

          v205 = objc_opt_self();
          v252 = v204;
          v93 = [v205 sectionWithGroup:v204];
          swift_getObjectType();
          v206 = v229;
          sub_10074BE74();
          sub_100016C60(0, &qword_10092E460);
          v207 = sub_100753294().super.isa;

          [v93 setBoundarySupplementaryItems:v207];

          sub_10074BE64();
          sub_100016C60(0, &qword_10092E468);
          v208 = sub_100753294().super.isa;

          [v93 setDecorationItems:v208];

          v209 = v225;
          sub_100747B84();
          sub_10074F694();
          v211 = v210;
          v213 = v212;
          v251(v209, v226);
          sub_10000C888(v206, v206[3]);
          sub_10074BE34();
          v215 = v214;
          sub_10000C888(v206, v206[3]);
          sub_10074BE54();
          [v93 setContentInsets:{v215, v211, v216, v213}];
          sub_10074CB94();
          v217 = sub_1007532C4();
          v219 = v218;

          if (v217)
          {
            v259 = v217;
            v260 = v219;
            aBlock = _NSConcreteStackBlock;
            v256 = 1107296256;
            v257 = sub_1005D5E28;
            v258 = &unk_10086D2F8;
            v217 = _Block_copy(&aBlock);
          }

          v181 = v247;
          v180 = v248;
          [v93 setVisibleItemsInvalidationHandler:v217];
          _Block_release(v217);

          goto LABEL_92;
        }

        sub_100016C60(0, &unk_10093FE00);
        v178 = sub_100747C14();
        v179 = *(v178 - 8);
        (*(v179 + 16))(v159, v47, v178);
        (*(v179 + 56))(v159, 0, 1, v178);
        v93 = sub_100753A44();
        sub_10000C8CC(v159, &qword_100942730);
        v181 = v247;
        v180 = v248;
        goto LABEL_92;
      }

      v186 = sub_100754754();

      if (v186)
      {
        goto LABEL_46;
      }
    }

    v246 = &v224;
    __chkstk_darwin(v82);
    __chkstk_darwin(v187);
    sub_10074CBA4();
    v188 = sub_10074CBB4();
    v189 = v83;
    v190 = v229;
    v191 = v237;
    v93 = v188(v47, sub_1000FA880, &v224 - 4, v189, v229, v228, v232, v237, v236, v253);
    v192 = v234;
    sub_100747C04();
    swift_getKeyPath();
    v193 = v235;
    v194 = v243;
    sub_1007525B4();

    v241(v192, v194);
    v195 = v239(v193, v244);
    if (v195 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v196 = v252();
      v197 = sub_1003EFB6C(v47, v196, v230, v190, v228, v232, v191, v236, v253);

      v93 = v197;
      v180 = v248;
    }

    else
    {
      v180 = v248;
      if (v195 != enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v181 = v247;
        if (v195 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          [v93 setOrthogonalScrollingBehavior:2];
        }

        else
        {
          (*(v248 + 8))(v235, v244);
        }

        goto LABEL_92;
      }

      v198 = v252();
      v199 = sub_1003F0EB0(v47, v198, v230, v190, v228, v232, v237, v236, v253);

      v93 = v199;
    }

    v181 = v247;
LABEL_92:
    v220 = *(v180 + 8);
    v221 = v244;
    v220(v249, v244);
    v220(v181, v221);
    return v93;
  }

  v45 = v252();
  v46 = *(v45 + 16);
  v47 = &stru_1008F2000;
  v48 = &stru_1008F2000;
  v49 = v233;
  if (v46)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_1007545C4();
    v42 = objc_opt_self();
    v252 = objc_opt_self();
    v251 = objc_opt_self();
    ObjectType = swift_getObjectType();
    v51 = v245 + 16;
    v248 = *(v245 + 16);
    v249 = ObjectType;
    v52 = *(v245 + 80);
    v245 = v45;
    v53 = v45 + ((v52 + 32) & ~v52);
    v247 = *(v51 + 56);
    v54 = v246;
    do
    {
      (v248)(v17, v53, v54);
      v55 = sub_10021F950(v17, 0, 0, 1);
      v57 = v56;
      v58 = [v42 absoluteDimension:v55];
      v59 = [v42 absoluteDimension:v57];
      v60 = [v252 sizeWithWidthDimension:v58 heightDimension:v59];

      sub_10074B564();
      sub_100016C60(0, &unk_10092E470);
      v61 = sub_100753294().super.isa;

      v62 = [v251 itemWithLayoutSize:v60 supplementaryItems:v61];

      (*(v51 - 8))(v17, v54);
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      v53 += v247;
      --v46;
    }

    while (v46);

    v63 = aBlock;
    v49 = v233;
    v48 = &stru_1008F2000;
    v47 = &stru_1008F2000;
  }

  else
  {

    v63 = _swiftEmptyArrayStorage;
  }

  KeyPath = swift_getKeyPath();
  aBlock = v63;
  v256 = 0;
  v257 = sub_1002204C4;
  v258 = KeyPath;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_10021CAC8();
  v252 = (v63 >> 62);
  if (v111)
  {

    swift_bridgeObjectRelease_n();
    v112 = 0.0;
    goto LABEL_39;
  }

  v251 = KeyPath;
  if (v63 >> 62)
  {
    v223 = v110;
    v113 = sub_100754664();
    v110 = v223;
  }

  else
  {
    v113 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v112 = v110;
  v79 = v256;
  if (v256 == v113)
  {
LABEL_38:

    swift_bridgeObjectRelease_n();
    v49 = v233;
    v48 = &stru_1008F2000;
    v47 = &stru_1008F2000;
LABEL_39:
    v79 = v231;
    if (v252)
    {
      goto LABEL_96;
    }

    if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v49 = v63 & 0xC000000000000001;
  v47 = (v63 & 0xFFFFFFFFFFFFFF8);
  v48 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
  while (1)
  {
    if (v49)
    {
      v160 = sub_100754574();
      v161 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }

    if ((v79 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v79 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_95;
    }

    v160 = v63[v79 + 4];
    v161 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_57:
    v162 = v160;
    v42 = [v162 layoutSize];
    v163 = [v42 heightDimension];
    [v163 dimension];
    v165 = v164;

    if (v112 < v165)
    {
      v112 = v165;
    }

    ++v79;
    if (v161 == v113)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  if (!sub_100754664())
  {
LABEL_31:

    sub_100016C60(0, &unk_10093FE00);
    v107 = sub_100747C14();
    v108 = *(v107 - 8);
    (*(v108 + 16))(v79, v49, v107);
    (*(v108 + 56))(v79, 0, 1, v107);
    v93 = sub_100753A44();
    sub_10000C8CC(v79, &qword_100942730);
    return v93;
  }

LABEL_41:
  if (v112 < 2.22507386e-308)
  {
    goto LABEL_31;
  }

  v114 = objc_opt_self();
  v115 = v225;
  sub_100747B84();
  sub_10074F5C4();
  v117 = v116;
  v118 = v227 + 8;
  v119 = *(v227 + 8);
  v119(v115, v226);
  v120 = v119;
  v249 = v119;
  v227 = v118;
  v121 = [v114 estimatedDimension:v117];
  v122 = [v114 v47[62].name];
  v123 = [objc_opt_self() v48[62].attr];

  v124 = objc_opt_self();
  sub_100016C60(0, &qword_100923478);
  v125 = sub_100753294().super.isa;

  v252 = v123;
  v126 = [v124 horizontalGroupWithLayoutSize:v123 subitems:v125];

  v127 = objc_opt_self();
  sub_100747B84();
  sub_10074F634();
  v129 = v128;
  v120(v115, v226);
  v130 = [v127 fixedSpacing:v129];
  [v126 setInterItemSpacing:v130];

  v131 = objc_opt_self();
  v251 = v126;
  v93 = [v131 sectionWithGroup:v126];
  swift_getObjectType();
  v132 = v229;
  sub_10074BE74();
  sub_100016C60(0, &qword_10092E460);
  v133 = sub_100753294().super.isa;

  [v93 setBoundarySupplementaryItems:v133];

  sub_10074BE64();
  sub_100016C60(0, &qword_10092E468);
  v134 = sub_100753294().super.isa;

  [v93 setDecorationItems:v134];

  sub_100747B84();
  sub_10074F694();
  v136 = v135;
  v138 = v137;
  (v249)(v115, v226);
  sub_10000C888(v132, v132[3]);
  sub_10074BE34();
  v140 = v139;
  sub_10000C888(v132, v132[3]);
  sub_10074BE54();
  [v93 setContentInsets:{v140, v136, v141, v138}];
  [v93 setOrthogonalScrollingBehavior:1];
  sub_10074CB94();
  v142 = sub_1007532C4();
  v144 = v143;

  if (v142)
  {
    v259 = v142;
    v260 = v144;
    aBlock = _NSConcreteStackBlock;
    v256 = 1107296256;
    v257 = sub_1005D5E28;
    v258 = &unk_10086D348;
    v142 = _Block_copy(&aBlock);
  }

  [v93 setVisibleItemsInvalidationHandler:v142];
  _Block_release(v142);

  return v93;
}

void sub_10021ED78(id *a1)
{
  v1 = *a1;
  swift_getAtKeyPath();
}

uint64_t sub_10021EDE0()
{
  sub_10074CBC4();

  return swift_deallocClassInstance();
}

uint64_t sub_10021EE64(uint64_t a1, void *a2)
{
  v72 = a2;
  v3 = sub_10000C518(&qword_1009273F8);
  __chkstk_darwin(v3 - 8);
  v74 = &v59 - v4;
  v5 = sub_10000C518(&unk_10092E4B0);
  __chkstk_darwin(v5 - 8);
  v75 = &v59 - v6;
  v76 = sub_10000C518(&qword_100930570);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v59 - v7;
  v8 = sub_1007410D4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1007440D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_10092E4C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_10000C518(&qword_100923030);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - v17;
  v19 = sub_100741084();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v69 = &v59 - v24;
  __chkstk_darwin(v25);
  v70 = &v59 - v26;
  v27 = sub_100744074();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v67 = v27;
  v68 = v28;
  sub_100744094();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_1009209E0 != -1)
    {
      swift_once();
    }

    v59 = qword_10097FC60;
    if (qword_1009209E8 != -1)
    {
      swift_once();
    }

    v63 = qword_10097FC68;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v66 = a1;
    v65 = v20;
    v64 = v10;
    v61 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v62 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v62 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = sub_100754644();
            __break(1u);
            return result;
          }

          v62 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v60 = v33;
        goto LABEL_23;
      }

      v62 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v60 = v32;
LABEL_23:
    sub_10000C518(&unk_10092E4D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v68;
    *(inited + 48) = v67;
    *(inited + 56) = v35;

    v36 = sub_10038664C(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &qword_10093CA20);
    v79._object = (v62 | 0x8000000000000000);
    v79._countAndFlagsBits = v60;
    v37._rawValue = v36;
    sub_1007458A4(v79, v37);

    sub_1007410C4();
    sub_100741094();
    v38 = v72;
    v78[0] = v72;
    sub_1000168F0();
    v39 = v38;
    sub_1007410A4();
    v40 = v63;
    v78[0] = v63;
    sub_1002205EC();
    v41 = v40;
    sub_1007410A4();
    v78[0] = v67;
    v78[1] = v35;
    v42 = sub_100741574();
    v43 = v74;
    (*(*(v42 - 8) + 56))(v74, 1, 1, v42);
    sub_100220640(&unk_10092E4F0, &type metadata accessor for AttributedString);
    sub_1000D5C0C();
    v44 = v75;
    sub_100741184();
    sub_10000C8CC(v43, &qword_1009273F8);
    if ((*(v73 + 48))(v44, 1, v76) == 1)
    {
      v45 = &unk_10092E4B0;
    }

    else
    {
      v46 = v44;
      v44 = v71;
      sub_100220688(v46, v71);
      v47 = v59;
      v48 = v59;
      sub_1002206F8();
      v49 = sub_1007410B4();
      v77 = v47;
      sub_100741114();
      v49(v78, 0);
      v45 = &qword_100930570;
    }

    sub_10000C8CC(v44, v45);
    v50 = v64;
    v51 = v61;
    v52 = v65;
    v53 = *(v65 + 32);
    v53(v18, v22, v19);
    (*(v52 + 56))(v18, 0, 1, v19);
    (*(v50 + 8))(v15, v51);
    if ((*(v52 + 48))(v18, 1, v19) != 1)
    {

      v57 = v70;
      v53(v70, v18, v19);
      sub_100016C60(0, &qword_10092E500);
      (*(v52 + 16))(v69, v57, v19);
      v58 = sub_100753854();
      (*(v52 + 8))(v57, v19);
      return v58;
    }

    goto LABEL_27;
  }

  sub_10000C8CC(v15, &unk_10092E4C0);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10000C8CC(v18, &qword_100923030);
  v54 = sub_10074ECB4();
  if (!v55)
  {
    return v67;
  }

  v56 = v54;

  return v56;
}

uint64_t sub_10021F934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10021F950(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v80 = a4;
  v75 = a2;
  v76 = a3;
  v5 = sub_10074F704();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750BD4();
  v89 = *(v7 - 8);
  __chkstk_darwin(v7);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v66 - v10;
  v11 = sub_100750954();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v87 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100750E94();
  v13 = *(v90 - 8);
  __chkstk_darwin(v90);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  sub_1007440C4();
  sub_100220640(&unk_10092E480, &type metadata accessor for SearchAction);
  sub_1007468B4();
  v86 = v102[0];
  if (!v102[0])
  {
    return 0.0;
  }

  v85 = v24;
  v70 = v5;
  v74 = v7;
  swift_getKeyPath();
  sub_100746914();

  sub_100750E84();
  if (qword_100920630 != -1)
  {
    swift_once();
  }

  v73 = qword_10097E780;
  sub_100750DF4();
  v71 = v13;
  v26 = v13 + 8;
  v25 = *(v13 + 8);
  v27 = v15;
  v28 = v90;
  v25(v27, v90);
  sub_100750E74();
  v25(v18, v28);
  v29 = v21;
  v30 = v85;
  sub_100750E64();
  v72 = v29;
  v25(v29, v28);
  swift_getKeyPath();
  v82 = a1;
  sub_100746914();

  v31 = v99;
  v32 = v87;
  sub_100750944();
  sub_100750E04();
  sub_10000C888(v102, v103);
  sub_1007509B4();
  sub_100750924();
  sub_10000C620(v102);
  sub_100750E44();
  sub_1007508D4();
  sub_100750E24();
  sub_1007508B4();
  sub_100750E34();
  sub_1007508C4();
  sub_100750E14();
  sub_1007508A4();

  v33 = sub_100750914();
  v34 = sub_10021EE64(v86, v33);
  v81 = v35;
  v37 = v36;
  LODWORD(v31) = ~v36;

  if (!v31)
  {

    (*(v83 + 8))(v32, v84);
    v25(v30, v90);
    return 0.0;
  }

  v69 = v26;
  (*(v71 + 16))(v72, v30, v90);
  v68 = v37;
  v67 = v25;
  if (v37)
  {
    sub_1002204D0(v34, v81, 1);
    sub_100750BB4();
    v38 = v79;
    v39 = v34;
    sub_100750C14();
  }

  else
  {
    sub_1002204D0(v34, v81, 0);
    sub_100750BB4();
    v38 = v79;
    v39 = v34;
    sub_100750BF4();
  }

  v41 = v74;
  (*(v89 + 32))(v88, v38, v74);

  v42 = sub_10074ECC4();

  v43 = v73;
  if (v42 && (v44 = [objc_opt_self() configurationWithTextStyle:v73 scale:2], swift_getKeyPath(), sub_100746914(), , v45 = v102[0], v46 = objc_msgSend(v44, "configurationWithTraitCollection:", v102[0]), v45, v44, v47 = sub_100743AC4(), , v46, v47))
  {
    [v47 size];
    v49 = v48;
    v51 = v50;

    *(&v100 + 1) = &type metadata for FixedSizedPlaceholder;
    v101 = sub_100016AF8();
    *&v99 = v49;
    *(&v99 + 1) = v51;
  }

  else
  {
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
  }

  v98[3] = v41;
  v98[4] = &protocol witness table for LabelPlaceholder;
  v52 = sub_10000D134(v98);
  (*(v89 + 16))(v52, v88, v41);
  swift_getKeyPath();
  sub_100746914();

  sub_1007539A4();
  sub_1000746BC(&v99, &v95);
  sub_10000C824(v98, v94);
  v94[8] = &type metadata for SearchLinkLayout;
  v94[9] = sub_10007472C();
  v53 = swift_allocObject();
  v94[5] = v53;
  v54 = sub_1000747D0();
  v55 = swift_allocObject();
  sub_10000C824(v94, v55 + 16);
  sub_1000746BC(&v95, &v92);
  if (v93)
  {
    sub_100012160(&v92, v91);
    v56 = swift_allocObject();
    sub_100012160(v91, v56 + 16);
    v57 = v43;
    sub_10000C620(v94);
    sub_10000C8CC(&v95, &unk_100924A60);
    v58 = &type metadata for AutoAdjustingPlaceable;
    v59 = v54;
  }

  else
  {
    v60 = v43;
    sub_10000C620(v94);
    sub_10000C8CC(&v95, &unk_100924A60);
    v56 = 0;
    v58 = 0;
    v59 = 0;
  }

  v53[2] = v56;
  v53[3] = 0;
  v53[4] = 0;
  v53[5] = v58;
  v53[6] = v59;
  v53[7] = v55;
  v53[10] = &type metadata for AutoAdjustingPlaceable;
  v53[11] = v54;
  v53[12] = v43;
  v53[13] = 0x4014000000000000;
  v96 = sub_1007511A4();
  v97 = &protocol witness table for Margins;
  sub_10000D134(&v95);
  sub_100751194();
  swift_unknownObjectRelease();
  sub_100012160(&v95, v102);
  sub_10000C620(v98);
  sub_10000C8CC(&v99, &unk_100924A60);
  if (v80)
  {
    swift_getKeyPath();
    v61 = v77;
    sub_100746914();

    sub_10074F674();
    (*(v78 + 8))(v61, v70);
  }

  swift_getKeyPath();
  sub_100746914();

  v62 = v99;
  sub_10000C888(v102, v103);
  sub_100751254();
  v64 = v63;

  sub_100220570(v39, v81, v68);

  v40 = ceil(v64);
  sub_100220598(v102);
  (*(v89 + 8))(v88, v41);
  (*(v83 + 8))(v87, v84);
  v67(v85, v90);
  return v40;
}

id sub_100220400@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 layoutSize];
  *a2 = result;
  return result;
}

id sub_100220448@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 heightDimension];
  *a2 = result;
  return result;
}

id sub_100220490@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dimension];
  *a2 = v4;
  return result;
}

id sub_1002204D0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1002204E4()
{
  if (*(v0 + 40))
  {
    sub_10000C620(v0 + 16);
  }

  sub_10000C620(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100220534()
{
  sub_10000C620(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100220570(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_100220588(a1, a2, a3 & 1);
  }
}

void sub_100220588(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1002205EC()
{
  result = qword_100944930;
  if (!qword_100944930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944930);
  }

  return result;
}

uint64_t sub_100220640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100220688(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100930570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002206F8()
{
  result = qword_1009305A0;
  if (!qword_1009305A0)
  {
    sub_10000C724(&qword_100930570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009305A0);
  }

  return result;
}

uint64_t sub_10022078C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1007504F4();
  sub_100039C50(v3, a2);
  sub_10000D0FC(v3, a2);
  return sub_100750504();
}

unint64_t sub_1002207E8(uint64_t a1, void *a2, void (*a3)(char *, char *, uint64_t), char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v246 = a4;
  v235 = a3;
  v234 = a2;
  v17 = sub_10000C518(&qword_100923450);
  __chkstk_darwin(v17 - 8);
  v205 = &v198 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v213 = &v198 - v20;
  v21 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v21 - 8);
  v223 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v224 = &v198 - v24;
  v25 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v25 - 8);
  v222 = &v198 - v26;
  v27 = sub_100744864();
  __chkstk_darwin(v27 - 8);
  v211 = &v198 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v210 = &v198 - v30;
  __chkstk_darwin(v31);
  v217 = &v198 - v32;
  __chkstk_darwin(v33);
  v216 = &v198 - v34;
  v221 = sub_100744894();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v209 = &v198 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v215 = &v198 - v37;
  v226 = sub_100747D94();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v212 = &v198 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v238 = &v198 - v40;
  v204 = type metadata accessor for ScreenshotDisplayConfiguration();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v233 = &v198 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000C518(&unk_100934D80);
  __chkstk_darwin(v42 - 8);
  v206 = &v198 - v43;
  v219 = sub_1007504F4();
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v239 = &v198 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_100746B04();
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v230 = &v198 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_100746A94();
  v243 = *(v245 - 8);
  __chkstk_darwin(v245);
  v202 = &v198 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v207 = (&v198 - v48);
  __chkstk_darwin(v49);
  v242 = &v198 - v50;
  __chkstk_darwin(v51);
  v214 = &v198 - v52;
  __chkstk_darwin(v53);
  v244 = &v198 - v54;
  v55 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v55 - 8);
  v208 = &v198 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v240 = &v198 - v58;
  __chkstk_darwin(v59);
  v247 = &v198 - v60;
  v61 = sub_10074A7F4();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v198 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v67 = &v198 - v66;
  v68 = sub_10000C518(&unk_100923200);
  *&v69 = __chkstk_darwin(v68 - 8).n128_u64[0];
  v71 = &v198 - v70;
  v72 = [v9 contentView];
  [v72 setLayoutMargins:{a6, a7, a8, a9}];

  v73 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView];
  *&v73[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v73 setNeedsLayout];
  v74 = sub_1007469A4();
  (*(*(v74 - 8) + 56))(v71, 1, 1, v74);
  sub_100028DB0(a1, v71, v246);
  sub_10000C8CC(v71, &unk_100923200);
  sub_100016C60(0, &qword_100923500);
  v75 = sub_100753E04();
  [v10 setBackgroundColor:v75];

  sub_100745E24();
  (v62[6].attr)(v64, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v61);
  sub_100224CDC(&qword_10092E508, &type metadata accessor for ScreenshotsDisplayStyle);
  v249 = v67;
  v76 = sub_100753014();
  p_attr = &v62->attr;
  attr = v62->attr;
  v248 = v61;
  (attr)(v64, v61);
  if (v76)
  {
    [*&v10[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots] setHidden:1];
    v62 = &stru_1008F2000;
LABEL_148:
    [v10 v62[51].attr];
    return (attr)(v249, v248);
  }

  v79 = sub_100745DD4();
  if (v79 >> 62)
  {
    v76 = v79;
    v80 = sub_100754664();
    v79 = v76;
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v229 = attr;
  if (v80)
  {
    if ((v79 & 0xC000000000000001) != 0)
    {
      v76 = v79;
      v237 = sub_100754574();
    }

    else
    {
      if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v76 = v79;
      v237 = *(v79 + 32);
    }
  }

  else
  {

    v237 = 0;
  }

  v201 = v10;
  v67 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots];
  v228 = sub_100745E04();
  v241 = sub_100745DE4();
  v81 = sub_100745E54();
  if (v81 >> 62)
  {
    v76 = v81;
    v82 = sub_100754664();
    v81 = v76;
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v237;
  if (v82)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v236 = sub_100754574();
    }

    else
    {
      if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v236 = *(v81 + 32);
    }
  }

  else
  {

    v236 = 0;
  }

  v83 = [v234 traitCollection];
  sub_100222B00(v247);

  attr = sub_100745E04();
  v76 = sub_100745DE4();
  v84 = sub_100745DD4();
  if (v84 >> 62)
  {
    v88 = v84;
    v85 = sub_100754664();
    v84 = v88;
  }

  else
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v227 = &v62->attr;
  if (v85)
  {
    if ((v84 & 0xC000000000000001) == 0)
    {
      if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_52;
      }

      p_attr = *(v84 + 32);

      goto LABEL_25;
    }

LABEL_48:
    p_attr = sub_100754574();
LABEL_25:

    goto LABEL_27;
  }

  p_attr = 0;
LABEL_27:
  v86 = sub_100745E54();
  if (v86 >> 62)
  {
    v89 = v86;
    v90 = sub_100754664();
    v86 = v89;
    if (v90)
    {
LABEL_29:
      if ((v86 & 0xC000000000000001) == 0)
      {
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v87 = *(v86 + 32);

LABEL_32:

          goto LABEL_38;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_50:
      v87 = sub_100754574();
      goto LABEL_32;
    }
  }

  else if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v87 = 0;
LABEL_38:
  if ((sub_10074A7E4() & 1) == 0)
  {

    v93 = v243;
    v94 = v244;
    v95 = v245;
    (*(v243 + 104))(v244, enum case for LockupMediaLayout.DisplayType.none(_:), v245);
    goto LABEL_76;
  }

  if (v76 | attr)
  {
    v96 = v214;
    sub_100750504();

    v93 = v243;
    v95 = v245;
    (*(v243 + 104))(v96, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v245);
    v94 = v244;
    (*(v93 + 32))(v244, v96, v95);
    goto LABEL_76;
  }

  v91 = sub_100631A30(p_attr, v87, 0, 1);
  attr = v91;
  v10 = (v91 >> 62);
  if (v91 >> 62)
  {
LABEL_53:
    v200 = sub_100754664();
    if (p_attr)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v200 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (p_attr)
  {
LABEL_42:
    v92 = sub_100743844();
    goto LABEL_55;
  }

LABEL_54:
  v92 = 0;
LABEL_55:
  v198 = sub_100631D8C(v92);

  v235 = p_attr;
  if (p_attr)
  {
    v97 = sub_100743844();
  }

  else
  {
    v97 = 0;
  }

  v95 = v245;
  v98 = v206;
  v99 = v248;
  (v62[1].name)(v206, v249, v248);
  (v62[3].attr)(v98, 0, 1, v99);
  v199 = sub_1006322B4(v97, v98);

  sub_10000C8CC(v98, &unk_100934D80);
  if (v10)
  {
    v100 = sub_100754664();
  }

  else
  {
    v100 = *((attr & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = v207;
  v102 = v235;
  if (!v100)
  {

LABEL_68:
    v105 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v106 = v243;
    v107 = *(v243 + 104);
    v234 = (v243 + 104);
    v207 = v107;
    (v107)(v101, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v95);
    v108 = sub_100746A84();
    v109 = *(v106 + 8);
    (v109)(v101, v95);
    v110 = v200;
    if (((v200 >= v108) & v199) != 0 || (v105 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v206 = v109, v111 = v245, (v207)(v101, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v245), v112 = sub_100746A84(), (v206)(v101, v111), ((v110 >= v112) & v198) != 0) || (v105 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v113 = v245, (v207)(v101, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v245), v114 = sub_100746A84(), v115 = v113, v116 = v206, (v206)(v101, v115), v110 >= v114))
    {

      v104 = v214;
      v120 = v214;
      v121 = v105;
    }

    else
    {
      v199 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v117 = v116;
      v118 = v245;
      v207(v101);
      v119 = sub_100746A84();

      (v117)(v101, v118);
      if (v110 == v119)
      {
        v104 = v214;
        v120 = v214;
        v121 = v199;
      }

      else
      {
        v121 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v104 = v214;
        v120 = v214;
      }
    }

    v95 = v245;
    (v207)(v120, v121, v245);
    v93 = v243;
    goto LABEL_75;
  }

  if ((attr & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((attr & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_151;
    }
  }

  v103 = sub_10074F194();

  if ((v103 & 1) == 0)
  {
    goto LABEL_68;
  }

  v93 = v243;
  v104 = v214;
  (*(v243 + 104))(v214, enum case for LockupMediaLayout.DisplayType.landscape(_:), v95);
LABEL_75:
  v94 = v244;
  (*(v93 + 32))(v244, v104, v95);
  v10 = v237;
LABEL_76:
  v251[3] = &type metadata for CGFloat;
  v251[4] = &protocol witness table for CGFloat;
  v251[0] = 0x4021000000000000;
  sub_10000C824(v251, v250);
  v102 = *(v93 + 16);
  v102(v242, v94, v95);
  if (v241 | v228)
  {
    goto LABEL_87;
  }

  result = sub_100631A30(v10, v236, 0, 1);
  if (result >> 62)
  {
    v123 = result;
    v124 = sub_100754664();
    result = v123;
    if (v124)
    {
      goto LABEL_79;
    }

    goto LABEL_86;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_86:

LABEL_87:
    sub_100750504();
    goto LABEL_88;
  }

LABEL_79:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_132;
    }
  }

  sub_10074F2A4();
  sub_100750504();

LABEL_88:
  sub_100016B4C(v247, v240, &unk_1009281D0);
  v125 = v230;
  sub_100746AD4();
  sub_10000C620(v251);
  v126 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v127 = v231;
  v128 = &v67[v126];
  v129 = v232;
  (*(v231 + 24))(v128, v125, v232);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v127 + 8))(v125, v129);
  if (v10)
  {
    v130 = sub_100743844();
  }

  else
  {
    v130 = 0;
  }

  sub_100743864();
  v131 = v233;
  sub_1002898DC(v130, v233);

  v132 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1000243DC(v131, &v67[v132]);
  swift_endAccess();
  sub_10062F1F4();
  sub_100024440(v131);
  if (v10)
  {
    v10 = sub_100743844();
  }

  *&v67[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform] = v10;

  sub_10062F3F8();

  v133 = v248;
  (v62[1].name)(v64, v249, v248);
  v134 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (v62[1].attr)(&v67[v134], v64, v133);
  swift_endAccess();
  v62 = &stru_1008F2000;
  [v67 setNeedsLayout];
  v229(v64, v133);
  if (v241)
  {
    (*(v220 + 104))(v215, enum case for VideoFillMode.scaleAspectFill(_:), v221);

    sub_10074EC14();
    sub_10074F2A4();
    v135 = v240;
    sub_100750504();

    (*(v218 + 56))(v135, 0, 1, v219);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v136 = v222;
    sub_10074EC24();
    v137 = sub_100741264();
    (*(*(v137 - 8) + 56))(v136, 0, 1, v137);
    v138 = v224;
    sub_10074EBE4();
    v139 = v223;
    sub_10074EBD4();
    type metadata accessor for VideoView();
    sub_100224CDC(&qword_1009230E0, type metadata accessor for VideoView);
    v140 = sub_1007464A4();
    sub_10000C8CC(v139, &unk_1009281C0);
    sub_10000C8CC(v138, &unk_1009281C0);
    sub_10000C8CC(v136, &unk_100923970);
    sub_10000C8CC(v251, &unk_1009276E0);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v142 = Strong;
      v143 = [Strong superview];
      if (v143)
      {
        v144 = v143;
        sub_100016C60(0, &qword_100922300);
        v145 = v67;
        v146 = sub_100753FC4();

        if ((v146 & 1) == 0)
        {
          goto LABEL_108;
        }

        v147 = swift_unknownObjectWeakLoadStrong();
        if (!v147)
        {
          goto LABEL_108;
        }

        v142 = v147;
        [v147 removeFromSuperview];
      }
    }

LABEL_108:
    swift_unknownObjectWeakAssign();
    v156 = swift_unknownObjectWeakLoadStrong();
    v62 = &stru_1008F2000;
    if (v156)
    {
      v157 = v156;
      [v67 addSubview:v156];
    }

    sub_10062FDFC();
    [v67 setNeedsLayout];

    v158 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v159 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
    v151 = v243;
    if (v159)
    {
      [v159 removeFromSuperview];
      v160 = *&v67[v158];
    }

    else
    {
      v160 = 0;
    }

    v161 = v244;
    *&v67[v158] = 0;

    [v67 setNeedsLayout];

    (*(v225 + 8))(v238, v226);
LABEL_147:
    [v67 v62[51].attr];

    (*(v151 + 8))(v161, v245);
    sub_10000C8CC(v247, &unk_1009281D0);
    [v67 setHidden:0];

    v10 = v201;
    attr = v229;
    goto LABEL_148;
  }

  if (!v236)
  {
LABEL_134:
    v186 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v187 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
    if (v187)
    {
      [v187 removeFromSuperview];
      v188 = *&v67[v186];
    }

    else
    {
      v188 = 0;
    }

    v151 = v243;
    v161 = v244;
    *&v67[v186] = 0;

    [v67 v62[51].attr];
    v189 = swift_unknownObjectWeakLoadStrong();
    if (!v189)
    {
      goto LABEL_144;
    }

    v190 = v189;
    sub_100224CDC(&qword_1009230E0, type metadata accessor for VideoView);
    v191 = [v190 superview];
    if (v191)
    {
      v192 = v191;
      sub_100016C60(0, &qword_100922300);
      v193 = v67;
      v194 = sub_100753FC4();

      v161 = v244;
      if ((v194 & 1) == 0)
      {
        goto LABEL_144;
      }

      v195 = swift_unknownObjectWeakLoadStrong();
      if (!v195)
      {
        goto LABEL_144;
      }

      v190 = v195;
      [v195 removeFromSuperview];
    }

    else
    {
      v161 = v244;
    }

LABEL_144:
    swift_unknownObjectWeakAssign();
    v196 = swift_unknownObjectWeakLoadStrong();
    if (v196)
    {
      v197 = v196;
      [v67 addSubview:v196];
    }

    sub_10062FDFC();
    [v67 v62[51].attr];
    goto LABEL_147;
  }

  result = sub_10074F794();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_102;
    }

    goto LABEL_133;
  }

LABEL_132:
  v184 = result;
  v185 = sub_100754664();
  result = v184;
  if (!v185)
  {
LABEL_133:

    goto LABEL_134;
  }

LABEL_102:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_151:
    sub_100754574();
    v148 = v205;
LABEL_105:

    v149 = v202;
    v150 = v245;
    v102(v202, v244, v245);
    v151 = v243;
    v152 = (*(v243 + 88))(v149, v150);
    v153 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v151 + 8))(v149, v150);
    if (v152 == v153)
    {
      v154 = 1;
      v155 = v213;
    }

    else
    {
      v162 = sub_10074F784();
      v155 = v213;
      sub_1002898DC(v162, v213);

      v154 = 0;
    }

    v163 = v203;
    v164 = v204;
    (*(v203 + 56))(v155, v154, 1, v204);
    (*(v220 + 104))(v209, enum case for VideoFillMode.scaleAspectFill(_:), v221);
    sub_10074EC14();
    sub_10074F2A4();
    v165 = v208;
    sub_100750504();

    (*(v218 + 56))(v165, 0, 1, v219);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100016B4C(v155, v148, &qword_100923450);
    if ((*(v163 + 48))(v148, 1, v164) == 1)
    {
      sub_10000C8CC(v148, &qword_100923450);
    }

    else
    {
      sub_100024440(v148);
    }

    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v166 = v222;
    sub_10074EC24();
    v167 = sub_100741264();
    (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
    v168 = v224;
    sub_10074EBE4();
    v169 = v223;
    sub_10074EBD4();
    type metadata accessor for VideoView();
    sub_100224CDC(&qword_1009230E0, type metadata accessor for VideoView);
    v170 = sub_1007464A4();
    sub_10000C8CC(v169, &unk_1009281C0);
    sub_10000C8CC(v168, &unk_1009281C0);
    sub_10000C8CC(v166, &unk_100923970);
    sub_10000C8CC(v251, &unk_1009276E0);
    v171 = swift_unknownObjectWeakLoadStrong();
    if (!v171)
    {
      goto LABEL_124;
    }

    v172 = v171;
    v173 = [v171 superview];
    if (v173)
    {
      v174 = v173;
      sub_100016C60(0, &qword_100922300);
      v175 = v67;
      v176 = sub_100753FC4();

      v151 = v243;
      if ((v176 & 1) == 0)
      {
        goto LABEL_124;
      }

      v177 = swift_unknownObjectWeakLoadStrong();
      if (!v177)
      {
        goto LABEL_124;
      }

      v172 = v177;
      [v177 removeFromSuperview];
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v178 = swift_unknownObjectWeakLoadStrong();
    if (v178)
    {
      v179 = v178;
      [v67 addSubview:v178];
    }

    sub_10062FDFC();
    v62 = &stru_1008F2000;
    [v67 setNeedsLayout];

    v180 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v181 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
    v182 = v213;
    if (v181)
    {
      [v181 removeFromSuperview];
      v183 = *&v67[v180];
    }

    else
    {
      v183 = 0;
    }

    *&v67[v180] = 0;

    [v67 setNeedsLayout];

    (*(v225 + 8))(v212, v226);
    sub_10000C8CC(v182, &qword_100923450);
    v161 = v244;
    goto LABEL_147;
  }

  v148 = v205;
  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_105;
  }

  __break(1u);
  return result;
}

uint64_t sub_100222B00@<X0>(uint64_t a1@<X8>)
{
  if (sub_1007537D4())
  {
    v2 = sub_1007504F4();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = a1;
    v6 = 1;
    goto LABEL_19;
  }

  v7 = sub_100753094();
  v9 = v8;
  if (v7 == sub_100753094() && v9 == v10)
  {

    goto LABEL_15;
  }

  v12 = sub_100754754();

  if (v12)
  {
LABEL_15:
    if (qword_100920638 != -1)
    {
      swift_once();
    }

    v20 = sub_1007504F4();
    v21 = v20;
    v22 = qword_10097E7A8;
    goto LABEL_18;
  }

  v13 = sub_100753094();
  v15 = v14;
  if (v13 == sub_100753094() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_100754754();

    if ((v18 & 1) == 0)
    {
      sub_1007504D4();
      v19 = sub_1007504F4();
      v3 = *(*(v19 - 8) + 56);
      v4 = v19;
      v5 = a1;
      v6 = 0;
      goto LABEL_19;
    }
  }

  if (qword_100920640 != -1)
  {
    swift_once();
  }

  v20 = sub_1007504F4();
  v21 = v20;
  v22 = qword_10097E7C0;
LABEL_18:
  v23 = sub_10000D0FC(v20, v22);
  v25 = *(v21 - 8);
  (*(v25 + 16))(a1, v23, v21);
  v3 = *(v25 + 56);
  v5 = a1;
  v6 = 0;
  v4 = v21;
LABEL_19:

  return v3(v5, v6, 1, v4);
}

void sub_100222DA4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = sub_10074A7F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v70 - v14);
  v16 = sub_10074F314();
  __chkstk_darwin(v16 - 8);
  if ((*(a2 + 32) & 1) == 0)
  {
    v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = a4;
    v74 = v12;
    v78 = a1;
    v18 = *(a2 + 16);
    v79 = v4;
    v19 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
    swift_beginAccess();
    v76 = v19;
    v21 = *(v19 + v20);
    if (v21 >> 62)
    {
      v22 = sub_100754664();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v15;
    v23 = v79;
    if (v22)
    {
      if (v22 < 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      v24 = a3;
      v75 = v10;
      v71 = v9;

      v25 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = sub_100754574();
        }

        else
        {
          v26 = *(v21 + v25 + 4);
        }

        v27 = v26;
        ++v25;
        v80 = v26;
        type metadata accessor for BorderedScreenshotView();
        sub_100224CDC(&qword_100923470, type metadata accessor for BorderedScreenshotView);
        v28 = v27;
        sub_1007544E4();
        sub_100744264();
        sub_100016994(v81);
        v29 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
        v82.value.super.isa = 0;
        v82.is_nil = 0;
        sub_100743384(v82, v30);
      }

      while (v22 != v25);

      v9 = v71;
      v10 = v75;
      a3 = v24;
      v15 = v77;
      v23 = v79;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      [*(Strong + qword_10093CB50) setImage:0];
      v80 = v32;
      type metadata accessor for VideoView();
      sub_100224CDC(&qword_10093DD00, type metadata accessor for VideoView);
      v33 = v32;
      sub_1007544E4();
      sub_100744264();
      v23 = v79;

      sub_100016994(v81);
    }

    v23 = *(v23 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView);
    a2 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v34 = *(v23 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    v83.value.super.isa = 0;
    v83.is_nil = 0;
    sub_100743384(v83, v35);

    v36 = *(v23 + a2);
    v37 = sub_1007433C4();
    sub_100224CDC(&qword_100925570, &type metadata accessor for ArtworkView);
    v38 = v36;
    v79 = a3;
    sub_100744274();

    if (!sub_10074EF24())
    {
LABEL_19:
      sub_100745E24();
      v42 = v74;
      (*(v10 + 104))(v74, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v9);
      sub_100224CDC(&qword_10092E508, &type metadata accessor for ScreenshotsDisplayStyle);
      v43 = sub_100753014();
      v46 = *(v10 + 8);
      v44 = v10 + 8;
      v45 = v46;
      v46(v42, v9);
      if (v43)
      {
LABEL_46:
        v45(v15, v9);
        return;
      }

      v75 = v44;
      v47 = sub_10074EF34();
      v49 = v48;
      v50 = sub_10074EFB4();
      v52 = v51;
      v53 = sub_10074EED4();
      if (v53)
      {
        v54 = sub_100748644();

        if (v54)
        {
          v55 = sub_10074F764();
          v53 = v56;
        }

        else
        {
          v55 = 0;
          v53 = 0;
        }
      }

      else
      {
        v55 = 0;
      }

      v57 = [v73 traitCollection];
      sub_1001D8750(v47, v18, v49, v50, v52, v55, v53, v57);

      v58 = sub_100745E04();
      v59 = sub_100745DE4();
      v60 = sub_100745DD4();
      if (v60 >> 62)
      {
        v66 = v60;
        v61 = sub_100754664();
        v60 = v66;
      }

      else
      {
        v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = v79;
      v15 = v77;
      if (v61)
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v63 = sub_100754574();
        }

        else
        {
          if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_51;
          }

          v63 = *(v60 + 32);
        }
      }

      else
      {

        v63 = 0;
      }

      v64 = sub_100745E54();
      if (v64 >> 62)
      {
        v67 = v64;
        v68 = sub_100754664();
        v64 = v67;
        if (v68)
        {
          goto LABEL_35;
        }
      }

      else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        if ((v64 & 0xC000000000000001) != 0)
        {
          v65 = sub_100754574();
          goto LABEL_38;
        }

        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v65 = *(v64 + 32);

LABEL_38:

LABEL_45:
          v69 = [v73 traitCollection];
          sub_1006A541C(v58, v59, v63, v65, v69, v62, v15);

          goto LABEL_46;
        }

LABEL_51:
        __break(1u);
        return;
      }

      v65 = 0;
      goto LABEL_45;
    }

    v75 = v37;
    v39 = qword_100920548;
    v21 = *(v23 + a2);
    if (v39 == -1)
    {
LABEL_16:
      v40 = sub_100747064();
      sub_10000D0FC(v40, qword_10097E3A8);
      sub_100746F34();
      [v21 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v21 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();
      v41 = *(v23 + a2);
      sub_100744204();

      v15 = v77;
      goto LABEL_19;
    }

LABEL_41:
    swift_once();
    goto LABEL_16;
  }
}

uint64_t sub_100223690(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a5;
  v138 = a3;
  v170 = a2;
  v6 = sub_10000C518(&unk_100934D80);
  __chkstk_darwin(v6 - 8);
  v133 = &v132 - v7;
  v135 = sub_100746A94();
  v142 = *(v135 - 8);
  __chkstk_darwin(v135);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v132 - v11;
  __chkstk_darwin(v13);
  v136 = &v132 - v14;
  v15 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v15 - 8);
  v143 = &v132 - v16;
  v17 = sub_100754724();
  v140 = *(v17 - 8);
  v141 = v17;
  __chkstk_darwin(v17);
  v139 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10074A7F4();
  v166 = *(v19 - 8);
  v167 = v19;
  __chkstk_darwin(v19);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10074A8C4();
  v164 = *(v22 - 8);
  v165 = v22;
  __chkstk_darwin(v22);
  v163 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10074CD14();
  v160 = *(v24 - 8);
  v161 = v24;
  __chkstk_darwin(v24);
  v159 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1007479B4();
  v175 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v173 = &v132 - v30;
  v176 = sub_10074A8A4();
  v174 = *(v176 - 8);
  __chkstk_darwin(v176);
  v162 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v132 - v33;
  sub_100753BA4();
  v35 = sub_10074EF34();
  v149 = v36;
  v150 = v35;
  v37 = sub_10074EFB4();
  v151 = v38;
  v152 = v37;
  if (sub_10074EED4() && (v39 = sub_100748644(), , v39))
  {
    v40 = sub_10074F764();
    v156 = v41;
    v157 = v40;
  }

  else
  {
    v156 = 0;
    v157 = 0;
  }

  sub_100745E34();
  v42 = [v170 traitCollection];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v43 = v176;
  v44 = sub_10000D0FC(v176, qword_10097E010);
  v153 = *(v174 + 16);
  v154 = v174 + 16;
  v153(v34, v44, v43);
  v45 = sub_100753804();
  v168 = v21;
  v169 = a1;
  v134 = v12;
  v132 = v9;
  if (v45)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v46 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v46 = qword_10093FF58;
  }

  v47 = sub_10000D0FC(v26, v46);
  v48 = v175;
  (*(v175 + 16))(v28, v47, v26);
  (*(v48 + 32))();
  v49 = [v42 preferredContentSizeCategory];
  sub_100753924();
  v158 = v42;

  sub_100747964();
  sub_100747994();
  v172 = v34;
  sub_10074A894();
  sub_10074A884();
  v50 = sub_100750F34();
  swift_allocObject();
  v148 = sub_100750F14();
  v51 = objc_opt_self();
  v146 = v51;
  v52 = [v51 preferredFontForTextStyle:UIFontTextStyleBody];
  v53 = sub_10074F3F4();
  v213[3] = v53;
  v171 = sub_100224CDC(&qword_10092AC70, &type metadata accessor for Feature);
  v213[4] = v171;
  v54 = sub_10000D134(v213);
  v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v56 = *(v53 - 8);
  v155 = v26;
  v147 = *(v56 + 104);
  v57 = v56 + 104;
  v144 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v147(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
  v145 = v57;
  sub_10074FC74();
  sub_10000C620(v213);
  v58 = v159;
  sub_10074CD04();
  sub_10074CCE4();
  v59 = v161;
  v160 = *(v160 + 8);
  (v160)(v58, v161);
  v60 = [v51 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v212[3] = v53;
  v212[4] = v171;
  v61 = sub_10000D134(v212);
  v62 = v55;
  v63 = v147;
  v147(v61, v62, v53);
  sub_10074FC74();
  sub_10000C620(v212);
  sub_10074CD04();
  sub_10074CCE4();
  v64 = v160;
  (v160)(v58, v59);
  v65 = [v146 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v211[3] = v53;
  v211[4] = v171;
  v66 = sub_10000D134(v211);
  v63(v66, v144, v53);
  sub_10074FC74();
  sub_10000C620(v211);
  sub_10074CD04();
  sub_10074CCE4();
  v64(v58, v59);
  sub_10001BB7C(0, 0);
  swift_allocObject();
  v67 = sub_100750F14();

  sub_10001BB7C(0, 0);
  swift_allocObject();
  v68 = sub_100750F14();
  v153(v162, v172, v176);
  v210 = &protocol witness table for LayoutViewPlaceholder;
  v209 = v50;
  v69 = v148;
  v208 = v148;
  v207 = 0;
  *&v205[40] = 0u;
  v206 = 0u;
  sub_10000C824(v213, v205);
  sub_10000C824(v212, &v204);
  v203 = 0;
  v201 = 0u;
  v202 = 0u;
  v200 = 0;
  v198 = 0u;
  v199 = 0u;

  v70 = sub_100750F24();
  v197 = &protocol witness table for LayoutViewPlaceholder;
  v196 = v50;
  v195 = v70;
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0;
  v184 = 0u;
  *&v183[40] = 0u;
  sub_10000C824(v211, v183);
  v181 = v50;
  v182 = &protocol witness table for LayoutViewPlaceholder;
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v180 = v67;
  v178 = v50;
  v177 = v68;
  v71 = v163;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1007A5CF0;
  v73 = v158;
  *(v72 + 32) = v158;
  v74 = v73;
  v75 = sub_100751044();
  sub_100224CDC(&unk_10092AC80, &type metadata accessor for SmallSearchLockupLayout);
  v76 = v165;
  sub_100750404();

  (*(v164 + 8))(v71, v76);
  sub_10000C620(v211);
  sub_10000C620(v212);
  sub_10000C620(v213);
  (*(v175 + 8))(v173, v155);
  (*(v174 + 8))(v172, v176);
  v78 = v168;
  v77 = v169;
  sub_100745E24();
  if ((sub_10074A7E4() & 1) == 0 || (sub_100668E0C() & 1) == 0)
  {
    return (*(v166 + 8))(v78, v167);
  }

  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v79 = sub_100750B04();
  sub_10000D0FC(v79, qword_100982098);
  v80 = v139;
  sub_1007502D4();
  v81 = v170;
  sub_100750564();
  (*(v140 + 8))(v80, v141);
  v82 = sub_100745E04();
  v83 = sub_100745DE4();
  v84 = sub_100745DD4();
  if (v84 >> 62)
  {
    v86 = v84;
    v87 = sub_100754664();
    v84 = v86;
    if (v87)
    {
      goto LABEL_20;
    }

LABEL_26:

    v69 = 0;
    goto LABEL_27;
  }

  if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v84 & 0xC000000000000001) != 0)
  {
    v69 = sub_100754574();
  }

  else
  {
    if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v69 = *(v84 + 32);
  }

LABEL_27:
  v88 = sub_100745E54();
  if (v88 >> 62)
  {
    v90 = v88;
    v91 = sub_100754664();
    v88 = v90;
    if (v91)
    {
      goto LABEL_29;
    }

LABEL_34:

    v176 = 0;
    goto LABEL_35;
  }

  if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v88 & 0xC000000000000001) != 0)
  {
    v89 = sub_100754574();
  }

  else
  {
    if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v176 = v89;

LABEL_35:
  v92 = [v81 traitCollection];
  sub_100222B00(v143);

  v67 = sub_100745E04();
  v68 = sub_100745DE4();
  v93 = sub_100745DD4();
  if (v93 >> 62)
  {
    v94 = v93;
    v95 = sub_100754664();
    v93 = v94;
    if (v95)
    {
LABEL_37:
      if ((v93 & 0xC000000000000001) == 0)
      {
        if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v77 = *(v93 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v77 = sub_100754574();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v77 = 0;
LABEL_43:
  v96 = sub_100745E54();
  if (v96 >> 62)
  {
    v99 = v96;
    v100 = sub_100754664();
    v96 = v99;
    v175 = v69;
    if (v100)
    {
LABEL_45:
      if ((v96 & 0xC000000000000001) == 0)
      {
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v98 = *(v96 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v172 = sub_100754664();
        if (v77)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v98 = sub_100754574();
      goto LABEL_48;
    }
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v175 = v69;
    if (v97)
    {
      goto LABEL_45;
    }
  }

  v98 = 0;
LABEL_51:
  v101 = sub_10074A7E4();
  v174 = v83;
  if ((v101 & 1) == 0)
  {

    v104 = v142;
    v106 = v135;
    v105 = v136;
    (*(v142 + 104))(v136, enum case for LockupMediaLayout.DisplayType.none(_:), v135);
LABEL_88:
    v128 = v176;
    type metadata accessor for LockupMediaView();
    v129 = v143;
    v130 = v81;
    v131 = v168;
    sub_1006A6BAC(v82, v174, v175, v128, v143, v105, v130, v168);

    (*(v104 + 8))(v105, v106);
    sub_10000C8CC(v129, &unk_1009281D0);
    return (*(v166 + 8))(v131, v167);
  }

  if (v68 | v67)
  {
    v107 = v134;
    sub_100750504();

    v104 = v142;
    v106 = v135;
    (*(v142 + 104))(v107, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v135);
    v105 = v136;
    (*(v104 + 32))(v136, v107, v106);
    goto LABEL_88;
  }

  v102 = sub_100631A30(v77, v98, 0, 1);
  v68 = v102;
  v83 = v102 >> 62;
  if (v102 >> 62)
  {
    goto LABEL_66;
  }

  v172 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v77)
  {
LABEL_55:
    v103 = sub_100743844();
    goto LABEL_68;
  }

LABEL_67:
  v103 = 0;
LABEL_68:
  LODWORD(v169) = sub_100631D8C(v103);

  v173 = v82;
  if (v77)
  {
    v108 = sub_100743844();
  }

  else
  {
    v108 = 0;
  }

  v109 = v166;
  v110 = v133;
  v111 = v78;
  v112 = v167;
  (*(v166 + 16))(v133, v111, v167);
  (*(v109 + 56))(v110, 0, 1, v112);
  v113 = sub_1006322B4(v108, v110);

  sub_10000C8CC(v110, &unk_100934D80);
  if (!v83)
  {
    result = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v82 = v173;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = sub_100754664();
  v82 = v173;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v68 & 0xC000000000000001) != 0)
  {
    sub_100754574();
LABEL_76:

    v114 = sub_10074F194();

    if (v114)
    {

      v104 = v142;
      v115 = v134;
      v106 = v135;
      (*(v142 + 104))(v134, enum case for LockupMediaLayout.DisplayType.landscape(_:), v135);
      v105 = v136;
LABEL_87:
      (*(v104 + 32))(v105, v115, v106);
      goto LABEL_88;
    }

LABEL_80:
    v116 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v117 = v142;
    v118 = v132;
    v119 = v135;
    v171 = *(v142 + 104);
    v171(v132, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v135);
    v120 = sub_100746A84();
    v165 = *(v117 + 8);
    v165(v118, v119);
    if (((v172 >= v120) & v113) != 0 || (v116 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v119), v121 = sub_100746A84(), v122 = v165, v165(v118, v119), ((v172 >= v121) & v169) != 0) || (v116 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v119), v123 = sub_100746A84(), v122(v118, v119), v172 >= v123))
    {

      v115 = v134;
      v171(v134, v116, v119);
      v81 = v170;
      v106 = v119;
    }

    else
    {
      v124 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v171(v118, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v119);
      v125 = sub_100746A84();

      v122(v118, v119);
      v106 = v119;
      if (v172 == v125)
      {
        v115 = v134;
        v126 = v134;
        v127 = v124;
      }

      else
      {
        v127 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v115 = v134;
        v126 = v134;
      }

      v171(v126, v127, v119);
      v81 = v170;
    }

    v104 = v142;
    v105 = v136;
    v82 = v173;
    goto LABEL_87;
  }

  if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_100224CDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LinkPresentationProvider.presentation(for:)(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_100741264();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_10092E510);
  v9 = sub_100752DE4();
  sub_100744414();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100144D70(v4);
    sub_100225094();
    swift_allocError();
    *v10 = 0;
    sub_100752DA4();
LABEL_6:

    return v9;
  }

  (*(v6 + 32))(v8, v4, v5);
  if ((sub_100744404() & 1) == 0)
  {
    sub_100225094();
    swift_allocError();
    *v19 = 1;
    sub_100752DA4();
    (*(v6 + 8))(v8, v5);
    goto LABEL_6;
  }

  v11 = objc_opt_self();
  sub_100741204(v12);
  v14 = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v15;
  v16[4] = a1;
  aBlock[4] = sub_1002254A4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E7BD4;
  aBlock[3] = &unk_10086D410;
  v17 = _Block_copy(aBlock);

  v18 = [v11 requestMetadataForURL:v14 completionHandler:v17];
  _Block_release(v17);

  (*(v6 + 8))(v8, v5);
  return v9;
}

unint64_t sub_100225094()
{
  result = qword_10092E518;
  if (!qword_10092E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E518);
  }

  return result;
}

uint64_t sub_1002250E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100225120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1007521E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100752224();
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_100752DA4();
  }

  else
  {
    v26 = v15;
    sub_1000A7FA0();
    v25 = v11;
    v24 = sub_100753774();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a3;
    aBlock[4] = sub_1002257FC;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10086D580;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100225808(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750);
    sub_1000A8054();
    sub_1007543A4();
    v22 = v24;
    sub_100753784();
    _Block_release(v20);

    (*(v25 + 8))(v13, v10);
    return (*(v26 + 8))(v17, v14);
  }
}

uint64_t sub_10022545C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1002254B0(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_100225850(a3, v5);

  if ((v6 & 1) == 0)
  {

LABEL_6:
    v4 = 0;
    v7 = a3;
    goto LABEL_7;
  }

  v7 = a3 | 0x8000000000000000;
  v8 = v5;
LABEL_7:
  swift_retain_n();
  sub_100752DB4();
  sub_100079128(v7, v4);
  sub_100079128(v7, v4);
}

uint64_t sub_100225588(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100225640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10022569C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t sub_100225758()
{
  result = qword_10092E5D8;
  if (!qword_10092E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E5D8);
  }

  return result;
}

uint64_t sub_1002257AC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100225808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100225850(uint64_t a1, void *a2)
{
  v3 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_100741264();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744414();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_100144D70(v11);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  if ((sub_100744404() & 1) == 0)
  {
LABEL_8:
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v17 = [objc_allocWithZone(LPLinkMetadataPresentationTransformer) init];
  v31 = a2;
  [v17 setMetadata:a2];
  sub_100741204(v18);
  v20 = v19;
  [v17 setURL:v19];

  v21 = [v17 presentationProperties];
  if (([v21 respondsToSelector:"style"] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v22 = [v21 style];
  swift_unknownObjectRelease();
  v23 = vdupq_n_s64(v22);
  if (vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_100862830, v23), vceqq_s64(unk_100862840, v23)), vuzp1q_s32(vceqq_s64(xmmword_100862850, v23), vceqq_s64(unk_100862860, v23))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_100862870, v23), vceqq_s64(unk_100862880, v23)), vuzp1q_s32(vceqq_s64(xmmword_100862890, v23), vceqq_s64(unk_1008628A0, v23))))))
  {
    (*(v13 + 8))(v15, v12);

    return 1;
  }

  v25 = [v31 video];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 youTubeURL];

    if (v27)
    {
      sub_100741224();

      (*(v13 + 8))(v15, v12);
      v28 = 0;
    }

    else
    {
      (*(v13 + 8))(v15, v12);

      v28 = 1;
    }

    v29 = 1;
    (*(v13 + 56))(v5, v28, 1, v12);
    sub_1000498A8(v5, v8);
    if (v16(v8, 1, v12) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    (*(v13 + 56))(v8, 1, 1, v12);
  }

  v29 = 0;
LABEL_17:
  sub_100144D70(v8);
  return v29;
}

id sub_100225DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23CollectionTableViewCell_collectionView] = 0;
  if (a3)
  {
    v6 = sub_100753064();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CollectionTableViewCell();
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", a1, v6);

  return v7;
}

id sub_100225EE8(void *a1)
{
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CollectionTableViewCell_collectionView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollectionTableViewCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100225FA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1002260A4(uint64_t a1)
{
  v191 = sub_10074BD24();
  v171 = *(v191 - 8);
  __chkstk_darwin(v191);
  v172 = &v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074BD44();
  v176 = *(v4 - 8);
  __chkstk_darwin(v4);
  v175 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_10074AB44();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v169 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v7 - 8);
  v166 = &v152 - v8;
  v174 = sub_100746584();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v182 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v170 = &v152 - v11;
  __chkstk_darwin(v12);
  v161 = &v152 - v13;
  v165 = sub_100754724();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_10074F704();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v162 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v188 = &v152 - v17;
  v196 = sub_100743F54();
  v198 = *(v196 - 8);
  __chkstk_darwin(v196);
  v185 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v177 = (&v152 - v20);
  __chkstk_darwin(v21);
  v194 = &v152 - v22;
  v181 = sub_10074E984();
  v180 = *(v181 - 1);
  __chkstk_darwin(v181);
  v155 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C518(&qword_10092C380);
  __chkstk_darwin(v24);
  v192 = &v152 - v25;
  v26 = sub_10000C518(&unk_10092E450);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v178 = &v152 - v28;
  v29 = sub_10000C518(&qword_100923228);
  __chkstk_darwin(v29);
  v31 = &v152 - v30;
  v32 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v32 - 8);
  v34 = &v152 - v33;
  v35 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v35 - 8);
  v159 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v179 = &v152 - v38;
  __chkstk_darwin(v39);
  v187 = &v152 - v40;
  sub_100743FA4();
  sub_1002282E4(&qword_10092C388, &type metadata accessor for ProductMedia);
  v41 = a1;
  sub_1007468B4();
  v42 = v203;
  if (!v203)
  {
    return 0.0;
  }

  v158 = v24;
  v154 = v4;
  v184 = sub_100743F94();
  v195 = sub_100743F34();
  v153 = sub_100743F44();
  v160 = v43;
  v183 = v42;
  v156 = sub_100743F74();
  v186 = v44;
  v197 = sub_10007DC04();
  swift_getKeyPath();
  v193 = v41;
  sub_100746914();

  sub_100028CD0(&v31[*(v29 + 48)], v34);
  v45 = v27;
  v46 = v26;
  if ((*(v27 + 48))(v34, 1, v26) == 1)
  {
    sub_10000C8CC(v31, &unk_10093D6E0);
    sub_10000C8CC(v34, &unk_10093D6E0);
    v47 = v180;
    v48 = v187;
    v49 = v181;
    v157 = *(v180 + 56);
    v157(v187, 1, 1, v181);
  }

  else
  {
    swift_getKeyPath();
    v48 = v187;
    sub_1007525B4();

    (*(v27 + 8))(v34, v26);
    v47 = v180;
    v49 = v181;
    v157 = *(v180 + 56);
    v157(v48, 0, 1, v181);
    sub_10000C8CC(v31, &unk_10093D6E0);
  }

  swift_getKeyPath();
  v50 = v178;
  sub_100746914();

  swift_getKeyPath();
  v51 = v179;
  sub_1007525B4();

  (*(v45 + 8))(v50, v46);
  v52 = v51;
  v157(v51, 0, 1, v49);
  v53 = *(v158 + 48);
  v54 = v192;
  sub_100028D40(v48, v192);
  sub_100028D40(v52, &v54[v53]);
  v55 = *(v47 + 48);
  v56 = v55(v54, 1, v49);
  v181 = (v195 >> 62);
  v57 = v48;
  v58 = v197;
  if (v56 != 1)
  {
    v64 = v159;
    sub_100028D40(v54, v159);
    v65 = v55(&v54[v53], 1, v49);
    v61 = v196;
    if (v65 != 1)
    {
      v74 = v155;
      (*(v47 + 32))(v155, &v54[v53], v49);
      sub_1002282E4(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
      LODWORD(v180) = sub_100753014();
      v75 = *(v47 + 8);
      v75(v74, v49);
      sub_10000C8CC(v52, &unk_100933370);
      sub_10000C8CC(v187, &unk_100933370);
      v61 = v196;
      v75(v64, v49);
      sub_10000C8CC(v54, &unk_100933370);
      v62 = v195;
      v63 = v181;
      if (v180)
      {
        goto LABEL_22;
      }

LABEL_11:
      v66 = v184;
      if (v63)
      {
        v67 = sub_100754664();
        if (v67)
        {
LABEL_13:
          v68 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          else if ((v62 & 0xC000000000000001) == 0)
          {
            if ((v68 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v68 < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v69 = *(v62 + 8 * v68 + 32);

              v203 = v66;
              if (v69)
              {
                goto LABEL_18;
              }

              goto LABEL_27;
            }

            __break(1u);
            goto LABEL_94;
          }

          v69 = sub_100754574();
          v203 = v66;
          if (v69)
          {
LABEL_18:
            v199 = v69;
            sub_100744514();
            sub_1002282E4(&qword_100929290, &type metadata accessor for MediaPlatform);
            v70 = sub_100753014();

            if (!v63)
            {
              v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v72 = v71 != 1;
              if (v70)
              {
LABEL_39:
                v76 = 0;
                goto LABEL_40;
              }

              goto LABEL_20;
            }

LABEL_38:
            v71 = sub_100754664();
            v72 = v71 != 1;
            if (v70)
            {
              goto LABEL_39;
            }

LABEL_20:
            v73 = v72;
            v66 = v184;
            goto LABEL_29;
          }

LABEL_27:

          if (!v63)
          {
            v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v73 = v71 != 1;
LABEL_29:
            if (v63)
            {
              v77 = sub_100754664();
            }

            else
            {
              v77 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v78 = v198;
            v79 = v177;
            if (v77)
            {
              v76 = v73;
              if ((v62 & 0xC000000000000001) != 0)
              {

                v80 = sub_100754574();
                v203 = v66;
                if (v80)
                {
LABEL_35:
                  v199 = v80;
                  sub_100744514();
                  sub_1002282E4(&qword_100929290, &type metadata accessor for MediaPlatform);
                  v81 = sub_100753014();

                  if (v81)
                  {
                    goto LABEL_41;
                  }

                  swift_unknownObjectRelease();

                  goto LABEL_85;
                }
              }

              else
              {
                if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_98;
                }

                v80 = *(v62 + 32);

                v203 = v66;
                if (v80)
                {
                  goto LABEL_35;
                }
              }
            }

            else
            {

              v203 = v66;
            }

            swift_unknownObjectRelease();

LABEL_85:

            return 0.0;
          }

          v70 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        v67 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v67)
        {
          goto LABEL_13;
        }
      }

      v203 = v66;
      goto LABEL_27;
    }

    sub_10000C8CC(v52, &unk_100933370);
    v59 = v192;
    sub_10000C8CC(v187, &unk_100933370);
    (*(v47 + 8))(v64, v49);
    v62 = v195;
LABEL_10:
    sub_10000C8CC(v59, &qword_10092C380);
    v63 = v181;
    goto LABEL_11;
  }

  sub_10000C8CC(v52, &unk_100933370);
  v59 = v192;
  sub_10000C8CC(v57, &unk_100933370);
  v60 = v55(&v59[v53], 1, v49);
  v61 = v196;
  v62 = v195;
  if (v60 != 1)
  {
    goto LABEL_10;
  }

  sub_10000C8CC(v59, &unk_100933370);
  v63 = v181;
LABEL_22:
  v70 = 1;
  if ((v62 & 0x8000000000000000) != 0 || (v62 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v76 = 0;
  v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:
  v78 = v198;
  v79 = v177;
LABEL_41:
  sub_100743F64();
  v82 = *(v78 + 104);
  v187 = (v78 + 104);
  v181 = v82;
  (v82)(v79, enum case for ProductMedia.DescriptionPlacement.top(_:), v61);
  v83 = sub_1002282E4(&qword_10092E628, &type metadata accessor for ProductMedia.DescriptionPlacement);
  sub_100753274();
  v180 = v83;
  sub_100753274();
  v179 = v71;
  if (v203 == v199 && v204 == v200)
  {
    v84 = 1;
  }

  else
  {
    v84 = sub_100754754();
  }

  v85 = *(v78 + 8);
  (v85)(v79, v61);

  v1 = 0.0;
  v79 = &qword_100920000;
  v198 = v78 + 8;
  v192 = v85;
  if ((v84 & 1) == 0)
  {
    goto LABEL_61;
  }

  v177 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v86 = v188;
  sub_100746914();

  sub_10074F674();
  (*(v189 + 8))(v86, v190);
  LODWORD(v178) = v76;
  if (v76)
  {
    if (qword_100920BA8 != -1)
    {
      swift_once();
    }

    [qword_100936900 size];
  }

  else if (v179 > 1)
  {
    sub_100744514();
    sub_10000C518(&unk_1009231A0);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1007A5CF0;
    *(v87 + 32) = v184;

    v63 = sub_1007444D4();

    v159 = v153;
    goto LABEL_53;
  }

  sub_100744514();
  v63 = sub_1007444D4();
  v159 = v156;
LABEL_53:
  v195 = v62;

  if (qword_100920BB0 != -1)
  {
LABEL_94:
    swift_once();
  }

  v88 = sub_10000D0FC(v191, qword_100936908);
  sub_10074BD14();
  sub_10000C888(&v203, v205);
  swift_getObjectType();
  v89 = v163;
  sub_100536120();
  sub_100750564();
  v91 = v90;
  (*(v164 + 8))(v89, v165);
  sub_1003FD42C(v63, v91);
  sub_10000C620(&v203);
  if (v63 >> 62)
  {
    sub_100754664();
  }

  v92 = v197;
  sub_100746574();
  v93 = sub_1003FD11C(v63, v92);

  v177 = v93;
  v94 = sub_10074BCD4();
  if (qword_100921018 != -1)
  {
    swift_once();
  }

  v95 = sub_100750534();
  v96 = sub_10000D0FC(v95, qword_100980D80);
  v97 = *(v95 - 8);
  v98 = v166;
  (*(v97 + 16))(v166, v96, v95);
  (*(v97 + 56))(v98, 0, 1, v95);
  (*(v167 + 104))(v169, enum case for DirectionalTextAlignment.none(_:), v168);
  v99 = sub_100745C84();
  v100 = objc_allocWithZone(v99);
  v101 = sub_100745C74();
  [v101 setAttributedText:v94];
  v159 = v94;
  if (qword_100920BA8 != -1)
  {
    swift_once();
  }

  [qword_100936900 size];
  v102 = sub_100750F34();
  swift_allocObject();
  v103 = sub_100750F14();
  (*(v171 + 16))(v172, v88, v191);
  v104 = v173;
  v105 = v161;
  v106 = v174;
  (*(v173 + 16))(v170, v161, v174);
  v205 = v99;
  v206 = &protocol witness table for UILabel;
  v203 = v101;
  v201 = v102;
  v202 = &protocol witness table for LayoutViewPlaceholder;
  v199 = v103;
  v107 = v101;

  v108 = v175;
  sub_10074BD34();
  v58 = v197;
  [v197 pageMarginInsets];
  sub_100753BA4();
  sub_1002282E4(&qword_10092E630, &type metadata accessor for PlatformSelectorViewLayout);
  v109 = v154;
  sub_100750404();
  sub_100753BC4();
  v1 = v110;

  (*(v176 + 8))(v108, v109);
  (*(v104 + 8))(v105, v106);
  v61 = v196;
  v85 = v192;
  v76 = v178;
  v79 = &qword_100920000;
LABEL_61:
  (v181)(v185, enum case for ProductMedia.DescriptionPlacement.bottom(_:), v61);
  sub_100753274();
  sub_100753274();
  if (v203 == v199 && v204 == v200)
  {
    (v85)(v185, v61);

    goto LABEL_65;
  }

  v111 = sub_100754754();
  (v85)(v185, v61);

  if (v111)
  {
LABEL_65:
    type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v112 = v188;
    sub_100746914();

    sub_10074F674();
    (*(v189 + 8))(v112, v190);
    if (!v76)
    {
      if (v179 > 1)
      {

        sub_100744514();
        sub_10000C518(&unk_1009231A0);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_1007A5CF0;
        *(v113 + 32) = v184;

        v114 = sub_1007444D4();
        v156 = v153;
LABEL_71:

        if (v79[374] != -1)
        {
          swift_once();
        }

        v115 = sub_10000D0FC(v191, qword_100936908);
        sub_10074BD14();
        sub_10000C888(&v203, v205);
        swift_getObjectType();
        v116 = v163;
        sub_100536120();
        sub_100750564();
        v118 = v117;
        (*(v164 + 8))(v116, v165);
        sub_1003FD42C(v114, v118);
        sub_10000C620(&v203);
        if (v114 >> 62)
        {
          sub_100754664();
        }

        sub_100746574();
        v119 = sub_1003FD11C(v114, v58);

        v195 = v119;
        v120 = sub_10074BCD4();
        if (qword_100921018 != -1)
        {
          swift_once();
        }

        v121 = sub_100750534();
        v122 = sub_10000D0FC(v121, qword_100980D80);
        v123 = *(v121 - 8);
        v124 = v166;
        (*(v123 + 16))(v166, v122, v121);
        (*(v123 + 56))(v124, 0, 1, v121);
        (*(v167 + 104))(v169, enum case for DirectionalTextAlignment.none(_:), v168);
        v125 = sub_100745C84();
        v126 = objc_allocWithZone(v125);
        v127 = sub_100745C74();
        [v127 setAttributedText:v120];
        v187 = v120;
        if (qword_100920BA8 != -1)
        {
          swift_once();
        }

        [qword_100936900 size];
        v128 = sub_100750F34();
        swift_allocObject();
        v129 = sub_100750F14();
        (*(v171 + 16))(v172, v115, v191);
        v130 = v173;
        v131 = v182;
        v132 = v174;
        (*(v173 + 16))(v170, v182, v174);
        v205 = v125;
        v206 = &protocol witness table for UILabel;
        v203 = v127;
        v201 = v128;
        v202 = &protocol witness table for LayoutViewPlaceholder;
        v199 = v129;
        v133 = v127;

        v134 = v175;
        sub_10074BD34();
        [v197 pageMarginInsets];
        sub_100753BA4();
        sub_1002282E4(&qword_10092E630, &type metadata accessor for PlatformSelectorViewLayout);
        v135 = v154;
        sub_100750404();
        sub_100753BC4();
        v137 = v136;

        (*(v176 + 8))(v134, v135);
        (*(v130 + 8))(v131, v132);
        goto LABEL_81;
      }

LABEL_70:
      sub_100744514();
      v114 = sub_1007444D4();
      goto LABEL_71;
    }

    if (qword_100920BA8 == -1)
    {
LABEL_67:
      [qword_100936900 size];
      goto LABEL_70;
    }

LABEL_98:
    swift_once();
    goto LABEL_67;
  }

  v137 = 0.0;
  v186 = v160;
LABEL_81:

  LODWORD(v195) = v1 > 0.0;
  LODWORD(v191) = v137 > 0.0;
  v138 = sub_10007DC04();
  swift_getKeyPath();
  v139 = v188;
  sub_100746914();

  sub_10074F5C4();
  v141 = v140;
  v142 = *(v189 + 8);
  v143 = v190;
  v142(v139, v190);
  swift_getKeyPath();
  v144 = v162;
  sub_100746914();

  sub_10074F5E4();
  v146 = v145;
  v142(v144, v143);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v148 = v147;
  v142(v139, v143);
  sub_1001130AC(v183, v195, v191, v138, v1, v137, v141, v146, v148);
  v150 = v149;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (v192)(v194, v196);
  return v150;
}

uint64_t sub_1002282E4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10022832C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_itemLayoutContext;
  v15 = sub_1007469A4();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView] = 0;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separator;
  v18 = sub_100751374();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v4[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = 0;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v20 = [v19 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v19 setClipsToBounds:0];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v24 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView;
  v25 = *(*&v19[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = v25;
  sub_100752A74();
  sub_10000C8CC(&v43, &unk_100923520);
  sub_10000C8CC(&v45, &unk_100923520);
  sub_100753C74();

  v27 = *(v11 + 8);
  v27(v13, v10);
  v28 = *(*&v19[v24] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v28;
  sub_100752A74();
  sub_10000C8CC(&v43, &unk_100923520);
  sub_10000C8CC(&v45, &unk_100923520);
  sub_100753C74();

  v27(v13, v10);
  v30 = *(*&v19[v24] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v30;
  sub_100752A74();
  sub_10000C8CC(&v43, &unk_100923520);
  sub_10000C8CC(&v45, &unk_100923520);
  sub_100753C74();

  v27(v13, v10);
  v32 = *(*&v19[v24] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v32;
  sub_100752A74();
  sub_10000C8CC(&v43, &unk_100923520);
  sub_10000C8CC(&v45, &unk_100923520);
  sub_100753C74();

  v27(v13, v10);
  v34 = *&v19[v24];
  v35 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  if (v35)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = v35;
    sub_100752A74();
    sub_10000C8CC(&v43, &unk_100923520);
    sub_10000C8CC(&v45, &unk_100923520);
    sub_100753C74();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v37 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v37)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v37;
    sub_100752A74();
    sub_10000C8CC(&v43, &unk_100923520);
    sub_10000C8CC(&v45, &unk_100923520);
    sub_100753C74();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v39 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = v39;
  sub_100752A74();
  sub_10000C8CC(&v43, &unk_100923520);
  sub_10000C8CC(&v45, &unk_100923520);
  sub_100753C74();

  v27(v13, v10);
  v41 = [v19 contentView];

  [v41 addSubview:*&v19[v24]];
  return v19;
}

id sub_100228B80()
{
  v1 = sub_10000C518(&qword_100933250);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_100751374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_100229A24(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000C8CC(v3, &qword_100933250);
    result = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

uint64_t sub_100228F64()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100751374();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100009D34();
  sub_1007477B4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v30 = v10;
  v31 = v12;
  v32 = v14;
  v33 = v16;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView];
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v17;
  if ([v18 isHidden])
  {

LABEL_4:
    v19 = 0;
LABEL_7:
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView] setFrame:{v10, v12, v14, v16}];
    return sub_1000164A8(v19);
  }

  v28 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &v30;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100229B74;
  *(v21 + 24) = v20;
  aBlock[4] = sub_100045E0C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011B528;
  aBlock[3] = &unk_10086D640;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  [v28 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v26 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v23[v26], v3);
    sub_100753B44();

    (*(v4 + 8))(v7, v3);
    v10 = v30;
    v12 = v31;
    v14 = v32;
    v16 = v33;
    v19 = sub_100229B74;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_1002292B8(char *a1)
{
  v2 = sub_100751374();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  (*(v3 + 16))(v5, &a1[v6], v2);
  sub_100751324();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  return [a1 setFrame:{v8, v10, v12, v14}];
}

uint64_t type metadata accessor for SmallLockupCollectionViewCell()
{
  result = qword_10092E660;
  if (!qword_10092E660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002295D8()
{
  sub_1002296F8(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1002296F8(319, &qword_10092F000, &type metadata accessor for Separator);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002296F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_10022976C()
{
  v1 = sub_100747064();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_100746F34();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_1002298A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100743204();

  v4 = *(v1 + v2);
  sub_1007433C4();
  sub_1002299DC(&qword_100925570, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100744274();
}

uint64_t sub_100229984(uint64_t a1)
{
  result = sub_1002299DC(&qword_10092E670, type metadata accessor for SmallLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002299DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100229A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100933250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100229A94(void *a1)
{
  type metadata accessor for SmallLockupView();
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v2 = sub_100747064();
  v3 = sub_10000D0FC(v2, qword_10097E3A8);
  sub_1001CF184(v3, a1);
  return v4;
}

uint64_t sub_100229B3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100229B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100229BA4()
{
  sub_10000C518(&unk_100939A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B3A60;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  strcpy((inited + 200), "contentsRect");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = [objc_allocWithZone(NSNull) init];
  v1 = sub_100413A3C(inited);
  swift_setDeallocating();
  sub_10000C518(&qword_10092E6D0);
  result = swift_arrayDestroy();
  qword_10097E800 = v1;
  return result;
}

CGFloat sub_100229DAC()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_10097E808 = v2;
  return v2.m21;
}

id sub_100229ED0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_100753064();
    [v2 removeObserver:v0 forKeyPath:v3];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MirrorView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_10022A180()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MirrorView();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = [v0 bounds];
  (*((swift_isaMask & *v0) + 0xD0))(v1, v2, v3);
  sub_100753B64();
  v5 = v4;
  v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer);
  [v6 setBounds:{0.0, 0.0, v7, v4}];
  [v0 bounds];
  MidY = CGRectGetMidY(v12);
  [v0 bounds];
  v9 = MidY + (v5 - CGRectGetHeight(v13)) * 0.5;
  [v0 bounds];
  return [v6 setPosition:{CGRectGetMidX(v14), v9 + *(v0 + OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsVerticalOffset)}];
}

double sub_10022A314(double a1)
{
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong image];

    if (v8)
    {
      [v8 size];
      sub_100750504();
      sub_100750464();
      a1 = v9;

      (*(v3 + 8))(v5, v2);
    }
  }

  return a1;
}

void sub_10022A458()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong backgroundColor], v3, v4))
  {
    v5 = [v4 CGColor];
  }

  else
  {
    v5 = 0;
  }

  [v1 setBackgroundColor:v5];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 image];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 CGImage];

  if (v9)
  {
    type metadata accessor for CGImage(0);
    v8 = sub_100754734();
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_10:
  [v1 setContents:v8];
  swift_unknownObjectRelease();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 alpha];
    v13 = v12;

    *&v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  [v1 setOpacity:v14];
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = sub_100753064();
    v18 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageKVOContext;
    swift_beginAccess();
    [v16 addObserver:v0 forKeyPath:v17 options:1 context:v0 + v18];
    swift_endAccess();
  }
}

void sub_10022A668(uint64_t a1, NSString a2, uint64_t a3, Class isa, char *a5)
{
  v10 = &v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageKVOContext];
  swift_beginAccess();
  if (!a5 || v10 != a5)
  {
    if (a2)
    {
      a2 = sub_100753064();
    }

    sub_100032C04(a3, v25);
    v15 = v26;
    if (v26)
    {
      v16 = sub_10000C888(v25, v26);
      v17 = *(v15 - 8);
      v18 = __chkstk_darwin(v16);
      v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = sub_100754734();
      (*(v17 + 8))(v20, v15);
      sub_10000C620(v25);
      if (!isa)
      {
LABEL_11:
        v22 = type metadata accessor for MirrorView();
        v24.receiver = v5;
        v24.super_class = v22;
        objc_msgSendSuper2(&v24, "observeValueForKeyPath:ofObject:change:context:", a2, v21, isa, a5);

        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    else
    {
      v21 = 0;
      if (!isa)
      {
        goto LABEL_11;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_10022AA50();
    isa = sub_100752F34().super.isa;
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    isa = [Strong image];

    if (isa)
    {
      v13 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer];
      v14 = [(objc_class *)isa CGImage];
      [v13 setContents:v14];

      [v5 setNeedsLayout];
LABEL_12:
    }
  }
}

unint64_t sub_10022AA50()
{
  result = qword_1009224E8;
  if (!qword_1009224E8)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009224E8);
  }

  return result;
}

char *sub_10022AAA8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v38 = v4;
  v16 = &v4[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_currentState];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v16[40] = 1;
  if (qword_1009210F8 != -1)
  {
    swift_once();
  }

  v17 = sub_100750534();
  v18 = sub_10000D0FC(v17, qword_100981020);
  v19 = *(v17 - 8);
  v35 = *(v19 + 16);
  v36 = v18;
  v35(v15, v18, v17);
  v34 = *(v19 + 56);
  v34(v15, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v33 = *(v10 + 104);
  v33(v12, enum case for DirectionalTextAlignment.none(_:), v9);
  v21 = sub_100745C84();
  v22 = objc_allocWithZone(v21);
  v23 = sub_100745C74();
  v24 = v9;
  v25 = v38;
  *&v38[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel] = v23;
  v35(v15, v36, v17);
  v34(v15, 0, 1, v17);
  v33(v12, v20, v24);
  v26 = objc_allocWithZone(v21);
  *&v25[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel] = sub_100745C74();
  *&v25[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_columnWidth] = 0;
  *&v25[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_interColumnSpace] = 0;
  v39.receiver = v25;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel]];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel]];

  return v31;
}

uint64_t sub_10022AFB4(uint64_t a1)
{
  v2 = sub_10074F704();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074EA34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_100749FC4();
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17 = *(v9 + 8);
  v17(v13, v8);
  if ((*(v5 + 88))(v7, v4) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  v18 = *(v40 + 32);
  v33 = v14;
  v18(v16, v7, v14);
  v19 = v37;
  v20 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel);
  sub_100749FB4();
  v21 = sub_100753064();

  [v20 setText:v21];

  v22 = *(v19 + OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel);
  v23 = v34;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17(v23, v8);
  if (v41)
  {
    v24 = sub_100753064();
  }

  else
  {
    v24 = 0;
  }

  [v22 setText:v24];

  v26 = v36;
  sub_100747B84();
  sub_10074F5A4();
  v28 = v27;
  v29 = v39;
  v30 = *(v38 + 8);
  v30(v26, v39);
  *(v19 + OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_columnWidth) = v28;
  sub_100747B84();
  sub_10074F634();
  v32 = v31;
  v30(v26, v29);
  result = (*(v40 + 8))(v16, v33);
  *(v19 + OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_interColumnSpace) = v32;
  return result;
}

id sub_10022B464()
{
  swift_getObjectType();
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_currentState + 40])
  {
    v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_columnWidth];
  }

  else
  {
    v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_currentState + 24];
  }

  v2 = *v1;
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel];
  sub_1007477B4();
  [v3 measurementsWithFitting:v0 in:{v2, CGRectGetHeight(v26)}];
  v4 = [v0 traitCollection];
  sub_1007477B4();
  sub_100753AA4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel];
  sub_1007477B4();
  Width = CGRectGetWidth(v27);
  sub_1007477B4();
  [v13 measurementsWithFitting:v0 in:{Width, CGRectGetHeight(v28)}];
  v15 = [v0 traitCollection];
  sub_1007477B4();
  sub_100753AA4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  return [v13 setFrame:{v17, v19, v21, v23}];
}

id sub_10022B754(void (*a1)(char *, char *, uint64_t))
{
  v57 = a1;
  v1 = sub_100754724();
  v68 = *(v1 - 8);
  v69 = v1;
  __chkstk_darwin(v1);
  v66 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007457D4();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_10092E450);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v51 - v6;
  v73 = sub_100750BD4();
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v67 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v51 - v9;
  v10 = sub_10074F704();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100750E94();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  sub_100750E84();
  if (qword_1009210F8 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  sub_10000D0FC(v21, qword_100981020);
  v56 = v20;
  sub_100750E54();
  v22 = *(v15 + 8);
  v61 = v15 + 8;
  v62 = v22;
  v22(v17, v14);
  sub_100747B84();
  sub_10074F674();
  v72 = v14;
  v52 = *(v11 + 8);
  v51 = v10;
  v52(v13, v10);
  sub_100749FB4();
  v57 = *(v15 + 16);
  v57(v17, v20, v14);
  sub_100750BB4();
  sub_100750BF4();
  v23 = sub_100747B94();
  v54 = sub_100751034();
  v55 = sub_10000C518(&unk_1009231A0);
  v24 = swift_allocObject();
  v53 = xmmword_1007A5CF0;
  *(v24 + 16) = xmmword_1007A5CF0;
  *(v24 + 32) = v23;
  v25 = v23;
  v26 = sub_100751044();
  sub_100750404();
  v28 = v27;

  sub_100747B84();
  sub_10074FC24();
  sub_10074F674();
  v52(v13, v51);
  v29 = v58;
  sub_100747C04();
  swift_getKeyPath();
  v30 = v60;
  sub_1007525B4();

  (*(v59 + 8))(v29, v30);
  v31 = v56;
  v57(v17, v56, v72);
  sub_100750BB4();
  v32 = v67;
  sub_100750BF4();
  v33 = sub_100747B94();
  v34 = swift_allocObject();
  *(v34 + 16) = v53;
  *(v34 + 32) = v33;
  v35 = v33;
  v36 = sub_100751044();
  v37 = v73;
  sub_100750404();
  v39 = v38;

  if (v28 > v39)
  {
    v39 = v28;
  }

  v40 = v63;
  sub_1007457C4();
  sub_100747BA4();
  v41 = v66;
  sub_1007502D4();
  sub_10022BF6C();
  v42 = v65;
  sub_100750564();
  v44 = v43;
  swift_unknownObjectRelease();
  (*(v68 + 8))(v41, v69);
  (*(v64 + 8))(v40, v42);
  v45 = objc_opt_self();
  v46 = [v45 fractionalWidthDimension:1.0];
  v47 = [v45 absoluteDimension:v39 + v44];
  v48 = [objc_opt_self() sizeWithWidthDimension:v46 heightDimension:v47];

  v49 = *(v70 + 8);
  v49(v32, v37);
  v49(v71, v37);
  v62(v31, v72);
  return v48;
}

unint64_t sub_10022BF6C()
{
  result = qword_10092C838;
  if (!qword_10092C838)
  {
    sub_1007457D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C838);
  }

  return result;
}

uint64_t TodayCardLockupLayout.Metrics.init(artworkSize:artworkMargin:ordinalSpaceProvider:headingSpace:titleSpace:subtitleSpace:tertiaryTitleSpace:offerTextSpace:offerButtonSize:offerButtonMargin:preferVerticallyStackedIcon:preferStackedLargeAXLayouts:singleLineTitleAndSubtitle:allowAccessibilityLayout:backgroundAssetHeight:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, char a14, __int128 *a15, char a16, char a17, char a18, char a19, uint64_t a20, char a21)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_100012160(a1, a9 + 16);
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  sub_100012160(a4, a9 + 72);
  sub_100012160(a5, a9 + 112);
  sub_100012160(a8, a9 + 232);
  sub_100012160(a6, a9 + 152);
  sub_100012160(a7, a9 + 192);
  *(a9 + 272) = a12;
  *(a9 + 280) = a13;
  *(a9 + 288) = a14 & 1;
  result = sub_100012160(a15, a9 + 296);
  *(a9 + 336) = a16;
  *(a9 + 337) = a17;
  *(a9 + 338) = a18;
  *(a9 + 339) = a19;
  *(a9 + 344) = a20;
  *(a9 + 352) = a21 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.ordinalSpaceProvider.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t TodayCardLockupLayout.Metrics.ordinalSpaceProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 112);

  return sub_100012160(a1, v1 + 112);
}

uint64_t TodayCardLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 152);

  return sub_100012160(a1, v1 + 152);
}

uint64_t TodayCardLockupLayout.Metrics.tertiaryTitleSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 192);

  return sub_100012160(a1, v1 + 192);
}

uint64_t TodayCardLockupLayout.Metrics.offerTextSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 232);

  return sub_100012160(a1, v1 + 232);
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 272) = result;
  *(v3 + 280) = a2;
  *(v3 + 288) = a3 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  sub_10000C620(v1 + 296);

  return sub_100012160(a1, v1 + 296);
}

uint64_t TodayCardLockupLayout.Metrics.backgroundAssetHeight.setter(uint64_t result, char a2)
{
  *(v2 + 344) = result;
  *(v2 + 352) = a2 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:crossLinkTitleText:crossLinkSubtitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v78 = a7;
  v79 = a5;
  v83 = a6;
  v80 = a4;
  v81 = a3;
  v74 = a1;
  v75 = a9;
  sub_100055CF8(a1, v90);
  v82 = a8;
  v14 = *(a8 + 24);
  BYTE8(v90[47]) = v14 != 0;
  v15 = a2[3];
  v16 = a2[4];
  v76 = a2;
  sub_10000C888(a2, v15);
  v17 = sub_100754284();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v73 - v19;
  sub_100750374();
  v21 = *(v15 - 8);
  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v15;
    v89 = v16;
    v22 = sub_10000D134(&v87);
    (*(v21 + 32))(v22, v20, v15);
  }

  *(&v90[22] + 8) = v87;
  *(&v90[23] + 8) = v88;
  *(&v90[24] + 1) = v89;
  sub_100016B4C(v81, v84, &qword_10092BC30);
  v23 = v85;
  if (v85)
  {
    v24 = v86;
    sub_10000C888(v84, v85);
    v25 = sub_100754284();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v73 - v27;
    sub_100750814();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v23;
      v89 = v24;
      v30 = sub_10000D134(&v87);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_10000C620(v84);
  }

  else
  {
    sub_10000C8CC(v84, &qword_10092BC30);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[25] = v87;
  v90[26] = v88;
  *&v90[27] = v89;
  sub_100016B4C(v80, v84, &qword_10092BC30);
  v31 = v85;
  if (v85)
  {
    v32 = v86;
    sub_10000C888(v84, v85);
    v33 = sub_100754284();
    v34 = *(v33 - 8);
    __chkstk_darwin(v33);
    v36 = &v73 - v35;
    sub_100750814();
    v37 = *(v31 - 8);
    if ((*(v37 + 48))(v36, 1, v31) == 1)
    {
      (*(v34 + 8))(v36, v33);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v31;
      v89 = v32;
      v38 = sub_10000D134(&v87);
      (*(v37 + 32))(v38, v36, v31);
    }

    sub_10000C620(v84);
  }

  else
  {
    sub_10000C8CC(v84, &qword_10092BC30);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v77 = a10;
  *(&v90[27] + 8) = v87;
  *(&v90[28] + 8) = v88;
  *(&v90[29] + 1) = v89;
  sub_10000C824(v79, &v90[30]);
  v39 = v83[3];
  v40 = v83[4];
  sub_10000C888(v83, v39);
  v41 = sub_100754284();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v73 - v43;
  if (v14)
  {
    sub_100750804();
  }

  else
  {
    sub_100750814();
  }

  v45 = *(v39 - 8);
  if ((*(v45 + 48))(v44, 1, v39) == 1)
  {
    (*(v42 + 8))(v44, v41);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v39;
    v89 = v40;
    v46 = sub_10000D134(&v87);
    (*(v45 + 32))(v46, v44, v39);
  }

  *(&v90[32] + 8) = v87;
  *(&v90[33] + 8) = v88;
  *(&v90[34] + 1) = v89;
  sub_100016B4C(v78, v84, &qword_10092BC30);
  v47 = v85;
  if (v85)
  {
    v48 = v86;
    sub_10000C888(v84, v85);
    v49 = sub_100754284();
    v50 = *(v49 - 8);
    __chkstk_darwin(v49);
    v52 = &v73 - v51;
    sub_100750814();
    v53 = *(v47 - 8);
    if ((*(v53 + 48))(v52, 1, v47) == 1)
    {
      (*(v50 + 8))(v52, v49);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v47;
      v89 = v48;
      v54 = sub_10000D134(&v87);
      (*(v53 + 32))(v54, v52, v47);
    }

    sub_10000C620(v84);
  }

  else
  {
    sub_10000C8CC(v84, &qword_10092BC30);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[35] = v87;
  v90[36] = v88;
  *&v90[37] = v89;
  sub_100016B4C(v82, &v90[37] + 8, &qword_10092BC30);
  sub_100016B4C(v77, v84, &qword_10092BC30);
  v55 = v85;
  if (v85)
  {
    v56 = v86;
    sub_10000C888(v84, v85);
    v57 = sub_100754284();
    v58 = *(v57 - 8);
    __chkstk_darwin(v57);
    v60 = &v73 - v59;
    sub_100750804();
    v61 = *(v55 - 8);
    if ((*(v61 + 48))(v60, 1, v55) == 1)
    {
      (*(v58 + 8))(v60, v57);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v55;
      v89 = v56;
      v62 = sub_10000D134(&v87);
      (*(v61 + 32))(v62, v60, v55);
    }

    sub_10000C620(v84);
  }

  else
  {
    sub_10000C8CC(v84, &qword_10092BC30);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[40] = v87;
  v90[41] = v88;
  *&v90[42] = v89;
  sub_100016B4C(a11, v84, &qword_10092BC30);
  v63 = v85;
  if (v85)
  {
    v64 = v86;
    sub_10000C888(v84, v85);
    v65 = sub_100754284();
    v66 = *(v65 - 8);
    __chkstk_darwin(v65);
    v68 = &v73 - v67;
    sub_100750814();
    v69 = *(v63 - 8);
    if ((*(v69 + 48))(v68, 1, v63) == 1)
    {
      sub_10000C8CC(a11, &qword_10092BC30);
      sub_10000C8CC(v77, &qword_10092BC30);
      sub_10000C8CC(v78, &qword_10092BC30);
      sub_10000C620(v79);
      sub_10000C8CC(v80, &qword_10092BC30);
      sub_10000C8CC(v81, &qword_10092BC30);
      sub_100055D54(v74);
      sub_10000C8CC(v82, &qword_10092BC30);
      (*(v66 + 8))(v68, v65);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v63;
      v89 = v64;
      v70 = sub_10000D134(&v87);
      (*(v69 + 32))(v70, v68, v63);
      sub_10000C8CC(a11, &qword_10092BC30);
      sub_10000C8CC(v77, &qword_10092BC30);
      sub_10000C8CC(v78, &qword_10092BC30);
      sub_10000C620(v79);
      sub_10000C8CC(v80, &qword_10092BC30);
      sub_10000C8CC(v81, &qword_10092BC30);
      sub_100055D54(v74);
      sub_10000C8CC(v82, &qword_10092BC30);
    }

    sub_10000C620(v84);
  }

  else
  {
    sub_10000C8CC(a11, &qword_10092BC30);
    sub_10000C8CC(v77, &qword_10092BC30);
    sub_10000C8CC(v78, &qword_10092BC30);
    sub_10000C620(v79);
    sub_10000C8CC(v80, &qword_10092BC30);
    sub_10000C8CC(v81, &qword_10092BC30);
    sub_100055D54(v74);
    sub_10000C8CC(v82, &qword_10092BC30);
    sub_10000C8CC(v84, &qword_10092BC30);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  *(&v90[42] + 8) = v87;
  *(&v90[43] + 8) = v88;
  *(&v90[44] + 1) = v89;
  v71 = *(a12 + 16);
  v90[45] = *a12;
  v90[46] = v71;
  *&v90[47] = *(a12 + 32);
  memcpy(v75, v90, 0x2F9uLL);
  sub_10000C620(v83);
  return sub_10000C620(v76);
}

double TodayCardLockupLayout.measure(toFit:with:)(void *a1, double a2)
{
  if ((sub_100753804() & 1) != 0 && *(v2 + 339) == 1)
  {
    sub_10022D718(0, a1, v8);
  }

  else
  {
    sub_10022E354(0, a1, v8, a2);
  }

  sub_100012160(v8, v9);
  sub_10000C888(v9, v9[3]);
  sub_100751254();
  v6 = v5;
  sub_10000C620(v9);
  return v6;
}

uint64_t TodayCardLockupLayout.place(at:with:)(void *a1, double a2, double a3, double a4)
{
  if (*(v4 + 760) == 1)
  {
    if ((sub_100753804() & 1) != 0 && *(v4 + 339) == 1)
    {
      sub_10022D718(1u, a1, v8);
    }

    else
    {
      sub_10022E354(1, a1, v8, a4);
    }

    sub_100012160(v8, v9);
    sub_10000C888(v9, v10);
    sub_100751244();
    sub_10000C620(v9);
  }

  if ((sub_100753804() & 1) != 0 && *(v4 + 339) == 1)
  {
    sub_10022D718(0, a1, v8);
  }

  else
  {
    sub_10022E354(0, a1, v8, a4);
  }

  sub_100012160(v8, v9);
  sub_10000C888(v9, v10);
  sub_100751244();
  return sub_10000C620(v9);
}

uint64_t sub_10022D718@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v81 = a3;
  v6 = sub_100750A34();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100751144();
  v10 = *(v9 - 8);
  v84 = v9;
  v85 = v10;
  __chkstk_darwin(v9);
  v89 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v75 - v13;
  __chkstk_darwin(v14);
  v87 = &v75 - v15;
  __chkstk_darwin(v16);
  v18 = (&v75 - v17);
  v19 = sub_1007507B4();
  v79 = *(v19 - 8);
  v80 = v19;
  __chkstk_darwin(v19);
  v88 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750794();
  sub_10000C888((v3 + 112), *(v3 + 136));
  sub_100750574();
  v22 = v21 + v21;
  sub_10000C888((v4 + 152), *(v4 + 176));
  sub_100750574();
  v24 = v22 + v23;
  sub_100016B4C(v3 + 360, v90, &unk_100928A00);
  v82 = a2;
  if (*(&v90[1] + 1))
  {
    sub_100012160(v90, v94);
    if (*(v3 + 336) & 1) != 0 || (v39 = [a2 preferredContentSizeCategory], v40 = sub_100753954(), v39, (v40) && *(v4 + 337) == 1)
    {
      sub_10000C888(v94, v95);
      sub_100750434();
      v25 = *v4;
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v25;
      v26 = enum case for Resize.Rule.replaced(_:);
      v83 = enum case for Resize.Rule.replaced(_:);
      v27 = v84;
      v28 = *(v85 + 104);
      (v28)(v18, enum case for Resize.Rule.replaced(_:), v84);
      v29 = *(v4 + 8);
      v30 = v87;
      *(v87 + 3) = &type metadata for CGFloat;
      v30[4] = &protocol witness table for CGFloat;
      *v30 = v29;
      (v28)(v30, v26, v27);
      v31 = v18;
      v32 = enum case for Resize.Rule.unchanged(_:);
      (v28)(v86, enum case for Resize.Rule.unchanged(_:), v27);
      (v28)(v89, v32, v27);
      v77 = sub_100751154();
      v92 = v77;
      v93 = &protocol witness table for Resize;
      sub_10000D134(v91);
      sub_100751164();
      sub_100231198(v4, v90);
      v33 = swift_allocObject();
      memcpy((v33 + 16), v90, 0x2F9uLL);
      v34 = v82;
      *(v33 + 784) = v82;
      v35 = v34;
      sub_100750754();
      v36 = v86;

      sub_10000C620(v91);
      sub_10022EEA0(v78 & 1, v35, v90);
      sub_1007510E4();
      v92 = sub_100751104();
      v93 = &protocol witness table for Center;
      sub_10000D134(v91);
      sub_100751114();
      v31[3] = &type metadata for CGFloat;
      v31[4] = &protocol witness table for CGFloat;
      *v31 = v24;
      (v28)(v31, v83, v27);
      (v28)(v87, v32, v27);
      (v28)(v36, v32, v27);
      v78 = v32;
      v37 = v32;
      v18 = v31;
      (v28)(v89, v37, v27);
      *(&v90[1] + 1) = v77;
      *&v90[2] = &protocol witness table for Resize;
      sub_10000D134(v90);
      sub_100751164();
      sub_100750754();
      sub_10000C620(v90);
      v38 = v94;
      goto LABEL_12;
    }

    sub_10000C620(v94);
  }

  else
  {
    sub_10000C8CC(v90, &unk_100928A00);
  }

  sub_100750A04();
  sub_100016B4C(v4 + 360, v90, &unk_100928A00);
  if (*(&v90[1] + 1))
  {
    sub_100012160(v90, v94);
    v41 = v18;
    v42 = v84;
    v75 = v8;
    sub_10000C888(v94, v95);
    sub_100750434();
    v43 = *v4;
    v41[3] = &type metadata for CGFloat;
    v41[4] = &protocol witness table for CGFloat;
    *v41 = v43;
    v44 = enum case for Resize.Rule.replaced(_:);
    v45 = v87;
    v46 = *(v85 + 104);
    v83 = enum case for Resize.Rule.replaced(_:);
    v46(v41, enum case for Resize.Rule.replaced(_:), v42);
    v47 = *(v4 + 8);
    v45[3] = &type metadata for CGFloat;
    v45[4] = &protocol witness table for CGFloat;
    v48 = v89;
    v49 = v86;
    *v45 = v47;
    v46(v45, v44, v42);
    v50 = enum case for Resize.Rule.unchanged(_:);
    v46(v49, enum case for Resize.Rule.unchanged(_:), v42);
    v51 = v42;
    v18 = v41;
    v46(v48, v50, v51);
    a2 = v82;
    v92 = sub_100751154();
    v93 = &protocol witness table for Resize;
    sub_10000D134(v91);
    v8 = v75;
    v52 = v50;
    v53 = v83;
    sub_100751164();
    sub_100231198(v4, v90);
    v54 = swift_allocObject();
    memcpy((v54 + 16), v90, 0x2F9uLL);
    *(v54 + 784) = a2;
    v55 = a2;
    sub_1007509F4();

    sub_10000C620(v91);
    sub_10000C620(v94);
  }

  else
  {
    sub_10000C8CC(v90, &unk_100928A00);
    v53 = enum case for Resize.Rule.replaced(_:);
    v52 = enum case for Resize.Rule.unchanged(_:);
  }

  sub_10000C888((v4 + 16), *(v4 + 40));
  sub_100750574();
  sub_10022EEA0(v78 & 1, a2, v90);
  sub_1007510F4();
  v95 = sub_100751104();
  v96 = &protocol witness table for Center;
  sub_10000D134(v94);
  sub_100751114();
  v18[3] = &type metadata for CGFloat;
  v18[4] = &protocol witness table for CGFloat;
  *v18 = v24;
  v28 = *(v85 + 104);
  v83 = v53;
  v56 = v53;
  v57 = v84;
  (v28)(v18, v56, v84);
  (v28)(v87, v52, v57);
  (v28)(v86, v52, v57);
  v78 = v52;
  v28(v89);
  *(&v90[1] + 1) = sub_100751154();
  *&v90[2] = &protocol witness table for Resize;
  sub_10000D134(v90);
  sub_100751164();
  sub_1007509F4();
  sub_10000C620(v90);
  v58 = v77;
  *(&v90[1] + 1) = v77;
  *&v90[2] = &protocol witness table for HorizontalStack;
  v59 = sub_10000D134(v90);
  v60 = v8;
  v61 = v76;
  (*(v76 + 16))(v59, v60, v58);
  sub_100750754();
  (*(v61 + 8))(v60, v58);
  v38 = v90;
LABEL_12:
  sub_10000C620(v38);
  sub_100016B4C(v4 + 720, v90, &unk_100928A00);
  if (*(&v90[1] + 1))
  {
    sub_100012160(v90, v94);
    if ((*(v4 + 288) & 1) == 0)
    {
      v63 = *(v4 + 272);
      v62 = *(v4 + 280);
      v64 = v87;
      sub_10000C888(v94, v95);
      sub_100750434();
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v63;
      v65 = v84;
      v66 = v83;
      (v28)(v18, v83, v84);
      v64[3] = &type metadata for CGFloat;
      v64[4] = &protocol witness table for CGFloat;
      *v64 = v62;
      (v28)(v64, v66, v65);
      v67 = v78;
      (v28)(v86, v78, v65);
      (v28)(v89, v67, v65);
      v92 = sub_100751154();
      v93 = &protocol witness table for Resize;
      sub_10000D134(v91);
      sub_100751164();
      sub_100231198(v4, v90);
      v68 = swift_allocObject();
      memcpy((v68 + 16), v90, 0x2F9uLL);
      v69 = v82;
      *(v68 + 784) = v82;
      v70 = v69;
      sub_100750754();

      sub_10000C620(v91);
    }

    sub_10000C620(v94);
  }

  else
  {
    sub_10000C8CC(v90, &unk_100928A00);
  }

  v72 = v80;
  v71 = v81;
  v81[3] = v80;
  v71[4] = &protocol witness table for VerticalStack;
  v73 = sub_10000D134(v71);
  return (*(v79 + 32))(v73, v88, v72);
}

uint64_t sub_10022E354@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v85 = a2;
  LODWORD(v6) = a1;
  v78 = a3;
  v82 = sub_100751144();
  v8 = *(v82 - 8);
  __chkstk_darwin(v82);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v75 - v11;
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  __chkstk_darwin(v15);
  v17 = &v75 - v16;
  v18 = sub_100750A34();
  v79 = *(v18 - 8);
  v80 = v18;
  __chkstk_darwin(v18);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750A04();
  sub_100016B4C(v4 + 360, v88, &unk_100928A00);
  if (*(&v88[1] + 1))
  {
    sub_100012160(v88, v95);
    if ((*(v4 + 336) & 1) == 0)
    {
      sub_10000C888(v95, v96);
      sub_100750434();
      v20 = *v4;
      *(v17 + 3) = &type metadata for CGFloat;
      *(v17 + 4) = &protocol witness table for CGFloat;
      *v17 = v20;
      v21 = enum case for Resize.Rule.replaced(_:);
      v22 = *(v8 + 104);
      v77 = v6;
      v6 = v82;
      v22(v17, enum case for Resize.Rule.replaced(_:), v82);
      v23 = *(v5 + 8);
      *(v14 + 3) = &type metadata for CGFloat;
      *(v14 + 4) = &protocol witness table for CGFloat;
      *v14 = v23;
      v22(v14, v21, v6);
      v24 = enum case for Resize.Rule.unchanged(_:);
      v81 = v8;
      v22(v83, enum case for Resize.Rule.unchanged(_:), v6);
      v25 = v6;
      LOBYTE(v6) = v77;
      v22(v84, v24, v25);
      v93 = sub_100751154();
      v94 = &protocol witness table for Resize;
      sub_10000D134(v92);
      v8 = v81;
      sub_100751164();
      sub_100231198(v5, v88);
      v26 = swift_allocObject();
      memcpy((v26 + 16), v88, 0x2F9uLL);
      v27 = v85;
      *(v26 + 784) = v85;
      v28 = v27;
      sub_1007509F4();

      sub_10000C620(v92);
      sub_10000C888((v5 + 16), *(v5 + 40));
      sub_100750574();
      a4 = a4 - v20 - v29;
    }

    sub_10000C620(v95);
  }

  else
  {
    sub_10000C8CC(v88, &unk_100928A00);
  }

  sub_100016B4C(v5 + 720, v88, &unk_100928A00);
  v30 = *(&v88[1] + 1);
  sub_10000C8CC(v88, &unk_100928A00);
  if (v30 && (*(v5 + 288) & 1) == 0)
  {
    v31 = a4 - *(v5 + 272);
    sub_10000C888((v5 + 296), *(v5 + 320));
    sub_100750574();
    a4 = v31 - v32;
  }

  sub_10022EEA0(v6 & 1, v85, v95);
  sub_10000C888(v95, v96);
  sub_100751254();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10000C824(v95, v92);
  *(v17 + 3) = &type metadata for CGFloat;
  *(v17 + 4) = &protocol witness table for CGFloat;
  *v17 = a4;
  v41 = enum case for Resize.Rule.replaced(_:);
  v42 = *(v8 + 104);
  v43 = v82;
  v42(v17, enum case for Resize.Rule.replaced(_:), v82);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v36;
  v77 = v41;
  v42(v14, v41, v43);
  v44 = enum case for Resize.Rule.unchanged(_:);
  v42(v83, enum case for Resize.Rule.unchanged(_:), v43);
  v76 = v44;
  v81 = v8 + 104;
  v42(v84, v44, v43);
  v45 = sub_100751154();
  *(&v88[1] + 1) = v45;
  *&v88[2] = &protocol witness table for Resize;
  sub_10000D134(v88);
  sub_100751164();
  sub_1007509F4();
  sub_10000C620(v88);
  sub_100016B4C(v5 + 720, v88, &unk_100928A00);
  if (!*(&v88[1] + 1))
  {
    sub_10000C8CC(v88, &unk_100928A00);
    goto LABEL_13;
  }

  sub_100012160(v88, v92);
  if ((*(v5 + 288) & 1) == 0)
  {
    v50 = *(v5 + 272);
    v49 = *(v5 + 280);
    sub_10000C888(v92, v93);
    sub_100750434();
    *(v17 + 3) = &type metadata for CGFloat;
    *(v17 + 4) = &protocol witness table for CGFloat;
    *v17 = v50;
    v51 = v77;
    v75 = v45;
    v52 = v82;
    v42(v17, v77, v82);
    *(v14 + 3) = &type metadata for CGFloat;
    *(v14 + 4) = &protocol witness table for CGFloat;
    *v14 = v49;
    v42(v14, v51, v52);
    v53 = v76;
    v42(v83, v76, v52);
    v54 = v52;
    v55 = v75;
    v42(v84, v53, v54);
    *(&v88[1] + 1) = v55;
    *&v88[2] = &protocol witness table for Resize;
    sub_10000D134(v88);
    sub_100751164();
    sub_1007510F4();
    v90 = sub_100751104();
    v91 = &protocol witness table for Center;
    sub_10000D134(v89);
    sub_100751114();
    sub_100231198(v5, v88);
    v56 = swift_allocObject();
    memcpy((v56 + 16), v88, 0x2F9uLL);
    v57 = v85;
    *(v56 + 784) = v85;
    v58 = v57;
    sub_1007509F4();

    sub_10000C620(v89);
    sub_100016B4C(v5 + 360, v88, &unk_100928A00);
    if (*(&v88[1] + 1))
    {
      sub_100012160(v88, v89);
      v59 = v78;
      if (*(v5 + 336) == 1)
      {
        v59[3] = sub_1007507B4();
        v59[4] = &protocol witness table for VerticalStack;
        v85 = sub_10000D134(v59);
        sub_100750794();
        sub_10000C888(v89, v90);
        sub_100750434();
        v60 = *v5;
        *(v17 + 3) = &type metadata for CGFloat;
        *(v17 + 4) = &protocol witness table for CGFloat;
        *v17 = v60;
        v61 = v77;
        v62 = v82;
        v78 = v58;
        v42(v17, v77, v82);
        v63 = *(v5 + 8);
        *(v14 + 3) = &type metadata for CGFloat;
        *(v14 + 4) = &protocol witness table for CGFloat;
        *v14 = v63;
        v42(v14, v61, v62);
        v64 = v76;
        v42(v83, v76, v62);
        v42(v84, v64, v62);
        v87[3] = v75;
        v87[4] = &protocol witness table for Resize;
        sub_10000D134(v87);
        sub_100751164();
        sub_100231198(v5, v88);
        v65 = swift_allocObject();
        v65[2] = v50;
        v65[3] = v49;
        v65[4] = v34;
        v65[5] = v36;
        v65[6] = v38;
        v65[7] = v40;
        memcpy(v65 + 8, v88, 0x2F9uLL);
        v66 = v78;
        v65[104] = v78;
        v67 = v66;
        sub_100750754();

        sub_10000C620(v87);
        v68 = v80;
        *(&v88[1] + 1) = v80;
        *&v88[2] = &protocol witness table for HorizontalStack;
        v69 = sub_10000D134(v88);
        v70 = v79;
        v71 = v86;
        (*(v79 + 16))(v69, v86, v68);
        sub_100750754();
        (*(v70 + 8))(v71, v68);
        sub_10000C620(v88);
        sub_10000C620(v89);
LABEL_20:
        sub_10000C620(v92);
        return sub_10000C620(v95);
      }

      sub_10000C620(v89);
    }

    else
    {
      sub_10000C8CC(v88, &unk_100928A00);
      v59 = v78;
    }

    v72 = v80;
    v59[3] = v80;
    v59[4] = &protocol witness table for HorizontalStack;
    v73 = sub_10000D134(v59);
    (*(v79 + 32))(v73, v86, v72);
    goto LABEL_20;
  }

  sub_10000C620(v92);
LABEL_13:
  v46 = v80;
  v47 = v78;
  v78[3] = v80;
  v47[4] = &protocol witness table for HorizontalStack;
  v48 = sub_10000D134(v47);
  (*(v79 + 32))(v48, v86, v46);
  return sub_10000C620(v95);
}

uint64_t sub_10022EEA0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_100751144();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v35 - v10;
  __chkstk_darwin(v11);
  v38 = &v35 - v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_1007507B4();
  v41 = *(v16 - 8);
  v42 = v16;
  __chkstk_darwin(v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100231198(v3, v48);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v48, 0x2F9uLL);
  sub_100750794();
  sub_100016B4C(v3 + 440, v48, &qword_10092BC30);
  if (*(&v48[1] + 1))
  {
    sub_100012160(v48, &v46);
    sub_10000C888(&v46, v47);
    sub_100750834();
    sub_10000C888(&v46, v47);
    sub_100750824();
    sub_10000C888(&v46, v47);
    sub_100750434();
    sub_100231198(v3, v48);
    v20 = swift_allocObject();
    memcpy((v20 + 16), v48, 0x2F9uLL);
    sub_100750754();

    sub_10000C620(v43);
    sub_10000C620(&v46);
  }

  else
  {
    sub_10000C8CC(v48, &qword_10092BC30);
  }

  sub_10022FA60(a1 & 1, a2, v48);
  sub_100750754();
  sub_10000C620(v48);
  sub_100016B4C(v3 + 560, v48, &qword_10092BC30);
  if (*(&v48[1] + 1))
  {
    sub_100012160(v48, &v46);
    sub_10000C888(&v46, v47);
    sub_100750834();
    sub_10000C888(&v46, v47);
    sub_100750824();
    sub_10000C888(&v46, v47);
    sub_100750434();
    sub_100231198(v3, v48);
    v21 = swift_allocObject();
    memcpy((v21 + 16), v48, 0x2F9uLL);
    sub_100750754();

    sub_10000C620(v43);
    sub_10000C620(&v46);
  }

  else
  {
    sub_10000C8CC(v48, &qword_10092BC30);
  }

  sub_100016B4C(v3 + 680, v48, &qword_10092BC30);
  if (*(&v48[1] + 1))
  {
    sub_100012160(v48, &v46);
    sub_10000C888(&v46, v47);
    sub_100750434();
    sub_100231198(v3, v48);
    v22 = swift_allocObject();
    memcpy((v22 + 16), v48, 0x2F9uLL);
    sub_100750754();

    sub_10000C620(v43);
    sub_10000C620(&v46);
  }

  else
  {
    sub_10000C8CC(v48, &qword_10092BC30);
  }

  sub_100016B4C(v3 + 400, &v46, &qword_10092BC30);
  if (v47)
  {
    sub_100012160(&v46, v48);
    v23 = *(v3 + 56);
    sub_10000C888(v48, *(&v48[1] + 1));
    v24 = sub_1007507F4();
    v23(&v46, v24);
    a3[3] = sub_100750A34();
    a3[4] = &protocol witness table for HorizontalStack;
    sub_10000D134(a3);
    sub_100750A04();
    sub_10000C888(v48, *(&v48[1] + 1));
    sub_100750434();
    sub_10000C824(&v46, v15);
    v25 = *(v36 + 13);
    v36 = v18;
    v26 = v37;
    v25(v15, enum case for Resize.Rule.replaced(_:), v37);
    v27 = enum case for Resize.Rule.unchanged(_:);
    v25(v38, enum case for Resize.Rule.unchanged(_:), v26);
    v25(v39, v27, v26);
    v25(v40, v27, v26);
    v44 = sub_100751154();
    v45 = &protocol witness table for Resize;
    sub_10000D134(v43);
    sub_100751164();
    sub_1007509F4();
    sub_10000C620(v43);
    v28 = v42;
    v44 = v42;
    v45 = &protocol witness table for VerticalStack;
    v29 = sub_10000D134(v43);
    v30 = v41;
    v31 = v36;
    (*(v41 + 16))(v29, v36, v28);
    sub_1007509F4();
    sub_10000C620(&v46);
    (*(v30 + 8))(v31, v28);
    sub_10000C620(v43);
    return sub_10000C620(v48);
  }

  else
  {
    sub_10000C8CC(&v46, &qword_10092BC30);
    v33 = v42;
    a3[3] = v42;
    a3[4] = &protocol witness table for VerticalStack;
    v34 = sub_10000D134(a3);
    return (*(v41 + 32))(v34, v18, v33);
  }
}

uint64_t sub_10022F6C4(uint64_t a1, uint64_t a2)
{
  sub_10000C888((a2 + 296), *(a2 + 320));
  sub_100750574();
  return sub_1007509C4();
}

uint64_t sub_10022F76C(uint64_t a1, uint64_t a2)
{
  sub_10000C888((a2 + 16), *(a2 + 40));
  sub_100750574();
  return sub_100750724();
}

uint64_t sub_10022F814(uint64_t a1, uint64_t a2)
{
  sub_10000C888((a2 + 16), *(a2 + 40));
  sub_100750574();
  result = sub_100750724();
  if (*(a2 + 336) == 1)
  {
    return sub_100750744();
  }

  return result;
}

uint64_t sub_10022F8B8(uint64_t a1, uint64_t a2)
{
  sub_10000C888((a2 + 16), *(a2 + 40));
  sub_100750574();
  return sub_1007509D4();
}

uint64_t sub_10022F938(uint64_t a1, uint64_t a2)
{
  sub_10000C888((a2 + 296), *(a2 + 320));
  sub_100750574();
  result = sub_100750714();
  if (*(a2 + 336) == 1)
  {
    sub_10000C888((a2 + 296), *(a2 + 320));
    sub_100750574();
    return sub_100750724();
  }

  return result;
}

uint64_t sub_10022FA18(uint64_t a1, uint64_t a2)
{
  sub_100750764();
  sub_100750734();
  sub_10000C824(a2 + 72, v4);
  return sub_100750714();
}

uint64_t sub_10022FA60@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v27[1] = a2;
  v29 = a3;
  v30 = sub_1007507B4();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750794();
  sub_100016B4C(v3 + 440, v31, &qword_10092BC30);
  v8 = *(&v31[1] + 1);
  sub_10000C8CC(v31, &qword_10092BC30);
  sub_100016B4C(v3 + 680, v31, &qword_10092BC30);
  v9 = *(&v31[1] + 1);
  sub_10000C8CC(v31, &qword_10092BC30);
  sub_100016B4C(v3 + 560, v31, &qword_10092BC30);
  v10 = *(&v31[1] + 1);
  sub_10000C8CC(v31, &qword_10092BC30);
  sub_10000C888((v4 + 480), *(v4 + 504));
  if (sub_1007507E4())
  {
    goto LABEL_4;
  }

  sub_100016B4C(v3 + 520, v31, &qword_10092BC30);
  if (*(&v31[1] + 1))
  {
    sub_10000C888(v31, *(&v31[1] + 1));
    v11 = sub_1007507E4();
    sub_10000C620(v31);
    if (v11)
    {
LABEL_4:
      v12 = 1;
      if (v8)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v14 = v10 | v9;
      v15 = v7;
      if (!v14)
      {
        v12 = v13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_10000C8CC(v31, &qword_10092BC30);
  }

  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v16 = 2;
  if (!v8)
  {
    v16 = 3;
  }

  if (!(v10 | v9))
  {
    v12 = v16;
  }

  v15 = v7;
LABEL_18:
  sub_10023015C(v12, a1 & 1);
  v18 = v17;
  v20 = v19;
  if (a1)
  {
    sub_100016B4C(v4 + 600, v37, &qword_10092BC30);
  }

  else
  {
    sub_10000C824(v4 + 480, v37);
  }

  sub_100016B4C(v37, &v35, &qword_10092BC30);
  if (v36)
  {
    sub_100012160(&v35, v31);
    if ((v18 & 1) == 0)
    {
      sub_10000C888(v31, *(&v31[1] + 1));
      sub_100750434();
      sub_100750754();
      sub_10000C620(&v35);
      sub_10000C888(v31, *(&v31[1] + 1));
      sub_100750834();
      sub_10000C888(v31, *(&v31[1] + 1));
      sub_100750824();
      goto LABEL_28;
    }

    sub_10000C620(v31);
  }

  else
  {
    sub_10000C8CC(&v35, &qword_10092BC30);
  }

  sub_100016B4C(v37, v31, &qword_10092BC30);
  if (*(&v31[1] + 1))
  {
    sub_10000C888(v31, *(&v31[1] + 1));
    sub_100750834();
LABEL_28:
    sub_10000C620(v31);
    goto LABEL_30;
  }

  sub_10000C8CC(v31, &qword_10092BC30);
LABEL_30:
  v21 = 520;
  if (a1)
  {
    v21 = 640;
  }

  sub_100016B4C(v4 + v21, &v35, &qword_10092BC30);
  sub_100016B4C(&v35, v31, &qword_10092BC30);
  if (*(&v31[1] + 1))
  {
    sub_100012160(v31, v33);
    if ((v20 & 1) == 0)
    {
      sub_10000C888(v33, v34);
      sub_100750434();
      sub_100231198(v4, v31);
      v22 = swift_allocObject();
      memcpy((v22 + 16), v31, 0x2F9uLL);
      sub_100750754();

      sub_10000C620(&v32);
      sub_10000C888(v33, v34);
      sub_100750834();
      sub_10000C888(v33, v34);
      sub_100750824();
      sub_10000C620(v33);
      goto LABEL_40;
    }

    sub_10000C620(v33);
  }

  else
  {
    sub_10000C8CC(v31, &qword_10092BC30);
  }

  sub_100016B4C(&v35, v31, &qword_10092BC30);
  if (*(&v31[1] + 1))
  {
    sub_10000C888(v31, *(&v31[1] + 1));
    sub_100750834();
    sub_10000C620(v31);
  }

  else
  {
    sub_10000C8CC(v31, &qword_10092BC30);
  }

LABEL_40:
  v23 = v29;
  v24 = v30;
  v29[3] = v30;
  v23[4] = &protocol witness table for VerticalStack;
  v25 = sub_10000D134(v23);
  (*(v28 + 32))(v25, v15, v24);
  sub_10000C8CC(&v35, &qword_10092BC30);
  return sub_10000C8CC(v37, &qword_10092BC30);
}

uint64_t sub_1002300A4(uint64_t a1, uint64_t a2)
{
  sub_100750764();
  sub_100750734();
  sub_10000C824(a2 + 192, v4);
  return sub_100750714();
}

uint64_t sub_1002300EC(uint64_t a1, uint64_t a2)
{
  sub_100750764();
  sub_100750734();
  sub_10000C824(a2 + 232, v4);
  return sub_100750714();
}

uint64_t sub_10023015C(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_100016B4C(v2 + 600, v24, &qword_10092BC30);
    v4 = 640;
  }

  else
  {
    sub_10000C824(v2 + 480, v24);
    v4 = 520;
  }

  sub_100016B4C(v2 + v4, v23, &qword_10092BC30);
  if (*(v2 + 338) == 1)
  {
    sub_100016B4C(v23, v21, &qword_10092BC30);
    if (v22)
    {
      sub_10000C888(v21, v22);
      sub_100750364();
      sub_10000C8CC(v23, &qword_10092BC30);
      sub_10000C8CC(v24, &qword_10092BC30);
      sub_10000C620(v21);
    }

    else
    {
      sub_10000C8CC(v23, &qword_10092BC30);
      sub_10000C8CC(v24, &qword_10092BC30);
      sub_10000C8CC(v21, &qword_10092BC30);
    }

    v5 = 0;
    result = 1;
    goto LABEL_33;
  }

  sub_100016B4C(v24, &v19, &qword_10092BC30);
  if (v20)
  {
    sub_100012160(&v19, v21);
    sub_10000C888(v21, v22);
    sub_100750834();
    sub_10000C888(v21, v22);
    sub_100750424();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_10000C888(v21, v22);
    v25.var0 = v8;
    v25.var1 = v10;
    v25.var2 = v12;
    v25.var3 = v14;
    v15 = sub_100750874(v25) > 1;
    sub_10000C620(v21);
  }

  else
  {
    sub_10000C8CC(&v19, &qword_10092BC30);
    v15 = 0;
  }

  sub_100016B4C(v23, v21, &qword_10092BC30);
  if (v22)
  {
    sub_10000C888(v21, v22);
    v16 = sub_100750364();
    sub_10000C8CC(v23, &qword_10092BC30);
    sub_10000C8CC(v24, &qword_10092BC30);
    result = sub_10000C620(v21);
    if (v15)
    {
      v17 = a1;
      if (v16)
      {
        v17 = a1 - 1;
        if (__OFSUB__(a1, 1))
        {
          goto LABEL_35;
        }
      }

      if (v17 <= 1)
      {
        result = 1;
      }

      else
      {
        result = v17;
      }
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      if (v16)
      {
        v5 = a1 - result < 1;
LABEL_33:
        v24[0] = 0;
        v23[0] = v5;
        return result;
      }

LABEL_32:
      v5 = 1;
      goto LABEL_33;
    }
  }

  else
  {
    sub_10000C8CC(v23, &qword_10092BC30);
    sub_10000C8CC(v24, &qword_10092BC30);
    sub_10000C8CC(v21, &qword_10092BC30);
    if (a1 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = a1;
    }

    if (v15)
    {
      result = v18;
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100230514(uint64_t a1, uint64_t a2)
{
  sub_100750764();
  sub_100750734();
  sub_10000C824(a2 + 152, v4);
  return sub_100750714();
}

double _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1, id a2, double a3)
{
  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_100753954();

  if ((v6 & 1) != 0 && *(a1 + 337) == 1)
  {
    sub_10000C888((a1 + 112), *(a1 + 136));
    sub_100750574();
    sub_10000C888((a1 + 152), *(a1 + 176));
    sub_100750574();
    sub_10000C888((a1 + 16), *(a1 + 40));
    sub_100750574();
    sub_10000C888((a1 + 296), *(a1 + 320));
    sub_100750574();
    return a3;
  }

  if ((sub_100753804() & 1) != 0 && *(a1 + 339) == 1)
  {
    sub_10000C888((a1 + 112), *(a1 + 136));
    sub_100750574();
    sub_10000C888((a1 + 152), *(a1 + 176));
    sub_100750574();
    if (*(a1 + 336) == 1)
    {
      sub_10000C888((a1 + 16), *(a1 + 40));
      sub_100750574();
    }

    v7 = *(a1 + 320);
    v8 = (a1 + 296);
    goto LABEL_12;
  }

  sub_10000C888((a1 + 112), *(a1 + 136));
  sub_100750574();
  sub_10000C888((a1 + 152), *(a1 + 176));
  sub_100750574();
  sub_10000C888((a1 + 192), *(a1 + 216));
  sub_100750574();
  if (*(a1 + 336) == 1 || (*(a1 + 352) & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = (a1 + 16);
LABEL_12:
    sub_10000C888(v8, v7);
    sub_100750574();
  }

  return a3;
}

uint64_t sub_100230880(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002308A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 761))
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

uint64_t sub_1002308E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 760) = 0;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 761) = 1;
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

    *(result + 761) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100230A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 353))
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

uint64_t sub_100230A50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100230B00(void *a1, uint64_t a2, char a3)
{
  if (*(a2 + 336) == 1)
  {
    result = 160.0;
    if (*(a2 + 339))
    {
      return 293.0;
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_100753094();
  v8 = v7;
  if (v6 == sub_100753094() && v8 == v9)
  {
    goto LABEL_18;
  }

  v11 = sub_100754754();

  if (v11)
  {
LABEL_10:

    return 52.0;
  }

  v12 = sub_100753094();
  v14 = v13;
  if (v12 == sub_100753094() && v14 == v15)
  {
    goto LABEL_18;
  }

  v17 = sub_100754754();

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = sub_100753094();
  v20 = v19;
  if (v18 == sub_100753094() && v20 == v21)
  {
LABEL_18:

    return 52.0;
  }

  v23 = sub_100754754();

  if (v23)
  {
    goto LABEL_10;
  }

  v24 = sub_100753094();
  v26 = v25;
  if (v24 == sub_100753094() && v26 == v27)
  {

    return 54.0;
  }

  v28 = sub_100754754();

  if (v28)
  {

    return 54.0;
  }

  v29 = sub_100753094();
  v31 = v30;
  if (v29 == sub_100753094() && v31 == v32)
  {

    return 62.0;
  }

  v33 = sub_100754754();

  if (v33)
  {

    return 62.0;
  }

  v34 = sub_100753094();
  v36 = v35;
  if (v34 == sub_100753094() && v36 == v37)
  {

    return 67.0;
  }

  v38 = sub_100754754();

  if (v38)
  {

    return 67.0;
  }

  v39 = sub_100753094();
  v41 = v40;
  if (v39 == sub_100753094() && v41 == v42)
  {

    return 76.0;
  }

  v43 = sub_100754754();

  if (v43)
  {

    return 76.0;
  }

  v44 = sub_100753094();
  v46 = v45;
  if (v44 == sub_100753094() && v46 == v47)
  {

    return 153.0;
  }

  v48 = sub_100754754();

  if (v48)
  {

    return 153.0;
  }

  v49 = sub_100753094();
  v51 = v50;
  if (v49 == sub_100753094() && v51 == v52)
  {

    return 170.0;
  }

  v53 = sub_100754754();

  if (v53)
  {

    return 170.0;
  }

  v54 = sub_100753094();
  v56 = v55;
  if (v54 == sub_100753094() && v56 == v57)
  {

    return 193.0;
  }

  v58 = sub_100754754();

  if (v58)
  {

    return 193.0;
  }

  v59 = sub_100753094();
  v61 = v60;
  if (v59 == sub_100753094() && v61 == v62)
  {
    goto LABEL_66;
  }

  v63 = sub_100754754();

  if (v63)
  {
  }

  else
  {
    v64 = sub_100753094();
    v66 = v65;
    if (v64 == sub_100753094() && v66 == v67)
    {
LABEL_66:

      goto LABEL_72;
    }

    v68 = sub_100754754();

    if ((v68 & 1) == 0)
    {
      return 52.0;
    }
  }

LABEL_72:
  result = 216.0;
  if (a3)
  {
    return 293.0;
  }

  return result;
}

uint64_t sub_100231270()
{
  sub_10000C620((v0 + 4));

  sub_10000C620((v0 + 11));
  sub_10000C620((v0 + 16));
  sub_10000C620((v0 + 21));
  sub_10000C620((v0 + 26));
  sub_10000C620((v0 + 31));
  sub_10000C620((v0 + 39));
  if (v0[50])
  {
    sub_10000C620((v0 + 47));
  }

  if (v0[55])
  {
    sub_10000C620((v0 + 52));
  }

  if (v0[60])
  {
    sub_10000C620((v0 + 57));
  }

  sub_10000C620((v0 + 62));
  if (v0[70])
  {
    sub_10000C620((v0 + 67));
  }

  if (v0[75])
  {
    sub_10000C620((v0 + 72));
  }

  if (v0[80])
  {
    sub_10000C620((v0 + 77));
  }

  if (v0[85])
  {
    sub_10000C620((v0 + 82));
  }

  if (v0[90])
  {
    sub_10000C620((v0 + 87));
  }

  if (v0[95])
  {
    sub_10000C620((v0 + 92));
  }

  return _swift_deallocObject(v0, 777, 7);
}

uint64_t sub_10023138C()
{
  sub_10000C620(v0 + 80);

  sub_10000C620(v0 + 136);
  sub_10000C620(v0 + 176);
  sub_10000C620(v0 + 216);
  sub_10000C620(v0 + 256);
  sub_10000C620(v0 + 296);
  sub_10000C620(v0 + 360);
  if (*(v0 + 448))
  {
    sub_10000C620(v0 + 424);
  }

  if (*(v0 + 488))
  {
    sub_10000C620(v0 + 464);
  }

  if (*(v0 + 528))
  {
    sub_10000C620(v0 + 504);
  }

  sub_10000C620(v0 + 544);
  if (*(v0 + 608))
  {
    sub_10000C620(v0 + 584);
  }

  if (*(v0 + 648))
  {
    sub_10000C620(v0 + 624);
  }

  if (*(v0 + 688))
  {
    sub_10000C620(v0 + 664);
  }

  if (*(v0 + 728))
  {
    sub_10000C620(v0 + 704);
  }

  if (*(v0 + 768))
  {
    sub_10000C620(v0 + 744);
  }

  if (*(v0 + 808))
  {
    sub_10000C620(v0 + 784);
  }

  return _swift_deallocObject(v0, 840, 7);
}