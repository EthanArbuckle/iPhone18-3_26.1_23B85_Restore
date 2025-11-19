uint64_t sub_1006B1C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, char *a5@<X8>)
{
  v91 = a4;
  v90 = a3;
  v98 = a5;
  v7 = sub_10010FC20(&qword_10119E850);
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin(v7);
  v75 = &v74 - v8;
  v78 = type metadata accessor for DynamicTypeSize();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_10119E858);
  __chkstk_darwin(v10 - 8);
  v95 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v99 = &v74 - v13;
  v14 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v14 - 8);
  v16 = &v74 - v15;
  v17 = sub_10010FC20(&qword_10119E860);
  __chkstk_darwin(v17);
  v19 = &v74 - v18;
  v83 = sub_10010FC20(&qword_10119E868);
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v21 = &v74 - v20;
  v86 = sub_10010FC20(&qword_10119E870);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v74 - v22;
  v88 = sub_10010FC20(&qword_10119E878);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v82 = &v74 - v23;
  v24 = sub_10010FC20(&qword_10119E880);
  v93 = *(v24 - 8);
  v94 = v24;
  __chkstk_darwin(v24);
  v92 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v84 = &v74 - v27;
  v80 = sub_10010FC20(&qword_10119E888);
  __chkstk_darwin(v80);
  v29 = &v74 - v28;
  *v29 = static VerticalAlignment.center.getter();
  *(v29 + 1) = 0x4008000000000000;
  v29[16] = 0;
  v30 = sub_10010FC20(&qword_10119E890);
  sub_1006B26C4(a1, &v29[*(v30 + 44)]);
  v31 = a1;
  v79 = a1;
  MusicPin.artwork.getter();
  LOBYTE(a1) = sub_100615604(v16);
  sub_1000095E8(v16, &unk_101188920);
  v32 = objc_opt_self();
  v33 = &selRef_systemFillColor;
  if ((a1 & 1) == 0)
  {
    v33 = &selRef_clearColor;
  }

  v34 = [v32 *v33];
  v35 = Color.init(_:)();
  v36 = static Alignment.center.getter();
  v38 = v37;
  v39 = &v19[*(v17 + 36)];
  sub_1006B3DB8(v31, v39);
  v40 = (v39 + *(sub_10010FC20(&qword_10119E898) + 36));
  *v40 = v36;
  v40[1] = v38;
  *v19 = v35;
  *(v19 + 1) = 0x3FF0000000000000;
  *(v19 + 8) = 0;
  v41 = sub_1006B6554();
  v42 = a2;
  v43 = v90;
  LOBYTE(v38) = v91;
  View.corner(_:)();
  sub_1000095E8(v19, &qword_10119E860);
  Border.artwork.unsafeMutableAddressor();

  *&v103[0] = v17;
  *(&v103[0] + 1) = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v81;
  v46 = v83;
  View.border(_:corner:)();

  (*(v85 + 8))(v21, v46);
  v47 = Shadow.shallow.unsafeMutableAddressor();
  v48 = v47[4];
  v49 = *(v47 + 1);
  v103[0] = *v47;
  v103[1] = v49;
  v104 = v48;

  v101 = v46;
  v102 = OpaqueTypeConformance2;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v82;
  v52 = v42;
  v53 = v29;
  v54 = v86;
  View.shadow(_:corner:)(v103, v52, v43, v38);
  sub_1003C3B18(v103);
  (*(v87 + 8))(v45, v54);
  v100 = v53;
  v101 = v54;
  v102 = v50;
  swift_getOpaqueTypeConformance2();
  sub_100020674(&qword_10119E8B0, &qword_10119E888);
  v55 = v84;
  v56 = v88;
  View.accessibilityRepresentation<A>(representation:)();
  v57 = v79;
  (*(v89 + 8))(v51, v56);
  v58 = _s7PinCellVMa();
  v59 = 1;
  if (*(v57 + *(v58 + 24)) == 1)
  {
    v60 = v76;
    sub_10056CABC(v76);
    v61 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v77 + 8))(v60, v78);
    if (v61)
    {
      v59 = 1;
    }

    else
    {
      v62 = v75;
      View.accessibilityHidden(_:)();
      sub_10003D17C(v62, v99, &qword_10119E850);
      v59 = 0;
    }
  }

  v63 = v99;
  (*(v96 + 56))(v99, v59, 1, v97);
  v64 = v92;
  v65 = v93;
  v66 = *(v93 + 16);
  v67 = v55;
  v68 = v94;
  v66(v92, v55, v94);
  v97 = v53;
  v69 = v95;
  sub_1000089F8(v63, v95, &qword_10119E858);
  v70 = v98;
  v66(v98, v64, v68);
  v71 = sub_10010FC20(&qword_10119E8B8);
  sub_1000089F8(v69, &v70[*(v71 + 48)], &qword_10119E858);
  sub_1000095E8(v63, &qword_10119E858);
  v72 = *(v65 + 8);
  v72(v67, v68);
  sub_1000095E8(v69, &qword_10119E858);
  v72(v64, v68);
  return sub_1000095E8(v97, &qword_10119E888);
}

uint64_t sub_1006B26C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v108 = a2;
  v2 = type metadata accessor for Font.Leading();
  v106 = *(v2 - 8);
  v107 = v2;
  __chkstk_darwin(v2);
  v105 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v4 - 8);
  v84 = &v80 - v5;
  v6 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v6 - 8);
  v85 = &v80 - v7;
  v89 = type metadata accessor for Text.Suffix();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10010FC20(&qword_101189260);
  v93 = *(v96 - 8);
  __chkstk_darwin(v96);
  v90 = &v80 - v9;
  v103 = sub_10010FC20(&qword_10119E8D0);
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v95 = &v80 - v10;
  v99 = sub_10010FC20(&qword_10119E8D8);
  __chkstk_darwin(v99);
  v98 = &v80 - v11;
  v100 = sub_10010FC20(&qword_10119E8E0);
  v97 = *(v100 - 8);
  __chkstk_darwin(v100);
  v91 = &v80 - v12;
  v94 = sub_10010FC20(&qword_10119E8E8);
  __chkstk_darwin(v94);
  v92 = &v80 - v13;
  v14 = sub_10010FC20(&qword_10119E8F0);
  __chkstk_darwin(v14 - 8);
  v104 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v102 = &v80 - v17;
  v18 = type metadata accessor for MusicPin.Action();
  v81 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10010FC20(&qword_10119E8F8);
  __chkstk_darwin(v83);
  v23 = &v80 - v22;
  v88 = sub_10010FC20(&qword_10119E900);
  __chkstk_darwin(v88);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v109 = &v80 - v27;
  MusicPin.action.getter();
  MusicPin.Action.symbolName.getter();
  v80 = *(v19 + 8);
  v80(v21, v18);
  v28 = Image.init(systemName:)();
  v29 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v110 = v28;
  v111 = KeyPath;
  v112 = v29;
  static Font.Weight.medium.getter();
  sub_10010FC20(&unk_1011A1100);
  sub_100238768();
  View.fontWeight(_:)();

  v31 = &v23[*(sub_10010FC20(&qword_101185BB8) + 36)];
  v32 = *(sub_10010FC20(&qword_1011A13C0) + 28);
  v33 = enum case for Image.Scale.small(_:);
  v34 = type metadata accessor for Image.Scale();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  *&v23[*(v83 + 36)] = static HierarchicalShapeStyle.secondary.getter();
  MusicPin.action.getter();
  v35 = sub_1006B344C();
  v37 = v36;
  v80(v21, v81);
  v110 = v35;
  v111 = v37;
  sub_1006B6710();
  sub_100009838();
  View.accessibilityLabel<A>(_:)();

  sub_1000095E8(v23, &qword_10119E8F8);
  _s7PinCellVMa();
  ModifiedContent<>.accessibilityHidden(_:)();
  v88 = v25;
  sub_1000095E8(v25, &qword_10119E900);
  v110 = MusicPin.title.getter();
  v111 = v38;
  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  v110 = v39;
  v111 = v40;
  LOBYTE(v112) = v42 & 1;
  v113 = v44;
  v45 = v84;
  sub_1003121A8(v84);
  v46 = type metadata accessor for Track();
  v47 = *(v46 - 8);
  v48 = v45;
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_1000095E8(v45, &qword_10118A530);
    v49 = type metadata accessor for ContentRating();
    v50 = v85;
    (*(*(v49 - 8) + 56))(v85, 1, 1, v49);
  }

  else
  {
    v50 = v85;
    Track.contentRating.getter();
    (*(v47 + 8))(v48, v46);
  }

  v51 = sub_1006B369C();
  v52 = TextBadge.init(for:isPlayable:)(v50, (v51 & 1) == 0);
  v53 = TextBadge.view.getter(v52);
  v55 = v54;
  v57 = v56;
  v58 = v86;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v53, v55, v57 & 1);

  v59 = v90;
  View.textSuffix(_:)();
  (*(v87 + 8))(v58, v89);
  sub_10011895C(v39, v41, v43 & 1);

  sub_10010FC20(&qword_10119E910);
  v110 = &type metadata for Text;
  v111 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  sub_100020674(&qword_10119E918, &qword_10119E910);
  v61 = v95;
  v60 = v96;
  View.accessibilityLabel<A>(content:)();
  (*(v93 + 8))(v59, v60);
  static Font.caption.getter();
  v63 = v105;
  v62 = v106;
  v64 = v107;
  (*(v106 + 104))(v105, enum case for Font.Leading.tight(_:), v107);
  v65 = Font.leading(_:)();

  (*(v62 + 8))(v63, v64);
  v66 = swift_getKeyPath();
  v67 = v98;
  (*(v101 + 32))(v98, v61, v103);
  v68 = (v67 + *(v99 + 36));
  *v68 = v66;
  v68[1] = v65;
  static Font.Weight.medium.getter();
  sub_1006B67C8();
  v69 = v91;
  View.fontWeight(_:)();
  sub_1000095E8(v67, &qword_10119E8D8);
  v70 = swift_getKeyPath();
  v71 = v92;
  (*(v97 + 32))(v92, v69, v100);
  v72 = v71 + *(v94 + 36);
  *v72 = v70;
  *(v72 + 8) = 1;
  *(v72 + 16) = 0;
  sub_1006B694C();
  v73 = v102;
  View.accessibilitySortPriority(_:)();
  sub_1000095E8(v71, &qword_10119E8E8);
  v74 = v109;
  v75 = v88;
  sub_1000089F8(v109, v88, &qword_10119E900);
  v76 = v104;
  sub_1000089F8(v73, v104, &qword_10119E8F0);
  v77 = v108;
  sub_1000089F8(v75, v108, &qword_10119E900);
  v78 = sub_10010FC20(&qword_10119E930);
  sub_1000089F8(v76, v77 + *(v78 + 48), &qword_10119E8F0);
  sub_1000095E8(v73, &qword_10119E8F0);
  sub_1000095E8(v74, &qword_10119E900);
  sub_1000095E8(v76, &qword_10119E8F0);
  return sub_1000095E8(v75, &qword_10119E900);
}

uint64_t sub_1006B344C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for MusicPin.Action();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v0, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for MusicPin.Action.navigate(_:) || v8 == enum case for MusicPin.Action.play(_:) || v8 == enum case for MusicPin.Action.shuffle(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return 0;
  }
}

