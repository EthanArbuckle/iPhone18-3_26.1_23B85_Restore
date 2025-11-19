uint64_t sub_1000577D4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v85 = a1;
  v87 = a3;
  v86 = (a2 & 0x10000) == 0;
  v3 = type metadata accessor for RoundedRectangle();
  v4 = *(*(v3 - 8) + 64);
  v5 = v3 - 8;
  v83 = v3 - 8;
  v6 = __chkstk_darwin(v3 - 8);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v76 - v8;
  v10 = sub_10000368C(&qword_1000ED660, &qword_1000B73E0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v76 - v13;
  v15 = sub_10000368C(&qword_1000ED668, &qword_1000B73E8);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v77 = &v76 - v18;
  v19 = sub_10000368C(&qword_1000ED670, &qword_1000B73F0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = &v76 - v22;
  v24 = sub_10000368C(&qword_1000ED678, &qword_1000B73F8);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v28 = &v76 - v27;
  v29 = *(v5 + 28);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v81 = enum case for RoundedCornerStyle.continuous(_:);
  v80 = type metadata accessor for RoundedCornerStyle();
  v31 = *(v80 - 8);
  v79 = *(v31 + 104);
  v82 = v31 + 104;
  v79(&v9[v29], v30, v80);
  __asm { FMOV            V0.2D, #6.0 }

  v78 = _Q0;
  *v9 = _Q0;
  v37 = v9;
  v38 = objc_opt_self();
  v39 = dbl_1000B6D50[(v88 & 0x100) == 0];
  v40 = &selRef_blackColor;
  if ((v88 & 0x100) != 0)
  {
    v40 = &selRef_whiteColor;
  }

  v41 = [v38 *v40];
  v42 = [v41 colorWithAlphaComponent:v39];

  v43 = Color.init(_:)();
  v44 = v28;
  sub_10005C090(v37, v14);
  *&v14[*(v11 + 60)] = v43;
  *&v14[*(v11 + 64)] = 256;
  v45 = v77;
  sub_10001721C(v14, v77, &qword_1000ED660, &qword_1000B73E0);
  v46 = v45 + *(v16 + 44);
  *v46 = 0x3FF0000000000000;
  *(v46 + 8) = 0;
  v47 = static Alignment.center.getter();
  v49 = v48;
  v50 = v84;
  sub_10001721C(v45, v23, &qword_1000ED668, &qword_1000B73E8);
  v51 = &v23[*(v20 + 44)];
  v52 = v85;
  *v51 = v85;
  *(v51 + 1) = v47;
  *(v51 + 2) = v49;
  v53 = 0.2;
  if ((v86 | v88))
  {
    v53 = 1.0;
  }

  v54 = v88;
  if ((v88 & 0x1000000) != 0)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0.3;
  }

  sub_10001721C(v23, v44, &qword_1000ED670, &qword_1000B73F0);
  v56 = v44;
  *(v44 + *(v25 + 44)) = v55;
  v57 = v52;
  v58 = static Alignment.center.getter();
  v60 = v59;
  v79(&v50[*(v83 + 28)], v81, v80);
  *v50 = v78;
  if (v54)
  {
    v61 = [objc_opt_self() radio_carSystemFocusColor];
    v62 = Color.init(uiColor:)();
  }

  else
  {
    v62 = static Color.clear.getter();
  }

  v63 = v62;
  v64 = sub_10000368C(&qword_1000ED680, &qword_1000B7400);
  v65 = v87;
  v66 = v87 + *(v64 + 36);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_10005C0F4(v50, v66);
  v67 = v66 + *(sub_10000368C(&qword_1000ED688, &qword_1000B7408) + 36);
  v68 = v90;
  *v67 = v89;
  *(v67 + 16) = v68;
  *(v67 + 32) = v91;
  v69 = sub_10000368C(&qword_1000ED690, &qword_1000B7410);
  *(v66 + *(v69 + 52)) = v63;
  *(v66 + *(v69 + 56)) = 256;
  v70 = static Alignment.center.getter();
  v72 = v71;
  sub_10005C158(v50);
  v73 = (v66 + *(sub_10000368C(&qword_1000ED698, &qword_1000B7418) + 36));
  *v73 = v70;
  v73[1] = v72;
  v74 = (v66 + *(sub_10000368C(&qword_1000ED6A0, &qword_1000B7420) + 36));
  *v74 = v58;
  v74[1] = v60;
  return sub_10001721C(v56, v65, &qword_1000ED678, &qword_1000B73F8);
}

uint64_t sub_100057D50@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 8);
  if (*(v1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 11))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  return sub_1000577D4(*v1, v3 | v4 | v5, a1);
}

uint64_t sub_100057D98(uint64_t a1)
{
  v3 = sub_10000368C(&qword_1000ED2B0, &qword_1000B6EF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v17[-1] - v7;
  v9 = v1 + OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config;
  v10 = *(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config);
  if (v10)
  {
    v11 = *(v9 + 10);
    v12 = *(v9 + 8);
    __chkstk_darwin(result);
    *(&v16 - 4) = v10;
    *(&v16 - 24) = v13 & 1;
    *(&v16 - 23) = v14 & 1;
    *(&v16 - 22) = v15 & 1;
    *(&v16 - 2) = a1;
    *(&v16 - 1) = v1;

    sub_10000368C(&qword_1000ED2B8, &qword_1000B6EF8);
    sub_10005AC28();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v17[3] = v3;
    v17[4] = sub_100005870(&qword_1000ED2E8, &qword_1000ED2B0, &qword_1000B6EF0);
    sub_10005AD6C(v17);
    UIHostingConfiguration.margins(_:_:)();
    (*(v4 + 8))(v8, v3);
    UICollectionViewCell.contentConfiguration.setter();
  }

  return result;
}

__n128 sub_100057F98@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10000368C(&qword_1000ED2D0, &qword_1000B6F00);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0x4018000000000000;
  v14[16] = 0;
  v15 = sub_10000368C(&qword_1000ED2F0, &qword_1000B6F10);
  sub_100058158(a1, a2 & 0x10101, a3, a4, &v14[*(v15 + 44)]);
  LOBYTE(a4) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v16 = &v14[*(v11 + 44)];
  *v16 = a4;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001721C(v14, a5, &qword_1000ED2D0, &qword_1000B6F00);
  v21 = a5 + *(sub_10000368C(&qword_1000ED2B8, &qword_1000B6EF8) + 36);
  v22 = v25[5];
  *(v21 + 64) = v25[4];
  *(v21 + 80) = v22;
  *(v21 + 96) = v25[6];
  v23 = v25[1];
  *v21 = v25[0];
  *(v21 + 16) = v23;
  result = v25[3];
  *(v21 + 32) = v25[2];
  *(v21 + 48) = result;
  return result;
}

uint64_t sub_100058158@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v9 = sub_10000368C(&qword_1000ED2F8, &qword_1000B6F18);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = sub_10000368C(&qword_1000ED300, &qword_1000B6F20);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = (&v40 - v21);
  *v22 = static Alignment.center.getter();
  v22[1] = v23;
  v24 = sub_10000368C(&qword_1000ED308, &qword_1000B6F28);
  sub_100058484(a2 & 0x10101, a3, a4, v22 + *(v24 + 44));
  v25 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  if ((v25[1] & 1) == 0 && *v25)
  {
    goto LABEL_5;
  }

  v26 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v27 = *(a1 + v26);
  CAFMediaItem.songArtist.getter();
  v29 = v28;

  if (v29)
  {

LABEL_5:
    LODWORD(v29) = 1;
  }

  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v30 = sub_10000368C(&qword_1000ED310, &qword_1000B6F30);
  sub_10005925C(a1, a2 & 0x10101, v29, &v15[*(v30 + 44)]);
  v31 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v32 = &v15[*(v9 + 36)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_1000077CC(v22, v20, &qword_1000ED300, &qword_1000B6F20);
  sub_1000077CC(v15, v13, &qword_1000ED2F8, &qword_1000B6F18);
  v37 = v41;
  sub_1000077CC(v20, v41, &qword_1000ED300, &qword_1000B6F20);
  v38 = sub_10000368C(&qword_1000ED318, &qword_1000B6F38);
  sub_1000077CC(v13, v37 + *(v38 + 48), &qword_1000ED2F8, &qword_1000B6F18);
  sub_100007834(v15, &qword_1000ED2F8, &qword_1000B6F18);
  sub_100007834(v22, &qword_1000ED300, &qword_1000B6F20);
  sub_100007834(v13, &qword_1000ED2F8, &qword_1000B6F18);
  return sub_100007834(v20, &qword_1000ED300, &qword_1000B6F20);
}

uint64_t sub_100058484@<X0>(unsigned int a1@<W1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v113 = a3;
  v114 = a1;
  v121 = a4;
  v115 = a1 & 1;
  v101 = type metadata accessor for WaveformColorPalette();
  v100 = *(v101 - 8);
  v5 = *(v100 + 64);
  __chkstk_darwin(v101);
  v99 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for WaveformState();
  v93 = *(v94 - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin(v94);
  v92 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for WaveformView();
  v97 = *(v98 - 8);
  v9 = *(v97 + 64);
  __chkstk_darwin(v98);
  v95 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000368C(&qword_1000ED3C0, &qword_1000B70A0);
  v12 = *(v11 - 8);
  v118 = v11;
  v119 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v96 = v91 - v14;
  v15 = sub_10000368C(&qword_1000ED3C8, &qword_1000B70A8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v120 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = v91 - v19;
  v111 = type metadata accessor for PlainButtonStyle();
  v112 = *(v111 - 8);
  v20 = *(v112 + 64);
  __chkstk_darwin(v111);
  v22 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10000368C(&qword_1000ED3D0, &qword_1000B70B0);
  v110 = *(v109 - 8);
  v23 = *(v110 + 64);
  __chkstk_darwin(v109);
  v25 = v91 - v24;
  v26 = sub_10000368C(&qword_1000ED3D8, &qword_1000B70B8);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v30 = v91 - v29;
  v31 = sub_10000368C(&qword_1000ED3E0, &qword_1000B70C0);
  v32 = v31 - 8;
  v33 = *(*(v31 - 8) + 64);
  v34 = __chkstk_darwin(v31);
  v116 = v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = v91 - v37;
  __chkstk_darwin(v36);
  v102 = v91 - v39;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v108 = v125;
  v103 = UICellConfigurationState.isFocused.getter();
  v40 = UICellConfigurationState.traitCollection.getter();
  v41 = [v40 userInterfaceStyle];

  v107 = v41 == 2;
  v106 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v124 = 0;
  v105 = static Alignment.topLeading.getter();
  v104 = v50;
  v51 = swift_allocObject();
  v52 = v113;
  *(v51 + 16) = v113;
  v91[1] = a2;
  v122 = a2;
  v53 = v52;
  sub_10000368C(&qword_1000ED3E8, &qword_1000B7110);
  sub_10005B2C8();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100005870(&qword_1000ED410, &qword_1000ED3D0, &qword_1000B70B0);
  sub_10005BF48(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle);
  v54 = v109;
  v55 = v111;
  View.buttonStyle<A>(_:)();
  v56 = v22;
  v57 = v102;
  (*(v112 + 8))(v56, v55);
  (*(v110 + 8))(v25, v54);
  v58 = static SafeAreaRegions.all.getter();
  LOBYTE(v55) = static Edge.Set.all.getter();
  v59 = sub_10000368C(&qword_1000ED418, &qword_1000B7128);
  v60 = v114;
  v61 = v103 & ((v114 & 0x100) == 0);
  v62 = &v30[*(v59 + 36)];
  *v62 = v58;
  v62[8] = v55;
  *&v30[*(v27 + 44)] = xmmword_1000B6D60;
  v63 = HIWORD(v60) & 1;
  v64 = v60;
  if ((v60 & 0x100) != 0)
  {
    v65 = 1.0;
  }

  else
  {
    v65 = 0.0;
  }

  v66 = &v38[*(v32 + 44)];
  sub_10001721C(v30, v66, &qword_1000ED3D8, &qword_1000B70B8);
  *(v66 + *(sub_10000368C(&qword_1000ED420, &qword_1000B7130) + 36)) = v65;
  v67 = (v66 + *(sub_10000368C(&qword_1000ED428, &qword_1000B7138) + 36));
  v68 = v104;
  *v67 = v105;
  v67[1] = v68;
  *v38 = v108;
  v38[8] = v61;
  v38[9] = v107;
  v38[10] = v115;
  v38[11] = v63;
  v38[16] = v106;
  *(v38 + 5) = *&v123[3];
  *(v38 + 17) = *v123;
  *(v38 + 3) = v43;
  *(v38 + 4) = v45;
  *(v38 + 5) = v47;
  *(v38 + 6) = v49;
  v38[56] = 0;
  sub_10001721C(v38, v57, &qword_1000ED3E0, &qword_1000B70C0);
  if (v64)
  {
    v69 = UICellConfigurationState.isFocused.getter();
    v70 = objc_opt_self();
    v71 = &selRef_radio_carSystemFocusLabelColor;
    if ((v69 & 1) == 0)
    {
      v71 = &selRef_radio_carSystemFocusColor;
    }

    v72 = [v70 *v71];
    Color.init(uiColor:)();
    v73 = enum case for WaveformState.SamplingMode.unavailable(_:);
    v74 = type metadata accessor for WaveformState.SamplingMode();
    v75 = v92;
    (*(*(v74 - 8) + 104))(v92, v73, v74);
    (*(v93 + 104))(v75, enum case for WaveformState.playing(_:), v94);
    v76 = v95;
    WaveformView.init(state:)();
    swift_retain_n();
    v77 = v99;
    WaveformColorPalette.init(playingColor:pausedColor:bufferingColorMin:bufferingColorMax:)();
    sub_10005BF48(&qword_1000ED438, &type metadata accessor for WaveformView);
    v78 = v96;
    v79 = v98;
    View.waveformColorPalette(_:)();
    (*(v100 + 8))(v77, v101);
    (*(v97 + 8))(v76, v79);
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();

    v80 = v118;
    v81 = (v78 + *(v118 + 36));
    v82 = v126;
    *v81 = v125;
    v81[1] = v82;
    v81[2] = v127;
    v83 = v117;
    sub_10001721C(v78, v117, &qword_1000ED3C0, &qword_1000B70A0);
    v84 = 0;
    v85 = v80;
  }

  else
  {
    v84 = 1;
    v83 = v117;
    v85 = v118;
  }

  (*(v119 + 56))(v83, v84, 1, v85);
  v86 = v116;
  sub_1000077CC(v57, v116, &qword_1000ED3E0, &qword_1000B70C0);
  v87 = v120;
  sub_1000077CC(v83, v120, &qword_1000ED3C8, &qword_1000B70A8);
  v88 = v121;
  sub_1000077CC(v86, v121, &qword_1000ED3E0, &qword_1000B70C0);
  v89 = sub_10000368C(&qword_1000ED430, &unk_1000B7140);
  sub_1000077CC(v87, v88 + *(v89 + 48), &qword_1000ED3C8, &qword_1000B70A8);
  sub_100007834(v83, &qword_1000ED3C8, &qword_1000B70A8);
  sub_100007834(v57, &qword_1000ED3E0, &qword_1000B70C0);
  sub_100007834(v87, &qword_1000ED3C8, &qword_1000B70A8);
  return sub_100007834(v86, &qword_1000ED3E0, &qword_1000B70C0);
}

uint64_t sub_100059064(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config))
  {
    v1 = *(result + OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config);

    TerrestrialRadioStation.setFavorite(_:)(0);
  }

  return result;
}

