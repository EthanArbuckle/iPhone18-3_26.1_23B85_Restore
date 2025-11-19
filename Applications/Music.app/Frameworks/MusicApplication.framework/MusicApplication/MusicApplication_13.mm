uint64_t sub_122184()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController])
  {
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v5 = sub_AB9320();
    v7 = v6;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v8 = v0;
    v4 = sub_4309D4(v5, v7);

    *&v0[v3] = v4;
  }

  return v4;
}

void sub_122318(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  if ([v2 isViewLoaded] && v2[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_shouldPersistArtistSelection] == 1)
  {
    v41 = a1;
    v20 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
    swift_beginAccess();
    sub_15F84(&v2[v20], v15, &unk_DF0CC0);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_12E1C(v15, &unk_DF0CC0);
      return;
    }

    sub_36B0C(v15, v19, &qword_DF09B8);
    v21 = *&v2[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource];
    if (!v21)
    {
      goto LABEL_21;
    }

    v22 = v21;
    sub_AB5260();

    v23 = (*(v8 + 48))(v6, 1, v7);
    v24 = v41;
    if (v23 == 1)
    {
      sub_12E1C(v19, &qword_DF09B8);
      sub_12E1C(v6, &unk_DE8E20);
      return;
    }

    (*(v8 + 32))(v45, v6, v7);
    v25 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView;
    v26 = *&v2[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView];
    if (!v26)
    {
      goto LABEL_22;
    }

    v27 = v26;
    v28 = [v27 indexPathsForSelectedItems];
    if (v28)
    {
      v40 = v25;
      v29 = v28;
      v30 = sub_AB9760();

      v31 = 0;
      v32 = *(v30 + 16);
      v42 = v8 + 16;
      v43 = v8 + 8;
      v44 = v32;
      while (1)
      {
        if (v44 == v31)
        {

          v25 = v40;
          goto LABEL_17;
        }

        if (v31 >= *(v30 + 16))
        {
          break;
        }

        (*(v8 + 16))(v11, v30 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v31++, v7);
        sub_124E50(&qword_DF7940, &type metadata accessor for IndexPath);
        v33 = sub_AB91C0();
        v34 = *(v8 + 8);
        v34(v11, v7);
        if (v33)
        {

          sub_12E1C(v19, &qword_DF09B8);
          v34(v45, v7);
          return;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

LABEL_17:
    v35 = *&v2[v25];
    if (!v35)
    {
      goto LABEL_23;
    }

    v36 = v35;
    v37 = v45;
    isa = sub_AB3770().super.isa;
    [v36 selectItemAtIndexPath:isa animated:v24 & 1 scrollPosition:0];
    sub_12E1C(v19, &qword_DF09B8);
    (*(v8 + 8))(v37, v7);
  }
}

void sub_1229A8()
{
  sub_122A64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_122A64()
{
  if (!qword_DF09B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF09B8);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DF09B0);
    }
  }
}

id sub_122CBC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Class sub_122D88(char *a1, uint64_t a2, void *a3)
{
  if (*(*&a1[qword_DF09E8] + 32) == 1)
  {
    v4 = a1;
    v5 = a3;
    if (sub_381260())
    {
    }
  }

  v6.super.isa = sub_AB9740().super.isa;

  return v6.super.isa;
}

void sub_122E38(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v5 = *(v3 + qword_DF09E8);
  if (*(v5 + 32) != 1)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = [v6 results];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  v11 = [v10 dataSource];
  if (([v11 respondsToSelector:"indexOfSectionForSectionIndexTitleAtIndex:"] & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v12 = [v11 indexOfSectionForSectionIndexTitleAtIndex:a2];

  swift_unknownObjectRelease();
  if ((v12 & 0x8000000000000000) != 0 || v12 == sub_AB2A10())
  {
    goto LABEL_12;
  }

  sub_AB37C0();
  v13 = 0;
LABEL_13:
  v14 = sub_AB3820();
  v15 = *(*(v14 - 8) + 56);

  v15(a3, v13, 1, v14);
}

Class sub_122FA8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  if (a4)
  {
    sub_AB92A0();
    a4 = v12;
  }

  v13 = a3;
  v14 = a1;
  sub_122E38(a4, a5, v11);

  v15 = sub_AB3820();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v11, 1, v15);
  v18 = 0;
  if (v17 != 1)
  {
    isa = sub_AB3770().super.isa;
    (*(v16 + 8))(v11, v15);
    v18 = isa;
  }

  return v18;
}

id sub_123130(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CB0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8);
  sub_125CC4();
  sub_AB5110();
  if (!a1)
  {
    goto LABEL_4;
  }

  v10 = a1;
  result = [v10 results];
  if (result)
  {
    v12 = result;
    v13 = sub_13C80(0, &qword_DE8E78);
    static NSDiffableDataSourceSnapshot<>.snapshot(from:)(v12, v13, v7);

    (*(v4 + 8))(v9, v3);
    (*(v4 + 32))(v9, v7, v3);
LABEL_4:
    v14 = *(v1 + qword_DF09E8);
    v15 = *(v14 + 24);
    *(v14 + 24) = 0;

    sub_380968();
    sub_AB5220();
    v16 = *(v14 + 24);
    *(v14 + 24) = a1;
    v17 = a1;

    sub_380968();
    return (*(v4 + 8))(v9, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1233A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultMetrics];
  [v5 scaledValueForValue:44.0];
  [v5 scaledValueForValue:44.0];

  Artwork.Size.init(_:)();
  *(a1 + 40) = v7;
  *(a1 + 48) = v6;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  v10 = Artwork.Content.init(catalog:background:)([a2 artworkCatalog], 0);
  v12 = v11;
  sub_1253F8(*a1, *(a1 + 8));
  *a1 = v10;
  *(a1 + 8) = v12;
  v13 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
  v15 = *v13;
  v14 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  v30 = v13[5];
  v31 = v13[4];
  v18 = type metadata accessor for Artwork(0);
  v19 = a1 + *(v18 + 32);
  v28 = *(v19 + 8);
  v29 = *v19;
  v20 = *(v19 + 24);
  v27 = *(v19 + 16);
  v21 = v16;
  v22 = v17;
  v23 = v15;
  v24 = v14;
  sub_2F1C8(v29, v28, v27, v20);
  *v19 = v15;
  *(v19 + 8) = v14;
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  *(v19 + 32) = v31;
  *(v19 + 40) = v30;
  v25 = Artwork.Decoration.round.unsafeMutableAddressor();
  sub_125438(v25, a1 + *(v18 + 28), type metadata accessor for Artwork.Decoration);
  sub_12E1C(a1 + 16, &unk_DF0CA0);

  return sub_125340(a3, a1 + 16);
}

id sub_123568()
{
  if (qword_DE6A70 != -1)
  {
    swift_once();
  }

  v0 = [objc_allocWithZone(UIImageView) initWithImage:qword_E71438];
  v1 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v1 scaledValueForValue:8.0];
  v3 = v2;

  v4 = [objc_opt_self() configurationWithPointSize:7 weight:v3];
  [v0 setPreferredSymbolConfiguration:v4];

  v5 = AccessibilityIdentifier.favoriteBadge.unsafeMutableAddressor();
  v6 = *v5;
  v7 = v5[1];
  sub_13C80(0, &qword_DF0C80);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v6, v7);
  return v0;
}

char *sub_1236D0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = _s17ListConfigurationVMa(0);
  __chkstk_darwin(v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_favoriteIndicator;
  *&v1[v7] = sub_123568();
  v8 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_nameLabel;
  *&v1[v8] = [objc_allocWithZone(UILabel) init];
  v9 = type metadata accessor for Artwork(0);
  sub_124E50(&unk_DF0C70, type metadata accessor for Artwork);
  v10 = MusicUIContentConfiguration.makeContentView()(v9);
  v11 = &v1[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_artworkView];
  *v11 = v10;
  v11[1] = v12;
  sub_1252D8(a1, &v1[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration], _s17ListConfigurationVMa);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration;
  swift_beginAccess();
  sub_1252D8(v13 + v14, v6, _s17ListConfigurationVMa);
  v15 = v13;
  sub_123968(v6);
  sub_124F38(v6);
  [v15 addSubview:*&v15[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_favoriteIndicator]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_artworkView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_nameLabel]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF37F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF4EC0;
  *(v16 + 32) = sub_AB5330();
  *(v16 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_ABA6F0();
  sub_124F38(a1);

  swift_unknownObjectRelease();

  return v15;
}

id sub_123968(id *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_artworkView];
  swift_getObjectType();
  v5 = _s17ListConfigurationVMa(0);
  v6 = v5[7];
  v13[3] = type metadata accessor for Artwork(0);
  v13[4] = sub_124E50(&unk_DF0C60, type metadata accessor for Artwork);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  sub_1252D8(a1 + v6, boxed_opaque_existential_0, type metadata accessor for Artwork);
  sub_AB4C70();
  [v4 setHidden:*(a1 + v5[9])];
  v8 = *&v2[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_nameLabel];
  v9 = sub_AB4FD0();
  [v8 setFont:v9];

  [v8 setLineBreakMode:sub_AB4F80()];
  [v8 setNumberOfLines:sub_AB4FA0()];
  v10 = sub_AB4FF0();
  [v8 setTextColor:v10];

  if (*(a1 + v5[10] + 8))
  {
    v11 = sub_AB9260();
  }

  else
  {
    v11 = 0;
  }

  [v8 setText:v11];

  [*&v2[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_favoriteIndicator] setHidden:{objc_msgSend(*a1, "isFavorite") ^ 1}];
  return [v2 setNeedsLayout];
}

uint64_t sub_123C0C(uint64_t a1)
{
  v3 = _s17ListConfigurationVMa(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration;
  swift_beginAccess();
  sub_1252D8(v1 + v9, v8, _s17ListConfigurationVMa);
  swift_beginAccess();
  sub_125438(a1, v1 + v9, _s17ListConfigurationVMa);
  swift_endAccess();
  sub_1252D8(v1 + v9, v6, _s17ListConfigurationVMa);
  v10 = sub_12518C(v6, v8);
  sub_124F38(v6);
  if (v10)
  {
    v11 = a1;
  }

  else
  {
    sub_1252D8(v1 + v9, v6, _s17ListConfigurationVMa);
    sub_123968(v6);
    sub_124F38(a1);
    v11 = v6;
  }

  sub_124F38(v11);
  return sub_124F38(v8);
}

id sub_123D98()
{
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  [v0 bounds];
  [v0 directionalLayoutMargins];
  v1 = &v0[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration];
  swift_beginAccess();
  [v0 effectiveUserInterfaceLayoutDirection];
  sub_ABA4B0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_favoriteIndicator];
  [v10 sizeThatFits:{0.0, 0.0}];
  v12 = v11;
  v14 = v13;
  v15 = [v0 traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  sub_ABA320();
  v29.origin.x = v3;
  v29.origin.y = v5;
  v29.size.width = v12;
  v29.size.height = v14;
  CGRectGetWidth(v29);
  v17 = *&v0[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_artworkView];
  [v17 sizeThatFits:{v7, v9}];
  v19 = v18;
  v21 = v20;
  v22 = _s17ListConfigurationVMa(0);
  if ((v1[*(v22 + 36)] & 1) == 0)
  {
    v30.origin.x = v3;
    v30.origin.y = v5;
    v30.size.width = v19;
    v30.size.height = v21;
    v7 = v7 - CGRectGetWidth(v30);
  }

  v23 = *&v0[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_nameLabel];
  [v23 sizeThatFits:{v7, v9}];
  if ((v1[*(v22 + 36)] & 1) == 0)
  {
    v31.origin.x = v3;
    v31.origin.y = v5;
    v31.size.width = v19;
    v31.size.height = v21;
    CGRectGetMaxX(v31);
  }

  sub_ABA460();
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  sub_ABA480();
  [v10 setFrame:?];
  sub_ABA460();
  sub_ABA480();
  [v17 setFrame:?];
  sub_ABA460();
  sub_ABA480();
  return [v23 setFrame:?];
}

double sub_124128()
{
  [v0 directionalLayoutMargins];
  v1 = &v0[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration];
  swift_beginAccess();
  [v0 effectiveUserInterfaceLayoutDirection];
  sub_AB9E50();
  sub_ABA530();
  v3 = v2;
  v5 = v4;
  v6 = _s17ListConfigurationVMa(0);
  v7 = 0.0;
  if ((v1[*(v6 + 36)] & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_artworkView] sizeThatFits:{v3, v5}];
  }

  [*&v0[OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_nameLabel] sizeThatFits:{v3 - v7 + *&v1[*(v6 + 32)], v5}];
  [v0 directionalLayoutMargins];
  sub_ABA3D0();
  return v3;
}