uint64_t sub_1006B369C()
{
  v1 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v36 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v35 = &v33 - v4;
  v5 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v5 - 8);
  v34 = &v33 - v6;
  v7 = type metadata accessor for MusicPin.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Artist();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicPin.Action();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.action.getter();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicPin.Action.navigate(_:))
  {
    if (qword_10117F6D8 != -1)
    {
      swift_once();
    }

    v19 = sub_100428914() ^ 1;
  }

  else if (v18 == enum case for MusicPin.Action.play(_:) || v18 == enum case for MusicPin.Action.shuffle(_:))
  {
    v21 = v0;
    MusicPin.item.getter();
    if ((*(v8 + 88))(v10, v7) == enum case for MusicPin.Item.artist(_:))
    {
      (*(v8 + 96))(v10, v7);
      v22 = v33;
      (*(v33 + 32))(v13, v10, v11);
      v23 = v34;
      Artist.libraryAddedDate.getter();
      (*(v22 + 8))(v13, v11);
      v24 = type metadata accessor for Date();
      v19 = 1;
      v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
      sub_1000095E8(v23, &qword_101188C20);
      if (v25 == 1)
      {
        return v19 & 1;
      }
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }

    v26 = v35;
    sub_100537A68(v21, v35);
    v28 = v36;
    v27 = v37;
    v29 = v38;
    (*(v37 + 104))(v36, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v38);
    sub_1006B650C(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();
    v31 = *(v27 + 8);
    v31(v28, v29);
    v31(v26, v29);
    v19 = v30 ^ 1;
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1006B3BE4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v17 = a1;
  v3 = sub_10010FC20(&qword_10119E938);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(v4 + 16);
  v14(v6, v17, v3);
  v14(a2, v6, v3);
  v15 = &a2[*(sub_10010FC20(&qword_10119E940) + 48)];
  *v15 = v7;
  *(v15 + 1) = v9;
  v15[16] = v11 & 1;
  *(v15 + 3) = v13;
  sub_10021D0C0(v7, v9, v11 & 1);

  sub_10011895C(v7, v9, v11 & 1);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1006B3DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for ArtworkImage.ReusePolicy();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  v17 = sub_10010FC20(&unk_1011A1400);
  v34 = *(v17 - 8);
  v35 = v17;
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  v33 = sub_10010FC20(&qword_10119E8C0);
  __chkstk_darwin(v33);
  v21 = &v32 - v20;
  v22 = type metadata accessor for MusicPin();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v22, &protocol witness table for MusicPin, v16);
  MusicPin.genericMusicItem.getter(v7);
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v7, 1, v23) == 1)
  {
    sub_1000095E8(v7, &unk_101189DA0);
    v25 = sub_10010FC20(&unk_101182950);
    (*(*(v25 - 8) + 56))(v13, 1, 11, v25);
  }

  else
  {
    GenericMusicItem.placeholder.getter(v10);
    (*(v24 + 8))(v7, v23);
    sub_10043C858(v10, v13);
  }

  v26 = _s7PinCellVMa();
  ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)(*(a1 + *(v26 + 20)), 0, 0.0, 1, v42, 1.0);
  v28 = v36;
  v27 = v37;
  v29 = v38;
  (*(v37 + 104))(v36, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v38);
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v16, v13, v42, v28, v19);
  (*(v27 + 8))(v28, v29);
  sub_100172200(v13);
  sub_1000095E8(v16, &unk_10118A5E0);
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  View.accessibilityHidden(_:)();
  (*(v34 + 8))(v19, v30);
  v40 = 0xD000000000000019;
  v41 = 0x8000000100E52630;
  sub_1006B663C();
  View.presentationSource<A>(id:)();
  return sub_1000095E8(v21, &qword_10119E8C0);
}

uint64_t sub_1006B42BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v62) = a5;
  v60 = a3;
  v61 = a4;
  LODWORD(v59) = a2;
  v8 = type metadata accessor for PlainButtonStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v66 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_10119E788);
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v63 = &v53 - v12;
  v67 = sub_10010FC20(&qword_10119E790);
  __chkstk_darwin(v67);
  v14 = &v53 - v13;
  v15 = sub_10010FC20(&qword_10119E798);
  __chkstk_darwin(v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  v21 = sub_10010FC20(&qword_10119E7A0);
  v68 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = (a1 + *(_s7PinCellVMa() + 28));
  v25 = *v24;
  if (*v24)
  {
    v55 = v8;
    v26 = v24[1];
    v27 = swift_allocObject();
    v57 = v15;
    v58 = v26;
    v53 = &v53;
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    __chkstk_darwin(v27);
    v54 = v14;
    *(&v53 - 6) = 0x403C000000000000;
    *(&v53 - 40) = v59 & 1;
    v28 = v61;
    *(&v53 - 4) = v60;
    *(&v53 - 3) = v28;
    LOBYTE(v51) = v62;
    sub_100030444(v25);

    sub_10010FC20(&qword_10119E7A8);
    v56 = v20;
    v29 = sub_1001109D0(&qword_10119E7B0);
    v62 = v21;
    v30 = v29;
    v59 = v23;
    v31 = sub_1001109D0(&qword_1011A1440);
    v60 = v25;
    v32 = v31;
    v33 = sub_1006B5E90();
    v61 = a6;
    v34 = v33;
    v35 = sub_100020674(&qword_1011A14A0, &qword_1011A1440);
    v69 = v30;
    v70 = v32;
    v71 = v34;
    v72 = v35;
    swift_getOpaqueTypeConformance2();
    v36 = v63;
    Button.init(action:label:)();
    v37 = v66;
    PlainButtonStyle.init()();
    sub_100020674(&qword_10119E828, &qword_10119E788);
    sub_1006B650C(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
    v38 = v54;
    v39 = v55;
    v40 = v65;
    View.buttonStyle<A>(_:)();
    (*(v9 + 8))(v37, v39);
    (*(v64 + 8))(v36, v40);
    *(v38 + *(v67 + 36)) = 0;
    LocalizedStringKey.init(stringLiteral:)();
    sub_1006B62D4();
    View.accessibilityLabel(_:)();

    sub_1000095E8(v38, &qword_10119E790);
    LocalizedStringKey.init(stringLiteral:)();
    v52 = 2;
    v51 = 47;
    v41 = Text.init(_:tableName:bundle:comment:)();
    v43 = v42;
    LOBYTE(v37) = v44;
    v45 = v56;
    ModifiedContent<>.accessibilityValue(_:)();
    sub_10011895C(v41, v43, v37 & 1);

    sub_1000095E8(v17, &qword_10119E798);
    LocalizedStringKey.init(stringLiteral:)();
    v46 = v59;
    ModifiedContent<>.accessibilityHint(_:)();

    sub_100020438(v60);
    sub_1000095E8(v45, &qword_10119E798);
    v47 = v61;
    v48 = v62;
    *(v46 + *(v62 + 36)) = 0x4059000000000000;
    sub_10003D17C(v46, v47, &qword_10119E7A0);
    return (*(v68 + 56))(v47, 0, 1, v48);
  }

  else
  {
    v50 = *(v68 + 56);

    return v50(a6, 1, 1, v21);
  }
}

uint64_t sub_1006B4A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = a2;
  sub_1001F4CB8(0, 0, v6, &unk_100EDD600, v9);
}

uint64_t sub_1006B4B44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v62 = a3;
  v60 = a1;
  v61 = a2;
  v54 = a4;
  v53 = sub_10010FC20(&qword_1011A1440);
  __chkstk_darwin(v53);
  v57 = &v52 - v4;
  v55 = sub_10010FC20(&qword_10119E7D0);
  __chkstk_darwin(v55);
  v6 = &v52 - v5;
  v7 = sub_10010FC20(&qword_10119E848);
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v56 = &v52 - v8;
  v9 = sub_10010FC20(&qword_10119E7C8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  v13 = sub_10010FC20(&qword_10119E7B0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v16 = Image.init(systemName:)();
  v17 = static Color.white.getter();
  *&v63 = v16;
  *(&v63 + 1) = v17;
  static Font.Weight.medium.getter();
  sub_10010FC20(&qword_10119E800);
  sub_1006B621C();
  View.fontWeight(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v6[*(sub_10010FC20(&qword_10119E7F8) + 36)];
  v19 = v64;
  *v18 = v63;
  *(v18 + 1) = v19;
  *(v18 + 2) = v65;
  v20 = &v6[*(sub_10010FC20(&qword_10119E7E8) + 36)];
  static Material.ultraThin.getter();
  v21 = static Edge.Set.all.getter();
  v20[*(sub_10010FC20(&qword_10119E818) + 36)] = v21;
  KeyPath = swift_getKeyPath();
  v23 = &v6[*(v55 + 36)];
  v24 = *(sub_10010FC20(&qword_10118F360) + 28);
  v25 = enum case for ColorScheme.dark(_:);
  v26 = type metadata accessor for ColorScheme();
  v27 = v23 + v24;
  v28 = v13;
  v29 = v57;
  (*(*(v26 - 8) + 104))(v27, v25, v26);
  *v23 = KeyPath;
  sub_1006B5FE4();
  v30 = v56;
  View.corner(_:)();
  sub_1000095E8(v6, &qword_10119E7D0);
  LOBYTE(KeyPath) = static Edge.Set.top.getter();
  static Corner.__derived_enum_equals(_:_:)(v60, v61, v62, 0, 0, 2);
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  (*(v58 + 32))(v12, v30, v59);
  v39 = &v12[*(v10 + 44)];
  *v39 = KeyPath;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  LOBYTE(KeyPath) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_10003D17C(v12, v15, &qword_10119E7C8);
  v48 = &v15[*(v28 + 36)];
  *v48 = KeyPath;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = enum case for DynamicTypeSize.xxxLarge(_:);
  v50 = type metadata accessor for DynamicTypeSize();
  (*(*(v50 - 8) + 104))(v29, v49, v50);
  sub_1006B650C(&qword_1011A1490, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1006B5E90();
    sub_100020674(&qword_1011A14A0, &qword_1011A1440);
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v29, &qword_1011A1440);
    return sub_1000095E8(v15, &qword_10119E7B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006B52D8()
{
  v1 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell_shouldAnimateJiggle;
  v2 = v0[OBJC_IVAR____TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell_shouldAnimateJiggle];
  if (v2 != (sub_1006B55E4() & 1))
  {
    v3 = v0[v1];
    v4 = [v0 layer];
    if (v3 == 1)
    {
      v5 = sub_1006B5860(0.134);
      v6 = String._bridgeToObjectiveC()();
      [v4 addAnimation:v5 forKey:v6];

      v7 = [v0 layer];
      v8 = sub_1006B5860(0.142);
      v9 = String._bridgeToObjectiveC()();
      [v7 addAnimation:v8 forKey:v9];

      v10 = [v0 layer];
      v11 = sub_1006B5860(0.128);
      v15 = String._bridgeToObjectiveC()();
      [v10 addAnimation:v11 forKey:?];
    }

    else
    {
      v12 = String._bridgeToObjectiveC()();
      [v4 removeAnimationForKey:v12];

      v13 = [v0 layer];
      v14 = String._bridgeToObjectiveC()();
      [v13 removeAnimationForKey:v14];

      v11 = [v0 layer];
      v15 = String._bridgeToObjectiveC()();
      [v11 removeAnimationForKey:?];
    }
  }
}

uint64_t sub_1006B55E4()
{
  v1 = [v0 layer];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 animationForKey:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = [v0 layer];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 animationForKey:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = [v0 layer];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 animationForKey:v8];

  if (!v9)
  {
    return 0;
  }

  return 1;
}

id sub_1006B5860(double a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  v4 = v3;
  [v4 setDuration:a1];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v4 setFromValue:isa];

  v6 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v4 setToValue:v6];

  v7 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v8) = 1052266988;
  LODWORD(v9) = 1059145646;
  LODWORD(v10) = 1.0;
  v11 = [v7 initWithControlPoints:v8 :0.0 :v9 :v10];
  [v4 setTimingFunction:v11];

  LODWORD(v12) = 2139095040;
  [v4 setRepeatCount:v12];
  [v4 setAutoreverses:1];
  [v4 setRemovedOnCompletion:0];

  return v4;
}

