uint64_t sub_468CF8(void *a1)
{
  sub_13C80(0, &unk_DE8180);
  v3 = sub_13C80(0, &unk_DE8EB0);
  v4 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
  v5 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v3, *v4, 0, v1);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v3, *v4, 0, a1);
    if (v10)
    {
      if (v7 == v9 && v8 == v10)
      {

LABEL_15:
        v16 = 1;
        return v16 & 1;
      }

      v12 = sub_ABB3C0();

      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v13 = sub_4709EC(v1);
  v14 = sub_4709EC(a1);
  if (v13[2] && v14[2])
  {
    v15 = sub_470AD0(v14, v13);

    v16 = v15 ^ 1;
  }

  else
  {

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_468E80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23[-1] - v13;
  if (*(v4 + qword_E719B0) == 1)
  {
    v15 = [v4 traitCollection];
    v16 = UITraitCollection.isMediaPicker.getter();

    if (!v16)
    {
      v12 = [v5 isEditing];
      v21 = *(a1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText);
      *(a1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText) = v12 ^ 1;
      if (v21 == (v12 ^ 1))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v17 = *(a1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText);
  *(a1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText) = 0;
  if (v17)
  {
LABEL_4:
    __chkstk_darwin(v12);
    *(&v22 - 2) = a1;
    type metadata accessor for DetailCellTextStack(0);
    sub_471B10(&unk_DF8680, type metadata accessor for DetailCellTextStack);
    sub_AB6780();
    sub_AB6AA0();
    v23[3] = v10;
    v23[4] = sub_36A00(&unk_E09220, &unk_E09210);
    __swift_allocate_boxed_opaque_existential_0(v23);
    sub_AB6770();
    (*(v11 + 8))(v14, v10);
    sub_ABA2B0();
  }

LABEL_5:
  v18 = static String.stringForTrackCountAndDuration(trackCount:duration:)(a2, 0, a3, a4 & 1);
  return sub_AB850(v18, v19);
}

void sub_469118()
{
  (*&stru_6A8.segname[(swift_isaMask & *v0) - 8])();

  sub_46C570();
}

uint64_t sub_469178@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v12 = __chkstk_darwin(v11 - 8);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v29 = *(v5 + 16);
  v30 = a1;
  v29(&v27 - v14, a1, v4);
  v31 = *(v5 + 56);
  v32 = v5 + 56;
  v31(v15, 0, 1, v4);
  v16 = qword_E719B8;
  swift_beginAccess();
  v17 = *(v8 + 56);
  sub_15F84(v15, v10, &unk_DE8E20);
  sub_15F84(v2 + v16, &v10[v17], &unk_DE8E20);
  v18 = *(v5 + 48);
  if (v18(v10, 1, v4) == 1)
  {
    sub_12E1C(v15, &unk_DE8E20);
    if (v18(&v10[v17], 1, v4) == 1)
    {
      sub_12E1C(v10, &unk_DE8E20);
LABEL_9:
      v21 = 1;
      v20 = v33;
      return v31(v20, v21, 1, v4);
    }

    goto LABEL_6;
  }

  v19 = v28;
  sub_15F84(v10, v28, &unk_DE8E20);
  if (v18(&v10[v17], 1, v4) == 1)
  {
    sub_12E1C(v15, &unk_DE8E20);
    (*(v5 + 8))(v19, v4);
LABEL_6:
    sub_12E1C(v10, &unk_DF7930);
    goto LABEL_7;
  }

  v22 = &v10[v17];
  v23 = v27;
  (*(v5 + 32))(v27, v22, v4);
  sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath);
  v24 = sub_AB91C0();
  v25 = *(v5 + 8);
  v25(v23, v4);
  sub_12E1C(v15, &unk_DE8E20);
  v25(v19, v4);
  sub_12E1C(v10, &unk_DE8E20);
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = v33;
  v29(v33, v30, v4);
  v21 = 0;
  return v31(v20, v21, 1, v4);
}

void sub_4695C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v13 = __chkstk_darwin(v12 - 8);
  v34 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v32 - v15;
  v17 = qword_E719B8;
  swift_beginAccess();
  v18 = *(v6 + 16);
  v36 = a2;
  v19 = a2;
  v20 = v3;
  v18(v16, v19, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v21 = *(v9 + 56);
  sub_15F84(v3 + v17, v11, &unk_DE8E20);
  sub_15F84(v16, &v11[v21], &unk_DE8E20);
  v22 = *(v6 + 48);
  if (v22(v11, 1, v5) == 1)
  {
    sub_12E1C(v16, &unk_DE8E20);
    if (v22(&v11[v21], 1, v5) == 1)
    {
      sub_12E1C(v11, &unk_DE8E20);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v23 = v34;
  sub_15F84(v11, v34, &unk_DE8E20);
  if (v22(&v11[v21], 1, v5) == 1)
  {
    sub_12E1C(v16, &unk_DE8E20);
    (*(v6 + 8))(v23, v5);
LABEL_6:
    sub_12E1C(v11, &unk_DF7930);
LABEL_7:
    sub_3E61E0(v35, v36);
    return;
  }

  v24 = v33;
  (*(v6 + 32))(v33, &v11[v21], v5);
  sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath);
  v25 = sub_AB91C0();
  v26 = *(v6 + 8);
  v26(v24, v5);
  sub_12E1C(v16, &unk_DE8E20);
  v26(v23, v5);
  sub_12E1C(v11, &unk_DE8E20);
  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v27 = sub_3B350C(v36);
  v28 = (*&stru_158.sectname[swift_isaMask & *v20])();
  if (v28)
  {
    v29 = v28;
    v30 = [v28 results];

    if (!v30)
    {
      __break(1u);
      return;
    }

    v31 = [v30 totalItemCount];
  }

  else
  {
    v31 = 0;
  }

  (*(&stru_798.size + (swift_isaMask & *v20)))(v27, v31, *(v20 + qword_E719C0), *(v20 + qword_E719C0 + 8));
}

uint64_t sub_469AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_AB3820() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath);
  v7 = 0;
  while ((sub_AB91C0() & 1) == 0)
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

unint64_t sub_469BE8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_ABB060();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
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
      v6 = sub_35F8D4(v5, a2);
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
    sub_13C80(0, &qword_DE7500);
    v8 = sub_ABA790();

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

uint64_t sub_469CF8(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  if (a1)
  {
    v5 = 0x7972617262696CLL;
  }

  else
  {
    v5 = 0x676F6C61746163;
  }

  while (1)
  {
    v6 = *(v4 + v3) ? 0x7972617262696CLL : 0x676F6C61746163;
    if (v6 == v5)
    {
      break;
    }

    v7 = sub_ABB3C0();
    swift_bridgeObjectRelease_n();
    if (v7)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  swift_bridgeObjectRelease_n();
  return v3;
}

uint64_t sub_469DDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v11 = *v10 == a2 && v10[1] == a3;
  if (v11 || (sub_ABB3C0()) && (v12 = *(v4 + qword_E08820)) != 0)
  {
    type metadata accessor for ContainerDetailHeaderReusableView();
    v13 = v12;
    static UICollectionReusableView.reuseIdentifier.getter();
    v14 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

    v15 = *&v14[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView];
    *&v14[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView] = v12;
    v16 = v13;
    sub_1331DC(v15);

    v17 = *&stru_5B8.segname[(swift_isaMask & *v4) + 8];
    v18 = 0;
    if ((v17() & 1) == 0)
    {
      v18 = *(v4 + qword_E08840);
      v19 = v18;
    }

    v20 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView;
    v21 = *&v14[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView];
    *&v14[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView] = v18;
    v22 = v18;
    [v21 removeFromSuperview];
    if (*&v14[v20])
    {
      [v14 addSubview:?];
    }

    [v14 setNeedsLayout];

    v23 = *&v14[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator];
    if (*(v5 + qword_E08838) == 1 && !*(v5 + qword_E08840))
    {
      v24 = 1;
    }

    else
    {
      v24 = v17();
    }

    [v23 setHidden:v24 & 1];
    v14[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightViewDisplayStyle] = *(v5 + qword_E08830);
    v25 = v14;
    [v25 frame];
    [a1 bounds];
    [v25 sizeThatFits:{v26, v27}];
    [v25 frame];
    [v25 setFrame:?];

    return v25;
  }

  else
  {

    return sub_3DE1D8(a1, a4);
  }
}

BOOL sub_46A0D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  (*&stru_1F8.segname[(swift_isaMask & *v2) + 16])(a2);
  v7 = sub_AB3820();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_12E1C(v6, &unk_DE8E20);
  return v8;
}

void sub_46A200(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v47 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v47);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_AB3820();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  if (!a1)
  {
    v18 = (*&stru_158.sectname[swift_isaMask & *v4])(v15);
    if (!v18)
    {
LABEL_5:
      v20 = type metadata accessor for PlaybackIntentDescriptor(0);
      v21 = *(*(v20 - 8) + 56);

      v21(a3, 1, 1, v20);
      return;
    }
  }

  v19 = a1;
  if ([v18 isEmpty])
  {

    goto LABEL_5;
  }

  sub_15F84(a2, v12, &unk_DE8E20);
  v22 = (*(v14 + 48))(v12, 1, v13);
  v23 = &selRef__authenticateReturningError_;
  v46 = a3;
  if (v22 == 1)
  {
    sub_12E1C(v12, &unk_DE8E20);
LABEL_19:
    v35 = 0;
    goto LABEL_25;
  }

  (*(v14 + 32))(v17, v12, v13);
  v24 = [v18 results];
  if (!v24)
  {
    (*(v14 + 8))(v17, v13);
    goto LABEL_19;
  }

  v25 = v24;
  isa = sub_AB3770().super.isa;
  v27 = [v25 itemAtIndexPath:isa];

  if (!v27)
  {
    goto LABEL_21;
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {
    swift_unknownObjectRelease();
LABEL_21:
    (*(v14 + 8))(v17, v13);
    v35 = 0;
    goto LABEL_24;
  }

  v29 = v28;
  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (!v45)
  {
    goto LABEL_23;
  }

  v30 = (*&stru_158.sectname[swift_isaMask & *v4])();
  if (!v30)
  {
    goto LABEL_23;
  }

  v31 = v30;
  swift_unknownObjectRetain();
  v32 = [v31 request];

  if (!v32)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  type metadata accessor for JSContainerDetailModelRequest();
  v33 = swift_dynamicCastClass();
  swift_unknownObjectRelease();

  if (!v33)
  {
LABEL_23:
    v35 = [v29 identifiers];
    swift_unknownObjectRelease();
    (*(v14 + 8))(v17, v13);
    goto LABEL_24;
  }

  v34 = [v45 innermostModelObject];
  v35 = [v34 identifiers];
  (*(v14 + 8))(v17, v13);
  swift_unknownObjectRelease();

LABEL_24:
  v23 = &selRef__authenticateReturningError_;
LABEL_25:
  v36 = [v18 v23[224]];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 playbackIntentWithStartItemIdentifiers:v35];

    if (v38)
    {
      *v9 = v38;
      swift_storeEnumTagMultiPayload();
      v51 = 0;
      memset(v50, 0, sizeof(v50));
      v49 = 0;
      memset(v48, 0, sizeof(v48));
      v39 = v4;
      v43 = v4;
      v40 = v46;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v9, v50, 3, 0, 0, 1, 0, 1, v46, v43, v48);

      v41 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    }

    else
    {

      v42 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v42 - 8) + 56))(v46, 1, 1, v42);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_46A81C(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_2EC048(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = sub_AB3820();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

uint64_t sub_46A8FC(void *a1)
{
  sub_3B316C(a1);
  type metadata accessor for DetailCell(0);
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for ContainerDetailHeaderReusableView();
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();
}

void sub_46A9C8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_3B38B0(a1, a2, a3);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = a2;
  v7 = [v5 tableViewCell];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 _setDrawsSeparatorAtTopOfSection:0];

  v9 = [v5 tableViewCell];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 _setDrawsSeparatorAtBottomOfSection:0];
}

uint64_t sub_46AAB8(int a1, id a2)
{
  [a2 clearArtworkCatalogs];
  sub_46B304();
  if (qword_DE6CD8 != -1)
  {
    swift_once();
  }

  v2 = sub_AB3820();
  v3 = __swift_project_value_buffer(v2, qword_E71978);
  sub_470E6C(v3, &unk_D14FB8, &unk_D14FE0, sub_47113C);
}

id sub_46AB6C(void *a1, uint64_t a2)
{
  sub_3B41F4(a1, a2);
  isa = sub_AB3770().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  return sub_46C814();
}