uint64_t sub_1243F4()
{
  result = _s17ListConfigurationVMa(319);
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

uint64_t sub_1244D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Artwork(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_AB5000();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_12460C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Artwork(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_AB5000();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_124730()
{
  sub_13C80(319, &qword_DE8E78);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NSDirectionalEdgeInsets(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Artwork(319);
      if (v2 <= 0x3F)
      {
        sub_81414();
        if (v3 <= 0x3F)
        {
          sub_AB5000();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_124860@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration;
  swift_beginAccess();
  return sub_1252D8(v1 + v3, a1, _s17ListConfigurationVMa);
}

void (*sub_1248D0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(_s17ListConfigurationVMa(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 32) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 32) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 40) = v6;
  v8 = OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_typedConfiguration;
  swift_beginAccess();
  sub_1252D8(v1 + v8, v7, _s17ListConfigurationVMa);
  return sub_1249DC;
}

void sub_1249DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1252D8(*(*a1 + 40), v3, _s17ListConfigurationVMa);
    sub_123C0C(v3);
    sub_124F38(v4);
  }

  else
  {
    sub_123C0C(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_124A70@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v3 = sub_124E50(&qword_DF0BB8, _s17ListConfigurationV4ViewCMa);

  return MusicUIContentView.configuration.getter(ObjectType, v3, a1);
}

uint64_t sub_124AF4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_124E50(&qword_DF0BB8, _s17ListConfigurationV4ViewCMa);

  return MusicUIContentView.configuration.setter(a1, ObjectType, v3);
}

void (*sub_124B78(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  ObjectType = swift_getObjectType();
  v4[11] = ObjectType;
  v6 = sub_124E50(&qword_DF0BB8, _s17ListConfigurationV4ViewCMa);
  v4[12] = v6;
  MusicUIContentView.configuration.getter(ObjectType, v6, v4);
  return sub_124C40;
}

void sub_124C40(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[11];
    v4 = v2[12];
    sub_E8BA0(*a1, (v2 + 5));
    MusicUIContentView.configuration.setter((v2 + 5), v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    MusicUIContentView.configuration.setter(*a1, v2[11], v2[12]);
  }

  free(v2);
}

uint64_t sub_124CC0()
{
  swift_getObjectType();

  return sub_AB4C80();
}

uint64_t sub_124D10(uint64_t a1)
{
  sub_124E50(&qword_DF0C10, _s17ListConfigurationVMa);

  return MusicUIContentConfiguration.makeContentView()(a1);
}

uint64_t sub_124DCC(uint64_t a1)
{
  *(a1 + 8) = sub_124E50(&qword_DF0BE8, _s17ListConfigurationVMa);
  result = sub_124E50(&qword_DF0BF0, _s17ListConfigurationVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_124E50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_124EE0(uint64_t a1)
{
  result = sub_124E50(&qword_DF0C58, _s17ListConfigurationV4ViewCMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_124F38(uint64_t a1)
{
  v2 = _s17ListConfigurationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_124F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v6 = sub_AB4D80();
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_ABA330();
  (*(v3 + 8))(v5, a2);
  return v6 & 1;
}

void sub_1250BC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCVE16MusicApplicationCSo13MPModelArtist17ListConfiguration4View_favoriteIndicator);
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:8.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  [v1 setPreferredSymbolConfiguration:v5];
}

uint64_t sub_12518C(float64x2_t *a1, float64x2_t *a2)
{
  sub_13C80(0, &qword_DFA720);
  if ((sub_ABA790() & 1) == 0)
  {
    return 0;
  }

  if ((static Artwork.Caching.__derived_struct_equals(_:_:)(&a1->f64[1], &a2->f64[1]) & 1) == 0)
  {
    return 0;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])))) & 1) == 0)
  {
    return 0;
  }

  v4 = _s17ListConfigurationVMa(0);
  if ((static Artwork.== infix(_:_:)(a1 + v4[7], a2 + v4[7]) & 1) == 0 || *(a1->f64 + v4[8]) != *(a2->f64 + v4[8]) || *(a1->f64 + v4[9]) != *(a2->f64 + v4[9]))
  {
    return 0;
  }

  v6 = v4[10];
  v7 = (a1->f64 + v6);
  v8 = *(&a1->f64[1] + v6);
  v9 = (a2->f64 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10 || (*v7 != *v9 || v8 != v10) && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = v4[11];

  return static UIListContentConfiguration.TextProperties.== infix(_:_:)(a1 + v11, a2 + v11);
}

uint64_t sub_1252D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1253F8(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_125438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1254A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController;
  sub_121E98(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0D28);
  swift_allocObject();
  *(v1 + v4) = RequestResponse.Controller.init(request:)(v6);
  v5 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *(v1 + v5) = swift_allocObject();
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_noContentStateController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_shouldPersistArtistSelection) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_125604(uint64_t a1)
{
  v50 = a1;
  v2 = sub_AB5180();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB4EB0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v45 - v10;
  v12 = sub_AB5290();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB5320();
  v46 = *(v16 - 8);
  v47 = v16;
  __chkstk_darwin(v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v12);
  sub_AB52C0();
  v19 = [v1 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 music_inheritedLayoutInsets];
  v22 = v21;
  v24 = v23;

  v25 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView];
  if (!v25)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = [v26 accessoryViewAtEdge:1];
  if (v27)
  {
    v28 = v27;
    [v27 frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
  }

  else
  {

    v30 = 0.0;
    v32 = 0.0;
    v34 = 0.0;
    v36 = 0.0;
  }

  v52.origin.x = v30;
  v52.origin.y = v32;
  v52.size.width = v34;
  v52.size.height = v36;
  Width = CGRectGetWidth(v52);
  v38 = [v1 traitCollection];
  sub_AB4E90();
  (*(v6 + 16))(v9, v11, v5);
  v39 = sub_AB4D80();
  v40 = *(v6 + 8);
  v40(v9, v5);
  v41 = [v39 preferredContentSizeCategory];

  LOBYTE(v39) = sub_ABA330();
  v40(v11, v5);

  if ((v39 & 1) == 0)
  {
    v42 = [objc_opt_self() defaultMetrics];
    [v42 scaledValueForValue:44.0];
    [v42 scaledValueForValue:44.0];
  }

  if (Width > v24)
  {
    v24 = Width;
  }

  v43 = sub_AB5270();
  sub_AB5160();
  v43(v51, 0);
  sub_AB5280();
  sub_AB5150();
  (*(v48 + 8))(v4, v49);
  v44 = sub_AB5270();
  sub_AB5140();
  v44(v51, 0);
  sub_AB52F0();
  sub_13C80(0, &qword_DF0D20);
  [sub_ABA400() setContentInsets:{0.0, v22, 0.0, v24}];
  (*(v46 + 8))(v18, v47);
}

char *sub_125BAC(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ArtistListViewController.DataSource(0));
  type metadata accessor for ModelResponseIndexBarController();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 100;
  swift_unknownObjectWeakInit();
  *(v3 + 56) = _swiftEmptyArrayStorage;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 16) = a1;
  *&v2[qword_DF09E8] = v3;
  v4 = a1;

  v5 = sub_AB5200();
  v6 = *&v5[qword_DF09E8];
  v7 = *(v6 + 40);
  *(v6 + 40) = 50;
  v8 = v5;

  if (v7 != 50)
  {
    sub_380968();
  }

  return v8;
}

unint64_t sub_125CC4()
{
  result = qword_DF0CB8;
  if (!qword_DF0CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF09B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF0CB8);
  }

  return result;
}

uint64_t sub_125D28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8);
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource);
  if (v12)
  {
    v13 = v12;
    sub_AB5230();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      v14 = &unk_DF0CC0;
      v15 = v6;
    }

    else
    {
      sub_36B0C(v6, v11, &qword_DF09B8);
      sub_15F84(v11, v4, &qword_DF09B8);
      (*(v8 + 56))(v4, 0, 1, v7);
      sub_1218CC(v4, 1, 1);
      sub_12E1C(v4, &unk_DF0CC0);
      v15 = v11;
      v14 = &qword_DF09B8;
    }

    return sub_12E1C(v15, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_125F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_125FD4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_126034()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CE8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1260C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CE8);

  return sub_120660(a1, a2, a3);
}

uint64_t sub_12615C()
{

  return swift_deallocObject();
}

uint64_t sub_1261A4()
{

  return swift_deallocObject();
}

uint64_t sub_126208(uint64_t a1, uint64_t a2)
{
  v4 = _s17ListConfigurationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*sub_1263EC(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_126474;
}

void sub_126474(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;
    swift_retain_n();
    sub_2E6210(v8);
  }

  free(v3);
}

id sub_12652C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerDetailTracklistSectionHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_126630(void *a1, double a2)
{
  v4 = sub_126814();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF7C50;
  *(inited + 32) = v4;
  *(inited + 40) = v6;

  sub_2F48A4(inited, a1, 0, 0);
  swift_setDeallocating();
  swift_arrayDestroy();

  return a2;
}

uint64_t sub_12676C(uint64_t a1)
{
  sub_126B0C(a1);
}

void (*sub_1267A4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1263EC(v2);
  return sub_A8F90;
}

uint64_t sub_126814()
{
  sub_89F60();
  v0 = sub_ABA550();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v24[0] = v1;
  *(&v24[0] + 1) = v4;
  v24[1] = xmmword_AF7C20;
  v25 = 0;
  v26 = 0;
  v27 = v0;
  v28 = 1;
  v29 = xmmword_AF7C40;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v24);
  v17 = v3;
  v16 = v4;
  v15 = v0;
  sub_2F118(v24, v37);

  v6 = sub_ABA560();
  if (qword_DE6C88 != -1)
  {
    v14 = v6;
    swift_once();
    v6 = v14;
  }

  v7 = qword_E718C8;
  v8 = v6;
  v9 = v7;
  v10 = [v2 clearColor];
  *&v18[0] = v7;
  *(&v18[0] + 1) = v10;
  v18[1] = xmmword_AF7C20;
  v19 = 0;
  v20 = 0;
  v21 = v8;
  v22 = 1;
  v23 = xmmword_AF7C40;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  *(v12 + 32) = v5;
  *(v12 + 40) = v11;
  sub_2F118(v18, v37);

  v30[0] = v7;
  v30[1] = v10;
  v31 = xmmword_AF7C20;
  v32 = 0;
  v33 = 0;
  v34 = v8;
  v35 = 1;
  v36 = xmmword_AF7C40;
  sub_2F174(v30);
  v37[0] = v1;
  v37[1] = v4;
  v38 = xmmword_AF7C20;
  v39 = 0;
  v40 = 0;
  v41 = v0;
  v42 = 1;
  v43 = xmmword_AF7C40;
  sub_2F174(v37);
  return v5;
}

uint64_t sub_126B0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;

  sub_2E6210(v6);
}

uint64_t sub_126BC8()
{
  v1 = &v0[OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_title];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_subtitle];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textDrawingCache] = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView;
  type metadata accessor for TextStackView();
  *&v0[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = &v0[OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents];
  *v4 = sub_126814();
  v4[1] = v5;
  v4[2] = v6;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ContainerDetailTracklistSectionHeaderView();
  result = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = result;
  v9 = OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView;
  v10 = *(result + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView);
  v11 = *(result + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents + 16);
  if (!(v11 >> 62))
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_11:
    v17 = v8;
LABEL_12:
    [v8 addSubview:*&v8[v9]];

    return v8;
  }

  result = sub_ABB060();
  v12 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = v8;
    v14 = v10;

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = sub_36003C(i, v11);
      }

      else
      {
        v16 = *(v11 + 8 * i + 32);
      }

      TextStackView.add(_:)(v16);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_126D80()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textDrawingCache) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView;
  type metadata accessor for TextStackView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents);
  *v4 = sub_126814();
  v4[1] = v5;
  v4[2] = v6;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_126E50(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v8 = *v4;
  *(v5 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v5 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  v9 = *(v8 + 312);
  v10 = *(v8 + 320);
  v11 = type metadata accessor for PrincipalImpressionTracker.History();
  swift_getTupleTypeMetadata2();
  v12 = sub_AB97C0();
  v13 = sub_131ADC(v12, &type metadata for String, v11, &protocol witness table for String);

  *(v5 + 104) = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for PrincipalImpressionTracker.TrackedItem();
  swift_getTupleTypeMetadata2();
  v16 = sub_AB97C0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = sub_131ADC(v16, AssociatedTypeWitness, v15, AssociatedConformanceWitness);

  *(v5 + 152) = 0;
  *(v5 + 112) = v17;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 160) = 0;
  *(v5 + 168) = 1;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0;
  *(v5 + 192) = 1;
  *(v5 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  v33 = a4;
  *(v5 + 81) = a4;
  sub_12E61C();
  swift_unknownObjectWeakAssign();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v9;
  v19[3] = v10;
  v19[4] = v18;
  v20 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  aBlock[4] = sub_132DDC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2DDCF4;
  aBlock[3] = &block_descriptor_41;
  v21 = _Block_copy(aBlock);

  v22 = a2;

  v23 = [v20 initWithScrollView:v22 changeHandler:v21];
  _Block_release(v21);

  v24 = *(v5 + 120);
  *(v5 + 120) = v23;

  v25 = swift_allocObject();
  swift_weakInit();
  v26 = UIApplicationDidBecomeActiveNotification;

  v27 = swift_allocObject();
  v27[2] = v9;
  v27[3] = v10;
  v27[4] = v25;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v5 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v26, 0, 1, 1, sub_132E00, v27);

  if (a3)
  {
    swift_allocObject();

    *(v5 + 128) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_132E0C, v5);
  }

  if (v33)
  {
    v28 = sub_AB97C0();
    if (sub_AB9860())
    {
      v29 = sub_486410(v28, AssociatedTypeWitness, AssociatedConformanceWitness);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();

      v29 = &_swiftEmptySetSingleton;
    }

    swift_beginAccess();
    *(v5 + 152) = v29;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_127348()
{
  v1 = *v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  if (qword_DE6D68 != -1)
  {
    result = swift_once();
  }

  if ((byte_E71A90 & 1) == 0 && *(v0 + 145) == 1)
  {
    result = sub_128838();
    if (result)
    {
      sub_AB3420();
      v10 = swift_allocObject();
      swift_weakInit();
      (*(v3 + 16))(v6, v9, v2);
      v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
      v12 = swift_allocObject();
      *(v12 + 2) = *(v1 + 312);
      *(v12 + 3) = *(v1 + 320);
      *(v12 + 4) = v10;
      (*(v3 + 32))(&v12[v11], v6, v2);

      sub_48C6A0(sub_132864, v12);
      (*(v3 + 8))(v9, v2);
    }
  }

  return result;
}

uint64_t sub_12758C()
{
  sub_176DC(v0 + 16);

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_127604()
{
  if (*(v0 + 56))
  {
    return *(v0 + 56);
  }

  result = v0;
  *(v0 + 56) = v0;
  return result;
}

void sub_127620(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_AB7CF0();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    v23[2] = v3[14];
    v12 = swift_allocObject();
    v13 = swift_weakInit();
    v14 = __chkstk_darwin(v13);
    v23[-4] = v12;
    v23[-3] = a1;
    v23[0] = a1;
    *&v23[-2] = a2;
    __chkstk_darwin(v14);
    v15 = *(v6 + 312);
    v16 = *(v6 + 320);
    v23[-4] = v15;
    v23[-3] = v16;
    v23[-2] = sub_13248C;
    v23[-1] = v17;
    swift_getAssociatedTypeWitness();
    type metadata accessor for PrincipalImpressionTracker.TrackedItem();
    swift_getAssociatedConformanceWitness();
    sub_AB9080();

    swift_getWitnessTable();
    sub_AB9680();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = UIScrollView.isScrolling.getter();

      if ((v20 & 1) == 0)
      {
        v22 = v3[6];
        __chkstk_darwin(v21);
        v23[-2] = v23[0];
        *&v23[-1] = a2;

        sub_2C1BF8(sub_1324B8, &v23[-4], v22);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_127998()
{
  if (qword_DE6D68 != -1)
  {
    swift_once();
  }

  if (byte_E71A90)
  {
    return 0;
  }

  else
  {
    return *(v0 + 145);
  }
}

uint64_t sub_1279F8(uint64_t result)
{
  *(v1 + 80) = result;
  if (result)
  {
    *(v1 + 144) = 1;
  }

  return result;
}

uint64_t sub_127A2C(void *a1, unint64_t a2, uint64_t a3, int a4, int a5)
{
  v40 = a4;
  v41 = a5;
  v38 = a1;
  v39 = a3;
  v44 = a2;
  v6 = *(*v5 + 320);
  v45 = *(*v5 + 312);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v42 = &v31 - v9;
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v43 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  sub_AB3420();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return (*(v11 + 8))(v15, v10);
  }

  (*(v6 + 24))(v47, v44, v45, v6);
  swift_unknownObjectRelease();
  v55 = v47[6];
  v56 = v47[7];
  v57[0] = v48[0];
  *(v57 + 9) = *(v48 + 9);
  v51 = v47[2];
  v52 = v47[3];
  v53 = v47[4];
  v54 = v47[5];
  v49 = v47[0];
  v50 = v47[1];
  if (sub_A996C(&v49) == 1)
  {
    return (*(v11 + 8))(v15, v10);
  }

  v64 = v55;
  v65 = v56;
  v66[0] = v57[0];
  *(v66 + 9) = *(v57 + 9);
  v60 = v51;
  v61 = v52;
  v62 = v53;
  v63 = v54;
  v58 = v49;
  v59 = v50;
  v36 = v5[11];
  v33 = swift_allocObject();
  swift_weakInit();
  v17 = AssociatedTypeWitness;
  (*(v7 + 16))(v42, v44, AssociatedTypeWitness);
  v18 = *(v11 + 16);
  v35 = v10;
  v18(v43, v15, v10);
  v19 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v20 + 175) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v11 + 80) + v34 + 10) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v45;
  *(v21 + 3) = v6;
  *(v21 + 4) = v33;
  (*(v7 + 32))(&v21[v19], v42, v17);
  v22 = v38;
  *&v21[v20] = v38;
  v23 = &v21[v32];
  v24 = v59;
  *v23 = v58;
  *(v23 + 1) = v24;
  v25 = v63;
  *(v23 + 4) = v62;
  *(v23 + 5) = v25;
  v26 = v61;
  *(v23 + 2) = v60;
  *(v23 + 3) = v26;
  *(v23 + 137) = *(v66 + 9);
  v27 = v66[0];
  *(v23 + 7) = v65;
  *(v23 + 8) = v27;
  *(v23 + 6) = v64;
  v28 = v35;
  v29 = &v21[v34];
  *v29 = v39;
  v29[8] = v40 & 1;
  v29[9] = v41;
  (*(v11 + 32))(&v21[v44], v43, v28);

  v30 = v22;
  sub_132C20(v47, &v46);
  sub_48C6A0(sub_132AE0, v21);
  sub_12E1C(v47, qword_DF1340);
  (*(v11 + 8))(v15, v28);
}