uint64_t _s7PinCellVMa()
{
  result = qword_10119E6B0;
  if (!qword_10119E6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006B5A58()
{
  type metadata accessor for MusicPin();
  if (v0 <= 0x3F)
  {
    sub_10002EF7C();
    if (v1 <= 0x3F)
    {
      sub_100117C38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1006B5B28()
{
  result = qword_10119E738;
  if (!qword_10119E738)
  {
    sub_1001109D0(&qword_10119E708);
    sub_1006B5BE0();
    sub_100020674(&qword_10119E750, &qword_10119E730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E738);
  }

  return result;
}

unint64_t sub_1006B5BE0()
{
  result = qword_10119E740;
  if (!qword_10119E740)
  {
    sub_1001109D0(&qword_10119E700);
    sub_100020674(&qword_10119E748, &qword_10119E6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E740);
  }

  return result;
}

unint64_t sub_1006B5C98()
{
  result = qword_10119E778;
  if (!qword_10119E778)
  {
    sub_1001109D0(&qword_10119E718);
    sub_1001109D0(&qword_10119E708);
    sub_1006B5B28();
    swift_getOpaqueTypeConformance2();
    sub_1006B650C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E778);
  }

  return result;
}

uint64_t sub_1006B5DC0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    sub_1006B650C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006B5E90()
{
  result = qword_10119E7B8;
  if (!qword_10119E7B8)
  {
    sub_1001109D0(&qword_10119E7B0);
    sub_1006B5F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E7B8);
  }

  return result;
}

unint64_t sub_1006B5F1C()
{
  result = qword_10119E7C0;
  if (!qword_10119E7C0)
  {
    sub_1001109D0(&qword_10119E7C8);
    sub_1001109D0(&qword_10119E7D0);
    sub_1006B5FE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E7C0);
  }

  return result;
}

unint64_t sub_1006B5FE4()
{
  result = qword_10119E7D8;
  if (!qword_10119E7D8)
  {
    sub_1001109D0(&qword_10119E7D0);
    sub_1006B609C();
    sub_100020674(&qword_10119E820, &qword_10118F360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E7D8);
  }

  return result;
}

unint64_t sub_1006B609C()
{
  result = qword_10119E7E0;
  if (!qword_10119E7E0)
  {
    sub_1001109D0(&qword_10119E7E8);
    sub_1006B6154();
    sub_100020674(&qword_10119E810, &qword_10119E818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E7E0);
  }

  return result;
}

unint64_t sub_1006B6154()
{
  result = qword_10119E7F0;
  if (!qword_10119E7F0)
  {
    sub_1001109D0(&qword_10119E7F8);
    sub_1001109D0(&qword_10119E800);
    sub_1006B621C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E7F0);
  }

  return result;
}

unint64_t sub_1006B621C()
{
  result = qword_10119E808;
  if (!qword_10119E808)
  {
    sub_1001109D0(&qword_10119E800);
    sub_100020674(&unk_101199EA0, &qword_1011879C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E808);
  }

  return result;
}

unint64_t sub_1006B62D4()
{
  result = qword_10119E830;
  if (!qword_10119E830)
  {
    sub_1001109D0(&qword_10119E790);
    sub_1001109D0(&qword_10119E788);
    type metadata accessor for PlainButtonStyle();
    sub_100020674(&qword_10119E828, &qword_10119E788);
    sub_1006B650C(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_10119E838, &qword_10119E840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E830);
  }

  return result;
}

uint64_t sub_1006B644C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1003E4DE4(a1, v4, v5, v6);
}

uint64_t sub_1006B650C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006B6554()
{
  result = qword_10119E8A0;
  if (!qword_10119E8A0)
  {
    sub_1001109D0(&qword_10119E860);
    sub_10024E84C();
    sub_100020674(&qword_10119E8A8, &qword_10119E898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E8A0);
  }

  return result;
}

unint64_t sub_1006B663C()
{
  result = qword_10119E8C8;
  if (!qword_10119E8C8)
  {
    sub_1001109D0(&qword_10119E8C0);
    swift_getOpaqueTypeConformance2();
    sub_1006B650C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E8C8);
  }

  return result;
}

unint64_t sub_1006B6710()
{
  result = qword_10119E908;
  if (!qword_10119E908)
  {
    sub_1001109D0(&qword_10119E8F8);
    sub_100239428();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E908);
  }

  return result;
}

unint64_t sub_1006B67C8()
{
  result = qword_10119E920;
  if (!qword_10119E920)
  {
    sub_1001109D0(&qword_10119E8D8);
    sub_1001109D0(&qword_101189260);
    sub_1001109D0(&qword_10119E910);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_10119E918, &qword_10119E910);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E920);
  }

  return result;
}

unint64_t sub_1006B694C()
{
  result = qword_10119E928;
  if (!qword_10119E928)
  {
    sub_1001109D0(&qword_10119E8E8);
    sub_1001109D0(&qword_10119E8D8);
    sub_1006B67C8();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E928);
  }

  return result;
}

void sub_1006B6A40(uint64_t a1)
{
  v2 = type metadata accessor for AppInterfaceContext.Activity(0);
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  __chkstk_darwin(v2);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v67 = &v63 - v6;
  __chkstk_darwin(v7);
  v9 = &v63 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v63 - v15;
  sub_1006B8AA8(a1, &v78);
  if (v83)
  {
    if (v83 == 1)
    {
      v17 = v78;
      if (v78)
      {
        v18 = qword_10117FC58;

        if (v18 != -1)
        {
          swift_once();
        }

        sub_1000060E4(v10, qword_101219468);

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *&v73 = v22;
          *v21 = 136446210;
          v23 = *(*v17 + 240);

          v25 = v23(v24);
          v27 = v26;

          v28 = sub_1000105AC(v25, v27, &v73);

          *(v21 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v19, v20, "PlaybackController present - now playing, videoContext=%{public}s", v21, 0xCu);
          sub_10000959C(v22);
        }

        v29 = v68;
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Transitioning to fullscreen video…", v32, 2u);
        }

        *(v29 + 32) = 1;
        v33 = (*(*v17 + 216))();
        v34 = swift_allocObject();
        swift_weakInit();
        v35 = swift_allocObject();
        *(v35 + 16) = v17;
        *(v35 + 24) = v34;
        *&v75 = sub_1006B8B04;
        *(&v75 + 1) = v35;
        *&v73 = _NSConcreteStackBlock;
        *(&v73 + 1) = 1107296256;
        *&v74 = sub_10002BC98;
        *(&v74 + 1) = &unk_1010BABB8;
        v36 = _Block_copy(&v73);

        [v33 enterFullScreenWithCompletion:v36];

        _Block_release(v36);
      }

      else if (*(v68 + 16))
      {
        v56 = &v9[*(sub_10010FC20(&unk_1011841E0) + 48)];
        *v9 = 1;
        type metadata accessor for AppInterfaceContext.Activity.Destination(0);
        swift_storeEnumTagMultiPayload();
        *v56 = 0;
        v56[1] = 0;
        swift_storeEnumTagMultiPayload();
        v57 = v67;
        sub_100115B50(v9, v67);
        sub_100115B50(v57, v4);
        v58 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v59 = swift_allocObject();
        *(v59 + 16) = 0;
        *(v59 + 24) = 0;
        sub_100115BB4(v4, v59 + v58);

        sub_100706900(v57, sub_100115C18, v59);

        sub_100115C8C(v57);
        sub_100115C8C(v9);
      }
    }

    else
    {
      v84 = v78;
      v85 = v79;
      *&v86 = v80;
      sub_100663E60(&v84, &v73);
      if (*(&v74 + 1))
      {
        sub_100059A8C(&v73, v69);
        sub_100008FE4(v69, &v73);
        BYTE8(v75) = 0;
        static SubscriptionUpsellPresenter.present(for:)(&v73);
        sub_100309980(&v73);
        sub_10000959C(v69);
        v55 = &v84;
      }

      else
      {
        sub_1000095E8(&v84, &qword_10118B990);
        v55 = &v73;
      }

      sub_1000095E8(v55, &qword_10118B990);
    }
  }

  else
  {
    v67 = v13;
    v86 = v80;
    v87 = v81;
    v88 = v82;
    v84 = v78;
    v85 = v79;
    v37 = Logger.playbackController.unsafeMutableAddressor();
    v38 = *(v11 + 16);
    v39 = v10;
    v38(v16, v37, v10);
    sub_10053A574(&v84, &v73);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    sub_100344A84(&v84);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v65 = v37;
      v66 = v11;
      v43 = v42;
      v72 = swift_slowAlloc();
      v64 = v10;
      v44 = v72;
      *v43 = 136446210;
      v75 = v86;
      v76 = v87;
      v77 = v88;
      v73 = v84;
      v74 = v85;
      sub_10053A574(&v84, v69);
      v45 = String.init<A>(describing:)();
      v47 = sub_1000105AC(v45, v46, &v72);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Presenting alert=%{public}s", v43, 0xCu);
      sub_10000959C(v44);
      v39 = v64;

      v37 = v65;
      v11 = v66;
    }

    v48 = *(v11 + 8);
    v48(v16, v39);
    v49 = v67;
    v50 = *(v68 + 16);
    if (v50)
    {
      v51 = *(v50 + 32);
      if (v51 >= 0)
      {
        v52 = v51;
      }

      else
      {
        v52 = (v51 & 0x7FFFFFFFFFFFFFFFLL);
      }

      memset(v69, 0, sizeof(v69));
      v70 = 0;
      v71 = xmmword_100EBCEF0;
      v53 = (v51 & 0x7FFFFFFFFFFFFFFFLL);
      PresentationSource.init(viewController:position:)(v52, v69, &v73);
      v54 = Alert.uiAlertController.getter();
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v54, 1, 1, 0, 0);

      sub_100344A84(&v84);
      sub_10012BA6C(&v73);
    }

    else
    {
      v38(v67, v37, v39);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "No presentation source", v62, 2u);

        sub_100344A84(&v84);
      }

      else
      {
        sub_100344A84(&v84);
      }

      v48(v49, v39);
    }
  }
}

void sub_1006B7354(uint64_t a1)
{
  v1 = (*(*a1 + 216))();
  sub_1006B7494();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 32) = 0;
  }

  if (qword_10117FC58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101219468);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Transition to fullscreen video complete", v6, 2u);
  }
}

id sub_1006B7494()
{
  v1 = v0;
  if (qword_10117FC58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101219468);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "fullscreenCompletion called - set showplaybackcontrols to true", v5, 2u);
  }

  return [v1 setShowsPlaybackControls:1];
}

uint64_t sub_1006B7590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for URL();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_10010FC20(&qword_10118A418);
  v5[16] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_10118A420);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v10;
  v5[22] = v9;

  return _swift_task_switch(sub_1006B7798, v10, v9);
}

uint64_t sub_1006B7798()
{
  v38 = v0;
  v1 = *(v0[6] + 16);
  if (v1 && (v2 = *(v1 + 16), (v0[23] = v2) != 0))
  {
    v3 = v0[16];
    v4 = type metadata accessor for ReferrerInfo();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_1006B7B14;
    v6 = v0[19];
    v7 = v0[16];
    v8 = v0[7];

    return MusicPageProvider.openURL(_:referrerInfo:)(v6, v8, v7);
  }

  else
  {
    v9 = v0[15];
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[7];

    v16 = Logger.playbackController.unsafeMutableAddressor();
    (*(v11 + 16))(v9, v16, v10);
    (*(v14 + 16))(v12, v15, v13);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[15];
    v22 = v0[12];
    v21 = v0[13];
    v23 = v0[11];
    v25 = v0[8];
    v24 = v0[9];
    if (v19)
    {
      v36 = v0[12];
      v26 = swift_slowAlloc();
      v34 = v18;
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      sub_1006B8A60(&qword_1011A4850, &type metadata accessor for URL);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v20;
      v30 = v29;
      (*(v24 + 8))(v23, v25);
      v31 = sub_1000105AC(v28, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v17, v34, "Unable to perform segue with url.  App Interface context is missing. url='%s'", v26, 0xCu);
      sub_10000959C(v27);

      (*(v21 + 8))(v35, v36);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      (*(v21 + 8))(v20, v22);
    }

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_1006B7B14()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 200) = v0;

  sub_1000095E8(v3, &qword_10118A418);
  if (v0)
  {
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_1006B7D2C;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_1006B7C74;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1006B7C74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006B7D2C()
{
  v34 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  v8 = Logger.playbackController.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v8, v3);
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v30 = v0[13];
    v31 = v0[12];
    v32 = v0[14];
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v14 = 136315394;
    sub_1006B8A60(&qword_1011A4850, &type metadata accessor for URL);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000105AC(v15, v17, &v33);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000105AC(v19, v20, &v33);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unable perform segue with url. url='%s' error='%s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];
    v26 = v0[9];
    v25 = v0[10];
    v27 = v0[8];

    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1006B8068()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1006B80F0()
{
  if (qword_10117F600 != -1)
  {
    swift_once();
  }
}

id sub_1006B814C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = qword_101218AD8;
  qword_10119E958 = qword_101218AD8;

  return v1;
}

id sub_1006B81B0@<X0>(void *a1@<X8>)
{
  if (qword_10117FC50 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10119E958;
  *a1 = qword_10119E958;

  return v2;
}

uint64_t sub_1006B8220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1006B8A60(&qword_10119EA90, type metadata accessor for PlaybackController);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.playbackController.getter()
{
  sub_1006B82F0();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_1006B82F0()
{
  result = qword_10119E960;
  if (!qword_10119E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E960);
  }

  return result;
}

void (*EnvironmentValues.playbackController.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1006B82F0();
  EnvironmentValues.subscript.getter();
  return sub_1006B83E0;
}

void sub_1006B83E0(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    EnvironmentValues.subscript.setter();
    v5 = *a1;
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }
}

uint64_t sub_1006B8484()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219468);
  sub_1000060E4(v0, qword_101219468);
  return static Logger.music(_:)();
}