uint64_t sub_1000590C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000368C(&qword_1000ED400, &unk_1000B7118);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - v5);
  v7 = Image.init(systemName:)();
  v8 = (v6 + *(v3 + 44));
  v9 = *(sub_10000368C(&qword_1000ED3B0, &qword_1000B7060) + 28);
  v10 = enum case for Image.Scale.large(_:);
  v11 = type metadata accessor for Image.Scale();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  *v6 = v7;
  if (UICellConfigurationState.isFocused.getter())
  {
    v12 = [objc_opt_self() radio_carSystemFocusLabelColor];
    v13 = Color.init(uiColor:)();
  }

  else
  {
    v13 = static Color.primary.getter();
  }

  v14 = v13;
  sub_10001721C(v6, a1, &qword_1000ED400, &unk_1000B7118);
  result = sub_10000368C(&qword_1000ED3E8, &qword_1000B7110);
  *(a1 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_10005925C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v120 = a3;
  v128 = a2;
  v125 = a4;
  v114 = sub_10000368C(&qword_1000ED320, &qword_1000B6F40);
  v5 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v116 = &v108 - v6;
  v115 = sub_10000368C(&qword_1000ED328, &qword_1000B6F48);
  v7 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v113 = (&v108 - v8);
  v9 = sub_10000368C(&qword_1000ED330, &qword_1000B6F50);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v124 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v108 - v13;
  v15 = sub_10000368C(&qword_1000ED338, &qword_1000B6F58);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v119 = &v108 - v17;
  v126 = sub_10000368C(&qword_1000ED340, &qword_1000B6F60);
  v18 = *(*(v126 - 8) + 64);
  v19 = __chkstk_darwin(v126);
  v111 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v118 = &v108 - v21;
  v117 = sub_10000368C(&qword_1000ED348, &qword_1000B6F68);
  v22 = *(*(v117 - 8) + 64);
  v23 = __chkstk_darwin(v117);
  v122 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v108 - v26;
  __chkstk_darwin(v25);
  v29 = &v108 - v28;
  v30 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v112 = v30;
  v31 = *(a1 + v30);
  v32 = CAFMediaItem.songTitle.getter();
  v34 = v33;

  v123 = v14;
  v127 = v29;
  v121 = a1;
  if (!v34)
  {
    v32 = TerrestrialRadioStation.favoritesDisplayName.getter();
    v34 = v35;
  }

  v129 = v32;
  v130 = v34;
  v110 = sub_100020F58();
  v36 = Text.init<A>(_:)();
  v38 = v37;
  v40 = v39;
  v109 = objc_opt_self();
  v41 = [v109 systemFontOfSize:10.0];
  Font.init(_:)();
  v42 = Text.font(_:)();
  v44 = v43;
  v46 = v45;

  sub_100021B08(v36, v38, v40 & 1);

  if ((v128 & 0x10000) != 0)
  {
    v49 = static Color.primary.getter();
  }

  else
  {
    v47 = [objc_opt_self() labelColor];
    v48 = [v47 colorWithAlphaComponent:0.3];

    v49 = Color.init(_:)();
  }

  v129 = v49;
  v50 = Text.foregroundStyle<A>(_:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_100021B08(v42, v44, v46 & 1);

  v129 = v50;
  v130 = v52;
  v131 = v54 & 1;
  v132 = v56;
  v57 = v119;
  View.accessibilityIdentifier(_:)();
  sub_100021B08(v50, v52, v54 & 1);

  if (v120)
  {
    v58 = 1;
  }

  else
  {
    v58 = 2;
  }

  KeyPath = swift_getKeyPath();
  v60 = v57;
  v61 = v118;
  sub_10001721C(v60, v118, &qword_1000ED338, &qword_1000B6F58);
  v62 = v61 + *(v126 + 36);
  *v62 = KeyPath;
  *(v62 + 8) = v58;
  *(v62 + 16) = 0;
  v63 = swift_getKeyPath();
  sub_10001721C(v61, v27, &qword_1000ED340, &qword_1000B6F60);
  v64 = &v27[*(v117 + 36)];
  *v64 = v63;
  v64[8] = 1;
  v65 = v127;
  sub_10001721C(v27, v127, &qword_1000ED348, &qword_1000B6F68);
  v66 = v121;
  v67 = (v121 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  if ((v67[1] & 1) != 0 || (v68 = *v67) == 0)
  {
    v71 = *(v66 + v112);
    v72 = CAFMediaItem.songArtist.getter();
    v74 = v73;

    v69 = v123;
    if (v74)
    {
      v75 = HIBYTE(v74) & 0xF;
      if ((v74 & 0x2000000000000000) == 0)
      {
        v75 = v72 & 0xFFFFFFFFFFFFLL;
      }

      if (v75)
      {
        v129 = v72;
        v130 = v74;
        v76 = Text.init<A>(_:)();
        v78 = v77;
        v80 = v79;
        v81 = [v109 systemFontOfSize:10.0];
        Font.init(_:)();
        v82 = Text.font(_:)();
        v84 = v83;
        v86 = v85;

        sub_100021B08(v76, v78, v80 & 1);

        LODWORD(v129) = static HierarchicalShapeStyle.secondary.getter();
        v87 = Text.foregroundStyle<A>(_:)();
        v89 = v88;
        LOBYTE(v78) = v90;
        v92 = v91;
        v93 = v86 & 1;
        v65 = v127;
        sub_100021B08(v82, v84, v93);

        v129 = v87;
        v130 = v89;
        v131 = v78 & 1;
        v132 = v92;
        v94 = v111;
        View.accessibilityIdentifier(_:)();
        sub_100021B08(v87, v89, v78 & 1);

        v95 = swift_getKeyPath();
        v96 = v94 + *(v126 + 36);
        *v96 = v95;
        *(v96 + 8) = 1;
        *(v96 + 16) = 0;
        sub_1000077CC(v94, v116, &qword_1000ED340, &qword_1000B6F60);
        swift_storeEnumTagMultiPayload();
        sub_100005870(&qword_1000ED360, &qword_1000ED328, &qword_1000B6F48);
        sub_10005AF98();
        _ConditionalContent<>.init(storage:)();
        sub_100007834(v94, &qword_1000ED340, &qword_1000B6F60);
        v97 = 0;
        goto LABEL_22;
      }
    }

    v97 = 1;
    goto LABEL_22;
  }

  v69 = v123;
  if (v128)
  {
    sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
    static UIColor.cafui_HDOrangeColor.getter();
    v70 = Color.init(uiColor:)();
  }

  else
  {
    v70 = static Color.secondary.getter();
  }

  v98 = v70;
  v99 = static VerticalAlignment.center.getter();
  v100 = v113;
  *v113 = v99;
  *(v100 + 8) = 0x4000000000000000;
  *(v100 + 16) = 0;
  v101 = sub_10000368C(&qword_1000ED380, &qword_1000B6FE8);
  sub_100059D68(v98, v68, v100 + *(v101 + 44));
  sub_1000077CC(v100, v116, &qword_1000ED328, &qword_1000B6F48);
  swift_storeEnumTagMultiPayload();
  sub_100005870(&qword_1000ED360, &qword_1000ED328, &qword_1000B6F48);
  sub_10005AF98();
  _ConditionalContent<>.init(storage:)();

  sub_100007834(v100, &qword_1000ED328, &qword_1000B6F48);
  v97 = 0;
LABEL_22:
  v102 = sub_10000368C(&qword_1000ED350, &qword_1000B6FD0);
  (*(*(v102 - 8) + 56))(v69, v97, 1, v102);
  v103 = v122;
  sub_1000077CC(v65, v122, &qword_1000ED348, &qword_1000B6F68);
  v104 = v124;
  sub_1000077CC(v69, v124, &qword_1000ED330, &qword_1000B6F50);
  v105 = v125;
  sub_1000077CC(v103, v125, &qword_1000ED348, &qword_1000B6F68);
  v106 = sub_10000368C(&qword_1000ED358, &qword_1000B6FD8);
  sub_1000077CC(v104, v105 + *(v106 + 48), &qword_1000ED330, &qword_1000B6F50);
  sub_100007834(v69, &qword_1000ED330, &qword_1000B6F50);
  sub_100007834(v65, &qword_1000ED348, &qword_1000B6F68);
  sub_100007834(v104, &qword_1000ED330, &qword_1000B6F50);
  return sub_100007834(v103, &qword_1000ED348, &qword_1000B6F68);
}

void sub_100059D68(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v80 = a1;
  v81 = a3;
  v3 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v79 = &v72 - v5;
  v6 = sub_10000368C(&qword_1000ED390, &qword_1000B9750);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v72 - v8;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10000368C(&qword_1000EBAE0, &qword_1000B7000);
  v74 = *(v75 - 8);
  v15 = *(v74 + 64);
  __chkstk_darwin(v75);
  v17 = &v72 - v16;
  v72 = sub_10000368C(&qword_1000ED398, &qword_1000B7008);
  v18 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v20 = &v72 - v19;
  v73 = sub_10000368C(&qword_1000ED3A0, &qword_1000B7010);
  v21 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v23 = &v72 - v22;
  v76 = sub_10000368C(&qword_1000ED3A8, &qword_1000B7018);
  v24 = *(*(v76 - 8) + 64);
  v25 = __chkstk_darwin(v76);
  v78 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v72 - v28;
  __chkstk_darwin(v27);
  v82 = &v72 - v30;
  v31 = String._bridgeToObjectiveC()();
  v32 = [objc_opt_self() _systemImageNamed:v31];

  if (v32)
  {
    Image.init(uiImage:)();
    (*(v11 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v10);
    Image.resizable(capInsets:resizingMode:)();

    (*(v11 + 8))(v14, v10);
    v33 = enum case for Image.TemplateRenderingMode.template(_:);
    v34 = type metadata accessor for Image.TemplateRenderingMode();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v9, v33, v34);
    (*(v35 + 56))(v9, 0, 1, v34);
    v36 = Image.renderingMode(_:)();

    sub_100007834(v9, &qword_1000ED390, &qword_1000B9750);
    v37 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    *&v85 = v36;
    *(&v85 + 1) = KeyPath;
    *&v86 = v37;
    static Font.Weight.medium.getter();
    sub_10000368C(&qword_1000EBAF0, &unk_1000B7050);
    sub_100014710();
    View.fontWeight(_:)();

    v39 = &v20[*(v72 + 36)];
    v40 = *(sub_10000368C(&qword_1000ED3B0, &qword_1000B7060) + 28);
    v41 = enum case for Image.Scale.medium(_:);
    v42 = type metadata accessor for Image.Scale();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = swift_getKeyPath();
    (*(v74 + 32))(v20, v17, v75);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10001721C(v20, v23, &qword_1000ED398, &qword_1000B7008);
    v43 = &v23[*(v73 + 36)];
    v44 = v90;
    *(v43 + 4) = v89;
    *(v43 + 5) = v44;
    *(v43 + 6) = v91;
    v45 = v86;
    *v43 = v85;
    *(v43 + 1) = v45;
    v46 = v88;
    *(v43 + 2) = v87;
    *(v43 + 3) = v46;
    sub_10001721C(v23, v29, &qword_1000ED3A0, &qword_1000B7010);
    v47 = v80;
    *&v29[*(v76 + 36)] = v80;
    sub_10001721C(v29, v82, &qword_1000ED3A8, &qword_1000B7018);
    LOBYTE(v83) = v77;

    v83 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v48;
    sub_100020F58();
    v49 = Text.init<A>(_:)();
    v51 = v50;
    v53 = v52;
    static Font.Weight.medium.getter();
    v54 = enum case for Font.Design.rounded(_:);
    v55 = type metadata accessor for Font.Design();
    v56 = *(v55 - 8);
    v57 = v79;
    (*(v56 + 104))(v79, v54, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    static Font.system(size:weight:design:)();
    sub_100007834(v57, &qword_1000ED388, &unk_1000B6FF0);
    v58 = Text.font(_:)();
    v60 = v59;
    LOBYTE(v57) = v61;

    sub_100021B08(v49, v51, v53 & 1);

    v83 = v47;
    v62 = Text.foregroundStyle<A>(_:)();
    v64 = v63;
    LOBYTE(v51) = v65;
    v67 = v66;
    sub_100021B08(v58, v60, v57 & 1);

    v68 = v82;
    v69 = v78;
    sub_1000077CC(v82, v78, &qword_1000ED3A8, &qword_1000B7018);
    v70 = v81;
    sub_1000077CC(v69, v81, &qword_1000ED3A8, &qword_1000B7018);
    v71 = v70 + *(sub_10000368C(&qword_1000ED3B8, &qword_1000B7098) + 48);
    *v71 = v62;
    *(v71 + 8) = v64;
    *(v71 + 16) = v51 & 1;
    *(v71 + 24) = v67;
    sub_100021B18(v62, v64, v51 & 1);

    sub_100007834(v68, &qword_1000ED3A8, &qword_1000B7018);
    sub_100021B08(v62, v64, v51 & 1);

    sub_100007834(v69, &qword_1000ED3A8, &qword_1000B7018);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005A6D0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

id sub_10005A7C0(void *a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for RadioFavoritesCollectionCell();
  objc_msgSendSuper2(&v9, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v5 = [a1 nextFocusedItem];
  if (v5)
  {
    v6 = v5;
    swift_unknownObjectRelease();
    if (v6 == v2)
    {
      return [v2 setNeedsUpdateConfiguration];
    }
  }

  result = [a1 previouslyFocusedItem];
  if (result)
  {
    v8 = result;
    result = swift_unknownObjectRelease();
    if (v8 == v2)
    {
      return [v2 setNeedsUpdateConfiguration];
    }
  }

  return result;
}

id sub_10005AA28(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10005AA94(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_10005AAA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
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

uint64_t sub_10005AAF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005AB44(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10005AB58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_10005ABA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10005ABF0@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 24);
  if (*(v1 + 26))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  *&result = sub_100057F98(*(v1 + 16), v3 | v4, *(v1 + 32), *(v1 + 40), a1).n128_u64[0];
  return result;
}

unint64_t sub_10005AC28()
{
  result = qword_1000ED2C0;
  if (!qword_1000ED2C0)
  {
    sub_100005780(&qword_1000ED2B8, &qword_1000B6EF8);
    sub_10005ACB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2C0);
  }

  return result;
}

unint64_t sub_10005ACB4()
{
  result = qword_1000ED2C8;
  if (!qword_1000ED2C8)
  {
    sub_100005780(&qword_1000ED2D0, &qword_1000B6F00);
    sub_100005870(&qword_1000ED2D8, &qword_1000ED2E0, &qword_1000B6F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2C8);
  }

  return result;
}

uint64_t *sub_10005AD6C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10005ADD0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005ADFC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_10005AE28@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10005AE5C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10005AE90(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10005AEC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10005AEF0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005AF1C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10005AF98()
{
  result = qword_1000ED368;
  if (!qword_1000ED368)
  {
    sub_100005780(&qword_1000ED340, &qword_1000B6F60);
    sub_10005B050();
    sub_100005870(&qword_1000EC0B0, &qword_1000EC0B8, &qword_1000B6FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED368);
  }

  return result;
}

unint64_t sub_10005B050()
{
  result = qword_1000ED370;
  if (!qword_1000ED370)
  {
    sub_100005780(&qword_1000ED338, &qword_1000B6F58);
    sub_10005BF48(&qword_1000ED378, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED370);
  }

  return result;
}

uint64_t sub_10005B10C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005B138(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_10005B1AC(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_10005B280()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10005B2C8()
{
  result = qword_1000ED3F0;
  if (!qword_1000ED3F0)
  {
    sub_100005780(&qword_1000ED3E8, &qword_1000B7110);
    sub_10005B380();
    sub_100005870(&qword_1000EBA18, &qword_1000EBA20, &qword_1000B4910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED3F0);
  }

  return result;
}

unint64_t sub_10005B380()
{
  result = qword_1000ED3F8;
  if (!qword_1000ED3F8)
  {
    sub_100005780(&qword_1000ED400, &unk_1000B7118);
    sub_100005870(&qword_1000ED408, &qword_1000ED3B0, &qword_1000B7060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED3F8);
  }

  return result;
}

uint64_t sub_10005B438@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 32);
  v5 = *(v1 + 96);
  return sub_100053E74(*(v1 + 16), v2 | *(v1 + 24), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), a1, *(v1 + 88));
}

double sub_10005B48C(char a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    v8 = 6.0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = 6.0;
    if ((v7 & 1) == 0)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
      if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
      {

        v8 = 12.0;
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v8 = 12.0;
        if ((v14 & 1) == 0)
        {
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;
          if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
          {

            v8 = 18.0;
          }

          else
          {
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v8 = 0.0;
            if (v21)
            {
              v8 = 18.0;
            }
          }
        }
      }
    }
  }

  if ((a1 - 1) > 7u)
  {
    v19 = 40.0;
  }

  else
  {
    v19 = dbl_1000B74C8[(a1 - 1)];
  }

  return v8 + v19;
}

double sub_10005B670(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10005B698()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_100056DD0(*(v0 + 16), v1 | *(v0 + 24), *(v0 + 32));
}

unint64_t sub_10005B6BC()
{
  result = qword_1000ED4B0;
  if (!qword_1000ED4B0)
  {
    sub_100005780(&qword_1000ED4B8, &qword_1000B71A0);
    sub_10005B748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4B0);
  }

  return result;
}

unint64_t sub_10005B748()
{
  result = qword_1000ED4C0;
  if (!qword_1000ED4C0)
  {
    sub_100005780(&qword_1000ED4C8, &qword_1000B71A8);
    sub_100005870(&qword_1000EBA18, &qword_1000EBA20, &qword_1000B4910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4C0);
  }

  return result;
}

unint64_t sub_10005B810()
{
  result = qword_1000ED578;
  if (!qword_1000ED578)
  {
    sub_100005780(&qword_1000ED550, &qword_1000B7270);
    sub_10005B89C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED578);
  }

  return result;
}

unint64_t sub_10005B89C()
{
  result = qword_1000ED580;
  if (!qword_1000ED580)
  {
    sub_100005780(&qword_1000ED548, &qword_1000B7268);
    sub_10005B954();
    sub_100005870(&qword_1000ED5B8, &qword_1000ED5C0, &qword_1000B72F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED580);
  }

  return result;
}

unint64_t sub_10005B954()
{
  result = qword_1000ED588;
  if (!qword_1000ED588)
  {
    sub_100005780(&qword_1000ED540, &qword_1000B7260);
    sub_10005BA0C();
    sub_100005870(&qword_1000ED5B0, &qword_1000ED570, &qword_1000B72D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED588);
  }

  return result;
}

unint64_t sub_10005BA0C()
{
  result = qword_1000ED590;
  if (!qword_1000ED590)
  {
    sub_100005780(&qword_1000ED598, &qword_1000B72E0);
    sub_10005BA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED590);
  }

  return result;
}

unint64_t sub_10005BA98()
{
  result = qword_1000ED5A0;
  if (!qword_1000ED5A0)
  {
    sub_100005780(&qword_1000ED5A8, &unk_1000B72E8);
    sub_100014710();
    sub_100005870(&qword_1000EC0A0, &qword_1000EC0A8, &unk_1000B54F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5A0);
  }

  return result;
}

unint64_t sub_10005BB50()
{
  result = qword_1000ED5C8;
  if (!qword_1000ED5C8)
  {
    sub_100005780(&qword_1000ED538, &qword_1000B7258);
    sub_10005BC08(&qword_1000ED5D0, &qword_1000ED530, &qword_1000B7250, sub_10005BCBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5C8);
  }

  return result;
}

uint64_t sub_10005BC08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    a4();
    sub_10005BF48(&qword_1000ED378, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005BCBC()
{
  result = qword_1000ED5D8;
  if (!qword_1000ED5D8)
  {
    sub_100005780(&qword_1000ED528, &qword_1000B7248);
    sub_10005BD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5D8);
  }

  return result;
}

unint64_t sub_10005BD48()
{
  result = qword_1000ED5E0;
  if (!qword_1000ED5E0)
  {
    sub_100005780(&qword_1000ED520, &qword_1000B7240);
    sub_10005BE00();
    sub_100005870(&qword_1000EBB48, &qword_1000EBB38, &qword_1000B4B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5E0);
  }

  return result;
}

unint64_t sub_10005BE00()
{
  result = qword_1000ED5E8;
  if (!qword_1000ED5E8)
  {
    sub_100005780(&qword_1000ED5F0, &unk_1000B7300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5E8);
  }

  return result;
}

unint64_t sub_10005BE84()
{
  result = qword_1000ED5F8;
  if (!qword_1000ED5F8)
  {
    sub_100005780(&qword_1000ED560, &qword_1000B7280);
    sub_10005BC08(&qword_1000ED600, &qword_1000ED558, &qword_1000B7278, sub_10005B810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5F8);
  }

  return result;
}

uint64_t sub_10005BF48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005BF90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10005BFA0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_10005BFB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
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

uint64_t sub_10005C010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10005C090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C0F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C158(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005C1C0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_10005C21C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10005C280()
{
  result = qword_1000ED6A8;
  if (!qword_1000ED6A8)
  {
    sub_100005780(&qword_1000ED680, &qword_1000B7400);
    sub_10005C338();
    sub_100005870(&qword_1000ED6E0, &qword_1000ED6A0, &qword_1000B7420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED6A8);
  }

  return result;
}

unint64_t sub_10005C338()
{
  result = qword_1000ED6B0;
  if (!qword_1000ED6B0)
  {
    sub_100005780(&qword_1000ED678, &qword_1000B73F8);
    sub_10005C3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED6B0);
  }

  return result;
}

unint64_t sub_10005C3C4()
{
  result = qword_1000ED6B8;
  if (!qword_1000ED6B8)
  {
    sub_100005780(&qword_1000ED670, &qword_1000B73F0);
    sub_10005C47C();
    sub_100005870(&qword_1000ED6D0, &qword_1000ED6D8, qword_1000B7458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED6B8);
  }

  return result;
}

unint64_t sub_10005C47C()
{
  result = qword_1000ED6C0;
  if (!qword_1000ED6C0)
  {
    sub_100005780(&qword_1000ED668, &qword_1000B73E8);
    sub_100005870(&qword_1000ED6C8, &qword_1000ED660, &qword_1000B73E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED6C0);
  }

  return result;
}

unint64_t sub_10005C554()
{
  result = qword_1000ED6F0;
  if (!qword_1000ED6F0)
  {
    sub_100005780(&qword_1000ED6F8, &unk_1000B74B8);
    sub_10005BD48();
    sub_10005BA0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED6F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadioFeatures(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RadioFeatures(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10005C6C8()
{
  result = qword_1000ED700;
  if (!qword_1000ED700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED700);
  }

  return result;
}

Swift::Int sub_10005C71C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10005C788()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10005C7F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MediaProgressView(0);
  sub_1000077CC(v1 + *(v12 + 20), v11, &qword_1000EB118, &qword_1000B3FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

BOOL sub_10005C9F8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  v8 = v6;
  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v8 = v16;
  }

  swift_getKeyPath();
  v16 = v8;
  sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v8 + 16);

  if (v10)
  {
    return 0;
  }

  sub_10005CCCC();
  if (v12)
  {

    return 0;
  }

  else
  {

    if ((v7 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v13 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v2 + 8))(v5, v1);
      v6 = v16;
    }

    swift_getKeyPath();
    v16 = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v6 + 17);

    return (v14 - 1) < 2;
  }
}