uint64_t sub_127EB8()
{
  swift_beginAccess();
  type metadata accessor for PrincipalImpressionTracker.History();
  sub_AB9080();
  sub_AB9070(0);
  swift_endAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (!v2)
  {
  }

  v4 = 0;
  v5 = (v1 + 40);
  while (v4 < *(v1 + 16))
  {
    ++v4;
    v6 = *v5;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 104);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);
    result = swift_unknownObjectRelease();
    v5 += 2;
    if (v2 == v4)
    {
    }
  }

  __break(1u);
  return result;
}

void *sub_127FFC(uint64_t a1)
{
  v17[0] = a1;
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_ABB130();
  v5 = type metadata accessor for PrincipalImpressionTracker();
  WitnessTable = swift_getWitnessTable();
  sub_23BE0C();
  v7 = sub_21CD14(1, v4, v20, v5, WitnessTable);
  (*(v2 + 8))(v4, v1);
  sub_12E1C(v20, &qword_DF2BD0);
  swift_beginAccess();
  type metadata accessor for PrincipalImpressionTracker.TrackedItem();

  sub_AB90A0();
  v8 = v19;

  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 88);
  if (*(v8 + 144))
  {
    v10 = *(v8 + 16);
  }

  else
  {
    v10 = 0;
  }

  if (*(v8 + 144))
  {
    v11 = *(v8 + 24);
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = (v9 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v10 = *v12;
    v11 = v12[1];
LABEL_11:

    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v19 = *(v8 + 56);
  v10 = sub_ABB330();
  v11 = v16;
LABEL_12:
  swift_beginAccess();
  v17[1] = v10;
  v17[2] = v11;
  type metadata accessor for PrincipalImpressionTracker.History();

  sub_AB90A0();

  if (v18)
  {
    v13 = *(v18 + 176);

    if (v7)
    {

      v14 = sub_4A365C(v13, v7);

      return v14;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_128384(uint64_t a1)
{
  v3 = *(*v1 + 320);
  v28 = *(*v1 + 312);
  v29 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v25 - v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_ABA9C0();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = v25 - v12;
  if (v1[81] == 1)
  {
    v14 = sub_1287E8();
    v16 = *v15;
    v27 = a1;
    if (v16)
    {
      v25[1] = *(TupleTypeMetadata2 + 48);
      v26 = v14;
      (*(v5 + 16))(v7, a1, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      sub_AB9BF0();
      v17 = sub_AB9BA0();
      (v26)(v34, 0);
      v18 = 0;
      *v13 = v17 & 1;
    }

    else
    {
      (v14)(v34, 0);
      v18 = 1;
    }

    (*(*(TupleTypeMetadata2 - 8) + 56))(v13, v18, 1, TupleTypeMetadata2);
    (*(v10 + 8))(v13, v9);
    swift_beginAccess();
    type metadata accessor for PrincipalImpressionTracker.TrackedItem();
    swift_getAssociatedConformanceWitness();

    sub_AB90A0();
    v19 = v33;

    if (v19)
    {
      v20 = *(v19 + 88);
      if (*(v19 + 144))
      {
        v21 = *(v19 + 16);
      }

      else
      {
        v21 = 0;
      }

      if (*(v19 + 144))
      {
        v22 = *(v19 + 24);
      }

      else
      {
        v22 = 0;
      }

      if (v20)
      {
        v23 = (v20 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
        v21 = *v23;
        v22 = v23[1];
      }

      else if (!v22)
      {
        v33 = *(v19 + 56);
        v21 = sub_ABB330();
        v22 = v24;
LABEL_16:
        swift_beginAccess();
        v30 = v21;
        v31 = v22;
        type metadata accessor for PrincipalImpressionTracker.History();

        sub_AB90A0();

        if (v32)
        {
          *(v32 + 193) = 1;
        }

        else
        {
        }
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_128838()
{
  v0 = sub_AB7CC0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v3 = sub_ABA150();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = sub_AB7CF0();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 applicationState];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = UIScrollView.isScrolling.getter();

        if ((v11 & 1) == 0)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            objc_opt_self();
            v12 = swift_dynamicCastObjCClass();
            if (v12 && (v13 = v12, (v14 = sub_4D39CC()) != 0))
            {
              v15 = v14;
              v16 = sub_4D3DD0();
              v17 = UIScrollView.isScrolling.getter();

              if ((v17 & 1) == 0)
              {
                v18 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_visibleViewControllers;
                swift_beginAccess();
                v19 = *&v15[v18];

                v8 = sub_472FF8(v13, v19);
                swift_unknownObjectRelease();

                return v8 & 1;
              }

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }
      }

      v8 = 1;
    }

    return v8 & 1;
  }

  __break(1u);
  return result;
}

void sub_128A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_AB7CF0();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (qword_DE6D68 != -1)
  {
LABEL_45:
    swift_once();
  }

  if (byte_E71A90 & 1) == 0 && *(v4 + 145) == 1 && (sub_128838())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = swift_unknownObjectWeakLoadStrong();
      if (!v14)
      {

        return;
      }

      sub_1292D8();
      v15 = v13;
      v16 = sub_1294F4(a1, v13);
      v30[0] = v15;

      v17 = *(a1 + 88);
      if (*(a1 + 144))
      {
        v18 = *(a1 + 16);
      }

      else
      {
        v18 = 0;
      }

      if (*(a1 + 144))
      {
        v19 = *(a1 + 24);
      }

      else
      {
        v19 = 0;
      }

      if (v17)
      {
        v20 = v17 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier;
        v18 = *v20;
        v19 = *(v20 + 8);
      }

      else if (!v19)
      {
        v32 = *(a1 + 56);
        v18 = sub_ABB330();
        v19 = v29;
LABEL_24:
        swift_beginAccess();
        v30[1] = v18;
        v30[2] = v19;
        type metadata accessor for PrincipalImpressionTracker.History();

        sub_AB90A0();

        v25 = v31;
        if (v31)
        {

          v26 = sub_12E9E8();

          if (v16)
          {
            if (v26 == 2 || (v26 & 1) != 0)
            {
LABEL_30:
              v27 = 0;
LABEL_31:
              sub_128FB0(a1);
              sub_12EAAC(v27, a3);
            }
          }

          else if (v26 != 2 && (v26 & 1) == 0)
          {
            v27 = 1;
            goto LABEL_31;
          }

          swift_beginAccess();
          if (*(v4 + 152))
          {
            if (v25)
            {
              swift_getAssociatedTypeWitness();
              swift_getAssociatedConformanceWitness();

              v28 = sub_AB9BD0();

              *(v25 + 193) = v28 & 1;

LABEL_40:

              return;
            }

LABEL_38:

            return;
          }

LABEL_39:

          goto LABEL_40;
        }

        if ((v16 & 1) == 0)
        {
          swift_beginAccess();
          if (*(v4 + 152))
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        goto LABEL_30;
      }

      goto LABEL_24;
    }

    if (qword_DE6888 != -1)
    {
      swift_once();
    }

    v21 = sub_AB4BC0();
    __swift_project_value_buffer(v21, qword_E70EB0);
    v22 = sub_AB4BA0();
    v23 = sub_AB9F10();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Paused tracking.  Container view was deallocated", v24, 2u);
    }
  }
}

uint64_t sub_128FB0(uint64_t a1)
{
  v2 = v1;
  v4 = (a1 + 16);
  v5 = *(a1 + 88);
  if (*(a1 + 144))
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 144))
  {
    v7 = *(a1 + 24);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = (v5 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v6 = *v8;
    v7 = v8[1];
LABEL_10:

    goto LABEL_11;
  }

  if (v7)
  {
    goto LABEL_10;
  }

  *&v21[0] = *(a1 + 56);
  v6 = sub_ABB330();
  v7 = v17;
LABEL_11:
  swift_beginAccess();
  *&v21[0] = v6;
  *(&v21[0] + 1) = v7;
  type metadata accessor for PrincipalImpressionTracker.History();

  sub_AB90A0();

  v9 = v20;
  if (!v20)
  {
    v10 = v4[7];
    v26 = v4[6];
    v27 = v10;
    v28[0] = v4[8];
    *(v28 + 9) = *(v4 + 137);
    v11 = v4[3];
    v22 = v4[2];
    v23 = v11;
    v12 = v4[5];
    v24 = v4[4];
    v25 = v12;
    v13 = v4[1];
    v21[0] = *v4;
    v21[1] = v13;
    if (*(a1 + 184))
    {
      sub_465F4(v21, v19);
      if (qword_DE6D70 != -1)
      {
        swift_once();
      }

      UnfairLock.locked<A>(_:)(sub_13303C);
      v14 = qword_E0A760;
    }

    else
    {
      v14 = *(a1 + 176);
      sub_465F4(v21, v19);
    }

    v15 = v28[0];
    v9 = swift_allocObject();
    sub_12E940(v21, v14);
    if (v15)
    {
      v16 = *(&v21[0] + 1);
    }

    else
    {
      v16 = 0;
    }

    if (*(&v24 + 1) || v16)
    {
    }

    else
    {
      v19[0] = *(&v22 + 1);

      sub_ABB330();
    }

    swift_beginAccess();
    sub_AB9080();
    sub_AB90B0();
    swift_endAccess();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v9 + 184) = *(v2 + 64);
    *(v9 + 192) = 0;
  }

  return v9;
}

void sub_1292D8()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_2;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_2;
  }

  v2 = [v1 parentViewController];
  if (!v2)
  {
    goto LABEL_2;
  }

  v14 = v2;
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = v3;
    v5 = v0;
    v6 = v14;