uint64_t sub_1006B84F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = v9;
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Logger.playbackController.unsafeMutableAddressor();
  v18 = *(v14 + 16);
  v39 = v13;
  v18(v16, v17, v13);
  v42 = a1;
  v43 = v8;
  v19 = v7;
  v38 = *(v8 + 16);
  v38(v12, a1, v7);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v2;
    v23 = v22;
    v35 = swift_slowAlloc();
    v44 = v35;
    *v23 = 136446210;
    sub_1006B8A60(&qword_1011A4850, &type metadata accessor for URL);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v6;
    v26 = v25;
    (*(v43 + 8))(v12, v19);
    v27 = sub_1000105AC(v24, v26, &v44);
    v6 = v36;

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Performing segue with URL=%{public}s", v23, 0xCu);
    sub_10000959C(v35);

    v2 = v37;
  }

  else
  {

    (*(v43 + 8))(v12, v19);
  }

  (*(v14 + 8))(v16, v39);
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  v29 = v41;
  v38(v41, v42, v19);
  type metadata accessor for MainActor();

  v30 = static MainActor.shared.getter();
  v31 = v43;
  v32 = (*(v43 + 80) + 40) & ~*(v43 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = v30;
  *(v33 + 3) = &protocol witness table for MainActor;
  *(v33 + 4) = v2;
  (*(v31 + 32))(&v33[v32], v29, v19);
  sub_1001F4CB8(0, 0, v6, &unk_100EDD858, v33);
}

uint64_t sub_1006B8968(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1006B7590(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1006B8A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006B8B0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v7 = 0xD000000000000010;
        v8 = 0x8000000100E3C6C0;
      }

      else
      {
        v7 = 0x7473696C79616C70;
        v8 = 0xEC00000065707954;
      }
    }

    else if (a1 == 4)
    {
      v8 = 0xE500000000000000;
      v7 = 0x656C746974;
    }

    else
    {
      v7 = 0x79616C507473616CLL;
      v8 = 0xEE00657461446465;
    }
  }

  else
  {
    v3 = 0x44657361656C6572;
    v4 = 0xEB00000000657461;
    if (a1 != 2)
    {
      v3 = 1918985593;
      v4 = 0xE400000000000000;
    }

    v5 = 0xD000000000000010;
    v6 = 0x8000000100E3C680;
    if (!a1)
    {
      v5 = 0x614E747369747261;
      v6 = 0xEA0000000000656DLL;
    }

    if (a1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (v2 <= 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v10 = 0x8000000100E3C6C0;
        if (v7 != 0xD000000000000010)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v10 = 0xEC00000065707954;
        if (v7 != 0x7473696C79616C70)
        {
LABEL_46:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v10 = 0xE500000000000000;
      if (v7 != 0x656C746974)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v10 = 0xEE00657461446465;
      if (v7 != 0x79616C507473616CLL)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v10 = 0xEB00000000657461;
      if (v7 != 0x44657361656C6572)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (v7 != 1918985593)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x614E747369747261;
    }

    if (a2)
    {
      v10 = 0x8000000100E3C680;
    }

    else
    {
      v10 = 0xEA0000000000656DLL;
    }

    if (v7 != v9)
    {
      goto LABEL_46;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_46;
  }

  v11 = 1;
LABEL_47:

  return v11 & 1;
}

uint64_t sub_1006B8DB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002ALL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD000000000000027;
    }

    if (v3)
    {
      v6 = "idgetRefreshTTLBagValue";
    }

    else
    {
      v6 = "ShortcutItem.🌚";
    }
  }

  else if (a1 == 2)
  {
    v6 = "chartsWidgetRefreshTTLBagValue";
    v5 = 0xD000000000000022;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = "recentlyPlayedRemoteQueriesEnabledBagValue";
    }

    else
    {
      v4 = "recentlyPlayedRemoteQueriesEnabledOverride";
    }

    v6 = (v4 - 32);
    v5 = 0xD00000000000002ALL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD00000000000001ELL;
    }

    else
    {
      v2 = 0xD000000000000027;
    }

    if (a2)
    {
      v7 = "idgetRefreshTTLBagValue";
    }

    else
    {
      v7 = "ShortcutItem.🌚";
    }
  }

  else if (a2 == 2)
  {
    v7 = "chartsWidgetRefreshTTLBagValue";
    v2 = 0xD000000000000022;
  }

  else
  {
    v7 = "RefreshTTLBagValue";
    if (a2 != 3)
    {
      v7 = "moteQueriesEnabledBagValue";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1006B8F0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000029;
  v3 = "llPlaylists";
  v4 = a1;
  if (a1 > 3u)
  {
    v10 = "ansliterationSing";
    v11 = 0xD00000000000003BLL;
    if (a1 != 6)
    {
      v11 = 0xD000000000000027;
      v10 = "anslationAndTransliteration";
    }

    v12 = "Tooltip.LyricsTranslation";
    v13 = 0xD00000000000002DLL;
    if (a1 != 4)
    {
      v13 = 0xD000000000000031;
      v12 = "Tooltip.LyricsTransliteration";
    }

    if (a1 <= 5u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v4 <= 5)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v5 = 0xD00000000000002CLL;
    v6 = "com.apple.Music.Tooltip.Sing";
    if (a1 != 2)
    {
      v6 = "Tooltip.SharePlayTogether";
    }

    v7 = "Tooltip.FavoritingNowPlaying";
    if (a1)
    {
      v5 = 0xD00000000000001CLL;
    }

    else
    {
      v7 = "llPlaylists";
    }

    if (a1 <= 1u)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xD000000000000029;
    }

    if (v4 <= 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "ansliterationSing";
        v2 = 0xD00000000000003BLL;
      }

      else
      {
        v3 = "anslationAndTransliteration";
        v2 = 0xD000000000000027;
      }
    }

    else if (a2 == 4)
    {
      v3 = "Tooltip.LyricsTranslation";
      v2 = 0xD00000000000002DLL;
    }

    else
    {
      v3 = "Tooltip.LyricsTransliteration";
      v2 = 0xD000000000000031;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "com.apple.Music.Tooltip.Sing";
    }

    else
    {
      v3 = "Tooltip.SharePlayTogether";
    }
  }

  else if (a2)
  {
    v3 = "Tooltip.FavoritingNowPlaying";
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD00000000000002CLL;
  }

  if (v8 == v2 && (v9 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

uint64_t sub_1006B910C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0x655073746E696F70;
    v13 = 0xED000068636E4972;
    if (a1 != 2)
    {
      v12 = 0x6165724165666173;
      v13 = 0xE800000000000000;
    }

    v14 = 0x69536E6565726373;
    if (a1)
    {
      v11 = 0xEA0000000000657ALL;
    }

    else
    {
      v14 = 1701667182;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x8000000100E3BF60;
    v4 = 0xD000000000000013;
    v5 = 0xE800000000000000;
    v6 = 0x6863746F4E736168;
    if (a1 != 7)
    {
      v6 = 0xD000000000000010;
      v5 = 0x8000000100E3BF80;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x615272656E726F63;
    v8 = 0xEC00000073756964;
    if (a1 != 4)
    {
      v7 = 0x6D6F696469;
      v8 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xED000068636E4972;
        if (v9 != 0x655073746E696F70)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x6165724165666173)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xEA0000000000657ALL;
      if (v9 != 0x69536E6565726373)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1701667182)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xEC00000073756964;
      if (v9 != 0x615272656E726F63)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x6D6F696469)
      {
LABEL_52:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0x8000000100E3BF60;
    if (v9 != 0xD000000000000013)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x6863746F4E736168)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0x8000000100E3BF80;
    if (v9 != 0xD000000000000010)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_1006B9404(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006873656D6275;
  v3 = 0xD000000000000014;
  v4 = 0x53676E697373696DLL;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x53676E697373696DLL;
    }

    if (v5 == 2)
    {
      v7 = 0x8000000100E3BE50;
    }

    else
    {
      v7 = 0xEE006873656D6275;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0xD000000000000014;
    }

    if (v5)
    {
      v7 = 0x8000000100E3BE30;
    }

    else
    {
      v7 = 0x8000000100E3BE10;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000014;
    v2 = 0x8000000100E3BE50;
  }

  v8 = 0x8000000100E3BE30;
  if (a2)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v8 = 0x8000000100E3BE10;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1006B9530(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00657261757153;
  v3 = 0xD000000000000012;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000100E3C510;
    }

    else
    {
      v6 = 0x8000000100E3C530;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x6F54657261757173;
    }

    if (v4)
    {
      v6 = 0x8000000100E3C4F0;
    }

    else
    {
      v6 = 0xEE00657261757153;
    }
  }

  v7 = 0x8000000100E3C510;
  v8 = 0xD000000000000016;
  if (a2 == 2)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v7 = 0x8000000100E3C530;
  }

  if (a2)
  {
    v2 = 0x8000000100E3C4F0;
  }

  else
  {
    v3 = 0x6F54657261757173;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1006B965C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "chartsWidgetRefreshTTLSeconds";
      v3 = 0xD000000000000024;
    }

    else
    {
      v4 = "istRefreshTTLSeconds";
      v3 = 0xD00000000000001BLL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = 0xD000000000000026;
    }

    if (v2)
    {
      v4 = "dgetsRefreshTTLSeconds";
    }

    else
    {
      v4 = "eviewed";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
    }

    if (a2 == 2)
    {
      v6 = "chartsWidgetRefreshTTLSeconds";
    }

    else
    {
      v6 = "istRefreshTTLSeconds";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = 0xD000000000000026;
    }

    if (a2)
    {
      v6 = "dgetsRefreshTTLSeconds";
    }

    else
    {
      v6 = "eviewed";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1006B978C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ited";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "com.apple.Music.FacebookStories";
      v4 = 0xD00000000000001FLL;
    }

    else
    {
      v5 = "com.apple.Music.SnapchatStories";
      v4 = 0xD00000000000001DLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000001FLL;
    }

    else
    {
      v4 = 0xD000000000000020;
    }

    if (v3)
    {
      v5 = "InstagramStories";
    }

    else
    {
      v5 = "ited";
    }
  }

  if (a2 > 1u)
  {
    v2 = "com.apple.Music.FacebookStories";
    v6 = "com.apple.Music.SnapchatStories";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD00000000000001FLL;
    }

    else
    {
      v8 = 0xD00000000000001DLL;
    }
  }

  else
  {
    v6 = "InstagramStories";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000001FLL;
    }

    else
    {
      v8 = 0xD000000000000020;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_1006B98A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x646F736970457674;
  v5 = 0xE900000000000065;
  if (a1 != 6)
  {
    v4 = 0x766F4D636973756DLL;
    v5 = 0xEA00000000006569;
  }

  v6 = 0xE700000000000000;
  v7 = 0x6E6F6974617473;
  if (a1 != 4)
  {
    v7 = 0x646956636973756DLL;
    v6 = 0xEA00000000006F65;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x747369747261;
  if (a1 != 2)
  {
    v9 = 0x7473696C79616C70;
    v8 = 0xE800000000000000;
  }

  v10 = 0x6D75626C61;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v10 = 1735290739;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE900000000000065;
        if (v11 != 0x646F736970457674)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEA00000000006569;
        if (v11 != 0x766F4D636973756DLL)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x6E6F6974617473)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEA00000000006F65;
      if (v11 != 0x646956636973756DLL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x747369747261)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x7473696C79616C70)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x6D75626C61)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v11 != 1735290739)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_1006B9B20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x61656C655277656ELL;
  v5 = 0xEB00000000736573;
  v6 = 0x736E6F6974617473;
  v7 = 0xEE00756F59726F46;
  if (a1 != 4)
  {
    v6 = 0xD000000000000015;
    v7 = 0x8000000100E3C9C0;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x59726F466564616DLL;
  v9 = 0xEA0000000000756FLL;
  if (a1 != 1)
  {
    v8 = 0x726F4673646F6F6DLL;
    v9 = 0xEB00000000756F59;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x736B636950706F74;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x736B636950706F74)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xEA0000000000756FLL;
      if (v10 != 0x59726F466564616DLL)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v13 = 0x726F4673646F6F6DLL;
    v14 = 7696217;
LABEL_29:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v10 != v13)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v13 = 0x61656C655277656ELL;
    v14 = 7562611;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v12 = 0xEE00756F59726F46;
    if (v10 != 0x736E6F6974617473)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v12 = 0x8000000100E3C9C0;
    if (v10 != 0xD000000000000015)
    {
LABEL_34:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v15 = 1;
LABEL_35:

  return v15 & 1;
}

uint64_t sub_1006B9D38(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000651A8;

  return v5();
}