uint64_t sub_10005CCCC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  v8 = v6;
  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v8 = v30;
  }

  swift_getKeyPath();
  v10 = &qword_1000EB000;
  v30 = v8;
  sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v8 + 24);
  if (*(v8 + 40))
  {
    if (*(v8 + 40) != 1)
    {

      return 0;
    }

    v12 = *(v8 + 32);
    v13 = *(v8 + 24);

    sub_10006957C();

    sub_10000C9C0(v11, v12, 1);
    v10 = &qword_1000EB000;
  }

  else
  {
    v14 = v11;
    [v14 durationSnapshot];
    v15 = v31;

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v6 = v30;
  }

  swift_getKeyPath();
  v17 = v10[41];
  v30 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v6 + 24);
  if (*(v6 + 40))
  {
    if (*(v6 + 40) == 1)
    {
      v19 = *(v6 + 32);
      v20 = *(v6 + 24);

      v21 = sub_10006957C();
      v23 = v22;

      sub_10000C9C0(v18, v19, 1);
      if (v23)
      {
        return v21;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v25 = v18;
    [v25 durationSnapshot];
  }

LABEL_16:
  v26 = String._bridgeToObjectiveC()();
  v27 = CPUILocalizedStringForKey();

  if (v27)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v28;
  }

  return 0;
}

id sub_10005D0C4()
{
  result = [objc_allocWithZone(AVTimeFormatter) init];
  qword_1000ED708 = result;
  return result;
}

uint64_t sub_10005D0F8@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v93 = type metadata accessor for EnvironmentValues();
  v92 = *(v93 - 8);
  v2 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MediaProgressView(0);
  v90 = *(v4 - 8);
  v5 = *(v90 + 64);
  __chkstk_darwin(v4 - 8);
  v106 = v6;
  v98 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10000368C(&qword_1000ED8D0, &qword_1000B77B8);
  v7 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v97 = (&v83 - v8);
  v103 = sub_10000368C(&qword_1000ED8D8, &qword_1000B77C0);
  v94 = *(v103 - 8);
  v9 = *(v94 + 64);
  __chkstk_darwin(v103);
  v101 = &v83 - v10;
  v104 = sub_10000368C(&qword_1000ED8E0, &qword_1000B77C8);
  v96 = *(v104 - 8);
  v11 = *(v96 + 64);
  __chkstk_darwin(v104);
  v95 = &v83 - v12;
  v89 = type metadata accessor for ColorScheme();
  v88 = *(v89 - 8);
  v13 = *(v88 + 64);
  v14 = __chkstk_darwin(v89);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v83 - v17;
  v19 = type metadata accessor for BlendMode();
  v99 = *(v19 - 8);
  v100 = v19;
  v20 = *(v99 + 64);
  __chkstk_darwin(v19);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000368C(&qword_1000ED8E8, &qword_1000B77D0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v83 - v25;
  v27 = type metadata accessor for LiveLabelView(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v1;
  v32 = sub_10005CCCC();
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    *v30 = swift_getKeyPath();
    sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
    swift_storeEnumTagMultiPayload();
    v36 = (v30 + *(v27 + 20));
    *v36 = v34;
    v36[1] = v35;
    sub_100064448(v30, v26, type metadata accessor for LiveLabelView);
    swift_storeEnumTagMultiPayload();
    sub_100063C7C(&qword_1000ED938, type metadata accessor for LiveLabelView);
    v37 = sub_100064218();
    v38 = sub_100036F74();
    v107 = v102;
    v108 = &type metadata for NowPlayingStyle;
    v109 = v37;
    v110 = v38;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = sub_1000643EC();
    v107 = v103;
    v108 = &type metadata for RadioNowPlayingViewModel.Source;
    v109 = OpaqueTypeConformance2;
    v110 = v40;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_1000644B0(v30);
  }

  else
  {
    v85 = v23;
    v86 = v27;
    v87 = v26;
    sub_10005C7F0(v18);
    v42 = v88;
    v43 = v89;
    (*(v88 + 104))(v16, enum case for ColorScheme.dark(_:), v89);
    v44 = static ColorScheme.== infix(_:_:)();
    v45 = *(v42 + 8);
    v45(v16, v43);
    v45(v18, v43);
    v46 = &enum case for BlendMode.plusLighter(_:);
    if ((v44 & 1) == 0)
    {
      v46 = &enum case for BlendMode.plusDarker(_:);
    }

    (*(v99 + 104))(v22, *v46, v100);
    v47 = static HorizontalAlignment.leading.getter();
    v48 = v97;
    *v97 = v47;
    v48[1] = 0x4010000000000000;
    *(v48 + 16) = 0;
    v49 = v48 + *(sub_10000368C(&qword_1000ED8F0, &qword_1000B77D8) + 44);
    v89 = v22;
    sub_10005DDCC(v31, v22, v49);
    KeyPath = swift_getKeyPath();
    v51 = (v48 + *(sub_10000368C(&qword_1000ED8F8, &qword_1000B7810) + 36));
    v52 = *(sub_10000368C(&qword_1000ED900, &unk_1000B7818) + 28);
    v53 = enum case for LayoutDirection.leftToRight(_:);
    v54 = type metadata accessor for LayoutDirection();
    (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
    *v51 = KeyPath;
    v55 = v98;
    sub_100064448(v31, v98, type metadata accessor for MediaProgressView);
    v56 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v57 = swift_allocObject();
    sub_1000076F8(v55, v57 + v56);
    v58 = v102;
    v59 = (v48 + *(v102 + 36));
    *v59 = sub_100064078;
    v59[1] = v57;
    v59[2] = 0;
    v59[3] = 0;
    v60 = *v31;
    LODWORD(v57) = *(v31 + 8);

    v61 = v60;
    LODWORD(v88) = v57;
    if ((v57 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v62 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v63 = v91;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v92 + 8))(v63, v93);
      v61 = v107;
    }

    swift_getKeyPath();
    v107 = v61;
    sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v64 = *(v61 + 17);

    LOBYTE(v107) = v64;
    v90 = v31;
    sub_100064448(v31, v55, type metadata accessor for MediaProgressView);
    v65 = swift_allocObject();
    sub_1000076F8(v55, v65 + v56);
    v66 = sub_100064218();
    v67 = sub_100036F74();
    v84 = v66;
    v68 = v97;
    View.onChange<A>(of:initial:_:)();

    sub_100007834(v68, &qword_1000ED8D0, &qword_1000B77B8);

    if ((v88 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v69 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v70 = v91;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v92 + 8))(v70, v93);
      v60 = v107;
    }

    swift_getKeyPath();
    v107 = v60;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v71 = *(v60 + 24);
    v72 = *(v60 + 32);
    v73 = *(v60 + 40);
    sub_10000C964(v71, v72, v73);

    v111 = v71;
    v112 = v72;
    v113 = v73;
    v74 = v98;
    sub_100064448(v90, v98, type metadata accessor for MediaProgressView);
    v75 = swift_allocObject();
    sub_1000076F8(v74, v75 + v56);
    v107 = v58;
    v108 = &type metadata for NowPlayingStyle;
    v109 = v84;
    v110 = v67;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = sub_1000643EC();
    v78 = v95;
    v79 = v103;
    v80 = v101;
    View.onChange<A>(of:initial:_:)();

    sub_10000C9C0(v71, v72, v73);
    (*(v94 + 8))(v80, v79);
    v81 = v96;
    v82 = v104;
    (*(v96 + 16))(v87, v78, v104);
    swift_storeEnumTagMultiPayload();
    sub_100063C7C(&qword_1000ED938, type metadata accessor for LiveLabelView);
    v107 = v79;
    v108 = &type metadata for RadioNowPlayingViewModel.Source;
    v109 = v76;
    v110 = v77;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v81 + 8))(v78, v82);
    return (*(v99 + 8))(v89, v100);
  }
}

uint64_t sub_10005DDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a3;
  v103 = sub_10000368C(&qword_1000ED950, &qword_1000B79D0);
  v102 = *(v103 - 8);
  v5 = *(v102 + 64);
  __chkstk_darwin(v103);
  v92 = (&v92 - v6);
  v7 = sub_10000368C(&qword_1000ED958, &qword_1000B79D8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v105 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v104 = &v92 - v11;
  v12 = type metadata accessor for EnvironmentValues();
  v98 = *(v12 - 8);
  v13 = *(v98 + 64);
  __chkstk_darwin(v12);
  v97 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000368C(&qword_1000ED960, &qword_1000B79E0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = (&v92 - v18);
  v99 = sub_10000368C(&qword_1000ED968, &qword_1000B79E8);
  v20 = *(*(v99 - 8) + 64);
  v21 = __chkstk_darwin(v99);
  v101 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v92 - v24;
  __chkstk_darwin(v23);
  v100 = &v92 - v26;
  v27 = [objc_opt_self() secondarySystemFillColor];
  v28 = Color.init(uiColor:)();
  v29 = static Alignment.leading.getter();
  v31 = v30;
  v32 = v19 + *(sub_10000368C(&qword_1000ED970, &qword_1000B79F0) + 36);
  v93 = a2;
  sub_10005ECE4(a1, a2, v32);
  v33 = (v32 + *(sub_10000368C(&qword_1000ED978, &qword_1000B79F8) + 36));
  *v33 = v29;
  v33[1] = v31;
  *v19 = v28;
  v34 = v19 + *(v16 + 44);
  v35 = enum case for RoundedCornerStyle.continuous(_:);
  v36 = type metadata accessor for RoundedCornerStyle();
  (*(*(v36 - 8) + 104))(v34, v35, v36);
  *&v34[*(sub_10000368C(&qword_1000ED980, &qword_1000B7A00) + 36)] = 256;
  v37 = *a1;
  LODWORD(a2) = *(a1 + 8);

  v38 = v37;
  v96 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v40 = v97;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v98 + 8))(v40, v12);
    v38 = *&v113;
  }

  v94 = v12;
  v41 = 1701736302;
  swift_getKeyPath();
  *&v113 = v38;
  v95 = sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(*&v38 + 17);

  if (v42 <= 2 && v42)
  {
    v43 = v42 == 1 ? 0x4D646E417370616DLL : 0xD000000000000010;
    v44 = v42 == 1 ? 0xEC00000061696465 : 0x80000001000BAEF0;
    if (v43 == 0xD000000000000010 && 0x80000001000BAEF0 == v44)
    {
      v45 = v106;
      v46 = v99;
LABEL_16:

LABEL_17:
      v47 = v100;
      goto LABEL_20;
    }
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v48 & 1) == 0)
  {
    if (v42 <= 2)
    {
      v45 = v106;
      if (v42)
      {
        if (v42 == 1)
        {
          v41 = 0x4D646E417370616DLL;
        }

        else
        {
          v41 = 0xD000000000000010;
        }

        if (v42 == 1)
        {
          v91 = 0xEC00000061696465;
        }

        else
        {
          v91 = 0x80000001000BAEF0;
        }
      }

      else
      {
        v91 = 0xE400000000000000;
      }
    }

    else
    {
      v45 = v106;
      if (v42 > 4)
      {
        if (v42 != 5)
        {
          v46 = v99;
          goto LABEL_53;
        }

        v41 = 0x756964654D616364;
        v91 = 0xE90000000000006DLL;
      }

      else
      {
        v41 = 0x6D696E694D616364;
        if (v42 == 3)
        {
          v91 = 0xEA00000000006C61;
        }

        else
        {
          v91 = 0xEE00656469576C61;
        }
      }
    }

    v46 = v99;
    if (v41 == 0x4D646E417370616DLL && v91 == 0xEC00000061696465)
    {
      goto LABEL_16;
    }

LABEL_53:
    _stringCompareWithSmolCheck(_:_:expecting:)();

    goto LABEL_17;
  }

  v45 = v106;
  v47 = v100;
  v46 = v99;
LABEL_20:
  static Alignment.center.getter();
  v49 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001721C(v19, v25, &qword_1000ED960, &qword_1000B79E0);
  v50 = &v25[*(v46 + 36)];
  v51 = v118;
  *(v50 + 4) = v117;
  *(v50 + 5) = v51;
  *(v50 + 6) = v119;
  v52 = v114;
  *v50 = v113;
  *(v50 + 1) = v52;
  v53 = v116;
  *(v50 + 2) = v115;
  *(v50 + 3) = v53;
  sub_10001721C(v25, v47, &qword_1000ED968, &qword_1000B79E8);
  v54 = sub_10005C9F8();
  v55 = v104;
  if (v54)
  {

    if ((v96 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v56 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v57 = v97;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v98 + 8))(v57, v94);
      v37 = v107;
    }

    swift_getKeyPath();
    v107 = v37;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = *(*&v37 + 24);
    if (*(*&v37 + 40))
    {
      if (*(*&v37 + 40) != 1)
      {

        goto LABEL_35;
      }

      v59 = *(*&v37 + 32);
      v60 = *(*&v37 + 24);

      sub_10006957C();

      sub_10000C9C0(v58, v59, 1);

      v61 = 1.0;
      v62 = 0.0;
      v63 = 0.0;
      v64 = 0.0;
    }

    else
    {
      v65 = v58;
      [v65 durationSnapshot];
      v62 = v107;
      v63 = v109;
      v64 = v110;
      v66 = v111;

      v61 = v66;
    }

    v67 = (a1 + *(type metadata accessor for MediaProgressView(0) + 24));
    v69 = *v67;
    v68 = *(v67 + 1);
    v107 = v69;
    v108 = v68;
    sub_10000368C(&qword_1000ED940, &qword_1000B78B0);
    State.wrappedValue.getter();
    v70 = v112;
    swift_getKeyPath();
    v107 = v70;
    sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v71 = *(*&v70 + 56);

    if ((v71 & 1) == 0)
    {
      static Date.timeIntervalSinceReferenceDate.getter();
      v73 = v64 + (v72 - v62) * v61;
      if (v73 >= v63)
      {
        v73 = v63;
      }

      v74 = v63 - fmax(v73, 0.0);
      if (qword_1000EAD20 != -1)
      {
        swift_once();
      }

      v75 = qword_1000ED708;
      v76 = [qword_1000ED708 stringFromSeconds:?];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v80 = [v75 stringFromSeconds:v74];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v84 = static VerticalAlignment.center.getter();
      v85 = v92;
      *v92 = v84;
      *(v85 + 8) = 0;
      *(v85 + 16) = 1;
      v86 = sub_10000368C(&qword_1000ED990, &qword_1000B7A10);
      sub_10005EFD4(v77, v79, v93, v81, v83, v85 + *(v86 + 44));

      sub_10001721C(v85, v55, &qword_1000ED950, &qword_1000B79D0);
      v49 = 0;
    }
  }

LABEL_35:
  (*(v102 + 56))(v55, v49, 1, v103);
  v87 = v101;
  sub_1000077CC(v47, v101, &qword_1000ED968, &qword_1000B79E8);
  v88 = v105;
  sub_1000077CC(v55, v105, &qword_1000ED958, &qword_1000B79D8);
  sub_1000077CC(v87, v45, &qword_1000ED968, &qword_1000B79E8);
  v89 = sub_10000368C(&qword_1000ED988, &qword_1000B7A08);
  sub_1000077CC(v88, v45 + *(v89 + 48), &qword_1000ED958, &qword_1000B79D8);
  sub_100007834(v55, &qword_1000ED958, &qword_1000B79D8);
  sub_100007834(v47, &qword_1000ED968, &qword_1000B79E8);
  sub_100007834(v88, &qword_1000ED958, &qword_1000B79D8);
  return sub_100007834(v87, &qword_1000ED968, &qword_1000B79E8);
}

uint64_t sub_10005ECE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000368C(&qword_1000ED9A8, &qword_1000B7A28);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v24 - v9;
  v11 = (a1 + *(type metadata accessor for MediaProgressView(0) + 24));
  v13 = *v11;
  v12 = v11[1];
  v25 = v13;
  v26 = v12;
  sub_10000368C(&qword_1000ED940, &qword_1000B78B0);
  State.wrappedValue.getter();
  v14 = v24[1];
  swift_getKeyPath();
  v25 = v14;
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v14 + 48);
  LOBYTE(a1) = *(v14 + 56);

  if (a1)
  {
    v16 = 1;
  }

  else
  {
    v17 = static HierarchicalShapeStyle.secondary.getter();
    v18 = *(sub_10000368C(&qword_1000ED9B0, &qword_1000B7A30) + 36);
    v19 = type metadata accessor for BlendMode();
    (*(*(v19 - 8) + 16))(&v10[v18], a2, v19);
    *v10 = v17;
    static UnitPoint.leading.getter();
    v20 = &v10[*(v6 + 36)];
    *v20 = v15;
    *(v20 + 1) = 0x3FF0000000000000;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    sub_10001721C(v10, a3, &qword_1000ED9A8, &qword_1000B7A28);
    v16 = 0;
  }

  return (*(v7 + 56))(a3, v16, 1, v6);
}