uint64_t sub_46ABE0(uint64_t a1)
{
  v2 = qword_DFE308;
  *(v1 + qword_DFE308) = a1;

  sub_4A4164();

  v4 = *(v1 + v2);
  if (v4)
  {
    *(v4 + 24) = &off_D14F98;

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void *sub_46AC70()
{
  v1 = *(v0 + qword_E08818);
  v2 = v1;
  return v1;
}

void sub_46ACA0(void *a1)
{
  v2 = qword_E08818;
  v3 = *(v1 + qword_E08818);
  *(v1 + qword_E08818) = a1;
  v7 = a1;

  v4 = *(v1 + qword_E08810);
  if (v4)
  {
    v5 = *(v1 + v2);
    sub_307CC(v4);
    v6 = v5;
    v4(v5);

    sub_3FC30(v4);
  }

  else
  {
  }
}

void *sub_46AD74()
{
  v1 = *(v0 + qword_E08820);
  v2 = v1;
  return v1;
}

void sub_46ADA4(void *a1)
{
  v3 = *(v1 + qword_E08820);
  *(v1 + qword_E08820) = a1;
  v2 = a1;
  sub_46E2F0(v3);
}

void *sub_46AE24()
{
  v1 = *(v0 + qword_E08840);
  v2 = v1;
  return v1;
}

void sub_46AE54(uint64_t a1)
{
  v2 = *(v1 + qword_E08840);
  *(v1 + qword_E08840) = a1;
}

void sub_46AE68(void *a1)
{
  v2 = *(v1 + qword_E08848);
  *(v1 + qword_E08848) = a1;
  v3 = a1;

  *(v1 + qword_E08860) = 0;
  (*&stru_6A8.segname[(swift_isaMask & *v1) - 8])();
}

void sub_46AF10(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&stru_158.sectname[swift_isaMask & *v1];
  v9 = (v8)(v5);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 results];

    if (v11)
    {
      isa = sub_AB3770().super.isa;
      v13 = [v11 itemAtIndexPath:isa];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v32 = a1;
          v15 = v14;
          v16 = (*&stru_6F8.segname[swift_isaMask & *v2])();
          if (v16)
          {
            v17 = v16;
            v18 = (*&stru_6F8.segname[(swift_isaMask & *v2) - 8])(v15);
            if (v18)
            {
              v19 = v18;
              v20 = v8();
              if (v20 && (v21 = v20, v22 = [v20 request], v21, v22))
              {
                v37 = &OBJC_PROTOCOL____TtP16MusicApplication43ContainerDetailIndividualPlaybackIntentable_;
                v23 = swift_dynamicCastObjCProtocolConditional();
                if (v23)
                {
                  v24 = v23;
                  v25 = [objc_opt_self() emptyPropertySet];
                  v26 = [v24 playbackIntentFor:v17 itemKind:v19 itemProperties:v25];

                  if (v26)
                  {
                    *v7 = v26;
                    swift_storeEnumTagMultiPayload();
                    v36 = 0;
                    memset(v35, 0, sizeof(v35));
                    v34 = 0;
                    memset(v33, 0, sizeof(v33));
                    v27 = v2;
                    v28 = v32;
                    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, v35, 3, 0, 0, 1, 0, 1, v32, v2, v33);
                    v29 = type metadata accessor for PlaybackIntentDescriptor(0);
                    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
                    swift_unknownObjectRelease();

                    return;
                  }
                }

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }

          a1 = v32;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v30 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
}

void *sub_46B304()
{
  v1 = qword_E08870;
  if (*&v0[qword_E08870])
  {
    v2 = *&v0[qword_E08870];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E091A0);
    swift_allocObject();
    v2 = sub_2C0B70(v0, v4, 0, 1);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_46B3D0(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + qword_E08820);
  if (v12)
  {
    type metadata accessor for DetailHeader();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v12;
    }
  }

  else
  {
    v13 = 0;
  }

  if (qword_DE6CD8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_E71978);
  if (sub_AB3780())
  {
    v15 = v2 + qword_E08808;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      (*(v16 + 40))(&v77, v2, ObjectType, v16);
      swift_unknownObjectRelease();

LABEL_25:
      v31 = v84;
      a2[6] = v83;
      a2[7] = v31;
      a2[8] = v85[0];
      *(a2 + 137) = *(v85 + 9);
      v32 = v80;
      a2[2] = v79;
      a2[3] = v32;
      v33 = v82;
      a2[4] = v81;
      a2[5] = v33;
      v34 = v78;
      *a2 = v77;
      a2[1] = v34;
      return;
    }

LABEL_24:

    sub_465CC(&v77);
    goto LABEL_25;
  }

  (*&stru_1F8.segname[(swift_isaMask & *v2) + 16])(a1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &unk_DE8E20);
    goto LABEL_24;
  }

  v18 = (*(v9 + 32))(v11, v7, v8);
  v19 = (*&stru_158.sectname[swift_isaMask & *v2])(v18);
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = v19;
  v21 = [v19 results];

  if (!v21)
  {
    goto LABEL_29;
  }

  isa = sub_AB3770().super.isa;
  v23 = [v21 itemAtIndexPath:isa];

  if (!v23)
  {
LABEL_23:
    (*(v9 + 8))(v11, v8);
    goto LABEL_24;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v25 = v24;
  v26 = IndexPath.safeItem.getter();
  if (!v13 || (v27 = __OFADD__(v26, 1), ++v26, !v27))
  {
    v40 = v26;
    sub_27A160(v25, &v86);
    v89 = v87;
    v90 = v86;
    v75 = v86;
    v76 = v87;
    v28 = v88;
    v29 = sub_279AC8(v88);
    v39 = v28;
    if (v29 == 0x497972617262696CLL && v30 == 0xEB000000006D6574)
    {
      v38 = 0;
    }

    else
    {
      v38 = sub_ABB3C0() ^ 1;
    }

    sub_15F84(&v90, &v77, &unk_DEE6F0);
    sub_15F84(&v89, &v77, &unk_DEE6F0);

    v35 = v38 & 1;
    (*(v9 + 8))(v11, v8);
    sub_28D048(&v86);
    v41 = v75;
    v42 = v76;
    v36 = v40;
    *&v43 = 8;
    *(&v43 + 1) = v40;
    LOWORD(v44[0]) = 512;
    v37 = v39;
    BYTE2(v44[0]) = v39;
    *(v44 + 3) = v73;
    BYTE7(v44[0]) = v74;
    *(v44 + 8) = 0u;
    *(&v44[1] + 8) = 0u;
    *(&v44[2] + 8) = 0u;
    *(&v44[3] + 8) = 0u;
    *(&v44[4] + 1) = 0;
    LOBYTE(v45[0]) = v35;
    *(v45 + 1) = *v72;
    DWORD1(v45[0]) = *&v72[3];
    *(&v45[0] + 1) = 0;
    *&v45[1] = 0;
    BYTE8(v45[1]) = 2;
    sub_465F4(&v41, &v77);
    swift_unknownObjectRelease();
    v46[0] = v75;
    v46[1] = v76;
    v47 = 8;
    v48 = v36;
    v49 = 512;
    v50 = v37;
    v51 = v73;
    v52 = v74;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    v58 = v35;
    *v59 = *v72;
    *&v59[3] = *&v72[3];
    v60 = 0;
    v61 = 0;
    v62 = 2;
    sub_46650(v46);

    v69 = v44[3];
    v70 = v44[4];
    v71[0] = v45[0];
    *(v71 + 9) = *(v45 + 9);
    v65 = v43;
    v66 = v44[0];
    v67 = v44[1];
    v68 = v44[2];
    v63 = v41;
    v64 = v42;
    UIScreen.Dimensions.size.getter(*&v41);
    v83 = v69;
    v84 = v70;
    v85[0] = v71[0];
    *(v85 + 9) = *(v71 + 9);
    v79 = v65;
    v80 = v66;
    v81 = v67;
    v82 = v68;
    v77 = v63;
    v78 = v64;
    goto LABEL_25;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_46BA20(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v35 = a1;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v14 = __chkstk_darwin(v13 - 8);
  v37 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v34 - v16;
  v18 = qword_E719B8;
  swift_beginAccess();
  (*(v7 + 16))(v17, a3, v6);
  (*(v7 + 56))(v17, 0, 1, v6);
  v19 = *(v10 + 56);
  sub_15F84(v4 + v18, v12, &unk_DE8E20);
  sub_15F84(v17, &v12[v19], &unk_DE8E20);
  v20 = *(v7 + 48);
  if (v20(v12, 1, v6) == 1)
  {
    sub_12E1C(v17, &unk_DE8E20);
    if (v20(&v12[v19], 1, v6) == 1)
    {
      sub_12E1C(v12, &unk_DE8E20);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v21 = v37;
  sub_15F84(v12, v37, &unk_DE8E20);
  if (v20(&v12[v19], 1, v6) == 1)
  {
    sub_12E1C(v17, &unk_DE8E20);
    (*(v7 + 8))(v21, v6);
LABEL_6:
    sub_12E1C(v12, &unk_DF7930);
LABEL_7:
    [v38 rowHeight];
    return;
  }

  v22 = v36;
  (*(v7 + 32))(v36, &v12[v19], v6);
  sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath);
  v23 = sub_AB91C0();
  v24 = *(v7 + 8);
  v24(v22, v6);
  sub_12E1C(v17, &unk_DE8E20);
  v24(v21, v6);
  sub_12E1C(v12, &unk_DE8E20);
  if ((v23 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v25 = sub_46C4B0();
  v26 = (*&stru_158.sectname[swift_isaMask & *v4])();
  if (v26)
  {
    v27 = v26;
    v28 = [v26 results];

    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = [v28 totalItemCount];
  }

  else
  {
    v29 = 0;
  }

  v30 = (*(&stru_798.size + (swift_isaMask & *v4)))(v25, v29, *(v4 + qword_E719C0), *(v4 + qword_E719C0 + 8));
  if ((*&stru_5B8.segname[(swift_isaMask & *v4) + 8])(v30))
  {
  }

  else
  {
    [v38 rowHeight];
    [v35 bounds];
    v32 = v31;
    v33 = [v25 contentView];
    [v33 sizeThatFits:{v32, 1.79769313e308}];
  }
}

void sub_46BFE0(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v44 = a2;
  v5 = sub_AB4BC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for PlaybackIntentDescriptor(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v3;
  v16 = [v3 traitCollection];
  v17 = UITraitCollection.isMediaPicker.getter();

  if (v17)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v20 = a1;
      v21 = v43;
      sub_46AF10(v11);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        sub_12E1C(v11, &unk_DEA510);
      }

      else
      {
        v27 = v15;
        sub_140E58(v11, v15);
        [v21 loadViewIfNeeded];
        v28 = *&v21[qword_DFE2F8];
        if (v28)
        {
          v29 = v28;
          isa = sub_AB3770().super.isa;
          v31 = [v29 cellForItemAtIndexPath:isa];

          if (v31)
          {
            type metadata accessor for SongCell();
            v32 = swift_dynamicCastClass();
            if (!v32)
            {
            }
          }

          else
          {
            v32 = 0;
          }

          if (*&v21[qword_DFE298])
          {
            if (v32)
            {
              v33 = &off_D02738;
            }

            else
            {
              v33 = 0;
            }

            v34 = v32;
            sub_3B8FA0(v15, v19, v32, v33);

            v21 = v43;
          }

          v35 = v21;
          v36 = &v21[qword_E08808];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v37 = *(v36 + 1);
            ObjectType = swift_getObjectType();
            v39 = *(v37 + 16);
            v40 = v20;
            v39(v35, v19, v44, ObjectType, v37);

            sub_1914D8(v27);
            swift_unknownObjectRelease();
          }

          else
          {
            v41 = v20;
            sub_1914D8(v27);
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
    v22 = Logger.jsBridge.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v22, v5);
    v23 = sub_AB4BA0();
    v24 = sub_AB9F40();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_425E68(0xD000000000000030, 0x8000000000B662A0, &v45);
      _os_log_impl(&dword_0, v23, v24, "Attempted to perform %s within Legacy Music, outside a picker environment, which is not unexpected.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    (*(v6 + 8))(v8, v5);
  }
}

id sub_46C4B0()
{
  v1 = qword_E08888;
  v2 = *&v0[qword_E08888];
  if (v2)
  {
    v3 = *&v0[qword_E08888];
LABEL_5:
    v7 = v2;
    return v3;
  }

  type metadata accessor for DetailCell(0);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setHidden:1];
  [v0 loadViewIfNeeded];
  result = *&v0[qword_DFE2F8];
  if (result)
  {
    [result addSubview:v4];
    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_46C570()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = qword_E08860;
  if ((v0[qword_E08860] & 1) == 0 && [v0 isViewLoaded])
  {
    v12 = qword_E71990;
    swift_beginAccess();
    sub_15F84(&v0[v12], v3, &unk_DE8E20);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_12E1C(v3, &unk_DE8E20);
    }

    else
    {
      (*(v5 + 32))(v10, v3, v4);
      (*(v5 + 16))(v8, v10, v4);
      [v0 loadViewIfNeeded];
      v13 = *&v0[qword_DFE2F8];
      if (v13)
      {
        v14 = v0;
        v15 = v13;
        isa = sub_AB3770().super.isa;
        [v15 scrollToItemAtIndexPath:isa atScrollPosition:2 animated:v14[qword_E08878]];
        v17 = *(v5 + 8);
        v17(v8, v4);
        v17(v10, v4);

        v14[v11] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_46C814()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 loadViewIfNeeded];
  v6 = *&v0[qword_DFE2F8];
  if (!v6)
  {
    __break(1u);
    return result;
  }

  v7 = v6;
  v8 = [v7 indexPathsForSelectedItems];
  if (v8)
  {
    v9 = v8;
    v10 = sub_AB9760();

    sub_AB37C0();
    if (v10)
    {
      sub_469AC8(v4, v10);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        v13 = v0[qword_E719C8];
        v0[qword_E719C8] = 1;
        if ((v13 & 1) == 0)
        {
          goto LABEL_6;
        }

        return (*(v2 + 8))(v4, v1);
      }
    }
  }

  else
  {

    sub_AB37C0();
  }

  v18 = qword_E08880;
  swift_beginAccess();
  v19 = *&v0[v18];

  sub_469AC8(v4, v19);
  v21 = v20;

  v22 = v0[qword_E719C8];
  v23 = (v21 & 1) == 0;
  v0[qword_E719C8] = v23;
  if (v22 == v23)
  {
    return (*(v2 + 8))(v4, v1);
  }

LABEL_6:
  v14 = &v0[qword_E08808];
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v14 + 1);
  result = (*(v2 + 8))(v4, v1);
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v0, ObjectType, v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_46CA68(double a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, char a7, char a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, double), uint64_t *a11, uint64_t a12, void (*a13)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    swift_beginAccess();
    if (*(*(v21 + 112) + 16))
    {

      sub_2EC048(a3);
      if (v22)
      {

        swift_unknownObjectWeakAssign();
LABEL_9:

        a10(v29, a3, a9, a1);
      }
    }

    if (a8 == 4)
    {
      a8 = *(v21 + 40);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(a11);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = a5[7];
    *(v23 + 112) = a5[6];
    *(v23 + 128) = v24;
    *(v23 + 144) = a5[8];
    *(v23 + 153) = *(a5 + 137);
    v25 = a5[3];
    *(v23 + 48) = a5[2];
    *(v23 + 64) = v25;
    v26 = a5[5];
    *(v23 + 80) = a5[4];
    *(v23 + 96) = v26;
    v27 = a5[1];
    *(v23 + 16) = *a5;
    *(v23 + 32) = v27;
    swift_unknownObjectWeakAssign();
    *(v23 + 176) = a6;
    *(v23 + 184) = a7 & 1;
    *(v23 + 200) = a8;
    swift_beginAccess();
    sub_465F4(a5, v30);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = *(v21 + 112);
    *(v21 + 112) = 0x8000000000000000;
    a13(v23, a3, isUniquelyReferenced_nonNull_native);
    *(v21 + 112) = v30[0];
    swift_endAccess();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_46CC94(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    if (*(*(v15 + 112) + 16) && (sub_2F5A90(a2), (v16 & 1) != 0))
    {
      swift_unknownObjectWeakAssign();
    }

    else
    {
      if (a7 == 4)
      {
        a7 = *(v15 + 40);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09248);
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = a4[7];
      *(v17 + 112) = a4[6];
      *(v17 + 128) = v18;
      *(v17 + 144) = a4[8];
      *(v17 + 153) = *(a4 + 137);
      v19 = a4[3];
      *(v17 + 48) = a4[2];
      *(v17 + 64) = v19;
      v20 = a4[5];
      *(v17 + 80) = a4[4];
      *(v17 + 96) = v20;
      v21 = a4[1];
      *(v17 + 16) = *a4;
      *(v17 + 32) = v21;
      swift_unknownObjectWeakAssign();
      *(v17 + 176) = a5;
      *(v17 + 184) = a6 & 1;
      *(v17 + 200) = a7;
      swift_beginAccess();
      sub_465F4(a4, v24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24[0] = *(v15 + 112);
      *(v15 + 112) = 0x8000000000000000;
      sub_94810(v17, a2, isUniquelyReferenced_nonNull_native);
      *(v15 + 112) = v24[0];
      swift_endAccess();
    }

    sub_467134(v23, a2, a8);
  }

  return result;
}

uint64_t sub_46CE94(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    v16 = *(v15 + 112);
    if (*(v16 + 16) && (v17 = sub_2F5A90(a2), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      swift_unknownObjectWeakAssign();
    }

    else
    {
      if (a7 == 4)
      {
        a7 = *(v15 + 40);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09258);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = a4[7];
      *(v19 + 112) = a4[6];
      *(v19 + 128) = v20;
      *(v19 + 144) = a4[8];
      *(v19 + 153) = *(a4 + 137);
      v21 = a4[3];
      *(v19 + 48) = a4[2];
      *(v19 + 64) = v21;
      v22 = a4[5];
      *(v19 + 80) = a4[4];
      *(v19 + 96) = v22;
      v23 = a4[1];
      *(v19 + 16) = *a4;
      *(v19 + 32) = v23;
      swift_unknownObjectWeakAssign();
      *(v19 + 176) = a5;
      *(v19 + 184) = a6 & 1;
      *(v19 + 200) = a7;
      swift_beginAccess();
      sub_465F4(a4, v25);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25[0] = *(v15 + 112);
      *(v15 + 112) = 0x8000000000000000;
      sub_956BC(v19, a2, isUniquelyReferenced_nonNull_native);
      *(v15 + 112) = v25[0];
      swift_endAccess();
    }

    sub_467F10(v19, a2, a8);
  }

  return result;
}

uint64_t sub_46D0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  v10 = sub_46A81C(a2, sub_27F6E8, sub_331E14);
  swift_endAccess();

  if (!v10)
  {
    return result;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v12 = Strong;
  v13 = *(v10 + 88);
  if (*(v10 + 144))
  {
    v14 = *(v10 + 16);
  }

  else
  {
    v14 = 0;
  }

  if (*(v10 + 144))
  {
    v15 = *(v10 + 24);
  }

  else
  {
    v15 = 0;
  }

  if (v13)
  {
    v16 = (v13 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v14 = *v16;
    v15 = v16[1];
  }

  else if (!v15)
  {
    v33[7] = *(v10 + 56);
    v14 = sub_ABB330();
    v15 = v32;
    goto LABEL_15;
  }

LABEL_15:
  swift_beginAccess();
  v17 = *(v12 + 104);
  if (*(v17 + 16))
  {

    v18 = sub_2EBF88(v14, v15);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      swift_beginAccess();
      v21 = *(v20 + 200);
      v24 = *(v21 + 16);
      v22 = v21 + 16;
      v23 = v24;
      if (v24 && (*(v22 + 16 * v23 + 8) & 1) == 0)
      {
        (*(v6 + 16))(v8, a3, v5);
        sub_AB33D0();
        v26 = v25;
        (*(v6 + 8))(v8, v5);
        swift_beginAccess();
        v27 = *(v20 + 200);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v20 + 200) = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = sub_6A8D8(0, *(v27 + 2) + 1, 1, v27);
          *(v20 + 200) = v27;
        }

        v30 = *(v27 + 2);
        v29 = *(v27 + 3);
        if (v30 >= v29 >> 1)
        {
          v27 = sub_6A8D8((v29 > 1), v30 + 1, 1, v27);
        }

        *(v27 + 2) = v30 + 1;
        v31 = &v27[16 * v30];
        *(v31 + 4) = v26;
        v31[40] = 1;
        *(v20 + 200) = v27;
        swift_endAccess();
      }
    }
  }

  else
  {
  }
}

uint64_t sub_46D43C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t), void (*a5)(void), uint64_t a6)
{
  v38[0] = a6;
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  v15 = sub_46A81C(a2, a4, a5);
  swift_endAccess();

  if (!v15)
  {
    return result;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v17 = Strong;
  v18 = *(v15 + 88);
  if (*(v15 + 144))
  {
    v19 = *(v15 + 16);
  }

  else
  {
    v19 = 0;
  }

  if (*(v15 + 144))
  {
    v20 = *(v15 + 24);
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v21 = (v18 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *v21;
    v20 = v21[1];
LABEL_14:

    goto LABEL_15;
  }

  if (v20)
  {
    goto LABEL_14;
  }

  v38[7] = *(v15 + 56);
  v19 = sub_ABB330();
  v20 = v37;
LABEL_15:
  swift_beginAccess();
  v22 = *(v17 + 104);
  if (!*(v22 + 16))
  {

LABEL_27:
  }

  v23 = sub_2EBF88(v19, v20);
  if ((v24 & 1) == 0)
  {

    goto LABEL_27;
  }

  v25 = *(*(v22 + 56) + 8 * v23);

  swift_beginAccess();
  v26 = *(v25 + 200);
  v29 = *(v26 + 16);
  v27 = v26 + 16;
  v28 = v29;
  if (v29 && (*(v27 + 16 * v28 + 8) & 1) == 0)
  {
    (*(v11 + 16))(v13, a3, v10);
    sub_AB33D0();
    v31 = v30;
    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    v32 = *(v25 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + 200) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = (v38[0])(0, *(v32 + 16) + 1, 1, v32);
      *(v25 + 200) = v32;
    }

    v35 = *(v32 + 16);
    v34 = *(v32 + 24);
    if (v35 >= v34 >> 1)
    {
      v32 = (v38[0])(v34 > 1, v35 + 1, 1, v32);
    }

    *(v32 + 16) = v35 + 1;
    v36 = v32 + 16 * v35;
    *(v36 + 32) = v31;
    *(v36 + 40) = 1;
    *(v25 + 200) = v32;
    swift_endAccess();
  }
}

uint64_t sub_46D7D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  (*&stru_838.segname[(swift_isaMask & *v1) + 8])(a1);
  v9 = qword_E719B8;
  swift_beginAccess();
  sub_15F84(v1 + v9, v6, &unk_DE8E20);
  swift_beginAccess();
  sub_57890(v8, v1 + v9);
  swift_endAccess();
  sub_46EB6C(v6);
  sub_12E1C(v6, &unk_DE8E20);
  return sub_12E1C(v8, &unk_DE8E20);
}

id sub_46D9A4()
{
  v1 = (*(&stru_608.size + (swift_isaMask & *v0)))();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 songKind];
  }

  else
  {

    return 0;
  }

  return v3;
}

void sub_46DA70(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v20 = a1;
    v4 = [v20 results];
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = v4;
    v6 = [v4 numberOfSections];

    if (v6 >= 1)
    {
      v7 = [v20 results];
      if (!v7)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = v7;
      v9 = [v7 numberOfSections];

      v10 = v9 - 1;
      if (!__OFSUB__(v9, 1))
      {
        v11 = [v20 results];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 numberOfItemsInSection:v10];

          if (v13 < 1 || ((*&stru_5B8.segname[(swift_isaMask & *v2) + 8])() & 1) != 0)
          {
            v14 = sub_AB3820();
            (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
LABEL_16:

            return;
          }

          v17 = [v20 results];
          if (v17)
          {
            v18 = v17;
            [v17 numberOfItemsInSection:v10];

            sub_AB37A0();
            v19 = sub_AB3820();
            (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
            goto LABEL_16;
          }

LABEL_23:
          __break(1u);
          return;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  v15 = sub_AB3820();
  v16 = *(*(v15 - 8) + 56);

  v16(a2, 1, 1, v15);
}

uint64_t sub_46DCF0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*&stru_1F8.segname[(swift_isaMask & *v2) + 16])(a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &unk_DE8E20);
    goto LABEL_3;
  }

  v13 = (*(v8 + 32))(v10, v6, v7);
  v14 = (*&stru_158.sectname[swift_isaMask & *v2])(v13);
  v11 = v14;
  if (!v14)
  {
    (*(v8 + 8))(v10, v7);
    return v11 & 1;
  }

  v15 = [v14 results];
  if (!v15)
  {
    (*(v8 + 8))(v10, v7);

    goto LABEL_3;
  }

  v16 = v15;

  isa = sub_AB3770().super.isa;
  v18 = [v16 itemAtIndexPath:isa];

  if (!v18)
  {
LABEL_14:
    (*(v8 + 8))(v10, v7);
    goto LABEL_3;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  if (*(v2 + qword_DFE298))
  {
    v11 = v19;

    LOBYTE(v11) = sub_2FC35C(v11);
    (*(v8 + 8))(v10, v7);
    swift_unknownObjectRelease();

    return v11 & 1;
  }

  (*(v8 + 8))(v10, v7);
  swift_unknownObjectRelease();
LABEL_3:
  LOBYTE(v11) = 0;
  return v11 & 1;
}

id sub_46E054()
{
  *&v0[qword_E08800] = 0;
  *&v0[qword_E08808 + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = &v0[qword_E08810];
  *v1 = 0;
  v1[1] = 0;
  *&v0[qword_E08818] = 0;
  *&v0[qword_E08820] = 0;
  v0[qword_E08828] = 0;
  v0[qword_E08830] = 0;
  v0[qword_E08838] = 0;
  *&v0[qword_E08840] = 0;
  *&v0[qword_E08848] = 0;
  v2 = &v0[qword_E08850];
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  v2[24] = 1;
  v3 = &v0[qword_E08858];
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = xmmword_B03DA0;
  v0[qword_E08860] = 0;
  v0[qword_E08868] = 0;
  v4 = qword_E71990;
  v5 = sub_AB3820();
  v6 = *(*(v5 - 8) + 56);
  v6(&v0[v4], 1, 1, v5);
  v0[qword_E71998] = 0;
  v7 = &v0[qword_E719A0];
  *v7 = 0;
  v7[1] = 0;
  *&v0[qword_E08870] = 0;
  v0[qword_E08878] = 0;
  *&v0[qword_E719A8] = _swiftEmptyArrayStorage;
  v0[qword_E719B0] = 0;
  v6(&v0[qword_E719B8], 1, 1, v5);
  v8 = &v0[qword_E719C0];
  *v8 = 0;
  v8[8] = 1;
  *&v0[qword_E08880] = _swiftEmptyArrayStorage;
  v0[qword_E719C8] = 0;
  *&v0[qword_E08888] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ContainerDetailSongsViewController();
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_3B4C14(1);

  return v9;
}

id sub_46E2F0(id result)
{
  v2 = result;
  v3 = qword_E08820;
  v4 = *&v1[qword_E08820];
  if (v4)
  {
    if (v4 == result)
    {
      return result;
    }

    result = [v1 isViewLoaded];
    if ((result & 1) == 0)
    {
      return result;
    }

    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    result = [v1 isViewLoaded];
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v5 = v2;
  result = [v1 loadViewIfNeeded];
  if (!*&v1[qword_DFE2F8])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ([v5 isDescendantOfView:?])
  {
    [v5 removeFromSuperview];
  }

LABEL_12:
  v6 = *&v1[v3];
  if (v6)
  {
    v7 = v6;
    [v1 loadViewIfNeeded];
    result = *&v1[qword_DFE2F8];
    if (!result)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    [result addSubview:v7];
  }

  [v1 loadViewIfNeeded];
  result = *&v1[qword_DFE2F8];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  return [result reloadData];
}

void sub_46E444(char a1)
{
  if (*(v1 + qword_E71998) != 1)
  {
    return;
  }

  if (a1)
  {
    return;
  }

  v2 = (*&stru_158.sectname[swift_isaMask & *v1])();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v14 = [v2 request];

  if (!v14)
  {
    return;
  }

  type metadata accessor for JSContainerDetailModelRequest();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel);
    v13 = v5;

    if (!v5)
    {
      return;
    }

    v6 = JSContainerDetail.containerDetailedResponseChildrenStoreIDs.getter();
    if (!v6)
    {
      v12 = v13;
      goto LABEL_14;
    }

    v7 = v6;
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E71120);

    v14 = sub_AB4BA0();
    v9 = sub_AB9F50();
    if (!os_log_type_enabled(v14, v9))
    {

      swift_bridgeObjectRelease_n();
      return;
    }

    v10 = swift_slowAlloc();
    *v10 = 134349056;
    v11 = *(v7 + 16);

    *(v10 + 4) = v11;

    _os_log_impl(&dword_0, v14, v9, "[ContainerDetailSongsViewController] detailed model response set for displaying full track listing, item count=%{public}ld", v10, 0xCu);
  }

  v12 = v14;
LABEL_14:
}

uint64_t sub_46E668()
{
  v0 = sub_AB3820();
  __swift_allocate_value_buffer(v0, qword_E71978);
  __swift_project_value_buffer(v0, qword_E71978);
  return sub_AB37C0();
}

void sub_46E6DC(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ContainerDetailSongsViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  v9[qword_E08878] = a5;
}

void sub_46E750(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ContainerDetailSongsViewController();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidAppear:", a3);
  sub_46C570();
}

void sub_46E7B8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ContainerDetailSongsViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = *&v0[qword_E08820];
  if (v1)
  {
    v2 = v1;
    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      [v3 addSubview:v2];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_46E848(void *a1)
{
  v1 = a1;
  sub_46E7B8();
}

id sub_46E890(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = sub_469DDC(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

uint64_t sub_46E9F0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_47125C(a4);

  return v8;
}

id sub_46EA44(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_4695C8(v11, v10);
  v15 = v14;

  (*(v8 + 8))(v10, v7);

  return v15;
}

void sub_46EB6C(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v6 = __chkstk_darwin(v41);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v44 = &v37 - v9;
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v16 = qword_E719B8;
  swift_beginAccess();
  v17 = *(v13 + 56);
  v42 = a1;
  sub_15F84(a1, v15, &unk_DE8E20);
  v43 = v1;
  v39 = v16;
  sub_15F84(v1 + v16, &v15[v17], &unk_DE8E20);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    if (v18(&v15[v17], 1, v3) == 1)
    {
      sub_12E1C(v15, &unk_DE8E20);
      return;
    }
  }

  else
  {
    sub_15F84(v15, v11, &unk_DE8E20);
    if (v18(&v15[v17], 1, v3) != 1)
    {
      v34 = v38;
      (*(v4 + 32))(v38, &v15[v17], v3);
      sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath);
      v35 = sub_AB91C0();
      v36 = *(v4 + 8);
      v36(v34, v3);
      v36(v11, v3);
      sub_12E1C(v15, &unk_DE8E20);
      v19 = v44;
      if (v35)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v11, v3);
  }

  sub_12E1C(v15, &unk_DF7930);
  v19 = v44;
LABEL_7:
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v20 = sub_AB4BC0();
  __swift_project_value_buffer(v20, qword_E70DC0);
  sub_15F84(v42, v19, &unk_DE8E20);
  v21 = v43;
  v22 = v43;
  v23 = sub_AB4BA0();
  v24 = sub_AB9F50();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *v25 = 136446466;
    v26 = v40;
    sub_15F84(v19, v40, &unk_DE8E20);
    v27 = sub_AB9350();
    LODWORD(v42) = v24;
    v29 = v28;
    sub_12E1C(v19, &unk_DE8E20);
    v30 = sub_425E68(v27, v29, &v45);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    sub_15F84(v21 + v39, v26, &unk_DE8E20);
    v31 = sub_AB9350();
    v33 = sub_425E68(v31, v32, &v45);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_0, v23, v42, "Updating the detail cell's index from %{public}s to %{public}s.", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v19, &unk_DE8E20);
  }
}