uint64_t sub_1006B9E20(uint64_t a1, uint64_t a2)
{
  result = UIApp;
  if (UIApp)
  {
    if ([UIApp launchedToTest])
    {
    }

    else
    {
      if (qword_10117F7B8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000060E4(v5, qword_101218E48);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v14[0] = v9;
        *v8 = 136446210;
        v15 = a1;
        v16 = a2;

        sub_10010FC20(&qword_1011815E0);
        v10 = String.init<A>(describing:)();
        v12 = sub_1000105AC(v10, v11, v14);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Persisted tab identifier=%{public}s", v8, 0xCu);
        sub_10000959C(v9);
      }

      if (a2)
      {
        v13 = &type metadata for String;
      }

      else
      {
        a1 = 0;
        v13 = 0;
        v17 = 0;
      }

      v15 = a1;
      v16 = a2;
      v18 = v13;
      v14[0] = 0xD000000000000019;
      v14[1] = 0x8000000100E55080;
      sub_100009838();
      return NSUserDefaults.subscript.setter(&v15, v14, &type metadata for String);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006BA068()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v88 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_10003FFC0();
  v9 = v8;

  if (v9)
  {
LABEL_2:
    v10 = OBJC_IVAR____TtC5Music16TabBarController_canRestoreLastSelectedTab;
    if (v1[OBJC_IVAR____TtC5Music16TabBarController_canRestoreLastSelectedTab] != 1)
    {

      return;
    }

    v11 = OBJC_IVAR____TtC5Music16TabBarController_tabSelectionTimeout;
    if (!*&v1[OBJC_IVAR____TtC5Music16TabBarController_tabSelectionTimeout])
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      v14 = swift_allocObject();
      *(v14 + 16) = &unk_100EDDA00;
      *(v14 + 24) = v13;
      v15 = v1;
      v16 = static Task<>.delayed(by:priority:task:)(v5, &unk_100EBE9E0, v14, &type metadata for () + 8, 1.0);

      sub_1000095E8(v5, &unk_101181520);
      v17 = *&v1[v11];
      *&v1[v11] = v16;
      if (v17)
      {

        sub_10010FC20(&qword_1011824A0);
        Task.cancel()();
      }
    }

    if (qword_10117F7B8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_101218E48);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v93 = v11;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v94 = v92;
      *v22 = 136446210;

      v23 = ObjectType;
      v24 = sub_1000105AC(v7, v9, &v94);

      *(v22 + 4) = v24;
      ObjectType = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Attempting to select persisted tab identifier from defaults: %{public}s", v22, 0xCu);
      sub_10000959C(v92);
    }

    v100._countAndFlagsBits = v7;
    v100._object = v9;
    v25 = sub_10003F3A8(v100);
    if (v25 > 3)
    {
      if (v25 > 5)
      {
        if (v25 != 6)
        {
LABEL_37:

          v33 = String._bridgeToObjectiveC()();

          v34 = [v1 tabForIdentifier:v33];

          v35 = [v1 traitCollection];
          v36 = [v35 userInterfaceIdiom];

          if (v36 == 1 && (v37 = [v1 traitCollection], v38 = objc_msgSend(v37, "horizontalSizeClass"), v37, v38 == 2))
          {
            if (!v34)
            {
              goto LABEL_63;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v39 = v34;
              v40 = Logger.logObject.getter();
              LODWORD(v91) = static os_log_type_t.default.getter();
              v41 = os_log_type_enabled(v40, v91);
              v92 = v39;
              if (v41)
              {
                v42 = swift_slowAlloc();
                v89 = v40;
                v43 = v42;
                v90 = swift_slowAlloc();
                v94 = v90;
                *v43 = 136446210;
                v96 = v34;
                v44 = v39;
                sub_10010FC20(&unk_10118DAF0);
                v45 = String.init<A>(describing:)();
                v47 = ObjectType;
                v48 = sub_1000105AC(v45, v46, &v94);

                v49 = v43;
                *(v43 + 4) = v48;
                ObjectType = v47;
                v40 = v89;
                _os_log_impl(&_mh_execute_header, v89, v91, "Persisted selected tab is a group (%{public}s), and we're not in iPad compact UI… attempting to selected default child", v49, 0xCu);
                sub_10000959C(v90);
              }

              v50 = sub_1002D2600();
              if (v50)
              {
                v51 = v50;
                v52 = v50;
                v53 = v92;

                v34 = v52;
                v54 = Logger.logObject.getter();
                v55 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v54, v55))
                {
                  v56 = swift_slowAlloc();
                  v90 = v56;
                  v91 = swift_slowAlloc();
                  v94 = v91;
                  *v56 = 136446210;
                  v34 = v34;
                  v57 = [v34 description];
                  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  LODWORD(v89) = v55;
                  v59 = v58;
                  v61 = v60;

                  v62 = sub_1000105AC(v59, v61, &v94);

                  v63 = v90;
                  *(v90 + 1) = v62;
                  _os_log_impl(&_mh_execute_header, v54, v89, "Found default child tab=%{public}s", v63, 0xCu);
                  sub_10000959C(v91);
                }

                else
                {
                }

LABEL_48:
                v1[v10] = 0;
                v64 = *&v1[v93];
                *&v1[v93] = 0;
                v65 = v51;
                if (v64)
                {
                  sub_10010FC20(&qword_1011824A0);
                  Task.cancel()();
                }

                [v1 setSelectedTab:v34];
                v66 = v65;
                v67 = Logger.logObject.getter();
                v68 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v67, v68))
                {
                  v69 = swift_slowAlloc();
                  v70 = swift_slowAlloc();
                  v94 = v70;
                  *v69 = 136446210;
                  v71 = v66;
                  v72 = [v34 description];
                  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v75 = v74;

                  v76 = sub_1000105AC(v73, v75, &v94);

                  *(v69 + 4) = v76;
                  _os_log_impl(&_mh_execute_header, v67, v68, "Successfully restored selected tab to %{public}s", v69, 0xCu);
                  sub_10000959C(v70);

                  return;
                }

                goto LABEL_66;
              }

              v78 = v92;

LABEL_63:
              v79 = v1;

              v67 = Logger.logObject.getter();
              v80 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v67, v80))
              {
                v81 = swift_slowAlloc();
                v94 = swift_slowAlloc();
                *v81 = 136446466;
                v82 = sub_1000105AC(v7, v9, &v94);

                *(v81 + 4) = v82;
                *(v81 + 12) = 2082;
                v97.receiver = v79;
                v97.super_class = ObjectType;
                v83 = objc_msgSendSuper2(&v97, "tabs");
                sub_100009F78(0, &qword_101181F70);
                static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v84 = Array.description.getter();
                v86 = v85;

                v87 = sub_1000105AC(v84, v86, &v94);

                *(v81 + 14) = v87;
                _os_log_impl(&_mh_execute_header, v67, v80, "Could not find persisted tab identifier %{public}s in current tabs=%{public}s", v81, 0x16u);
                swift_arrayDestroy();
              }

              else
              {
                swift_bridgeObjectRelease_n();
              }

LABEL_66:

              return;
            }
          }

          else if (!v34)
          {
            goto LABEL_63;
          }

          v51 = v34;
          goto LABEL_48;
        }

        v30 = 0x7473696C79616C70;
        v31 = 0xE900000000000073;
      }

      else
      {
        if (v25 == 4)
        {
          v30 = 0x686372616573;
        }

        else
        {
          v30 = 0x736F65646976;
        }

        v31 = 0xE600000000000000;
      }
    }

    else
    {
      v26 = 0x7972617262696CLL;
      v27 = 0xE700000000000000;
      v28 = 0xE600000000000000;
      v29 = 0x6573776F7262;
      if (v25 != 2)
      {
        v29 = 0x6F69646172;
        v28 = 0xE500000000000000;
      }

      if (v25)
      {
        v26 = 0x6F4E6E657473696CLL;
        v27 = 0xE900000000000077;
      }

      if (v25 <= 1)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      if (v25 <= 1)
      {
        v31 = v27;
      }

      else
      {
        v31 = v28;
      }
    }

    v94 = 0xD000000000000014;
    v95 = 0x8000000100E3E560;
    v32 = v31;
    String.append(_:)(*&v30);

    v7 = v94;
    v9 = v95;
    goto LABEL_37;
  }

  static ApplicationCapabilities.shared.getter(v98);
  sub_100014984(v98);
  if (v99 <= 3u)
  {
    if (v99 > 1u)
    {
      if (v99 == 2)
      {
        v9 = 0xE600000000000000;
        v7 = 0x6573776F7262;
      }

      else
      {
        v9 = 0xE500000000000000;
        v7 = 0x6F69646172;
      }
    }

    else if (v99)
    {
      v7 = 0x6F4E6E657473696CLL;
      v9 = 0xE900000000000077;
    }

    else
    {
      v7 = 0x7972617262696CLL;
      v9 = 0xE700000000000000;
    }

    goto LABEL_2;
  }

  if (v99 <= 5u)
  {
    v9 = 0xE600000000000000;
    if (v99 == 4)
    {
      v7 = 0x686372616573;
    }

    else
    {
      v7 = 0x736F65646976;
    }

    goto LABEL_2;
  }

  if (v99 == 6)
  {
    v7 = 0x7473696C79616C70;
    v9 = 0xE900000000000073;
    goto LABEL_2;
  }

  v1[OBJC_IVAR____TtC5Music16TabBarController_canRestoreLastSelectedTab] = 0;
  v77 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_tabSelectionTimeout];
  *&v1[OBJC_IVAR____TtC5Music16TabBarController_tabSelectionTimeout] = 0;
  if (v77)
  {
    sub_10010FC20(&qword_1011824A0);
    Task.cancel()();
  }
}

unint64_t sub_1006BAD7C()
{
  result = sub_1006BDF60([v0 selectedIndex]);
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result viewControllers];
  sub_100009F78(0, &qword_101183D40);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_11:

    return 0;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_4:
  v6 = __OFSUB__(v5, 1);
  result = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v7 = sub_10004056C(result, v4);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v4 + 8 * result + 32);
LABEL_9:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006BAE98()
{
  v1 = OBJC_IVAR____TtC5Music16TabBarController____lazy_storage___libraryImportObserver;
  if (*&v0[OBJC_IVAR____TtC5Music16TabBarController____lazy_storage___libraryImportObserver])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music16TabBarController____lazy_storage___libraryImportObserver];
  }

  else
  {
    type metadata accessor for LibraryImport.Observer(0);
    v3 = swift_allocObject();
    v2 = sub_1006CB15C(v0, v3, &off_1010BAD18, sub_1006CCA74);
    *&v0[v1] = v2;
  }

  return v2;
}

unint64_t sub_1006BAF5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v4 - 8);
  v6 = v34 - v5;
  v7 = *a1;
  v8 = [*a1 identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v35[0] = v9;
  v35[1] = v11;
  v34[0] = 0xD000000000000014;
  v34[1] = 0x8000000100E3E560;
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v14 = v13;
  v16 = v15;
  result = sub_1000095E8(v6, &unk_101182EA0);
  if (v16)
  {

    goto LABEL_7;
  }

  v18 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v18 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v18 >= v14 >> 14)
  {
    String.subscript.getter();

    v19 = static String._fromSubstring(_:)();
    v21 = v20;

    v36._countAndFlagsBits = v19;
    v36._object = v21;
    result = sub_10003F3A8(v36);
    if (result != 7)
    {
LABEL_12:
      *a2 = result;
      return result;
    }

LABEL_7:
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000060E4(v22, qword_101218E00);
    v23 = v7;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35[0] = v27;
      *v26 = 136446210;
      v28 = v23;
      v29 = [v28 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_1000105AC(v30, v32, v35);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to parse root tab=%{public}s", v26, 0xCu);
      sub_10000959C(v27);
    }

    result = 7;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1006BB2E8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedApplication];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v9[4] = sub_1006CC760;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10002BC98;
  v9[3] = &unk_1010BAFB0;
  v7 = _Block_copy(v9);
  v8 = a2;

  [v5 _performBlockAfterCATransactionCommits:v7];
  _Block_release(v7);
}

uint64_t sub_1006BB3FC(uint64_t result, uint64_t a2)
{
  if (*(result + OBJC_IVAR____TtC5Music16TabBarController__pendingTabIdentifiers))
  {

    v4 = sub_10001F358(v3, a2);

    if (v4)
    {

      return sub_1000328A0(v5);
    }
  }

  return result;
}