uint64_t sub_10005EF30()
{
  swift_getKeyPath();
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_10005EFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v68._countAndFlagsBits = a4;
  v68._object = a5;
  v75 = a3;
  v72 = a6;
  v8 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000368C(&qword_1000ED998, &qword_1000B7A18);
  v11 = *(v10 - 8);
  v74 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v71 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v70 = &v65 - v16;
  v17 = __chkstk_darwin(v15);
  v69 = &v65 - v18;
  __chkstk_darwin(v17);
  v73 = &v65 - v19;
  v76 = a1;
  v77 = a2;
  sub_100020F58();

  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  static Font.body.getter();
  Font.monospacedDigit()();

  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  sub_100021B08(v20, v22, v24 & 1);

  LODWORD(v76) = static HierarchicalShapeStyle.secondary.getter();
  v30 = Text.foregroundStyle<A>(_:)();
  v32 = v31;
  LOBYTE(v20) = v33;
  v35 = v34;
  sub_100021B08(v25, v27, v29 & 1);

  v36 = *(v74 + 44);
  v37 = type metadata accessor for BlendMode();
  v38 = *(v37 - 8);
  v66 = *(v38 + 16);
  v67 = v38 + 16;
  v39 = v73;
  v66(v73 + v36, v75, v37);
  *v39 = v30;
  *(v39 + 8) = v32;
  *(v39 + 16) = v20 & 1;
  *(v39 + 24) = v35;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v40._countAndFlagsBits = 45;
  v40._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v40);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v68);
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v41);
  LocalizedStringKey.init(stringInterpolation:)();
  v42 = Text.init(_:tableName:bundle:comment:)();
  v44 = v43;
  LOBYTE(v32) = v45;
  static Font.body.getter();
  Font.monospacedDigit()();

  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;

  sub_100021B08(v42, v44, v32 & 1);

  LODWORD(v76) = static HierarchicalShapeStyle.secondary.getter();
  v51 = Text.foregroundStyle<A>(_:)();
  v53 = v52;
  LOBYTE(v32) = v54;
  v56 = v55;
  sub_100021B08(v46, v48, v50 & 1);

  v57 = v69;
  v66(&v69[*(v74 + 44)], v75, v37);
  *v57 = v51;
  *(v57 + 8) = v53;
  *(v57 + 16) = v32 & 1;
  *(v57 + 24) = v56;
  v58 = v73;
  v59 = v70;
  sub_1000077CC(v73, v70, &qword_1000ED998, &qword_1000B7A18);
  v60 = v71;
  sub_1000077CC(v57, v71, &qword_1000ED998, &qword_1000B7A18);
  v61 = v72;
  sub_1000077CC(v59, v72, &qword_1000ED998, &qword_1000B7A18);
  v62 = sub_10000368C(&qword_1000ED9A0, &qword_1000B7A20);
  v63 = v61 + *(v62 + 48);
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_1000077CC(v60, v61 + *(v62 + 64), &qword_1000ED998, &qword_1000B7A18);
  sub_100007834(v57, &qword_1000ED998, &qword_1000B7A18);
  sub_100007834(v58, &qword_1000ED998, &qword_1000B7A18);
  sub_100007834(v60, &qword_1000ED998, &qword_1000B7A18);
  return sub_100007834(v59, &qword_1000ED998, &qword_1000B7A18);
}

void sub_10005F4C0(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for MediaProgressView(0) + 24));
  v9 = *v7;
  v8 = v7[1];
  v16 = v9;
  v17 = v8;
  sub_10000368C(&qword_1000ED940, &qword_1000B78B0);
  State.wrappedValue.getter();
  v10 = v15[1];
  v11 = *a1;
  v12 = *(a1 + 8);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v11 = v16;
  }

  v14 = *(v10 + 24);
  *(v10 + 24) = v11;

  sub_100060BF4();

  sub_10005F678();
}

void sub_10005F678()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v7 = *&v20[0];
  }

  swift_getKeyPath();
  *&v20[0] = v7;
  sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v7 + 24);
  v10 = *(v7 + 32);
  v12 = *(v7 + 40);
  sub_10000C964(v11, v10, *(v7 + 40));

  if (v12)
  {
    sub_10000C9C0(v11, v10, v12);
  }

  else
  {

    v13 = (v1 + *(type metadata accessor for MediaProgressView(0) + 24));
    v15 = *v13;
    v14 = v13[1];
    *&v20[0] = v15;
    *(&v20[0] + 1) = v14;
    sub_10000368C(&qword_1000ED940, &qword_1000B78B0);
    State.wrappedValue.getter();
    v16 = v22;
    [v11 durationSnapshot];
    v17 = v21;
    v18 = v20[1];
    v19 = v20[2];
    *(v16 + 64) = v20[0];
    *(v16 + 80) = v18;
    *(v16 + 96) = v19;
    *(v16 + 112) = v17;
    sub_1000621A8();
  }
}

uint64_t sub_10005F8E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000077CC(v2, &v17 - v11, &qword_1000EB118, &qword_1000B3FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10005FAE4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_10000368C(&qword_1000EDA58, &qword_1000B7AA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v34 - v4;
  v6 = sub_10000368C(&qword_1000EDA60, &qword_1000B7AA8);
  v7 = *(v6 - 8);
  v36 = v6 - 8;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v35 = &v34 - v9;
  v10 = type metadata accessor for ColorScheme();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v34 = type metadata accessor for BlendMode();
  v18 = *(v34 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v34);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005F8E0(v17);
  (*(v11 + 104))(v15, enum case for ColorScheme.dark(_:), v10);
  v22 = static ColorScheme.== infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v15, v10);
  v23(v17, v10);
  v24 = &enum case for BlendMode.plusLighter(_:);
  if ((v22 & 1) == 0)
  {
    v24 = &enum case for BlendMode.plusDarker(_:);
  }

  v25 = v34;
  (*(v18 + 104))(v21, *v24, v34);
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  v26 = sub_10000368C(&qword_1000EDA68, &qword_1000B7AB0);
  sub_10005FE88(v21, v1, &v5[*(v26 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v35;
  sub_10001721C(v5, v35, &qword_1000EDA58, &qword_1000B7AA0);
  v28 = v37;
  v29 = (v27 + *(v36 + 44));
  v30 = v43;
  v29[4] = v42;
  v29[5] = v30;
  v29[6] = v44;
  v31 = v39;
  *v29 = v38;
  v29[1] = v31;
  v32 = v41;
  v29[2] = v40;
  v29[3] = v32;
  sub_10001721C(v27, v28, &qword_1000EDA60, &qword_1000B7AA8);
  return (*(v18 + 8))(v21, v25);
}

uint64_t sub_10005FE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v80 = a1;
  v91 = a3;
  v4 = sub_10000368C(&qword_1000EDA70, &qword_1000B7AB8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v79 = v4 - 8;
  v7 = __chkstk_darwin(v4);
  v88 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v74[-v9];
  v11 = sub_10000368C(&qword_1000EDA78, &qword_1000B7AC0);
  v12 = *(*(v11 - 8) + 64);
  v13 = v11 - 8;
  v76 = v11 - 8;
  v14 = __chkstk_darwin(v11 - 8);
  v90 = &v74[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v93 = &v74[-v17];
  v18 = __chkstk_darwin(v16);
  v89 = &v74[-v19];
  v20 = __chkstk_darwin(v18);
  v92 = &v74[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v74[-v23];
  __chkstk_darwin(v22);
  v26 = &v74[-v25];
  v82 = &v74[-v25];
  v86 = sub_10000368C(&qword_1000EDA80, &qword_1000B7AC8);
  v27 = swift_allocObject();
  v85 = xmmword_1000B5700;
  *(v27 + 16) = xmmword_1000B5700;
  v84 = objc_opt_self();
  v28 = [v84 secondarySystemFillColor];
  *(v27 + 32) = Color.init(uiColor:)();
  *(v27 + 40) = static Color.clear.getter();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v83 = sub_10000368C(&qword_1000EDA88, &qword_1000B7AD0);
  v29 = *(v83 + 36);
  v78 = type metadata accessor for BlendMode();
  v30 = *(v78 - 8);
  v77 = *(v30 + 16);
  v81 = v30 + 16;
  v77(&v10[v29], a1, v78);
  *(v10 + 4) = v96;
  v31 = v95;
  *v10 = v94;
  *(v10 + 1) = v31;
  v32 = &v10[*(v5 + 44)];
  *v32 = 0x4024000000000000;
  *(v32 + 1) = 5;
  *(v32 + 8) = 256;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001721C(v10, v24, &qword_1000EDA70, &qword_1000B7AB8);
  v33 = &v24[*(v13 + 44)];
  v34 = v102;
  v35 = v103;
  v33[4] = v101;
  v33[5] = v34;
  v33[6] = v35;
  v36 = v98;
  *v33 = v97;
  v33[1] = v36;
  v37 = v100;
  v33[2] = v99;
  v33[3] = v37;
  sub_10001721C(v24, v26, &qword_1000EDA78, &qword_1000B7AC0);
  v38 = (v87 + *(type metadata accessor for LiveLabelView(0) + 20));
  v39 = v38[1];
  *&v107 = *v38;
  *(&v107 + 1) = v39;
  sub_100020F58();

  v40 = Text.init<A>(_:)();
  v42 = v41;
  LOBYTE(v5) = v43;
  static Font.body.getter();
  v44 = Text.font(_:)();
  v46 = v45;
  LOBYTE(v27) = v47;

  sub_100021B08(v40, v42, v5 & 1);

  static Font.Weight.semibold.getter();
  v48 = Text.fontWeight(_:)();
  v50 = v49;
  v75 = v51;
  v87 = v52;
  sub_100021B08(v44, v46, v27 & 1);

  v53 = swift_allocObject();
  *(v53 + 16) = v85;
  *(v53 + 32) = static Color.clear.getter();
  v54 = [v84 secondarySystemFillColor];
  *(v53 + 40) = Color.init(uiColor:)();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v55 = v88;
  v77(&v88[*(v83 + 36)], v80, v78);
  *(v55 + 4) = v106;
  v56 = v105;
  *v55 = v104;
  *(v55 + 1) = v56;
  v57 = &v55[*(v79 + 44)];
  *v57 = 0x4024000000000000;
  *(v57 + 1) = 10;
  *(v57 + 8) = 256;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v58 = v55;
  v59 = v89;
  sub_10001721C(v58, v89, &qword_1000EDA70, &qword_1000B7AB8);
  v60 = &v59[*(v76 + 44)];
  v61 = v112;
  v60[4] = v111;
  v60[5] = v61;
  v60[6] = v113;
  v62 = v108;
  *v60 = v107;
  v60[1] = v62;
  v63 = v110;
  v60[2] = v109;
  v60[3] = v63;
  v64 = v59;
  v65 = v92;
  sub_10001721C(v64, v92, &qword_1000EDA78, &qword_1000B7AC0);
  v66 = v82;
  v67 = v93;
  sub_1000077CC(v82, v93, &qword_1000EDA78, &qword_1000B7AC0);
  v68 = v90;
  sub_1000077CC(v65, v90, &qword_1000EDA78, &qword_1000B7AC0);
  v69 = v91;
  sub_1000077CC(v67, v91, &qword_1000EDA78, &qword_1000B7AC0);
  v70 = sub_10000368C(&qword_1000EDA90, &qword_1000B7AD8);
  v71 = v69 + *(v70 + 48);
  v72 = v69;
  *v71 = v48;
  *(v71 + 8) = v50;
  LOBYTE(v69) = v75 & 1;
  *(v71 + 16) = v75 & 1;
  *(v71 + 24) = v87;
  sub_1000077CC(v68, v72 + *(v70 + 64), &qword_1000EDA78, &qword_1000B7AC0);
  sub_100021B18(v48, v50, v69);

  sub_100007834(v92, &qword_1000EDA78, &qword_1000B7AC0);
  sub_100007834(v66, &qword_1000EDA78, &qword_1000B7AC0);
  sub_100007834(v68, &qword_1000EDA78, &qword_1000B7AC0);
  sub_100021B08(v48, v50, v69);

  return sub_100007834(v93, &qword_1000EDA78, &qword_1000B7AC0);
}

double sub_1000605F8@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = [objc_opt_self() bezierPathWithRoundedRect:*(v5 + 1) byRoundingCorners:a2 cornerRadii:{a3, a4, a5, *v5, *v5}];
  v8 = [v7 CGPath];
  Path.init(_:)();

  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

void (*sub_1000606E4(uint64_t *a1))(void *a1)
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
  return sub_10006076C;
}

void sub_10006076C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1000607B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064CF4();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10006081C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064CF4();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100060880(uint64_t a1)
{
  v2 = sub_100064CF4();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_1000608CC()
{
  swift_getKeyPath();
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_100060984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_100060A44(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_100063868(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100060B8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

void sub_100060BF4()
{
  v1 = v0;
  v2 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v66 - v4;
  v6 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v66 - v9;
  v11 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v66 - v17;
  v19 = __chkstk_darwin(v16);
  v22 = &v66 - v21;
  v23 = v1[3];
  if (v23)
  {
    v66 = v10;
    v67 = v7;
    v68 = v6;
    v69 = v20;
    v70 = v19;
    swift_getKeyPath();
    v71 = v23;
    sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v23[17] == 2)
    {
      sub_100061A5C(0xD000000000000011, 0x80000001000BC330);
      v24 = objc_opt_self();
      v25 = [v24 sharedApplication];
      v26 = [v25 delegate];

      if (v26)
      {
        type metadata accessor for AppDelegate();
        swift_dynamicCastClassUnconditional();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        swift_unknownObjectRelease();
        v27 = v71;
        v28 = [v71 windowScene];

        v29 = v1[15];
        v1[15] = v28;
        v30 = v28;
        sub_100062EA4(v29);

        v31 = [v24 sharedApplication];
        v32 = [v31 delegate];

        if (v32)
        {
          swift_dynamicCastClassUnconditional();
          swift_beginAccess();
          sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
          v33 = v66;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_unknownObjectRelease();
          v34 = [objc_opt_self() mainRunLoop];
          v71 = v34;
          v35 = type metadata accessor for NSRunLoop.SchedulerOptions();
          (*(*(v35 - 8) + 56))(v5, 1, 1, v35);
          sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
          sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0);
          sub_10001ADF4();
          v36 = v68;
          Publisher.receive<A>(on:options:)();
          sub_100007834(v5, &unk_1000EC7E0, &unk_1000B5100);

          (*(v67 + 8))(v33, v36);
          swift_allocObject();
          swift_weakInit();
          sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0);
          v37 = v70;
          Publisher<>.sink(receiveValue:)();

          (*(v69 + 8))(v22, v37);
LABEL_13:
          swift_getKeyPath();
          v71 = v1;
          sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v71 = v1;
          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          v71 = v1;
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      v71 = v23;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (v23[16] != 1)
      {
        sub_100061A5C(0x2072657473756C43, 0xEE00746567646957);
        v52 = objc_opt_self();
        v53 = [v52 sharedApplication];
        v54 = [v53 delegate];

        if (v54)
        {
          type metadata accessor for AppDelegate();
          swift_dynamicCastClassUnconditional();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          swift_unknownObjectRelease();
          v55 = v71;
          v56 = [v71 windowScene];

          v57 = v1[15];
          v1[15] = v56;
          v58 = v56;
          sub_100062EA4(v57);

          v59 = [v52 sharedApplication];
          v60 = [v59 delegate];

          if (v60)
          {
            swift_dynamicCastClassUnconditional();
            swift_beginAccess();
            sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
            v61 = v66;
            Published.projectedValue.getter();
            swift_endAccess();
            swift_unknownObjectRelease();
            v62 = [objc_opt_self() mainRunLoop];
            v71 = v62;
            v63 = type metadata accessor for NSRunLoop.SchedulerOptions();
            (*(*(v63 - 8) + 56))(v5, 1, 1, v63);
            sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
            sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0);
            sub_10001ADF4();
            v64 = v68;
            Publisher.receive<A>(on:options:)();
            sub_100007834(v5, &unk_1000EC7E0, &unk_1000B5100);

            (*(v67 + 8))(v61, v64);
            swift_allocObject();
            swift_weakInit();
            sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0);
            v65 = v70;
            Publisher<>.sink(receiveValue:)();

            (*(v69 + 8))(v15, v65);
            goto LABEL_13;
          }

LABEL_20:
          __break(1u);
          return;
        }

        goto LABEL_18;
      }

      sub_100061A5C(0xD000000000000010, 0x80000001000BC310);
      v38 = objc_opt_self();
      v39 = [v38 sharedApplication];
      v40 = [v39 delegate];

      if (v40)
      {
        type metadata accessor for AppDelegate();
        swift_dynamicCastClassUnconditional();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        swift_unknownObjectRelease();
        v41 = v71;
        v42 = [v71 windowScene];

        v43 = v1[15];
        v1[15] = v42;
        v44 = v42;
        sub_100062EA4(v43);

        v45 = [v38 sharedApplication];
        v46 = [v45 delegate];

        if (v46)
        {
          swift_dynamicCastClassUnconditional();
          swift_beginAccess();
          sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
          v47 = v66;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_unknownObjectRelease();
          v48 = [objc_opt_self() mainRunLoop];
          v71 = v48;
          v49 = type metadata accessor for NSRunLoop.SchedulerOptions();
          (*(*(v49 - 8) + 56))(v5, 1, 1, v49);
          sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
          sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0);
          sub_10001ADF4();
          v50 = v68;
          Publisher.receive<A>(on:options:)();
          sub_100007834(v5, &unk_1000EC7E0, &unk_1000B5100);

          (*(v67 + 8))(v47, v50);
          swift_allocObject();
          swift_weakInit();
          sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0);
          v51 = v70;
          Publisher<>.sink(receiveValue:)();

          (*(v69 + 8))(v18, v51);
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_100061A5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 32) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 40);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_100061BCC(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 128);
    *(result + 128) = v1 ^ 1;
    if (v1 == v3)
    {
      sub_10006290C();
    }
  }

  return result;
}

uint64_t sub_100061C44()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    [v1 invalidate];
  }

  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC5MediaP33_B94F66D5E47EFF0D797EA644E6E4527820PlaybackTimeObserver___observationRegistrar;
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = *(v0 + 16);
  *(v0 + 16) = &_swiftEmptySetSingleton;

  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = type metadata accessor for ObservationRegistrar();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  return v0;
}

uint64_t sub_100061DE8()
{
  v0 = sub_100061C44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100061E64()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_100061F14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_100061FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100062070(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = *&result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_1000621A8()
{
  v1 = v0;
  if (qword_1000EAD28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000ED710);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v12 = *(v1 + 64);
    v13 = *(v1 + 80);
    v14 = *(v1 + 96);
    v15 = *(v1 + 112);
    v16 = v6;
    sub_10000368C(&qword_1000ED948, &unk_1000B78B8);
    v7 = String.init<A>(describing:)();
    v9 = sub_100043AF0(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received new snapshot=%{public}s", v5, 0xCu);
    sub_100006960(v6);
  }

  static Date.timeIntervalSinceReferenceDate.getter();
  *(v1 + 144) = v10;
  sub_100062344();
  return sub_10006290C();
}

void sub_100062344()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {
    if (qword_1000EAD28 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006928(v2, qword_1000ED710);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32[0] = v6;
      *v5 = 136446210;
      swift_getKeyPath();
      sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v30 = *(v0 + 32);
      sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
      v7 = Optional<A>.description.getter();
      v9 = sub_100043AF0(v7, v8, v32);

      *(v5 + 4) = v9;
      sub_100006960(v6);
    }

    v10 = *(v0 + 56);
    if (v10 != 1)
    {
LABEL_19:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }

LABEL_14:
    *(v0 + 48) = 0;
    *(v0 + 56) = v10;
    return;
  }

  if (v1)
  {
    if (qword_1000EAD28 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006928(v11, qword_1000ED710);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32[0] = v15;
      *v14 = 136446210;
      swift_getKeyPath();
      sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v31 = *(v0 + 32);
      sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
      v16 = Optional<A>.description.getter();
      v18 = sub_100043AF0(v16, v17, v32);

      *(v14 + 4) = v18;
      sub_100006960(v15);
    }

    v10 = *(v0 + 56);
    if (v10 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v19 = *(v0 + 88);
  v20 = *(v0 + 104);
  if (v19 <= 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v21 = *(v0 + 96);
    v22 = *(v0 + 64);
    static Date.timeIntervalSinceReferenceDate.getter();
    v24 = v21 + (v23 - v22) * v20;
    if (v24 >= v19)
    {
      v24 = v19;
    }

    v25 = fmax(v24, 0.0) / v19;
  }

  sub_100062070(*&v25, 0);
  static Date.timeIntervalSinceReferenceDate.getter();
  v28 = vabdd_f64(v27, *(v0 + 144));
  v29 = fabsf(v20);
  if (v29 <= 1.0)
  {
    v29 = 1.0;
  }

  if (v28 >= (1.0 / v29))
  {
    *(v0 + 144) = v27;
  }
}

uint64_t sub_10006290C()
{
  v1 = v0;
  if (qword_1000EAD28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000ED710);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40 = v6;
    *v5 = 136446210;
    swift_getKeyPath();
    sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v39 = *(v0 + 32);
    sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
    v7 = Optional<A>.description.getter();
    v9 = sub_100043AF0(v7, v8, &v40);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "📺 %{public}s: Updating DisplayLink…", v5, 0xCu);
    sub_100006960(v6);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = *(v1 + 128);

    _os_log_impl(&_mh_execute_header, v10, v11, "   — isBackgrounded: %{BOOL,public}d", v12, 8u);
  }

  else
  {
  }

  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  v14 = *(v1 + 112);
  if (v14 == 2)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "   — Null Snapshot", v17, 2u);
    }
  }

  else if ((*(v1 + 128) & 1) == 0)
  {
    v18 = *(v1 + 104);
    v19 = *(v1 + 108);
    v20 = *(v1 + 96);
    v36 = *(v1 + 80);
    v37 = *(v1 + 64);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v38 = v18;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136446210;
      type metadata accessor for MPCPlayerItemDurationSnapshot(0);
      v25 = String.init<A>(describing:)();
      v27 = sub_100043AF0(v25, v26, &v40);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "   — Snapshot: %{public}s", v23, 0xCu);
      sub_100006960(v24);

      v18 = v38;
    }

    v28 = v18 & 0x7FFFFFFF;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67240192;
      *(v31 + 4) = v14 & 1;
      _os_log_impl(&_mh_execute_header, v29, v30, "   — isLiveContent: %{BOOL,public}d", v31, 8u);
    }

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67240192;
      *(v34 + 4) = v28 == 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "   — isRateNull: %{BOOL,public}d", v34, 8u);
    }

    *(v13 + 16) = v14 & 1 | (v28 == 0);
  }

  sub_10006451C(v13, v1);
}