void sub_46F114(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v2 + qword_E719C0);
  if (*(v2 + qword_E719C0 + 8))
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && *v12 == *&a1)
  {
    return;
  }

  if ([v2 isViewLoaded])
  {
    v13 = v2;
    v14 = (*&stru_158.sectname[swift_isaMask & *v2])();
    if (v14)
    {
      v29 = v14;
      v15 = [v14 results];
      if (!v15)
      {
        __break(1u);
        goto LABEL_25;
      }

      v16 = v15;
      v17 = [v15 totalItemCount];

      if (v17 >= 1)
      {
        v18 = qword_E719B8;
        swift_beginAccess();
        sub_15F84(v2 + v18, v7, &unk_DE8E20);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {
          sub_12E1C(v7, &unk_DE8E20);
LABEL_22:

          return;
        }

        (*(v9 + 32))(v11, v7, v8);
        [v2 loadViewIfNeeded];
        v20 = *(v2 + qword_DFE2F8);
        if (v20)
        {
          v21 = v20;
          isa = sub_AB3770().super.isa;
          v23 = [v21 cellForItemAtIndexPath:isa];

          if (v23)
          {
            type metadata accessor for DetailCell(0);
            v24 = swift_dynamicCastClass();
            if (v24)
            {
              v25 = v24;
              v26 = [v29 results];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 totalItemCount];

                (*(&stru_798.size + (swift_isaMask & *v13)))(v25, v28, *v12, *(v12 + 8));
                (*(v9 + 8))(v11, v8);

                return;
              }

              goto LABEL_26;
            }
          }

          (*(v9 + 8))(v11, v8);
          goto LABEL_22;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v19 = v29;
    }
  }
}

BOOL sub_46F514(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = *&stru_1F8.segname[(swift_isaMask & *a1) + 16];
  v14 = a4;
  v15 = a1;
  v13(v12);
  (*(v10 + 8))(v12, v9);
  v16 = (*(v10 + 48))(v8, 1, v9) != 1;
  sub_12E1C(v8, &unk_DE8E20);

  return v16;
}

double sub_46F6F0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_4713C4(v6);

  return v9;
}

double sub_46F760(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_46BA20(v13, v14, v12);
  v18 = v17;

  (*(v10 + 8))(v12, v9);
  return v18;
}

uint64_t sub_46F894(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  LOBYTE(a1) = sub_471510(v10);

  (*(v8 + 8))(v10, v7);
  return a1 & 1;
}

void sub_46F9A8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  sub_AB3790();
  (*(v7 + 16))(v10, v12, v6);
  v13 = qword_E08880;
  swift_beginAccess();
  v14 = *&a1[v13];
  v19 = a4;
  v15 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v13] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_6AE4C(0, v14[2] + 1, 1, v14);
    *&a1[v13] = v14;
  }

  v18 = v14[2];
  v17 = v14[3];
  if (v18 >= v17 >> 1)
  {
    v14 = sub_6AE4C(v17 > 1, v18 + 1, 1, v14);
  }

  v14[2] = v18 + 1;
  (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v10, v6);
  *&a1[v13] = v14;
  sub_46C814();
  (*(v7 + 8))(v12, v6);
}

void sub_46FBB4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_471958(v10);

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_46FCC0()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v1 + 8))(v3, v0);
  return 0;
}

void sub_46FD8C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];

  sub_46C814();
  (*(v8 + 8))(v10, v7);
}

void sub_46FED0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_46A9C8(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

uint64_t sub_46FFF4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a4;
  v14 = a6;
  v15 = a1;
  sub_46B304();
  if (qword_DE6CD8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_E71978);
  sub_46687C(v13, v16, sub_46B3D0, &unk_D14FB8, &unk_D15008, sub_471220);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_470190(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a4;
  v14 = a6;
  v15 = a1;
  [v13 clearArtworkCatalogs];
  sub_46B304();
  if (qword_DE6CD8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_E71978);
  sub_470E6C(v16, &unk_D14FB8, &unk_D14FE0, sub_47113C);
  (*(v10 + 8))(v12, v9);
}

void sub_470320()
{
  sub_176DC(v0 + qword_E08808);
  sub_3FC30(*(v0 + qword_E08810));

  sub_12E1C(v0 + qword_E71990, &unk_DE8E20);
  swift_unknownObjectRelease();

  sub_12E1C(v0 + qword_E719B8, &unk_DE8E20);

  v1 = *(v0 + qword_E08888);
}

id sub_470454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerDetailSongsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_47048C(uint64_t a1)
{
  sub_176DC(a1 + qword_E08808);
  sub_3FC30(*(a1 + qword_E08810));

  sub_12E1C(a1 + qword_E71990, &unk_DE8E20);
  swift_unknownObjectRelease();

  sub_12E1C(a1 + qword_E719B8, &unk_DE8E20);

  v2 = *(a1 + qword_E08888);
}

uint64_t type metadata accessor for ContainerDetailSongsViewController()
{
  result = qword_E088B8;
  if (!qword_E088B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_470610()
{
  sub_55244();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

id sub_470730()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(type metadata accessor for ContainerDetailCollectionTableLayout()) init];
  [v2 _setShowsAdditionalSeparators:0];
  isa = sub_AB9740().super.isa;
  [v2 _setFloatingElementKinds:isa];

  (*(&stru_748.size + (swift_isaMask & *v1)))(v2);
  return v2;
}

double sub_47087C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_46B3D0(a1, v8);
  v3 = v8[7];
  a2[6] = v8[6];
  a2[7] = v3;
  a2[8] = v9[0];
  *(a2 + 137) = *(v9 + 9);
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

uint64_t sub_470968(uint64_t a1)
{
  *(a1 + 8) = sub_471B10(&qword_E091D0, type metadata accessor for ContainerDetailSongsViewController);
  result = sub_471B10(&qword_E091D8, type metadata accessor for ContainerDetailSongsViewController);
  *(a1 + 16) = result;
  return result;
}

void *sub_4709EC(void *a1)
{
  v5 = &_swiftEmptySetSingleton;
  v1 = [a1 universalStore];
  if (v1)
  {
    v2 = v1;
    if ([v1 adamID])
    {
      sub_1AB4C(&v4, [v2 adamID]);
    }

    if ([v2 purchasedAdamID])
    {
      sub_1AB4C(&v4, [v2 purchasedAdamID]);
    }

    if ([v2 subscriptionAdamID])
    {
      sub_1AB4C(&v4, [v2 subscriptionAdamID]);
    }

    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_470AD0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      result = sub_ABB5B0();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 8 * v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_470C24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*&stru_158.sectname[swift_isaMask & *v2])();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 results];

    if (!v8)
    {
      __break(1u);
      return;
    }

    isa = sub_AB3770().super.isa;
    v10 = [v8 itemAtIndexPath:isa];

    if (v10)
    {
      v11 = [v10 relativeModelObjectForStoreLibraryPersonalization];
      if (!v11)
      {
LABEL_12:

        swift_unknownObjectRelease();
        return;
      }

      v17 = v11;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v14 = v3 + qword_E08808;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v15 = *(v14 + 1);
          ObjectType = swift_getObjectType();
          (*(v15 + 24))(v3, v13, a1, a2, ObjectType, v15);
          swift_unknownObjectRelease();

          goto LABEL_12;
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_470E6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, double))
{
  v27 = a3;
  v28 = a4;
  v5 = v4;
  v26 = a1;
  v6 = sub_AB3820();
  v22 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_AB3430();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v24);
  v23 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  sub_AB3420();
  v25 = *(v5 + 88);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, v26, v6);
  v16 = v24;
  (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v24);
  v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v18 = (v8 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  (*(v7 + 32))(v19 + v17, v9, v22);
  (*(v10 + 32))(v19 + v18, v23, v16);

  sub_48C6A0(v28, v19);
  (*(v10 + 8))(v14, v16);
}