void sub_1006BB464(unsigned __int8 a1)
{
  if (a1 != 7)
  {
    v2 = v1;
    v4 = [v1 selectedTab];
    if (!v4 || (v5 = v4, v6 = sub_10003F0FC(), v5, v6 == 7) || (sub_10001777C(a1, v6) & 1) == 0)
    {
      if (qword_10117F7B8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000060E4(v7, qword_101218E48);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v47[0] = v11;
        *v10 = 136446210;
        v12 = String.init<A>(describing:)();
        v14 = sub_1000105AC(v12, v13, v47);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to selected tab for identifier=%{public}s", v10, 0xCu);
        sub_10000959C(v11);
      }

      v15 = sub_1006BB8E4(a1);
      if (v15)
      {
        v16 = v15;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v47[0] = v20;
          *v19 = 136446210;
          v21 = v16;
          v22 = [v21 description];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          v26 = sub_1000105AC(v23, v25, v47);

          *(v19 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v17, v18, "Selecting tab=%{public}s", v19, 0xCu);
          sub_10000959C(v20);
        }

        [v2 setSelectedTab:v16];
      }

      else
      {
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v47[0] = v30;
          *v29 = 136446210;
          v31 = String.init<A>(describing:)();
          v33 = sub_1000105AC(v31, v32, v47);

          *(v29 + 4) = v33;
          _os_log_impl(&_mh_execute_header, v27, v28, "Unable to find tab or viewController for identifier=%{public}s", v29, 0xCu);
          sub_10000959C(v30);
        }
      }

      v34 = [v2 view];
      if (v34)
      {
        v35 = v34;
        v36 = UIView.noticePresenter.getter();

        if (v36)
        {
          sub_100062AB8();
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v45 = (*(*v36 + 304))(v47);
          v46[3] = v38;
          v46[4] = v40;
          v46[5] = v42;
          v46[6] = v44;
          v45(v47, 0);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void *sub_1006BB8E4(unsigned __int8 a1)
{
  v2 = v1;
  v27.receiver = v2;
  v27.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v27, "tabs");
  sub_100009F78(0, &qword_101181F70);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = a1;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007E914C(v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 identifier];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = 0x736F65646976;
      if (v8 == 5)
      {
        v17 = 0xE600000000000000;
      }

      else
      {
        v16 = 0x7473696C79616C70;
        v17 = 0xE900000000000073;
      }

      v18 = 0x6F69646172;
      if (v8 != 3)
      {
        v18 = 0x686372616573;
      }

      v19 = 0xE500000000000000;
      if (v8 != 3)
      {
        v19 = 0xE600000000000000;
      }

      if (v8 <= 4)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = 0xE900000000000077;
      v21 = 0x6F4E6E657473696CLL;
      if (v8 != 1)
      {
        v21 = 0x6573776F7262;
        v20 = 0xE600000000000000;
      }

      if (!v8)
      {
        v21 = 0x7972617262696CLL;
        v20 = 0xE700000000000000;
      }

      if (v8 <= 2)
      {
        v22 = v21;
      }

      else
      {
        v22 = v16;
      }

      if (v8 <= 2)
      {
        v23 = v20;
      }

      else
      {
        v23 = v17;
      }

      v24 = v23;
      String.append(_:)(*&v22);

      a1 = 0xE3E560u;
      if (v13 == 0xD000000000000014 && v15 == 0x8000000100E3E560)
      {

        return v10;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {

        return v10;
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:

  return 0;
}

id sub_1006BBBC0(unsigned __int8 a1)
{
  v1 = sub_1006BB8E4(a1);
  if (!v1)
  {
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101218E00);
    v7 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136446210;
      v12 = String.init<A>(describing:)();
      v14 = sub_1000105AC(v12, v13, &v29);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v9, "Unexpectedly couldn't retrieve tab for coreTabIdentifier=%{public}s", v10, 0xCu);
      sub_10000959C(v11);
    }

    goto LABEL_18;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v2;
  }

  v5 = [v3 managingNavigationController];

  v6 = [v2 viewController];
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v5 = v15;

        return v5;
      }
    }

    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_101218E00);
    v17 = v2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136446210;
      v22 = v17;
      v23 = [v22 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_1000105AC(v24, v26, &v29);

      *(v20 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unexpectedly couldn't find a UINavigationController for tab=%{public}s", v20, 0xCu);
      sub_10000959C(v21);

      return 0;
    }

LABEL_18:
    return 0;
  }

  return v5;
}

void sub_1006BBF34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC5Music16TabBarController_forceReloadTabViewControllers) = 1;
    sub_100031CC8();
  }
}

id sub_1006BBF98(id result, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5 = result >> 6;
  if (result >> 6)
  {
    if (v5 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return result;
      }
    }

    else if (result == 128)
    {
      if (a2 == 128)
      {
        return result;
      }
    }

    else if (a2 == 129)
    {
      return result;
    }
  }

  else if (a2 < 0x40u)
  {
    return result;
  }

  if (!(a2 >> 6))
  {
    if (!(result >> 6))
    {
      return result;
    }

    if (v5 == 1)
    {
      [v4 endAppearanceTransition];
      v7 = "beginAppearanceTransition:animated:";
      a4 = a2 & 1;
      v6 = v4;
    }

    else
    {
      if (result != 128)
      {
        return result;
      }

      a4 = a2 & 1;
      v6 = v4;
      v7 = "beginAppearanceTransition:animated:";
    }

    a3 = 1;
    goto LABEL_32;
  }

  if (a2 >> 6 != 1)
  {
    if (a2 == 128)
    {
      if (result >> 6)
      {
        if (v5 != 1)
        {
          if (result == 128)
          {
            return result;
          }

          [v4 beginAppearanceTransition:0 animated:0];
        }

        goto LABEL_39;
      }

      [v4 endAppearanceTransition];
      [v4 beginAppearanceTransition:0 animated:0];
    }

    else
    {
      if (!(result >> 6))
      {
LABEL_39:
        v7 = "endAppearanceTransition";
LABEL_40:
        v6 = v4;

        return [v6 v7];
      }

      if (v5 != 1)
      {
        if (result != 128)
        {
          return result;
        }

        [v4 beginAppearanceTransition:1 animated:0];
        goto LABEL_39;
      }

      [v4 endAppearanceTransition];
      [v4 beginAppearanceTransition:1 animated:0];
    }

    v7 = "endAppearanceTransition";
    goto LABEL_40;
  }

  if (!(result >> 6))
  {
    [v4 endAppearanceTransition];
    v7 = "beginAppearanceTransition:animated:";
    a4 = a2 & 1;
    v6 = v4;
    a3 = 0;
LABEL_32:

    return [v6 v7];
  }

  if (v5 != 1 && result != 128)
  {
    a4 = a2 & 1;
    v6 = v4;
    v7 = "beginAppearanceTransition:animated:";
    a3 = 0;
    goto LABEL_32;
  }

  return result;
}

void sub_1006BC1DC(int a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC5Music16TabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Music16TabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Music16TabBarController_appearanceState] = a1;
  if (v4 > 0x3F || ((v4 ^ a1)) && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
    if (v5)
    {
      v6 = v1[v3];
      v7 = v5;
      sub_1006BBF98(v4, v6, v8, v9);
    }
  }
}

void sub_1006BC2E4(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC5Music16TabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Music16TabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Music16TabBarController_appearanceState] = -127;
  if (v4 != 129 && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
    if (v5)
    {
      v6 = v1[v3];
      v7 = v5;
      sub_1006BBF98(v4, v6, v8, v9);
    }
  }
}

void sub_1006BC3E8(int a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillDisappear:", a1 & 1);
  v3 = OBJC_IVAR____TtC5Music16TabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Music16TabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Music16TabBarController_appearanceState] = a1 | 0x40;
  if ((v4 & 0xC0) != 0x40 || ((v4 ^ a1)) && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
    if (v5)
    {
      v6 = v1[v3];
      v7 = v5;
      sub_1006BBF98(v4, v6, v8, v9);
    }
  }
}

void sub_1006BC4F8(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewDidDisappear:", a1 & 1);
  v3 = OBJC_IVAR____TtC5Music16TabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Music16TabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Music16TabBarController_appearanceState] = 0x80;
  if (v4 != 128 && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
    if (v5)
    {
      v6 = v1[v3];
      v7 = v5;
      sub_1006BBF98(v4, v6, v8, v9);
    }
  }
}

void sub_1006BC5FC(void (*a1)(void *), uint64_t a2)
{
  v5 = OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction;
  if (*&v2[OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      type metadata accessor for NowPlayingViewController(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        v9 = [v7 presentingViewController];
        if (v9)
        {

          if (a1)
          {
            v13 = v13;
            a1(v8);
          }

          return;
        }
      }
    }
  }

  [v2 loadViewIfNeeded];
  v10 = *&v2[v5];
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v12 = v10;
    sub_100030444(a1);
    sub_1007EA514(sub_1006CC708, v11);
  }
}

void sub_1006BC78C(uint64_t a1, void (*a2)(uint64_t))
{
  if (a2)
  {
    type metadata accessor for NowPlayingViewController(0);
    v3 = swift_dynamicCastClass();
    a2(v3);
  }
}

void sub_1006BC7E0(uint64_t a1)
{
  v3 = type metadata accessor for LibraryImport.ViewModel(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_10010FC20(&qword_10118CA98);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v18 - v12;
  if ([v1 isViewLoaded])
  {
    v14 = OBJC_IVAR____TtC5Music16TabBarController_libraryImportViewModel;
    swift_beginAccess();
    v15 = *(v10 + 48);
    sub_10003272C(a1, v13);
    sub_10003272C(v1 + v14, &v13[v15]);
    v16 = *(v4 + 48);
    if (v16(v13, 1, v3) == 1)
    {
      if (v16(&v13[v15], 1, v3) == 1)
      {
        sub_1000095E8(v13, &unk_1011A4B90);
        return;
      }
    }

    else
    {
      sub_10003272C(v13, v9);
      if (v16(&v13[v15], 1, v3) != 1)
      {
        sub_1006CCB48(&v13[v15], v6, type metadata accessor for LibraryImport.ViewModel);
        v17 = sub_10054EB74(v9, v6);
        sub_1006CB5E8(v6, type metadata accessor for LibraryImport.ViewModel);
        sub_1006CB5E8(v9, type metadata accessor for LibraryImport.ViewModel);
        sub_1000095E8(v13, &unk_1011A4B90);
        if (v17)
        {
          return;
        }

        goto LABEL_8;
      }

      sub_1006CB5E8(v9, type metadata accessor for LibraryImport.ViewModel);
    }

    sub_1000095E8(v13, &qword_10118CA98);
LABEL_8:
    sub_100032128();
  }
}

uint64_t sub_1006BCACC(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = v39 - v3;
  v5 = sub_10010FC20(&unk_1011A4B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v39 - v10;
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  __chkstk_darwin(v18);
  v20 = v39 - v19;
  __chkstk_darwin(v21);
  v23 = v39 - v22;
  v24 = *(a1 + 16);
  if (*(v24 + 16) && (v25 = sub_1006BE7F4(0), (v26 & 1) != 0))
  {
    sub_10003272C(*(v24 + 56) + *(v6 + 72) * v25, v20);
    sub_10040DFB8(v20, v23);
    if (!*(v24 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v27 = type metadata accessor for LibraryImport.ViewModel(0);
    (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
    if (!*(v24 + 16))
    {
LABEL_8:
      v30 = type metadata accessor for LibraryImport.ViewModel(0);
      (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
      goto LABEL_9;
    }
  }

  v28 = sub_1006BE7F4(1u);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_10003272C(*(v24 + 56) + *(v6 + 72) * v28, v14);
  sub_10040DFB8(v14, v17);
LABEL_9:
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
  sub_10003272C(v23, v11);
  sub_10003272C(v17, v8);
  type metadata accessor for MainActor();
  v32 = v39[1];
  v33 = static MainActor.shared.getter();
  v34 = *(v6 + 80);
  v35 = (v34 + 40) & ~v34;
  v36 = (v7 + v34 + v35) & ~v34;
  v37 = swift_allocObject();
  v37[2] = v33;
  v37[3] = &protocol witness table for MainActor;
  v37[4] = v32;
  sub_10040DFB8(v11, v37 + v35);
  sub_10040DFB8(v8, v37 + v36);
  sub_1001F4CB8(0, 0, v4, &unk_100EDD990, v37);

  sub_1000095E8(v17, &unk_1011A4B90);
  return sub_1000095E8(v23, &unk_1011A4B90);
}

uint64_t sub_1006BCEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_10010FC20(&unk_1011A4B90);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006BCF94, v8, v7);
}

uint64_t sub_1006BCF94()
{
  v1 = v0[12];
  v2 = v0[9];

  sub_10003272C(v2, v1);
  v3 = type metadata accessor for LibraryImport.ViewModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v8 = v0[12];
  v7 = v0[13];
  if (v6 == 1)
  {
    sub_10003272C(v0[10], v0[13]);
    if (v5(v8, 1, v3) != 1)
    {
      sub_1000095E8(v0[12], &unk_1011A4B90);
    }
  }

  else
  {
    sub_1006CCB48(v0[12], v0[13], type metadata accessor for LibraryImport.ViewModel);
    (*(v4 + 56))(v7, 0, 1, v3);
  }

  v9 = v0[13];
  v10 = v0[11];
  v11 = v0[8];
  v12 = OBJC_IVAR____TtC5Music16TabBarController_libraryImportViewModel;
  swift_beginAccess();
  sub_10003272C(v11 + v12, v10);
  swift_beginAccess();
  sub_10054EB04(v9, v11 + v12);
  swift_endAccess();
  sub_1006BC7E0(v10);
  sub_1000095E8(v10, &unk_1011A4B90);
  sub_1000095E8(v9, &unk_1011A4B90);

  v13 = v0[1];

  return v13();
}

void *sub_1006BD21C()
{
  v0 = sub_100033104();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = v0;
    sub_10066CEA8(0, v1, 0);
    v3 = v2;
    v4 = _swiftEmptyArrayStorage[2];
    v5 = 32;
    do
    {
      v6 = v3[v5];
      v7 = _swiftEmptyArrayStorage[3];
      if (v4 >= v7 >> 1)
      {
        sub_10066CEA8((v7 > 1), v4 + 1, 1);
        v3 = v2;
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      *(&_swiftEmptyArrayStorage[4] + v4) = v6;
      ++v5;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void sub_1006BD30C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  __chkstk_darwin(v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117F7B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_101218E48);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[1] = v4;
    v12 = v2;
    v13 = v11;
    v26 = v11;
    *v10 = 136446210;
    v25 = a1;
    v14 = String.init<A>(describing:)();
    v16 = sub_1000105AC(v14, v15, &v26);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Selected tab via MusicUI Tabs Authority: %{public}s", v10, 0xCu);
    sub_10000959C(v13);
    v2 = v12;
  }

  if ((a1 - 7) >= 2u)
  {
    if (sub_10003169C())
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Delegating tab selection to AIC", v19, 2u);
      }

      *v6 = a1;
      v6[1] = 0;
      swift_storeEnumTagMultiPayload();
      sub_10070BF44(v6, 0, 0, 0, 0);

      sub_1006CB5E8(v6, type metadata accessor for AppInterfaceContext.Activity.Destination);
    }

    else
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "No AIC found — updating selected tab directly", v22, 2u);
      }

      sub_1006BB464(a1);
    }

    *(v2 + OBJC_IVAR____TtC5Music16TabBarController_canRestoreLastSelectedTab) = 0;
    v23 = *(v2 + OBJC_IVAR____TtC5Music16TabBarController_tabSelectionTimeout);
    *(v2 + OBJC_IVAR____TtC5Music16TabBarController_tabSelectionTimeout) = 0;
    if (v23)
    {
      sub_10010FC20(&qword_1011824A0);
      Task.cancel()();
    }
  }
}