void sub_100062EA4(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 120);
  if (v4)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    sub_100005A50(0, &qword_1000ECF30, UIWindowScene_ptr);
    v5 = v4;
    v3 = v3;
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      return;
    }

    v4 = *(v2 + 120);
    if (v4)
    {
LABEL_5:
      v7 = qword_1000EAD28;
      v8 = v4;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100006928(v9, qword_1000ED710);
      v10 = v8;

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v13 = 136446466;
        swift_getKeyPath();
        sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v49 = *(v2 + 32);
        sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
        v14 = Optional<A>.description.getter();
        v16 = sub_100043AF0(v14, v15, &v51);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2082;
        v17 = v10;
        v18 = [v17 description];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = sub_100043AF0(v19, v21, &v51);

        *(v13 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: Received windowScene=%{public}s", v13, 0x16u);
        swift_arrayDestroy();
      }

      v23 = [v10 activationState] == 2;
      v24 = *(v2 + 128);
      *(v2 + 128) = v23;
      if (v23 != v24)
      {
        sub_10006290C();
      }

      v25 = [v10 screen];
      v26 = [v25 displayLinkWithTarget:v2 selector:"updateElapsedDuration"];

      if (v26)
      {
        v27 = objc_opt_self();
        v28 = v26;
        v29 = [v27 mainRunLoop];
        [v28 addToRunLoop:v29 forMode:NSRunLoopCommonModes];

        [v28 setPaused:1];
        v30 = v28;
        [v30 setPreferredFramesPerSecond:15];
      }

      v31 = *(v2 + 136);
      *(v2 + 136) = v26;

      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v32 = qword_1000EAD28;
  v33 = v3;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006928(v34, qword_1000ED710);
  v35 = v33;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v38 = 136446466;
    swift_getKeyPath();
    sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v50 = *(v2 + 32);
    sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
    v39 = Optional<A>.description.getter();
    v41 = sub_100043AF0(v39, v40, &v51);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2082;
    v42 = v35;
    v43 = [v42 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_100043AF0(v44, v46, &v51);

    *(v38 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s: Removed windowScene=%{public}s", v38, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v48 = *(v2 + 128);
  *(v2 + 128) = 1;
  if ((v48 & 1) == 0)
  {
    sub_10006290C();
  }
}

uint64_t sub_10006352C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100063610()
{
  v0 = type metadata accessor for Logger();
  sub_100014D80(v0, qword_1000ED710);
  v1 = sub_100006928(v0, qword_1000ED710);
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006928(v0, qword_1000F3BA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100063710()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

uint64_t sub_100063724()
{
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_100003210(&_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + 16) = v1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = xmmword_1000B75B0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_1000637B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_100061A5C(v2, v3);
}

uint64_t sub_1000637F8()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 40);
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_10006383C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100060A44(v4);
}

uint64_t sub_100063868(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return __CocoaSet.isEqual(to:)(v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        type metadata accessor for AnyCancellable();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_1000EAE58;
        v17 = a1;
        if (!v13)
        {
LABEL_27:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v26 = (v20 - 1) & v20;
              goto LABEL_32;
            }
          }

          __break(1u);
          return __CocoaSet.isEqual(to:)(v5, v4);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v26 = (v13 - 1) & v13;
LABEL_32:
          v29 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v21 = *(a2 + 40);
          sub_100063C7C(&qword_1000EAE58, &type metadata accessor for AnyCancellable);

          v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          sub_100063C7C(&qword_1000EAE60, &type metadata accessor for AnyCancellable);
          while (1)
          {
            v28 = *(*(a2 + 48) + 8 * v24);
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v26;
          v5 = &qword_1000EAE58;
          v17 = a1;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_100063B78(v8, v7);
}

uint64_t sub_100063B78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
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
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = __CocoaSet.contains(_:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100063C7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100063CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100063DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100063EA0()
{
  sub_100063FCC(319, &unk_1000EC1A8, type metadata accessor for RadioNowPlayingViewModel, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100063FCC(319, &qword_1000EBFB0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100063FCC(319, &unk_1000ED898, type metadata accessor for PlaybackTimeObserver, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100063FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100064084()
{
  v1 = type metadata accessor for MediaProgressView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v1 + 20);
  sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = (v5 + *(v1 + 24));
  v11 = *v10;

  v12 = v10[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100064218()
{
  result = qword_1000ED908;
  if (!qword_1000ED908)
  {
    sub_100005780(&qword_1000ED8D0, &qword_1000B77B8);
    sub_1000642A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED908);
  }

  return result;
}

unint64_t sub_1000642A4()
{
  result = qword_1000ED910;
  if (!qword_1000ED910)
  {
    sub_100005780(&qword_1000ED8F8, &qword_1000B7810);
    sub_100005870(&qword_1000ED918, &qword_1000ED920, &qword_1000B7850);
    sub_100005870(&qword_1000ED928, &qword_1000ED900, &unk_1000B7818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED910);
  }

  return result;
}

void sub_100064390()
{
  v1 = *(type metadata accessor for MediaProgressView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_10005F678();
}

unint64_t sub_1000643EC()
{
  result = qword_1000ED930;
  if (!qword_1000ED930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED930);
  }

  return result;
}

uint64_t sub_100064448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000644B0(uint64_t a1)
{
  v2 = type metadata accessor for LiveLabelView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10006451C(uint64_t a1, uint64_t a2)
{
  if (qword_1000EAD28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000ED710);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v5, v6))
  {

    v8 = *(a2 + 136);
    if (!v8)
    {
      return;
    }

    goto LABEL_7;
  }

  v7 = swift_slowAlloc();
  *v7 = 67240192;
  swift_beginAccess();
  *(v7 + 4) = *(a1 + 16);

  _os_log_impl(&_mh_execute_header, v5, v6, " -> should pause: %{BOOL,public}d", v7, 8u);

  v8 = *(a2 + 136);
  if (v8)
  {
LABEL_7:
    swift_beginAccess();
    [v8 setPaused:*(a1 + 16)];
  }
}

uint64_t sub_100064698()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000647F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000648B8()
{
  sub_100063FCC(319, &qword_1000EBFB0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_100064960()
{
  result = qword_1000EDA48;
  if (!qword_1000EDA48)
  {
    sub_100005780(&qword_1000EDA50, &qword_1000B7A48);
    sub_100063C7C(&qword_1000ED938, type metadata accessor for LiveLabelView);
    sub_100005780(&qword_1000ED8D8, &qword_1000B77C0);
    sub_100005780(&qword_1000ED8D0, &qword_1000B77B8);
    sub_100064218();
    sub_100036F74();
    swift_getOpaqueTypeConformance2();
    sub_1000643EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDA48);
  }

  return result;
}

unint64_t sub_100064AF0()
{
  result = qword_1000EDA98;
  if (!qword_1000EDA98)
  {
    sub_100005780(&qword_1000EDA60, &qword_1000B7AA8);
    sub_100005870(&qword_1000EDAA0, &qword_1000EDA58, &qword_1000B7AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDA98);
  }

  return result;
}

unint64_t sub_100064BF0()
{
  result = qword_1000EDAB8;
  if (!qword_1000EDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDAB8);
  }

  return result;
}

unint64_t sub_100064C48()
{
  result = qword_1000EDAC0;
  if (!qword_1000EDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDAC0);
  }

  return result;
}

unint64_t sub_100064CA0()
{
  result = qword_1000EDAC8;
  if (!qword_1000EDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDAC8);
  }

  return result;
}

unint64_t sub_100064CF4()
{
  result = qword_1000EDAD0;
  if (!qword_1000EDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDAD0);
  }

  return result;
}

uint64_t sub_100064D70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100064DB4(unint64_t a1, void *a2)
{
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
LABEL_32:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v6 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v39 = isUniquelyReferenced_nonNull_native;
      v40 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v41 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v42 = v3;
      do
      {
        if (v5)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_29;
          }

          v7 = *(isUniquelyReferenced_nonNull_native + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v10 = [v7 identifier];
        if (v10)
        {
          v11 = v10;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;

          v14 = [v8 imageData];
          if (v14)
          {
            v46 = v13;
            v15 = v14;
            v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v18 = v17;

            v19 = objc_allocWithZone(UIImage);
            sub_1000725CC(v16, v18);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v21 = [v19 initWithData:isa];

            sub_100072620(v16, v18);
            if (v21)
            {
              v43 = v21;
              v22 = *a2;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v23 = *a2;
              v25 = sub_1000275D8(v45, v13);
              v26 = v23[2];
              v27 = (v24 & 1) == 0;
              v28 = v26 + v27;
              if (__OFADD__(v26, v27))
              {
                goto LABEL_30;
              }

              v29 = v24;
              if (v23[3] >= v28)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100072458();
                }
              }

              else
              {
                sub_100027A84(v28, isUniquelyReferenced_nonNull_native);
                v30 = sub_1000275D8(v45, v46);
                if ((v29 & 1) != (v31 & 1))
                {
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return;
                }

                v25 = v30;
              }

              isUniquelyReferenced_nonNull_native = v39;
              if (v29)
              {
                v32 = v23[7];
                v33 = *(v32 + 8 * v25);
                *(v32 + 8 * v25) = v43;
                v34 = v43;
              }

              else
              {
                v23[(v25 >> 6) + 8] |= 1 << v25;
                v35 = (v23[6] + 16 * v25);
                *v35 = v45;
                v35[1] = v46;
                *(v23[7] + 8 * v25) = v43;
                v36 = v23[2];
                v37 = __OFADD__(v36, 1);
                v38 = v36 + 1;
                if (v37)
                {
                  goto LABEL_31;
                }

                v34 = v43;
                v23[2] = v38;
              }

              *a2 = v23;
              sub_100072620(v16, v18);
            }

            else
            {
              sub_100072620(v16, v18);
            }

            v5 = v41;
            v3 = v42;
            v6 = v40;
          }

          else
          {
          }
        }

        else
        {
        }

        ++v4;
      }

      while (v9 != v3);
    }
  }
}

uint64_t sub_100065128(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_100065320(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&unk_1000EC8A0, &qword_1000B6110);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&unk_1000EC8C0, &qword_1000B6128);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_100065518(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&unk_1000EC890, &unk_1000B6100);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_100065710(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1000658D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100065970(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&unk_1000ED120, &qword_1000B6CD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_100065B54(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_100065D38(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_100065F30(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&qword_1000EAF98, &unk_1000B3C90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1000660F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100066168(v4);
}

uint64_t sub_10006613C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100066168(v4);
}

uint64_t sub_100066168(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  sub_100092458();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10006D0AC(a1);
}

uint64_t sub_100066274(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&qword_1000EE018, &qword_1000B8140);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&qword_1000EDB38, &qword_1000B7F18);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1000664A0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1000666A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t NowPlayingObserver.dialableStationStrings.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NowPlayingObserver.dialableStationStrings.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10003E708;
}

uint64_t NowPlayingObserver.$dialableStationStrings.setter(uint64_t a1)
{
  v2 = sub_10000368C(&qword_1000EAF98, &unk_1000B3C90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NowPlayingObserver.$dialableStationStrings.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000368C(&qword_1000EAF98, &unk_1000B3C90);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5Media18NowPlayingObserver__dialableStationStrings;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10003EA34;
}

uint64_t sub_100066B30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100066BC0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100066C44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100066CB8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t NowPlayingObserver.preferredArtworkSize.getter()
{
  v1 = OBJC_IVAR____TtC5Media18NowPlayingObserver_preferredArtworkSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NowPlayingObserver.preferredArtworkSize.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Media18NowPlayingObserver_preferredArtworkSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void NowPlayingObserver.car.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_10006A4AC();
}

void (*NowPlayingObserver.car.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC5Media18NowPlayingObserver_car;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10006708C;
}

void sub_10006708C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v6 = *(v3 + 32);
    swift_endAccess();

    sub_10006A4AC();
  }

  free(v3);
}