uint64_t sub_471100()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_47113C()
{
  v1 = *(sub_AB3820() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_AB3430() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_46D0A0(v5, v0 + v2, v6);
}

uint64_t sub_47125C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_497570();
  v7 = qword_E719B8;
  swift_beginAccess();
  sub_15F84(v1 + v7, v5, &unk_DE8E20);
  v8 = sub_AB3820();
  if ((*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    sub_12E1C(v5, &unk_DE8E20);
    return v6;
  }

  v9 = sub_AB37F0();
  result = sub_12E1C(v5, &unk_DE8E20);
  if (v9 != a1)
  {
    return v6;
  }

  if (!__OFADD__(v6++, 1))
  {
    return v6;
  }

  __break(1u);
  return result;
}

double sub_4713C4(void *a1)
{
  v2 = *(v1 + qword_E08820);
  if (!v2)
  {
    return 0.0;
  }

  v4 = v2;
  [a1 bounds];
  v7 = [v4 sizeThatFits:{v5, v6}];
  v9 = v8;
  if (((*&stru_5B8.segname[(swift_isaMask & *v1) + 8])(v7) & 1) != 0 || (v10 = *(v1 + qword_E08840)) == 0)
  {
  }

  else
  {
    v11 = v10;
    [v11 intrinsicContentSize];
    v13 = v12;
    v14 = dbl_B107E8[*(v1 + qword_E08830)] + dbl_B10800[*(v1 + qword_E08830)];
    v15 = Int.seconds.getter(1);

    return v9 + v13 - v15 * v14;
  }

  return v9;
}

uint64_t sub_471510(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = [v1 traitCollection];
  v17 = UITraitCollection.isMediaPicker.getter();

  if (v17 && (sub_46DCF0(a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  (*(v5 + 16))(v15, a1, v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v18 = qword_E719B8;
  swift_beginAccess();
  v19 = *(v7 + 48);
  sub_15F84(v15, v9, &unk_DE8E20);
  sub_15F84(v2 + v18, &v9[v19], &unk_DE8E20);
  v20 = *(v5 + 48);
  if (v20(v9, 1, v4) != 1)
  {
    sub_15F84(v9, v13, &unk_DE8E20);
    if (v20(&v9[v19], 1, v4) != 1)
    {
      v22 = v26;
      (*(v5 + 32))(v26, &v9[v19], v4);
      sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath);
      v23 = sub_AB91C0();
      v24 = *(v5 + 8);
      v24(v22, v4);
      sub_12E1C(v15, &unk_DE8E20);
      v24(v13, v4);
      sub_12E1C(v9, &unk_DE8E20);
      v21 = v23 ^ 1;
      return v21 & 1;
    }

    sub_12E1C(v15, &unk_DE8E20);
    (*(v5 + 8))(v13, v4);
    goto LABEL_9;
  }

  sub_12E1C(v15, &unk_DE8E20);
  if (v20(&v9[v19], 1, v4) != 1)
  {
LABEL_9:
    sub_12E1C(v9, &unk_DF7930);
    v21 = 1;
    return v21 & 1;
  }

  sub_12E1C(v9, &unk_DE8E20);
LABEL_6:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_471958(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = qword_E08880;
  swift_beginAccess();
  v8 = *(v1 + v7);

  v9 = sub_469AC8(a1, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    swift_beginAccess();
    sub_2E5F78(v9, v6);
    (*(v4 + 8))(v6, v3);
    swift_endAccess();
    sub_46C814();
    v13 = *(v1 + qword_E08848);
    *(v1 + qword_E08848) = 0;

    *(v1 + qword_E08860) = 0;
    return (*&stru_6A8.segname[(swift_isaMask & *v1) - 8])();
  }

  return result;
}

uint64_t sub_471B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_471B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  v10 = sub_27BD7C(a2);
  swift_endAccess();

  if (!v10)
  {
    return result;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v12 = Strong;
  v13 = *(v10 + 88);
  if (*(v10 + 144))
  {
    v14 = *(v10 + 16);
  }

  else
  {
    v14 = 0;
  }

  if (*(v10 + 144))
  {
    v15 = *(v10 + 24);
  }

  else
  {
    v15 = 0;
  }

  if (v13)
  {
    v16 = (v13 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v14 = *v16;
    v15 = v16[1];
LABEL_14:

    goto LABEL_15;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  v33[7] = *(v10 + 56);
  v14 = sub_ABB330();
  v15 = v32;
LABEL_15:
  swift_beginAccess();
  v17 = *(v12 + 104);
  if (!*(v17 + 16))
  {

LABEL_27:
  }

  v18 = sub_2EBF88(v14, v15);
  if ((v19 & 1) == 0)
  {

    goto LABEL_27;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  swift_beginAccess();
  v21 = *(v20 + 200);
  v24 = *(v21 + 16);
  v22 = v21 + 16;
  v23 = v24;
  if (v24 && (*(v22 + 16 * v23 + 8) & 1) == 0)
  {
    (*(v6 + 16))(v8, a3, v5);
    sub_AB33D0();
    v26 = v25;
    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    v27 = *(v20 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 200) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_6A900(0, *(v27 + 2) + 1, 1, v27);
      *(v20 + 200) = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_6A900((v29 > 1), v30 + 1, 1, v27);
    }

    *(v27 + 2) = v30 + 1;
    v31 = &v27[16 * v30];
    *(v31 + 4) = v26;
    v31[40] = 1;
    *(v20 + 200) = v27;
    swift_endAccess();
  }
}

uint64_t sub_471ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  v10 = sub_27C098(a2);
  swift_endAccess();

  if (!v10)
  {
    return result;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v12 = Strong;
  v13 = *(v10 + 88);
  if (*(v10 + 144))
  {
    v14 = *(v10 + 16);
  }

  else
  {
    v14 = 0;
  }

  if (*(v10 + 144))
  {
    v15 = *(v10 + 24);
  }

  else
  {
    v15 = 0;
  }

  if (v13)
  {
    v16 = (v13 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v14 = *v16;
    v15 = v16[1];
  }

  else if (!v15)
  {
    v28[7] = *(v10 + 56);
    v14 = sub_ABB330();
    v15 = v27;
    goto LABEL_15;
  }

LABEL_15:
  swift_beginAccess();
  v17 = *(v12 + 104);
  if (*(v17 + 16))
  {

    v18 = sub_2EBF88(v14, v15);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      swift_beginAccess();
      v21 = *(v20 + 200);
      v24 = *(v21 + 16);
      v22 = v21 + 16;
      v23 = v24;
      if (v24)
      {
        if ((*(v22 + 16 * v23 + 8) & 1) == 0)
        {
          (*(v6 + 16))(v8, a3, v5);
          sub_AB33D0();
          v26 = v25;
          (*(v6 + 8))(v8, v5);
          swift_beginAccess();
          sub_2C1F68(1, v26);
          swift_endAccess();
        }
      }
    }
  }

  else
  {
  }
}

void sub_4721D4()
{
  *(v0 + qword_E08800) = 0;
  *(v0 + qword_E08808 + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + qword_E08810);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_E08818) = 0;
  *(v0 + qword_E08820) = 0;
  *(v0 + qword_E08828) = 0;
  *(v0 + qword_E08830) = 0;
  *(v0 + qword_E08838) = 0;
  *(v0 + qword_E08840) = 0;
  *(v0 + qword_E08848) = 0;
  v2 = v0 + qword_E08850;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = 1;
  v3 = (v0 + qword_E08858);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = xmmword_B03DA0;
  *(v0 + qword_E08860) = 0;
  *(v0 + qword_E08868) = 0;
  v4 = qword_E71990;
  v5 = sub_AB3820();
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  *(v0 + qword_E71998) = 0;
  v7 = (v0 + qword_E719A0);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + qword_E08870) = 0;
  *(v0 + qword_E08878) = 0;
  *(v0 + qword_E719A8) = _swiftEmptyArrayStorage;
  *(v0 + qword_E719B0) = 0;
  v6(v0 + qword_E719B8, 1, 1, v5);
  v8 = v0 + qword_E719C0;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + qword_E08880) = _swiftEmptyArrayStorage;
  *(v0 + qword_E719C8) = 0;
  *(v0 + qword_E08888) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t objectdestroy_125Tm()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  v8 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);

  v9 = *(v8 + 32);
  if (v9 >= 9)
  {
  }

  (*(v6 + 8))(v0 + ((((v4 + 175) & 0xFFFFFFFFFFFFFFF8) + v7 + 10) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_4726A4(void (*a1)(uint64_t, uint64_t, uint64_t, double), uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), double a5)
{
  v11 = *(sub_AB3820() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 175) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(sub_AB3430() - 8);
  return sub_46CA68(a5, *(v5 + 16), v5 + v12, *(v5 + v13), (v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + v14), *(v5 + v14 + 8), *(v5 + v14 + 9), v5 + ((v14 + *(v15 + 80) + 10) & ~*(v15 + 80)), a1, a2, a3, a4);
}

uint64_t objectdestroy_121Tm()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_472974(void (*a1)(unint64_t, uint64_t), void (*a2)(void), uint64_t a3)
{
  v7 = *(sub_AB3820() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_AB3430() - 8);
  return sub_46D43C(*(v3 + 16), v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a1, a2, a3);
}

uint64_t sub_472A84(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_ABB5C0(), ApplicationCapabilities.Service.rawValue.getter(a1), sub_AB93F0(), , v4 = sub_ABB610(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v30 = ~v5;
    v7 = 0x646956636973756DLL;
    v29 = a1;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x8000000000B5B970;
        }

        v13 = *(*(a2 + 48) + v6) ? v7 : 0x636973756DLL;
        v14 = *(*(a2 + 48) + v6) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(a2 + 48) + v6) <= 1u ? v13 : v11;
        v10 = *(*(a2 + 48) + v6) <= 1u ? v14 : v12;
      }

      else if (*(*(a2 + 48) + v6) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x8000000000B5B9B0;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x8000000000B5B990;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a1 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a1 == 9)
      {
        v16 = 0x8000000000B5B990;
      }

      if (a1 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x8000000000B5B9B0;
      }

      v17 = 0x746963696C707865;
      if (a1 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a1 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a1 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a1 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a1 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a1 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a1 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x8000000000B5B970;
      }

      if (a1)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a1)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a1 <= 4u ? v19 : v15;
      v24 = a1 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = v6;
      v26 = v7;
      v27 = sub_ABB3C0();

      if ((v27 & 1) == 0)
      {
        v6 = (v25 + 1) & v30;
        LOBYTE(a1) = v29;
        v7 = v26;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v27 & 1;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

BOOL sub_472E58(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_ABB5B0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_472F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_ABB5C0();
  sub_AB93F0();
  v6 = sub_ABB610();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_ABB3C0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_472FF8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_ABACA0();
  }

  else if (*(a2 + 16) && (sub_13C80(0, &qword_DE7500), v5 = sub_ABA780(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_ABA790();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL sub_473110(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_ABB5C0();
  sub_ABB5D0(v3);
  v4 = sub_ABB610();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_4731E0(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_ABB5C0();
    sub_ABB5D0(a1 & 1);
    v5 = sub_ABB610();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_4732A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_485F14(&qword_DFAA90, &type metadata accessor for IndexPath), v7 = sub_AB90D0(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_485F14(&qword_DF7940, &type metadata accessor for IndexPath);
      v15 = sub_AB91C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_4734C0(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_ABB5C0();
    sub_1BDE98(a1);
    sub_AB93F0();

    v4 = sub_ABB610();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xEA00000000007365;
        v9 = 0x6974697669746361;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xE600000000000000;
            v9 = 0x736D75626C61;
            break;
          case 2:
            v8 = 0xE700000000000000;
            v9 = 0x73747369747261;
            break;
          case 3:
            v8 = 0xE800000000000000;
            v9 = 0x73726F7461727563;
            break;
          case 4:
            v8 = 0xE500000000000000;
            v9 = 0x73676E6F73;
            break;
          case 5:
            v8 = 0xE800000000000000;
            v9 = 0x736E6F6974617473;
            break;
          case 6:
            v9 = 0x75632D656C707061;
            v8 = 0xEE0073726F746172;
            break;
          case 7:
            v9 = 0x6169726F74696465;
            v8 = 0xEF736D6574692D6CLL;
            break;
          case 8:
            v9 = 0x6F6D2D636973756DLL;
            v10 = 1936025974;
            goto LABEL_20;
          case 9:
            v9 = 0x69762D636973756DLL;
            v10 = 1936680292;
LABEL_20:
            v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0xA:
            v9 = 0x6F736970652D7674;
            v8 = 0xEB00000000736564;
            break;
          case 0xB:
            v8 = 0xE800000000000000;
            v9 = 0x73776F68732D7674;
            break;
          case 0xC:
            v9 = 0x646564616F6C7075;
            v8 = 0xEF736F656469762DLL;
            break;
          case 0xD:
            v9 = 0x6C2D64726F636572;
            v8 = 0xED0000736C656261;
            break;
          case 0xE:
            v9 = 0x702D6C6169636F73;
            v8 = 0xEF73656C69666F72;
            break;
          case 0xF:
            v9 = 0x7473696C79616C70;
            v8 = 0xE900000000000073;
            break;
          default:
            break;
        }

        v11 = 0x6974697669746361;
        v12 = 0xEA00000000007365;
        switch(a1)
        {
          case 1:
            v12 = 0xE600000000000000;
            if (v9 == 0x736D75626C61)
            {
              goto LABEL_48;
            }

            goto LABEL_49;
          case 2:
            v12 = 0xE700000000000000;
            if (v9 != 0x73747369747261)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 3:
            v12 = 0xE800000000000000;
            if (v9 != 0x73726F7461727563)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 4:
            v12 = 0xE500000000000000;
            if (v9 != 0x73676E6F73)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 5:
            v12 = 0xE800000000000000;
            if (v9 != 0x736E6F6974617473)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 6:
            v12 = 0xEE0073726F746172;
            if (v9 != 0x75632D656C707061)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 7:
            v13 = 0x6169726F74696465;
            v14 = 0x6D6574692D6CLL;
            goto LABEL_38;
          case 8:
            v15 = 0x6F6D2D636973756DLL;
            v16 = 1936025974;
            goto LABEL_53;
          case 9:
            v15 = 0x69762D636973756DLL;
            v16 = 1936680292;
LABEL_53:
            v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v9 != v15)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 10:
            v11 = 0x6F736970652D7674;
            v12 = 0xEB00000000736564;
            goto LABEL_47;
          case 11:
            v12 = 0xE800000000000000;
            if (v9 != 0x73776F68732D7674)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 12:
            v13 = 0x646564616F6C7075;
            v14 = 0x6F656469762DLL;
            goto LABEL_38;
          case 13:
            v12 = 0xED0000736C656261;
            if (v9 != 0x6C2D64726F636572)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 14:
            v13 = 0x702D6C6169636F73;
            v14 = 0x656C69666F72;
LABEL_38:
            v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
            if (v9 != v13)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 15:
            v12 = 0xE900000000000073;
            if (v9 != 0x7473696C79616C70)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          default:
LABEL_47:
            if (v9 != v11)
            {
              goto LABEL_49;
            }

LABEL_48:
            if (v8 == v12)
            {

              v17 = 1;
              return v17 & 1;
            }

LABEL_49:
            v17 = sub_ABB3C0();

            if (v17)
            {
              return v17 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v17 & 1;
            }

            break;
        }
      }
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_473A94(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((sub_ABB5C0(), (a1 & 1) == 0) ? (v4 = 0x676F6C61746163) : (v4 = 0x7972617262696CLL), sub_AB93F0(), , v5 = sub_ABB610(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(a2 + 48) + v7) ? 0x7972617262696CLL : 0x676F6C61746163;
      if (v9 == v4)
      {
        break;
      }

      v10 = sub_ABB3C0();
      swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v10 & 1;
    }

    swift_bridgeObjectRelease_n();
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_473BDC(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_19F44(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v26 = ~v5;
    v7 = 7368564;
    v8 = 0xE300000000000000;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      if (v9 > 3)
      {
        if (*(*(a2 + 48) + v6) > 5u)
        {
          if (v9 == 6)
          {
            v14 = 0x7265736F706D6F63;
            v15 = 0xE900000000000073;
          }

          else
          {
            v14 = 0x4D73776F68537674;
            v15 = 0xED0000736569766FLL;
          }
        }

        else
        {
          if (v9 == 4)
          {
            v14 = 0x7473696C79616C70;
          }

          else
          {
            v14 = 0x646956636973756DLL;
          }

          if (v9 == 4)
          {
            v15 = 0xE900000000000073;
          }

          else
          {
            v15 = 0xEB00000000736F65;
          }
        }
      }

      else
      {
        if (v9 == 2)
        {
          v10 = 0x736D75626C61;
        }

        else
        {
          v10 = 0x73676E6F73;
        }

        if (v9 == 2)
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v6))
        {
          v12 = 0x73747369747261;
        }

        else
        {
          v12 = 7368564;
        }

        if (*(*(a2 + 48) + v6))
        {
          v13 = 0xE700000000000000;
        }

        else
        {
          v13 = 0xE300000000000000;
        }

        if (*(*(a2 + 48) + v6) <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        if (*(*(a2 + 48) + v6) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }
      }

      v16 = 0x7265736F706D6F63;
      if (a1 != 6)
      {
        v16 = 0x4D73776F68537674;
      }

      v17 = 0xED0000736569766FLL;
      if (a1 == 6)
      {
        v17 = 0xE900000000000073;
      }

      v18 = 0x7473696C79616C70;
      if (a1 != 4)
      {
        v18 = 0x646956636973756DLL;
      }

      v19 = 0xEB00000000736F65;
      if (a1 == 4)
      {
        v19 = 0xE900000000000073;
      }

      if (a1 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (a1 == 2)
      {
        v20 = 0x736D75626C61;
      }

      else
      {
        v20 = 0x73676E6F73;
      }

      if (a1 == 2)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      if (a1)
      {
        v7 = 0x73747369747261;
        v8 = 0xE700000000000000;
      }

      if (a1 <= 1u)
      {
        v20 = v7;
        v21 = v8;
      }

      v22 = a1 <= 3u ? v20 : v16;
      v23 = a1 <= 3u ? v21 : v17;
      if (v14 == v22 && v15 == v23)
      {
        break;
      }

      v24 = sub_ABB3C0();

      if ((v24 & 1) == 0)
      {
        v6 = (v6 + 1) & v26;
        v7 = 7368564;
        v8 = 0xE300000000000000;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v24 & 1;
    }

    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_473EC0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_ABABC0();
  if (result == 1 << *(a1 + 32))
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v5 = *(a1 + 36);

    return sub_48541C(result, v5, a1, a2);
  }

  return result;
}

uint64_t sub_473F44(uint64_t a1)
{
  v2 = sub_ABABC0();
  if (v2 == 1 << *(a1 + 32))
  {
    return 2;
  }

  else
  {
    return sub_4C3A20(v2, *(a1 + 36), 0, a1) & 1;
  }
}

Swift::Int sub_473FAC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_4740B4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_9ACA0(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_2EBF88(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_8085C(&v24);
      return 0;
    }

    sub_9ACA0(*(a2 + 56) + 40 * v17, v23);
    v20 = sub_ABAD00();
    sub_8085C(v23);
    result = sub_8085C(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_474250(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = *(*(a1 + 48) + 8 * v12);
      v15 = v13;
      v16 = sub_2F5AD8(v14);
      v18 = v17;

      if ((v18 & 1) == 0)
      {

        return;
      }

      sub_13C80(0, &qword_DFA720);
      v19 = *(*(a2 + 56) + 8 * v16);
      v20 = sub_ABA790();

      if ((v20 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_4743C4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    sub_9AEAC(v16);
    v17 = sub_2EBF88(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
LABEL_26:
      sub_9AE98(v16);
      return 0;
    }

    v20 = *(*(a2 + 56) + 8 * v17);
    switch(v20)
    {
      case 3:
        if (v16 != 3)
        {
          goto LABEL_26;
        }

        break;
      case 2:
        if (v16 != 2)
        {
          goto LABEL_26;
        }

        break;
      case 1:
        if (v16 != 1)
        {
          goto LABEL_26;
        }

        break;
      default:
        if ((v16 - 1) < 3)
        {
          goto LABEL_26;
        }

        result = sub_9AE98(v16);
        break;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_474554()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *v0;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = sub_12B7FC(v1);

  return v2;
}

uint64_t SearchRequestResults._scopes.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8D8);
  v2 = sub_ABAF60();

  return v2;
}

uint64_t sub_474644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v12 = *v2;
  v13[0] = v4;
  *(v13 + 9) = *(v2 + 25);
  sub_15F84(a1, v11, &unk_E00060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060);
  if (swift_dynamicCast())
  {
    v6 = *(&v9 + 1);
    v5 = v9;
    v7 = v10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v9 = 0u;
  }

  sub_1B6920(v5, v6, v7, a2);
  return sub_344D0C(v9, *(&v9 + 1));
}

uint64_t SearchRequestResults._snapshot(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_ABA9C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-v9 - 8];
  sub_15F84(a1, v14, &unk_E00060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060);
  v11 = swift_dynamicCast();
  (*(*(AssociatedTypeWitness - 8) + 56))(v10, v11 ^ 1u, 1, AssociatedTypeWitness);
  (*(a3 + 56))(v10, a2, a3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t Logger.search.unsafeMutableAddressor()
{
  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.search);
}

uint64_t SearchRequest.description.getter(uint64_t a1, uint64_t a2)
{
  v12 = (*(*(a2 + 8) + 24))();
  v13 = v4;
  strcpy(&v11, " hashedText: ");
  HIWORD(v11._object) = -4864;
  (*(a2 + 40))(a1, a2);
  sub_36A48();
  sub_ABAAD0();

  v14._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v14);

  sub_AB94A0(v11);

  strcpy(&v11, " variant: ");
  BYTE3(v11._object) = 0;
  HIDWORD(v11._object) = -369098752;
  (*(a2 + 64))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF5010);
  v15._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v15);

  sub_AB94A0(v11);

  strcpy(&v11, " library: ");
  BYTE3(v11._object) = 0;
  HIDWORD(v11._object) = -369098752;
  v5 = (*(a2 + 88))(a1, a2);
  v6 = [v5 description];
  v7 = sub_AB92A0();
  v9 = v8;

  v16._countAndFlagsBits = v7;
  v16._object = v9;
  sub_AB94A0(v16);

  sub_AB94A0(v11);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_ABAD90(21);
  v17._object = 0x8000000000B563A0;
  v17._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v17);
  (*(a2 + 112))(a1, a2);
  type metadata accessor for MPMediaLibraryFilteringOptions(0);
  sub_ABAF70();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_AB94A0(v18);

  return v12;
}

void SearchSource._add<A>(recentlySearchedModelObject:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Search.Recents.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - v12;
  v14 = a1;
  v15 = v17[3];
  sub_47B440(v14, AssociatedTypeWitness, a3, AssociatedConformanceWitness, v13);
  if (!v15)
  {
    v16 = [objc_opt_self() standardUserDefaults];
    sub_47B6E8(v13, v17[1], a2, a4);
    (*(v11 + 8))(v13, v10);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchSource._clearRecentlySearchedItems()()
{
  v3 = v1;
  v4 = v0;
  v5 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.clearRecentlySearchedItems<A>(for:)(v2, v4, v3);
}

uint64_t sub_474EF0(char a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  if ((a1 & 1) == 0)
  {
    static ApplicationCapabilities.shared.getter(v6);
    v4 = v7;

    sub_70C54(v6);
    sub_472A84(2, v4);
  }

  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

uint64_t Search.Configuration.defaultSource.getter()
{
  v1 = v0;
  static ApplicationCapabilities.shared.getter(v10);
  sub_70C54(v10);
  v2 = (BYTE8(v10[0]) & 0x80) == 0;
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = NSUserDefaults.lastSelectedSearchSource.getter();

  if (v4 == 2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(v1 + 64);
  v7 = v5;
  if (sub_473A94(v5, v6))
  {
    return v7;
  }

  v8 = sub_473F44(v6);
  if (v8 != 2)
  {
    return v8 & 1;
  }

  sub_ABAD90(53);
  sub_ABAF70();
  v11._object = 0x8000000000B66340;
  v11._countAndFlagsBits = 0xD000000000000033;
  sub_AB94A0(v11);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t *Search.resultSnapshotController.getter()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    swift_beginAccess();
    sub_30E554(v0 + 16, v3);
    v4 = 0;
    v5 = 0xE000000000000000;
    v6 = 1;
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
    v3[80] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09280);
    swift_allocObject();
    v1 = RequestResponse.Controller.init(request:)(v3);
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t Search.configuration.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_30E554(v1 + 16, v4);
  swift_beginAccess();
  sub_30EDB4(a1, v1 + 16);
  swift_endAccess();
  sub_476C14(v4);
  sub_30E5B0(a1);
  return sub_30E5B0(v4);
}

uint64_t *Search.recentlySearchedSnapshotController.getter()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    swift_beginAccess();
    sub_30E554(v0 + 16, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09288);
    swift_allocObject();
    v1 = RequestResponse.Controller.init(request:)(v3);
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t NSUserDefaults.lastSelectedSearchSource.setter(unsigned __int8 a1)
{
  v2 = a1;
  result = NSUserDefaults.lastSelectedSearchSource.getter();
  if (v2 == 2)
  {
    if (result == 2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (result == 2)
  {
    goto LABEL_5;
  }

  if (a1)
  {
    v4 = 0x7972617262696CLL;
  }

  else
  {
    v4 = 0x676F6C61746163;
  }

  if (result)
  {
    v5 = 0x7972617262696CLL;
  }

  else
  {
    v5 = 0x676F6C61746163;
  }

  if (v4 == v5)
  {
    return swift_bridgeObjectRelease_n();
  }

  v9 = sub_ABB3C0();
  result = swift_bridgeObjectRelease_n();
  if ((v9 & 1) == 0)
  {
LABEL_5:
    sub_AB2B00();
    swift_allocObject();
    sub_AB2AF0();
    LOBYTE(v11) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09290);
    sub_483B0C();
    v6 = sub_AB2AE0();
    v8 = v7;

    if (v8 >> 60 == 15)
    {
      v11 = 0u;
      v12 = 0u;
    }

    else
    {
      *(&v12 + 1) = &type metadata for Data;
      *&v11 = v6;
      *(&v11 + 1) = v8;
    }

    v10 = 0;
    sub_9007C(v6, v8);
    sub_35BCD8();
    sub_36A48();
    NSUserDefaults.subscript.setter(&v11, &v10, &_s9SearchKeyON);
    return sub_466A4(v6, v8);
  }

  return result;
}

uint64_t Search.ResultContext.source(for:)(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Search.ResultContext(0) + 40));
  v4 = v3[2];
  if ((~v4 & 0x7000000000000007) == 0)
  {
    return 2;
  }

  if ((v4 & 0x4000000000000000) == 0)
  {
    return v4 >> 63;
  }

  v7 = *v3;
  v6 = v3[1];
  sub_30F03C(*v3, v6, v3[2]);
  v8 = v7(a1);
  if ((~v10 & 0xF000000000000007) == 0)
  {
    sub_30F04C(v7, v6, v4);
    return 2;
  }

  v11 = v10;
  sub_30EEB0(v8, v9, v10);
  sub_30F04C(v7, v6, v4);
  return v11 >> 63;
}

uint64_t Search.persist<A>(_:for:)(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 88);
  v8 = a2 & 1;

  v9 = sub_477E20(v8, v7);
  v11 = v10;
  v13 = v12;

  if ((~v13 & 0xF000000000000007) != 0)
  {
    v16 = &_s7LibraryVN;
    if (v13 >= 0)
    {
      v16 = &_s7CatalogVN;
    }

    v17 = &off_D00048;
    if (v13 < 0)
    {
      v17 = &off_D17228;
    }

    *(&v21 + 1) = v16;
    v22 = v17;

    sub_30EEB0(v9, v11, v13);
    *&v20 = v9;
    *(&v20 + 1) = v11;
    *&v21 = v13 & 0x7FFFFFFFFFFFFFFFLL;
    sub_70DF8(&v20, v23);
    v18 = v24;
    v19 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v19 + 24))(a1, a3, v18, v19);
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_12E1C(&v20, &qword_DFE5E0);
    sub_30F074();
    swift_allocError();
    *v14 = v8;
    return swift_willThrow();
  }
}

uint64_t Search.Source.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7972617262696CLL;
  }

  else
  {
    return 0x676F6C61746163;
  }
}

uint64_t Search.augmentedModelObject(from:with:for:completionHandler:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  swift_beginAccess();
  v11 = *(v5 + 88);

  v12 = sub_477E20(a3 & 1, v11);
  v14 = v13;
  v16 = v15;

  if ((~v16 & 0xF000000000000007) != 0)
  {
    v19 = &_s7LibraryVN;
    if (v16 >= 0)
    {
      v19 = &_s7CatalogVN;
    }

    v20 = &off_D00048;
    if (v16 < 0)
    {
      v20 = &off_D17228;
    }

    *(&v24 + 1) = v19;
    v25 = v20;

    sub_30EEB0(v12, v14, v16);
    *&v23 = v12;
    *(&v23 + 1) = v14;
    *&v24 = v16 & 0x7FFFFFFFFFFFFFFFLL;
    sub_70DF8(&v23, v26);
    v21 = v27;
    v22 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v22 + 40))(a1, a2, a4, a5, v21, v22);
    return __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_12E1C(&v23, &qword_DFE5E0);
    sub_1CE268();
    swift_allocError();
    *v17 = 0;
    a4();
  }
}

void Search.Configuration.mediaLibrary.setter(id obj)
{
  objc_storeStrong((v1 + 8), obj);
  sub_4768E8();
}

void Search.Configuration.mediaPickerConfiguration.setter(void *a1)
{
  v3 = *v1;
  v4 = a1;

  *v1 = a1;
  sub_4768E8();
}

uint64_t Search.ResultSnapshotRequest.init(configuration:source:text:variant:scope:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 144) = 0;
  v7 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v7;
  *(a7 + 64) = a1[4];
  v8 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v8;
  *(a7 + 128) = 0u;
  *(a7 + 80) = a2 & 1;
  *(a7 + 88) = a3;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5 & 1;
  *(a7 + 112) = 0u;
  return sub_160B4(a6, a7 + 112, &unk_E00060);
}

uint64_t Search.__allocating_init()()
{
  v0 = swift_allocObject();
  Search.init()();
  return v0;
}

uint64_t sub_475B48@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v50 = a2;
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v49[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  __chkstk_darwin(v11 - 8);
  v13 = &v49[-v12];
  v14 = type metadata accessor for Search.ResultContext(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_15F84(a1, v13, &unk_E00050);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_12E1C(v13, &unk_E00050);
    v18 = sub_48176C();
    v20 = v19;
    v21 = *aSearch_11;
    v22 = unk_E09278;
    v23 = sub_AB31C0();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);

    return MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v18, v20, v21, v22, v8, 0, 0, 0, v51);
  }

  sub_489CC8(v13, v17, type metadata accessor for Search.ResultContext);
  v25 = *&v17[*(v14 + 32)];
  v26 = *&v17[*(v14 + 36)];
  if (v26 && (v27 = [v26 requestUrl]) != 0)
  {
    v28 = v27;
    sub_AB92A0();
    v30 = v29;

    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  URL.init(string:)(v31, v10);
  v56 = sub_96B2C(_swiftEmptyArrayStorage);
  sub_489D30(v3, v54);
  if (v55 == 1)
  {
    if (v25)
    {
      if (*(v25 + 16))
      {
        v32 = sub_2EBF88(0x7363697274656DLL, 0xE700000000000000);
        if (v33)
        {
          sub_9ACA0(*(v25 + 56) + 40 * v32, v53);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE590);
          if (swift_dynamicCast())
          {
            v34 = v52;

            v56 = v34;
          }
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
    v35 = sub_AB50C0();
    v36 = v35 <= 0;
    if (v35 <= 0)
    {
      v37 = 0x65736C6166;
    }

    else
    {
      v37 = 1702195828;
    }

    if (v36)
    {
      v38 = 0xE500000000000000;
    }

    else
    {
      v38 = 0xE400000000000000;
    }

    sub_2E4D4C(v37, v38, 0x6C75736552736168, 0xEA00000000007374);
    sub_12E1C(v54, &unk_E00060);
  }

  else
  {
    sub_30E4AC(v54);
  }

  if (v50 != 2)
  {
    v39 = 0x7972617262696CLL;
    if (v50)
    {

LABEL_25:
      v41 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54[0] = v41;
      sub_92078(v39, 0xE700000000000000, 0xD000000000000014, 0x8000000000B66490, isUniquelyReferenced_nonNull_native);
      v56 = v54[0];
      goto LABEL_26;
    }

    v40 = sub_ABB3C0();

    v39 = 0x676F6C61746163;
    if (v40)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v43 = sub_48176C();
  v45 = v44;
  v46 = *aSearch_11;
  v47 = unk_E09278;
  sub_15F84(v10, v8, &unk_DF2AE0);
  v48 = v56;

  MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v43, v45, v46, v47, v8, v48, 0, 0, v51);
  sub_12E1C(v10, &unk_DF2AE0);
  return sub_486014(v17, type metadata accessor for Search.ResultContext);
}

double static Search.ResultContext.empty()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Search.Item(0);
  sub_1D30D0();
  sub_485F14(&qword_DF4FB0, type metadata accessor for Search.Item);
  sub_AB5110();
  v2 = type metadata accessor for Search.ResultContext(0);
  v3 = (a1 + v2[7]);
  result = 0.0;
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  v5 = (a1 + v2[5]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + v2[6]) = 1;
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = 0;
  v6 = (a1 + v2[10]);
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0x7000000000000007;
  return result;
}

Swift::Void __swiftcall NSUserDefaults.clearAllRecentlySearchedItems()()
{
  memset(v1, 0, sizeof(v1));
  v0 = 1;
  sub_35BCD8();
  sub_36A48();
  NSUserDefaults.subscript.setter(v1, &v0, &_s9SearchKeyON);
}

id Search.Item.modelObject.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5F0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  v9 = __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - v13;
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = type metadata accessor for Search.Item(0);
  __chkstk_darwin(v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v1, v19, type metadata accessor for Search.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_36B0C(v19, v16, &unk_E00040);
    sub_15F84(v16, v14, &unk_E00040);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_12E1C(v16, &unk_E00040);
      return *v14;
    }

    sub_36B0C(v14, v7, &qword_DFE5F0);
    v22 = SnapshotIdentifier.Lazy.object.getter(v5);
    sub_12E1C(v7, &qword_DFE5F0);
    sub_12E1C(v16, &unk_E00040);
  }

  else
  {
    sub_489CC8(v19, v4, type metadata accessor for Search.Recents.Result.Item);
    sub_15F84(v4, v11, &unk_E00040);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_486014(v4, type metadata accessor for Search.Recents.Result.Item);
      return *v11;
    }

    sub_36B0C(v11, v7, &qword_DFE5F0);
    v22 = SnapshotIdentifier.Lazy.object.getter(v5);
    sub_12E1C(v7, &qword_DFE5F0);
    sub_486014(v4, type metadata accessor for Search.Recents.Result.Item);
  }

  return v22;
}