uint64_t sub_1006BD694(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music16TabBarController_stackAuthorities;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_1006BE710(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if ((a1 - 7) >= 2u)
    {
      type metadata accessor for MusicStackAuthority();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = a1;
      v19 = _s17NavigationHandlerCMa();
      v20 = swift_allocObject();
      *(v20 + 16) = sub_1006BE77C;
      *(v20 + 24) = v18;
      v24[3] = v19;
      v24[4] = sub_1006CC6C0(&qword_10119EB58, _s17NavigationHandlerCMa);
      v24[0] = v20;

      v8 = dispatch thunk of MusicStackAuthority.__allocating_init(navigationPathProvider:)();
      sub_1006CC6C0(&qword_10119EB60, _s17NavigationHandlerCMa);

      MusicStackAuthority.navigationControllerDelegate.setter();

      swift_beginAccess();
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v2 + v4);
      *(v2 + v4) = 0x8000000000000000;
      sub_1006C53B8(v8, a1, isUniquelyReferenced_nonNull_native);
      *(v2 + v4) = v23;
      swift_endAccess();
    }

    else
    {
      if (qword_10117F270 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000060E4(v9, qword_1012186E0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v24[0] = v13;
        *v12 = 136446210;
        v14 = String.init<A>(describing:)();
        v16 = sub_1000105AC(v14, v15, v24);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "[TabBarController] Unable to retrieve stack authority for unsupported tab: %{public}s", v12, 0xCu);
        sub_10000959C(v13);
      }

      return 0;
    }
  }

  return v8;
}

id sub_1006BDA0C(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = sub_1006BBBC0(a2);

  return v5;
}

uint64_t sub_1006BDA78(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006BDB10, v3, v2);
}

uint64_t sub_1006BDB10()
{

  if (qword_10117F7B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218E48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Selection failed: timeout", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v5 + OBJC_IVAR____TtC5Music16TabBarController_canRestoreLastSelectedTab) = 0;
  v6 = *(v5 + OBJC_IVAR____TtC5Music16TabBarController_tabSelectionTimeout);
  *(v5 + OBJC_IVAR____TtC5Music16TabBarController_tabSelectionTimeout) = 0;
  if (v6)
  {
    sub_10010FC20(&qword_1011824A0);
    Task.cancel()();
  }

  v7 = *(v0 + 8);

  return v7();
}

id sub_1006BDE5C()
{
  result = sub_1006BDF60([v0 selectedIndex]);
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result viewControllers];
  sub_100009F78(0, &qword_101183D40);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_10004056C(0, v4);
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);
LABEL_7:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006BDF60(uint64_t a1)
{
  v3 = [v1 tabs];
  v4 = sub_100009F78(0, &qword_101181F70);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  Array.subscript.getter(v4, &v14);

  v5 = v14;
  if (!v14)
  {
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000060E4(v10, qword_101218E00);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134349056;
      *(v13 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to retrieve UITab at index: %{public}ld", v13, 0xCu);
    }

    return 0;
  }

  v6 = [v14 managingTabGroup];
  if (v6 && (v7 = v6, v8 = [v6 managingNavigationController], v7, v8))
  {
  }

  else
  {
    v8 = [v5 viewController];

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for NavigationController();
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

  return 0;
}

void sub_1006BE154()
{
  v1 = v0;
  v2 = type metadata accessor for UITraitOverrides();
  *&v3 = __chkstk_darwin(v2).n128_u64[0];
  v4 = OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController;
  v5 = *&v0[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
  if (v5)
  {
    v6 = [v5 view];
    if (v6)
    {
      v7 = v6;
      v8 = [v0 tabBar];
      v9 = [v8 traitCollection];

      v10 = [v9 preferredContentSizeCategory];
      UIView.traitOverrides.getter();
      UIMutableTraits.preferredContentSizeCategory.setter();
      UIView.traitOverrides.setter();
    }

    v11 = *&v1[v4];
    if (v11)
    {
      v12 = [v11 view];
      if (v12)
      {
        v13 = v12;
        UIView._background.setter();
      }

      v14 = *&v1[v4];
      if (v14)
      {
        v15 = [v14 view];
        if (v15)
        {
          v16 = v15;
          v17 = [v1 tabBar];
          v18 = [v17 traitCollection];

          [v18 userInterfaceStyle];
          UIView.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIView.traitOverrides.setter();
        }
      }
    }
  }
}

void sub_1006BE37C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for UITraitPreferredContentSizeCategory();
  UIView.traitOverrides.getter();
  UITraitOverrides.remove(_:)();
  UIView.traitOverrides.setter();
  type metadata accessor for UITraitUserInterfaceStyle();
  UIView.traitOverrides.getter();
  UITraitOverrides.remove(_:)();
  UIView.traitOverrides.setter();
  [a1 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v1 setBottomAccessory:0];
  v5 = [objc_allocWithZone(UITabAccessory) initWithContentView:a1];
  [v2 setBottomAccessory:v5];
}

void sub_1006BE4C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

unint64_t sub_1006BE548(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1006BF5E8(a1, v4, &qword_101192200);
}

unint64_t sub_1006BE598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a4)
  {
    String.hash(into:)();
  }

  v8 = Hasher._finalize()();

  return sub_1006BEC20(a1, a2, a3, a4, v8);
}

unint64_t sub_1006BE63C(uint64_t a1)
{
  type metadata accessor for EditorialVideoArtworkFlavor();
  sub_1006CC6C0(qword_10118EB48, &type metadata accessor for EditorialVideoArtworkFlavor);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1006BF448(a1, v2, &type metadata accessor for EditorialVideoArtworkFlavor, &qword_1011882F0, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
}

unint64_t sub_1006BE710(char a1)
{
  Hasher.init(_seed:)();
  sub_100674774(v4, a1);
  v2 = Hasher._finalize()();

  return sub_1006BED2C(a1, v2);
}

unint64_t sub_1006BE788(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1006BF00C(a1, v2);
}

unint64_t sub_1006BE7F4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_1006BF6B4(a1, v2);
}

unint64_t sub_1006BE85C(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1006BF078(a1 & 1, v2);
}

unint64_t sub_1006BE91C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1002B5AFC(a1, v2);
}

unint64_t sub_1006BE9AC(unsigned __int8 a1)
{
  v2 = sub_1006CB024();

  return sub_1006BF1DC(a1, v2);
}

unint64_t sub_1006BE9F0(uint64_t a1)
{
  type metadata accessor for IndexPath();
  sub_1006CC6C0(&qword_10118EB38, &type metadata accessor for IndexPath);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1006BF448(a1, v2, &type metadata accessor for IndexPath, &qword_101192840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
}

unint64_t sub_1006BEAC4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1006BF5E8(a1, v4, &qword_101181F70);
}

unint64_t sub_1006BEB14(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1005A0E40(v4);
  v2 = Hasher._finalize()();

  return sub_1006BF724(a1, v2);
}

unint64_t sub_1006BEB80(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1006BF5E8(a1, v4, &qword_101181620);
}

unint64_t sub_1006BEBD0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1006BF5E8(a1, v4, &qword_10118DF60);
}

unint64_t sub_1006BEC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t sub_1006BED2C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v6 = ~v3;
    v7 = a1 - 7;
    do
    {
      v8 = *(*(v2 + 48) + v4);
      if (v8 == 7)
      {
        if (v5 == 7)
        {
          return v4;
        }

        goto LABEL_4;
      }

      if (v8 == 8)
      {
        if (v5 == 8)
        {
          return v4;
        }

        goto LABEL_4;
      }

      if (v7 < 2)
      {
        goto LABEL_4;
      }

      if (*(*(v2 + 48) + v4) <= 2u)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v8 == 1)
          {
            v10 = 0x6F4E6E657473696CLL;
          }

          else
          {
            v10 = 0x6573776F7262;
          }

          if (v8 == 1)
          {
            v9 = 0xE900000000000077;
          }

          else
          {
            v9 = 0xE600000000000000;
          }

          if (v5 <= 2)
          {
LABEL_43:
            if (v5)
            {
              if (v5 == 1)
              {
                v17 = 0x6F4E6E657473696CLL;
              }

              else
              {
                v17 = 0x6573776F7262;
              }

              if (v5 == 1)
              {
                v16 = 0xE900000000000077;
              }

              else
              {
                v16 = 0xE600000000000000;
              }

              if (v10 == v17)
              {
                goto LABEL_53;
              }
            }

            else
            {
              v16 = 0xE700000000000000;
              if (v10 == 0x7972617262696CLL)
              {
                goto LABEL_53;
              }
            }

            goto LABEL_54;
          }
        }

        else
        {
          v9 = 0xE700000000000000;
          v10 = 0x7972617262696CLL;
          if (v5 <= 2)
          {
            goto LABEL_43;
          }
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v8 == 5)
        {
          v9 = 0xE600000000000000;
          v10 = 0x736F65646976;
          if (v5 <= 2)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v10 = 0x7473696C79616C70;
          v9 = 0xE900000000000073;
          if (v5 <= 2)
          {
            goto LABEL_43;
          }
        }
      }

      else if (v8 == 3)
      {
        v9 = 0xE500000000000000;
        v10 = 0x6F69646172;
        if (v5 <= 2)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v9 = 0xE600000000000000;
        v10 = 0x686372616573;
        if (v5 <= 2)
        {
          goto LABEL_43;
        }
      }

      v11 = 0x736F65646976;
      if (v5 != 5)
      {
        v11 = 0x7473696C79616C70;
      }

      v12 = 0xE900000000000073;
      if (v5 == 5)
      {
        v12 = 0xE600000000000000;
      }

      v13 = 0x6F69646172;
      if (v5 != 3)
      {
        v13 = 0x686372616573;
      }

      v14 = 0xE500000000000000;
      if (v5 != 3)
      {
        v14 = 0xE600000000000000;
      }

      if (v5 <= 4)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      if (v5 <= 4)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (v10 == v15)
      {
LABEL_53:
        if (v9 == v16)
        {

          return v4;
        }
      }