uint64_t NowPlayingObserver.mediaSourceObservers.getter()
{
  v1 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t NowPlayingObserver.mediaSourceObservers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t NowPlayingObserver.isNowPlayingOnlySource.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 && (v0 = [v7 currentMediaSourceIdentifier], v7, v0))
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v2;

    if (v1 == 0x59414C505F574F4ELL && v3 == 0xEB00000000474E49)
    {

      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100067334(void *a1, void *a2)
{
  v3 = v2;
  v122 = a1;
  v123 = a2;
  v113 = type metadata accessor for NSNotificationCenter.Publisher();
  v112 = *(v113 - 8);
  v4 = *(v112 + 64);
  __chkstk_darwin(v113);
  v110 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000368C(&qword_1000EE000, &unk_1000B8130);
  v114 = *(v6 - 8);
  v115 = v6;
  v7 = *(v114 + 64);
  __chkstk_darwin(v6);
  v111 = &v91 - v8;
  v9 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v121 = &v91 - v11;
  v106 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v105 = *(v106 - 8);
  v12 = *(v105 + 64);
  __chkstk_darwin(v106);
  v104 = &v91 - v13;
  v109 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v108 = *(v109 - 1);
  v14 = *(v108 + 64);
  __chkstk_darwin(v109);
  v107 = &v91 - v15;
  v16 = sub_10000368C(&qword_1000EDB38, &qword_1000B7F18);
  v119 = *(v16 - 8);
  v120 = v16;
  v17 = *(v119 + 8);
  __chkstk_darwin(v16);
  v118 = &v91 - v18;
  v19 = sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  v116 = *(v19 - 8);
  v117 = v19;
  v20 = *(v116 + 64);
  __chkstk_darwin(v19);
  v103 = &v91 - v21;
  v94 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v102 = *(v94 - 8);
  v22 = *(v102 + 64);
  __chkstk_darwin(v94);
  v101 = &v91 - v23;
  v100 = sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  v24 = *(v100 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v100);
  v95 = &v91 - v26;
  v93 = sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  v92 = *(v93 - 8);
  v27 = *(v92 + 64);
  __chkstk_darwin(v93);
  v29 = &v91 - v28;
  v30 = sub_10000368C(&unk_1000EC8C0, &qword_1000B6128);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v91 - v33;
  v35 = sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  v97 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v91 - v38;
  v40 = OBJC_IVAR____TtC5Media18NowPlayingObserver__activeSource;
  aBlock[0] = 0;
  v99 = sub_10000368C(&qword_1000EB998, &qword_1000B7C40);
  Published.init(initialValue:)();
  v41 = *(v36 + 32);
  v96 = v36 + 32;
  v98 = v41;
  v41(v3 + v40, v39, v35);
  v42 = OBJC_IVAR____TtC5Media18NowPlayingObserver__lastSnapshot;
  aBlock[0] = 0;
  sub_10000368C(&qword_1000EDAE0, &qword_1000B7C98);
  Published.init(initialValue:)();
  v43 = v94;
  (*(v31 + 32))(v3 + v42, v34, v30);
  v44 = OBJC_IVAR____TtC5Media18NowPlayingObserver__artwork;
  aBlock[0] = 0;
  sub_10000368C(&qword_1000EC950, &qword_1000B6250);
  Published.init(initialValue:)();
  (*(v92 + 32))(v3 + v44, v29, v93);
  v45 = OBJC_IVAR____TtC5Media18NowPlayingObserver__playingStation;
  aBlock[0] = 0;
  sub_10000368C(&qword_1000EC5B0, &qword_1000B7D80);
  v46 = v95;
  Published.init(initialValue:)();
  (*(v24 + 32))(v3 + v45, v46, v100);
  v47 = OBJC_IVAR____TtC5Media18NowPlayingObserver__activeSourceEnabled;
  LOBYTE(aBlock[0]) = 1;
  v48 = v101;
  Published.init(initialValue:)();
  v49 = *(v102 + 32);
  v49(v3 + v47, v48, v43);
  v50 = OBJC_IVAR____TtC5Media18NowPlayingObserver__carOwnsMainAudio;
  LOBYTE(aBlock[0]) = 0;
  Published.init(initialValue:)();
  v49(v3 + v50, v48, v43);
  v51 = OBJC_IVAR____TtC5Media18NowPlayingObserver__mediaSourceTitles;
  aBlock[0] = _swiftEmptyArrayStorage;
  v52 = sub_10000368C(&qword_1000EDB18, &qword_1000B7E70);
  v53 = v103;
  v102 = v52;
  Published.init(initialValue:)();
  (*(v116 + 32))(v3 + v51, v53, v117);
  v54 = OBJC_IVAR____TtC5Media18NowPlayingObserver__artworkCache;
  aBlock[0] = sub_100044148(_swiftEmptyArrayStorage);
  sub_10000368C(&qword_1000EDB28, &qword_1000B7EC8);
  v55 = v118;
  Published.init(initialValue:)();
  (*(v119 + 4))(v3 + v54, v55, v120);
  v56 = OBJC_IVAR____TtC5Media18NowPlayingObserver__targetSource;
  aBlock[0] = 0;
  Published.init(initialValue:)();
  v98(v3 + v56, v39, v97);
  v57 = OBJC_IVAR____TtC5Media18NowPlayingObserver__isCallActive;
  LOBYTE(aBlock[0]) = 0;
  Published.init(initialValue:)();
  v49(v3 + v57, v48, v43);
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v58 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v58 = &_swiftEmptySetSingleton;
  }

  *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_cancelSet) = v58;
  *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_nowPlayingManager) = 0;
  v59 = OBJC_IVAR____TtC5Media18NowPlayingObserver_callObserver;
  *(v3 + v59) = [objc_allocWithZone(type metadata accessor for CallObserver()) init];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_preferredArtworkSize) = 500;
  swift_beginAccess();
  v125 = _swiftEmptyArrayStorage;
  sub_10000368C(&qword_1000EEF30, &qword_1000B68E0);
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v125 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  swift_endAccess();
  v60 = [v123 currentSession];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 carOwnsMainAudio];
  }

  else
  {
    v62 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = v62;

  static Published.subscript.setter();
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = objc_allocWithZone(CAFNowPlayingManager);
  aBlock[4] = sub_100073194;
  aBlock[5] = v63;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031AE4;
  aBlock[3] = &unk_1000E1398;
  v65 = _Block_copy(aBlock);

  v66 = [v64 initWithObserver:v65];
  _Block_release(v65);

  v67 = *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_nowPlayingManager);
  *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_nowPlayingManager) = v66;

  v68 = *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_callObserver);
  swift_beginAccess();
  v69 = v104;
  Published.projectedValue.getter();
  swift_endAccess();
  v70 = objc_opt_self();
  v103 = v70;
  v71 = [v70 mainRunLoop];
  aBlock[0] = v71;
  v120 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v72 = *(v120 - 8);
  v73 = *(v72 + 56);
  v118 = (v72 + 56);
  v119 = v73;
  v74 = v121;
  v73(v121, 1, 1, v120);
  v117 = sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
  sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0);
  v116 = sub_1000058D0(&qword_1000ED0D0, &unk_1000ED0C0, NSRunLoop_ptr);
  v75 = v107;
  v76 = v106;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v74, &unk_1000EC7E0, &unk_1000B5100);

  (*(v105 + 8))(v69, v76);
  swift_allocObject();
  swift_weakInit();
  sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0);
  v77 = v109;
  Publisher<>.sink(receiveValue:)();

  (*(v108 + 8))(v75, v77);
  v78 = OBJC_IVAR____TtC5Media18NowPlayingObserver_cancelSet;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v109 = objc_opt_self();
  v79 = [v109 defaultCenter];
  v80 = v110;
  NSNotificationCenter.publisher(for:object:)();

  v81 = [v70 mainRunLoop];
  aBlock[0] = v81;
  v82 = v74;
  v119(v74, 1, 1, v120);
  v108 = sub_10007310C(&qword_1000EE008, &type metadata accessor for NSNotificationCenter.Publisher);
  v83 = v111;
  v84 = v113;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v82, &unk_1000EC7E0, &unk_1000B5100);

  v112 = *(v112 + 8);
  (v112)(v80, v84);
  swift_allocObject();
  swift_weakInit();
  v107 = sub_100005870(&qword_1000EE010, &qword_1000EE000, &unk_1000B8130);
  v85 = v115;
  Publisher<>.sink(receiveValue:)();

  v114 = *(v114 + 8);
  (v114)(v83, v85);
  v106 = v78;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v86 = [v109 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v87 = [v103 mainRunLoop];
  aBlock[0] = v87;
  v88 = v121;
  v119(v121, 1, 1, v120);
  Publisher.receive<A>(on:options:)();
  sub_100007834(v88, &unk_1000EC7E0, &unk_1000B5100);

  (v112)(v80, v84);
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  (v114)(v83, v85);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_weakAssign();
  sub_100092458();

  v89 = v122;
  if (v122)
  {
    sub_10006A4AC();
  }

  return v3;
}

uint64_t sub_100068654(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006928(v3, qword_1000F3BD0);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received car now playing snapshot %{public}@", v7, 0xCu);
      sub_100007834(v8, &unk_1000EE230, &qword_1000BA550);
    }

    sub_1000687D8(v4);
  }

  return result;
}

void sub_1000687D8(void *a1)
{
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3BD0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v87 = v7;
    *v6 = 136446210;
    v8 = [v3 currentMediaSourceIdentifier];
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
    v10 = Optional<A>.description.getter();
    v12 = v11;

    v13 = sub_100043AF0(v10, v12, &v87);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Processing now playing snapshot with source identifier %{public}s", v6, 0xCu);
    sub_100006960(v7);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v3;

  static Published.subscript.setter();
  sub_10006DDBC();
  v15 = [v14 currentMediaSourceIdentifier];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_16:
    swift_getKeyPath();
    swift_getKeyPath();
    v87 = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v87 = 0;

    static Published.subscript.setter();
    if (NowPlayingObserver.isNowPlayingOnlySource.getter())
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Received now-playing-only snapshot update.", v32, 2u);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v87 = 0;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v87) = 1;

      static Published.subscript.setter();
      NowPlayingObserver.emitFinalizedIfNeeded()();
    }

    else
    {
      v33 = v14;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v87 = v37;
        *v36 = 136446210;
        v38 = [v33 currentMediaSourceIdentifier];
        if (v38)
        {
          v39 = v38;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;
        }

        else
        {
          v42 = 0xE600000000000000;
          v40 = 0x29656E6F6E28;
        }

        v57 = sub_100043AF0(v40, v42, &v87);

        *(v36 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v34, v35, "No known media source with identifier %{public}s", v36, 0xCu);
        sub_100006960(v37);
      }

      sub_100070F04();
    }

    return;
  }

  v18 = Strong;
  v19 = [Strong mediaSourceWithIdentifier:v16];

  if (!v19)
  {
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v87;
  v21 = &off_1000E7000;
  if (v87)
  {
    v22 = [v87 identifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = [v19 identifier];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (v23 == v27 && v25 == v29)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        v58 = v19;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v87 = v86;
          *v47 = 136446210;
          v59 = [v58 identifier];
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v19;
          v63 = v62;

          v64 = sub_100043AF0(v60, v63, &v87);
          v19 = v61;

          *(v47 + 4) = v64;
          v56 = "Car has transitioned to an unexpected source: %{public}s";
          goto LABEL_31;
        }

LABEL_32:

        v21 = &off_1000E7000;
        goto LABEL_33;
      }
    }

    v44 = v20;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = v86;
      *v47 = 136446210;
      v48 = [v44 identifier];
      v49 = v20;
      v50 = v19;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = v51;
      v19 = v50;
      v20 = v49;
      v55 = sub_100043AF0(v54, v53, &v87);

      *(v47 + 4) = v55;
      v56 = "Car has transitioned to target source %{public}s";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v45, v46, v56, v47, 0xCu);
      sub_100006960(v86);

      v21 = &off_1000E7000;

LABEL_33:
      swift_getKeyPath();
      swift_getKeyPath();
      v87 = 0;

      static Published.subscript.setter();

      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_34:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v65 = v87;
  if (v87)
  {
    v66 = [v19 v21[233]];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = [v65 v21[233]];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    if (v67 == v71 && v69 == v73)
    {

LABEL_39:
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Snapshot updated, but current source is still the same.", v77, 2u);
      }

      sub_10006E488();
      sub_10006D88C();
      NowPlayingObserver.emitFinalizedIfNeeded()();

      return;
    }

    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v74)
    {
      goto LABEL_39;
    }
  }

  v78 = v19;
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v81 = 138543362;
    *(v81 + 4) = v78;
    *v82 = v19;
    v83 = v78;
    _os_log_impl(&_mh_execute_header, v79, v80, "Applying now playing snapshot with new source %{public}@", v81, 0xCu);
    sub_100007834(v82, &unk_1000EE230, &qword_1000BA550);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v87 = &_swiftEmptyDictionarySingleton;

  static Published.subscript.setter();
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  sub_100092458();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10006D0AC(v87);

  v84 = [v78 disabled] ^ 1;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v87) = v84;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v19;

  v85 = v78;
  static Published.subscript.setter();
  sub_10006CC20(v85);
}

uint64_t sub_100069464(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1000694F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10006957C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v37)
  {
    return 0;
  }

  v0 = [v37 mediaSourceSemanticType];
  if (v0 > 3)
  {
    if ((v0 - 4) < 2 || v0 == 7)
    {
      [v37 mediaSourceSemanticType];
      v2 = CAFMediaSourceSemanticType.title.getter();

      return v2;
    }

LABEL_18:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v13 = [*&v37[v12] mediaItemCategoryUserVisibleLabel];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {

        goto LABEL_24;
      }
    }

    v19 = [*&v37[v12] mediaItemCategory];

    if (v19)
    {
LABEL_24:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v20 = v36;
      if (v36)
      {
        v21 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
        swift_beginAccess();
        v22 = [*(v36 + v21) mediaItemCategoryUserVisibleLabel];
        if (!v22)
        {
          goto LABEL_48;
        }

        goto LABEL_41;
      }
    }

LABEL_45:

    return 0;
  }

  if (!v0)
  {
    v9 = [v37 userVisibleLabel];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_49:
      return v11;
    }

    goto LABEL_45;
  }

  if (v0 != 3)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong nowPlayingInformation];

    if (v6)
    {
      v7 = [v6 nowPlaying];

      if (v7)
      {
        if ([v7 hasPlaybackState])
        {
          v8 = [v7 playbackState] == 1;
        }

        else
        {
          v8 = 1;
        }

        if ([v7 hasNextItem])
        {
          v23 = [v7 nextItemDisabled];

          if (v23 & v8)
          {
            goto LABEL_45;
          }
        }

        else
        {

          if (v8)
          {
            goto LABEL_45;
          }
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v36)
  {
LABEL_39:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = v36;
    if (v36)
    {
      v21 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v22 = [*(v36 + v21) mediaItemCategoryUserVisibleLabel];
      if (!v22)
      {
LABEL_48:
        v11 = sub_1000820E4([*(v20 + v21) mediaItemCategory]);

        goto LABEL_49;
      }

LABEL_41:
      v31 = v22;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {

        return v32;
      }

      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v25 = [*(v36 + v24) mediaItemCategoryUserVisibleLabel];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      goto LABEL_38;
    }
  }

  if ([*(v36 + v24) mediaItemCategory])
  {
LABEL_38:

    goto LABEL_39;
  }

  return 0;
}

void sub_100069AE0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_20;
    }

    v6 = Strong;
    v7 = CAFCar.nowPlaying.getter();

    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = [v7 currentMediaSourceIdentifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == a1 && v11 == a2)
    {

      goto LABEL_20;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {

LABEL_20:
      if (qword_1000EAD00 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006928(v17, qword_1000F3BD0);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock[0] = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_100043AF0(a1, a2, aBlock);
        _os_log_impl(&_mh_execute_header, v18, v19, "Already on source %{public}s", v20, 0xCu);
        sub_100006960(v21);
      }

      return;
    }

    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22 && (v23 = v22, v24 = String._bridgeToObjectiveC()(), v25 = [v23 mediaSourceWithIdentifier:v24], v23, v24, v25))
    {
      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100006928(v26, qword_1000F3B70);
      v27 = v25;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138543362;
        *(v30 + 4) = v27;
        *v31 = v25;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "Initiating media source change to %{public}@", v30, 0xCu);
        sub_100007834(v31, &unk_1000EE230, &qword_1000BA550);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v33 = v27;

      static Published.subscript.setter();
      v34 = String._bridgeToObjectiveC()();
      v35 = swift_allocObject();
      *(v35 + 16) = a1;
      *(v35 + 24) = a2;
      aBlock[4] = sub_10007318C;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009959C;
      aBlock[3] = &unk_1000E1370;
      v36 = _Block_copy(aBlock);

      [v7 changeMediaSourceWithIdentifier:v34 completion:v36];
      _Block_release(v36);
    }

    else
    {
      if (qword_1000EAD00 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006928(v37, qword_1000F3BD0);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_100043AF0(a1, a2, aBlock);
        _os_log_impl(&_mh_execute_header, v38, v39, "No available media source with identifier %{public}s", v40, 0xCu);
        sub_100006960(v41);
      }
    }
  }

  else
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006928(v14, qword_1000F3BD0);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "Can't change source to an empty identifier.", v16, 2u);
    }
  }
}

void sub_10006A168(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006928(v5, qword_1000F3B70);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_100043AF0(a2, a3, &v17);
      *(v8 + 12) = 2114;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error changing media source to %{public}s: %{public}@", v8, 0x16u);
      sub_100007834(v9, &unk_1000EE230, &qword_1000BA550);

      sub_100006960(v10);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006928(v12, qword_1000F3B70);

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_100043AF0(a2, a3, &v17);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Changed media source successfully to %{public}s!", v14, 0xCu);
      sub_100006960(v15);
    }

    else
    {
    }
  }
}

void sub_10006A4AC()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (!v3)
  {
    goto LABEL_54;
  }

  v4 = sub_1000ACA04();
  swift_unknownObjectRelease();
  if ((v4 & 1) == 0)
  {
    if (qword_1000EAD48 != -1)
    {
      swift_once();
    }

    sub_1000922F8(3u);
  }

  v5 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v11 = *(v1 + v5);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_9;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if (qword_1000EAD00 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006928(v7, qword_1000F3BD0);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Already registered observers for media.", v10, 2u);
      }

      goto LABEL_51;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v15 = 0;
    goto LABEL_33;
  }

  v13 = Strong;
  v14 = [Strong media];

  if (!v14)
  {
    v15 = 0;
    goto LABEL_33;
  }

  v15 = [v14 mediaSources];

  if (v15)
  {
    sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (v17)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_21:
        v30 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v17 & 0x8000000000000000) == 0)
        {
          v18 = 0;
          do
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v19 = *(v16 + 8 * v18 + 32);
            }

            ++v18;
            v20 = v19;
            swift_getAtKeyPath();

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v21 = v30[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v17 != v18);

          v15 = v30;
          goto LABEL_33;
        }

        __break(1u);
LABEL_54:
        __break(1u);
        return;
      }
    }

    v15 = _swiftEmptyArrayStorage;
  }

LABEL_33:
  v22 = *(v1 + v5);
  *(v1 + v5) = v15;

  if (v15)
  {
    if (v15 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v24 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v25 = *(v15 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v30 = v25;
        sub_10006A964(&v30, v1);

        ++v24;
        if (v27 == i)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }

LABEL_47:
  }

  sub_10006C8D0();
  v28 = *(v1 + OBJC_IVAR____TtC5Media18NowPlayingObserver_nowPlayingManager);
  if (v28)
  {
    v29 = [v28 lastSnapshot];
    if (v29)
    {
      v8 = v29;
      sub_1000687D8(v29);
LABEL_51:
    }
  }
}