id Search.init()()
{
  v1 = v0;
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = result;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = &_swiftEmptySetSingleton;
    *(v0 + 88) = &_swiftEmptySetSingleton;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B00DA0;

    v4 = *ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter(v5);
    *(inited + 56) = &type metadata for NotificationTrigger;
    *(inited + 64) = &protocol witness table for NotificationTrigger;
    *(inited + 32) = v6;
    *(inited + 40) = v7;

    v8 = v4;
    v9 = *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter(v10);
    *(inited + 96) = &type metadata for NotificationTrigger;
    *(inited + 104) = &protocol witness table for NotificationTrigger;
    *(inited + 72) = v11;
    *(inited + 80) = v12;

    v13 = v9;
    v14 = *ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter(v15);
    *(inited + 136) = &type metadata for NotificationTrigger;
    *(inited + 144) = &protocol witness table for NotificationTrigger;
    *(inited + 112) = v16;
    *(inited + 120) = v17;

    v18 = v14;
    v19 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter(v20);
    *(inited + 176) = &type metadata for NotificationTrigger;
    *(inited + 184) = &protocol witness table for NotificationTrigger;
    *(inited + 152) = v21;
    *(inited + 160) = v22;

    v23 = v19;
    v24 = *ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter(v25);
    *(inited + 216) = &type metadata for NotificationTrigger;
    *(inited + 224) = &protocol witness table for NotificationTrigger;
    *(inited + 192) = v26;
    *(inited + 200) = v27;

    v28 = v24;
    v29 = *ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter(v30);
    *(inited + 256) = &type metadata for NotificationTrigger;
    *(inited + 264) = &protocol witness table for NotificationTrigger;
    *(inited + 232) = v31;
    *(inited + 240) = v32;
    v33 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for Whitetail.Binding();
    swift_allocObject();

    v34 = v29;

    v35 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_483C7C, v33);

    *(v1 + 112) = v35;

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_476814()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    sub_30E554(v1 + 16, v3);
    sub_4768E8();
    sub_30E554(v1 + 16, v2);
    swift_beginAccess();
    sub_30EDB4(v3, v1 + 16);
    swift_endAccess();
    sub_476C14(v2);
    sub_30E5B0(v2);
    sub_30E5B0(v3);
  }

  return result;
}