LABEL_54:
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1006BF00C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1006BF078(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v6 = 0x487972617262696CLL;
    }

    if (a1)
    {
      v7 = 0xEF72656461654877;
    }

    else
    {
      v7 = 0xED00007265646165;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6F4E6E657473696CLL : 0x487972617262696CLL;
      v9 = *(*(v2 + 48) + v4) ? 0xEF72656461654877 : 0xED00007265646165;
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

unint64_t sub_1006BF1DC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6F4E6E657473696CLL;
          }

          else
          {
            v8 = 0x6573776F7262;
          }

          if (v7 == 1)
          {
            v9 = 0xE900000000000077;
          }

          else
          {
            v9 = 0xE600000000000000;
          }
        }

        else
        {
          v9 = 0xE700000000000000;
          v8 = 0x7972617262696CLL;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE600000000000000;
          v8 = 0x736F65646976;
        }

        else
        {
          v8 = 0x7473696C79616C70;
          v9 = 0xE900000000000073;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x6F69646172;
        }

        else
        {
          v8 = 0x686372616573;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE600000000000000;
        }
      }

      v10 = 0x7473696C79616C70;
      if (v6 == 5)
      {
        v10 = 0x736F65646976;
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE900000000000073;
      }

      v12 = 0x686372616573;
      if (v6 == 3)
      {
        v12 = 0x6F69646172;
      }

      v13 = 0xE500000000000000;
      if (v6 != 3)
      {
        v13 = 0xE600000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0xE900000000000077;
      v15 = 0x6F4E6E657473696CLL;
      if (v6 != 1)
      {
        v15 = 0x6573776F7262;
        v14 = 0xE600000000000000;
      }

      if (!v6)
      {
        v15 = 0x7972617262696CLL;
        v14 = 0xE700000000000000;
      }

      v16 = v6 <= 2 ? v15 : v10;
      v17 = v6 <= 2 ? v14 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
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

unint64_t sub_1006BF448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
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
      sub_1006CC6C0(v23, v24);
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

unint64_t sub_1006BF5E8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_100009F78(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1006BF6B4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1006BF724(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin(v4 - 8);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10010FC20(&qword_101191950);
  __chkstk_darwin(v39);
  v7 = &v34 - v6;
  v8 = type metadata accessor for SidebarActivityView.Activity();
  v9 = __chkstk_darwin(v8);
  v37 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v36 = (&v34 - v12);
  v13 = __chkstk_darwin(v11);
  v35 = &v34 - v14;
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = v2 + 64;
  v41 = v2;
  v19 = -1 << *(v2 + 32);
  v20 = a2 & ~v19;
  if ((*(v2 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v38 = ~v19;
    v21 = *(v15 + 72);
    do
    {
      sub_1006CCAE0(*(v41 + 48) + v21 * v20, v17, type metadata accessor for SidebarActivityView.Activity);
      v22 = *(v39 + 48);
      sub_1006CCAE0(v17, v7, type metadata accessor for SidebarActivityView.Activity);
      sub_1006CCAE0(v40, &v7[v22], type metadata accessor for SidebarActivityView.Activity);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v24 = v36;
          sub_1006CCAE0(v7, v36, type metadata accessor for SidebarActivityView.Activity);
          v25 = *v24;
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v27 = v37;
          sub_1006CCAE0(v7, v37, type metadata accessor for SidebarActivityView.Activity);
          v25 = *v27;
          if (swift_getEnumCaseMultiPayload() != 2)
          {
LABEL_3:
            sub_1006CB5E8(v17, type metadata accessor for SidebarActivityView.Activity);

LABEL_4:
            sub_1000095E8(v7, &qword_101191950);
            goto LABEL_5;
          }
        }

        v28 = *&v7[v22];
        sub_100009F78(0, &qword_101197A30);
        v29 = static NSObject.== infix(_:_:)();

        sub_1006CB5E8(v17, type metadata accessor for SidebarActivityView.Activity);
        if (v29)
        {
          sub_1006CB5E8(v7, type metadata accessor for SidebarActivityView.Activity);
          return v20;
        }

        sub_1006CB5E8(v7, type metadata accessor for SidebarActivityView.Activity);
      }

      else
      {
        v26 = v35;
        sub_1006CCAE0(v7, v35, type metadata accessor for SidebarActivityView.Activity);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1006CB5E8(v17, type metadata accessor for SidebarActivityView.Activity);
          sub_1006CB5E8(v26, type metadata accessor for LibraryImport.ViewModel);
          goto LABEL_4;
        }

        v30 = &v7[v22];
        v31 = v34;
        sub_1006CCB48(v30, v34, type metadata accessor for LibraryImport.ViewModel);
        v32 = sub_10054EB74(v26, v31);
        sub_1006CB5E8(v31, type metadata accessor for LibraryImport.ViewModel);
        sub_1006CB5E8(v17, type metadata accessor for SidebarActivityView.Activity);
        sub_1006CB5E8(v26, type metadata accessor for LibraryImport.ViewModel);
        sub_1006CB5E8(v7, type metadata accessor for SidebarActivityView.Activity);
        if (v32)
        {
          return v20;
        }
      }

LABEL_5:
      v20 = (v20 + 1) & v38;
    }

    while (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  }

  return v20;
}

uint64_t sub_1006BFC14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_101180488);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v20 == 7)
      {
        Hasher._combine(_:)(1uLL);
      }

      else if (v20 == 8)
      {
        Hasher._combine(_:)(2uLL);
      }

      else
      {
        Hasher._combine(_:)(0);
        String.hash(into:)();
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_38;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v7;
  return result;
}

uint64_t sub_1006BFFAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011804B8);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C024C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011801D0);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C050C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011805C8);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1006C07E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_101180210);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100016270(v24, v34);
      }

      else
      {
        sub_10000DD18(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100016270(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C0AB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011801E8);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 32 * v20);
      v22 = v21[1];
      v36 = *v21;
      v23 = v21[3];
      v35 = v21[2];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      if (v23)
      {
        String.hash(into:)();
      }

      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v36;
      v16[1] = v22;
      v16[2] = v35;
      v16[3] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C0D88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011804E0);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C1048(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for EditorialVideoArtworkFlavor();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10010FC20(&qword_101180568);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1006CC6C0(qword_10118EB48, &type metadata accessor for EditorialVideoArtworkFlavor);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1006C1424(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&unk_101180220);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100016270(v24, v34);
      }

      else
      {
        sub_10000DD18(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100016270(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C16DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_101180470);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 24 * v20;
      v35 = *(v22 + 1);
      v36 = *v22;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      if ((v34 & 1) == 0)
      {
        sub_100030444(v23);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v36;
      *(v16 + 1) = v35;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C199C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011801C0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100016270((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1000160F8(v23, &v36);
        sub_10000DD18(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100016270(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1006C1C54(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10010FC20(a3);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1006C1EF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_101180268);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C2194(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_101180478);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v38 = *(v26 + 8);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C2454(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_10010FC20(a3);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v8 + 16);
    v39 = v11;
    v40 = v8;
    v42 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_1006CC6C0(&qword_10118EB38, &type metadata accessor for IndexPath);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v7);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_1006C2830(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for DisplayRepresentation();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10010FC20(&qword_1011805C0);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1006C2BB0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10010FC20(a3);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1006C2E48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_101180290);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_100016270(v21, v30);
      }

      else
      {
        sub_10000DD18(v21, v30);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_100016270(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C30DC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_10010FC20(&unk_1011A4B90);
  v35 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v37 = &v33 - v6;
  v7 = *v2;
  sub_10010FC20(&qword_10119EB70);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_10040DFB8(v24, v37);
      }

      else
      {
        sub_10003272C(v24, v37);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_10040DFB8(v37, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1006C3404(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_101180418);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100016270(v22, v36);
      }

      else
      {
        sub_10000DD18(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_100016270(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C36D4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Cache.Entry(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10010FC20(&qword_101180578);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1006CCB48(v28, v41, type metadata accessor for Cache.Entry);
      }

      else
      {
        sub_1006CCAE0(v28, v41, type metadata accessor for Cache.Entry);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1006CCB48(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Cache.Entry);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1006C3A60(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10010FC20(a3);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1006C3D00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_101180278);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v30 = *(*(v5 + 56) + 16 * v22);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v15) >> 6;
        while (++v17 != v25 || (v24 & 1) == 0)
        {
          v26 = v17 == v25;
          if (v17 == v25)
          {
            v17 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v17);
          if (v27 != -1)
          {
            v18 = __clz(__rbit64(~v27)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 16 * v18) = v30;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v29)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1006C4054(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&unk_1011804D0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1006C42BC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s16ActionButtonViewV5ModelVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for LibraryImport.ViewModel(0);
  v8 = __chkstk_darwin(v56);
  v58 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = v51 - v10;
  v11 = type metadata accessor for SidebarActivityView.Activity();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = __chkstk_darwin(v11);
  v64 = (v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v62 = v51 - v14;
  v15 = *v2;
  sub_10010FC20(&unk_10118CF50);
  v61 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v15 + 16))
  {
    v54 = v7;
    v55 = v2;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v24 = result + 64;
    v25 = v62;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v59 + 72);
      v32 = *(v15 + 48) + v31 * v30;
      if (v61)
      {
        sub_1006CCB48(v32, v25, type metadata accessor for SidebarActivityView.Activity);
        v63 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        sub_1006CCAE0(v32, v25, type metadata accessor for SidebarActivityView.Activity);
        v63 = *(*(v15 + 56) + 8 * v30);
      }

      Hasher.init(_seed:)();
      sub_1006CCAE0(v25, v64, type metadata accessor for SidebarActivityView.Activity);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v34 = *v64;
        if (EnumCaseMultiPayload == 1)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        Hasher._combine(_:)(v35);
        NSObject.hash(into:)();
      }

      else
      {
        v36 = v57;
        sub_1006CCB48(v64, v57, type metadata accessor for LibraryImport.ViewModel);
        Hasher._combine(_:)(0);
        sub_1006CCAE0(v36, v58, type metadata accessor for LibraryImport.ViewModel);
        v37 = swift_getEnumCaseMultiPayload();
        if (v37)
        {
          if (v37 == 1)
          {
            v38 = v54;
            sub_1006CCB48(v58, v54, _s16ActionButtonViewV5ModelVMa);
            Hasher._combine(_:)(1uLL);
            sub_10062CB80(v65);
            sub_1006CB5E8(v38, _s16ActionButtonViewV5ModelVMa);
          }

          else
          {
            Hasher._combine(_:)(2uLL);
          }
        }

        else
        {
          v39 = *(v58 + 8);
          v51[1] = *v58;
          v40 = *(v58 + 24);
          v51[2] = *(v58 + 16);
          v52 = v40;
          v41 = *(v58 + 32);
          Hasher._combine(_:)(0);
          if (v39)
          {
            Hasher._combine(_:)(1u);
            String.hash(into:)();
          }

          else
          {
            Hasher._combine(_:)(0);
          }

          v53 = v39;
          if (v52)
          {
            Hasher._combine(_:)(1u);
            String.hash(into:)();
          }

          else
          {
            Hasher._combine(_:)(0);
          }

          if (v41 == 0.0)
          {
            v42 = 0.0;
          }

          else
          {
            v42 = v41;
          }

          Hasher._combine(_:)(*&v42);
        }

        sub_1006CB5E8(v57, type metadata accessor for LibraryImport.ViewModel);
      }

      result = Hasher._finalize()();
      v43 = -1 << *(v17 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      v25 = v62;
      if (((-1 << v44) & ~*(v24 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v24 + 8 * v45);
          if (v49 != -1)
          {
            v26 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_7;
          }
        }

LABEL_56:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v44) & ~*(v24 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_1006CCB48(v25, *(v17 + 48) + v31 * v26, type metadata accessor for SidebarActivityView.Activity);
      *(*(v17 + 56) + 8 * v26) = v63;
      ++*(v17 + 16);
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v61 & 1) == 0)
    {

      v3 = v55;
      goto LABEL_54;
    }

    v50 = 1 << *(v15 + 32);
    v3 = v55;
    if (v50 >= 64)
    {
      bzero((v15 + 64), ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v50;
    }

    *(v15 + 16) = 0;
  }

LABEL_54:
  *v3 = v17;
  return result;
}

uint64_t sub_1006C4968(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10010FC20(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v32;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}