uint64_t sub_10006A964(void **a1, uint64_t a2)
{
  v96 = a2;
  v3 = sub_10000368C(&qword_1000EE020, &qword_1000B81C8);
  v94 = *(v3 - 8);
  v95 = v3;
  v4 = *(v94 + 64);
  __chkstk_darwin(v3);
  v93 = &v73 - v5;
  v6 = sub_10000368C(&qword_1000EE028, &qword_1000B81D0);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  __chkstk_darwin(v6);
  v81 = &v73 - v8;
  v87 = sub_10000368C(&qword_1000EE030, &qword_1000B81D8);
  v85 = *(v87 - 8);
  v9 = *(v85 + 64);
  __chkstk_darwin(v87);
  v84 = &v73 - v10;
  v90 = sub_10000368C(&qword_1000EE038, &qword_1000B81E0);
  v88 = *(v90 - 8);
  v11 = *(v88 + 64);
  __chkstk_darwin(v90);
  v86 = &v73 - v12;
  v13 = sub_10000368C(&qword_1000EE040, &qword_1000B81E8);
  v91 = *(v13 - 8);
  v92 = v13;
  v14 = *(v91 + 64);
  __chkstk_darwin(v13);
  v89 = &v73 - v15;
  v16 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v73 = &v73 - v18;
  v76 = sub_10000368C(&qword_1000EE048, &qword_1000B81F0);
  v75 = *(v76 - 8);
  v19 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v73 - v20;
  v78 = sub_10000368C(&qword_1000EE050, &qword_1000B81F8);
  v77 = *(v78 - 8);
  v21 = *(v77 + 64);
  __chkstk_darwin(v78);
  v23 = &v73 - v22;
  v97 = sub_10000368C(&qword_1000EE058, &qword_1000B8200);
  v80 = *(v97 - 8);
  v24 = v80[8];
  __chkstk_darwin(v97);
  v79 = &v73 - v25;
  v26 = *a1;
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006928(v27, qword_1000F3BD0);
  v28 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v98[0] = swift_slowAlloc();
    *v31 = 136446466;
    v32 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v34 = sub_100043AF0(v32, v33, v98);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2082;
    v35 = sub_100083338();
    v37 = sub_100043AF0(v35, v36, v98);

    *(v31 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "Registering observers for Media source %{public}s %{public}s", v31, 0x16u);
    swift_arrayDestroy();
  }

  v98[0] = dispatch thunk of CAFMediaSourceObservable.$mediaItems.getter();
  sub_10000368C(&qword_1000EE060, &qword_1000B8208);
  sub_10000368C(&qword_1000EE068, &qword_1000B8210);
  sub_100005870(&qword_1000EE070, &qword_1000EE060, &qword_1000B8208);
  Publisher.compactMap<A>(_:)();

  v38 = swift_allocObject();
  v39 = v96;
  *(v38 + 16) = v28;
  *(v38 + 24) = v39;
  v40 = v28;

  sub_10000368C(&qword_1000EEF30, &qword_1000B68E0);
  v41 = v79;
  v42 = v78;
  Publishers.CompactMap.map<A>(_:)();

  (*(v77 + 8))(v23, v42);
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  *(v43 + 24) = v39;
  sub_100005870(&qword_1000EE078, &qword_1000EE058, &qword_1000B8200);
  v44 = v40;

  v45 = v97;
  Publisher<>.sink(receiveValue:)();

  (v80[1])(v41, v45);
  v46 = OBJC_IVAR____TtC5Media18NowPlayingObserver_cancelSet;
  swift_beginAccess();
  v97 = v46;
  AnyCancellable.store(in:)();
  swift_endAccess();

  v47 = CAFMediaSourceObservable.observed.getter();
  v48 = [v47 hasUserVisibleLabel];

  if (v48)
  {
    v80 = dispatch thunk of CAFMediaSourceObservable.$userVisibleLabel.getter();
    v98[0] = v80;
    v49 = [objc_opt_self() mainRunLoop];
    v99 = v49;
    v50 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v51 = v73;
    (*(*(v50 - 8) + 56))(v73, 1, 1, v50);
    sub_10000368C(&qword_1000EE0B8, &qword_1000B8260);
    sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
    sub_100005870(&qword_1000EE0C8, &qword_1000EE0B8, &qword_1000B8260);
    sub_1000058D0(&qword_1000ED0D0, &unk_1000ED0C0, NSRunLoop_ptr);
    v52 = v74;
    Publisher.receive<A>(on:options:)();
    sub_100007834(v51, &unk_1000EC7E0, &unk_1000B5100);

    sub_100005870(&unk_1000EE0E0, &qword_1000EE048, &qword_1000B81F0);

    v53 = v76;
    Publisher<>.sink(receiveValue:)();

    (*(v75 + 8))(v52, v53);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v98[0] = dispatch thunk of CAFMediaSourceObservable.$mediaItemImages.getter();
  sub_10000368C(&qword_1000EE080, qword_1000B8218);
  sub_100005A50(0, &qword_1000EE088, CAFMediaItemImages_ptr);
  v80 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005870(&qword_1000EE090, &qword_1000EE080, qword_1000B8218);
  v54 = v81;
  Publisher.compactMap<A>(_:)();

  swift_getKeyPath();
  sub_100005870(&qword_1000EE098, &qword_1000EE028, &qword_1000B81D0);
  v55 = v83;
  v56 = v84;
  Publisher.map<A>(_:)();

  (*(v82 + 8))(v54, v55);
  v57 = swift_allocObject();
  v58 = v96;
  *(v57 + 16) = v96;
  *(v57 + 24) = v44;
  sub_100005870(&qword_1000EE0A0, &qword_1000EE030, &qword_1000B81D8);
  v59 = v44;

  v61 = v86;
  v60 = v87;
  Publisher.filter(_:)();

  (*(v85 + 8))(v56, v60);
  sub_10000368C(&qword_1000EDB28, &qword_1000B7EC8);
  sub_100005870(&qword_1000EE0A8, &qword_1000EE038, &qword_1000B81E0);
  v63 = v89;
  v62 = v90;
  Publisher.map<A>(_:)();
  (*(v88 + 8))(v61, v62);
  swift_getKeyPath();
  v98[0] = v58;
  sub_100005870(&qword_1000EE0B0, &qword_1000EE040, &qword_1000B81E8);
  v64 = v92;
  Publisher<>.assign<A>(to:on:)();

  (*(v91 + 8))(v63, v64);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v98[0] = dispatch thunk of CAFMediaSourceObservable.$disabled.getter();
  v65 = swift_allocObject();
  *(v65 + 16) = v59;
  *(v65 + 24) = v58;
  v66 = v59;

  sub_10000368C(&qword_1000ED170, &qword_1000B6CD8);
  sub_100005870(&qword_1000ED178, &qword_1000ED170, &qword_1000B6CD8);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v98[0] = dispatch thunk of CAFMediaSourceObservable.$userVisibleLabel.getter();
  v99 = dispatch thunk of CAFMediaSourceObservable.$mediaSourceSemanticType.getter();
  sub_10000368C(&qword_1000EE0B8, &qword_1000B8260);
  sub_10000368C(&qword_1000EE0C0, &qword_1000B8268);
  sub_100005870(&qword_1000EE0C8, &qword_1000EE0B8, &qword_1000B8260);
  sub_100005870(&qword_1000EE0D0, &qword_1000EE0C0, &qword_1000B8268);
  v67 = v93;
  Publishers.CombineLatest.init(_:_:)();
  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  *(v68 + 24) = v58;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_100073334;
  *(v69 + 24) = v68;
  sub_100005870(&qword_1000EE0D8, &qword_1000EE020, &qword_1000B81C8);
  v70 = v66;

  v71 = v95;
  Publisher<>.sink(receiveValue:)();

  (*(v94 + 8))(v67, v71);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_10006BA08(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = [v3 mediaItems];
    sub_100005A50(0, &qword_1000EDFE8, CAFMediaItem_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_10006BA88(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v4 = *a1;
  if (qword_1000EACE0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100006928(v5, qword_1000F3B70);

  v7 = a2;
  a2 = v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = v4 >> 62;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v11 = 134349570;
    if (v10)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v12;

    *(v11 + 12) = 2082;
    v13 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v15 = sub_100043AF0(v13, v14, v31);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2082;
    v16 = sub_100083338();
    a2 = v17;
    v18 = sub_100043AF0(v16, v17, v31);

    *(v11 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received %{public}ld media items for source %{public}s %{public}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v31[0] = _swiftEmptyArrayStorage;
  if (v10)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_9:
      v20 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v25 = v31[0];
            goto LABEL_25;
          }
        }

        else
        {
          if (v20 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_22;
          }

          v21 = *(v4 + 8 * v20 + 32);
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_19;
          }
        }

        v23 = v21;
        a2 = sub_100083460();

        if (a2)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v24 = *(v31[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a2 = v31;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v20;
        if (v22 == v19)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_25:
  v26 = CAFMediaSourceObservable.observed.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = sub_100072F1C(v26, v25);

    *a3 = v29;
  }

  else
  {
    __break(1u);
  }
}

void sub_10006BDD4(unint64_t *a1, void *a2)
{
  v3 = *a1;
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3B70);

  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134349570;
    v28 = v9;
    if (v3 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v10;

    *(v8 + 12) = 2082;
    v11 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v13 = sub_100043AF0(v11, v12, &v28);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2082;
    v14 = sub_100083338();
    v16 = sub_100043AF0(v14, v15, &v28);

    *(v8 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Mapped to %{public}ld media items for source %{public}s %{public}s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v28;
  if (v28)
  {
    v18 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v20 = v19;
    v21 = [v17 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v18 == v22 && v20 == v24)
    {

LABEL_13:
      sub_10006D0AC(v3);
      goto LABEL_17;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_13;
    }
  }

  v17 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v17, v26, "Not updating stations for non-active source", v27, 2u);
  }

LABEL_17:

  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  sub_100092458();
}

void sub_10006C168(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 mediaItemImages];
  sub_100005A50(0, &qword_1000EDFF0, CAFMediaItemImage_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

uint64_t sub_10006C1DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v10)
  {
    v0 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v2 = v1;
    v3 = [v10 identifier];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (v0 == v4 && v2 == v6)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    return 1;
  }

LABEL_7:
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  sub_100092458();
  return 0;
}

void sub_10006C338(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_100044148(_swiftEmptyArrayStorage);
  sub_100064DB4(v3, &v4);
  *a2 = v4;
}

void sub_10006C394(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3B70);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v8 = 136446722;
    v9 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v11 = sub_100043AF0(v9, v10, &v26);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v12 = sub_100083338();
    v14 = sub_100043AF0(v12, v13, &v26);

    *(v8 + 14) = v14;
    *(v8 + 22) = 1026;
    *(v8 + 24) = v3;
    _os_log_impl(&_mh_execute_header, v6, v7, "Media source %{public}s %{public}s, now disabled: %{BOOL,public}d", v8, 0x1Cu);
    swift_arrayDestroy();
  }

  v15 = CAFMediaSourceObservable.observed.getter();
  v16 = [v15 identifier];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v26;
  if (v26)
  {
    v21 = [v26 identifier];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v17 == v22 && v19 == v24)
    {

LABEL_11:
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v26) = v3 ^ 1;

      static Published.subscript.setter();
      goto LABEL_12;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_12:
  sub_10006C8D0();
}

void sub_10006C6AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006928(v5, qword_1000F3B70);
  v6 = a4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136446978;
    v10 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v12 = sub_100043AF0(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = sub_100083338();
    v15 = sub_100043AF0(v13, v14, &v23);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    v16 = dispatch thunk of CAFMediaSourceObservable.userVisibleLabel.getter();
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v16 = 0x6E776F6E6B6E55;
      v18 = 0xE700000000000000;
    }

    v19 = sub_100043AF0(v16, v18, &v23);

    *(v9 + 24) = v19;
    *(v9 + 32) = 2082;
    dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
    v20 = CAFMediaSourceSemanticType.description.getter();
    v22 = sub_100043AF0(v20, v21, &v23);

    *(v9 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v7, v8, "Media source %{public}s %{public}s, updated name: %s type: %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
  }

  sub_10006C8D0();
}

void sub_10006C8D0()
{
  v1 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v26 = *(v0 + v1);
    }

    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
LABEL_34:
    v28 = v4;

    sub_100071A20(&v28);

    v25 = v28;
LABEL_36:
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v25;

    static Published.subscript.setter();
    NowPlayingObserver.emitFinalizedIfNeeded()();
    return;
  }

  v28 = _swiftEmptyArrayStorage;

  sub_1000A2C90(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v27 = v2;
    v5 = 0;
    v4 = v28;
    v6 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
      if (v9 > 7u || ((1 << v9) & 0x91) == 0)
      {
        goto LABEL_23;
      }

      v11 = CAFMediaSourceObservable.observed.getter();
      v12 = [v11 hasUserVisibleLabel];

      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = dispatch thunk of CAFMediaSourceObservable.userVisibleLabel.getter();
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = v13;
      v16 = v14;
      if (!((v14 & 0x2000000000000000) != 0 ? HIBYTE(v14) & 0xF : v13 & 0xFFFFFFFFFFFFLL))
      {
        break;
      }

      if (String.count.getter() <= 15)
      {
      }

      else
      {
        String.index(_:offsetBy:limitedBy:)();
        String.subscript.getter();

        v2 = v27;
        v15 = static String._fromSubstring(_:)();
        v16 = v18;
      }

LABEL_29:
      v28 = v4;
      v23 = *(v4 + 2);
      v22 = *(v4 + 3);
      if (v23 >= v22 >> 1)
      {
        sub_1000A2C90((v22 > 1), v23 + 1, 1);
        v4 = v28;
      }

      ++v5;
      *(v4 + 2) = v23 + 1;
      v24 = &v4[16 * v23];
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      if (v3 == v5)
      {

        goto LABEL_34;
      }
    }

LABEL_23:
    dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
    v19 = CAFMediaSourceSemanticType.title.getter();
    v21 = v20;

    if (v21)
    {
      v15 = v19;
    }

    else
    {
      v15 = 0;
    }

    if (v21)
    {
      v16 = v21;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    goto LABEL_29;
  }

  __break(1u);

  __break(1u);
}

void sub_10006CC20(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 mediaItems];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 mediaItems];

      sub_100005A50(0, &qword_1000EDFE8, CAFMediaItem_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v8 = sub_100072F1C(a1, v7);
        if (qword_1000EACE0 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_100006928(v9, qword_1000F3B70);
        swift_bridgeObjectRetain_n();

        v10 = a1;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v33 = v14;
          *v13 = 134349570;
          if (v7 >> 62)
          {
            v15 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v13 + 4) = v15;

          *(v13 + 12) = 2082;
          v16 = [v10 identifier];
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          v20 = sub_100043AF0(v17, v19, &v33);

          *(v13 + 14) = v20;
          *(v13 + 22) = 2050;
          if (v8 >> 62)
          {
            v21 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v13 + 24) = v21;

          _os_log_impl(&_mh_execute_header, v11, v12, "Processing %{public}ld items in source %{public}s into %{public}ld stations", v13, 0x20u);
          sub_100006960(v14);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        sub_10006D0AC(v8);

        return;
      }
    }

    else
    {
    }
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006928(v22, qword_1000F3B70);
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136446210;
    v28 = [v23 identifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_100043AF0(v29, v31, &v33);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "No available stations in source %{public}s", v26, 0xCu);
    sub_100006960(v27);
  }

  sub_10006D0AC(_swiftEmptyArrayStorage);
}

void sub_10006D0AC(unint64_t a1)
{
  if (qword_1000EACE0 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100006928(v2, qword_1000F3B70);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = a1 >> 62;
    v47 = a1;
    if (os_log_type_enabled(v3, v4))
    {
      v6 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v6 = 134349570;
      if (v5)
      {
        v7 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0x29656E6F6E28;
      *(v6 + 4) = v7;

      *(v6 + 12) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v49)
      {
        v9 = [v49 identifier];

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v12 = 0xE600000000000000;
        v10 = 0x29656E6F6E28;
      }

      v13 = sub_100043AF0(v10, v12, v50);

      *(v6 + 14) = v13;
      *(v6 + 22) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v49)
      {
        sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
        sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr);
        v14 = CAFObserved<>.observable.getter();
        v8 = sub_100083338();
        v16 = v15;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      v17 = sub_100043AF0(v8, v16, v50);

      *(v6 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v3, v4, "Processing %{public}ld updated stations. Active source %{public}s %{public}s", v6, 0x20u);
      swift_arrayDestroy();

      a1 = v47;
    }

    else
    {
    }

    if (!v5)
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        break;
      }

      goto LABEL_15;
    }

    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      break;
    }

LABEL_15:
    v19 = 0;
    v20 = a1 & 0xC000000000000001;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    while (v20)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_29;
      }

LABEL_23:
      v24 = (v22 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier);
      swift_beginAccess();
      v25 = v24[1];
      if (!v25)
      {
        goto LABEL_19;
      }

      v26 = *v24;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (*(v49 + 2))
      {
        v27 = sub_1000275D8(v26, v25);
        v29 = v28;

        if (v29)
        {
          v30 = *(*(v49 + 7) + 8 * v27);

          v31 = v30;
          v51.value.super.isa = v30;
          TerrestrialRadioStation.setImage(_:)(v51);

          goto LABEL_18;
        }
      }

      else
      {
      }

LABEL_18:
      a1 = v47;
LABEL_19:

      ++v19;
      if (v23 == v18)
      {
        goto LABEL_33;
      }
    }

    if (v19 >= *(v21 + 16))
    {
      goto LABEL_30;
    }

    v22 = *(a1 + 8 * v19 + 32);

    v23 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_33:

  v49 = sub_10002BC68(v32);
  sub_100027D28(&v49);
  v33 = v49;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = 0x29656E6F6E28;
    v37 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v37 = 136446466;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v48)
    {
      v38 = [v48 identifier];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v41 = 0xE600000000000000;
      v39 = 0x29656E6F6E28;
    }

    v42 = sub_100043AF0(v39, v41, &v49);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v48)
    {
      sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
      sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr);
      v43 = CAFObserved<>.observable.getter();
      v36 = sub_100083338();
      v45 = v44;
    }

    else
    {
      v45 = 0xE600000000000000;
    }

    v46 = sub_100043AF0(v36, v45, &v49);

    *(v37 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "Updating stations in source %{public}s %{public}s.", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v33;

  static Published.subscript.setter();
  sub_10006E488();
  sub_10006D88C();
  NowPlayingObserver.emitFinalizedIfNeeded()();
}