uint64_t sub_4768E8()
{
  v1 = v0;
  static ApplicationCapabilities.shared.getter(v23);
  if (!*v0)
  {
    goto LABEL_7;
  }

  v2 = *v0;
  if ([v2 showsLibraryContent])
  {
    v3 = [v2 pickingForExternalPlayer];

    if (v3)
    {
      v4 = BYTE2(v23[0]);
      v5 = sub_4776BC(v1, v23);
      if ((v4 & 1) == 0)
      {
LABEL_5:
        if ((v5 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      }

LABEL_8:
      sub_ABB5C0();
      sub_AB93F0();
      v6 = sub_ABB610();
      v7 = -1 << *(&_swiftEmptySetSingleton + 32);
      v8 = v6 & ~v7;
      if (((*(&_swiftEmptySetSingleton + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
      {
LABEL_13:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_245D4(1, v8, isUniquelyReferenced_nonNull_native);
        if ((v5 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      }

      v9 = ~v7;
      v10 = *(&_swiftEmptySetSingleton + 6);
      while ((*(v10 + v8) & 1) == 0 && (sub_ABB3C0() & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if (((*(&_swiftEmptySetSingleton + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_5;
    }

LABEL_7:
    v5 = sub_4776BC(v1, v23);
    goto LABEL_8;
  }

  if ((sub_4776BC(v1, v23) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  sub_ABB5C0();
  sub_AB93F0();
  v12 = sub_ABB610();
  v13 = -1 << *(&_swiftEmptySetSingleton + 32);
  v14 = v12 & ~v13;
  if ((*(&_swiftEmptySetSingleton + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14))
  {
    v15 = ~v13;
    v16 = *(&_swiftEmptySetSingleton + 6);
    while (*(v16 + v14) == 1 && (sub_ABB3C0() & 1) == 0)
    {
      v14 = (v14 + 1) & v15;
      if (((*(&_swiftEmptySetSingleton + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_245D4(0, v14, v17);
  }

LABEL_22:
  v18 = v1[8];
  v1[8] = &_swiftEmptySetSingleton;
  if (sub_4C9E88(&_swiftEmptySetSingleton, v18))
  {

    return sub_70C54(v23);
  }

  else
  {
    v20 = v1[9];

    v21 = sub_4867CC(&_swiftEmptySetSingleton, v20);

    v22 = sub_2F3DD0(v21);

    result = sub_70C54(v23);
    v1[9] = v22;
  }

  return result;
}

uint64_t sub_476C14(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_30E554(v1 + 16, v9);
  v4 = Search.resultSnapshotController.getter();
  swift_beginAccess();
  sub_30E3FC((v4 + 2), v8);
  sub_30EDB4(v9, v8);
  RequestResponse.Controller.request.setter(v8);

  Search.recentlySearchedSnapshotController.getter();
  sub_30E554(v9, v8);
  RequestResponse.Controller.request.setter(v8);

  if (sub_4C9E88(*(a1 + 64), v10))
  {
    return sub_30E5B0(v9);
  }

  swift_beginAccess();
  v6 = *(v2 + 96);
  if (v6)
  {
    swift_endAccess();
    sub_307CC(v6);

    v6(v7);
    sub_30E5B0(v9);

    return sub_17654(v6);
  }

  else
  {
    sub_30E5B0(v9);
    return swift_endAccess();
  }
}

__n128 Search.RecentlySearchedSnapshotRequest.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

void (*Search.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 288) = v1;
  swift_beginAccess();
  sub_30E554(v1 + 16, v4);
  return sub_476E64;
}

void sub_476E64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 288);
  if (a2)
  {
    sub_30E554(*a1, v2 + 80);
    sub_30E554(v3 + 16, v2 + 160);
    swift_beginAccess();
    sub_30EDB4(v2 + 80, v3 + 16);
    swift_endAccess();
    sub_476C14(v2 + 160);
    sub_30E5B0(v2 + 80);
    sub_30E5B0(v2 + 160);
    v4 = v2;
  }

  else
  {
    sub_30E554(v3 + 16, v2 + 80);
    swift_beginAccess();
    sub_30EDB4(v2, v3 + 16);
    swift_endAccess();
    sub_476C14(v2 + 80);
    sub_30E5B0(v2);
    v4 = v2 + 80;
  }

  sub_30E5B0(v4);

  free(v2);
}

uint64_t sub_476F74(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_4768E8();
  }

  return result;
}

uint64_t NSUserDefaults.lastSelectedSearchSource.getter()
{
  LOBYTE(v13) = 0;
  sub_35BCD8();
  v1 = sub_36A48();
  NSUserDefaults.subscript.getter(&v17);
  if (v18)
  {
    if (swift_dynamicCast())
    {
      sub_AB2AD0();
      swift_allocObject();
      sub_AB2AC0();
      sub_483CD8();
      sub_AB2AB0();

      sub_466B8(v13, v14);
      return v17;
    }
  }

  else
  {
    sub_12E1C(&v17, &unk_DE8E40);
  }

  sub_483C84();
  v2 = v0;
  NSUserDefaults.Migrator.init<A>(userDefaults:key:)(v2, v3, &type metadata for String, &_s9SearchKeyO6LegacyON, &v17);
  v4 = v17;
  UIScreen.Dimensions.size.getter(v5);
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E092B0);
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(v7, v9, 0, v10, &type metadata for Data, &v15, v1);

  if (v16 >> 60 == 15)
  {
    return 2;
  }

  v11 = sub_466A4(v15, v16);
  return NSUserDefaults.lastSelectedSearchSource.getter(v11);
}

uint64_t sub_4772D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 64);
  *(a2 + 64) = *a1;

  if (sub_4C9E88(v5, v4))
  {
  }

  else
  {
    v7 = *(a2 + 72);

    v8 = sub_4867CC(v3, v7);

    v9 = sub_2F3DD0(v8);

    *(a2 + 72) = v9;
  }

  return result;
}

uint64_t sub_4773AC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  v18 = *a1;
  if (*a1)
  {
    v8 = 0x7972617262696CLL;
  }

  else
  {
    v8 = 0x676F6C61746163;
  }

  v25 = a2;

  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_11:
      v12 = (*(v25 + 48) + 24 * (__clz(__rbit64(v6)) | (v11 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[2];
      if (v15 < 0)
      {
        v16 = 0x7972617262696CLL;
      }

      else
      {
        v16 = 0x676F6C61746163;
      }

      if (v16 == v8)
      {
        sub_2BB90();

        result = swift_bridgeObjectRelease_n();
        goto LABEL_25;
      }

      v17 = sub_ABB3C0();
      sub_2BB90();
      swift_bridgeObjectRelease_n();
      if (v17)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_2BBCC();
      v10 = v11;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_25:
    *a3 = v14;
    a3[1] = v13;
    a3[2] = v15;
  }

  else
  {
    while (1)
    {
LABEL_8:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v11 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    if (v18)
    {
      result = [objc_opt_self() deviceMediaLibrary];
      if (result)
      {
        v20 = 0;
        v21 = 0xE000000000000000;
        v22 = 1;
        v23 = result;
        memset(v24, 0, sizeof(v24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09920);
        swift_allocObject();
        result = RequestResponse.Controller.init(request:)(&v20);
        v15 = result | 0x8000000000000000;
        v14 = 0x7972617262694CLL;
        v13 = 0xE700000000000000;
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    result = [objc_opt_self() deviceMediaLibrary];
    if (result)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
      v22 = 1;
      v23 = result;
      memset(v24, 0, sizeof(v24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09928);
      swift_allocObject();
      result = RequestResponse.Controller.init(request:)(&v20);
      v15 = result;
      v13 = 0xEB00000000636973;
      v14 = 0x754D2E656C707041;
      goto LABEL_25;
    }

LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_4776BC(id *a1, uint64_t a2)
{
  sub_13C80(0, &qword_DF86B0);
  v4 = a1[1];
  v5 = static MPMediaLibrary.device.getter();
  v6 = sub_ABA790();

  if (v6 & 1) != 0 && (v7 = *(a2 + 32), (sub_472A84(0, v7)))
  {
    v8 = *(a2 + 1);
    if (*a1)
    {
      v9 = *a1;
      if (MPMediaPickerConfiguration.supportsCatalogContent.getter() & 1) != 0 && (v8)
      {
        static ApplicationCapabilities.shared.getter(v13);
        sub_70C54(v13);

        v10 = BYTE9(v13[0]) & 1;
      }

      else
      {

        v10 = 0;
      }
    }

    else
    {
      if (sub_472A84(2, v7))
      {
        v12 = 1;
      }

      else
      {
        v12 = sub_472A84(4, v7);
      }

      v10 = v8 & v12;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t SyncedLyricsManager.elapsedTimeProvider.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_307CC(v1);
  return v1;
}

uint64_t Search.onAvailableSourcesChanged.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_17654(v5);
}

uint64_t static Search.Source.< infix(_:_:)(char a1, char a2)
{
  v2 = 0;
  if (a1 & 1) == 0 && (a2)
  {
    static ApplicationCapabilities.shared.getter(v5);
    v3 = v6;

    sub_70C54(v5);
    v2 = sub_472A84(2, v3);
  }

  return v2 & 1;
}

MusicApplication::Search::Source_optional __swiftcall Search.Source.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_CF18E8;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicApplication_Search_Source_library;
  }

  else
  {
    v4.value = MusicApplication_Search_Source_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_47798C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7972617262696CLL;
  }

  else
  {
    v2 = 0x676F6C61746163;
  }

  if (*a2)
  {
    v3 = 0x7972617262696CLL;
  }

  else
  {
    v3 = 0x676F6C61746163;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_ABB3C0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_477A14()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_477A8C()
{
  sub_AB93F0();
}

Swift::Int sub_477AE8()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_477B68(uint64_t *a1@<X8>)
{
  v2 = 0x676F6C61746163;
  if (*v1)
  {
    v2 = 0x7972617262696CLL;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_477C50(_BYTE *a1, _BYTE *a2)
{
  v2 = 0;
  if ((*a1 & 1) == 0 && *a2)
  {
    static ApplicationCapabilities.shared.getter(v5);
    v3 = v6;

    sub_70C54(v5);
    v2 = sub_472A84(2, v3);
  }

  return v2 & 1;
}

uint64_t sub_477CC0(_BYTE *a1, _BYTE *a2)
{
  v2 = 1;
  if ((*a2 & 1) == 0 && *a1)
  {
    static ApplicationCapabilities.shared.getter(v6);
    v3 = v7;

    sub_70C54(v6);
    v4 = sub_472A84(2, v3);

    v2 = v4 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_477D38(_BYTE *a1, _BYTE *a2)
{
  v2 = 1;
  if ((*a1 & 1) == 0 && *a2)
  {
    static ApplicationCapabilities.shared.getter(v6);
    v3 = v7;

    sub_70C54(v6);
    v4 = sub_472A84(2, v3);

    v2 = v4 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_477DB0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0;
  if ((*a2 & 1) == 0 && *a1)
  {
    static ApplicationCapabilities.shared.getter(v5);
    v3 = v6;

    sub_70C54(v5);
    v2 = sub_472A84(2, v3);
  }

  return v2 & 1;
}

uint64_t sub_477E20(char a1, uint64_t a2)
{
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  if (a1)
  {
    v8 = 0x7972617262696CLL;
  }

  else
  {
    v8 = 0x676F6C61746163;
  }

  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_11:
      v12 = (*(a2 + 48) + 24 * (__clz(__rbit64(v6)) | (v11 << 6)));
      v13 = *v12;
      if (v12[2] < 0)
      {
        v14 = 0x7972617262696CLL;
      }

      else
      {
        v14 = 0x676F6C61746163;
      }

      if (v14 == v8)
      {
        sub_2BB90();

        swift_bridgeObjectRelease_n();
        return v13;
      }

      v15 = sub_ABB3C0();
      sub_2BB90();
      swift_bridgeObjectRelease_n();
      if (v15)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_2BBCC();
      v10 = v11;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    return v13;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return 0;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.Participant.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static Search.Item.Hint.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_ABB3C0(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_ABB3C0();
    }
  }

  return result;
}

uint64_t Search.Item.Hint.hash(into:)()
{
  sub_AB93F0();

  return sub_AB93F0();
}

Swift::Int Search.Item.Hint.hashValue.getter()
{
  sub_ABB5C0();
  sub_AB93F0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t static Search.Recents.Result.Item.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_13C80(0, &qword_DEDE20);
  if ((static SnapshotIdentifier.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Search.Recents.Result.Item(0);
  if ((sub_AB33E0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return sub_ABB3C0();
}

uint64_t Search.Item.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Search.Item(0);
  __chkstk_darwin(v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v1, v11, type metadata accessor for Search.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_36B0C(v11, v8, &unk_E00040);
      sub_ABB5D0(1uLL);
      SnapshotIdentifier.hash(into:)(a1, v6);
      return sub_12E1C(v8, &unk_E00040);
    }

    else
    {
      sub_489CC8(v11, v5, type metadata accessor for Search.Recents.Result.Item);
      sub_ABB5D0(2uLL);
      SnapshotIdentifier.hash(into:)(a1, v6);
      sub_AB3430();
      sub_485F14(&unk_DFEEF0, &type metadata accessor for Date);
      sub_AB90E0();
      sub_AB93F0();
      return sub_486014(v5, type metadata accessor for Search.Recents.Result.Item);
    }
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
    sub_AB93F0();
  }
}

Swift::Int Search.Item.hashValue.getter()
{
  sub_ABB5C0();
  Search.Item.hash(into:)(v1);
  return sub_ABB610();
}

Swift::Int sub_478594()
{
  sub_ABB5C0();
  Search.Item.hash(into:)(v1);
  return sub_ABB610();
}

uint64_t Search.ResultContext.snapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Search.ResultContext.snapshot.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Search.ResultContext.searchedText.getter()
{
  v1 = *(v0 + *(type metadata accessor for Search.ResultContext(0) + 20));

  return v1;
}

uint64_t Search.ResultContext.searchedText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Search.ResultContext(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Search.ResultContext.variant.setter(char a1)
{
  result = type metadata accessor for Search.ResultContext(0);
  *(v1 + *(result + 24)) = a1 & 1;
  return result;
}

uint64_t Search.ResultContext.resources.getter()
{
  type metadata accessor for Search.ResultContext(0);
}

uint64_t Search.ResultContext.resources.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Search.ResultContext(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

void *Search.ResultContext.performanceMetrics.getter()
{
  v1 = *(v0 + *(type metadata accessor for Search.ResultContext(0) + 36));
  v2 = v1;
  return v1;
}

void Search.ResultContext.performanceMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Search.ResultContext(0) + 36);

  *(v1 + v3) = a1;
}

uint64_t Search.ResultContext.ScopingContext.selected.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 8);

  return sub_70DF8(a1, v1 + 8);
}

uint64_t (*Search.recentlySearchedSnapshotController.modify(uint64_t **a1))(void *a1)
{
  a1[1] = v1;
  *a1 = Search.recentlySearchedSnapshotController.getter();
  return sub_478B1C;
}

uint64_t Search.RecentlySearchedSnapshotRequest.perform(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  __chkstk_darwin(v10 - 8);
  v12 = v17 - v11;
  v13 = *(v5 + 72);
  sub_30E554(v5, v17);
  if (a1)
  {
    RequestResponse.Revision.content.getter(v12);
    v14 = type metadata accessor for Search.ResultContext(0);
    if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
    {
      sub_12E1C(v12, &unk_E00050);
      a1 = 0;
    }

    else
    {
      a1 = *&v12[*(v14 + 32)];

      sub_486014(v12, type metadata accessor for Search.ResultContext);
    }
  }

  v18[2] = v17[2];
  v18[3] = v17[3];
  v18[4] = v17[4];
  v18[0] = v17[0];
  v18[1] = v17[1];
  v19 = a1;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v13;

  sub_47953C(sub_485FD4, v15, a4);
  sub_485FE4(v18);
}

uint64_t sub_478D38(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v43 = a8;
  v44 = a1;
  v47 = a7;
  v48 = a6;
  v45 = a4;
  v46 = a5;
  v10 = type metadata accessor for Search.Item(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E092C0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for Search.ResultContext(0);
  v18 = (v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D30D0();
  sub_485F14(&qword_DF4FB0, type metadata accessor for Search.Item);
  sub_AB5110();
  v21 = &v20[v18[9]];
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *v21 = 0u;
  v22 = &v20[v18[7]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v20[v18[8]] = 1;
  v23 = v18[10];
  *&v20[v23] = 0;
  *&v20[v18[11]] = 0;
  v24 = &v20[v18[12]];
  *v24 = sub_479238;
  *(v24 + 8) = xmmword_B10820;
  if (a3)
  {
    v49 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    swift_willThrowTypedImpl();
    sub_487D68(v20, v16, type metadata accessor for Search.ResultContext);
    swift_storeEnumTagMultiPayload();
    v48(v16, v45, v46);
  }

  else
  {
    v40 = v14;
    v42 = v16;
    *&v20[v23] = a2;

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
    v26._rawValue = &off_CF1938;
    v41 = v20;
    sub_AB50D0(v26);
    v27 = v44;
    v28 = v44[2];
    if (v28)
    {
      v38 = v25;
      v39 = v24;
      v49 = _swiftEmptyArrayStorage;
      sub_6D8B4(0, v28, 0);
      v29 = v49;
      v30 = *(type metadata accessor for Search.Recents.Result.Item(0) - 8);
      v31 = v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v32 = *(v30 + 72);
      do
      {
        sub_487D68(v31, v13, type metadata accessor for Search.Recents.Result.Item);
        swift_storeEnumTagMultiPayload();
        v49 = v29;
        v34 = v29[2];
        v33 = v29[3];
        if (v34 >= v33 >> 1)
        {
          sub_6D8B4(v33 > 1, v34 + 1, 1);
          v29 = v49;
        }

        v29[2] = v34 + 1;
        sub_489CC8(v13, v29 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v34, type metadata accessor for Search.Item);
        v31 += v32;
        --v28;
      }

      while (v28);
      v35 = v48;
      v24 = v39;
    }

    else
    {
      v35 = v48;
    }

    LOBYTE(v49) = 3;
    v20 = v41;
    sub_AB5090();

    v36 = swift_allocObject();
    v16 = v42;
    *(v36 + 16) = v43;
    *v24 = sub_48BC9C;
    *(v24 + 1) = v36;
    *(v24 + 2) = 0x4000000000000000;
    sub_487D68(v20, v16, type metadata accessor for Search.ResultContext);
    swift_storeEnumTagMultiPayload();

    v35(v16, v45, v46);
  }

  sub_12E1C(v16, &qword_E092C0);
  return sub_486014(v20, type metadata accessor for Search.ResultContext);
}

uint64_t sub_479248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Search.Item(0);
  __chkstk_darwin(v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_487D68(a1, v6, type metadata accessor for Search.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v10 = sub_489CC8(v6, v9, type metadata accessor for Search.Recents.Result.Item);
    __chkstk_darwin(v10);
    *&v13[-16] = v9;
    v11 = sub_1B600C(sub_48BCA4, &v13[-32], a2);
    sub_486014(v9, type metadata accessor for Search.Recents.Result.Item);
    return v11;
  }

  else
  {
    sub_486014(v6, type metadata accessor for Search.Item);
    return 0;
  }
}

uint64_t sub_479414(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;

  v7 = v5 < 0;
  if (v5 < 0)
  {
    v8 = &_s7LibraryVN;
  }

  else
  {
    v8 = &_s7CatalogVN;
  }

  if (v7)
  {
    v9 = &off_D17228;
  }

  else
  {
    v9 = &off_D00048;
  }

  v17[3] = v8;
  v17[4] = v9;
  v17[0] = v4;
  v17[1] = v3;
  v17[2] = v6;
  __swift_project_boxed_opaque_existential_1(v17, v8);
  v10 = (v9[1])(v8, v9);
  v12 = v11;
  v13 = (a2 + *(type metadata accessor for Search.Recents.Result.Item(0) + 24));
  if (v10 == *v13 && v12 == v13[1])
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_ABB3C0();
  }

  __swift_destroy_boxed_opaque_existential_0(v17);
  return v15 & 1;
}

uint64_t sub_47953C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a2;
  v29 = a1;
  v37 = a3;
  v34 = sub_AB7C10();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_AB7C50();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C20();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v10 = UnfairLock.init()();
  v31 = v10;
  v11 = dispatch_group_create();
  v27 = v11;
  type metadata accessor for CompoundRequestResponseInvalidation();
  v12 = CompoundRequestResponseInvalidation.__allocating_init()();
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_988FC(_swiftEmptyArrayStorage);
  v15 = *(v3 + 72);
  v39 = v3;
  v40 = v11;
  v41 = v10;
  v42 = v13;
  v43 = v14;
  v44 = v12;
  sub_2C1E14(sub_489FEC, v38, v15);
  sub_13C80(0, &qword_DE8ED0);
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.userInteractive(_:), v6);
  v26 = sub_ABA190();
  (*(v7 + 8))(v9, v6);
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v13;
  v17 = v29;
  v16[4] = v14;
  v16[5] = v17;
  v16[6] = v30;
  aBlock[4] = sub_48A060;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_148;
  v18 = _Block_copy(aBlock);

  v19 = v28;
  sub_AB7C30();
  v45 = _swiftEmptyArrayStorage;
  sub_485F14(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_36A00(&qword_DF06D0, &unk_DE9C30);
  v20 = v32;
  v21 = v34;
  sub_ABABB0();
  v22 = v26;
  v23 = v27;
  sub_ABA0F0();

  (*(v36 + 8))(v20, v21);
  (*(v33 + 8))(v19, v35);
  _Block_release(v18);

  v24 = v37;
  *(v37 + 32) = 0;
  *v24 = 0u;
  v24[1] = 0u;
}

uint64_t (*Search.resultSnapshotController.modify(uint64_t **a1))(void *a1)
{
  a1[1] = v1;
  *a1 = Search.resultSnapshotController.getter();
  return sub_479AD0;
}

unint64_t Search.ResultSnapshotRequest.description.getter()
{
  v4 = 0xD000000000000015;
  v5 = 0x8000000000B10860;
  sub_ABAD90(18);
  v6._object = 0x8000000000B66380;
  v6._countAndFlagsBits = 0xD000000000000010;
  sub_AB94A0(v6);
  sub_ABAF70();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_AB94A0(v7);

  v8._countAndFlagsBits = 0x3A656372756F7320;
  v8._object = 0xE900000000000020;
  sub_AB94A0(v8);
  sub_ABAF70();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_AB94A0(v9);

  sub_36A48();
  v2[5] = sub_ABAAD0();
  v10._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v10);

  v11._countAndFlagsBits = 0x203A7478657420;
  v11._object = 0xE700000000000000;
  sub_AB94A0(v11);

  v2[0] = 0x746E616972617620;
  v2[1] = 0xEA0000000000203ALL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF5010);
  v12._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v12);

  v13._countAndFlagsBits = 0x746E616972617620;
  v13._object = 0xEA0000000000203ALL;
  sub_AB94A0(v13);

  v3._countAndFlagsBits = 0x203A65706F637320;
  v3._object = 0xE800000000000000;
  sub_15F84(v0 + 112, v2, &unk_E00060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060);
  v14._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v14);

  sub_AB94A0(v3);

  return v4;
}

uint64_t PlaylistCovers.Recipe.textColor.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t PlaylistCovers.Recipe.textColor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t Search.ResultSnapshotRequest.perform(_:_:)@<X0>(void (*a1)(uint64_t, void, void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E092C0);
  __chkstk_darwin(v6);
  v8 = (&v38 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = *(v3 + 80);
  v14 = sub_477E20(v13, *(v3 + 72));
  if ((~v16 & 0xF000000000000007) != 0)
  {
    v20 = v16;
    v38 = v6;
    v39 = v8;
    v43 = a2;
    v44 = a3;
    v40 = v15;
    v41 = v14;
    v21 = type metadata accessor for Search.ResultContext(0);
    v42 = swift_allocBox();
    v23 = v22;
    type metadata accessor for Search.Item(0);
    sub_1D30D0();
    sub_485F14(&qword_DF4FB0, type metadata accessor for Search.Item);
    sub_AB5110();
    v25 = *(v3 + 88);
    v24 = *(v3 + 96);
    v26 = *(v3 + 104);
    v27 = (v23 + v21[7]);
    v27[1] = 0u;
    v27[2] = 0u;
    *v27 = 0u;
    (*(v10 + 32))(v23, v12, v9);
    v28 = (v23 + v21[5]);
    *v28 = v25;
    v28[1] = v24;
    *(v23 + v21[6]) = v26;
    *(v23 + v21[8]) = 0;
    *(v23 + v21[9]) = 0;
    v29 = (v23 + v21[10]);
    v30 = v40;
    v31 = v41;
    *v29 = v41;
    v29[1] = v30;
    v29[2] = v20;
    v32 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v32 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v34 = v42;
      v33 = v43;

      sub_487D54(v31, v30, v20);
      if (v20 < 0)
      {
        sub_487B1C(v20 & 0x7FFFFFFFFFFFFFFFLL, v3, v34, v45, v33);
      }

      else
      {
        sub_4878E4(v20, v3, v34, v45, v33);
      }

      v37 = v44;
      sub_30EEB0(v31, v30, v20);
      *(v37 + 4) = 0;
      *v37 = 0u;
      v37[1] = 0u;
    }

    else
    {
      v35 = v39;
      sub_487D68(v23, v39, type metadata accessor for Search.ResultContext);
      swift_storeEnumTagMultiPayload();

      sub_487D54(v31, v30, v20);
      v45(v35, 0, 0);
      sub_30EEB0(v31, v30, v20);
      sub_12E1C(v35, &qword_E092C0);
      v36 = v44;
      *v44 = 0u;
      v36[1] = 0u;
      *(v36 + 4) = 0;
    }
  }

  else
  {
    sub_486074();
    v17 = swift_allocError();
    *v18 = v13;
    *v8 = v17;
    swift_storeEnumTagMultiPayload();
    v45(v8, 0, 0);
    result = sub_12E1C(v8, &qword_E092C0);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
  }

  return result;
}

uint64_t sub_47A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), uint64_t a6)
{
  v41 = a6;
  v36 = a4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E092C0);
  __chkstk_darwin(v40);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v37 = &v34 - v11;
  v42 = type metadata accessor for Search.ResultContext(0);
  v12 = swift_projectBox();
  type metadata accessor for GenericRequestResponseInvalidation();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  v14 = (v13 + 32);
  *(v13 + 48) = 0;
  v15 = (v13 + 48);
  *(v13 + 40) = 0;
  *(v13 + 16) = 0x636972656E6547;
  *(v13 + 24) = 0xE700000000000000;
  if (!RequestResponse.Revision.isValid.getter())
  {
    swift_beginAccess();
    if ((*v15 & 1) == 0)
    {
      *v15 = 1;
      swift_beginAccess();
      v16 = *v14;
      if (*v14)
      {
        v17 = sub_485F14(&qword_E09938, type metadata accessor for GenericRequestResponseInvalidation);

        v16(v13, v17);
        sub_17654(v16);
      }
    }
  }

  v18 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  v19 = *v18;
  *v18 = sub_48C67C;
  v18[1] = v13;

  sub_17654(v19);
  RequestResponse.Revision.content.getter(&v43);
  v20 = v43;
  if (v43)
  {
    v35 = a5;
    v21 = v44;
    v22 = v45;
    v23 = *(&v43 + 1);
    swift_beginAccess();
    v24 = v42;
    *(v12 + *(v42 + 32)) = v21;
    v25 = *(v24 + 36);
    v26 = *(v12 + v25);
    *(v12 + v25) = v22;

    v34 = v22;

    sub_15F84(v36 + 112, &v43, &unk_E00060);
    if (v45)
    {
      sub_70DF8(&v43, &v47);
    }

    else if (*(v23 + 16))
    {
      v27 = *(v23 + 32);
      *(&v48 + 1) = &_s7LibraryV11ResultScopeON;
      v49 = &off_D171C0;
      LOBYTE(v47) = v27;
    }

    else
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    sub_15F84(&v47, &v43, &unk_E00060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060);
    if (swift_dynamicCast())
    {
      v28 = LOBYTE(v46[0]);
    }

    else
    {
      v28 = 8;
      LOBYTE(v46[0]) = 8;
    }

    v29 = v37;
    sub_4BFCDC(v28, v20, v23, v37);
    swift_beginAccess();
    (*(v38 + 40))(v12, v29, v39);
    sub_15F84(&v47, &v43, &unk_E00060);
    if (v45)
    {
      sub_70DF8(&v43, v46);

      v31 = sub_12BCEC(v30);

      swift_bridgeObjectRelease_n();
      sub_70DF8(v46, &v43 + 8);
      *&v43 = v31;
      sub_12E1C(&v47, &unk_E00060);
      swift_beginAccess();
      sub_160B4(&v43, v12 + *(v42 + 28), &unk_E00070);
    }

    else
    {

      sub_12E1C(&v47, &unk_E00060);
      sub_12E1C(&v43, &unk_E00060);
    }

    a5 = v35;
  }

  swift_beginAccess();
  sub_487D68(v12, v9, type metadata accessor for Search.ResultContext);
  swift_storeEnumTagMultiPayload();
  v32 = sub_485F14(&qword_E09938, type metadata accessor for GenericRequestResponseInvalidation);
  a5(v9, v13, v32);
  sub_12E1C(v9, &qword_E092C0);
}

uint64_t sub_47A910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), uint64_t a6)
{
  v65 = a6;
  v58 = a4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E092C0);
  __chkstk_darwin(v64);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin(v10);
  v59 = &v54 - v11;
  v66 = type metadata accessor for Search.ResultContext(0);
  v12 = swift_projectBox();
  type metadata accessor for GenericRequestResponseInvalidation();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 48) = 0;
  v14 = (v13 + 48);
  *(v13 + 40) = 0;
  *(v13 + 16) = 0x636972656E6547;
  *(v13 + 24) = 0xE700000000000000;
  if (!RequestResponse.Revision.isValid.getter())
  {
    swift_beginAccess();
    if ((*v14 & 1) == 0)
    {
      *v14 = 1;
      swift_beginAccess();
      v15 = *(v13 + 32);
      if (v15)
      {
        v16 = sub_485F14(&qword_E09938, type metadata accessor for GenericRequestResponseInvalidation);

        v15(v13, v16);
        sub_17654(v15);
      }
    }
  }

  v17 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  v18 = *v17;
  *v17 = sub_489E4C;
  v17[1] = v13;

  sub_17654(v18);
  RequestResponse.Revision.content.getter(&v67);
  v19 = v71;
  if (v71 != 255)
  {
    v62 = v9;
    v20 = a5;
    v55 = v67;
    v56 = v70;
    v75 = v67;
    v76 = v68;
    v77 = v69;
    v78 = v70;
    v21 = *(&v67 + 1);
    v57 = v69;
    if (v71)
    {
      v22 = v69;
    }

    else
    {
      v22 = *(&v67 + 1);
    }

    v23 = v68;
    if (v71)
    {
      v24 = v70;
    }

    else
    {
      v24 = v68;
    }

    v79 = v71 & 1;

    swift_beginAccess();
    v25 = v66;
    *(v12 + *(v66 + 32)) = v22;

    v26 = *(v25 + 36);
    v27 = *(v12 + v26);
    *(v12 + v26) = v24;
    v28 = v24;

    sub_15F84(v58 + 112, &v67, &unk_E00060);
    v54 = v20;
    v63 = v19;
    if (v69)
    {
      sub_70DF8(&v67, v74);
      a5 = v20;
      v9 = v62;
      v29 = v23;
    }

    else
    {
      if (v19)
      {
        v30 = v55;
        v31 = v56;
        sub_9AE20(v55, v21, v23, v57, v56, 1);

        v32 = v30;
        v29 = v23;
      }

      else
      {
        v29 = v23;
        sub_9AE20(v55, v21, v23, v57, v56, 0);
        v32 = _swiftEmptyArrayStorage;
        v31 = v23;
      }

      v9 = v62;

      if (v32[2])
      {
        v33 = v32[4];
        v34 = v32[5];
        v35 = v32[7];
        v58 = v32[6];

        v36 = swift_allocObject();
        v36[2] = v33;
        v36[3] = v34;
        v36[4] = v58;
        v36[5] = v35;
        v37 = &off_CFFFD0;
        v38 = &_s7CatalogV11ResultScopeVN;
      }

      else
      {

        v36 = 0;
        v38 = 0;
        v37 = 0;
        v74[1] = 0;
        v74[2] = 0;
      }

      a5 = v54;
      v74[0] = v36;
      v74[3] = v38;
      v74[4] = v37;
      if (v69)
      {
        sub_12E1C(&v67, &unk_E00060);
      }
    }

    sub_15F84(v74, &v67, &unk_E00060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060);
    if (swift_dynamicCast())
    {
      v40 = *(&v72 + 1);
      v39 = v72;
      v41 = *(&v73 + 1);
    }

    else
    {
      v41 = 0;
      v40 = 0;
      v39 = 0;
      v72 = 0u;
      v73 = 0u;
    }

    v42 = v55;
    v43 = v59;
    sub_1B6920(v39, v40, v41, v59);
    sub_344D0C(v72, *(&v72 + 1));
    swift_beginAccess();
    (*(v60 + 40))(v12, v43, v61);
    sub_15F84(v74, &v67, &unk_E00060);
    if (v69)
    {
      v61 = v12;
      v44 = v29;
      sub_70DF8(&v67, &v72);
      v45 = v56;
      v46 = v57;
      v47 = v44;
      if (v63)
      {
        sub_9AE20(v42, v21, v44, v57, v56, 1);

        v48 = v21;
        v49 = v45;
        v50 = v42;
      }

      else
      {
        sub_9AE20(v42, v21, v44, v57, v56, 0);
        v50 = _swiftEmptyArrayStorage;
        v48 = v21;
        v49 = v47;
      }

      v51 = sub_12B7FC(v50);
      sub_1D339C(v42, v48, v47, v46, v45, v63);
      sub_70DF8(&v72, &v67 + 8);
      *&v67 = v51;
      sub_12E1C(v74, &unk_E00060);

      v12 = v61;
      swift_beginAccess();
      sub_160B4(&v67, v12 + *(v66 + 28), &unk_E00070);
      a5 = v54;
      v9 = v62;
    }

    else
    {
      sub_1D339C(v42, v21, v29, v57, v56, v63);
      sub_12E1C(v74, &unk_E00060);
      sub_12E1C(&v67, &unk_E00060);
    }
  }

  swift_beginAccess();
  sub_487D68(v12, v9, type metadata accessor for Search.ResultContext);
  swift_storeEnumTagMultiPayload();
  v52 = sub_485F14(&qword_E09938, type metadata accessor for GenericRequestResponseInvalidation);
  a5(v9, v13, v52);
  sub_12E1C(v9, &qword_E092C0);
}

uint64_t sub_47B0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if ((*(a3 + 48) & 1) == 0)
  {
    *(a3 + 48) = 1;
    result = swift_beginAccess();
    v5 = *(a3 + 32);
    if (v5)
    {
      v6 = sub_485F14(&qword_E09938, type metadata accessor for GenericRequestResponseInvalidation);

      v5(a3, v6);
      return sub_17654(v5);
    }
  }

  return result;
}

uint64_t sub_47B1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    v6 = a4 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = a4;
  }

  if (a4 < 0)
  {
    v7 = &_s7LibraryVN;
  }

  else
  {
    v7 = &_s7CatalogVN;
  }

  if (a4 < 0)
  {
    v8 = &off_D17228;
  }

  else
  {
    v8 = &off_D00048;
  }

  v10[3] = v7;
  v10[4] = v8;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = v6;
  __swift_project_boxed_opaque_existential_1(v10, v7);
  (v8[1])(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_AB93F0();

  sub_AB93F0();
}

Swift::Int sub_47B2CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_ABB5C0();
  sub_47B1A4(v5, v1, v2, v3);
  return sub_ABB610();
}

Swift::Int sub_47B334()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_ABB5C0();
  sub_47B1A4(v5, v1, v2, v3);
  return sub_ABB610();
}

uint64_t Search.deinit()
{
  sub_30E5B0(v0 + 16);
  sub_17654(*(v0 + 96));

  return v0;
}

uint64_t Search.__deallocating_deinit()
{
  sub_30E5B0(v0 + 16);
  sub_17654(*(v0 + 96));

  return swift_deallocClassInstance();
}

void sub_47B440(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v23 = a5;
  v24 = a3;
  v22 = sub_ABA9C0();
  v8 = *(v22 - 8);
  v9 = __chkstk_darwin(v22);
  v11 = &v21 - v10;
  v12 = *(a2 - 8);
  __chkstk_darwin(v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 + 32);
  v16 = a1;
  v15();
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    (*(v8 + 8))(v11, v22);
    type metadata accessor for Search.Recents.Item.InitializerError();
    swift_getWitnessTable();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v14, v11, a2);
    v18 = [v16 identifiers];
    v19 = v23;
    *v23 = v18;
    v20 = type metadata accessor for Search.Recents.Item();
    (*(v12 + 16))(&v19[*(v20 + 36)], v14, a2);
    sub_AB3420();

    (*(v12 + 8))(v14, a2);
  }
}

uint64_t sub_47B6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Search.Recents.Item();
  sub_ABB340();
  v9 = *(v8 - 8);
  swift_allocObject();
  v10 = sub_AB9780();
  (*(v9 + 16))(v11, a1, v8);
  v12 = sub_23BCD8(v10);
  if (sub_AB9860())
  {
    WitnessTable = swift_getWitnessTable();
    v14 = sub_486410(v12, v8, WitnessTable);
  }

  else
  {
    v14 = &_swiftEmptySetSingleton;
  }

  sub_47E434(v14, a2, a3, a4);
}

uint64_t NSUserDefaults.clearRecentlySearchedItems<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Search.Recents.Item();
  v7 = sub_AB97C0();
  if (sub_AB9860())
  {
    WitnessTable = swift_getWitnessTable();
    v9 = sub_486410(v7, v6, WitnessTable);
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  sub_47ED9C(v9, a1, a2, a3);
}

uint64_t sub_47BA28(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF1960;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_47BA78(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 1684957547;
  }

  return 0x6564644165746164;
}

uint64_t sub_47BAD4()
{
  swift_getWitnessTable();

  return sub_ABB400();
}

uint64_t sub_47BB48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_47BBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_47BC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_47BC94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_47BA28(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_47BCC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_47BA78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_47BCF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_47BA74();
  *a1 = result;
  return result;
}

uint64_t sub_47BD20@<X0>(_BYTE *a1@<X8>)
{
  result = static MPIdentifierSet.Purpose.Options.all.getter();
  *a1 = result;
  return result;
}

uint64_t sub_47BD4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_47BDA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

void Search.Recents.Item.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v39 = sub_AB3430();
  v36 = *(v39 - 8);
  v7 = __chkstk_darwin(v39);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 - 8);
  __chkstk_darwin(v7);
  v41 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Search.Recents.Item.CodingKeys();
  swift_getWitnessTable();
  v44 = sub_ABB200();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v32 - v10;
  v43 = a3;
  v12 = type metadata accessor for Search.Recents.Item();
  v35 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = (&v32 - v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v45;
  sub_ABB680();
  if (v15)
  {
    goto LABEL_4;
  }

  v45 = v12;
  v16 = v42;
  v48 = 0;
  sub_487DE8();
  sub_ABB1E0();
  v34 = v11;
  v17 = v46;
  v18 = v47;
  sub_13C80(0, &qword_DEBB58);
  sub_13C80(0, &unk_DE8180);
  v32 = v17;
  v33 = v18;
  v19 = sub_ABA0D0();
  v21 = a2;
  if (!v19)
  {
    type metadata accessor for Search.Recents.Item.InitializerError();
    swift_getWitnessTable();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    (*(v16 + 8))(v34, v44);
    sub_466B8(v32, v33);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return;
  }

  v22 = v14;
  *v14 = v19;
  LOBYTE(v46) = 1;
  v23 = v41;
  v24 = v19;
  v25 = v34;
  sub_ABB1E0();
  v26 = v16;
  v43 = v24;
  v27 = v22;
  (*(v38 + 32))(v22 + *(v45 + 36), v23, v21);
  LOBYTE(v46) = 2;
  sub_485F14(&qword_E092D8, &type metadata accessor for Date);
  v28 = v39;
  v29 = v40;
  sub_ABB1E0();
  (*(v26 + 8))(v25, v44);
  v30 = v45;
  (*(v36 + 32))(v27 + *(v45 + 40), v29, v28);
  sub_466B8(v32, v33);
  v31 = v35;
  (*(v35 + 16))(v37, v27, v30);
  __swift_destroy_boxed_opaque_existential_0(a1);
  (*(v31 + 8))(v27, v30);
}

uint64_t Search.Recents.Item.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v21 = *(a2 + 24);
  v22 = v6;
  type metadata accessor for Search.Recents.Item.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_ABB290();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_ABB690();
  v10 = objc_opt_self();
  v11 = *v3;
  v26[0] = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:{v26, v21, v22}];
  v13 = v26[0];
  if (v12)
  {
    v14 = sub_AB3260();
    v16 = v15;

    v26[0] = v14;
    v26[1] = v16;
    v25 = 0;
    sub_487E54();
    v17 = v23;
    v18 = v24;
    sub_ABB280();
    if (!v17)
    {
      LOBYTE(v26[0]) = 1;
      sub_ABB280();
      LOBYTE(v26[0]) = 2;
      sub_AB3430();
      sub_485F14(&qword_E092E8, &type metadata accessor for Date);
      sub_ABB280();
    }

    (*(v7 + 8))(v9, v18);
    return sub_466B8(v14, v16);
  }

  else
  {
    v20 = v13;
    sub_AB3050();

    swift_willThrow();
    return (*(v7 + 8))(v9, v24);
  }
}

uint64_t static Search.Recents.Item.< infix(_:_:)()
{
  type metadata accessor for Search.Recents.Item();

  return sub_AB3390();
}

uint64_t static Search.Recents.Item.__derived_struct_equals(_:_:)()
{
  sub_13C80(0, &qword_DFA720);
  if ((sub_ABA790() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Search.Recents.Item();
  if ((sub_AB91C0() & 1) == 0)
  {
    return 0;
  }

  return sub_AB33E0();
}

uint64_t Search.Recents.Item.hash(into:)()
{
  sub_ABA7A0();
  sub_AB90E0();
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date);
  return sub_AB90E0();
}

Swift::Int Search.Recents.Item.hashValue.getter()
{
  sub_ABB5C0();
  Search.Recents.Item.hash(into:)();
  return sub_ABB610();
}

Swift::Int sub_47C938()
{
  sub_ABB5C0();
  Search.Recents.Item.hash(into:)();
  return sub_ABB610();
}

uint64_t Search.Recents.Result.Item.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  SnapshotIdentifier.hash(into:)(a1, v2);
  type metadata accessor for Search.Recents.Result.Item(0);
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date);
  sub_AB90E0();

  return sub_AB93F0();
}

Swift::Int Search.Recents.Result.Item.hashValue.getter()
{
  sub_ABB5C0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  SnapshotIdentifier.hash(into:)(v2, v0);
  type metadata accessor for Search.Recents.Result.Item(0);
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date);
  sub_AB90E0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_47CB84()
{
  sub_ABB5C0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  SnapshotIdentifier.hash(into:)(v2, v0);
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date);
  sub_AB90E0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_47CC58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  SnapshotIdentifier.hash(into:)(a1, v2);
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date);
  sub_AB90E0();

  return sub_AB93F0();
}

Swift::Int sub_47CD28()
{
  sub_ABB5C0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  SnapshotIdentifier.hash(into:)(v2, v0);
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date);
  sub_AB90E0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_47CDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DEDE20);
  if ((static SnapshotIdentifier.== infix(_:_:)() & 1) == 0 || (sub_AB33E0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_ABB3C0();
}

void *sub_47CEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  v6 = sub_ABAE50();
  v58 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v48[-v11];
  v13 = __chkstk_darwin(v10);
  v57 = &v48[-v14];
  __chkstk_darwin(v13);
  v16 = &v48[-v15];
  LOBYTE(v63) = 1;
  sub_35BCD8();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v61);
  if (v62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8);
    if (swift_dynamicCast())
    {
      v17 = v63;
      v18 = (*(*(a3 + 8) + 16))(a2);
      if (*(v17 + 16))
      {
        v56 = v17;
        v20 = sub_2EBF88(v18, v19);
        if (v21)
        {
          v52 = v6;
          v22 = (*(v56 + 56) + 16 * v20);
          v23 = v22[1];
          v54 = *v22;
          v55 = v23;
          sub_90090(v54, v23);

          sub_AB2AD0();
          swift_allocObject();
          v53 = sub_AB2AC0();
          swift_getAssociatedTypeWitness();
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedConformanceWitness();
          v24 = type metadata accessor for Search.Recents.Item();
          WitnessTable = swift_getWitnessTable();
          sub_AB9BF0();
          v51 = v24;
          v60 = swift_getWitnessTable();
          swift_getWitnessTable();
          v25 = v54;
          sub_AB2AB0();
          if (!v3)
          {

            sub_466B8(v25, v55);

            return v61;
          }

          *&v61 = v3;
          swift_errorRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
          v26 = v52;
          if (!swift_dynamicCast())
          {

            swift_willThrow();
            sub_466B8(v54, v55);

            return v26;
          }

          v28 = v57;
          v27 = v58;
          (*(v58 + 32))(v57, v16, v26);
          v29 = v26;
          if (qword_DE6D48 != -1)
          {
            swift_once();
          }

          v30 = sub_AB4BC0();
          __swift_project_value_buffer(v30, static Logger.search);
          v31 = *(v27 + 16);
          v31(v12, v28, v26);
          v32 = sub_AB4BA0();
          v49 = sub_AB9F30();
          v53 = v32;
          if (os_log_type_enabled(v32, v49))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v63 = v34;
            *v33 = 136315138;
            v31(v9, v12, v29);
            v35 = sub_AB9350();
            v37 = v36;
            v38 = *(v58 + 8);
            v38(v12, v29);
            v39 = sub_425E68(v35, v37, &v63);

            *(v33 + 4) = v39;
            v40 = v53;
            _os_log_impl(&dword_0, v53, v49, "Error decoding recently searched items from user defaults: %s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v34);

            v28 = v57;
          }

          else
          {
            v38 = *(v58 + 8);
            v38(v12, v29);
          }

          v45 = [objc_opt_self() standardUserDefaults];
          NSUserDefaults.clearRecentlySearchedItems<A>(for:)(v59, a2, a3);

          v46 = v51;
          v47 = sub_AB97C0();
          if (sub_AB9860())
          {
            v26 = sub_486410(v47, v46, WitnessTable);

            v38(v28, v52);
          }

          else
          {
            v38(v28, v52);

            v26 = &_swiftEmptySetSingleton;
          }

          sub_466B8(v54, v55);
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    sub_12E1C(&v61, &unk_DE8E40);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v41 = type metadata accessor for Search.Recents.Item();
  v42 = sub_AB97C0();
  if (!sub_AB9860())
  {

    return &_swiftEmptySetSingleton;
  }

  v43 = swift_getWitnessTable();
  v26 = sub_486410(v42, v41, v43);
LABEL_15:

  return v26;
}

uint64_t sub_47D6C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();

  sub_19BC4(v13);
  swift_endAccess();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *a3;
  *a3 = 0x8000000000000000;
  sub_48B9A0(a5, sub_1CB8B0, 0, isUniquelyReferenced_nonNull_native, &v16);

  if (v8)
  {

    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    *a3 = v16;
    swift_endAccess();
    return CompoundRequestResponseInvalidation.append(_:)(a7, a8);
  }

  return result;
}

void sub_47D7F8(uint64_t *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = [objc_opt_self() standardUserDefaults];
    v16 = sub_48A764(v13, v12);
    if (!v7)
    {
      v17 = v16;

      if (v17[2])
      {
        v18 = *(a2 + 80);
        sub_15F84(a2 + 24, v34, &qword_DF4F58);
        v32 = v17;
        v33 = v18;

        dispatch_group_enter(a3);
        v19 = swift_allocObject();
        v19[2] = a3;
        v19[3] = v13;
        v19[4] = v12;
        v19[5] = v14;
        v19[6] = a4;
        v19[7] = a5;
        v20 = v35;
        v19[8] = a6;
        v19[9] = v20;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_48AD88;
        *(v21 + 24) = v19;
        v22 = a3;

        sub_1C23C4(sub_48A704, v21, v31);
        sub_12E1C(v31, &unk_DF7968);
        sub_48ADF4(&v32);
LABEL_9:

        return;
      }

      goto LABEL_10;
    }

LABEL_6:

    return;
  }

  v15 = [objc_opt_self() standardUserDefaults];
  v23 = sub_48A12C(v13, v12);
  if (v7)
  {
    goto LABEL_6;
  }

  v24 = v23;

  if (v24[2])
  {
    v25 = *(a2 + 80);
    sub_15F84(a2 + 24, v34, &qword_DF4F58);
    v32 = v24;
    v33 = v25;

    dispatch_group_enter(a3);
    v26 = swift_allocObject();
    v26[2] = a3;
    v26[3] = v13;
    v26[4] = v12;
    v26[5] = v14 & 0x7FFFFFFFFFFFFFFFLL;
    v26[6] = a4;
    v26[7] = a5;
    v27 = v35;
    v26[8] = a6;
    v26[9] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_48A6EC;
    *(v28 + 24) = v26;
    v29 = a3;

    sub_4C1ADC(sub_48A704, v28, v31);
    sub_12E1C(v31, &unk_DF7968);
    sub_48A710(&v32);
    goto LABEL_9;
  }

LABEL_10:
}

uint64_t sub_47DB60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  type metadata accessor for BindingRequestResponseInvalidation();
  LOBYTE(v42) = 1;
  sub_35BCD8();
  v7 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0, 0, &v42, &_s9SearchKeyON);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v44 = &type metadata for UserDefaultsKeyValueTrigger;
  v45 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v14 = swift_allocObject();
  v42 = v14;
  v14[2] = v7;
  v14[3] = v9;
  v14[4] = v11;
  v14[5] = v13;
  v15 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v42);
  v16 = sub_485F14(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation);
  CompoundRequestResponseInvalidation.append(_:)(v15, v16);

  v17 = objc_opt_self();
  v18 = MPMediaLibraryDidChangeNotification;
  v19 = [v17 deviceMediaLibrary];
  UIScreen.Dimensions.size.getter(v20);
  v44 = &type metadata for NotificationTrigger;
  v45 = &protocol witness table for NotificationTrigger;
  v42 = v21;
  v43 = v22;
  v23 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v42);
  CompoundRequestResponseInvalidation.append(_:)(v23, v16);

  v24 = MPRestrictionsMonitorAllowsMusicVideosDidChangeNotification;
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 sharedRestrictionsMonitor];
  UIScreen.Dimensions.size.getter(v28);
  v44 = &type metadata for NotificationTrigger;
  v45 = &protocol witness table for NotificationTrigger;
  v42 = v29;
  v43 = v30;
  v31 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v42);
  CompoundRequestResponseInvalidation.append(_:)(v31, v16);

  swift_beginAccess();
  v41 = *(a2 + 16);
  swift_bridgeObjectRetain_n();
  sub_483D2C(&v41);

  v32 = v41[2];
  v33 = v32 >= 0x14;
  v34 = v32 - 20;
  if (v33)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = sub_4850DC(v35, v41);
  swift_beginAccess();
  v37 = *(a3 + 16);
  v38 = sub_485F14(&qword_DF4FE8, type metadata accessor for CompoundRequestResponseInvalidation);

  a4(v36, v37, 0, a1, v38);
}