LABEL_16:

    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    v11 = v10;
    v12 = v5;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v12 + 24) = v11;
    swift_unknownObjectWeakAssign();
    sub_12DE8C(Strong);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_2:

    swift_unknownObjectRelease();
    return;
  }

  v6 = v14;
  while (1)
  {
    v7 = v6;

    v6 = [v6 parentViewController];
    if (!v6)
    {
      break;
    }

    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v4 = v8;
      v5 = v0;
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1294F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = a2;
      if ([v6 isHidden] & 1) == 0 && objc_msgSend(v6, "_isInAWindow") && (v8 = swift_unknownObjectWeakLoadStrong(), v9 = sub_1298E0(v7, v8, *(v2 + 24)), swift_unknownObjectRelease(), (v9))
      {
        [v7 visibleBounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        [v7 adjustedContentInset];
        UIEdgeInsetsInsetRect(v11, v13, v15, v17, v18, v19);
        [v6 frame];
        v43 = v20;
        v21 = sub_ABA450();
        if (*(a1 + 200) > 1u)
        {
          if (*(a1 + 200) == 2)
          {
            v41 = [v6 superview];
            if (v41)
            {
              v42 = v41;
              [v6 frame];
              [v42 convertRect:v7 toCoordinateSpace:?];
              v22 = sub_ABA450();

              v39 = v6;
              v6 = v42;
              goto LABEL_18;
            }

            v22 = 1;
          }

          else
          {
            [v6 frame];
            [v6 convertRect:v7 toCoordinateSpace:?];
            [v7 visibleBounds];
            v22 = sub_ABA450();
          }
        }

        else
        {
          v22 = v21;
          if (*(a1 + 200))
          {
            if ((v21 & 1) != 0 && swift_unknownObjectWeakLoadStrong() && (v23 = *(v2 + 24), ObjectType = swift_getObjectType(), v25 = (*(v23 + 88))(ObjectType, v23), swift_unknownObjectRelease(), v25))
            {
              if (v25 != a2 && (v26 = swift_unknownObjectWeakLoadStrong()) != 0 && (v27 = v26, v28 = [v26 superview], v27, v28))
              {
                [v25 visibleBounds];
                v30 = v29;
                v32 = v31;
                v34 = v33;
                v36 = v35;
                [v25 adjustedContentInset];
                UIEdgeInsetsInsetRect(v30, v32, v34, v36, v37, v38);
                [v6 frame];
                [v28 convertRect:v25 toCoordinateSpace:?];
                v22 = sub_ABA450();

                v39 = v25;
                v6 = v28;
              }

              else
              {

                v22 = 1;
                v39 = v7;
                v6 = v25;
              }
            }

            else
            {
              v22 = 1;
              v39 = v6;
              v6 = v7;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v22 = 0;
      }

      v39 = v7;
LABEL_18:

      return v22 & 1;
    }
  }

  v22 = 0;
  return v22 & 1;
}

id sub_1298E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return &dword_0 + 1;
  }

  ObjectType = swift_getObjectType();
  v6 = (*(a3 + 88))(ObjectType, a3);
  if (!v6)
  {
    return &dword_0 + 1;
  }

  v7 = v6;
  v8 = a1;
  v9 = [v8 superview];
  if (v9)
  {
    while (1)
    {

      if (v8)
      {
        v11 = [v8 superview];
        if (v11)
        {
          v12 = v11;

          if (v12 == v7)
          {
            break;
          }
        }
      }

      v10 = [v8 superview];

      v9 = [v10 superview];
      v8 = v10;
      if (!v9)
      {
        goto LABEL_10;
      }
    }
  }

  v10 = v8;
LABEL_10:
  [v7 visibleBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = [v7 adjustedContentInset];
  if (v10)
  {
    v24 = UIEdgeInsetsInsetRect(v14, v16, v18, v20, v22, v23);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [v10 frame];
    v40.origin.x = v31;
    v40.origin.y = v32;
    v40.size.width = v33;
    v40.size.height = v34;
    v39.origin.x = v24;
    v39.origin.y = v26;
    v39.size.width = v28;
    v39.size.height = v30;
    if (CGRectIntersectsRect(v39, v40))
    {
      v35 = swift_getObjectType();
      v36 = (*(a3 + 32))(v35, a3);
      v38 = sub_1298E0(v7, v36, v37);

      swift_unknownObjectRelease();
      return (v38 & 1);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_129AFC(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v4 = *(*v2 + 320);
  v37 = *(*v2 + 312);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_ABA9C0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v8);
  v13 = &v32 - v12;
  (*(v7 + 16))(v10, a1, v6);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  (*(v11 + 32))(v13, v10, AssociatedTypeWitness);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return (*(v11 + 8))(v13, AssociatedTypeWitness);
  }

  v35 = v2;
  (*(v4 + 24))(v42, v13, v37, v4);
  swift_unknownObjectRelease();
  v50 = v42[6];
  v51 = v42[7];
  *v52 = v43[0];
  *&v52[9] = *(v43 + 9);
  v46 = v42[2];
  v47 = v42[3];
  v48 = v42[4];
  v49 = v42[5];
  v44 = v42[0];
  v45 = v42[1];
  if (sub_A996C(&v44) == 1)
  {
    return (*(v11 + 8))(v13, AssociatedTypeWitness);
  }

  v34 = v13;
  v58 = v50;
  v59 = v51;
  v60[0] = *v52;
  *(v60 + 9) = *&v52[9];
  v54 = v46;
  v55 = v47;
  v56 = v48;
  v57 = v49;
  v53[0] = v44;
  v53[1] = v45;
  v33 = v52[0];
  if (v52[0])
  {
    v15 = v44;
  }

  else
  {
    v15 = 0;
  }

  if (v52[0])
  {
    v16 = *(&v44 + 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(&v56 + 1);
  if (*(&v56 + 1))
  {
    v18 = AssociatedTypeWitness;
    v15 = *(*(&v56 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v16 = *(*(&v56 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  }

  else
  {
    v18 = AssociatedTypeWitness;
    if (v16)
    {
    }

    else
    {
      v41[0] = *(&v54 + 1);
      v15 = sub_ABB330();
      v16 = v19;
    }
  }

  swift_beginAccess();
  v41[0] = v15;
  v41[1] = v16;
  type metadata accessor for PrincipalImpressionTracker.History();

  sub_AB90A0();

  v20 = v41[20];

  if (v20)
  {
    (*(v11 + 8))(v34, v18);
    return sub_12E1C(v42, qword_DF1340);
  }

  v32 = v17;
  swift_beginAccess();
  type metadata accessor for PrincipalImpressionTracker.TrackedItem();
  swift_getAssociatedConformanceWitness();

  v21 = v34;
  sub_AB90A0();
  v22 = v41[0];

  if (v22)
  {
    sub_128FB0(v22);
    sub_12EAAC(0, v36);
    sub_12E1C(v42, qword_DF1340);
    (*(v11 + 8))(v21, v18);
  }

  sub_465F4(v53, v41);
  if (qword_DE6D70 != -1)
  {
    swift_once();
  }

  UnfairLock.locked<A>(_:)(sub_13303C);
  v23 = qword_E0A760;
  v24 = swift_allocObject();
  sub_12E940(v53, v23);
  v25 = v35;
  Strong = swift_unknownObjectWeakLoadStrong();
  v27 = v34;
  if (Strong)
  {
    swift_unknownObjectRelease();
    *(v24 + 184) = *(v25 + 64);
    *(v24 + 192) = 0;
  }

  sub_12EAAC(0, v36);
  if (v33)
  {
    v28 = *&v53[0];
  }

  else
  {
    v28 = 0;
  }

  if (v33)
  {
    v29 = *(&v53[0] + 1);
  }

  else
  {
    v29 = 0;
  }

  if (v32)
  {
    v28 = *(v32 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
  }

  else if (!v29)
  {
    v41[0] = *(&v54 + 1);
    v28 = sub_ABB330();
    v30 = v31;
    goto LABEL_35;
  }

LABEL_35:
  v39 = v30;
  v40 = v24;
  v38 = v28;
  swift_beginAccess();
  sub_AB9080();

  sub_AB90B0();
  swift_endAccess();

  sub_12E1C(v42, qword_DF1340);
  return (*(v11 + 8))(v27, v18);
}

void sub_12A1D8(void *a1)
{
  if (qword_DE6D68 != -1)
  {
    v15 = a1;
    swift_once();
    a1 = v15;
  }

  if ((byte_E71A90 & 1) == 0 && *(v1 + 145) == 1)
  {
    if ((*(v1 + 192) & 1) != 0 || ((v3 = *(v1 + 176), v2 = *(v1 + 184), v4 = a1, [a1 contentOffset], a1 = v4, v3 == v6) ? (v7 = v2 == v5) : (v7 = 0), !v7))
    {
      v8 = a1;
      if (*(v1 + 168))
      {
        (*(*v1 + 776))();
        Current = CFAbsoluteTimeGetCurrent();
      }

      else
      {
        v10 = *(v1 + 160);
        v11 = CFAbsoluteTimeGetCurrent();
        if (v11 - v10 <= 0.025)
        {
          return;
        }

        v12 = v11;
        (*(*v1 + 776))();
        Current = v12;
      }

      *(v1 + 160) = Current;
      *(v1 + 168) = 0;
      [v8 contentOffset];
      *(v1 + 176) = v13;
      *(v1 + 184) = v14;
      *(v1 + 192) = 0;
    }
  }
}

uint64_t sub_12A330(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v38 = a2;
  v5 = *v3;
  v6 = sub_AB7C80();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_AB3430();
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v37);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v5 + 312);
  v13 = *(v5 + 320);
  type metadata accessor for PrincipalImpressionTracker.History();

  v14 = sub_AB9050();

  if ((v14 & 1) == 0 || (v15 = 0, (a1 & 4) == 0))
  {
    v35 = a1;
    v16 = v38;
    sub_129AFC(v36, v38);
    v33 = dispatch_semaphore_create(1);
    v17 = swift_allocObject();
    v36 = v8;
    v18 = v17;
    *(v17 + 16) = _swiftEmptyArrayStorage;
    v32[1] = v17 + 16;
    v34 = v3[11];
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = v37;
    (*(v9 + 16))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v37);
    v21 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v12;
    *(v23 + 24) = v13;
    *(v23 + 32) = v35;
    *(v23 + 40) = v18;
    *(v23 + 48) = v19;
    (*(v9 + 32))(v23 + v21, v11, v20);
    v24 = v33;
    *(v23 + v22) = v33;

    v25 = v24;
    sub_48C8C4(sub_1326E0, v23);

    sub_13C80(0, &qword_DE8ED0);
    v26 = v36;
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v39 + 8))(v26, v40);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v15 = *(v18 + 16);
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v27 = sub_AB4BC0();
      __swift_project_value_buffer(v27, qword_E70EB0);
      v28 = sub_AB4BA0();
      v29 = sub_AB9F30();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Semaphore returned a non-success code.  No impressions were generated", v30, 2u);
      }

      return 0;
    }
  }

  return v15;
}

uint64_t sub_12A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v12 = sub_21CCAC(a3, a4, v19, ObjectType, a2);
  sub_12E1C(v19, &qword_DF2BD0);
  if (v12)
  {
    sub_19500(v12);
  }

  v13 = (*(a2 + 56))(ObjectType, a2);
  __chkstk_darwin(v13);
  v15[2] = v6;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  sub_2C1B60(sub_132588, v15, v13);
}

uint64_t sub_12A8CC(char a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = swift_beginAccess();
  v10 = v4[13];
  if (a1)
  {
    __chkstk_darwin(v9);
    v11 = *(v8 + 312);
    v12 = *(v8 + 320);
    type metadata accessor for PrincipalImpressionTracker.History();
    swift_bridgeObjectRetain_n();
    v13 = sub_AB9040();

    v10 = v13;
  }

  else
  {
    v11 = *(v8 + 312);
    v12 = *(v8 + 320);
  }

  v14 = sub_4A17C0(v10, a2, a1 & 1, *(v4 + 144), v11, v12, a3);

  return v14;
}

void sub_12AA58()
{
  if (qword_DE6D68 != -1)
  {
    swift_once();
  }

  if ((byte_E71A90 & 1) == 0 && v0[145] == 1)
  {
    v1 = *(*v0 + 776);

    v1();
  }
}

uint64_t sub_12AAF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v1 - 8);
  v3 = v30 - v2;
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6D68 != -1)
  {
    v29 = result;
    swift_once();
    result = v29;
  }

  if ((byte_E71A90 & 1) == 0 && *(v0 + 145) == 1)
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    v9 = result;
    v10 = type metadata accessor for PrincipalImpressionTracker();
    WitnessTable = swift_getWitnessTable();
    sub_23BE0C();
    v30[1] = v0;
    v12 = sub_21CD14(2, v8, v31, v10, WitnessTable);
    (*(v5 + 8))(v8, v9);
    result = sub_12E1C(v31, &qword_DF2BD0);
    if (v12)
    {
      if (v12 >> 62)
      {
        if (!sub_ABB060())
        {
        }
      }

      else if (!*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        ObjectType = swift_getObjectType();
        v14 = swift_conformsToProtocol2();
        if (v14)
        {
          (*(v14 + 24))(ObjectType, v14);
          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
      }

      v15 = type metadata accessor for MetricsPageProperties();
      (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
LABEL_13:
      v16 = *MetricsReportingController.shared.unsafeMutableAddressor();
      if (v12 >> 62)
      {
        v17 = sub_ABB060();
        if (v17)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v17 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
        if (v17)
        {
LABEL_15:
          *&v31[0] = _swiftEmptyArrayStorage;
          v18 = v16;
          result = sub_6D410(0, v17 & ~(v17 >> 63), 0);
          if (v17 < 0)
          {
            __break(1u);
            return result;
          }

          v30[0] = v16;
          v19 = *&v31[0];
          if ((v12 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v17; ++i)
            {
              v21 = *(sub_35FC58(i, v12) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

              swift_unknownObjectRelease();
              *&v31[0] = v19;
              v23 = v19[2];
              v22 = v19[3];
              if (v23 >= v22 >> 1)
              {
                sub_6D410((v22 > 1), v23 + 1, 1);
                v19 = *&v31[0];
              }

              v19[2] = v23 + 1;
              v19[v23 + 4] = v21;
            }
          }

          else
          {
            v25 = (v12 + 32);
            do
            {
              v26 = *(*v25 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
              *&v31[0] = v19;
              v28 = v19[2];
              v27 = v19[3];

              if (v28 >= v27 >> 1)
              {
                sub_6D410((v27 > 1), v28 + 1, 1);
                v19 = *&v31[0];
              }

              v19[2] = v28 + 1;
              v19[v28 + 4] = v26;
              ++v25;
              --v17;
            }

            while (v17);
          }

          v16 = v30[0];
          goto LABEL_29;
        }
      }

      v24 = v16;
      v19 = _swiftEmptyArrayStorage;
LABEL_29:
      (*(&stru_68.flags + (swift_isaMask & *v16)))(v19, v3, 0, 0, 0, 0, 0);

      sub_127EB8();
      sub_12E1C(v3, &unk_DF1330);
    }
  }

  return result;
}

void sub_12AFE8()
{
  v1 = v0;
  v28 = v0;
  v4 = v0;
  if (!v0)
  {
    return;
  }

  while (1)
  {
    ObjectType = swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6)
    {
      v7 = *(v6 + 16);
      v8 = v6;
      v9 = v1;
      v10 = v7(ObjectType, v8);

      if (v10)
      {
        v17 = v9;
        goto LABEL_30;
      }
    }

    if (v1 == v28)
    {

      goto LABEL_2;
    }

    v11 = [v1 childViewControllers];
    sub_13C80(0, &qword_DE7500);
    v30 = v11;
    v12 = sub_AB9760();
    v13 = v12;
    v29 = v1;
    if (!(v12 >> 62))
    {
      v14 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
      if (v14)
      {
        break;
      }

      goto LABEL_24;
    }

    v14 = sub_ABB060();
    if (v14)
    {
      break;
    }

LABEL_24:
    v1 = v29;

LABEL_2:
    if (v1)
    {
      v2 = [v1 parentViewController];
      v3 = v2;

      v1 = v2;
      if (v2)
      {
        continue;
      }
    }

    return;
  }

  v15 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = sub_35F8D4(v15, v13);
    }

    else
    {
      if (v15 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_33;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      if (v17)
      {
        v20 = v19;
        v21 = swift_getObjectType();
        v31 = *(v20 + 16);
        v32 = v21;
        v17 = v17;
        v22 = v31(v32, v20);

        if (v22)
        {
          break;
        }
      }
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_24;
    }
  }

  v23 = swift_getObjectType();
  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    v25 = *(v24 + 16);
    v26 = v24;
    v9 = v17;
    v25(v23, v26);
    v27 = v29;
  }

  else
  {
    v27 = v29;
    v9 = v29;
  }

LABEL_30:
}