void sub_10006D88C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v42[0];
  if (v42[0])
  {
    v1 = &off_1000E7000;
    v2 = [v42[0] mediaSourceSemanticType];
    if (v2 - 1 < 2 || v2 == 8)
    {
      v4 = [v42[0] currentFrequencyRange];
      v5 = [v4 minimumValue];
      v6 = [v4 maximumValue];
      v7 = [v4 stepValue];
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      v9 = v42[0];
      v10 = sub_100072930(v5, v6, v8, v9);

      swift_getKeyPath();
      swift_getKeyPath();
      v42[0] = v10;

      static Published.subscript.setter();
    }

    else
    {
      if (v2 == 3)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v42[0] = sub_10002BC68(v11);
        sub_100027D28(v42);

        v12 = v42[0];
        if ((v42[0] & 0x8000000000000000) != 0 || (v42[0] & 0x4000000000000000) != 0)
        {
          v39 = v42[0];
          v13 = _CocoaArrayWrapper.endIndex.getter();
          v12 = v39;
          if (v13)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v13 = *(v42[0] + 2);
          if (v13)
          {
LABEL_15:
            v14 = v12;
            v43 = _swiftEmptyArrayStorage;
            sub_1000A2C90(0, v13 & ~(v13 >> 63), 0);
            if (v13 < 0)
            {
              __break(1u);

              __break(1u);
              return;
            }

            v15 = 0;
            v16 = v43;
            v17 = v14;
            v40 = v14 & 0xC000000000000001;
            v41 = v14;
            v18 = v13;
            do
            {
              if (v40)
              {
                v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v19 = *(v17 + 8 * v15 + 32);
              }

              v20 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
              swift_beginAccess();
              v21 = *(v19 + v20);
              v22 = v1;
              v23 = v0;
              [v0 v1[146]];
              v24 = CAFMediaItem.formattedUserEnteredFrequency(in:)();
              v26 = v25;

              v43 = v16;
              v28 = v16[2];
              v27 = v16[3];
              if (v28 >= v27 >> 1)
              {
                sub_1000A2C90((v27 > 1), v28 + 1, 1);
                v16 = v43;
              }

              ++v15;
              v16[2] = v28 + 1;
              v29 = &v16[2 * v28];
              v29[4] = v24;
              v29[5] = v26;
              v0 = v23;
              v1 = v22;
              v17 = v41;
            }

            while (v18 != v15);

            goto LABEL_31;
          }
        }

        v16 = _swiftEmptyArrayStorage;
LABEL_31:
        swift_getKeyPath();
        swift_getKeyPath();
        v43 = v16;

        static Published.subscript.setter();

        return;
      }

      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006928(v30, qword_1000F3B70);
      v31 = v42[0];
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v42[0] = v35;
        *v34 = 136315138;
        [v31 mediaSourceSemanticType];
        v36 = CAFMediaSourceSemanticType.description.getter();
        v38 = sub_100043AF0(v36, v37, v42);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Dialable station strings are unsupported for media type: %s", v34, 0xCu);
        sub_100006960(v35);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v42[0] = _swiftEmptyArrayStorage;

      static Published.subscript.setter();
    }
  }
}

void sub_10006DDBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v40;
  if (!v40)
  {
LABEL_19:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v40)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v9 = v40;
      v19 = qword_1000EAD00;
      v20 = v40;
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006928(v21, qword_1000F3BD0);
      v22 = v20;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v40 = v26;
        *v25 = 136446210;
        v27 = sub_10007DDA8();
        v29 = v28;

        v34 = sub_100043AF0(v27, v29, &v40);

        *(v25 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v23, v24, "Updated current artwork from playing station: %{public}s", v25, 0xCu);
        sub_100006960(v26);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1000EAD00 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006928(v30, qword_1000F3BD0);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "No available current artwork.", v33, 2u);
      }

      v9 = 0;
    }

    goto LABEL_30;
  }

  v1 = [v40 artworkData];
  if (!v1)
  {
LABEL_18:

    goto LABEL_19;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_16;
    }
  }

  else if (v6)
  {
    if (v3 == v3 >> 32)
    {
LABEL_16:

      sub_100072620(v3, v5);
      goto LABEL_19;
    }
  }

  else if ((v5 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

  v7 = objc_allocWithZone(UIImage);
  sub_1000725CC(v3, v5);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithData:isa];

  sub_100072620(v3, v5);
  if (!v9)
  {
    sub_100072620(v3, v5);
    goto LABEL_18;
  }

  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006928(v10, qword_1000F3BD0);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446210;
    v40 = v15;
    v16 = sub_10007DDA8();
    v18 = sub_100043AF0(v16, v17, &v40);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Updated current artwork from snapshot artwork data: %{public}s", v14, 0xCu);
    sub_100006960(v15);
  }

  sub_100072620(v3, v5);
LABEL_30:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v35 = v40;
  if (!v40)
  {
LABEL_38:
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v9;

    static Published.subscript.setter();
    return;
  }

  if (([v40 isEqual:v9] & 1) == 0)
  {

    goto LABEL_38;
  }

  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100006928(v36, qword_1000F3BD0);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Artwork has not changed.", v39, 2u);
  }
}

void sub_10006E488()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v101 = [Strong np_currentFrequency];
  }

  else
  {
    v101 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v108[0])
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006928(v22, qword_1000F3BD0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No available active source.", v25, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v108[0] = 0;

    static Published.subscript.setter();
    sub_10006DDBC();
    NowPlayingObserver.emitFinalizedIfNeeded()();
    return;
  }

  v102 = v1;
  v100 = v108[0];
  if ([v108[0] hasCurrentMediaItemIdentifier] && objc_msgSend(v108[0], "currentMediaItemIdentifierInvalid"))
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006928(v2, qword_1000F3B70);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_32;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Current media item identifier is invalid.";
    v7 = v4;
    v8 = v3;
    v9 = v5;
    v10 = 2;
LABEL_31:
    _os_log_impl(&_mh_execute_header, v8, v7, v6, v9, v10);

LABEL_32:

    v13 = 0;
    v15 = 0;
    goto LABEL_33;
  }

  if (![v108[0] hasCurrentMediaItemIdentifier] || (v11 = objc_msgSend(v108[0], "currentMediaItemIdentifier")) == 0)
  {
LABEL_27:
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006928(v26, qword_1000F3B70);
    v3 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v27))
    {
      goto LABEL_32;
    }

    v28 = swift_slowAlloc();
    *v28 = 67240192;
    *(v28 + 1) = v101;
    v6 = "No available current media item identifier. Current frequency %{public}u";
    v7 = v27;
    v8 = v3;
    v9 = v28;
    v10 = 8;
    goto LABEL_31;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_27;
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006928(v17, qword_1000F3B70);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v108[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_100043AF0(v13, v15, v108);
    _os_log_impl(&_mh_execute_header, v18, v19, "Current media item identifier: %{public}s", v20, 0xCu);
    sub_100006960(v21);
  }

LABEL_33:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = v108[0];
  if (v108[0] >> 62)
  {
LABEL_88:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_35;
    }

LABEL_89:

    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_100006928(v78, qword_1000F3B70);
    swift_retain_n();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v107[0] = swift_slowAlloc();
      *v81 = 67241218;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v106)
      {
        v82 = [v106 currentFrequency];
      }

      else
      {
        v82 = 0;
      }

      v83 = 0x29656E6F6E28;
      *(v81 + 4) = v82;

      *(v81 + 8) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v106 && (v84 = [v106 currentMediaItemIdentifier], v106, v84))
      {
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = v85;
      }

      else
      {
        v87 = 0xE600000000000000;
        v88 = 0x29656E6F6E28;
      }

      v89 = sub_100043AF0(v88, v87, v107);

      *(v81 + 10) = v89;
      *(v81 + 18) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v106)
      {
        v90 = [v106 identifier];

        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;
      }

      else
      {
        v93 = 0xE600000000000000;
        v91 = 0x29656E6F6E28;
      }

      v94 = sub_100043AF0(v91, v93, v107);

      *(v81 + 20) = v94;
      *(v81 + 28) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v106)
      {
        sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
        sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr);
        v95 = CAFObserved<>.observable.getter();
        v83 = sub_100083338();
        v97 = v96;
      }

      else
      {
        v97 = 0xE600000000000000;
      }

      v98 = sub_100043AF0(v83, v97, v107);

      *(v81 + 30) = v98;
      *(v81 + 38) = 2050;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v106 >> 62)
      {
        v99 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v99 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v81 + 40) = v99;

      _os_log_impl(&_mh_execute_header, v79, v80, "Unable to match a playing station for freq: %{public}u ID %{public}s. Source %{public}s %{public}s has %{public}ld stations.", v81, 0x30u);
      swift_arrayDestroy();
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v107[0] = 0;

    static Published.subscript.setter();
LABEL_110:

    sub_10006DDBC();
    NowPlayingObserver.emitFinalizedIfNeeded()();
    goto LABEL_111;
  }

  v30 = *((v108[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_89;
  }

LABEL_35:
  v31 = 0;
  while ((v29 & 0xC000000000000001) != 0)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_52;
    }

LABEL_40:
    if (v15)
    {
      v34 = (v32 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      v35 = *v34 == v13 && v15 == v34[1];
      if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v36 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
      swift_beginAccess();
      if (v102 && *(v32 + v36) == v101)
      {
        goto LABEL_53;
      }
    }

    ++v31;
    if (v33 == v30)
    {
      goto LABEL_89;
    }
  }

  if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_88;
  }

  v32 = *(v29 + 8 * v31 + 32);

  v33 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    goto LABEL_40;
  }

LABEL_52:
  __break(1u);
LABEL_53:

  v37 = (v32 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v106)
  {
    v40 = (v106 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    swift_beginAccess();
    v42 = *v40;
    v41 = v40[1];

    if (v39 == v42 && v38 == v41)
    {

      goto LABEL_67;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
LABEL_67:
      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_100006928(v54, qword_1000F3B70);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Playing station has not changed.", v57, 2u);
      }

      goto LABEL_110;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100006928(v45, qword_1000F3B70);
  swift_retain_n();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = 0x29656E6F6E28;
    v49 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v49 = 136447234;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32)
    {
      v50 = [v32 identifier];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v53 = 0xE600000000000000;
      v51 = 0x29656E6F6E28;
    }

    v58 = sub_100043AF0(v51, v53, &v105);

    *(v49 + 4) = v58;
    *(v49 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32)
    {
      sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
      sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr);
      v59 = CAFObserved<>.observable.getter();
      v48 = sub_100083338();
      v61 = v60;
    }

    else
    {
      v61 = 0xE600000000000000;
    }

    v62 = sub_100043AF0(v48, v61, &v105);

    *(v49 + 14) = v62;
    *(v49 + 22) = 2050;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32 >> 62)
    {
      v63 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v63 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v49 + 24) = v63;

    *(v49 + 32) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32)
    {
      v103 = TerrestrialRadioStation.formattedFrequency.getter();
      v104 = v64;
      v65._countAndFlagsBits = 32;
      v65._object = 0xE100000000000000;
      String.append(_:)(v65);
      v66 = (v32 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
      swift_beginAccess();
      v67 = v47;
      v68 = *v66;
      v69 = v66[1];

      v70._countAndFlagsBits = v68;
      v70._object = v69;
      String.append(_:)(v70);

      v47 = v67;

      v71 = v103;
      v72 = v104;
    }

    else
    {
      v72 = 0xE400000000000000;
      v71 = 1701736302;
    }

    v73 = sub_100043AF0(v71, v72, &v105);

    *(v49 + 34) = v73;
    *(v49 + 42) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v103)
    {
      v74 = TerrestrialRadioStation.debugDisplayName.getter();
      v76 = v75;
    }

    else
    {
      v76 = 0xE400000000000000;
      v74 = 1701736302;
    }

    v77 = sub_100043AF0(v74, v76, &v105);

    *(v49 + 44) = v77;
    _os_log_impl(&_mh_execute_header, v46, v47, "Source %{public}s %{public}s has %{public}ld stations, current %{public}s - %{public}s", v49, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10006DDBC();
  NowPlayingObserver.emitFinalizedIfNeeded()();
LABEL_111:
}

Swift::Void __swiftcall NowPlayingObserver.emitFinalizedIfNeeded()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  v2 = *(v12 + 64);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v11);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10007051C;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = &unk_1000E1170;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007310C(&qword_1000EB840, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_100005870(&qword_1000EB850, &unk_1000EC7D0, &qword_1000B5D50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v12 + 8))(v4, v1);
  (*(v5 + 8))(v8, v11);
}

void sub_10006FA04()
{
  if (qword_1000EACC0 != -1)
  {
    goto LABEL_74;
  }

LABEL_2:
  v0 = qword_1000F3B28;
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v3 = Hasher._finalize()();
    v4 = -1 << *(v1 + 32);
    v5 = v3 & ~v4;
    if ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v6 = ~v4;
      do
      {
        if (*(*(v1 + 48) + v5) > 3u)
        {
          if (*(*(v1 + 48) + v5) <= 4u)
          {

            return;
          }
        }

        else
        {
          *(*(v1 + 48) + v5);
        }

        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v7)
        {

          return;
        }

        v5 = (v5 + 1) & v6;
      }

      while (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }
  }

  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (!v9)
  {
    __break(1u);
    return;
  }

  type metadata accessor for AppDelegate();
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (!v56)
  {
    if (qword_1000EACE8 != -1)
    {
LABEL_77:
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006928(v21, qword_1000F3B88);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Awaiting main scene for finalized signpost.";
    goto LABEL_84;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_80;
  }

  v11 = Strong;
  v12 = [Strong media];

  if (!v12)
  {
    goto LABEL_80;
  }

  v13 = [v12 mediaSources];

  if (!v13)
  {
    goto LABEL_80;
  }

  sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (!v15)
    {
LABEL_79:

LABEL_80:
      if (qword_1000EACE8 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100006928(v53, qword_1000F3B88);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_85;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "No sources yet exist. Deferring finalized.";
      goto LABEL_84;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_79;
    }
  }

  v16 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
      goto LABEL_2;
    }

    if ([v18 mediaSourceSemanticType])
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v16;
  }

  while (v20 != v15);

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    v26 = _swiftEmptyArrayStorage[2];
    if (v26)
    {
      goto LABEL_36;
    }

LABEL_87:

    if (qword_1000EACE8 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100006928(v54, qword_1000F3B88);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "No available non-other sources. Deferring finalized.";
LABEL_84:
    _os_log_impl(&_mh_execute_header, v22, v23, v25, v24, 2u);

    goto LABEL_85;
  }

  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (!v26)
  {
    goto LABEL_87;
  }

LABEL_36:
  v27 = 0;
  while (2)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      goto LABEL_42;
    }

    if (v27 >= _swiftEmptyArrayStorage[2])
    {
      goto LABEL_73;
    }

    v28 = _swiftEmptyArrayStorage[v27 + 4];
    v29 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
LABEL_42:
      v30 = v28;
      v31 = [v30 mediaSourceSemanticType];
      if (v31 > 8 || ((1 << v31) & 0x14F) == 0)
      {
      }

      else
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v33 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v27;
      if (v29 == v26)
      {
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_50:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (v34)
    {
      goto LABEL_53;
    }

    goto LABEL_92;
  }

  v34 = _swiftEmptyArrayStorage[2];
  if (!v34)
  {
LABEL_92:

    if (qword_1000EACE8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100006928(v55, qword_1000F3B88);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "At least one source exists, but no browsable sources exist. Firing finalized.";
LABEL_96:
      _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);
    }

    goto LABEL_97;
  }

LABEL_53:
  v35 = 0;
  do
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v35 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_76;
      }

      v36 = _swiftEmptyArrayStorage[v35 + 4];
    }

    v37 = v36;
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v39 = [v36 mediaItems];
    if (!v39)
    {

      if (qword_1000EACE8 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100006928(v42, qword_1000F3B88);
      v43 = v37;
      v22 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138543362;
        *(v45 + 4) = v43;
        *v46 = v43;
        v47 = v43;
        _os_log_impl(&_mh_execute_header, v22, v44, "Media source %{public}@ isn't ready yet. Deferring finalized.", v45, 0xCu);
        sub_100007834(v46, &unk_1000EE230, &qword_1000BA550);

        return;
      }

      goto LABEL_85;
    }

    v40 = v39;
    v41 = [v39 mediaItems];

    ++v35;
  }

  while (v38 != v34);

  if (qword_1000EACE8 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100006928(v48, qword_1000F3B88);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "All browsable sources are ready. Emitting Finalized.";
    goto LABEL_96;
  }

LABEL_97:

  v22 = swift_unknownObjectWeakLoadStrong();
  sub_10000612C(4, v22);
LABEL_85:
}

uint64_t sub_100070524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NowPlayingObserver.deinit()
{
  v1 = OBJC_IVAR____TtC5Media18NowPlayingObserver__activeSource;
  v2 = sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  v22 = *(*(v2 - 8) + 8);
  v22(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Media18NowPlayingObserver__lastSnapshot;
  v4 = sub_10000368C(&unk_1000EC8C0, &qword_1000B6128);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Media18NowPlayingObserver__artwork;
  v6 = sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC5Media18NowPlayingObserver__terrestrialStations;
  v8 = sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC5Media18NowPlayingObserver__playingStation;
  v10 = sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC5Media18NowPlayingObserver__activeSourceEnabled;
  v12 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v13(v0 + OBJC_IVAR____TtC5Media18NowPlayingObserver__carOwnsMainAudio, v12);
  v14 = OBJC_IVAR____TtC5Media18NowPlayingObserver__mediaSourceTitles;
  v15 = sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  v16 = *(*(v15 - 8) + 8);
  v16(v0 + v14, v15);
  v17 = OBJC_IVAR____TtC5Media18NowPlayingObserver__artworkCache;
  v18 = sub_10000368C(&qword_1000EDB38, &qword_1000B7F18);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v22(v0 + OBJC_IVAR____TtC5Media18NowPlayingObserver__targetSource, v2);
  v16(v0 + OBJC_IVAR____TtC5Media18NowPlayingObserver__dialableStationStrings, v15);
  v13(v0 + OBJC_IVAR____TtC5Media18NowPlayingObserver__isCallActive, v12);
  swift_unknownObjectWeakDestroy();
  v19 = *(v0 + OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers);

  v20 = *(v0 + OBJC_IVAR____TtC5Media18NowPlayingObserver_cancelSet);

  return v0;
}

uint64_t NowPlayingObserver.__deallocating_deinit()
{
  NowPlayingObserver.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100070910@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingObserver();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for NowPlayingObserver()
{
  result = qword_1000EDB98;
  if (!qword_1000EDB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100070BE0()
{
  sub_100045298(319, &qword_1000EDBA8, &qword_1000EB998, &qword_1000B7C40);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_100045298(319, &qword_1000EDBB0, &qword_1000EDAE0, &qword_1000B7C98);
    if (v4 <= 0x3F)
    {
      v19 = *(v3 - 8) + 64;
      sub_100045298(319, &unk_1000EC9E8, &qword_1000EC950, &qword_1000B6250);
      if (v6 <= 0x3F)
      {
        v20 = *(v5 - 8) + 64;
        sub_100045298(319, &qword_1000ECDE8, &qword_1000EEF30, &qword_1000B68E0);
        if (v8 <= 0x3F)
        {
          v21 = *(v7 - 8) + 64;
          sub_100045298(319, &qword_1000ECDE0, &qword_1000EC5B0, &qword_1000B7D80);
          if (v10 <= 0x3F)
          {
            v22 = *(v9 - 8) + 64;
            sub_10000B5F0();
            if (v12 <= 0x3F)
            {
              v13 = *(v11 - 8) + 64;
              sub_100045298(319, &qword_1000EDBB8, &qword_1000EDB18, &qword_1000B7E70);
              if (v15 <= 0x3F)
              {
                v16 = *(v14 - 8) + 64;
                sub_100045298(319, &unk_1000EDBC0, &qword_1000EDB28, &qword_1000B7EC8);
                if (v18 <= 0x3F)
                {
                  v23 = *(v17 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}