uint64_t sub_47DE80()
{
  v0 = qword_E09260;

  return v0;
}

uint64_t sub_47DEB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_47953C(sub_1D2A44, v6, a3);
}

Swift::Int sub_47DF54()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_47DFC8()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_47E01C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CF1A18;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_47E090(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000018;
  }

  if (v2)
  {
    v4 = "ary";
  }

  else
  {
    v4 = "lastSelectedSearchSource";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (*a2)
  {
    v7 = "lastSelectedSearchSource";
  }

  else
  {
    v7 = "ary";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_ABB3C0();
  }

  return v9 & 1;
}

Swift::Int sub_47E13C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_47E1BC()
{
  sub_AB93F0();
}

Swift::Int sub_47E228()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_47E2B0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (*v1)
  {
    v3 = "lastSelectedSearchSource";
  }

  else
  {
    v3 = "ary";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_47E2F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v5 = a1[1];

  result = sub_48C0F0(v6, v5);
  if (result == 2)
  {
    *a2 = xmmword_B10830;
  }

  else
  {
    sub_AB2B00();
    swift_allocObject();
    sub_AB2AF0();
    sub_483B90();
    v8 = sub_AB2AE0();
    v10 = v9;

    if (!v3)
    {
      *a2 = v8;
      *(a2 + 8) = v10;
    }
  }

  return result;
}