void sub_12B2FC()
{
  v1 = v0;
  v2 = 1;
  v14 = v1;
  while (1)
  {
    if (v2)
    {
      v3 = v0;
      if (!v0)
      {
        return;
      }
    }

    else
    {
      if (!v0)
      {
        return;
      }

      v4 = [v0 parentViewController];
      v5 = v4;

      v0 = v4;
      if (!v4)
      {
        return;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {

      return;
    }

    if (v0 != v1)
    {
      break;
    }

LABEL_3:

    v2 = 0;
  }

  v6 = [v0 childViewControllers];
  sub_13C80(0, &qword_DE7500);
  v7 = sub_AB9760();
  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_13;
    }

    goto LABEL_2;
  }

  v9 = sub_ABB060();
  if (!v9)
  {
LABEL_2:

    v1 = v14;
    goto LABEL_3;
  }

LABEL_13:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_35F8D4(v10, v8);
    }

    else
    {
      if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v12)
    {

      return;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void *sub_12B510(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_ABB060();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = sub_6D4B0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_35FAB8(i, a1);
        type metadata accessor for ImpressionTracker();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA828);
        swift_dynamicCast();
        v5 = v12;
        v7 = *(&_swiftEmptyArrayStorage + 2);
        v6 = *(&_swiftEmptyArrayStorage + 3);
        if (v7 >= v6 >> 1)
        {
          sub_6D4B0((v6 > 1), v7 + 1, 1);
          v5 = v12;
        }

        *(&_swiftEmptyArrayStorage + 2) = v7 + 1;
        *(&_swiftEmptyArrayStorage + v7 + 2) = v5;
      }
    }

    else
    {
      v8 = a1 + 32;
      type metadata accessor for ImpressionTracker();
      do
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA828);
        swift_dynamicCast();
        v9 = v12;
        v11 = *(&_swiftEmptyArrayStorage + 2);
        v10 = *(&_swiftEmptyArrayStorage + 3);
        if (v11 >= v10 >> 1)
        {
          sub_6D4B0((v10 > 1), v11 + 1, 1);
          v9 = v12;
        }

        *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
        *(&_swiftEmptyArrayStorage + v11 + 2) = v9;
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return &_swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_12B708(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_ABAEC0();
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA10);
      swift_dynamicCast();
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      v4 += 16;
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_12B7FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v16 = _swiftEmptyArrayStorage;
    sub_6D6C0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v16 = v2;
      v9 = v2[2];
      v10 = v2[3];

      if (v9 >= v10 >> 1)
      {
        sub_6D6C0((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &_s7CatalogV11ResultScopeVN;
      v15 = &off_CFFFD0;
      v11 = swift_allocObject();
      *&v13 = v11;
      v11[2] = v6;
      v11[3] = v5;
      v11[4] = v8;
      v11[5] = v7;
      v2[2] = v9 + 1;
      sub_70DF8(&v13, &v2[5 * v9 + 4]);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_12B924(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_ABB060();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_6D7E0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_360360(i, a1);
        type metadata accessor for JSBadgingItem();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_6D7E0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_9ACFC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for JSBadgingItem();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_6D7E0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_9ACFC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_12BAF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_ABB060();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_6D7E0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_3616C8(i, a1);
        sub_13C80(0, &qword_DF1300);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_6D7E0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_9ACFC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_13C80(0, &qword_DF1300);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_6D7E0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_9ACFC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_12BCEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_6D6C0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v13 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        sub_6D6C0((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &_s7LibraryV11ResultScopeON;
      v12 = &off_D171C0;
      LOBYTE(v10) = v5;
      v2[2] = v8 + 1;
      sub_70DF8(&v10, &v2[5 * v8 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_12BE04(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for JSSocialOnboardingNetwork();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_35FCFC(v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_35FCFC(v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_ABA790();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_ABA790();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_ABB060();
  }

  result = sub_ABB060();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_12C044(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          sub_35FAB8(v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_43;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_44;
            }

            goto LABEL_26;
          }
        }

        sub_35FAB8(v12 - 4, a2);
LABEL_26:
        v14 = sub_127604();
        v15 = sub_127604();

        result = v14 == v15;
        if (v14 == v15)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v16 = v3 + 32;
    v17 = (a2 + 32);
    v18 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v19 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_41;
      }

      if (!v19)
      {
        break;
      }

      v16 += 8;
      v21 = *v17++;
      a2 = v21;
      v3 = sub_127604();
      v4 = v21;
      v22 = sub_127604();
      v24 = v20-- != 0;
      v25 = v3 == v22;
      result = v3 == v22;
      if (v25)
      {
        --v19;
        --v18;
        if (v24)
        {
          continue;
        }
      }

      return result;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v5 = sub_ABB060();
  }

  result = sub_ABB060();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_12C2A8(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1;
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v8 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v8)
    {
      goto LABEL_29;
    }

    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    v35 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 < 0)
    {
      v10 = v6;
    }

    if (v7)
    {
      v11 = v10;
    }

    v12 = a2 & 0xFFFFFFFFFFFFFF8;
    v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v12 = a2;
    }

    if (a2 >> 62)
    {
      v13 = v12;
    }

    if (v11 == v13)
    {
LABEL_29:
      v21 = 1;
      return v21 & 1;
    }

    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = sub_13C80(0, a3);
    if (((a2 | v6) & 0xC000000000000001) != 0)
    {
      v14 = a2 & 0xC000000000000001;
      v15 = 4;
      while (1)
      {
        v16 = v15 - 4;
        v17 = v15 - 3;
        if (__OFADD__(v15 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v18 = a5(v15 - 4, v6);
          if (!v14)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v16 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v18 = *(v6 + 8 * v15);
          if (!v14)
          {
LABEL_24:
            if (v16 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v19 = *(a2 + 8 * v15);
            goto LABEL_26;
          }
        }

        v19 = a5(v15 - 4, a2);
LABEL_26:
        v20 = v19;
        v21 = sub_ABA790();

        if (v21)
        {
          ++v15;
          if (v17 != v8)
          {
            continue;
          }
        }

        return v21 & 1;
      }
    }

    v6 += 32;
    v22 = (a2 + 32);
    v23 = *(v35 + 16);
    v24 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v25 = v8 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v6;
      v6 += 8;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v29 = v28;
      v21 = sub_ABA790();

      v31 = v25-- != 0;
      if (v21)
      {
        --v24;
        --v23;
        if (v31)
        {
          continue;
        }
      }

      return v21 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v32 = a3;
    v33 = sub_ABB060();
    a3 = v32;
    v8 = v33;
  }

  v34 = a3;
  result = sub_ABB060();
  a3 = v34;
  if (v8 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_12C54C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {
    return 0;
  }

  if (!v6 || a1 == a2)
  {
    return 1;
  }

  v53 = v5;
  v54 = v4;
  v55 = v2;
  v56 = v3;
  v7 = (a1 + 32);
  v8 = (a2 + 32);
  v9 = v6 - 1;
  while (1)
  {
    v10 = v7[5];
    v43 = v7[4];
    v44 = v10;
    v45 = *(v7 + 12);
    v11 = v7[1];
    v39 = *v7;
    v40 = v11;
    v12 = v7[3];
    v41 = v7[2];
    v42 = v12;
    v13 = v8[1];
    v46 = *v8;
    v47 = v13;
    v14 = v8[2];
    v15 = v8[3];
    v16 = v8[4];
    v17 = v8[5];
    v52 = *(v8 + 12);
    v50 = v16;
    v51 = v17;
    v48 = v14;
    v49 = v15;
    if (v39 != v46 && (sub_ABB3C0() & 1) == 0 || v40 != v47 && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }

    v31 = v9;
    v18 = v41;
    v19 = v43;
    v33 = BYTE8(v43);
    v20 = v48;
    v36 = v49;
    v37 = v42;
    v34 = *(&v49 + 1);
    v35 = *(&v42 + 1);
    v32 = BYTE8(v50);
    v21 = v51;
    v22 = v44;
    sub_1323DC(&v39, v38);
    sub_1323DC(&v46, v38);
    v23 = [v22 _fontAdjustedForCurrentContentSizeCategory];
    if (v23)
    {
      v24 = v23;

      v22 = v24;
    }

    v25 = v21;
    v26 = [v25 _fontAdjustedForCurrentContentSizeCategory];
    if (v26)
    {
      v27 = v26;

      v25 = v27;
    }

    sub_13C80(0, &qword_DFA720);
    v28 = sub_ABA790();

    if ((v28 & 1) == 0)
    {
LABEL_34:
      sub_132438(&v46);
      sub_132438(&v39);
      return 0;
    }

    if (v18)
    {
      if (!v20 || (sub_ABA790() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v20)
    {
      goto LABEL_34;
    }

    if (*(&v18 + 1))
    {
      if (!*(&v20 + 1) || (sub_ABA790() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(&v20 + 1))
    {
      goto LABEL_34;
    }

    if (v37 != v36 || v35 != v34)
    {
      goto LABEL_34;
    }

    v38[0] = v19;
    sub_7FD28();
    v29 = sub_AB38E0();
    sub_132438(&v46);
    sub_132438(&v39);
    if ((v29 & 1) == 0 || v33 != v32 || *(&v44 + 1) != *(&v51 + 1) || v45 != v52)
    {
      return 0;
    }

    if (!v31)
    {
      return 1;
    }

    v9 = v31 - 1;
    v8 = (v8 + 104);
    v7 = (v7 + 104);
  }
}

uint64_t sub_12C848(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_ABB3C0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_12C928(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_ABB060();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = sub_ABB060();
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v56 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 < 0)
  {
    v7 = v3;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v55 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if (v5 < 0)
  {
    goto LABEL_83;
  }

  v11 = v3 & 0xC000000000000001;
  v59 = a2 & 0xC000000000000001;
  v12 = 4;
  v47 = v5;
  v48 = a2;
  v45 = v3;
  v46 = v3 & 0xC000000000000001;
  while (1)
  {
    v13 = v12 - 4;
    v14 = v12 - 3;
    if (__OFADD__(v12 - 4, 1))
    {
      break;
    }

    if (v11)
    {
      result = sub_36003C(v12 - 4, v3);
      v15 = result;
      if (v59)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v13 >= *(v56 + 16))
      {
        goto LABEL_81;
      }

      v15 = *(v3 + 8 * v12);

      if (v59)
      {
LABEL_22:
        v16 = sub_36003C(v12 - 4, a2);
        if (v15 == v16)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }
    }

    if (v13 >= *(v55 + 16))
    {
      goto LABEL_82;
    }

    v16 = *(a2 + 8 * v12);

    if (v15 == v16)
    {
LABEL_17:

      goto LABEL_18;
    }

LABEL_28:
    v17 = *(v15 + 16) == *(v16 + 16) && *(v15 + 24) == *(v16 + 24);
    if (!v17 && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_74;
    }

    swift_beginAccess();
    v18 = *(v15 + 48);
    v19 = *(v15 + 80);
    v20 = *(v15 + 96);
    v63 = *(v15 + 64);
    v64 = v19;
    v65 = v20;
    v61 = *(v15 + 32);
    v62 = v18;
    swift_beginAccess();
    v21 = *(v16 + 48);
    v66 = *(v16 + 32);
    v67 = v21;
    v22 = *(v16 + 80);
    v68 = *(v16 + 64);
    v69 = v22;
    v70 = *(v16 + 96);
    v23 = v61;
    v24 = v66;
    if ((*(&v63 + 1) & 0x8000000000000000) != 0)
    {
      if ((*(&v68 + 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_74;
      }

      if (v61 == v66 && *(&v61 + 1) == *(&v66 + 1))
      {
        sub_2F118(&v66, v60);
        sub_2F118(&v61, v60);
      }

      else
      {
        v35 = sub_ABB3C0();
        sub_2F118(&v66, v60);
        sub_2F118(&v61, v60);
        if ((v35 & 1) == 0)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      if ((*(&v68 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

      v58 = *(&v66 + 1);
      v57 = *(&v61 + 1);
      v49 = BYTE8(v68);
      v50 = BYTE8(v63);
      v25 = v69;
      v26 = v64;
      v27 = v63;
      v51 = *(&v62 + 1);
      v52 = *(&v67 + 1);
      v53 = v62;
      v54 = v67;
      sub_2F118(&v66, v60);
      sub_2F118(&v61, v60);
      v28 = v26;
      v29 = [v28 _fontAdjustedForCurrentContentSizeCategory];
      if (v29)
      {
        v30 = v29;

        v28 = v30;
      }

      v31 = v25;
      v32 = [v31 _fontAdjustedForCurrentContentSizeCategory];
      if (v32)
      {
        v33 = v32;

        v31 = v33;
      }

      sub_13C80(0, &qword_DFA720);
      v34 = sub_ABA790();

      v14 = v12 - 3;
      if ((v34 & 1) == 0)
      {
LABEL_73:
        sub_2F174(&v66);
        sub_2F174(&v61);
LABEL_74:

        return 0;
      }

      if (v23)
      {
        if (!v24 || (sub_ABA790() & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else if (v24)
      {
        goto LABEL_73;
      }

      if (v57)
      {
        if (!v58 || (sub_ABA790() & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else if (v58)
      {
        goto LABEL_73;
      }

      if (v53 != v54)
      {
        goto LABEL_73;
      }

      if (v51 != v52)
      {
        goto LABEL_73;
      }

      v60[0] = v27;
      sub_7FD28();
      if ((sub_AB38E0() & 1) == 0 || v49 != v50)
      {
        goto LABEL_73;
      }
    }

    if (*(&v64 + 1) != *(&v69 + 1))
    {
      goto LABEL_73;
    }

    v60[0] = v65;
    sub_7FD28();
    if ((sub_AB38E0() & 1) == 0)
    {
      goto LABEL_73;
    }

    v60[0] = *(&v65 + 1);
    v36 = sub_AB38E0();
    sub_2F174(&v66);
    sub_2F174(&v61);
    if ((v36 & 1) == 0)
    {
      goto LABEL_74;
    }

    swift_beginAccess();
    v37 = *(v15 + 112);
    v38 = *(v15 + 120);
    swift_beginAccess();
    if ((v37 != *(v16 + 112) || v38 != *(v16 + 120)) && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_74;
    }

    v39 = v14;
    v40 = *(v15 + 256);
    v41 = *(v16 + 256);
    if (v40)
    {
      v5 = v47;
      a2 = v48;
      v11 = v46;
      if (!v41)
      {
        goto LABEL_74;
      }

      type metadata accessor for TextDrawing.View();
      v42 = v41;
      v43 = v40;
      v44 = sub_ABA790();

      v14 = v39;
      v3 = v45;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      v5 = v47;
      a2 = v48;
      v14 = v39;
      v3 = v45;
      v11 = v46;
      if (v41)
      {
        return 0;
      }
    }

LABEL_18:
    ++v12;
    result = 1;
    if (v14 == v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_12CF30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditingSectionedCollection.ChangeRecord() - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_57E38(v13, v10);
        sub_57E38(v14, v7);
        v16 = sub_4083CC(v10, v7);
        sub_132D48(v7);
        sub_132D48(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_12D0A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_12D140(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0x79426E6F69746361;
      }

      else
      {
        v8 = 0x65546C6961746564;
      }

      if (v6 == 1)
      {
        v9 = 0xEC000000656E696CLL;
      }

      else
      {
        v9 = 0xEF6C6562614C7478;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x62614C656C746974;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xEA00000000006C65;
      }

      if (v7 == 1)
      {
        v12 = 0x79426E6F69746361;
      }

      else
      {
        v12 = 0x65546C6961746564;
      }

      if (v7 == 1)
      {
        v13 = 0xEC000000656E696CLL;
      }

      else
      {
        v13 = 0xEF6C6562614C7478;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x62614C656C746974;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xEA00000000006C65;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_ABB3C0();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_12D2B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 80);
    for (i = (a2 + 80); ; i += 17)
    {
      v7 = *(v3 - 4);
      v6 = *(v3 - 3);
      v41 = *(v3 - 16);
      v8 = *v3;
      v28 = *(v3 - 1);
      v26 = v3[1];
      v45 = v3[2];
      v33 = v3[3];
      v43 = v3[4];
      v35 = v3[6];
      v24 = v3[7];
      v25 = v3[5];
      v37 = v3[8];
      v40 = v3[10];
      v10 = *(i - 4);
      v9 = *(i - 3);
      v11 = *(i - 16);
      v12 = *i;
      v27 = *(i - 1);
      v31 = v3[9];
      v32 = i[1];
      v44 = i[2];
      v46 = i[3];
      v42 = i[4];
      v34 = i[6];
      v29 = i[7];
      v30 = i[5];
      v36 = i[8];
      v38 = i[10];
      v39 = i[9];
      if ((*(v3 - 6) != *(i - 6) || *(v3 - 5) != *(i - 5)) && (sub_ABB3C0() & 1) == 0)
      {
        break;
      }

      if (v7 == v10 && v6 == v9)
      {
        if (v41 != v11)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_ABB3C0();
        result = 0;
        if ((v13 & 1) == 0 || v41 != v11)
        {
          return result;
        }
      }

      if (v8)
      {
        v15 = v44;
        v14 = v45;
        if (!v12)
        {
          return 0;
        }

        if (v28 != v27 || v8 != v12)
        {
          v16 = sub_ABB3C0();
          v15 = v44;
          v14 = v45;
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v15 = v44;
        v14 = v45;
        if (v12)
        {
          return 0;
        }
      }

      if (v14)
      {
        v18 = v39;
        v17 = v40;
        v20 = v37;
        v19 = v38;
        v22 = v35;
        v21 = v36;
        v23 = v34;
        if (!v15 || (v26 != v32 || v14 != v15) && (sub_ABB3C0() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v18 = v39;
        v17 = v40;
        v20 = v37;
        v19 = v38;
        v22 = v35;
        v21 = v36;
        v23 = v34;
        if (v15)
        {
          return 0;
        }
      }

      if ((v33 != v46 || v43 != v42) && (sub_ABB3C0() & 1) == 0)
      {
        return 0;
      }

      if (v22)
      {
        if (!v23 || (v25 != v30 || v22 != v23) && (sub_ABB3C0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v23)
      {
        return 0;
      }

      if (v20)
      {
        if (!v21 || (v24 != v29 || v20 != v21) && (sub_ABB3C0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v21)
      {
        return 0;
      }

      if ((v31 != v18 || v17 != v19) && (sub_ABB3C0() & 1) == 0)
      {
        return 0;
      }

      v3 += 17;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_12D5F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x7473696C79616C70;
      if (v6 == 5)
      {
        v8 = 0x736F65646976;
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE900000000000073;
      }

      v10 = 0x686372616573;
      if (v6 == 3)
      {
        v10 = 0x6F69646172;
      }

      v11 = 0xE500000000000000;
      if (v6 != 3)
      {
        v11 = 0xE600000000000000;
      }

      if (*v3 <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      v12 = 0xE900000000000077;
      v13 = 0x6F4E6E657473696CLL;
      if (v6 != 1)
      {
        v13 = 0x6573776F7262;
        v12 = 0xE600000000000000;
      }

      if (!*v3)
      {
        v13 = 0x7972617262696CLL;
        v12 = 0xE700000000000000;
      }

      if (*v3 <= 2u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 2u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v9;
      }

      if (*v4 <= 2u)
      {
        if (*v4)
        {
          if (v7 == 1)
          {
            v16 = 0xE900000000000077;
            if (v14 != 0x6F4E6E657473696CLL)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v14 != 0x6573776F7262)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v16 = 0xE700000000000000;
          if (v14 != 0x7972617262696CLL)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 4u)
      {
        if (v7 == 5)
        {
          v16 = 0xE600000000000000;
          if (v14 != 0x736F65646976)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v16 = 0xE900000000000073;
          if (v14 != 0x7473696C79616C70)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7 == 3)
      {
        v16 = 0xE500000000000000;
        if (v14 != 0x6F69646172)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0xE600000000000000;
        if (v14 != 0x686372616573)
        {
          goto LABEL_5;
        }
      }

      if (v15 != v16)
      {
LABEL_5:
        v5 = sub_ABB3C0();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void *sub_12D870(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_ABAEC0();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = a1 + 32;
  type metadata accessor for ImpressionTracker();
  while (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    v3 += 16;
    if (!--v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return 0;
}

void *sub_12D948(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_ABAEC0();
  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_3602FC(j, a1);
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_ABB060();
    sub_ABAEC0();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_12DAD4(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_ABAEC0();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_808B0(i, v5);
    type metadata accessor for JSBadgingItem();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_12DBF0(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_ABB060();
    sub_ABAEC0();
    v2 = sub_ABB060();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_ABAEC0();
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_3603F8(v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_12DD64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_6D410(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_808B0(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_6D410((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_12DE8C(uint64_t a1)
{
  v2 = v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  type metadata accessor for ImpressionTracker();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    if (v5 != a1)
    {
      v7 = *(v5 + 48);
      if ((v7 & 0xC000000000000001) != 0)
      {

        v8 = sub_ABACA0();

        if (v8)
        {
          goto LABEL_6;
        }
      }

      else if (*(v7 + 16))
      {
        sub_ABB5C0();
        v9 = sub_127604();
        sub_ABB5D0(v9);
        v10 = sub_ABB610();
        v11 = -1 << *(v7 + 32);
        v12 = v10 & ~v11;
        if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (sub_127604() != *(v2 + 56))
          {
            v12 = (v12 + 1) & v13;
            if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_6;
        }
      }

LABEL_14:
      v16 = *(v6 + 48);

      sub_1A5CC(v15, v2);
      v14 = *(v6 + 48);
      *(v6 + 48) = v16;
      sub_12E120(v14);
      swift_unknownObjectRelease();
    }
  }

LABEL_6:

  return swift_unknownObjectRelease();
}

uint64_t sub_12E05C(uint64_t a1)
{

  v4 = sub_12D870(v3);

  if (v4)
  {
    v6 = sub_12D870(a1);
    if (v6)
    {
      if ((sub_12C044(v6, v4) & 1) == 0)
      {
        v7 = sub_2F3680(v4);

        v8 = *(v1 + 48);
        *(v1 + 48) = v7;
        sub_12E120(v8);
      }
    }
  }

  return result;
}

uint64_t sub_12E120(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = *(v1 + 48);
  v5 = v4 & 0xC000000000000001;
  if ((result & 0xC000000000000001) != 0)
  {
    if (result < 0)
    {
      v6 = result;
    }

    else
    {
      v6 = result & 0xFFFFFFFFFFFFFF8;
    }

    if (v5)
    {

      v7 = sub_ABAC80();
    }

    else
    {

      v7 = sub_130380(v6, v4);
    }

    v10 = v7;

    if (v10)
    {
      result = sub_ABAC50();
      goto LABEL_36;
    }

LABEL_37:
    v25 = *(v2 + 32);
    v26 = *(v25 + 16);
    if (v26)
    {

      v27 = (v25 + 40);
      do
      {
        v28 = *v27;
        ObjectType = swift_getObjectType();
        v30 = *(v28 + 32);
        swift_unknownObjectRetain();
        v31 = v30(ObjectType, v28);
        if (!v31 || (v32 = v31, swift_unknownObjectRelease(), v32 != v2))
        {
          if (swift_conformsToProtocol2())
          {
          }

          (*(v28 + 40))();
        }

        swift_unknownObjectRelease();
        v27 += 2;
        --v26;
      }

      while (v26);
    }

    v34 = sub_130F00(v33, sub_130FB8);

    v35 = sub_12B510(v34);
    v36 = *(v2 + 32);
    *(v2 + 32) = v35;
    sub_12E05C(v36);
  }

  if (v5)
  {
    if (v4 < 0)
    {
      v8 = *(v1 + 48);
    }

    else
    {
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = sub_130380(v8, v3);

    if ((v9 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    result = *(v3 + 16);
LABEL_36:
    if (result == *(*(v2 + 32) + 16))
    {
      return result;
    }

    goto LABEL_37;
  }

  if (v4 == result)
  {
    goto LABEL_35;
  }

  if (*(result + 16) != *(v4 + 16))
  {
    goto LABEL_37;
  }

  v11 = 0;
  v12 = 1 << *(result + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(result + 56);
  v38 = (v12 + 63) >> 6;
  v15 = v4 + 56;
  if (v14)
  {
    do
    {
      v16 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
LABEL_28:
      v19 = *(*(v3 + 48) + 8 * (v16 | (v11 << 6)));
      sub_ABB5C0();
      v20 = sub_127604();
      sub_ABB5D0(v20);
      v21 = sub_ABB610();
      v22 = -1 << *(v4 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_37;
      }

      v24 = ~v22;
      while (1)
      {
        result = sub_127604();
        if (result == *(v19 + 56))
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v14 = v37;
    }

    while (v37);
  }

  v17 = v11;
  while (1)
  {
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v11 >= v38)
    {
      goto LABEL_35;
    }

    v18 = *(v3 + 56 + 8 * v11);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v37 = (v18 - 1) & v18;
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_12E504()
{
  sub_176DC(v0 + 16);

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_12E61C()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = _swiftEmptyArrayStorage;
  *(v0 + 40) = 0;
  if (_swiftEmptyArrayStorage >> 62 && sub_ABB060())
  {
    v1 = sub_10B30(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
  if (qword_DE6D70 != -1)
  {
    swift_once();
  }

  UnfairLock.locked<A>(_:)(sub_2BA50);
  *(v0 + 64) = qword_E0A760;
  swift_unknownObjectWeakInit();
  return v0;
}

Swift::Int sub_12E720()
{
  sub_ABB5C0();
  v0 = sub_127604();
  sub_ABB5D0(v0);
  return sub_ABB610();
}

Swift::Int sub_12E798()
{
  sub_ABB5C0();
  v0 = sub_127604();
  sub_ABB5D0(v0);
  return sub_ABB610();
}

Swift::Int sub_12E83C()
{
  sub_ABB5C0();
  LaunchURL.Resolver.PerformOption.hash(into:)(v2, *v0);
  return sub_ABB610();
}

double sub_12E87C(uint64_t a1, uint64_t a2)
{
  sub_AB33D0();
  v4 = v3;
  v5 = sub_AB3430();
  (*(*(v5 - 8) + 8))(a2, v5);
  return v4;
}

uint64_t sub_12E8F0(_OWORD *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_12E940(a1, a2);
  return v4;
}

uint64_t sub_12E940(_OWORD *a1, uint64_t a2)
{
  *(v2 + 184) = 0;
  *(v2 + 192) = 513;
  v4 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v4;
  *(v2 + 144) = a1[8];
  *(v2 + 153) = *(a1 + 137);
  v5 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v5;
  v6 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v6;
  v7 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v7;
  type metadata accessor for PrincipalImpressionTracker.History.Event();
  *(v2 + 200) = sub_AB97C0();
  *(v2 + 176) = a2;
  return v2;
}

uint64_t sub_12E9E8()
{
  swift_beginAccess();
  type metadata accessor for PrincipalImpressionTracker.History.Event();
  sub_AB9870();
  swift_getWitnessTable();
  sub_AB9120();
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 & 1;
  }
}

uint64_t sub_12EAAC(char a1, uint64_t a2)
{
  v4 = sub_AB3430();
  __chkstk_darwin(v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2);
  v10[4] = sub_12E87C(a1 & 1, v6);
  v11 = v8 & 1;
  swift_beginAccess();
  type metadata accessor for PrincipalImpressionTracker.History.Event();
  sub_AB9870();
  sub_AB9820();
  return swift_endAccess();
}

uint64_t sub_12EC08()
{
  v1 = v0[8];
  v6[6] = v0[7];
  v6[7] = v1;
  v7[0] = v0[9];
  *(v7 + 9) = *(v0 + 153);
  v2 = v0[4];
  v6[2] = v0[3];
  v6[3] = v2;
  v3 = v0[6];
  v6[4] = v0[5];
  v6[5] = v3;
  v4 = v0[2];
  v6[0] = v0[1];
  v6[1] = v4;
  sub_46650(v6);

  return swift_deallocClassInstance();
}

uint64_t sub_12EC74()
{
  sub_ABAD90(72);
  v3._object = 0x8000000000B526E0;
  v3._countAndFlagsBits = 0xD000000000000032;
  sub_AB94A0(v3);
  sub_ABAF70();
  v4._countAndFlagsBits = 0x3A656D6172462027;
  v4._object = 0xEA00000000002720;
  sub_AB94A0(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    [Strong frame];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1318);
  v5._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v5);

  v6._countAndFlagsBits = 0x203A44492027;
  v6._object = 0xE600000000000000;
  sub_AB94A0(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1320);
  v7._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v7);

  return 0;
}

uint64_t sub_12EE38()
{
  v1 = v0[8];
  v6[6] = v0[7];
  v6[7] = v1;
  v7[0] = v0[9];
  *(v7 + 9) = *(v0 + 153);
  v2 = v0[4];
  v6[2] = v0[3];
  v6[3] = v2;
  v3 = v0[6];
  v6[4] = v0[5];
  v6[5] = v3;
  v4 = v0[2];
  v6[0] = v0[1];
  v6[1] = v4;
  sub_46650(v6);
  swift_unknownObjectWeakDestroy();
  return swift_deallocClassInstance();
}

uint64_t sub_12EEC8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = v3 + 1;
      v7 = *(v1 + 32 + 16 * v3);
      swift_unknownObjectRetain();
      sub_12F010(&v7, v0);
      swift_unknownObjectRelease();
      v3 = v4;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_5:

  if (qword_DE6D68 != -1)
  {
LABEL_13:
    result = swift_once();
  }

  if ((byte_E71A90 & 1) == 0 && *(v0 + 145) == 1)
  {
    v6 = *(*v0 + 776);

    return v6();
  }

  return result;
}

uint64_t sub_12F010(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  if (qword_DE6D68 != -1)
  {
    swift_once();
  }

  if (byte_E71A90)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 145);
  }

  return (*(v3 + 16))(v5, ObjectType, v3);
}

uint64_t sub_12F0BC(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_12A1D8(a1);
  }

  return result;
}

uint64_t sub_12F11C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_12AA58();
  }

  return result;
}

uint64_t sub_12F174(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_AB2BD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_AB9990();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v7, a1, v4);
  sub_AB9940();

  v13 = sub_AB9930();
  v14 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = *(v3 + 312);
  *(v15 + 5) = *(v3 + 320);
  *(v15 + 6) = v12;
  (*(v5 + 32))(&v15[v14], v7, v4);

  sub_DC3A0(0, 0, v10, &unk_AFF5F8, v15);
}

uint64_t sub_12F3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_12F470, v7, v6);
}

uint64_t sub_12F470()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_12AAF4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_12F518(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v24 = a7;
  HIDWORD(v22) = a6;
  v23 = a5;
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v22 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v26 = a8;
    swift_beginAccess();
    type metadata accessor for PrincipalImpressionTracker.TrackedItem();
    swift_getAssociatedConformanceWitness();

    sub_AB90A0();
    v17 = v27[0];

    if (v17)
    {
      swift_unknownObjectWeakAssign();
      v18 = v17;
    }

    else
    {
      v19 = v24;
      if (v24 == 4)
      {
        v19 = *(v16 + 40);
      }

      v20 = v25;
      v18 = sub_132C90(v25, a3, v23, BYTE4(v22) & 1, v19);
      (*(v12 + 16))(v14, a2, AssociatedTypeWitness);
      v27[23] = v18;
      swift_beginAccess();
      sub_465F4(v20, v27);
      sub_AB9080();

      sub_AB90B0();
      swift_endAccess();
    }

    v21 = v26;

    sub_128A94(v18, a2, v21);
  }

  return result;
}

uint64_t sub_12F7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    type metadata accessor for PrincipalImpressionTracker.TrackedItem();
    swift_getAssociatedConformanceWitness();
    sub_AB9080();
    sub_AB9010();
    swift_endAccess();

    if (v8)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v5 = *(v8 + 144) ? *(v8 + 24) : 0;
        if (*(v8 + 88) || v5)
        {
        }

        else
        {
          sub_ABB330();
        }

        swift_beginAccess();
        type metadata accessor for PrincipalImpressionTracker.History();

        sub_AB90A0();

        if (v7)
        {
          v6 = sub_12E9E8();
          if (v6 != 2 && (v6 & 1) == 0)
          {
            sub_12EAAC(1, a3);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_12FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_128A94(a2, a1, a4);
  }

  return result;
}

uint64_t sub_12FAF0(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for PrincipalImpressionTracker.TrackedItem();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

uint64_t sub_12FC00(double a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_127620(a3, a1);
  }

  return result;
}

uint64_t sub_12FC70(int a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 4) != 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v18 = sub_12A8CC(a1, a5, a3);
    }

    else
    {
      v18 = 0;
    }

    swift_beginAccess();
    *(a2 + 16) = v18;

    return sub_ABA300();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_ABA300();
  }

  v9 = Strong;
  swift_retain_n();
  swift_getObjectType();
  v10 = &off_CFADC8;
  v11 = sub_13002C();
  v13 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v11)
  {
    do
    {
      v10 = v13;
      v14 = v11;
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      v11 = (*(v13 + 32))(ObjectType, v13);
      v13 = v16;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    while (v11);
  }

  else
  {
    v14 = v9;
  }

  result = swift_beginAccess();
  if (*(a2 + 16))
  {
    sub_12A7A4(v14, v10, a1 | 4u, a5, a2 + 16);
    swift_endAccess();
    swift_unknownObjectRelease();

    return sub_ABA300();
  }

  __break(1u);
  return result;
}

uint64_t sub_12FE60()
{

  swift_unknownObjectWeakDestroy();
}

uint64_t sub_12FEC0()
{
  sub_12758C();

  return swift_deallocClassInstance();
}

uint64_t sub_13004C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_12DE8C(Strong);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_130180()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1301D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_130214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_130284()
{
  result = qword_DF11F8;
  if (!qword_DF11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF11F8);
  }

  return result;
}

uint64_t sub_130314()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E70EB0);
  __swift_project_value_buffer(v0, qword_E70EB0);
  return static Logger.music(_:)();
}

uint64_t sub_130380(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_ABAC50();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_ABACA0();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_130484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB90D0();

  return sub_1304E0(a1, v6, a2, a3);
}

unint64_t sub_1304E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_AB91C0();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

void *sub_13067C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530);
  v4 = *(sub_AB3820() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_13077C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF12B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_130814(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v5[2] = a1;
  v5[3] = 2 * v6 - 64;
  return result;
}

void *sub_130880(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1310);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 240);
  return result;
}

void *sub_130914(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_13099C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D48);
      v7 = *(type metadata accessor for EditingSectionedCollection.ChangeRecord() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for EditingSectionedCollection.ChangeRecord();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_130B3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAE8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 120);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_130C28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF12F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_130D10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for TextStackView();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_130DF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_13C80(0, &unk_E07CB0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_130F00(uint64_t a1, uint64_t (*a2)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_ABAC50();
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v5 = sub_130914(v4, 0);

    a2 = a2(&v7, v5 + 32, v4, a1);
    sub_2BB88();
    if (a2 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = *(a1 + 16);
    if (!v4)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v5;
}

uint64_t sub_130FB8(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_ABAC10();
  type metadata accessor for ImpressionTracker();
  sub_13235C(&qword_DF1270);
  result = sub_AB9BC0();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v7 = ((v9 + 64) >> 6);
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_ABAC90())
      {
        goto LABEL_30;
      }

      type metadata accessor for ImpressionTracker();
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v17 = v25;
      result = swift_unknownObjectRelease();
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!v17)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = v17;
    if (v13 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v7)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v7 <= (v10 + 1))
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v7;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = v11;
  return v12;
}

void *sub_1311F0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_131344(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_131440(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_AB3820();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v31;
    a1[4] = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = (&dword_0 + 1);
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1316E4(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 240 * (v17 | (v12 << 6)));
      v20 = v18[1];
      v19 = v18[2];
      v33[0] = *v18;
      v33[1] = v20;
      v33[2] = v19;
      v21 = v18[6];
      v23 = v18[3];
      v22 = v18[4];
      v33[5] = v18[5];
      v33[6] = v21;
      v33[3] = v23;
      v33[4] = v22;
      v24 = v18[10];
      v26 = v18[7];
      v25 = v18[8];
      v33[9] = v18[9];
      v33[10] = v24;
      v33[7] = v26;
      v33[8] = v25;
      v27 = v18[14];
      v29 = v18[11];
      v28 = v18[12];
      v33[13] = v18[13];
      v33[14] = v27;
      v33[11] = v29;
      v33[12] = v28;
      memmove(v11, v18, 0xF0uLL);
      if (v14 == v10)
      {
        sub_2B990(v33, v32);
        goto LABEL_24;
      }

      v11 += 240;
      sub_2B990(v33, v32);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v31 = v12 + 1;
    }

    else
    {
      v31 = (63 - v7) >> 6;
    }

    v12 = v31 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_131898(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_ABAC10();
  sub_13C80(0, &qword_DE7500);
  sub_2BB20();
  result = sub_AB9BC0();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v7 = ((v9 + 64) >> 6);
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_ABAC90())
      {
        goto LABEL_30;
      }

      sub_13C80(0, &qword_DE7500);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v17 = v25;
      result = swift_unknownObjectRelease();
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    v17 = result;
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = v17;
    if (v13 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v7)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v7 <= (v10 + 1))
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v7;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = v11;
  return v12;
}

uint64_t sub_131ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_AB9800())
  {
    sub_ABB0D0();
    v13 = sub_ABB0C0();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_AB9860();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_AB97E0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_ABAE10();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_130484(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_131DC8(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = *v1;
  v28 = *(*v1 + 320);
  v27 = *(v3 + 312);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v23 - v6;
  v23 = &v23 - v6;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  sub_AB3420();
  v25 = v2[11];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = v7;
  v17 = AssociatedTypeWitness;
  (*(v4 + 16))(v16, v26, AssociatedTypeWitness);
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v19 = (v5 + *(v9 + 80) + v18) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 2) = v27;
  *(v20 + 3) = v21;
  *(v20 + 4) = v15;
  (*(v4 + 32))(&v20[v18], v23, v17);
  (*(v9 + 32))(&v20[v19], v12, v8);

  sub_48C6A0(sub_132250, v20);
  (*(v9 + 8))(v14, v8);
}

uint64_t sub_1320B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1320EC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_132250()
{
  v1 = *(swift_getAssociatedTypeWitness() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_AB3430() - 8);
  v5 = *(v0 + 32);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_12F7F8(v5, v0 + v2, v6);
}

uint64_t sub_13235C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImpressionTracker();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_13239C()
{

  return swift_deallocObject();
}

uint64_t sub_1325C8()
{

  return swift_deallocObject();
}

uint64_t sub_132600()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1326E0(double a1)
{
  v3 = *(sub_AB3430() - 8);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_12FC70(v6, v4, a1, v5, v7);
}

uint64_t sub_1327A0()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_132864(double a1)
{
  v3 = *(sub_AB3430() - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_12FC00(a1, v4, v5);
}

uint64_t sub_1328F4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  v8 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);

  v9 = *(v8 + 32);
  if (v9 >= 9)
  {
  }

  (*(v6 + 8))(v0 + ((((v4 + 175) & 0xFFFFFFFFFFFFFFF8) + v7 + 10) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_132AE0()
{
  v1 = *(swift_getAssociatedTypeWitness() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 175) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_AB3430() - 8);
  return sub_12F518(*(v0 + 32), v0 + v2, *(v0 + v3), (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 9), v0 + ((v4 + *(v5 + 80) + 10) & ~*(v5 + 80)));
}

uint64_t sub_132C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_DF1340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_132C90(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  type metadata accessor for PrincipalImpressionTracker.TrackedItem();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = a1[7];
  *(v9 + 112) = a1[6];
  *(v9 + 128) = v10;
  *(v9 + 144) = a1[8];
  *(v9 + 153) = *(a1 + 137);
  v11 = a1[3];
  *(v9 + 48) = a1[2];
  *(v9 + 64) = v11;
  v12 = a1[5];
  *(v9 + 80) = a1[4];
  *(v9 + 96) = v12;
  v13 = a1[1];
  *(v9 + 16) = *a1;
  *(v9 + 32) = v13;
  swift_unknownObjectWeakAssign();
  *(v9 + 176) = a3;
  *(v9 + 184) = a4 & 1;
  *(v9 + 200) = a5;
  return v9;
}

uint64_t sub_132D48(uint64_t a1)
{
  v2 = type metadata accessor for EditingSectionedCollection.ChangeRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_132DA4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_132E14()
{
  v1 = sub_AB2BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_132EE0(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17BD0;

  return sub_12F3D4(a1, v6, v7, v8, v1 + v5);
}

char *sub_133054(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView] = 0;
  v9 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator;
  _s9SeparatorCMa();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightViewDisplayStyle] = 2;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ContainerDetailHeaderReusableView();
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_DE6C58;
  v12 = v10;
  if (v11 != -1)
  {
    v15 = v12;
    swift_once();
    v12 = v15;
  }

  v13 = v12;
  [v12 setBackgroundColor:qword_E71898];
  [v13 addSubview:*&v13[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator]];

  return v13;
}

void sub_1331DC(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView];
  if (v5)
  {
    if (!a1)
    {
LABEL_10:
      v17 = v5;
      [v2 bounds];
      v10 = v9;
      v12 = v11;
      [v2 bounds];
      [v17 sizeThatFits:{v13, v14}];
      [v17 setFrame:{v10, v12, v15, v16}];
      [v2 addSubview:v17];

      return;
    }

    sub_74390();
    v6 = v5;
    v3 = v3;
    v7 = sub_ABA790();

    if (v7)
    {
      v5 = *&v2[v4];
      if (!v5)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  if ([v8 isDescendantOfView:v2])
  {
    [v8 removeFromSuperview];
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_10;
  }
}

id sub_13335C()
{
  v34.receiver = v0;
  v34.super_class = type metadata accessor for ContainerDetailHeaderReusableView();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 bounds];
  Width = CGRectGetWidth(v35);
  v10 = HI.SizeClass.init(_:)(Width);
  v11 = HI.SizeClass.margin.getter(v10);
  v12 = [v0 effectiveUserInterfaceLayoutDirection];
  v13 = *&v0[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator];
  [v13 intrinsicContentSize];
  v15 = v14;
  if (v12 == &dword_0 + 1)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v11;
  }

  v36.origin.x = v2;
  v36.origin.y = v4;
  v36.size.width = v6;
  v36.size.height = v8;
  v17 = CGRectGetHeight(v36) - v15;
  v37.origin.x = v2;
  v37.origin.y = v4;
  v37.size.width = v6;
  v37.size.height = v8;
  [v13 setFrame:{v16, v17, CGRectGetWidth(v37) - v11, v15}];
  v18 = *&v0[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView];
  if (v18)
  {
    v19 = v18;
    [v19 intrinsicContentSize];
    v21 = v20;
    v38.origin.x = v2;
    v38.origin.y = v4;
    v38.size.width = v6;
    v38.size.height = v8;
    Height = CGRectGetHeight(v38);
    v23 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightViewDisplayStyle;
    v24 = -16.0;
    if (v0[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightViewDisplayStyle] < 2u)
    {
      v24 = -20.0;
    }

    v25 = Height + v24 - v21;
    v39.origin.x = v2;
    v39.origin.y = v4;
    v39.size.width = v6;
    v39.size.height = v8;
    v26 = CGRectGetWidth(v39);
    v40.origin.x = v2;
    v40.origin.y = v4;
    v40.size.width = v6;
    v40.size.height = v8;
    v27 = CGRectGetWidth(v40);
    v28 = HI.SizeClass.init(_:)(v27);
    HI.SizeClass.margin.getter(v28);
    sub_AB9EA0();
    [v19 setFrame:{UIEdgeInsetsInsetRect(0.0, v25, v26, v21, v29, v30)}];
    v31 = dbl_AFF748[v0[v23]] + dbl_AFF760[v0[v23]];
    v32 = Int.seconds.getter(1);

    v8 = v8 - (v21 - v32 * v31);
  }

  result = *&v0[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView];
  if (result)
  {
    return [result setFrame:{v2, v4, v6, v8}];
  }

  return result;
}

double sub_133604(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView);
  if (!v3)
  {
    return 0.0;
  }

  v6 = v3;
  [v6 sizeThatFits:{a1, a2}];
  v8 = v7;
  v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView);
  if (v9)
  {
    v10 = v9;
    [v10 intrinsicContentSize];
    Int.seconds.getter(1);
  }

  else
  {
  }

  return v8;
}

id sub_133764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerDetailHeaderReusableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_13382C()
{
  result = qword_DF1428;
  if (!qword_DF1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF1428);
  }

  return result;
}

void sub_133880()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView) = 0;
  v1 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator;
  _s9SeparatorCMa();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightViewDisplayStyle) = 2;
  sub_ABAFD0();
  __break(1u);
}

void (*sub_133930(uint64_t a1, uint64_t a2))(void)
{
  result = (*(a2 + 16))();
  if (result)
  {
    v3 = result;
    result();

    return sub_17654(v3);
  }

  return result;
}

void RadioShowCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_subtitle];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTitle];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlaySubtitle];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_backdropView;
  *&v4[v14] = [objc_allocWithZone(UIView) init];
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_textComponents];
  *v15 = _s16MusicApplication13RadioShowCellC14textComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC04TextG0AELLVvpfi_0();
  v15[1] = v16;
  v15[2] = v17;
  v18 = &v4[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];
  *v18 = _s16MusicApplication13RadioShowCellC21overlayTextComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC07OverlaygH0AELLVvpfi_0();
  v18[1] = v19;
  v18[2] = v20;
  v21 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView;
  type metadata accessor for TextStackView();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v90.receiver = v4;
  v90.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v90, "initWithFrame:", a1, a2, a3, a4);
  v23 = &v22[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  type metadata accessor for UIEdgeInsets(0);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v24 = &v22[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v25 = *&v22[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16];
  v91 = *&v22[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v92 = v25;
  v26 = v22;
  if (sub_AB38D0())
  {
    v27 = *(v23 + 1);
    *v24 = *v23;
    *(v24 + 1) = v27;
    sub_35D498();
    [v26 setNeedsLayout];
  }

  v28 = v26;
  v29 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[2];
  v33 = v29[3];
  v34 = v29[4];
  v35 = v29[5];
  v88 = v35;
  v89 = v34;
  v36 = &v28[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v85 = *(v36 + 1);
  v86 = *v36;
  v83 = *(v36 + 3);
  v84 = *(v36 + 2);
  *v36 = v30;
  *(v36 + 1) = v31;
  *(v36 + 2) = v32;
  *(v36 + 3) = v33;
  *(v36 + 4) = v34;
  *(v36 + 5) = v35;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = v40;
  sub_2F1C8(v86, v85, v84, v83);
  v87 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  v45 = *&v28[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v46 = *(v45 + 168);
  v91 = *(v45 + 152);
  v92 = v46;
  v93 = *(v45 + 184);
  *(v45 + 152) = v30;
  *(v45 + 160) = v31;
  *(v45 + 168) = v32;
  *(v45 + 176) = v33;
  *(v45 + 184) = v89;
  *(v45 + 192) = v88;
  v47 = v41;
  v48 = v42;
  v49 = v43;
  v50 = v44;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  sub_75948(&v91);
  sub_B2A40(&v91);

  v55 = &v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_textComponents];
  v56 = *&v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_textComponents];

  v57 = [v28 traitCollection];
  v58 = [v57 preferredContentSizeCategory];
  LOBYTE(v32) = sub_ABA320();

  if (v32)
  {
    v59 = 3;
  }

  else
  {
    v59 = 1;
  }

  swift_beginAccess();
  *(v56 + 88) = v59;
  sub_2EB2A8();

  v60 = *&v28[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v61 = *(v55 + 2);
  if (v61 >> 62)
  {
    v62 = sub_ABB060();
    if (!v62)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v62 = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));
    if (!v62)
    {
      goto LABEL_15;
    }
  }

  if (v62 < 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v63 = v60;

  for (i = 0; i != v62; ++i)
  {
    if ((v61 & 0xC000000000000001) != 0)
    {
      v65 = sub_36003C(i, v61);
    }

    else
    {
      v65 = *(v61 + 8 * i + 32);
    }

    TextStackView.add(_:)(v65);
  }

LABEL_15:
  v66 = &v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];
  v67 = *&v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];

  v68 = [v28 traitCollection];

  v69 = [v68 preferredContentSizeCategory];
  v70 = sub_ABA320();

  if (v70)
  {
    v71 = 3;
  }

  else
  {
    v71 = 1;
  }

  swift_beginAccess();
  *(v67 + 88) = v71;
  sub_2EB2A8();

  v72 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView;
  v73 = *&v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView];
  v74 = *(v66 + 2);
  if (!(v74 >> 62))
  {
    v75 = *(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8));
    if (v75)
    {
      goto LABEL_20;
    }

LABEL_27:
    v79 = *&v28[v72];
    v80 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    *(v79 + v80) = 2;
    v81 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_backdropView;
    [*&v28[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_backdropView] addSubview:v79];
    v82 = *(*&v28[v87] + 112);

    [v82 addSubview:*&v28[v81]];
    return;
  }

  v75 = sub_ABB060();
  if (!v75)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (v75 >= 1)
  {
    v76 = v73;

    for (j = 0; j != v75; ++j)
    {
      if ((v74 & 0xC000000000000001) != 0)
      {
        v78 = sub_36003C(j, v74);
      }

      else
      {
        v78 = *(v74 + 8 * j + 32);
      }

      TextStackView.add(_:)(v78);
    }

    goto LABEL_27;
  }

LABEL_33:
  __break(1u);
}

void (*RadioShowCell.title.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_title;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_134154;
}

void (*RadioShowCell.subtitle.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_subtitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_134228;
}

void sub_134260(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB92A0();
  v11 = v10;
  v12 = &a1[*a4];
  swift_beginAccess();
  *v12 = v9;
  v12[1] = v11;
  v13 = a3;
  v14 = a1;

  v15 = *&v14[*a5];

  v16 = String.trim()();

  swift_beginAccess();
  v15[7] = v16;

  sub_2EB704();
}

uint64_t sub_134364(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;

  v9 = *(v4 + *a4);
  v10 = String.trim()();

  swift_beginAccess();
  v9[7] = v10;

  return sub_2EB704();
}

void (*RadioShowCell.overlayTitle.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1344A8;
}

void sub_1344B4(void **a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = *(v5[3] + *a3);

    v7 = String.trim()();

    swift_beginAccess();
    v6[7] = v7;

    sub_2EB704();
  }

  free(v5);
}

id sub_134574()
{
  swift_beginAccess();

  v0 = sub_AB9260();

  return v0;
}

uint64_t sub_1345F8(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

void sub_134660(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB92A0();
  v11 = v10;
  v12 = &a1[*a4];
  swift_beginAccess();
  *v12 = v9;
  v12[1] = v11;
  v13 = a3;
  v14 = a1;

  v15 = *&v14[*a5 + 8];

  v16 = String.trim()();

  swift_beginAccess();
  v15[7] = v16;

  sub_2EB704();
}

uint64_t sub_134768(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;

  v9 = *(v4 + *a4 + 8);
  v10 = String.trim()();

  swift_beginAccess();
  v9[7] = v10;

  return sub_2EB704();
}

void (*RadioShowCell.overlaySubtitle.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlaySubtitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1348B0;
}

void sub_1348BC(void **a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = *(v5[3] + *a3 + 8);

    v7 = String.trim()();

    swift_beginAccess();
    v6[7] = v7;

    sub_2EB704();
  }

  free(v5);
}

Swift::Void __swiftcall RadioShowCell.layoutSubviews()()
{
  v70.receiver = v0;
  v70.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v70, "layoutSubviews");
  [*(*&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 112) bounds];
  v69 = v1;
  v67 = v2;
  v4 = v3;
  v6 = v5;
  [v0 effectiveUserInterfaceLayoutDirection];
  v7 = *&v0[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView];
  v68 = v4;
  [v7 sizeThatFits:{v4, v6}];
  v9 = v8;
  v11 = v10;
  v12 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v13 = *&v0[v12];
  if (v13)
  {
    v66 = v7;
    v14 = &v0[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];
    v15 = *&v0[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];
    swift_beginAccess();
    v17 = *(v15 + 112);
    v16 = *(v15 + 120);
    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      swift_beginAccess();
      v19 = *(v15 + 48);
      v20 = *(v15 + 64);
      v21 = *(v15 + 96);
      v77[3] = *(v15 + 80);
      v77[4] = v21;
      v77[1] = v19;
      v77[2] = v20;
      v77[0] = *(v15 + 32);
      v22 = v13[4];
      v23 = *(v13 + 5);
      v24 = *(v13 + 8);
      v25 = *(v13 + 9);
      v26 = *(v13 + 10);
      v27 = *(v13 + 11);

      sub_2F118(v77, v72);
      v28 = v23;
      sub_108594(v17, v16, v77, v28, v24, v25, v26, v27, v71, v9, v11, v22);

      sub_109AB0(v71);
      sub_2F174(v77);
      v29 = *&v71[6];
    }

    else
    {

      v29 = 0.0;
    }

    v30 = *(v14 + 1);
    swift_beginAccess();
    v32 = *(v30 + 112);
    v31 = *(v30 + 120);
    v33 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v33 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      swift_beginAccess();
      v34 = *(v30 + 48);
      v35 = *(v30 + 64);
      v36 = *(v30 + 96);
      v76[3] = *(v30 + 80);
      v76[4] = v36;
      v76[1] = v34;
      v76[2] = v35;
      v76[0] = *(v30 + 32);
      v37 = v13[4];
      v38 = *(v13 + 5);
      v39 = *(v13 + 8);
      v40 = *(v13 + 9);
      v41 = *(v13 + 10);
      v42 = *(v13 + 11);

      sub_2F118(v76, v72);
      v43 = v38;
      sub_108594(v32, v31, v76, v43, v39, v40, v41, v42, v72, v9, v11, v37);

      sub_109AB0(v72);
      sub_2F174(v76);

      if (v29 > v73)
      {
        v9 = v29;
      }

      else
      {
        v9 = v73;
      }
    }

    else
    {
    }

    v7 = v66;
  }

  v78.origin.x = v69;
  v78.origin.y = v67;
  v78.size.width = v68;
  v78.size.height = v6;
  MaxX = CGRectGetMaxX(v78);
  v79.origin.x = v69;
  v79.origin.y = v67;
  v79.size.width = v9;
  v79.size.height = v11;
  v45 = MaxX - CGRectGetWidth(v79) + -8.0;
  v80.origin.x = v69;
  v80.origin.y = v67;
  v80.size.width = v68;
  v80.size.height = v6;
  CGRectGetMaxY(v80);
  v81.origin.x = v45;
  v81.origin.y = v67;
  v81.size.width = v9;
  v81.size.height = v11;
  CGRectGetHeight(v81);
  v46 = *&v0[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_backdropView];
  sub_ABA490();
  [v46 setFrame:?];
  [v7 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = [v7 traitCollection];
  [v55 displayScale];
  v57 = v56;

  sub_2E94A4(v74, v48, v50, v52, v54, v57);
  v58 = *(v74[0] + 2);
  if (v58)
  {
    v59 = v74[0] + 200;
    v60 = 0.0;
    v61 = 1.79769313e308;
    do
    {
      Width = CGRectGetWidth(*(v59 - 24));
      if (v60 < Width)
      {
        v60 = Width;
      }

      if (Width < v61)
      {
        v61 = Width;
      }

      v59 += 176;
      --v58;
    }

    while (v58);
    sub_3F250(v74);
    v63 = v60 - v61;
  }

  else
  {
    sub_3F250(v74);
    v63 = -1.79769313e308;
  }

  v64 = fabs(v63) * 0.5;
  v65 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v65, v75, 0.45, 7.5, v64, 0.0);
  UIView.shadow.setter(v75);
  UIView.shadowPathIsBounds.setter(1);
  [v46 bounds];
  sub_ABA4A0();
  sub_ABA490();
  [v7 setFrame:?];
}

Swift::Void __swiftcall RadioShowCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", isa);
  v4 = [v1 traitCollection];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_textComponents];
  v6 = [v4 preferredContentSizeCategory];
  v7 = sub_ABA320();

  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  swift_beginAccess();
  *(v5 + 88) = v8;
  sub_2EB2A8();
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents];
  v10 = [v4 preferredContentSizeCategory];
  v11 = sub_ABA320();

  if (v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  swift_beginAccess();
  *(v9 + 88) = v12;
  sub_2EB2A8();
}

uint64_t sub_1350D4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = v4;
  swift_retain_n();
  v7 = v2;
  sub_2E6210(v6);

  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView);
  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v11 = *(v8 + v10);
  *(v8 + v10) = v9;
  swift_retain_n();
  sub_2E6210(v11);
}

uint64_t RadioShowCell.textDrawingCache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);

  sub_1350D4();
}

void (*RadioShowCell.textDrawingCache.modify(uint64_t **a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = VerticalLockupCollectionViewCell.textDrawingCache.modify(v3);
  return sub_135354;
}

void sub_135354(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1350D4();
  }

  free(v3);
}

double static RadioShowCell.preferredHeight(traitCollection:width:)(void *a1, double a2)
{
  v4 = _s16MusicApplication13RadioShowCellC14textComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC04TextG0AELLVvpfi_0();
  v6 = v5;
  v7 = [a1 preferredContentSizeCategory];
  v8 = sub_ABA320();

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  swift_beginAccess();
  *(v4 + 88) = v9;
  sub_2EB2A8();
  v10 = sub_2F48A4(v6, a1, 0, 0);

  return v10 + a2 + 0.0;
}

void sub_135518()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView);
}

uint64_t _s16MusicApplication13RadioShowCellC14textComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC04TextG0AELLVvpfi_0()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v2 = qword_E718D8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *&v23[0] = v2;
  *(&v23[0] + 1) = v5;
  v23[1] = xmmword_AF7C20;
  v24 = 0;
  v25 = 0;
  v26 = v1;
  v27 = 1;
  v28 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v23);
  v16 = v4;
  v15 = v5;
  v14 = v1;
  sub_2F118(v23, v36);

  v7 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v8 = qword_E718C8;
  v9 = qword_E718C8;
  v10 = [v3 clearColor];
  *&v17[0] = v8;
  *(&v17[0] + 1) = v10;
  v17[1] = xmmword_AF7C20;
  v18 = 0;
  v19 = 0;
  v20 = v7;
  v21 = 1;
  v22 = xmmword_AF7C40;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  *(v12 + 32) = v6;
  *(v12 + 40) = v11;
  sub_2F118(v17, v36);

  v29[0] = v8;
  v29[1] = v10;
  v30 = xmmword_AF7C20;
  v31 = 0;
  v32 = 0;
  v33 = v7;
  v34 = 1;
  v35 = xmmword_AF7C40;
  sub_2F174(v29);
  v36[0] = v2;
  v36[1] = v5;
  v37 = xmmword_AF7C20;
  v38 = 0;
  v39 = 0;
  v40 = v1;
  v41 = 1;
  v42 = xmmword_AF7C30;
  sub_2F174(v36);
  return v6;
}

uint64_t _s16MusicApplication13RadioShowCellC21overlayTextComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC07OverlaygH0AELLVvpfi_0()
{
  sub_89F60();
  v0 = sub_ABA550();
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  v3 = [v1 clearColor];
  *&v21[0] = v2;
  *(&v21[0] + 1) = v3;
  v21[1] = xmmword_AFF7A0;
  v21[2] = xmmword_AF82C0;
  v22 = v0;
  v23 = 1;
  v24 = xmmword_AF9C80;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x5479616C7265766FLL, 0xEC000000656C7469, v21);
  v16 = v2;
  v15 = v3;
  v14 = v0;
  sub_2F118(v21, v31);

  v5 = sub_ABA550();
  v6 = [v1 whiteColor];
  v7 = [v1 clearColor];
  *&v17[0] = v6;
  *(&v17[0] + 1) = v7;
  v17[1] = xmmword_AFF7A0;
  v17[2] = xmmword_AF82C0;
  v18 = v5;
  v19 = 1;
  v20 = xmmword_AFF7B0;
  swift_allocObject();
  v8 = TextStackView.Component.init(identifier:labelProperties:)(0x5379616C7265766FLL, 0xEF656C7469746275, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF7C50;
  *(v9 + 32) = v4;
  *(v9 + 40) = v8;
  v25[0] = v6;
  v25[1] = v7;
  v26 = xmmword_AFF7A0;
  v27 = xmmword_AF82C0;
  v28 = v5;
  v29 = 1;
  v30 = xmmword_AFF7B0;
  v10 = v6;
  v11 = v7;
  v12 = v5;
  sub_2F118(v17, v31);

  sub_2F174(v25);

  v31[0] = v2;
  v31[1] = v3;
  v32 = xmmword_AFF7A0;
  v33 = xmmword_AF82C0;
  v34 = v0;
  v35 = 1;
  v36 = xmmword_AF9C80;
  sub_2F174(v31);

  return v4;
}

void _s16MusicApplication13RadioShowCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlaySubtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_backdropView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_textComponents);
  *v6 = _s16MusicApplication13RadioShowCellC14textComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC04TextG0AELLVvpfi_0();
  v6[1] = v7;
  v6[2] = v8;
  v9 = (v0 + OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextComponents);
  *v9 = _s16MusicApplication13RadioShowCellC21overlayTextComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC07OverlaygH0AELLVvpfi_0();
  v9[1] = v10;
  v9[2] = v11;
  v12 = OBJC_IVAR____TtC16MusicApplication13RadioShowCell_overlayTextStackView;
  type metadata accessor for TextStackView();
  *(v0 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_ABAFD0();
  __break(1u);
}