uint64_t (*NSUserDefaults.lastSelectedSearchSource.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = NSUserDefaults.lastSelectedSearchSource.getter();
  return sub_47E40C;
}

uint64_t sub_47E434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Search.Recents.Item();
  v71 = sub_ABA9C0();
  v70 = *(v71 - 8);
  v8 = __chkstk_darwin(v71);
  v10 = &v68 - v9;
  v86 = v7;
  v11 = *(v7 - 8);
  v12 = __chkstk_darwin(v8);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v68 - v16;
  v18 = __chkstk_darwin(v15);
  v85 = &v68 - v19;
  __chkstk_darwin(v18);
  v21 = &v68 - v20;
  v22 = v87;
  result = sub_47CEB8(a2, a3, a4);
  if (v22)
  {
    return result;
  }

  v81 = v21;
  v78 = v14;
  v79 = v17;
  v72 = v10;
  v87 = 0;
  v69 = a2;
  v76 = a3;
  v77 = a4;
  v92 = result;
  v24 = v82;
  v26 = v82 + 56;
  v25 = *(v82 + 56);
  v27 = 1 << *(v82 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v11;
  v80 = v11;
  v30 = v28 & v25;
  v31 = (v27 + 63) >> 6;
  v73 = v29 + 16;
  v83 = (v29 + 32);
  v84 = (v29 + 8);

  v32 = 0;
  v33 = v85;
  v34 = v86;
  v74 = v31;
  for (i = v26; ; v26 = i)
  {
    v35 = v81;
    if (!v30)
    {
      break;
    }

    v36 = v32;
    v37 = v80;
LABEL_13:
    v38 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    (*(v37 + 16))(v81, *(v24 + 48) + *(v37 + 72) * (v38 | (v36 << 6)), v34);
    v39 = (*(v37 + 32))(v33, v35, v34);
    v88 = v92;
    __chkstk_darwin(v39);
    v40 = v77;
    *(&v68 - 4) = v76;
    *(&v68 - 3) = v40;
    *(&v68 - 2) = v33;

    swift_getWitnessTable();
    sub_AB9BF0();
    swift_getWitnessTable();
    v41 = v87;
    sub_AB9CC0();
    v87 = v41;

    v42 = v91;
    if (v91 == 255)
    {
      v33 = v85;
      v34 = v86;
      result = (*v84)(v85, v86);
      v32 = v36;
    }

    else
    {
      v43 = v89;
      v44 = v90;
      v45 = v79;
      sub_AB9BB0();
      v46 = *v84;
      v47 = v45;
      v24 = v82;
      v48 = v86;
      (*v84)(v47, v86);
      sub_F01A0(v43, v44, v42);
      v49 = v85;
      result = v46(v85, v48);
      v32 = v36;
      v34 = v48;
      v33 = v49;
    }

    v31 = v74;
  }

  v37 = v80;
  while (1)
  {
    v36 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return result;
    }

    if (v36 >= v31)
    {
      break;
    }

    v30 = *(v26 + 8 * v36);
    ++v32;
    if (v30)
    {
      goto LABEL_13;
    }
  }

  v89 = v24;

  WitnessTable = swift_getWitnessTable();
  v51 = sub_AB9BF0();
  swift_getWitnessTable();
  sub_AB9BE0();
  v52 = v92;
  if (sub_AB9B90() < 21)
  {
    v65 = v76;
    v66 = v77;
    v67 = v69;
LABEL_25:
    sub_47ED9C(v52, v67, v65, v66);
  }

  v88 = v52;
  swift_getWitnessTable();
  v89 = sub_AB96A0();
  v52 = v92;
  if (sub_AB9B90() < 21)
  {
LABEL_24:

    v65 = v76;
    v66 = v77;
    v67 = v69;
    goto LABEL_25;
  }

  v82 = v51;
  v85 = (v37 + 48);
  v81 = sub_AB9870();
  while (1)
  {
    v88 = v89;

    swift_getWitnessTable();
    v53 = v72;
    sub_AB9CF0();
    if ((*v85)(v53, 1, v34) == 1)
    {

      (*(v70 + 8))(v53, v71);
      goto LABEL_24;
    }

    v54 = v78;
    (*v83)(v78, v53, v34);

    v55 = sub_AB9B50();
    if (v57 == -1)
    {
      break;
    }

    v58 = v55;
    v59 = v56;
    v60 = v57;
    swift_getWitnessTable();
    v61 = WitnessTable;
    v62 = v79;
    sub_AB9DA0();
    v63 = *v84;
    (*v84)(v62, v34);
    sub_AB9BB0();
    v64 = v62;
    WitnessTable = v61;
    v63(v64, v34);
    v63(v78, v34);
    sub_F01A0(v58, v59, v60);
    v52 = v92;
    if (sub_AB9B90() <= 20)
    {
      goto LABEL_24;
    }
  }

  (*v84)(v54, v34);
}

id sub_47EC80(id *a1, void *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Search.Recents.Item();
  if (sub_AB91C0())
  {
    return [*a1 intersectsSet:*a2];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_47ED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_AB2B00();
  swift_allocObject();
  sub_AB2AF0();
  *&v19 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Search.Recents.Item();
  swift_getWitnessTable();
  sub_AB9BF0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_AB2AE0();
  v10 = v9;

  if (!v4)
  {
    LOBYTE(v18) = 1;
    sub_35BCD8();
    sub_36A48();
    NSUserDefaults.subscript.getter(&v19);
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8);
      if (swift_dynamicCast())
      {
        v12 = v18;
LABEL_7:
        v13 = (*(*(a4 + 8) + 16))(a3);
        v15 = v14;
        sub_90090(v8, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v19 = v12;
        sub_94300(v8, v10, v13, v15, isUniquelyReferenced_nonNull_native);

        v17 = v19;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8);
        *&v19 = v17;
        LOBYTE(v18) = 1;
        NSUserDefaults.subscript.setter(&v19, &v18, &_s9SearchKeyON);
        return sub_466B8(v8, v10);
      }
    }

    else
    {
      sub_12E1C(&v19, &unk_DE8E40);
    }

    v12 = sub_98EDC(_swiftEmptyArrayStorage);
    goto LABEL_7;
  }

  return result;
}

id sub_47F0B8()
{
  result = sub_47F0D8();
  qword_E719D0 = result;
  return result;
}

id sub_47F0D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AFFB00;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  if (qword_DE6CF0 != -1)
  {
    swift_once();
  }

  v2 = qword_E719E0;
  *(inited + 48) = qword_E719E0;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v3;
  v4 = qword_DE6CE8;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_E719D8;
  *(inited + 72) = qword_E719D8;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v7;
  v8 = qword_DE6D10;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_E71A00;
  *(inited + 96) = qword_E71A00;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v11;
  v12 = qword_DE6D00;
  v13 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_E719F0;
  *(inited + 120) = qword_E719F0;
  *(inited + 128) = sub_AB92A0();
  *(inited + 136) = v15;
  v16 = qword_DE6D18;
  v17 = v14;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_E71A08;
  *(inited + 144) = qword_E71A08;
  *(inited + 152) = sub_AB92A0();
  *(inited + 160) = v19;
  v20 = qword_DE6D20;
  v21 = v18;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_E71A10;
  *(inited + 168) = qword_E71A10;
  *(inited + 176) = sub_AB92A0();
  *(inited + 184) = v23;
  v24 = qword_DE6D28;
  v25 = v22;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = qword_E71A18;
  *(inited + 192) = qword_E71A18;
  v27 = v26;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v28 = objc_allocWithZone(MPPropertySet);
  sub_13C80(0, &qword_DEA550);
  isa = sub_AB8FD0().super.isa;

  v30 = [v28 initWithProperties:0 relationships:isa];

  return v30;
}

id sub_47F438()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  if (qword_DE6D08 != -1)
  {
    swift_once();
  }

  v2 = qword_E719F8;
  *(inited + 48) = qword_E719F8;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v3;
  v4 = qword_DE6D38;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_E71A28;
  *(inited + 72) = qword_E71A28;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v7;
  v8 = qword_DE6D30;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_E71A20;
  *(inited + 96) = qword_E71A20;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v11;
  v12 = qword_DE6D40;
  v13 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_E71A30;
  *(inited + 120) = qword_E71A30;
  v15 = v14;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MPPropertySet);
  sub_13C80(0, &qword_DEA550);
  isa = sub_AB8FD0().super.isa;

  v18 = [v16 initWithProperties:0 relationships:isa];

  if (qword_DE6CE0 != -1)
  {
    swift_once();
  }

  v19 = [v18 propertySetByCombiningWithPropertySet:qword_E719D0];

  return v19;
}

id sub_47F6EC()
{
  result = sub_47F70C();
  qword_E719D8 = result;
  return result;
}

id sub_47F70C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85E0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_AB92A0();
  *(v0 + 168) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF4EC0;
  *(v12 + 32) = sub_AB92A0();
  *(v12 + 40) = v13;
  isa = sub_AB9740().super.isa;
  v15 = objc_opt_self();
  v16 = [v15 propertySetWithProperties:isa];

  *(inited + 48) = v16;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AF4EC0;
  *(v18 + 32) = sub_AB92A0();
  *(v18 + 40) = v19;
  v20 = sub_AB9740().super.isa;
  v21 = [v15 propertySetWithProperties:v20];

  *(inited + 72) = v21;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MPPropertySet);
  v23 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v24 = sub_AB8FD0().super.isa;

  v25 = [v22 initWithProperties:v23 relationships:v24];

  sub_13C80(0, &qword_DE8E90);
  v26 = sub_2BAFF8();
  v27 = [v25 propertySetByCombiningWithPropertySet:v26];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v30 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v31 = [v29 propertySetByCombiningWithPropertySet:v30];

  v32 = [v27 propertySetByCombiningWithPropertySet:v31];
  v33 = sub_10F414();
  v34 = [v32 propertySetByCombiningWithPropertySet:v33];

  return v34;
}

id sub_47FB58()
{
  result = sub_47FB78();
  qword_E719E0 = result;
  return result;
}

id sub_47FB78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = [objc_opt_self() propertySetWithProperties:isa];

  sub_13C80(0, &qword_DE8E78);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v9 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v10 = [v8 propertySetByCombiningWithPropertySet:v9];

  v11 = [v6 propertySetByCombiningWithPropertySet:v10];
  v12 = sub_10F414();
  v13 = [v11 propertySetByCombiningWithPropertySet:v12];

  return v13;
}

id sub_47FD44()
{
  result = sub_47FD64();
  qword_E719E8 = result;
  return result;
}

id sub_47FD64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  isa = sub_AB9740().super.isa;
  v3 = [objc_opt_self() propertySetWithProperties:isa];

  sub_13C80(0, &qword_E09A48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v6 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v7 = [v5 propertySetByCombiningWithPropertySet:v6];

  v8 = [v3 propertySetByCombiningWithPropertySet:v7];
  v9 = sub_10F414();
  v10 = [v8 propertySetByCombiningWithPropertySet:v9];

  return v10;
}

id sub_47FEF4()
{
  result = sub_47FF14();
  qword_E719F0 = result;
  return result;
}

id sub_47FF14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B10840;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_AB92A0();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_AB92A0();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_AB92A0();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_AB92A0();
  *(v0 + 216) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85F0;
  *(v15 + 32) = sub_AB92A0();
  *(v15 + 40) = v16;
  *(v15 + 48) = sub_AB92A0();
  *(v15 + 56) = v17;
  isa = sub_AB9740().super.isa;
  v19 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v19;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v20 = objc_allocWithZone(MPPropertySet);
  v21 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v22 = sub_AB8FD0().super.isa;

  v23 = [v20 initWithProperties:v21 relationships:v22];

  sub_13C80(0, &unk_DE8EA0);
  v24 = sub_2BAFF8();
  v25 = [v23 propertySetByCombiningWithPropertySet:v24];

  v26 = sub_10F414();
  v27 = [v25 propertySetByCombiningWithPropertySet:v26];

  return v27;
}

id sub_480284()
{
  result = sub_4802A4();
  qword_E719F8 = result;
  return result;
}

id sub_4802A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DB0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  isa = sub_AB9740().super.isa;
  v10 = [objc_opt_self() propertySetWithProperties:isa];

  sub_13C80(0, &unk_E087D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v13 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v14 = [v12 propertySetByCombiningWithPropertySet:v13];

  v15 = [v10 propertySetByCombiningWithPropertySet:v14];
  v16 = sub_10F414();
  v17 = [v15 propertySetByCombiningWithPropertySet:v16];

  return v17;
}

id sub_4804C0()
{
  result = sub_4804E0();
  qword_E71A00 = result;
  return result;
}

id sub_4804E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DA0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  isa = sub_AB9740().super.isa;
  v12 = objc_opt_self();
  v13 = [v12 propertySetWithProperties:isa];

  *(inited + 48) = v13;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85F0;
  *(v15 + 32) = sub_AB92A0();
  *(v15 + 40) = v16;
  *(v15 + 48) = sub_AB92A0();
  *(v15 + 56) = v17;
  v18 = sub_AB9740().super.isa;
  v19 = [v12 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MPPropertySet);
  v21 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v22 = sub_AB8FD0().super.isa;

  v23 = [v20 initWithProperties:v21 relationships:v22];

  sub_13C80(0, &unk_DE8EB0);
  v24 = sub_2BAFF8();
  v25 = [v23 propertySetByCombiningWithPropertySet:v24];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v28 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v29 = [v27 propertySetByCombiningWithPropertySet:v28];

  v30 = [v25 propertySetByCombiningWithPropertySet:v29];
  v31 = sub_10F414();
  v32 = [v30 propertySetByCombiningWithPropertySet:v31];

  return v32;
}

id sub_480904()
{
  result = sub_480924();
  qword_E71A08 = result;
  return result;
}

id sub_480924()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8820;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  isa = sub_AB9740().super.isa;
  v5 = [objc_opt_self() propertySetWithProperties:isa];

  sub_13C80(0, &unk_DE8EC0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v8 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v9 = [v7 propertySetByCombiningWithPropertySet:v8];

  v10 = [v5 propertySetByCombiningWithPropertySet:v9];
  v11 = sub_10F414();
  v12 = [v10 propertySetByCombiningWithPropertySet:v11];

  return v12;
}

id sub_480ADC()
{
  result = sub_480AFC();
  qword_E71A10 = result;
  return result;
}

id sub_480AFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8600;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF85F0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_AB92A0();
  *(v8 + 56) = v10;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 32) = sub_AB92A0();
  *(v11 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF4EC0;
  *(v13 + 32) = sub_AB92A0();
  *(v13 + 40) = v14;
  isa = sub_AB9740().super.isa;
  v16 = objc_opt_self();
  v17 = [v16 propertySetWithProperties:isa];

  *(v11 + 48) = v17;
  sub_96EA4(v11);
  swift_setDeallocating();
  sub_12E1C(v11 + 32, &unk_DE8E80);
  v18 = objc_allocWithZone(MPPropertySet);
  v19 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v20 = sub_AB8FD0().super.isa;

  v21 = [v18 initWithProperties:v19 relationships:v20];

  *(inited + 48) = v21;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_AF4EC0;
  *(v23 + 32) = sub_AB92A0();
  *(v23 + 40) = v24;
  v25 = sub_AB9740().super.isa;
  v26 = [v16 propertySetWithProperties:v25];

  *(inited + 72) = v26;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v27 = objc_allocWithZone(MPPropertySet);
  v28 = sub_AB9740().super.isa;

  v29 = sub_AB8FD0().super.isa;

  v30 = [v27 initWithProperties:v28 relationships:v29];

  sub_13C80(0, &unk_DE9C00);
  v31 = sub_2BAFF8();
  v32 = [v30 propertySetByCombiningWithPropertySet:v31];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v35 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v36 = [v34 propertySetByCombiningWithPropertySet:v35];

  v37 = [v32 propertySetByCombiningWithPropertySet:v36];
  v38 = sub_10F414();
  v39 = [v37 propertySetByCombiningWithPropertySet:v38];

  v40 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
  v41 = [v39 propertySetByCombiningWithPropertySet:v40];

  return v41;
}

id sub_481068()
{
  result = sub_481088();
  qword_E71A18 = result;
  return result;
}