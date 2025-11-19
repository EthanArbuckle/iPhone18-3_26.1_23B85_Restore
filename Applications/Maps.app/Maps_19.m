id sub_10026B1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template] = 0;
  *&v3[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_publisherIconOverlayProvider] = 0;
  *&v3[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider] = 0;
  if (a3)
  {

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for CuratedGuideTableViewCell();
  v7 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v6);

  v8 = v7;
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setAccessibilityIdentifier:v9];

  v10 = v7;
  v11 = [v10 contentView];
  v12 = objc_opt_self();
  v13 = [v12 clearColor];
  [v11 setBackgroundColor:v13];

  v14 = [v12 clearColor];
  [v10 setBackgroundColor:v14];

  return v10;
}

void sub_10026B55C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_unknownObjectWeakAssign();
  v7 = OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel;
  v8 = *&v3[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel];
  if (v8)
  {
    type metadata accessor for CuratedGuideViewModel();
    v9 = v8;
    v10 = a1;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
      return;
    }

    v8 = *&v4[v7];
  }

  *&v4[v7] = a1;
  v12 = a1;

  v13 = *&v4[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template];
  *&v4[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template] = a3;
  v14 = a3;

  type metadata accessor for CuratedGuideCellOverlayProvider();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *&v4[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_publisherIconOverlayProvider] = v15;
  v16 = v12;

  v17 = [objc_allocWithZone(type metadata accessor for CuratedGuideViewModelDataDownloader()) init];
  v18 = v17;
  v19 = v16[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_isAutocompleteContext];
  if (v16[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_isAutocompleteContext])
  {
    v20 = 11;
  }

  else
  {
    v20 = 4;
  }

  v21 = *&v17[OBJC_IVAR____TtC4Maps35CuratedGuideViewModelDataDownloader_viewModel];
  *&v17[OBJC_IVAR____TtC4Maps35CuratedGuideViewModelDataDownloader_viewModel] = a1;
  v22 = v16;

  *&v18[OBJC_IVAR____TtC4Maps35CuratedGuideViewModelDataDownloader_source] = v20;
  v23 = *&v4[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider];
  *&v4[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider] = v18;
  v25 = v18;

  if (v19 == 1)
  {
    v24 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    [v4 setBackgroundColor:v24];
  }
}

void sub_10026B7F4()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_1019161D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22[-1] - v7;
  __chkstk_darwin(v9);
  v11 = &v22[-1] - v10;
  __chkstk_darwin(v12);
  v14 = &v22[-1] - v13;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v16 = type metadata accessor for CuratedGuideTableViewCell();
  v23.receiver = v1;
  v23.super_class = v16;
  objc_msgSendSuper2(&v23, "_bridgedUpdateConfigurationUsingState:", isa);

  if (*&v1[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel])
  {
    __chkstk_darwin(v17);
    *(&v21 - 2) = v18;
    *(&v21 - 1) = v1;
    v21 = v1;
    v19 = v18;
    sub_1000CE6B8(&qword_1019161D8);
    sub_10026DA80();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.leading.getter();
    UIHostingConfiguration.margins(_:_:)();
    v20 = *(v3 + 8);
    v20(v5, v2);
    static Edge.Set.trailing.getter();
    UIHostingConfiguration.margins(_:_:)();
    v20(v8, v2);
    static Edge.Set.top.getter();
    UIHostingConfiguration.margins(_:_:)();
    v20(v11, v2);
    static Edge.Set.bottom.getter();
    v22[3] = v2;
    v22[4] = sub_1000414C8(&qword_101916238, &qword_1019161D0);
    sub_10001A848(v22);
    UIHostingConfiguration.margins(_:_:)();
    v20(v14, v2);
    UITableViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10026BBD0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v174 = sub_1000CE6B8(&qword_101916210);
  __chkstk_darwin(v174);
  v153 = &v143 - v6;
  v152 = type metadata accessor for RichTextType();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v148 = &v143 - v9;
  v158 = sub_1000CE6B8(&qword_101916240);
  __chkstk_darwin(v158);
  v160 = &v143 - v10;
  v159 = sub_1000CE6B8(&qword_1019112D8);
  __chkstk_darwin(v159);
  v149 = &v143 - v11;
  v12 = sub_1000CE6B8(&qword_101911290);
  __chkstk_darwin(v12 - 8);
  v145 = &v143 - v13;
  v14 = type metadata accessor for GuideTileViewModel.GuideType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v155 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for GuideTileViewModel();
  v147 = *(v156 - 1);
  __chkstk_darwin(v156);
  v146 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v144 = &v143 - v19;
  v20 = sub_1000CE6B8(&qword_101916200);
  __chkstk_darwin(v20);
  v157 = &v143 - v21;
  v169 = sub_1000CE6B8(&qword_101916248);
  __chkstk_darwin(v169);
  v170 = &v143 - v22;
  v163 = type metadata accessor for GuideCell.GuideCellType();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v164 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v166 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v27 - 8);
  v161 = &v143 - v28;
  v176 = sub_1000CE6B8(&qword_10190D5A8);
  __chkstk_darwin(v176);
  v30 = (&v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v175 = &v143 - v32;
  *&v173 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v178 = *(v173 - 8);
  __chkstk_darwin(v173);
  v177 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v143 - v35;
  v37 = sub_1000CE6B8(&qword_1019161F0);
  v38 = __chkstk_darwin(v37);
  v154 = &v143 - v39;
  v40 = a1[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_isAutocompleteContext] == 1;
  v171 = v20;
  v167 = a1;
  v168 = v41;
  if (!v40)
  {
    v172 = a2;
    v40 = a1[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_useRichLayout] == 1;
    v165 = a3;
    if (v40)
    {
      (*(v15 + 104))(v155, enum case for GuideTileViewModel.GuideType.publisher(_:), v14, v38);
      v54 = [*&a1[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection] collectionTitle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1002B3C98();
      v55 = *(v172 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider);
      if (v55)
      {
        v56 = type metadata accessor for CuratedGuideViewModelDataDownloader();
        v57 = sub_10026DDEC(&qword_101916258, type metadata accessor for CuratedGuideViewModelDataDownloader);
        v58 = v55;
      }

      else
      {
        v58 = 0;
        v56 = 0;
        v57 = 0;
        v185 = 0;
        v186 = 0;
      }

      v184 = v58;
      v187 = v56;
      v188 = v57;
      v95 = *(v172 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_publisherIconOverlayProvider);
      if (v95)
      {
        v96 = type metadata accessor for CuratedGuideCellOverlayProvider();
        v97 = sub_10026DDEC(&qword_101916250, type metadata accessor for CuratedGuideCellOverlayProvider);
      }

      else
      {
        v96 = 0;
        v97 = 0;
        v180 = 0;
        v181 = 0;
      }

      v179 = v95;
      v182 = v96;
      v183 = v97;
      v101 = type metadata accessor for PhotoFanViewModel();
      (*(*(v101 - 8) + 56))(v145, 1, 1, v101);
      v102 = v55;

      v103 = v166;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v25 + 8))(v103, v24);
      v104 = v144;
      GuideTileViewModel.init(id:_:title:subtitle:imageProvider:logoProvider:photoFanView:placeholderColor:)();
      v105 = v147;
      (*(v147 + 16))(v146, v104, v156);
      v106 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v107 = swift_allocObject();
      v108 = v167;
      *(v107 + 16) = v106;
      *(v107 + 24) = v108;
      v109 = v108;
      v110 = v149;
      GuideTile.init(model:menuActions:tapHandler:)();
      v111 = v110 + *(v159 + 36);
      *v111 = 0x3FFB6DB6DB6DB6DBLL;
      *(v111 + 8) = 0;
      sub_1000D2DFC(v110, v160, &qword_1019112D8);
      swift_storeEnumTagMultiPayload();
      sub_1001D6F30();
      sub_10026DC4C();
      v112 = v157;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v110, &qword_1019112D8);
      (*(v105 + 8))(v104, v156);
    }

    else
    {
      v68 = v172;
      v69 = *(v172 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider);
      if (v69)
      {
        v70 = type metadata accessor for CuratedGuideViewModelDataDownloader();
        v71 = sub_10026DDEC(&qword_101916258, type metadata accessor for CuratedGuideViewModelDataDownloader);
        v72 = v69;
      }

      else
      {
        v72 = 0;
        v70 = 0;
        v71 = 0;
        v185 = 0;
        v186 = 0;
      }

      v184 = v72;
      v187 = v70;
      v188 = v71;
      v98 = *(v68 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_publisherIconOverlayProvider);
      v177 = v69;
      if (v98)
      {
        v99 = type metadata accessor for CuratedGuideCellOverlayProvider();
        v100 = sub_10026DDEC(&qword_101916250, type metadata accessor for CuratedGuideCellOverlayProvider);
      }

      else
      {
        v99 = 0;
        v100 = 0;
        v180 = 0;
        v181 = 0;
      }

      v179 = v98;
      v182 = v99;
      v183 = v100;
      sub_1000CE6B8(&unk_1019157F0);
      v178 = swift_allocObject();
      *(v178 + 16) = xmmword_1011E1D60;
      v176 = sub_1000CE6B8(&qword_10190A070);
      v175 = *(*(type metadata accessor for RichTextViewModel() - 8) + 72);
      v113 = swift_allocObject();
      v173 = xmmword_1011E1D30;
      *(v113 + 16) = xmmword_1011E1D30;
      v114 = v151;
      v156 = *(v151 + 104);
      v115 = v148;
      v116 = v152;
      (v156)(v148, enum case for RichTextType.title(_:));
      v117 = *&a1[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection];
      v118 = v177;

      v119 = [v117 collectionTitle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

      v120 = *(v114 + 8);
      v121 = v116;
      v120(v115, v116);
      v122 = v178;
      *(v178 + 32) = v113;
      v123 = swift_allocObject();
      *(v123 + 16) = v173;
      v124 = v150;
      (v156)(v150, enum case for RichTextType.line(_:), v121);
      v125 = v167;
      sub_1002B3F0C();
      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

      v120(v124, v121);
      *(v122 + 40) = v123;
      v126 = type metadata accessor for BottomAccessoryViewModel();
      (*(*(v126 - 8) + 56))(v161, 1, 1, v126);
      UUID.init()();
      v127 = type metadata accessor for ListCellViewModel();
      swift_allocObject();
      v128 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
      (*(v162 + 104))(v164, enum case for GuideCell.GuideCellType.mediumImageRight(_:), v163);
      v187 = v127;
      v188 = sub_10026DDEC(&qword_10190B068, &type metadata accessor for ListCellViewModel);
      v184 = v128;
      v129 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v130 = swift_allocObject();
      *(v130 + 16) = v129;
      *(v130 + 24) = v125;
      v131 = v125;

      v132 = v153;
      GuideCell.init(_:model:leadingCellActions:trailingCellActions:tapHandler:)();
      v133 = static Alignment.center.getter();
      v135 = v134;
      v136 = v132 + *(sub_1000CE6B8(&qword_101916220) + 36);
      InsetGroupedUIPlatter.init(topLeft:topRight:bottomLeft:bottomRight:)();
      v137 = (v136 + *(sub_1000CE6B8(&qword_101916230) + 36));
      *v137 = v133;
      v137[1] = v135;
      v138 = static Alignment.center.getter();
      v140 = v139;
      v141 = v132 + *(v174 + 36);
      sub_10026D5B0(v131, v141);
      v142 = (v141 + *(sub_1000CE6B8(&qword_10190D688) + 36));
      *v142 = v138;
      v142[1] = v140;
      sub_1000D2DFC(v132, v160, &qword_101916210);
      swift_storeEnumTagMultiPayload();
      sub_1001D6F30();
      sub_10026DC4C();
      v112 = v157;
      _ConditionalContent<>.init(storage:)();

      sub_100024F64(v132, &qword_101916210);
    }

    v93 = &qword_101916200;
    sub_1000D2DFC(v112, v170, &qword_101916200);
    swift_storeEnumTagMultiPayload();
    sub_10026DB0C();
    sub_10026DBC0();
    _ConditionalContent<>.init(storage:)();
    v94 = v112;
    return sub_100024F64(v94, v93);
  }

  v42 = *(a2 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template);
  if (!v42)
  {
    v73 = type metadata accessor for GuideCell();
    v74 = v154;
    (*(*(v73 - 8) + 56))(v154, 1, 1, v73);
    v75 = v170;
LABEL_37:
    v93 = &qword_1019161F0;
    sub_1000D2DFC(v74, v75, &qword_1019161F0);
    swift_storeEnumTagMultiPayload();
    sub_10026DB0C();
    sub_10026DBC0();
    _ConditionalContent<>.init(storage:)();
    v94 = v74;
    return sub_100024F64(v94, v93);
  }

  v172 = a2;
  v165 = a3;
  swift_getKeyPath();
  swift_getKeyPath();
  v160 = v42;
  static Published.subscript.getter();

  v44 = v184;
  v45 = v184[2];
  v46 = _swiftEmptyArrayStorage;
  if (v45)
  {
    v47 = 0;
    v48 = v173;
    v174 = v184[2];
    while (v47 < v44[2])
    {
      v49 = (*(v178 + 80) + 32) & ~*(v178 + 80);
      v50 = *(v178 + 72);
      sub_10026DE34(v44 + v49 + v50 * v47, v36);
      if (v36[*(v48 + 24)])
      {
        result = sub_10026DEFC(v36);
      }

      else
      {
        sub_10026DE98(v36, v177);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v184 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100511330(0, v46[2] + 1, 1);
          v48 = v173;
          v46 = v184;
        }

        v53 = v46[2];
        v52 = v46[3];
        if (v53 >= v52 >> 1)
        {
          sub_100511330(v52 > 1, v53 + 1, 1);
          v48 = v173;
          v46 = v184;
        }

        v46[2] = v53 + 1;
        result = sub_10026DE98(v177, v46 + v49 + v53 * v50);
        v45 = v174;
      }

      if (v45 == ++v47)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_19:

  v59 = v46[2];
  if (!v59)
  {
LABEL_30:

    v76 = v172;
    v77 = *(v172 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider);
    v75 = v170;
    if (v77)
    {
      v78 = type metadata accessor for CuratedGuideViewModelDataDownloader();
      v79 = sub_10026DDEC(&qword_101916258, type metadata accessor for CuratedGuideViewModelDataDownloader);
      v80 = v77;
    }

    else
    {
      v80 = 0;
      v78 = 0;
      v79 = 0;
      v185 = 0;
      v186 = 0;
    }

    v184 = v80;
    v187 = v78;
    v188 = v79;
    v81 = *(v76 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_publisherIconOverlayProvider);
    if (v81)
    {
      v82 = type metadata accessor for CuratedGuideCellOverlayProvider();
      v83 = sub_10026DDEC(&qword_101916250, type metadata accessor for CuratedGuideCellOverlayProvider);
    }

    else
    {
      v82 = 0;
      v83 = 0;
      v180 = 0;
      v181 = 0;
    }

    v179 = v81;
    v182 = v82;
    v183 = v83;
    v84 = type metadata accessor for BottomAccessoryViewModel();
    (*(*(v84 - 8) + 56))(v161, 1, 1, v84);
    v85 = v77;

    UUID.init()();
    v86 = type metadata accessor for ListCellViewModel();
    swift_allocObject();
    v87 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
    (*(v162 + 104))(v164, enum case for GuideCell.GuideCellType.small(_:), v163);
    v187 = v86;
    v188 = sub_10026DDEC(&qword_10190B068, &type metadata accessor for ListCellViewModel);
    v184 = v87;
    v88 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v89 = swift_allocObject();
    v90 = v167;
    *(v89 + 16) = v88;
    *(v89 + 24) = v90;

    v91 = v90;
    v74 = v154;
    GuideCell.init(_:model:leadingCellActions:trailingCellActions:tapHandler:)();

    v92 = type metadata accessor for GuideCell();
    (*(*(v92 - 8) + 56))(v74, 0, 1, v92);
    goto LABEL_37;
  }

  v184 = _swiftEmptyArrayStorage;
  result = sub_100511394(0, v59, 0);
  v60 = 0;
  v61 = v184;
  v177 = v46[2];
  v174 = v46 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
  while (v177 != v60)
  {
    if (v60 >= v46[2])
    {
      goto LABEL_52;
    }

    v63 = v175;
    v62 = v176;
    v64 = *(v176 + 48);
    sub_10026DE34(v174 + *(v178 + 72) * v60, &v175[v64]);
    *v30 = v60;
    sub_10026DE98(&v63[v64], v30 + *(v62 + 48));
    v65 = sub_1002180A8(v60 == 0, 1);
    result = sub_100024F64(v30, &qword_10190D5A8);
    v184 = v61;
    v67 = v61[2];
    v66 = v61[3];
    if (v67 >= v66 >> 1)
    {
      result = sub_100511394((v66 > 1), v67 + 1, 1);
      v61 = v184;
    }

    ++v60;
    v61[2] = v67 + 1;
    v61[v67 + 4] = v65;
    if (v59 == v60)
    {
      goto LABEL_30;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void sub_10026D514(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      [v5 didTapOnCuratedGuide:*(a2 + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection) withCell:v4];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10026D5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_10190D6E0);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = sub_1000CE6B8(&qword_10190D6E8);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_metrics);
  if (v15 && *(v15 + OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_showsDivider) == 1)
  {
    v31 = v11;
    Divider.init()();
    v16 = static Edge.Set.top.getter();
    v17 = &v6[*(sub_1000CE6B8(&qword_10190D6F0) + 36)];
    *v17 = v16;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    v17[40] = 1;
    v18 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v19 = &v6[*(v4 + 36)];
    *v19 = v18;
    *(v19 + 1) = v20;
    *(v19 + 2) = v21;
    *(v19 + 3) = v22;
    *(v19 + 4) = v23;
    v19[40] = 0;
    static Alignment.bottom.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000F11C4(v6, v9, &qword_10190D6E0);
    v24 = &v9[*(v7 + 36)];
    v25 = v37;
    *(v24 + 4) = v36;
    *(v24 + 5) = v25;
    *(v24 + 6) = v38;
    v26 = v33;
    *v24 = v32;
    *(v24 + 1) = v26;
    v27 = v35;
    *(v24 + 2) = v34;
    *(v24 + 3) = v27;
    sub_1000F11C4(v9, v14, &qword_10190D6E8);
    sub_1000F11C4(v14, a2, &qword_10190D6E8);
    return (*(v31 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v29 = *(v11 + 56);

    return v29(a2, 1, 1, v7, v12);
  }
}

id sub_10026D9A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CuratedGuideTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10026DA80()
{
  result = qword_1019161E0;
  if (!qword_1019161E0)
  {
    sub_1000D6664(&qword_1019161D8);
    sub_10026DB0C();
    sub_10026DBC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019161E0);
  }

  return result;
}

unint64_t sub_10026DB0C()
{
  result = qword_1019161E8;
  if (!qword_1019161E8)
  {
    sub_1000D6664(&qword_1019161F0);
    sub_10026DDEC(&qword_101911FB0, &type metadata accessor for GuideCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019161E8);
  }

  return result;
}

unint64_t sub_10026DBC0()
{
  result = qword_1019161F8;
  if (!qword_1019161F8)
  {
    sub_1000D6664(&qword_101916200);
    sub_1001D6F30();
    sub_10026DC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019161F8);
  }

  return result;
}

unint64_t sub_10026DC4C()
{
  result = qword_101916208;
  if (!qword_101916208)
  {
    sub_1000D6664(&qword_101916210);
    sub_10026DD04();
    sub_1000414C8(&qword_10190D680, &qword_10190D688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916208);
  }

  return result;
}

unint64_t sub_10026DD04()
{
  result = qword_101916218;
  if (!qword_101916218)
  {
    sub_1000D6664(&qword_101916220);
    sub_10026DDEC(&qword_101911FB0, &type metadata accessor for GuideCell);
    sub_1000414C8(&qword_101916228, &qword_101916230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916218);
  }

  return result;
}

uint64_t sub_10026DDEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10026DE34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceSummaryViewModelLine(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026DE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceSummaryViewModelLine(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026DEFC(uint64_t a1)
{
  v2 = type metadata accessor for PlaceSummaryViewModelLine(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10026DF74()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_publisherIconOverlayProvider) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10026E014()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_publisherIconOverlayProvider) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10026E0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[54] = a8;
  v8[55] = v14;
  v8[52] = a6;
  v8[53] = a7;
  v8[50] = a4;
  v8[51] = a5;
  v9 = type metadata accessor for Date();
  v8[56] = v9;
  v8[57] = *(v9 - 8);
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v10 = type metadata accessor for Location();
  v8[62] = v10;
  v8[63] = *(v10 - 8);
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  sub_1000CE6B8(&qword_1019162C0);
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v11 = type metadata accessor for ClientOrigin();
  v8[73] = v11;
  v8[74] = *(v11 - 8);
  v8[75] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v8[76] = swift_task_alloc();

  return _swift_task_switch(sub_10026E33C, 0, 0);
}

uint64_t sub_10026E33C()
{
  v1 = *(v0 + 400);
  (*(*(v0 + 592) + 104))(*(v0 + 600), enum case for ClientOrigin.other(_:), *(v0 + 584));
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  *(v0 + 616) = Session.init(_:)();
  v2 = OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_handle;
  *(v0 + 624) = OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_handle;
  *(v0 + 632) = sub_1000CE6B8(&unk_101925050);
  v3 = type metadata accessor for Handle();
  *(v0 + 640) = v3;
  v4 = *(v3 - 8);
  *(v0 + 648) = *(v4 + 72);
  v5 = *(v4 + 80);
  *(v0 + 744) = v5;
  v6 = (v5 + 32) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 656) = v7;
  *(v7 + 16) = xmmword_1011E1D30;
  v8 = *(v4 + 16);
  *(v0 + 664) = v8;
  *(v0 + 672) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v7 + v6, v1 + v2, v3);
  v9 = swift_task_alloc();
  *(v0 + 680) = v9;
  *v9 = v0;
  v9[1] = sub_10026E544;

  return Session._maps_locations(for:reverseGeocode:maxAge:)(v7, 0, 1.79769313e308);
}

uint64_t sub_10026E544(uint64_t a1)
{
  *(*v2 + 688) = a1;

  if (v1)
  {

    v3 = sub_10026F14C;
  }

  else
  {

    v3 = sub_10026E694;
  }

  return _swift_task_switch(v3, 0, 0);
}

id sub_10026E694()
{
  if (*(v0[86] + 16) && (v1 = sub_10029741C(v0[50] + v0[78]), (v2 & 1) != 0))
  {
    (*(v0[63] + 16))(v0[72], *(v0[86] + 56) + *(v0[63] + 72) * v1, v0[62]);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[72];
  v5 = v0[62];
  v6 = v0[50];
  v7 = *(v0[63] + 56);
  v0[87] = v7;
  v7(v4, v3, 1, v5);
  v8 = (v6 + OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_coordinate);
  if ((*(v6 + OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_coordinate + 16) & 1) == 0)
  {
    v10 = *v8;
    v9 = v8[1];
    if (sub_10027170C(*v8, v9))
    {
      if (qword_101906720 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100021540(v11, qword_101960000);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Using provided coordinate to resolve find my waypoint", v14, 2u);
      }

      v15 = v0[72];
      v16 = v0[71];
      v17 = v0[62];
      v18 = v0[63];

      sub_10027169C(v15, v16);
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        v19 = v0[61];
        v20 = v0[56];
        v21 = v0[57];
        sub_100024F64(v0[71], &qword_1019162C0);
        Date.init()();
        Date.timeIntervalSinceReferenceDate.getter();
        v23 = v22;
        (*(v21 + 8))(v19, v20);
      }

      else
      {
        v50 = v0[67];
        v51 = v0[62];
        v52 = v0[63];
        v53 = v0[61];
        v54 = v0[56];
        v55 = v0[57];
        (*(v52 + 32))(v50, v0[71], v51);
        Location.timestamp.getter();
        Date.init(timeIntervalSince1970:)();
        Date.timeIntervalSinceReferenceDate.getter();
        v23 = v56;
        (*(v55 + 8))(v53, v54);
        (*(v52 + 8))(v50, v51);
      }

      v57 = Handle.identifier.getter();
      v59 = v58;
      result = [objc_allocWithZone(GEOLocation) initWithGEOCoordinate:{v10, v9}];
      if (result)
      {
        v60 = result;
        v61 = v0[53];
        v62 = v0[54];
        v63 = v0[52];
        [result setTimestamp:v23];
        v64 = swift_allocObject();
        v64[2] = v57;
        v64[3] = v59;
        v64[4] = v63;
        v64[5] = v61;
        v0[42] = sub_10027175C;
        v0[43] = v64;
        v0[38] = _NSConcreteStackBlock;
        v0[39] = 1107296256;
        v0[40] = sub_100113C68;
        v0[41] = &unk_10160D8D0;
        v65 = _Block_copy(v0 + 38);

        v66 = v60;

        if (v62)
        {
          v67 = v0[55];
          v0[48] = v0[54];
          v0[49] = v67;
          v0[44] = _NSConcreteStackBlock;
          v0[45] = 1107296256;
          v0[46] = sub_1002ABAC8;
          v0[47] = &unk_10160D8F8;
          v68 = _Block_copy(v0 + 44);
        }

        else
        {
          v68 = 0;
        }

        v92 = v0[72];
        v93 = v0[50];
        v94 = [objc_opt_self() composedWaypointForLocation:v66 mapItem:0 traits:v0[51] completionHandler:v65 networkActivityHandler:v68];
        _Block_release(v68);
        _Block_release(v65);

LABEL_36:
        sub_100024F64(v92, &qword_1019162C0);
        *(v93 + OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_ticket) = v94;
        swift_unknownObjectRelease();

        v97 = v0[1];

        return v97();
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  v24 = v0[70];
  v25 = v0[62];
  v26 = v0[63];
  sub_10027169C(v0[72], v24);
  v27 = *(v26 + 48);
  v0[88] = v27;
  v0[89] = (v26 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v27(v24, 1, v25) == 1)
  {
    sub_100024F64(v0[70], &qword_1019162C0);
  }

  else
  {
    (*(v0[63] + 32))(v0[66], v0[70], v0[62]);
    Location.latitude.getter();
    v29 = v28;
    Location.longitude.getter();
    if (sub_10027170C(v29, v30))
    {
      v31 = v0[61];
      v32 = v0[56];
      v33 = v0[57];
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v35 = v34;
      v36 = *(v33 + 8);
      v36(v31, v32);
      Location.timestamp.getter();
      v38 = v35 - v37;
      GEOConfigGetDouble();
      if (v38 <= v39)
      {
        if (qword_101906720 != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        sub_100021540(v69, qword_101960000);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&_mh_execute_header, v70, v71, "Using fresh cached handle location to resolve find my waypoint", v72, 2u);
        }

        v73 = v0[60];
        v74 = v0[56];

        Location.latitude.getter();
        v76 = v75;
        Location.longitude.getter();
        v78 = v77;
        Location.timestamp.getter();
        Date.init(timeIntervalSince1970:)();
        Date.timeIntervalSinceReferenceDate.getter();
        v80 = v79;
        v36(v73, v74);
        v81 = Handle.identifier.getter();
        v83 = v82;
        result = [objc_allocWithZone(GEOLocation) initWithGEOCoordinate:{v76, v78}];
        if (result)
        {
          v84 = result;
          v85 = v0[53];
          v86 = v0[54];
          v87 = v0[52];
          [result setTimestamp:v80];
          v88 = swift_allocObject();
          v88[2] = v81;
          v88[3] = v83;
          v88[4] = v87;
          v88[5] = v85;
          v0[30] = sub_10027175C;
          v0[31] = v88;
          v0[26] = _NSConcreteStackBlock;
          v0[27] = 1107296256;
          v0[28] = sub_100113C68;
          v0[29] = &unk_10160D858;
          v99 = _Block_copy(v0 + 26);

          v89 = v84;

          if (v86)
          {
            v90 = v0[55];
            v0[36] = v0[54];
            v0[37] = v90;
            v0[32] = _NSConcreteStackBlock;
            v0[33] = 1107296256;
            v0[34] = sub_1002ABAC8;
            v0[35] = &unk_10160D880;
            v91 = _Block_copy(v0 + 32);
          }

          else
          {
            v91 = 0;
          }

          v92 = v0[72];
          v98 = v0[66];
          v96 = v0[62];
          v95 = v0[63];
          v93 = v0[50];
          v94 = [objc_opt_self() composedWaypointForLocation:v89 mapItem:0 traits:v0[51] completionHandler:v99 networkActivityHandler:v91];

          _Block_release(v91);
          _Block_release(v99);

          (*(v95 + 8))(v98, v96);
          goto LABEL_36;
        }

LABEL_40:
        __break(1u);
        return result;
      }
    }

    (*(v0[63] + 8))(v0[66], v0[62]);
  }

  v40 = v0[83];
  v41 = v0[80];
  v42 = v0[78];
  v43 = v0[50];
  v44 = (*(v0 + 744) + 32) & ~*(v0 + 744);
  GEOConfigGetDouble();
  v46 = v45;
  v47 = swift_allocObject();
  v0[90] = v47;
  *(v47 + 16) = xmmword_1011E1D30;
  v40(v47 + v44, v43 + v42, v41);
  v48 = swift_task_alloc();
  v0[91] = v48;
  *v48 = v0;
  v48[1] = sub_10026FBA4;

  return Session._maps_latestLocations(for:includeAddress:timeout:)(v47, 0, v46);
}

id sub_10026F14C()
{
  v1 = v0[72];
  v2 = v0[62];
  v3 = v0[50];
  v4 = *(v0[63] + 56);
  v0[87] = v4;
  v4(v1, 1, 1, v2);
  v5 = (v3 + OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_coordinate);
  if ((*(v3 + OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_coordinate + 16) & 1) == 0)
  {
    v7 = *v5;
    v6 = v5[1];
    if (sub_10027170C(*v5, v6))
    {
      if (qword_101906720 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100021540(v8, qword_101960000);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Using provided coordinate to resolve find my waypoint", v11, 2u);
      }

      v12 = v0[72];
      v13 = v0[71];
      v14 = v0[62];
      v15 = v0[63];

      sub_10027169C(v12, v13);
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        v16 = v0[61];
        v17 = v0[56];
        v18 = v0[57];
        sub_100024F64(v0[71], &qword_1019162C0);
        Date.init()();
        Date.timeIntervalSinceReferenceDate.getter();
        v20 = v19;
        (*(v18 + 8))(v16, v17);
      }

      else
      {
        v47 = v0[67];
        v48 = v0[62];
        v49 = v0[63];
        v50 = v0[61];
        v51 = v0[56];
        v52 = v0[57];
        (*(v49 + 32))(v47, v0[71], v48);
        Location.timestamp.getter();
        Date.init(timeIntervalSince1970:)();
        Date.timeIntervalSinceReferenceDate.getter();
        v20 = v53;
        (*(v52 + 8))(v50, v51);
        (*(v49 + 8))(v47, v48);
      }

      v54 = Handle.identifier.getter();
      v56 = v55;
      result = [objc_allocWithZone(GEOLocation) initWithGEOCoordinate:{v7, v6}];
      if (result)
      {
        v57 = result;
        v58 = v0[53];
        v59 = v0[54];
        v60 = v0[52];
        [result setTimestamp:v20];
        v61 = swift_allocObject();
        v61[2] = v54;
        v61[3] = v56;
        v61[4] = v60;
        v61[5] = v58;
        v0[42] = sub_10027175C;
        v0[43] = v61;
        v0[38] = _NSConcreteStackBlock;
        v0[39] = 1107296256;
        v0[40] = sub_100113C68;
        v0[41] = &unk_10160D8D0;
        v62 = _Block_copy(v0 + 38);

        v63 = v57;

        if (v59)
        {
          v64 = v0[55];
          v0[48] = v0[54];
          v0[49] = v64;
          v0[44] = _NSConcreteStackBlock;
          v0[45] = 1107296256;
          v0[46] = sub_1002ABAC8;
          v0[47] = &unk_10160D8F8;
          v65 = _Block_copy(v0 + 44);
        }

        else
        {
          v65 = 0;
        }

        v89 = v0[72];
        v90 = v0[50];
        v91 = [objc_opt_self() composedWaypointForLocation:v63 mapItem:0 traits:v0[51] completionHandler:v62 networkActivityHandler:v65];
        _Block_release(v65);
        _Block_release(v62);

LABEL_32:
        sub_100024F64(v89, &qword_1019162C0);
        *(v90 + OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_ticket) = v91;
        swift_unknownObjectRelease();

        v94 = v0[1];

        return v94();
      }

      __break(1u);
      goto LABEL_36;
    }
  }

  v21 = v0[70];
  v22 = v0[62];
  v23 = v0[63];
  sub_10027169C(v0[72], v21);
  v24 = *(v23 + 48);
  v0[88] = v24;
  v0[89] = (v23 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v24(v21, 1, v22) == 1)
  {
    sub_100024F64(v0[70], &qword_1019162C0);
  }

  else
  {
    (*(v0[63] + 32))(v0[66], v0[70], v0[62]);
    Location.latitude.getter();
    v26 = v25;
    Location.longitude.getter();
    if (sub_10027170C(v26, v27))
    {
      v28 = v0[61];
      v29 = v0[56];
      v30 = v0[57];
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v32 = v31;
      v33 = *(v30 + 8);
      v33(v28, v29);
      Location.timestamp.getter();
      v35 = v32 - v34;
      GEOConfigGetDouble();
      if (v35 <= v36)
      {
        if (qword_101906720 != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        sub_100021540(v66, qword_101960000);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&_mh_execute_header, v67, v68, "Using fresh cached handle location to resolve find my waypoint", v69, 2u);
        }

        v70 = v0[60];
        v71 = v0[56];

        Location.latitude.getter();
        v73 = v72;
        Location.longitude.getter();
        v75 = v74;
        Location.timestamp.getter();
        Date.init(timeIntervalSince1970:)();
        Date.timeIntervalSinceReferenceDate.getter();
        v77 = v76;
        v33(v70, v71);
        v78 = Handle.identifier.getter();
        v80 = v79;
        result = [objc_allocWithZone(GEOLocation) initWithGEOCoordinate:{v73, v75}];
        if (result)
        {
          v81 = result;
          v82 = v0[53];
          v83 = v0[54];
          v84 = v0[52];
          [result setTimestamp:v77];
          v85 = swift_allocObject();
          v85[2] = v78;
          v85[3] = v80;
          v85[4] = v84;
          v85[5] = v82;
          v0[30] = sub_10027175C;
          v0[31] = v85;
          v0[26] = _NSConcreteStackBlock;
          v0[27] = 1107296256;
          v0[28] = sub_100113C68;
          v0[29] = &unk_10160D858;
          v96 = _Block_copy(v0 + 26);

          v86 = v81;

          if (v83)
          {
            v87 = v0[55];
            v0[36] = v0[54];
            v0[37] = v87;
            v0[32] = _NSConcreteStackBlock;
            v0[33] = 1107296256;
            v0[34] = sub_1002ABAC8;
            v0[35] = &unk_10160D880;
            v88 = _Block_copy(v0 + 32);
          }

          else
          {
            v88 = 0;
          }

          v89 = v0[72];
          v95 = v0[66];
          v93 = v0[62];
          v92 = v0[63];
          v90 = v0[50];
          v91 = [objc_opt_self() composedWaypointForLocation:v86 mapItem:0 traits:v0[51] completionHandler:v96 networkActivityHandler:v88];

          _Block_release(v88);
          _Block_release(v96);

          (*(v92 + 8))(v95, v93);
          goto LABEL_32;
        }

LABEL_36:
        __break(1u);
        return result;
      }
    }

    (*(v0[63] + 8))(v0[66], v0[62]);
  }

  v37 = v0[83];
  v38 = v0[80];
  v39 = v0[78];
  v40 = v0[50];
  v41 = (*(v0 + 744) + 32) & ~*(v0 + 744);
  GEOConfigGetDouble();
  v43 = v42;
  v44 = swift_allocObject();
  v0[90] = v44;
  *(v44 + 16) = xmmword_1011E1D30;
  v37(v44 + v41, v40 + v39, v38);
  v45 = swift_task_alloc();
  v0[91] = v45;
  *v45 = v0;
  v45[1] = sub_10026FBA4;

  return Session._maps_latestLocations(for:includeAddress:timeout:)(v44, 0, v43);
}

uint64_t sub_10026FBA4(uint64_t a1)
{
  *(*v2 + 736) = a1;

  if (v1)
  {

    v3 = sub_100270754;
  }

  else
  {

    v3 = sub_10026FCF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

id sub_10026FCF4()
{
  if (*(v0[92] + 16) && (v1 = sub_10029741C(v0[50] + v0[78]), (v2 & 1) != 0))
  {
    (*(v0[63] + 16))(v0[69], *(v0[92] + 56) + *(v0[63] + 72) * v1, v0[62]);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[69];
  v7 = v0[62];

  v5(v6, v3, 1, v7);
  if (v4(v6, 1, v7) == 1)
  {
    sub_100024F64(v0[69], &qword_1019162C0);
  }

  else
  {
    (*(v0[63] + 32))(v0[65], v0[69], v0[62]);
    Location.latitude.getter();
    v9 = v8;
    Location.longitude.getter();
    if (sub_10027170C(v9, v10))
    {
      if (qword_101906720 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100021540(v11, qword_101960000);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Using live handle location to resolve find my waypoint", v14, 2u);
      }

      v15 = v0[59];
      v16 = v0[56];
      v17 = v0[57];

      Location.latitude.getter();
      v19 = v18;
      Location.longitude.getter();
      v21 = v20;
      Location.timestamp.getter();
      Date.init(timeIntervalSince1970:)();
      Date.timeIntervalSinceReferenceDate.getter();
      v23 = v22;
      (*(v17 + 8))(v15, v16);
      v24 = Handle.identifier.getter();
      v26 = v25;
      result = [objc_allocWithZone(GEOLocation) initWithGEOCoordinate:{v19, v21}];
      if (result)
      {
        v28 = result;
        v29 = v0[53];
        v30 = v0[54];
        v31 = v0[52];
        [result setTimestamp:v23];
        v32 = swift_allocObject();
        v32[2] = v24;
        v32[3] = v26;
        v32[4] = v31;
        v32[5] = v29;
        v0[18] = sub_10027175C;
        v0[19] = v32;
        v0[14] = _NSConcreteStackBlock;
        v0[15] = 1107296256;
        v0[16] = sub_100113C68;
        v0[17] = &unk_10160D7E0;
        v33 = _Block_copy(v0 + 14);

        v34 = v28;

        if (v30)
        {
          v35 = v0[55];
          v0[24] = v0[54];
          v0[25] = v35;
          v0[20] = _NSConcreteStackBlock;
          v0[21] = 1107296256;
          v0[22] = sub_1002ABAC8;
          v0[23] = &unk_10160D808;
          v36 = _Block_copy(v0 + 20);
        }

        else
        {
          v36 = 0;
        }

        v83 = v0[72];
        v76 = v0[65];
        v78 = v0[62];
        v77 = v0[63];
        v79 = v0[50];
        v80 = [objc_opt_self() composedWaypointForLocation:v34 mapItem:0 traits:v0[51] completionHandler:v33 networkActivityHandler:v36];
        goto LABEL_36;
      }

      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    (*(v0[63] + 8))(v0[65], v0[62]);
  }

  v37 = v0[88];
  v38 = v0[68];
  v39 = v0[62];
  sub_10027169C(v0[72], v38);
  if (v37(v38, 1, v39) == 1)
  {
    sub_100024F64(v0[68], &qword_1019162C0);
LABEL_27:
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100021540(v65, qword_101960000);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Did not have a provided coordinate nor was able to fetch handle location", v68, 2u);
    }

    v69 = v0[72];
    v70 = v0[52];

    v71 = objc_allocWithZone(NSError);

    v72 = String._bridgeToObjectiveC()();

    v73 = [v71 initWithDomain:v72 code:0 userInfo:0];

    v74 = _convertErrorToNSError(_:)();
    v75 = [objc_opt_self() resultWithError:v74];

    v70(v75);

    sub_100024F64(v69, &qword_1019162C0);
    goto LABEL_37;
  }

  (*(v0[63] + 32))(v0[64], v0[68], v0[62]);
  Location.latitude.getter();
  v41 = v40;
  Location.longitude.getter();
  if (!sub_10027170C(v41, v42))
  {
    (*(v0[63] + 8))(v0[64], v0[62]);
    goto LABEL_27;
  }

  if (qword_101906720 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100021540(v43, qword_101960000);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Using old cached handle location to resolve find my waypoint", v46, 2u);
  }

  v48 = v0[57];
  v47 = v0[58];
  v49 = v0[56];

  Location.latitude.getter();
  v51 = v50;
  Location.longitude.getter();
  v53 = v52;
  Location.timestamp.getter();
  Date.init(timeIntervalSince1970:)();
  Date.timeIntervalSinceReferenceDate.getter();
  v55 = v54;
  (*(v48 + 8))(v47, v49);
  v56 = Handle.identifier.getter();
  v58 = v57;
  result = [objc_allocWithZone(GEOLocation) initWithGEOCoordinate:{v51, v53}];
  if (!result)
  {
    goto LABEL_41;
  }

  v59 = result;
  v60 = v0[53];
  v61 = v0[54];
  v62 = v0[52];
  [result setTimestamp:v55];
  v63 = swift_allocObject();
  v63[2] = v56;
  v63[3] = v58;
  v63[4] = v62;
  v63[5] = v60;
  v0[6] = sub_100271738;
  v0[7] = v63;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100113C68;
  v0[5] = &unk_10160D768;
  v33 = _Block_copy(v0 + 2);

  v34 = v59;

  if (v61)
  {
    v64 = v0[55];
    v0[12] = v0[54];
    v0[13] = v64;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_1002ABAC8;
    v0[11] = &unk_10160D790;
    v36 = _Block_copy(v0 + 8);
  }

  else
  {
    v36 = 0;
  }

  v83 = v0[72];
  v77 = v0[63];
  v76 = v0[64];
  v78 = v0[62];
  v79 = v0[50];
  v80 = [objc_opt_self() composedWaypointForLocation:v34 mapItem:0 traits:v0[51] completionHandler:v33 networkActivityHandler:v36];
LABEL_36:
  v81 = v80;

  _Block_release(v36);
  _Block_release(v33);

  (*(v77 + 8))(v76, v78);
  sub_100024F64(v83, &qword_1019162C0);
  *(v79 + OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_ticket) = v81;
  swift_unknownObjectRelease();
LABEL_37:

  v82 = v0[1];

  return v82();
}

id sub_100270754()
{
  (v0[87])(v0[69], 1, 1, v0[62]);
  sub_100024F64(v0[69], &qword_1019162C0);
  v1 = v0[88];
  v2 = v0[68];
  v3 = v0[62];
  sub_10027169C(v0[72], v2);
  if (v1(v2, 1, v3) == 1)
  {
    sub_100024F64(v0[68], &qword_1019162C0);
LABEL_12:
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100021540(v33, qword_101960000);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Did not have a provided coordinate nor was able to fetch handle location", v36, 2u);
    }

    v37 = v0[72];
    v38 = v0[52];

    v39 = objc_allocWithZone(NSError);

    v40 = String._bridgeToObjectiveC()();

    v41 = [v39 initWithDomain:v40 code:0 userInfo:0];

    v42 = _convertErrorToNSError(_:)();
    v43 = [objc_opt_self() resultWithError:v42];

    v38(v43);

    sub_100024F64(v37, &qword_1019162C0);
    goto LABEL_19;
  }

  (*(v0[63] + 32))(v0[64], v0[68], v0[62]);
  Location.latitude.getter();
  v5 = v4;
  Location.longitude.getter();
  if (!sub_10027170C(v5, v6))
  {
    (*(v0[63] + 8))(v0[64], v0[62]);
    goto LABEL_12;
  }

  if (qword_101906720 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100021540(v7, qword_101960000);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Using old cached handle location to resolve find my waypoint", v10, 2u);
  }

  v12 = v0[57];
  v11 = v0[58];
  v13 = v0[56];

  Location.latitude.getter();
  v15 = v14;
  Location.longitude.getter();
  v17 = v16;
  Location.timestamp.getter();
  Date.init(timeIntervalSince1970:)();
  Date.timeIntervalSinceReferenceDate.getter();
  v19 = v18;
  (*(v12 + 8))(v11, v13);
  v20 = Handle.identifier.getter();
  v22 = v21;
  result = [objc_allocWithZone(GEOLocation) initWithGEOCoordinate:{v15, v17}];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = v0[53];
  v26 = v0[54];
  v27 = v0[52];
  [result setTimestamp:v19];
  v28 = swift_allocObject();
  v28[2] = v20;
  v28[3] = v22;
  v28[4] = v27;
  v28[5] = v25;
  v0[6] = sub_100271738;
  v0[7] = v28;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100113C68;
  v0[5] = &unk_10160D768;
  v29 = _Block_copy(v0 + 2);

  v30 = v24;

  if (v26)
  {
    v31 = v0[55];
    v0[12] = v0[54];
    v0[13] = v31;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_1002ABAC8;
    v0[11] = &unk_10160D790;
    v32 = _Block_copy(v0 + 8);
  }

  else
  {
    v32 = 0;
  }

  v50 = v0[72];
  v44 = v0[63];
  v45 = v0[64];
  v46 = v0[62];
  v47 = v0[50];
  v48 = [objc_opt_self() composedWaypointForLocation:v30 mapItem:0 traits:v0[51] completionHandler:v29 networkActivityHandler:v32];

  _Block_release(v32);
  _Block_release(v29);

  (*(v44 + 8))(v45, v46);
  sub_100024F64(v50, &qword_1019162C0);
  *(v47 + OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_ticket) = v48;
  swift_unknownObjectRelease();
LABEL_19:

  v49 = v0[1];

  return v49();
}

void sub_100270EA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (a1)
  {
    v6 = qword_101906720;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100021540(v8, qword_101960000);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Waypoint resolution succeeded", v11, 2u);
    }

    v12 = String._bridgeToObjectiveC()();
    [v7 setFindMyHandleID:v12];

    v13 = [v7 mapItemStorage];
    if (v13)
    {

      v14 = [v7 findMyHandle];
      if (v14)
      {
        v15 = v14;
        sub_10032785C();

        v16 = String._bridgeToObjectiveC()();

        [v7 setUserValuesName:v16];
      }

      v17 = [v7 findMyHandle];
      if (v17)
      {
        v18 = v17;
        sub_1003277E8();
        v20 = v19;

        if (v20)
        {
          v21 = String._bridgeToObjectiveC()();

          [v7 setAddressBookContactName:v21];
        }
      }

      v22 = [v7 findMyHandle];
      if (v22)
      {
        v23 = v22;
        sub_100327B20();
        v25 = v24;

        if (v25)
        {
          v26 = String._bridgeToObjectiveC()();

          [v7 setAddressBookContactSpokenName:v26];
        }
      }
    }

    v27 = [objc_opt_self() sharedLocationStyleAttributes];
    [v7 setStyleAttributes:v27];

    [v7 recomputeGeoWaypointTyped];
    v28 = [objc_opt_self() resultWithValue:v7];
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100021540(v29, qword_101960000);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Waypoint resolution failed: %@", v32, 0xCu);
      sub_100024F64(v33, &qword_1019144F0);
    }

    v35 = _convertErrorToNSError(_:)();
    v28 = [objc_opt_self() resultWithError:v35];
  }

  else
  {
    v36 = objc_allocWithZone(NSError);

    v37 = String._bridgeToObjectiveC()();

    v38 = [v36 initWithDomain:v37 code:1 userInfo:0];

    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100021540(v39, qword_101960000);
    v40 = v38;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "Waypoint resolution failed: %@", v43, 0xCu);
      sub_100024F64(v44, &qword_1019144F0);
    }

    v46 = v40;
    v47 = _convertErrorToNSError(_:)();
    v28 = [objc_opt_self() resultWithError:v47];
  }

  v48 = v28;
  a5();
}

uint64_t type metadata accessor for FindMyHandleMapServiceTicket()
{
  result = qword_1019162B0;
  if (!qword_1019162B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002715F0()
{
  result = type metadata accessor for Handle();
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

uint64_t sub_10027169C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019162C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100271778(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_100271830()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UGCSubmissionLookupManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100271898(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  if (qword_101906620 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_1019162C8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetching submission with iCloudID", v9, 2u);
  }

  v20 = 0;
  v10 = [objc_opt_self() buildICloudUserCredentialsWithError:&v20];
  v11 = v20;
  if (v10)
  {
    v12 = v10;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = v13;
    v14[5] = a1;
    v15 = v11;
    v16 = v12;
    sub_1000CD9D4(a2);

    sub_100271C28(a1, v16, sub_100273BE4, v14);
  }

  else
  {
    v17 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (a2)
    {
      sub_1002733E4();
      v18 = swift_allocError();
      strcpy(v19, "Empty UserInfo");
      v19[15] = -18;
      a2(0, v18);
    }
  }
}

void sub_100271B34(id a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a3)
    {
      (a3)(0);
    }
  }

  else
  {
    if (a1)
    {
      v10 = [a1 previousSubmission];
      v11 = [v10 hasScorecard];

      if (v11)
      {
        [a1 setHasRatingsWithICloud:1];
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_1002734A0(a6, a1, 0, a3, a4);
    }
  }
}

void sub_100271C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_allocWithZone(UGCSubmissionLookupTicket) init];
  v10 = *(v4 + OBJC_IVAR____TtC4Maps26UGCSubmissionLookupManager_ticket);
  *(v4 + OBJC_IVAR____TtC4Maps26UGCSubmissionLookupManager_ticket) = v9;
  v11 = v9;

  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    v14[4] = sub_1001162C0;
    v14[5] = v12;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_100113C68;
    v14[3] = &unk_10160DA38;
    v13 = _Block_copy(v14);
    sub_1000CD9D4(a3);

    [v11 fetchSubmissionForMuid:a1 userInfo:a2 completion:v13];
    _Block_release(v13);
  }
}

void sub_100271E24(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  if (qword_101906620 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100021540(v7, qword_1019162C8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Fetching submission with both iCloudID and communityID", v10, 2u);
  }

  v11 = swift_allocObject();
  v12 = objc_opt_self();
  v23[0] = 0;
  v13 = [v12 buildICloudUserCredentialsWithError:v23];
  v14 = v23[0];
  if (v13)
  {
    *(v11 + 16) = v13;
    sub_1002732F0();
    v15 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = v17;
    v18[5] = a1;
    v18[6] = v11;
    v23[4] = sub_100273438;
    v23[5] = v18;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_100271778;
    v23[3] = &unk_10160D9C0;
    v19 = _Block_copy(v23);
    sub_1000CD9D4(a3);

    [v12 fetchCommunityIDWithMUID:a1 identifierHistory:isa shouldIncreaseCount:0 CompletionHandler:v19];
    _Block_release(v19);
  }

  else
  {
    v20 = v23[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (a3)
    {
      sub_1002733E4();
      v21 = swift_allocError();
      *v22 = 0xD00000000000001ALL;
      v22[1] = 0x8000000101228BD0;
      a3(0, v21);
    }

    swift_deallocUninitializedObject();
  }
}

void sub_100272164(void *a1, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = swift_allocObject();
      v14[2] = a4;
      v14[3] = a5;
      v14[4] = a6;
      v14[5] = a2;
      v14[6] = a3;
      v15 = a1;

      sub_1000CD9D4(a2);
      sub_100271C28(a5, v15, sub_100273448, v14);
    }
  }

  else if (a2)
  {
    sub_1002733E4();
    v16 = swift_allocError();
    *v17 = 0xD000000000000017;
    v17[1] = 0x8000000101228BF0;
    a2(0, v16);
  }
}

uint64_t sub_1002722E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    v16 = *(a5 + 16);
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a1;
    v17[4] = a2;
    v17[5] = a6;
    v17[6] = a7;
    v17[7] = a4;
    v18 = v16;

    v19 = a1;
    swift_errorRetain();
    sub_1000CD9D4(a6);
    sub_100271C28(a4, v18, sub_100273460, v17);
  }

  return result;
}

void sub_100272404(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = swift_allocObject();
    v18[2] = a6;
    v18[3] = a7;
    v18[4] = a1;
    v18[5] = a3;
    v18[6] = a8;
    if (a2)
    {
      if (a5)
      {
LABEL_4:
        if (!a6)
        {
          v49 = a1;
          swift_retain_n();
          v50 = v49;
          sub_1000CD9D4(0);
          v51 = v50;

          sub_1000CD9D4(0);
          v52 = v51;

          v53 = 0;
LABEL_44:

          sub_1000588AC(v53);

          sub_1000588AC(a6);

          sub_1000588AC(a6);

          v25 = a1;
          goto LABEL_45;
        }

        sub_1000CD9D4(a6);
        v19 = a1;

        sub_1000CD9D4(a6);
        v20 = v19;

        sub_1000CD9D4(a6);
        v21 = v20;

        sub_1000CD9D4(a6);
        v22 = v21;

        a6(0, a5);
        goto LABEL_42;
      }

      if (a4)
      {
        v67 = a8;
        v69 = v17;
        sub_1000CD9D4(a6);
        v36 = a1;

        sub_1000CD9D4(a6);
        v25 = v36;

        v37 = a4;
        v38 = [v37 parentSubmissionIdentifier];
        if (!v38)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = String._bridgeToObjectiveC()();
        }

        v65 = v37;
        v39 = [v37 previousSubmission];
        v40 = objc_allocWithZone(UGCSubmissionLookupResult);
        v41 = String._bridgeToObjectiveC()();
        v42 = [v40 initWithRatingsSubmissionIdentifier:v38 photosSubmissionIdentifier:v41 previousSubmission:v39];

        v43 = v42;
        v44 = v42;
        if (a1)
        {
          v45 = [v25 previousSubmission];
          v46 = [v45 hasScorecard];

          if (v46)
          {
            [v44 setHasRatingsWithICloud:1];
          }
        }

        swift_beginAccess();
        v47 = swift_unknownObjectWeakLoadStrong();
        if (v47)
        {
          v48 = v47;
          sub_1002734A0(v67, v43, 1, a6, a7);
        }

        else
        {

          v48 = v69;
        }

        sub_1000588AC(a6);
        goto LABEL_38;
      }

      sub_1000CD9D4(a6);
      v59 = a1;

      sub_1000CD9D4(a6);
      v60 = v59;

      sub_1000CD9D4(a6);
      v61 = v60;

      sub_1000CD9D4(a6);
      v25 = v61;

      if (!a1)
      {
LABEL_40:
        swift_beginAccess();
        v63 = swift_unknownObjectWeakLoadStrong();
        if (v63)
        {
          v64 = v63;
          sub_1002734A0(a8, 0, 1, a6, a7);

          v17 = v64;
LABEL_43:
          v53 = a6;
          goto LABEL_44;
        }

LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      if (a5)
      {
        if (a1)
        {
          v66 = a8;
          v68 = v17;

          v23 = a1;
          sub_1000CD9D4(a6);
          sub_1000CD9D4(a6);
          v24 = v23;

          sub_1000CD9D4(a6);
          v25 = v24;

          v26 = [v25 parentSubmissionIdentifier];
          if (!v26)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = String._bridgeToObjectiveC()();
          }

          v27 = [v25 parentSubmissionIdentifier];
          if (!v27)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = String._bridgeToObjectiveC()();
          }

          v28 = [v25 previousSubmission];
          v29 = [objc_allocWithZone(UGCSubmissionLookupResult) initWithRatingsSubmissionIdentifier:v26 photosSubmissionIdentifier:v27 previousSubmission:v28];

          v30 = v29;
          v31 = [v25 previousSubmission];
          v32 = [v31 hasScorecard];

          if (v32)
          {
            [v30 setHasRatingsWithICloud:1];
          }

          swift_beginAccess();
          v33 = swift_unknownObjectWeakLoadStrong();
          v34 = v68;
          if (v33)
          {
            v35 = v33;
            sub_1002734A0(v66, v29, 1, a6, a7);

            v34 = v35;
          }

          else
          {
          }

          sub_1000588AC(a6);

          sub_1000588AC(a6);

          goto LABEL_45;
        }

        goto LABEL_4;
      }

      if (!a1)
      {
        sub_1000CD9D4(a6);

        sub_1000CD9D4(a6);

        sub_1000CD9D4(a6);

        sub_1000CD9D4(a6);

        goto LABEL_40;
      }

      v54 = a8;
      v55 = v17;
      sub_1000CD9D4(a6);
      v56 = a1;

      sub_1000CD9D4(a6);
      v57 = v56;

      sub_1000CD9D4(a6);
      v58 = v57;

      sub_1000CD9D4(a6);
      v25 = v58;

      if ([v25 status] == 1 && a4 && objc_msgSend(a4, "status") == 1)
      {
        sub_1000588AC(a6);

        sub_100273920(a4, v25, sub_100273470);

        sub_1000588AC(a6);

        sub_1000588AC(a6);
LABEL_38:

LABEL_45:

        return;
      }

      v17 = v55;
      a8 = v54;
    }

    v62 = [v25 previousSubmission];
    [v62 hasScorecard];

    goto LABEL_40;
  }
}

void sub_100272C34(void *a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, id a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (a3)
    {
      (a3)(0);
    }
  }

  else
  {
    if (a5)
    {
      v11 = [a5 previousSubmission];
      v12 = [v11 hasScorecard];

      if (v12 && a1 != 0)
      {
        [a1 setHasRatingsWithICloud:1];
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      sub_1002734A0(a7, a1, 1, a3, a4);
    }
  }
}

void sub_100272E08(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if ((a1 & 1) == 0 || !a2)
  {
    goto LABEL_5;
  }

  v10 = a2;
  v11 = [v10 numberOfPhotosAdded];
  if (v11 == [a3 numberOfPhotosAdded])
  {

LABEL_5:
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = a6;
    v30 = sub_100273B94;
    v31 = v13;
    v26 = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1002B0058;
    v29 = &unk_10160DB28;
    v14 = _Block_copy(&v26);
    sub_1000CD9D4(a4);
    v15 = a6;

    [v12 updateLocalCacheWithReviewedPlace:a3 completion:v14];
    _Block_release(v14);
    return;
  }

  if (qword_101906620 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100021540(v16, qword_1019162C8);
  v17 = v10;
  v18 = a3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218240;
    *(v21 + 4) = [v17 numberOfPhotosAdded];

    *(v21 + 12) = 2048;
    *(v21 + 14) = [v18 numberOfPhotosAdded];

    _os_log_impl(&_mh_execute_header, v19, v20, "Cached reviewedPlace is inconsistent, update it. old: %lu, new: %lu", v21, 0x16u);
  }

  else
  {

    v19 = v18;
  }

  [v17 setNumberOfPhotosAdded:{-[NSObject numberOfPhotosAdded](v18, "numberOfPhotosAdded")}];
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v30 = sub_100273BBC;
  v31 = v23;
  v26 = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1002B0058;
  v29 = &unk_10160DB78;
  v24 = _Block_copy(&v26);
  sub_1000CD9D4(a4);
  v25 = a6;

  [v22 addOrEditReviewedPlace:v17 completion:v24];
  _Block_release(v24);
}

void sub_100273164(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1)
  {
    if (qword_101906620 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100021540(v8, qword_1019162C8);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, a5, v11, 0xCu);
      sub_1000DCD10(v12);
    }
  }

  if (a2)
  {
    a2(a4, 0);
  }
}

unint64_t sub_1002732F0()
{
  result = qword_101919ED0;
  if (!qword_101919ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101919ED0);
  }

  return result;
}

uint64_t sub_10027333C()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_1019162C8);
  sub_100021540(v0, qword_1019162C8);
  type metadata accessor for UGCSubmissionLookupManager();
  sub_1000CE6B8(&qword_101916318);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1002733E4()
{
  result = qword_101916310;
  if (!qword_101916310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916310);
  }

  return result;
}

void sub_1002734A0(uint64_t a1, void *a2, char a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  if (a2)
  {
    v10 = objc_allocWithZone(UGCReviewedPlace);
    v11 = a2;
    v12 = [v10 initWithMUID:a1];
    v13 = [v11 previousSubmission];
    v14 = [v13 imagesCount];

    [v12 setNumberOfPhotosAdded:v14];
    v15 = [v11 previousSubmission];
    LODWORD(v14) = [v15 hasScorecard];

    if (v14)
    {
      v16 = [v11 previousSubmission];
      v17 = [v16 scorecard];

      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = sub_100D5E058(v17);

      [v12 setRecommendState:v18];
    }

    if (qword_101906620 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100021540(v19, qword_1019162C8);
    v32 = v12;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218496;
      *(v22 + 4) = [v32 recommendState];
      *(v22 + 12) = 2048;
      *(v22 + 14) = [v32 numberOfPhotosAdded];

      *(v22 + 22) = 1024;
      *(v22 + 24) = a3 & 1;
      _os_log_impl(&_mh_execute_header, v20, v21, "Fetched submission with rating state %ld and number of photos added %lu. Allowed to overwrite cache: %{BOOL}d", v22, 0x1Cu);

      if ((a3 & 1) == 0)
      {
LABEL_9:
        if (a4)
        {
          v23 = v11;
          a4(a2, 0);
        }

        else
        {
        }

        return;
      }
    }

    else
    {

      if ((a3 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v26 = objc_opt_self();
    sub_1002732F0();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v28 = swift_allocObject();
    v28[2] = v32;
    v28[3] = a4;
    v28[4] = a5;
    v28[5] = v11;
    aBlock[4] = sub_100273B88;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100423014;
    aBlock[3] = &unk_10160DAD8;
    v29 = _Block_copy(aBlock);
    v30 = v11;
    v31 = v32;
    sub_1000CD9D4(a4);

    [v26 fetchReviewedPlaceForMUID:a1 withIdentifierHistory:isa completion:v29];
    _Block_release(v29);

    return;
  }

  if (a4)
  {
    sub_1002733E4();
    v24 = swift_allocError();
    strcpy(v25, "Empty Result");
    v25[13] = 0;
    *(v25 + 7) = -5120;
    a4(0, v24);
  }
}

void sub_100273920(void *a1, void *a2, void (*a3)(id, void))
{
  v6 = [a1 previousSubmission];
  v7 = [v6 hasScorecard];

  if ((v7 & 1) == 0)
  {
    v8 = [a2 previousSubmission];
    v9 = [v8 hasScorecard];

    if (v9)
    {
      v10 = [a1 previousSubmission];
      v11 = [a2 previousSubmission];
      v12 = [v11 scorecard];

      [v10 setScorecard:v12];
    }
  }

  v13 = [a1 previousSubmission];
  v14 = [a2 previousSubmission];
  v15 = [v14 images];

  [v13 setImages:v15];
  v16 = [a1 parentSubmissionIdentifier];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  v17 = [a2 parentSubmissionIdentifier];
  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  v18 = [a1 previousSubmission];
  v20 = [objc_allocWithZone(UGCSubmissionLookupResult) initWithRatingsSubmissionIdentifier:v16 photosSubmissionIdentifier:v17 previousSubmission:v18];

  if (a3)
  {
    v19 = v20;
    a3(v20, 0);
  }
}

uint64_t sub_100273C24()
{
  v1 = v0 + *(type metadata accessor for MyRecentsDataProvider.Recent(0) + 24);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 <= 1)
  {
    if (v3)
    {
      v12 = [swift_unknownObjectRetain() endWaypoint];
      v4 = [v12 name];

      if (v4)
      {
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v2;
        v7 = 1;
        goto LABEL_15;
      }

      v13 = v2;
      v14 = 1;
    }

    else
    {
      v8 = [swift_unknownObjectRetain() geoMapItem];
      if (v8)
      {
        v4 = [v8 name];
        swift_unknownObjectRelease();
        if (v4)
        {
          v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v6 = v2;
          v7 = 0;
          goto LABEL_15;
        }
      }

      v13 = v2;
      v14 = 0;
    }

LABEL_20:
    sub_1000D87F0(v13, v14);
    return 0;
  }

  if (v3 == 2)
  {
    v9 = [swift_unknownObjectRetain() locationDisplayString];
    if (v9)
    {
      v4 = v9;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v2;
      v7 = 2;
      goto LABEL_15;
    }

    v13 = v2;
    v14 = 2;
    goto LABEL_20;
  }

  if (v3 == 3)
  {
    v4 = [objc_msgSend(swift_unknownObjectRetain() "lineItem")];
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v2;
      v7 = 3;
LABEL_15:
      sub_1000D87F0(v6, v7);

      return v5;
    }

    v13 = v2;
    v14 = 3;
    goto LABEL_20;
  }

  v10 = [v2 placeCollection];
  v11 = [v10 collectionTitle];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000D87F0(v2, 4u);
  return v5;
}

id sub_100273E78()
{
  v1 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  result = 0;
  v3 = v0 + *(v1 + 24);
  if (*(v3 + 8) - 2 >= 3)
  {
    v4 = *v3;
    if (*(v3 + 8))
    {
      v7 = [swift_unknownObjectRetain() endWaypoint];
      v8 = [v7 styleAttributes];

      sub_1000D87F0(v4, 1u);
      return v8;
    }

    else
    {
      v5 = [swift_unknownObjectRetain() geoMapItem];
      if (v5)
      {
        v6 = [v5 _styleAttributes];
        sub_1000D87F0(v4, 0);
        swift_unknownObjectRelease();
        return v6;
      }

      else
      {
        sub_1000D87F0(v4, 0);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100273F80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000CE6B8(&qword_101916458);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10[-v6];
  [*(v1 + OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataProvider) setActive:{1, v5}];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = v8;
  v12 = ObjectType;
  sub_1000CE6B8(&qword_101916460);
  (*(v4 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t sub_100274104(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101916448);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - v4;
  v6 = sub_1000CE6B8(&qword_101916450);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_1000CE6B8(&unk_101911600);
    v12 = *(v11 - 8);
    (*(v12 + 16))(v8, a1, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    v13 = OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_continuation;
    swift_beginAccess();
    sub_1002761D8(v8, &v10[v13], &qword_101916450);
    swift_endAccess();
    v14 = [*&v10[OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataProvider] recents];
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *&v10[OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataFilter];
    v17 = v10[OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_includeRecentSearches];
    v18 = v16;
    v19 = sub_1002753EC(v15, v16, v17);

    v20[0] = v19;
    AsyncStream.Continuation.yield(_:)();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1002743C4()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_101916450);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3];
  v5 = sub_1000CE6B8(&unk_101911600);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v12[-v8];
  [*(v1 + OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataProvider) setActive:{0, v7}];
  v10 = OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_continuation;
  swift_beginAccess();
  if (!(*(v6 + 48))(v1 + v10, 1, v5))
  {
    (*(v6 + 16))(v9, v1 + v10, v5);
    AsyncStream.Continuation.finish()();
    (*(v6 + 8))(v9, v5);
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  swift_beginAccess();
  sub_1002761D8(v4, v1 + v10, &qword_101916450);
  return swift_endAccess();
}

uint64_t sub_100274620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000CE6B8(&unk_101916430);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E1D30;
  sub_10004E374(a1, v4 + 32);
  v5 = sub_1002753EC(v4, 0, 0);

  if (v5[2])
  {
    v6 = type metadata accessor for MyRecentsDataProvider.Recent(0);
    v13 = *(v6 - 8);
    sub_10017F024(v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), a2);

    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {

    v11 = type metadata accessor for MyRecentsDataProvider.Recent(0);
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_100274778@<X0>(void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_1000CE6B8(&qword_101923DE0);
  __chkstk_darwin(v5);
  v31 = v28 - v6;
  v7 = *a1;
  v8 = swift_allocBox();
  v10 = v9;
  v11 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v12 = *(v11 - 8);
  v29 = *(v12 + 56);
  v30 = v11;
  v28[1] = v12 + 56;
  v29(v10, 1, 1);
  v13 = [v7 mspHistoryEntry];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = v8;
  *(v14 + 32) = v7;
  v37 = sub_100275800;
  v38 = v14;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100340A6C;
  v36 = &unk_10160DD38;
  v15 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  *(v16 + 24) = v7;
  v37 = sub_10027580C;
  v38 = v16;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100340A6C;
  v36 = &unk_10160DD88;
  v17 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  *(v18 + 24) = v7;
  v37 = sub_10027582C;
  v38 = v18;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100340A6C;
  v36 = &unk_10160DDD8;
  v19 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v7;
  v37 = sub_10027588C;
  v38 = v20;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100235E24;
  v36 = &unk_10160DE28;
  v21 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  [v13 ifSearch:v15 ifRoute:v17 ifPlaceDisplay:v19 ifTransitLineItem:v21];
  _Block_release(v21);
  _Block_release(v19);
  _Block_release(v17);
  _Block_release(v15);
  swift_unknownObjectRelease();
  v22 = [v7 mspHistoryEntry];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = swift_unknownObjectRetain();
    v26 = v31;
    sub_100274D28(v25, v24, 4, v31);
    (v29)(v26, 0, 1, v30);
    swift_beginAccess();
    sub_1002761D8(v26, v10, &qword_101923DE0);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  sub_1002758AC(v10, v32);
}

uint64_t sub_100274BF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000CE6B8(&qword_101923DE0);
  result = __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  if (a2)
  {
    v11 = swift_projectBox();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_100274D28(a4, a1, 2, v10);
    v12 = type metadata accessor for MyRecentsDataProvider.Recent(0);
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
    swift_beginAccess();
    return sub_1002761D8(v10, v11, &qword_101923DE0);
  }

  return result;
}

uint64_t sub_100274D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  v15 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  *(a4 + *(v15 + 20)) = a1;
  v16 = a4 + *(v15 + 24);
  *v16 = a2;
  *(v16 + 8) = a3;
  v17 = [objc_msgSend(swift_unknownObjectRetain() "mspHistoryEntry")];
  swift_unknownObjectRelease();
  if (v17)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    v18 = *(v9 + 32);
    v18(v14, v12, v8);
    return (v18)(a4, v14, v8);
  }

  else
  {
    swift_unknownObjectRelease();

    return UUID.init()();
  }
}

uint64_t sub_100274EF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1000CE6B8(&qword_101923DE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  v10 = swift_projectBox();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_100274D28(a3, a1, a4, v9);
  v11 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  swift_beginAccess();
  return sub_1002761D8(v9, v10, &qword_101923DE0);
}

void sub_1002750EC()
{
  sub_1002751A0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002751A0()
{
  if (!qword_101916378)
  {
    sub_1000D6664(&unk_101911600);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101916378);
    }
  }
}

unint64_t sub_10027524C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_1002752D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1002752D8()
{
  result = qword_1019163F0;
  if (!qword_1019163F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1019163F0);
  }

  return result;
}

uint64_t sub_100275348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100275390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void *sub_1002753EC(uint64_t a1, void *a2, int a3)
{
  v6 = sub_1000CE6B8(&qword_101923DE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27[-v7];
  v34 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v30 = *(v34 - 8);
  v9 = __chkstk_darwin(v34);
  v33 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v29 = &v27[-v11];
  if (a2)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    v13 = Array._bridgeToObjectiveC()().super.isa;
    v14 = [a2 filteredRecents:isa excludingDuplicatesOfEntries:v13];

    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v15 = sub_1002B0160(a1);

  if (!v15)
  {
    return &_swiftEmptyArrayStorage;
  }

  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = 0;
    v32 = v15 & 0xC000000000000001;
    v19 = (v30 + 48);
    v20 = &_swiftEmptyArrayStorage;
    v28 = a3;
    v31 = v16;
    while (v32)
    {
      v22 = v15;
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      v35 = v15;
      sub_100274778(&v35, a3 & 1, v8);
      swift_unknownObjectRelease();
      if ((*v19)(v8, 1, v34) == 1)
      {
        sub_100024F64(v8, &qword_101923DE0);
      }

      else
      {
        v23 = v29;
        sub_10027579C(v8, v29);
        sub_10027579C(v23, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100355F8C(0, v20[2] + 1, 1, v20);
        }

        v25 = v20[2];
        v24 = v20[3];
        if (v25 >= v24 >> 1)
        {
          v20 = sub_100355F8C(v24 > 1, v25 + 1, 1, v20);
        }

        v20[2] = v25 + 1;
        sub_10027579C(v33, v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25);
        a3 = v28;
      }

      ++v18;
      v21 = v16 == i;
      v16 = v31;
      v15 = v22;
      if (v21)
      {
        goto LABEL_27;
      }
    }

    if (v18 >= *(v16 + 16))
    {
      goto LABEL_24;
    }

    v22 = v15;
    v15 = *(v15 + 8 * v18 + 32);
    swift_unknownObjectRetain();
    v16 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_13;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v20 = &_swiftEmptyArrayStorage;
LABEL_27:

  return v20;
}

uint64_t sub_10027579C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027584C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002758AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101923DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027591C(uint64_t a1)
{
  v1[18] = a1;
  v2 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002759DC, 0, 0);
}

uint64_t sub_1002759DC()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[20];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    do
    {
      v6 = v0[21];
      sub_10017F024(v4, v6);
      swift_unknownObjectRetain();
      sub_10017F128(v6);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v7 = [objc_opt_self() sharedRecents];
  v0[22] = v7;
  sub_100193918(_swiftEmptyArrayStorage);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;

  v0[2] = v0;
  v0[3] = sub_100275C24;
  v9 = swift_continuation_init();
  v0[17] = sub_1000CE6B8(&qword_10191CEA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003956B0;
  v0[13] = &unk_10160DE78;
  v0[14] = v9;
  [v7 deleteRecents:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100275C24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_100275DA8;
  }

  else
  {
    v2 = sub_100275D34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100275D34()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100275DA8()
{
  v1 = v0[23];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100275E30()
{
  v1 = sub_1000CE6B8(&unk_101911600);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - v3;
  v5 = sub_1000CE6B8(&qword_101916440);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = [*(v0 + OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataProvider) recents];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v13 + 16))
  {
    v14 = sub_1002753EC(v13, *(v0 + OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataFilter), *(v0 + OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_includeRecentSearches));

    v15 = OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_continuation;
    swift_beginAccess();
    if ((*(v2 + 48))(v0 + v15, 1, v1))
    {

      v16 = 1;
    }

    else
    {
      (*(v2 + 16))(v4, v0 + v15, v1);
      v22 = v14;
      AsyncStream.Continuation.yield(_:)();
      (*(v2 + 8))(v4, v1);
      v16 = 0;
    }

    v20 = sub_1000CE6B8(&qword_101916448);
    (*(*(v20 - 8) + 56))(v7, v16, 1, v20);
    v11 = v7;
  }

  else
  {

    v17 = OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_continuation;
    swift_beginAccess();
    v18 = 1;
    if (!(*(v2 + 48))(v0 + v17, 1, v1))
    {
      (*(v2 + 16))(v4, v0 + v17, v1);
      v22 = _swiftEmptyArrayStorage;
      AsyncStream.Continuation.yield(_:)();
      (*(v2 + 8))(v4, v1);
      v18 = 0;
    }

    v19 = sub_1000CE6B8(&qword_101916448);
    (*(*(v19 - 8) + 56))(v11, v18, 1, v19);
  }

  return sub_100024F64(v11, &qword_101916440);
}

uint64_t sub_1002761D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000CE6B8(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void *sub_100276280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v123 = a3;
  v122 = type metadata accessor for MapsDesignAccessibilityString();
  v125 = *(v122 - 8);
  __chkstk_darwin(v122);
  v6 = (v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = type metadata accessor for CellAction.Style();
  v7 = *(v121 - 8);
  __chkstk_darwin(v121);
  v98 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v104 = v92 - v10;
  __chkstk_darwin(v11);
  v13 = v92 - v12;
  v14 = type metadata accessor for CellAction.Placement();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v97 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v103 = v92 - v18;
  __chkstk_darwin(v19);
  v21 = v92 - v20;
  __chkstk_darwin(v22);
  v24 = v92 - v23;
  v105 = v92 - v23;
  v120 = type metadata accessor for CellAction();
  v124 = *(v120 - 8);
  __chkstk_darwin(v120);
  v99 = v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v96 = v92 - v27;
  __chkstk_darwin(v28);
  v94 = v92 - v29;
  __chkstk_darwin(v30);
  v100 = v92 - v31;
  v33.n128_f64[0] = __chkstk_darwin(v32);
  v107 = v92 - v34;
  v35 = *(a1 + 88);
  if (*(a1 + 89))
  {
    v36 = 5;
  }

  else
  {
    v36 = 4;
  }

  v95 = v36;
  v37 = v15[13];
  LODWORD(v101.super.isa) = enum case for CellAction.Placement.quickAction(_:);
  v110 = v37;
  v111 = (v15 + 13);
  v37(v24, v33);
  v119 = sub_100213A28(v35);
  v117 = v38;
  v112 = sub_10021406C(v35);
  v106 = v39;
  v40 = swift_allocObject();
  v118 = a2;
  *(v40 + 16) = a2;
  *(v40 + 24) = v123;
  *(v40 + 32) = v35;
  v41 = *(v7 + 104);
  v102 = enum case for CellAction.Style.default(_:);
  v115 = v41;
  v116 = v7 + 104;
  v41(v13);
  v42 = v14;
  v43 = v21;
  v44 = v15[2];

  v45 = v105;
  v113 = v44;
  v114 = v15 + 2;
  v44(v21, v105, v42);
  *v6 = sub_1002141C8(v35);
  v6[1] = v46;
  v47 = *(v125 + 104);
  v109 = enum case for MapsDesignAccessibilityString.button(_:);
  v125 += 104;
  v108 = v47;
  v47(v6);
  v48 = v6;
  v49 = v107;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  v50 = v15[1];
  v119 = v42;
  v117 = v15 + 1;
  v112 = v50;
  v50(v45, v42);
  v51 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
  v53 = v51[2];
  v52 = v51[3];
  if (v53 >= v52 >> 1)
  {
    v51 = sub_100355E1C(v52 > 1, v53 + 1, 1, v51);
  }

  v51[2] = v53 + 1;
  v54 = *(v124 + 32);
  v106 = (*(v124 + 80) + 32) & ~*(v124 + 80);
  v107 = v54;
  v105 = *(v124 + 72);
  v124 += 32;
  (v54)(v51 + v106 + v105 * v53, v49, v120);
  (v110)(v43, LODWORD(v101.super.isa), v119);
  v55 = v48;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v126._object = 0x800000010121C800;
  v56._countAndFlagsBits = 0x7972617262694C5BLL;
  v56._object = 0xEF6572616853205DLL;
  v57._countAndFlagsBits = 0x6572616853;
  v126._countAndFlagsBits = 0xD00000000000002ELL;
  v101.super.isa = qword_1019600D8;
  v57._object = 0xE500000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, qword_1019600D8, v57, v126)._countAndFlagsBits;
  v58 = swift_allocObject();
  v59 = v123;
  *(v58 + 16) = v118;
  *(v58 + 24) = v59;
  *(v58 + 32) = 2;
  v115(v104, v102, v121);
  v60 = v119;
  v113(v103, v43, v119);
  *v48 = 0x6572616853;
  v48[1] = 0xE500000000000000;
  v108(v48, v109, v122);

  v61 = v100;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  v112(v43, v60);
  v63 = v51[2];
  v62 = v51[3];
  if (v63 >= v62 >> 1)
  {
    v51 = sub_100355E1C(v62 > 1, v63 + 1, 1, v51);
  }

  v51[2] = v63 + 1;
  (v107)(v51 + v106 + v63 * v105, v61, v120);
  LODWORD(v100) = enum case for CellAction.Placement.default(_:);
  v64 = v119;
  v110(v43);
  v127._object = 0x8000000101224AF0;
  v65._countAndFlagsBits = 0x61206F7420646441;
  v65._object = 0xEE00656469754720;
  v66._countAndFlagsBits = 0xD000000000000018;
  v66._object = 0x8000000101224AD0;
  v127._countAndFlagsBits = 0xD000000000000023;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, v101, v65, v127);
  v67 = swift_allocObject();
  v68 = v123;
  *(v67 + 16) = v118;
  *(v67 + 24) = v68;
  *(v67 + 32) = 3;
  v115(v104, v102, v121);
  v113(v103, v43, v64);
  *v55 = 0x6975476F54646441;
  v55[1] = 0xEA00000000006564;
  v108(v55, v109, v122);

  v69 = v94;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  v112(v43, v64);
  v71 = v51[2];
  v70 = v51[3];
  if (v71 >= v70 >> 1)
  {
    v51 = sub_100355E1C(v70 > 1, v71 + 1, 1, v51);
  }

  v51[2] = v71 + 1;
  (v107)(v51 + v106 + v71 * v105, v69, v120);
  v72 = v97;
  v73 = v119;
  (v110)(v97, v100, v119);
  v74 = v95;
  v94 = sub_100213A28(v95);
  countAndFlagsBits = v75;
  v92[1] = sub_10021406C(v74);
  v76 = swift_allocObject();
  v77 = v123;
  *(v76 + 16) = v118;
  *(v76 + 24) = v77;
  *(v76 + 32) = v74;
  v115(v98, v102, v121);

  v113(v43, v72, v73);
  *v55 = sub_1002141C8(v74);
  v55[1] = v78;
  v108(v55, v109, v122);
  v79 = v96;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  v112(v72, v73);
  v81 = v51[2];
  v80 = v51[3];
  if (v81 >= v80 >> 1)
  {
    v51 = sub_100355E1C(v80 > 1, v81 + 1, 1, v51);
  }

  v51[2] = v81 + 1;
  (v107)(v51 + v106 + v81 * v105, v79, v120);
  v82 = v119;
  (v110)(v43, v100, v119);
  v128._object = 0x800000010121C870;
  v83._countAndFlagsBits = 0xD00000000000001ELL;
  v83._object = 0x800000010121C830;
  v84._countAndFlagsBits = 0xD000000000000012;
  v84._object = 0x800000010121C850;
  v128._countAndFlagsBits = 0xD000000000000040;
  v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v101, v84, v128)._countAndFlagsBits;
  v85 = swift_allocObject();
  v86 = v43;
  v87 = v123;
  *(v85 + 16) = v118;
  *(v85 + 24) = v87;
  *(v85 + 32) = 8;
  v115(v104, enum case for CellAction.Style.destructive(_:), v121);
  v113(v103, v86, v82);
  *v55 = 0xD000000000000011;
  v55[1] = 0x80000001012249C0;
  v108(v55, v109, v122);

  v88 = v99;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  v112(v86, v82);
  v90 = v51[2];
  v89 = v51[3];
  if (v90 >= v89 >> 1)
  {
    v51 = sub_100355E1C(v89 > 1, v90 + 1, 1, v51);
  }

  v51[2] = v90 + 1;
  (v107)(v51 + v106 + v90 * v105, v88, v120);
  return v51;
}

id sub_1002771E8()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  if (v3 == 1)
  {
    v4 = "achable Moment Title";
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v5.super.isa = qword_1019600D8;
    v26 = 0x8000000101229050;
    v6 = 0x8000000101228FE0;
    v7 = 0xD000000000000036;
  }

  else
  {
    v4 = "achable Moment Title";
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v5.super.isa = qword_1019600D8;
    v26 = 0x8000000101228F40;
    v6 = 0x8000000101228ED0;
    v7 = 0xD000000000000037;
  }

  v8 = v4 | 0x8000000000000000;
  v9 = 0xD000000000000031;
  v10 = 0xD000000000000024;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*(&v6 - 1), 0, v5, *&v7, *(&v26 - 1));
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v11._countAndFlagsBits = 0xD000000000000021;
  v28._object = 0x8000000101228FB0;
  v12._countAndFlagsBits = 0x7373696D736944;
  v11._object = 0x8000000101228F80;
  v28._countAndFlagsBits = 0xD00000000000002FLL;
  v12._object = 0xE700000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v5, v12, v28);
  v13 = objc_allocWithZone(sub_1000CE6B8(&unk_101916490));
  v14 = UIHostingController.init(rootView:)();
  result = [v14 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  [result setPreservesSuperviewLayoutMargins:0];

  result = [v14 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = result;
  [result setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  result = [v14 view];
  if (result)
  {
    v18 = result;
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor:v19];

    v20 = objc_allocWithZone(TeachableMomentConfiguration);
    v21 = String._bridgeToObjectiveC()();

    v22 = String._bridgeToObjectiveC()();

    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 initWithTitle:v21 buttonTitle:v22 userDefaultSaveKey:v23 illustrationViewController:v14];

    v27.receiver = v1;
    v27.super_class = type metadata accessor for NearbyTeachableMomentContaineeViewController();
    v25 = objc_msgSendSuper2(&v27, "initWithTeachableMomentConfiguration:", v24);

    return v25;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_100277608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyTeachableMomentContaineeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_100277778()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    return 0;
  }

  v5 = [v0 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 integerForKey:v6];

  return v7 > 2;
}

uint64_t sub_100277964()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100277A4C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100277ACC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

id sub_100277D50(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v34 = a1;
  v35 = a2;
  v33 = sub_1000CE6B8(&qword_1019165D0);
  v7 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v30 - v8;
  v10 = sub_1000CE6B8(&qword_1019165C8);
  v31 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController__sharingIdentity;
  v42 = 0;
  v32 = sub_1000CE6B8(&qword_1019165B0);
  Published.init(initialValue:)();
  (*(v11 + 32))(&v6[v14], v13, v10);
  v15 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchResults;
  *&v6[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchResults] = _swiftEmptyArrayStorage;
  v16 = &v6[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchQuery];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController__viewModels;
  v42 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_1019165C0);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v6[v17], v9, v33);
  v18 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_viewModelByHandle;
  *&v6[v18] = sub_1000D1850(_swiftEmptyArrayStorage);
  v19 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_contactByHandle;
  *&v6[v19] = sub_1000D1954(_swiftEmptyArrayStorage);
  swift_unknownObjectWeakAssign();
  v20 = v35;
  *&v6[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_dataSource] = v35;
  swift_beginAccess();
  v21 = *(v11 + 8);
  v22 = v20;
  v23 = v36;
  v24 = v36;
  v21(&v6[v14], v31);
  v41 = v23;
  Published.init(initialValue:)();
  swift_endAccess();
  *&v6[v15] = v37;

  v25 = v39;
  *v16 = v38;
  *(v16 + 1) = v25;

  v26 = type metadata accessor for CarNavigationShareTripViewController();
  v40.receiver = v6;
  v40.super_class = v26;
  v27 = objc_msgSendSuper2(&v40, "initWithNibName:bundle:", 0, 0);
  v28 = String._bridgeToObjectiveC()();

  [v27 setTitle:v28];
  swift_unknownObjectRelease();

  return v27;
}

uint64_t sub_1002781B0@<X0>(uint64_t *a1@<X8>)
{
  v20 = type metadata accessor for MapsDesignAccessibilityString();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v1[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchQuery + 8];
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchQuery] & 0xFFFFFFFFFFFFLL;
  }

  v19 = v7 != 0;
  KeyPath = swift_getKeyPath();
  *&v21 = 0;
  State.init(wrappedValue:)();
  v9 = v31[0];
  type metadata accessor for CarNavigationShareTripViewController();
  sub_10027D044(&qword_1019165D8, type metadata accessor for CarNavigationShareTripViewController);
  v10 = v1;
  v11 = ObservedObject.init(wrappedValue:)();
  v13 = v12;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v33 = 0;
  *&v21 = v11;
  *(&v21 + 1) = v13;
  LOBYTE(v22) = v19;
  *(&v22 + 1) = KeyPath;
  v23[0] = 0;
  *&v23[8] = v9;
  *v5 = 0xD000000000000010;
  v5[1] = 0x8000000101229250;
  v14 = v20;
  (*(v3 + 104))(v5, enum case for MapsDesignAccessibilityString.view(_:), v20);
  a1[3] = sub_1000CE6B8(&qword_1019165E0);
  v15 = sub_1000D6664(&qword_1019165E8);
  v16 = sub_10027CD5C();
  *&v31[0] = v15;
  *(&v31[0] + 1) = v16;
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(a1);
  View.mapsDesignAXContainer(withID:)();
  (*(v3 + 8))(v5, v14);
  v31[8] = v28;
  v31[9] = v29;
  v32 = v30;
  v31[4] = v24;
  v31[5] = v25;
  v31[6] = v26;
  v31[7] = v27;
  v31[0] = v21;
  v31[1] = v22;
  v31[2] = *v23;
  v31[3] = *&v23[16];
  return sub_100024F64(v31, &qword_1019165E8);
}

uint64_t sub_1002784E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1002787B8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SharedTripCellViewModel.SharedTripState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v2 + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_viewModelByHandle) + 16))
  {

    sub_100297040(a1, a2);
    if (v9)
    {

      (*(v6 + 104))(v8, enum case for SharedTripCellViewModel.SharedTripState.sharingInitiated(_:), v5);
      dispatch thunk of SharedTripCellViewModel.state.setter();
    }

    else
    {
    }
  }
}

uint64_t sub_100278934()
{
  v23 = type metadata accessor for SharedTripCellViewModel.SharedTripState();
  v0 = *(v23 - 8);
  __chkstk_darwin(v23);
  v22 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v16 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v24;
  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v15 = v24;
  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = v15;
  if (!result)
  {
  }

LABEL_3:
  if (result >= 1)
  {
    v7 = 0;
    v19 = v5 & 0xC000000000000001;
    v18 = enum case for SharedTripCellViewModel.SharedTripState.sharingInitiated(_:);
    v8 = (v0 + 104);
    v9 = (v0 + 8);
    v17 = enum case for SharedTripCellViewModel.SharedTripState.sharing(_:);
    v20 = result;
    v21 = v5;
    do
    {
      if (v19)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      dispatch thunk of SharedTripCellViewModel.state.getter();
      v10 = *v8;
      v11 = v22;
      v12 = v23;
      (*v8)(v22, v18, v23);
      v13 = static SharedTripCellViewModel.SharedTripState.== infix(_:_:)();
      v14 = *v9;
      (*v9)(v11, v12);
      v14(v4, v12);
      if (v13)
      {
        v10(v4, v17, v23);
        dispatch thunk of SharedTripCellViewModel.state.setter();
      }

      ++v7;
    }

    while (v20 != v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100278BF4()
{
  v1 = v0;
  v87 = type metadata accessor for SharedTripCellViewModel.SharedTripState();
  v2 = *(v87 - 8);
  __chkstk_darwin(v87);
  v90 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = &v67 - v5;
  __chkstk_darwin(v6);
  v71 = &v67 - v7;
  v9 = __chkstk_darwin(v8);
  v70 = &v67 - v10;
  v11 = *&v0[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchQuery + 8];
  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v12 = *&v0[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchQuery] & 0xFFFFFFFFFFFFLL;
  }

  v13 = &byte_10195F000;
  v78 = v12;
  if (v12)
  {
    v14 = *&v0[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchResults];
  }

  else
  {
    v15 = [*&v0[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_dataSource] contactsForDisplay];
    sub_100014C84(0, &unk_101911D50);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v100 = _swiftEmptyArrayStorage;
  v16 = sub_1000D1850(_swiftEmptyArrayStorage);
  v17 = sub_1000D1954(_swiftEmptyArrayStorage);
  if (v14 >> 62)
  {
LABEL_49:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v19 = &byte_10195F000;
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_50:

    v64 = _swiftEmptyArrayStorage;
LABEL_51:
    *&v1[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_viewModelByHandle] = v16;

    *&v1[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_contactByHandle] = v17;

    swift_getKeyPath();
    swift_getKeyPath();
    v99 = v64;
    v65 = v1;
    return static Published.subscript.setter();
  }

  v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = &byte_10195F000;
  if (!v18)
  {
    goto LABEL_50;
  }

LABEL_9:
  v96 = v16;
  v20 = 0;
  v82 = *(v19 + 437);
  v91 = v14 & 0xC000000000000001;
  v72 = v14 & 0xFFFFFFFFFFFFFF8;
  v85 = (v2 + 104);
  v69 = (v2 + 8);
  v81 = *(v13 + 434);
  v77 = "onShareTripViewController.swift";
  v79 = enum case for SharedTripCellViewModel.SharedTripState.sharingInitiated(_:);
  v80 = enum case for SharedTripCellViewModel.SharedTripState.sharing(_:);
  v76 = 0x8000000101229310;
  v68 = enum case for SharedTripCellViewModel.SharedTripState.notSharing(_:);
  v75 = "en sharing is initiated";
  v74 = "ip_AlreadySharing";
  v93 = _swiftEmptyArrayStorage;
  v73 = 0x80000001012293B0;
  v84 = v14;
  v86 = v1;
  v83 = v18;
  while (1)
  {
    if (v91)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *(v72 + 16))
      {
        goto LABEL_48;
      }

      v21 = *(v14 + 8 * v20 + 32);
    }

    v22 = v21;
    v13 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v23 = [v21 stringValue];
    if (v23)
    {
      break;
    }

LABEL_11:
    ++v20;
    if (v13 == v18)
    {

      v16 = v96;
      v64 = v93;
      goto LABEL_51;
    }
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v26;

  sub_1002798CC(v22, &v99);
  v27 = [objc_opt_self() sharedInstance];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 capabilityTypeForContact:v22 serviceName:0 isActiveReceiver:0];

    if (v29 == 2 && (v30 = [objc_opt_self() sharedFetcher]) != 0 && (v31 = v30, v32 = objc_msgSend(v30, "serviceNameForContact:", v22), v31, v32))
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v34;
    }

    else
    {
      v33 = 0;
      v92 = 0;
    }

    v35 = *&v1[v82];
    v36 = *(v35 + 16);
    v94 = (v20 + 1);
    v95 = v17;
    v93 = v33;
    if (v36)
    {

      v37 = sub_100297040(v25, v16);
      if (v38)
      {
        v89 = v25;
        v39 = *(*(v35 + 56) + 8 * v37);

        v40 = v70;
        dispatch thunk of SharedTripCellViewModel.state.getter();
        v41 = v71;
        v42 = v87;
        v88 = *v85;
        v88(v71, v79, v87);
        sub_10027D044(&qword_101916628, &type metadata accessor for SharedTripCellViewModel.SharedTripState);
        v2 = dispatch thunk of static Equatable.== infix(_:_:)();
        v43 = *v69;
        v44 = v41;
        v14 = v84;
        (*v69)(v44, v42);
        v45 = v40;
        v46 = v42;
        v48 = v95;
        v47 = v96;
        v43(v45, v46);
        if ((v2 & 1) == 0)
        {
          v49 = [*&v86[v81] sharingStateForContact:v22];
          v50 = v80;
          if ((v49 - 2) >= 2)
          {
            v50 = v79;
            if (v49 != 1)
            {
              v50 = v68;
              if (v49)
              {
                goto LABEL_53;
              }
            }
          }

          v2 = v67;
          v88(v67, v50, v87);
          dispatch thunk of SharedTripCellViewModel.state.setter();
        }

        sub_10005EB40(&v99, &v98);
        dispatch thunk of SharedTripCellViewModel.appIconProvider.setter();
        dispatch thunk of SharedTripCellViewModel.trailingLabel.setter();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v2 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v93 = v100;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = v47;
        v25 = v89;
        sub_10012B358(v39, v89, v16, isUniquelyReferenced_nonNull_native);

        v96 = v98;
        v1 = v86;
LABEL_45:
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v48;
        sub_10012B1A8(v22, v25, v16, v63);

        v17 = v98;
        sub_10004E3D0(&v99);
        v18 = v83;
        v13 = v94;
        goto LABEL_11;
      }
    }

    v52 = [*&v1[v81] sharingStateForContact:v22];
    v53 = v80;
    if ((v52 - 2) >= 2)
    {
      v53 = v79;
      if (v52 != 1)
      {
        v53 = v68;
        if (v52)
        {
          goto LABEL_53;
        }
      }
    }

    (*v85)(v90, v53, v87);
    sub_10027979C(v22, &v98);
    sub_10005EB40(&v99, v97);
    v54 = [v22 displayName];
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v55;

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v56.super.isa = qword_1019600D8;
    v101._object = v76;
    v57._countAndFlagsBits = 0xD000000000000025;
    v57._object = (v77 | 0x8000000000000000);
    v101._countAndFlagsBits = 0xD000000000000047;
    v58._countAndFlagsBits = 0x20676E6972616853;
    v58._object = 0xEB00000000415445;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, qword_1019600D8, v58, v101);
    if (v78)
    {
    }

    v102._object = v73;
    v59._countAndFlagsBits = 0xD000000000000021;
    v59._object = (v75 | 0x8000000000000000);
    v60._object = (v74 | 0x8000000000000000);
    v102._countAndFlagsBits = 0xD00000000000007ELL;
    v60._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v56, v60, v102);
    type metadata accessor for SharedTripCellViewModel();
    swift_allocObject();
    v2 = SharedTripCellViewModel.init(state:imageProvider:appIconProvider:title:sharingSubtitle:handleSubtitle:stopSubtitle:trailingLabel:)();

    dispatch thunk of SharedTripCellViewModel.id.setter();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v93 = v100;

    v61 = v96;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v61;
    sub_10012B358(v2, v25, v16, v62);

    v96 = v98;
    v1 = v86;
    v14 = v84;
    v48 = v95;
    goto LABEL_45;
  }

  __break(1u);
LABEL_53:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_10027979C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 contact];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    result = sub_10027CFF0();
    *(a2 + 8) = v8;
    *(a2 + 16) = 1;
    v10 = &type metadata for ContactImageProvider;
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() systemImageNamed:v11];

    v10 = sub_1000CE6B8(&unk_101916610);
    result = sub_1000414C8(&qword_10190A530, &unk_101916610);
  }

  *(a2 + 24) = v10;
  *(a2 + 32) = result;
  *a2 = v6;
  return result;
}

id sub_1002798CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = [result capabilityTypeForContact:a1 serviceName:0 isActiveReceiver:0];

    if ((v6 - 2) < 2)
    {
      *(a2 + 24) = &type metadata for AppIconImageProvider;
      result = sub_10027CF9C();
      *(a2 + 32) = result;
      *a2 = 0xD000000000000013;
      *(a2 + 8) = 0x8000000101229270;
LABEL_6:
      *(a2 + 16) = 0;
      *(a2 + 20) = 1;
      return result;
    }

    if (v6 == 4)
    {
      *(a2 + 24) = &type metadata for AppIconImageProvider;
      result = sub_10027CF9C();
      *(a2 + 32) = result;
      strcpy(a2, "com.apple.Maps");
      *(a2 + 15) = -18;
      goto LABEL_6;
    }

    v7 = [objc_allocWithZone(UIImage) init];
    *(a2 + 24) = sub_100014C84(0, &qword_10190AB90);
    result = sub_10027CF34();
    *(a2 + 32) = result;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100279A18(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_contactByHandle);
  if (*(v3 + 16))
  {

    v6 = sub_100297040(a1, a2);
    if (v7)
    {
      v12 = *(*(v3 + 56) + 8 * v6);

      v8 = [objc_opt_self() sharedFetcher];
      if (v8)
      {
        v9 = v8;
        sub_1000CE6B8(&qword_101908400);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1011E47B0;
        *(v10 + 32) = v12;
        sub_100014C84(0, &unk_101911D50);
        v12 = v12;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v9 requestCapabilityLevelsForContacts:isa];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100279BB4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_100279C20(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_contactByHandle);
  if (*(v3 + 16))
  {

    v6 = sub_100297040(a1, a2);
    if (v7)
    {
      v9 = *(*(v3 + 56) + 8 * v6);

      v8 = [objc_opt_self() sharedFetcher];
      [v8 cancelCapabilityLevelRequestForContact:v9];
    }

    else
    {
    }
  }
}

void sub_100279D8C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_contactByHandle);
  if (*(v5 + 16))
  {

    v9 = sub_100297040(a1, a2);
    if (v10)
    {
      v12 = *(*(v5 + 56) + 8 * v9);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong *a3];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void *sub_100279EE0(void *result, uint64_t a2)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    [result carNavigationShareTripViewController:v2 wantsUserInputWithInteractionModel:a2];
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    [result carNavigationShareTripViewControllerWantsUserInputWithDictation:v2];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10027A114()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_delegate);

  v1 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController__sharingIdentity;
  v2 = sub_1000CE6B8(&qword_1019165C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController__viewModels;
  v4 = sub_1000CE6B8(&qword_1019165D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
}

id sub_10027A238()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarNavigationShareTripViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarNavigationShareTripViewController()
{
  result = qword_101916598;
  if (!qword_101916598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10027A3EC()
{
  sub_10017E020(319, &qword_1019165A8, &qword_1019165B0);
  if (v0 <= 0x3F)
  {
    sub_10017E020(319, &qword_1019165B8, &qword_1019165C0);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10027A518@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v3 - 8);
  v28 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000CE6B8(&qword_101916630);
  v6 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v26 - v7;
  v9 = sub_1000CE6B8(&qword_101916638);
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  __chkstk_darwin(v9);
  v26 = &v26 - v11;
  v12 = sub_1000CE6B8(&qword_101916640);
  v13 = *(v12 - 8);
  v33 = v12;
  v34 = v13;
  __chkstk_darwin(v12);
  v30 = &v26 - v14;
  v45 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v36 = v2;
  v37 = v38;
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_101916648);
  sub_1000414C8(&qword_101916650, &qword_101916648);
  ScrollView.init(_:showsIndicators:content:)();

  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v15 = sub_1000414C8(&qword_101916658, &qword_101916630);
  v16 = v26;
  v17 = v27;
  v18 = v28;
  View.scrollTargetBehavior<A>(_:)();
  (*(v29 + 8))(v5, v18);
  (*(v6 + 8))(v8, v17);
  v43 = *(v2 + 3);
  v44 = *(v2 + 32);
  v42 = *(v2 + 40);
  v19 = swift_allocObject();
  v20 = v2[1];
  *(v19 + 16) = *v2;
  *(v19 + 32) = v20;
  *(v19 + 48) = v2[2];
  *(v19 + 64) = *(v2 + 6);
  sub_1000D2DFC(&v45, &v38, &qword_101916660);
  sub_1000D2DFC(&v43, &v38, &qword_101916668);
  sub_1000D2DFC(&v42, &v38, &qword_101916670);
  v38 = v17;
  v39 = v18;
  v40 = v15;
  v41 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v30;
  v22 = v31;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v32 + 8))(v16, v22);
  v38 = v22;
  v39 = &type metadata for Double;
  v40 = OpaqueTypeConformance2;
  v41 = &protocol witness table for Double;
  swift_getOpaqueTypeConformance2();
  v24 = v33;
  View.scrollAccessoryEdge(_:)();
  return (*(v34 + 8))(v23, v24);
}

uint64_t sub_10027AB00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000CE6B8(&qword_101916680);
  return sub_10027AB64(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_10027AB64@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v142 = a3;
  v128 = sub_1000CE6B8(&qword_101916688);
  v126 = *(v128 - 8);
  __chkstk_darwin(v128);
  v125 = &v122 - v5;
  v124 = sub_1000CE6B8(&qword_101916690);
  __chkstk_darwin(v124);
  v129 = &v122 - v6;
  v127 = sub_1000CE6B8(&qword_101916698);
  __chkstk_darwin(v127);
  v132 = &v122 - v7;
  v8 = sub_1000CE6B8(&qword_1019166A0);
  v137 = *(v8 - 8);
  v138 = v8;
  __chkstk_darwin(v8);
  v131 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v130 = &v122 - v11;
  v12 = sub_1000CE6B8(&qword_1019166A8);
  __chkstk_darwin(v12 - 8);
  v141 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v122 - v15;
  v17 = sub_1000CE6B8(&qword_1019166B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v122 - v18;
  v136 = sub_1000CE6B8(&unk_1019166B8);
  __chkstk_darwin(v136);
  v139 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v135 = &v122 - v22;
  __chkstk_darwin(v23);
  v143 = &v122 - v24;
  v25 = *(a1 + 16);
  v140 = v16;
  if (v25)
  {
    sub_10027DA38(&v204);
  }

  else
  {
    v134 = a2;
    v203 = *a1;
    v201 = *(a1 + 3);
    v202 = *(a1 + 32);
    v200 = *(a1 + 40);
    v26 = swift_allocObject();
    v27 = a1[1];
    *(v26 + 16) = *a1;
    *(v26 + 32) = v27;
    *(v26 + 48) = a1[2];
    v28 = *(a1 + 6);
    v133 = v26;
    *(v26 + 64) = v28;
    v29 = swift_allocObject();
    v30 = a1[1];
    *(v29 + 16) = *a1;
    *(v29 + 32) = v30;
    *(v29 + 48) = a1[2];
    *(v29 + 64) = *(a1 + 6);
    KeyPath = swift_getKeyPath();
    sub_1000D2DFC(&v203, &v167, &qword_101916660);
    sub_1000D2DFC(&v201, &v167, &qword_101916668);
    sub_1000D2DFC(&v200, &v167, &qword_101916670);
    sub_1000D2DFC(&v203, &v167, &qword_101916660);
    sub_1000D2DFC(&v201, &v167, &qword_101916668);
    sub_1000D2DFC(&v200, &v167, &qword_101916670);
    v31 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    LOBYTE(v159) = 0;
    LOBYTE(v147) = 0;
    sub_1000CE6B8(&qword_101909FF0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1011E1D60;
    v41 = static Edge.Set.leading.getter();
    *(v40 + 32) = v41;
    v42 = static Edge.Set.trailing.getter();
    *(v40 + 33) = v42;
    v43 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v41)
    {
      v43 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v42)
    {
      v43 = Edge.Set.init(rawValue:)();
    }

    a2 = v134;
    EdgeInsets.init(_all:)();
    LOBYTE(v144) = 0;
    *&v167 = sub_10027D6BC;
    *(&v167 + 1) = v133;
    *&v168 = sub_10027D6C4;
    *(&v168 + 1) = v29;
    *&v169 = KeyPath;
    BYTE8(v169) = 0;
    LOBYTE(v170) = v31;
    *(&v170 + 1) = v33;
    *&v171 = v35;
    *(&v171 + 1) = v37;
    *&v172 = v39;
    BYTE8(v172) = 0;
    LOBYTE(v173) = v43;
    *(&v173 + 1) = v44;
    *&v174[0] = v45;
    *(&v174[0] + 1) = v46;
    *&v174[1] = v47;
    BYTE8(v174[1]) = 0;
    UIView.annotateView(with:)(&v167);
    v210 = v173;
    v211[0] = v174[0];
    *(v211 + 9) = *(v174 + 9);
    v206 = v169;
    v207 = v170;
    v209 = v172;
    v208 = v171;
    v205 = v168;
    v204 = v167;
  }

  v48 = static HorizontalAlignment.leading.getter();
  v49 = qword_10193E340;
  *v19 = v48;
  *(v19 + 1) = v49;
  v19[16] = 0;
  sub_1000CE6B8(&qword_1019166C8);
  *&v144 = a2;
  swift_getKeyPath();
  v199 = *a1;
  v197 = *(a1 + 3);
  v198 = *(a1 + 32);
  v196 = *(a1 + 40);
  v50 = swift_allocObject();
  v51 = a1[1];
  *(v50 + 16) = *a1;
  *(v50 + 32) = v51;
  *(v50 + 48) = a1[2];
  *(v50 + 64) = *(a1 + 6);

  sub_1000D2DFC(&v199, &v167, &qword_101916660);
  sub_1000D2DFC(&v197, &v167, &qword_101916668);
  sub_1000D2DFC(&v196, &v167, &qword_101916670);
  sub_1000CE6B8(&qword_1019165C0);
  sub_1000CE6B8(&qword_1019166D0);
  sub_1000414C8(&qword_1019166D8, &qword_1019165C0);
  sub_10027D6D4();
  ForEach<>.init(_:id:content:)();
  v52 = static Edge.Set.horizontal.getter();
  v53 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v52)
  {
    v53 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v135;
  sub_1000F11C4(v19, v135, &qword_1019166B0);
  v63 = v62 + *(v136 + 36);
  *v63 = v53;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  sub_1000F11C4(v62, v143, &unk_1019166B8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v135 = v185;
  v136 = v183;
  v133 = v188;
  v134 = v187;
  v182 = 1;
  v181 = v184;
  v180 = v186;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v64 = v167;
  v65 = v140;
  if (!v167)
  {
    goto LABEL_16;
  }

  v66 = [v167 name];
  if (!v66)
  {

LABEL_16:
    (*(v137 + 56))(v65, 1, 1, v138);
    goto LABEL_17;
  }

  v67 = v66;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = [v64 handle];
  if (!v68)
  {

    goto LABEL_16;
  }

  v69 = v68;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v70 = static HorizontalAlignment.leading.getter();
  LOBYTE(v189) = 0;
  sub_10027C704(&v167);
  v155 = v174[1];
  v156 = v175;
  v157 = v176;
  v158 = v177;
  v151 = v171;
  v152 = v172;
  v153 = v173;
  v154 = v174[0];
  v147 = v167;
  v148 = v168;
  v149 = v169;
  v150 = v170;
  v166[1] = v174[1];
  v166[2] = v175;
  v166[3] = v176;
  v166[4] = v177;
  v163 = v171;
  v164 = v172;
  v165 = v173;
  v166[0] = v174[0];
  v159 = v167;
  v160 = v168;
  v161 = v169;
  v162 = v170;
  sub_1000D2DFC(&v147, &v144, &qword_101916710);
  sub_100024F64(&v159, &qword_101916710);

  *&v146[135] = v155;
  *&v146[151] = v156;
  *&v146[167] = v157;
  *&v146[183] = v158;
  *&v146[71] = v151;
  *&v146[87] = v152;
  *&v146[103] = v153;
  *&v146[119] = v154;
  *&v146[7] = v147;
  *&v146[23] = v148;
  *&v146[39] = v149;
  *&v146[55] = v150;
  v71 = v189;
  v72 = static Font.caption.getter();
  v73 = swift_getKeyPath();
  v74 = static HierarchicalShapeStyle.tertiary.getter();
  *(&v145[9] + 1) = *&v146[144];
  *(&v145[10] + 1) = *&v146[160];
  *(&v145[11] + 1) = *&v146[176];
  *(&v145[5] + 1) = *&v146[80];
  *(&v145[6] + 1) = *&v146[96];
  *(&v145[7] + 1) = *&v146[112];
  *(&v145[8] + 1) = *&v146[128];
  *(&v145[1] + 1) = *&v146[16];
  *(&v145[2] + 1) = *&v146[32];
  *(&v145[3] + 1) = *&v146[48];
  *(&v145[4] + 1) = *&v146[64];
  v144 = v70;
  LOBYTE(v145[0]) = v71;
  *(v145 + 1) = *v146;
  *&v145[12] = *&v146[191];
  *(&v145[12] + 1) = v73;
  *&v145[13] = v72;
  DWORD2(v145[13]) = v74;
  sub_1000CE6B8(&qword_101916718);
  sub_10027D89C();
  v75 = v125;
  View.carFocusAnchor()();
  v178 = v145[11];
  v179[0] = v145[12];
  *(v179 + 12) = *(&v145[12] + 12);
  v174[1] = v145[7];
  v175 = v145[8];
  v177 = v145[10];
  v176 = v145[9];
  v171 = v145[3];
  v172 = v145[4];
  v174[0] = v145[6];
  v173 = v145[5];
  v167 = v144;
  v168 = v145[0];
  v170 = v145[2];
  v169 = v145[1];
  sub_100024F64(&v167, &qword_101916718);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v76 = v129;
  (*(v126 + 32))(v129, v75, v128);
  v77 = &v76[*(v124 + 36)];
  v78 = v194;
  *(v77 + 4) = v193;
  *(v77 + 5) = v78;
  *(v77 + 6) = v195;
  v79 = v190;
  *v77 = v189;
  *(v77 + 1) = v79;
  v80 = v192;
  *(v77 + 2) = v191;
  *(v77 + 3) = v80;
  LOBYTE(v70) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v89 = v76;
  v90 = v132;
  sub_1000F11C4(v89, v132, &qword_101916690);
  v91 = v90 + *(v127 + 36);
  *v91 = v70;
  *(v91 + 8) = v82;
  *(v91 + 16) = v84;
  *(v91 + 24) = v86;
  *(v91 + 32) = v88;
  *(v91 + 40) = 0;
  LOBYTE(v70) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;

  v100 = v131;
  sub_1000F11C4(v90, v131, &qword_101916698);
  v101 = v138;
  v102 = v100 + *(v138 + 36);
  *v102 = v70;
  *(v102 + 8) = v93;
  *(v102 + 16) = v95;
  *(v102 + 24) = v97;
  *(v102 + 32) = v99;
  *(v102 + 40) = 0;
  v103 = v100;
  v104 = v130;
  sub_1000F11C4(v103, v130, &qword_1019166A0);
  sub_1000F11C4(v104, v65, &qword_1019166A0);
  (*(v137 + 56))(v65, 0, 1, v101);
LABEL_17:
  v165 = v210;
  v166[0] = v211[0];
  *(v166 + 9) = *(v211 + 9);
  v161 = v206;
  v162 = v207;
  v163 = v208;
  v164 = v209;
  v159 = v204;
  v160 = v205;
  v105 = v143;
  v106 = v139;
  sub_1000D2DFC(v143, v139, &unk_1019166B8);
  v107 = v182;
  LODWORD(v137) = v181;
  LODWORD(v138) = v180;
  v108 = v141;
  sub_1000D2DFC(v65, v141, &qword_1019166A8);
  v109 = v166[0];
  v145[5] = v165;
  v145[6] = v166[0];
  *(&v145[6] + 9) = *(v166 + 9);
  v110 = v161;
  v111 = v162;
  v145[1] = v161;
  v145[2] = v162;
  v113 = v163;
  v112 = v164;
  v145[3] = v163;
  v145[4] = v164;
  v115 = v159;
  v114 = v160;
  v144 = v159;
  v145[0] = v160;
  v116 = v65;
  v117 = v142;
  v142[6] = v165;
  v117[7] = v109;
  *(v117 + 121) = *(v166 + 9);
  v117[2] = v110;
  v117[3] = v111;
  v117[4] = v113;
  v117[5] = v112;
  *v117 = v115;
  v117[1] = v114;
  v118 = sub_1000CE6B8(&qword_101916700);
  sub_1000D2DFC(v106, v117 + v118[12], &unk_1019166B8);
  v119 = v117 + v118[16];
  *v119 = 0;
  v119[8] = v107;
  *(v119 + 2) = v136;
  v119[24] = v137;
  *(v119 + 4) = v135;
  v119[40] = v138;
  v120 = v133;
  *(v119 + 6) = v134;
  *(v119 + 7) = v120;
  sub_1000D2DFC(v108, v117 + v118[20], &qword_1019166A8);
  sub_1000D2DFC(&v144, &v167, &qword_101916708);
  sub_100024F64(v116, &qword_1019166A8);
  sub_100024F64(v105, &unk_1019166B8);
  sub_100024F64(v108, &qword_1019166A8);
  sub_100024F64(v106, &unk_1019166B8);
  v173 = v165;
  v174[0] = v166[0];
  *(v174 + 9) = *(v166 + 9);
  v169 = v161;
  v170 = v162;
  v172 = v164;
  v171 = v163;
  v167 = v159;
  v168 = v160;
  return sub_100024F64(&v167, &qword_101916708);
}

void *sub_10027BC10(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result carNavigationShareTripViewController:v3 wantsUserInputWithInteractionModel:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10027BC8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result carNavigationShareTripViewControllerWantsUserInputWithDictation:v2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10027BCF4@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v26 = type metadata accessor for SharedTripCellViewModel.SharedTripState();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NavigationCell();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v33 = *a2;
  v31 = *(a2 + 3);
  v32 = *(a2 + 32);
  v30 = *(a2 + 40);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a2[1];
  *(v12 + 24) = *a2;
  *(v12 + 40) = v13;
  *(v12 + 56) = a2[2];
  *(v12 + 72) = *(a2 + 6);
  swift_retain_n();
  sub_1000D2DFC(&v33, v29, &qword_101916660);
  sub_1000D2DFC(&v31, v29, &qword_101916668);
  sub_1000D2DFC(&v30, v29, &qword_101916670);
  NavigationCell.init(model:tapHandler:)();
  dispatch thunk of SharedTripCellViewModel.state.getter();
  v14 = swift_allocObject();
  v15 = a2[1];
  *(v14 + 16) = *a2;
  *(v14 + 32) = v15;
  *(v14 + 48) = a2[2];
  *(v14 + 64) = *(a2 + 6);
  *(v14 + 72) = v11;

  sub_1000D2DFC(&v33, v29, &qword_101916660);
  sub_1000D2DFC(&v31, v29, &qword_101916668);
  sub_1000D2DFC(&v30, v29, &qword_101916670);
  sub_10027D044(&qword_10190A030, &type metadata accessor for NavigationCell);
  sub_10027D044(&qword_101916628, &type metadata accessor for SharedTripCellViewModel.SharedTripState);
  v17 = v26;
  v16 = v27;
  View.onChange<A>(of:initial:_:)();

  (*(v28 + 8))(v6, v17);
  (*(v8 + 8))(v10, v7);
  v18 = swift_allocObject();
  v19 = a2[1];
  *(v18 + 16) = *a2;
  *(v18 + 32) = v19;
  *(v18 + 48) = a2[2];
  *(v18 + 64) = *(a2 + 6);
  *(v18 + 72) = v11;
  v20 = (v16 + *(sub_1000CE6B8(&unk_1019166F0) + 36));
  *v20 = sub_10027DA6C;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  v21 = swift_allocObject();
  v22 = a2[1];
  *(v21 + 16) = *a2;
  *(v21 + 32) = v22;
  *(v21 + 48) = a2[2];
  *(v21 + 64) = *(a2 + 6);
  *(v21 + 72) = v11;
  v23 = (v16 + *(sub_1000CE6B8(&qword_1019166D0) + 36));
  *v23 = 0;
  v23[1] = 0;
  v23[2] = sub_10027DACC;
  v23[3] = v21;

  sub_1000D2DFC(&v33, v29, &qword_101916660);
  sub_1000D2DFC(&v31, v29, &qword_101916668);
  sub_1000D2DFC(&v30, v29, &qword_101916670);

  sub_1000D2DFC(&v33, v29, &qword_101916660);
  sub_1000D2DFC(&v31, v29, &qword_101916668);
  return sub_1000D2DFC(&v30, v29, &qword_101916670);
}

uint64_t sub_10027C214()
{
  v0 = type metadata accessor for SharedTripCellViewModel.SharedTripState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  dispatch thunk of SharedTripCellViewModel.state.getter();
  v7 = *(v1 + 104);
  v7(v3, enum case for SharedTripCellViewModel.SharedTripState.sharing(_:), v0);
  v8 = static SharedTripCellViewModel.SharedTripState.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  if (v8 & 1) != 0 || (dispatch thunk of SharedTripCellViewModel.state.getter(), v7(v3, enum case for SharedTripCellViewModel.SharedTripState.sharingInitiated(_:), v0), v10 = static SharedTripCellViewModel.SharedTripState.== infix(_:_:)(), v9(v3, v0), v9(v6, v0), (v10))
  {
    v7(v6, enum case for SharedTripCellViewModel.SharedTripState.notSharing(_:), v0);
    return dispatch thunk of SharedTripCellViewModel.state.setter();
  }

  else
  {
    v12 = dispatch thunk of SharedTripCellViewModel.id.getter();
    sub_100279D38(v12, v13);
  }
}

uint64_t sub_10027C410()
{
  v0 = type metadata accessor for SharedTripCellViewModel.SharedTripState();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 104);
  v5(v4, enum case for SharedTripCellViewModel.SharedTripState.sharing(_:), v0, v2);
  v6 = static SharedTripCellViewModel.SharedTripState.== infix(_:_:)();
  v7 = *(v1 + 8);
  v7(v4, v0);
  if (v6)
  {
    v8 = dispatch thunk of SharedTripCellViewModel.id.getter();
    sub_100279D5C(v8, v9);
  }

  else
  {
    (v5)(v4, enum case for SharedTripCellViewModel.SharedTripState.notSharing(_:), v0);
    v10 = static SharedTripCellViewModel.SharedTripState.== infix(_:_:)();
    result = (v7)(v4, v0);
    if ((v10 & 1) == 0)
    {
      return result;
    }

    v12 = dispatch thunk of SharedTripCellViewModel.id.getter();
    sub_100279D80(v12, v13);
  }
}

uint64_t sub_10027C5A4()
{
  v0 = dispatch thunk of SharedTripCellViewModel.id.getter();
  sub_100279A18(v0, v1);
}

void sub_10027C5F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = dispatch thunk of SharedTripCellViewModel.id.getter();
  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_contactByHandle);
  if (*(v5 + 16) && (v6 = v2, , v7 = sub_100297040(v6, v4), v9 = v8, , (v9 & 1) != 0))
  {
    v11 = *(*(v5 + 56) + 8 * v7);

    v10 = [objc_opt_self() sharedFetcher];
    [v10 cancelCapabilityLevelRequestForContact:v11];
  }

  else
  {
  }
}

uint64_t sub_10027C704@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v2.super.isa = qword_1019600D8;
  v46._object = 0x80000001012294E0;
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x8000000101229460;
  v4._countAndFlagsBits = 0xD000000000000049;
  v4._object = 0x8000000101229490;
  v46._countAndFlagsBits = 0xD00000000000004DLL;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v4, v46);
  HIDWORD(v41) = HIDWORD(v5._countAndFlagsBits);
  sub_1000E5580();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  LODWORD(v41) = static HierarchicalShapeStyle.secondary.getter();
  v11 = Text.foregroundStyle<A>(_:)();
  v38 = v12;
  v39 = v11;
  v34 = v13;
  v40 = v14;
  sub_1000F0A40(v6, v8, v10 & 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v47._object = 0x8000000101229560;
  v15._countAndFlagsBits = 0x616873207370614DLL;
  v15._object = 0xEF3A736120736572;
  v16._object = 0x8000000101229530;
  v47._countAndFlagsBits = 0xD000000000000051;
  v16._countAndFlagsBits = 0xD000000000000023;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v2, v15, v47);
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  v33 = v22;

  v23 = Text.init<A>(_:)();
  v32 = v24;
  LOBYTE(v2.super.isa) = v25;
  v35 = v26;

  v36 = Text.init<A>(_:)();
  v31 = v27;
  v37 = v28 & 1;
  *a1 = v39;
  *(a1 + 8) = v38;
  *(a1 + 16) = v34 & 1;
  *(a1 + 24) = v40;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v41;
  *(a1 + 56) = v5._object;
  *(a1 + 64) = v42;
  *(a1 + 72) = v43;
  *(a1 + 80) = v44;
  *(a1 + 88) = v45;
  *(a1 + 96) = v17;
  *(a1 + 104) = v19;
  *(a1 + 112) = v21 & 1;
  *(a1 + 120) = v33;
  *(a1 + 128) = v23;
  *(a1 + 136) = v32;
  *(a1 + 144) = v2.super.isa & 1;
  *(a1 + 152) = v35;
  *(a1 + 160) = v36;
  *(a1 + 168) = v27;
  *(a1 + 176) = v28 & 1;
  *(a1 + 184) = v29;
  sub_1001C8AFC(v39, v38, v34 & 1);

  sub_1001C8AFC(v17, v19, v21 & 1);

  sub_1001C8AFC(v23, v32, v2.super.isa & 1);

  sub_1001C8AFC(v36, v31, v37);

  sub_1000F0A40(v36, v31, v37);

  sub_1000F0A40(v23, v32, v2.super.isa & 1);

  sub_1000F0A40(v17, v19, v21 & 1);

  sub_1000F0A40(v39, v38, v34 & 1);
}

uint64_t sub_10027CB28@<X0>(void *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3;
  return result;
}

void *sub_10027CB54(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *a2;
  v8 = *(a3 + 40);
  v9 = v8;
  v10 = *(&v8 + 1);
  sub_1000D2DFC(&v10, &v7, &qword_101916678);
  sub_1000CE6B8(&qword_101916670);
  State.wrappedValue.getter();
  if (vabdd_f64(v4, v7) <= 10.0)
  {
    return sub_100024F64(&v9, &qword_101916670);
  }

  v8 = v9;
  v7 = v4;
  State.wrappedValue.setter();
  sub_100024F64(&v9, &qword_101916670);
  v5 = *(a3 + 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result carNavigationShareTripViewControllerDidScroll:v5];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10027CCC0@<X0>(_BYTE *a1@<X8>)
{
  sub_10017E204();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10027CD5C()
{
  result = qword_1019165F0;
  if (!qword_1019165F0)
  {
    sub_1000D6664(&qword_1019165E8);
    sub_10027CDE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019165F0);
  }

  return result;
}

unint64_t sub_10027CDE8()
{
  result = qword_1019165F8;
  if (!qword_1019165F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019165F8);
  }

  return result;
}

uint64_t sub_10027CE3C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10027CEBC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t sub_10027CF34()
{
  result = qword_10190DE60;
  if (!qword_10190DE60)
  {
    sub_100014C84(255, &qword_10190AB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DE60);
  }

  return result;
}

unint64_t sub_10027CF9C()
{
  result = qword_101916608;
  if (!qword_101916608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916608);
  }

  return result;
}

unint64_t sub_10027CFF0()
{
  result = qword_101916620;
  if (!qword_101916620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916620);
  }

  return result;
}

uint64_t sub_10027D044(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10027D08C(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v25 = a3;
  v23[1] = a1;
  v23[0] = sub_1000CE6B8(&qword_1019165D0);
  v4 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v6 = v23 - v5;
  v7 = sub_1000CE6B8(&qword_1019165C8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController__sharingIdentity;
  v28 = 0;
  sub_1000CE6B8(&qword_1019165B0);
  Published.init(initialValue:)();
  (*(v8 + 32))(&v3[v11], v10, v7);
  *&v3[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchResults] = _swiftEmptyArrayStorage;
  v12 = &v3[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchQuery];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController__viewModels;
  v28 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_1019165C0);
  Published.init(initialValue:)();
  (*(v4 + 32))(&v3[v13], v6, v23[0]);
  v14 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_viewModelByHandle;
  *&v3[v14] = sub_1000D1850(_swiftEmptyArrayStorage);
  v15 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_contactByHandle;
  *&v3[v15] = sub_1000D1954(_swiftEmptyArrayStorage);
  swift_unknownObjectWeakAssign();
  v16 = v24;
  *&v3[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_dataSource] = v24;
  swift_beginAccess();
  v17 = *(v8 + 8);
  v18 = v16;
  v19 = v25;
  v20 = v25;
  v17(&v3[v11], v7);
  v27 = v19;
  Published.init(initialValue:)();
  swift_endAccess();
  v21 = type metadata accessor for CarNavigationShareTripViewController();
  v26.receiver = v3;
  v26.super_class = v21;
  return objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
}

void sub_10027D370()
{
  v1 = sub_1000CE6B8(&qword_1019165D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = sub_1000CE6B8(&qword_1019165C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController__sharingIdentity;
  v15 = 0;
  sub_1000CE6B8(&qword_1019165B0);
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v9, v8, v5);
  *(v0 + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchResults) = _swiftEmptyArrayStorage;
  v10 = (v0 + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchQuery);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController__viewModels;
  v15 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_1019165C0);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v11, v4, v1);
  v12 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_viewModelByHandle;
  *(v0 + v12) = sub_1000D1850(_swiftEmptyArrayStorage);
  v13 = OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_contactByHandle;
  *(v0 + v13) = sub_1000D1954(_swiftEmptyArrayStorage);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10027D5EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10027D634(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10027D6D4()
{
  result = qword_1019166E0;
  if (!qword_1019166E0)
  {
    sub_1000D6664(&qword_1019166D0);
    sub_10027D760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019166E0);
  }

  return result;
}

unint64_t sub_10027D760()
{
  result = qword_1019166E8;
  if (!qword_1019166E8)
  {
    sub_1000D6664(&unk_1019166F0);
    type metadata accessor for NavigationCell();
    type metadata accessor for SharedTripCellViewModel.SharedTripState();
    sub_10027D044(&qword_10190A030, &type metadata accessor for NavigationCell);
    sub_10027D044(&qword_101916628, &type metadata accessor for SharedTripCellViewModel.SharedTripState);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019166E8);
  }

  return result;
}

unint64_t sub_10027D89C()
{
  result = qword_101916720;
  if (!qword_101916720)
  {
    sub_1000D6664(&qword_101916718);
    sub_10027D954();
    sub_1000414C8(&qword_101911368, &qword_101916750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916720);
  }

  return result;
}

unint64_t sub_10027D954()
{
  result = qword_101916728;
  if (!qword_101916728)
  {
    sub_1000D6664(&qword_101916730);
    sub_1000414C8(&qword_101916738, &unk_101916740);
    sub_1000414C8(&qword_10190C628, &qword_10190FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916728);
  }

  return result;
}

double sub_10027DA38(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
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

uint64_t sub_10027DA78()
{
  sub_1000A1574(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 80, 7);
}

id sub_10027DD14()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MapsIntelligenceSearchRankManager());
  v3 = MapsIntelligenceSearchRankManager.init()();
  *&v0[OBJC_IVAR____TtC4Maps30PersonalizedAutocompleteRanker_mifRanker] = v3;
  if (!v3)
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100021540(v4, qword_101960018);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[MIF]Unable to initialize MapsIntelligenceSearchRankManager", v7, 2u);
    }
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for PersonalizedAutocompleteRanker();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_10027DE70(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10027DEDC()
{
  v1 = *v0;
  sub_100192B74();
  return v1;
}

uint64_t sub_10027DF1C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for UUID();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_10027DFE0, 0, 0);
}

void sub_10027DFE0()
{
  v129 = v0;
  isa = v0[20].isa;
  v2 = isa >> 62;
  if (isa >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v5 = v0[21].isa;
    if (!v5)
    {
      v17 = &v0[8];
      if (qword_101906728 != -1)
      {
LABEL_129:
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100021540(v28, qword_101960018);
      v21 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v21, v29, "[MIF] Not ranking anything because missing AC request", v30, 2u);
        v27 = 9;
        goto LABEL_16;
      }

      v27 = 9;
      goto LABEL_20;
    }

    v121 = i;
    v6 = qword_101906728;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v9 = sub_100021540(v8, qword_101960018);
    v0[26].isa = v9;
    v10 = v7;

    v119 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    v120 = v10;

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v128[0] = v15;
      *v13 = 134218498;
      if (v2)
      {
        v0 = v122;
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
        v0 = v122;
      }

      v36 = v0[21].isa;
      *(v13 + 4) = v16;

      *(v13 + 12) = 2080;
      sub_100014C84(0, &qword_1019167D0);
      v37 = Array.description.getter();
      v2 = v38;
      v39 = sub_10004DEB8(v37, v38, v128);

      *(v13 + 14) = v39;
      *(v13 + 22) = 2112;
      *(v13 + 24) = v120;
      *v14 = v36;
      v40 = v120;
      _os_log_impl(&_mh_execute_header, v11, v12, "[MIF] Starting to rank %ld items: %s \nAC request: %@", v13, 0x20u);
      sub_1000DCD10(v14);

      sub_10004E3D0(v15);

      v31 = v0;
    }

    else
    {

      v31 = v0;
    }

    v17 = 0;
    v41 = v31[20].isa;
    v128[0] = _swiftEmptyArrayStorage;
    v42 = isa & 0xC000000000000001;
    v43 = isa & 0xFFFFFFFFFFFFFF8;
    v125 = v41 + 32;
    isa = &selRef_signDetails;
    do
    {
      if (v42)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v43 + 16))
        {
          goto LABEL_48;
        }

        v44 = *(v125 + 8 * v17);
      }

      v45 = v44;
      v0 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if ([v44 sourceType] == 1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v2 = *(v128[0] + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v17;
    }

    while (v0 != v121);
    v123 = v42;
    v124 = v43;
    v46 = v128[0];
    if ((v128[0] & 0x8000000000000000) == 0 && (v128[0] & 0x4000000000000000) == 0)
    {
      v4 = *(v128[0] + 2);
      if (v4)
      {
        goto LABEL_38;
      }

LABEL_53:

      v17 = 0;
      v0 = v122;
      v122[27] = _swiftEmptyArrayStorage;
      v128[0] = _swiftEmptyArrayStorage;
      v4 = v124;
      do
      {
        if (v42)
        {
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *(v4 + 16))
          {
            goto LABEL_76;
          }

          v51 = *(v125 + 8 * v17);
        }

        v52 = v51;
        v53 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        if ([v51 sourceType] == 1)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v4 = v124;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v17;
      }

      while (v53 != v121);
      v4 = v128[0];
      if ((v128[0] & 0x8000000000000000) == 0 && (v128[0] & 0x4000000000000000) == 0)
      {
        v54 = *(v128[0] + 2);
        if (v54)
        {
          goto LABEL_66;
        }

LABEL_81:

        v53 = _swiftEmptyArrayStorage;
        v122[28] = _swiftEmptyArrayStorage;

        v0 = Logger.logObject.getter();
        LOBYTE(v54) = static os_log_type_t.debug.getter();
        v4 = v124;
        if (os_log_type_enabled(v0, v54))
        {
          v17 = swift_slowAlloc();
          isa = swift_slowAlloc();
          v128[0] = isa;
          *v17 = 134218242;
          if (!(_swiftEmptyArrayStorage >> 62))
          {
            v58 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_84;
          }

LABEL_132:
          v58 = _CocoaArrayWrapper.endIndex.getter();
LABEL_84:
          *(v17 + 4) = v58;

          *(v17 + 12) = 2080;
          sub_100014C84(0, &qword_1019167D8);
          v59 = Array.description.getter();
          v61 = sub_10004DEB8(v59, v60, v128);

          *(v17 + 14) = v61;
          _os_log_impl(&_mh_execute_header, v0, v54, "[MIF] Finished mapping %ld client entries: %s", v17, 0x16u);
          sub_10004E3D0(isa);
        }

        else
        {
        }

        sub_100014C84(0, &qword_1019167D8);
        v62 = Array._bridgeToObjectiveC()().super.isa;
        [(objc_class *)v120 setClientEntries:v62];

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v128[0] = v66;
          *v65 = 134218242;
          if (v53 >> 62)
          {
            v67 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v67 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v65 + 4) = v67;

          *(v65 + 12) = 2080;
          v68 = Array.description.getter();
          v70 = sub_10004DEB8(v68, v69, v128);

          *(v65 + 14) = v70;
          _os_log_impl(&_mh_execute_header, v63, v64, "[MIF] Finished mapping %ld server entries: %s", v65, 0x16u);
          sub_10004E3D0(v66);

          v4 = v124;
        }

        else
        {
        }

        v71 = v122[24];
        v72 = Array._bridgeToObjectiveC()().super.isa;
        [(objc_class *)v120 setServerEntries:v72];

        v73 = 0;
        v117 = (v71 + 8);
        v118 = _swiftEmptyDictionarySingleton;
        v122[29] = _swiftEmptyDictionarySingleton;
        v74 = &stru_10185C000;
        v0 = v119;
        v75 = v123;
        while (2)
        {
          v76 = v73;
          while (1)
          {
            if (v75)
            {
              v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v76 >= *(v4 + 16))
              {
                goto LABEL_124;
              }

              v77 = *(v125 + 8 * v76);
            }

            v78 = v77;
            v73 = (&v76->isa + 1);
            if (__OFADD__(v76, 1))
            {
              __break(1u);
LABEL_124:
              __break(1u);
              goto LABEL_125;
            }

            v79 = [v77 v74[197].attr];
            if (v79)
            {
              break;
            }

            v80 = v78;
            v81 = Logger.logObject.getter();
            v82 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              *v83 = 138412290;
              *(v83 + 4) = v80;
              *v84 = v80;
              v85 = v80;
              _os_log_impl(&_mh_execute_header, v81, v82, "PersonalizedCompoundItem must have an mifItemIdentifier when mapping to autocomplete section. %@", v83, 0xCu);
              sub_1000DCD10(v84);
              v74 = &stru_10185C000;
              v75 = v123;

              v4 = v124;
            }

            v76 = (v76 + 1);
            if (v73 == v121)
            {
              goto LABEL_114;
            }
          }

          v86 = v79;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v4 = UUID.uuidString.getter();
          v17 = v87;
          v53 = v78;
          v88 = v118;
          isa = swift_isUniquelyReferenced_nonNull_native();
          v128[0] = v118;
          v54 = sub_100297040(v4, v17);
          v90 = v118[2];
          v91 = (v89 & 1) == 0;
          v92 = v90 + v91;
          if (__OFADD__(v90, v91))
          {
            __break(1u);
            goto LABEL_131;
          }

          v93 = v89;
          if (v118[3] >= v92)
          {
            if (isa)
            {
              if ((v89 & 1) == 0)
              {
                goto LABEL_111;
              }
            }

            else
            {
              sub_10012D584();
              v88 = v128[0];
              if ((v93 & 1) == 0)
              {
                goto LABEL_111;
              }
            }

            goto LABEL_109;
          }

          sub_1001282CC(v92, isa);
          v88 = v128[0];
          v94 = sub_100297040(v4, v17);
          if ((v93 & 1) == (v95 & 1))
          {
            v54 = v94;
            if ((v93 & 1) == 0)
            {
LABEL_111:
              v88[(v54 >> 6) + 8] |= 1 << v54;
              v100 = (v88[6] + 16 * v54);
              *v100 = v4;
              v100[1] = v17;
              *(v88[7] + 8 * v54) = v53;
              v101 = v88[2];
              v102 = __OFADD__(v101, 1);
              v103 = v101 + 1;
              if (v102)
              {
                __break(1u);
              }

              else
              {
                v99 = v53;
                v88[2] = v103;
                v98 = v88;
LABEL_113:
                v75 = v123;
                v4 = v124;
                v74 = &stru_10185C000;
                (*v117)(v122[25], v122[23]);

                v118 = v98;
                v122[29] = v98;
                if (v73 != v121)
                {
                  continue;
                }

LABEL_114:

                v104 = Logger.logObject.getter();
                v105 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v104, v105))
                {
                  v106 = swift_slowAlloc();
                  v107 = swift_slowAlloc();
                  v128[0] = v107;
                  *v106 = 134218242;
                  *(v106 + 4) = v118[2];

                  *(v106 + 12) = 2080;
                  sub_100014C84(0, &qword_1019167D0);

                  v108 = Dictionary.Keys.description.getter();
                  v110 = v109;

                  v111 = sub_10004DEB8(v108, v110, v128);

                  *(v106 + 14) = v111;
                  _os_log_impl(&_mh_execute_header, v104, v105, "[MIF] %ld Items being ranked are: %s", v106, 0x16u);
                  sub_10004E3D0(v107);
                }

                else
                {
                }

                v112 = Logger.logObject.getter();
                v113 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v112, v113))
                {
                  v114 = swift_slowAlloc();
                  *v114 = 0;
                  _os_log_impl(&_mh_execute_header, v112, v113, "[MIF] Calling into MIF Autcomplete Ranker", v114, 2u);
                }

                v115 = v122[22];

                if (*(v115 + OBJC_IVAR____TtC4Maps30PersonalizedAutocompleteRanker_mifRanker))
                {
                  v126 = (&async function pointer to dispatch thunk of MapsIntelligenceSearchRankManager.rank(requestData:) + async function pointer to dispatch thunk of MapsIntelligenceSearchRankManager.rank(requestData:));
                  v116 = swift_task_alloc();
                  v122[30] = v116;
                  *v116 = v122;
                  v116[1] = sub_10027F144;

                  v126(v120);
                  return;
                }
              }

              __break(1u);
              return;
            }

LABEL_109:
            v96 = v88[7];
            v97 = *(v96 + 8 * v54);
            *(v96 + 8 * v54) = v53;

            v98 = v88;
            v99 = v53;
            goto LABEL_113;
          }

          break;
        }

LABEL_125:

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v54 = _CocoaArrayWrapper.endIndex.getter();
      if (!v54)
      {
        goto LABEL_81;
      }

LABEL_66:
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v54 & 0x8000000000000000) != 0)
      {
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v17 = 0;
      while (1)
      {
        v55 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *(v4 + 16))
          {
            goto LABEL_78;
          }

          v56 = *(v4 + 8 * v17 + 32);
        }

        v57 = v56;
        v128[0] = v56;
        sub_10027FB64(v128, v122 + 17, &v127);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v17;
        if (v55 == v54)
        {
          goto LABEL_81;
        }
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_53;
    }

LABEL_38:
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_129;
    }

    v47 = 0;
    v0 = (v46 & 0xC000000000000001);
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v0)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v47 >= *(v46 + 16))
        {
          goto LABEL_50;
        }

        v49 = *(v46 + 8 * v47 + 32);
      }

      v50 = v49;
      v128[0] = v49;
      sub_10027F7A4(v128, v122 + 16, &v127);

      v2 = v127;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v42 = v123;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v47;
      if (v48 == v4)
      {
        goto LABEL_53;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v17 = &v0[14];
  if (qword_101906728 != -1)
  {
LABEL_79:
    swift_once();
  }

  v18 = v0[21].isa;
  v19 = type metadata accessor for Logger();
  sub_100021540(v19, qword_101960018);
  v20 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[21].isa;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v20;
    *v25 = v23;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "[MIF] Not ranking anything because there are no items to rank. AC request: %@", v24, 0xCu);
    sub_1000DCD10(v25);
    v0 = v122;

    v27 = 15;
LABEL_16:

    goto LABEL_20;
  }

  v27 = 15;
LABEL_20:

  v32 = type metadata accessor for PersonalizedAutocompleteRankerResponse();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_sections] = v4;
  *&v33[OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_experimentMetadata] = 0;
  *&v33[OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_modelMetadata] = 0;
  *&v33[OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_responseStatus] = 0;
  *v17 = v33;
  v0[v27].isa = v32;
  v34 = objc_msgSendSuper2(v17, "init");

  v35 = v0[1].isa;

  v35(v34);
}

uint64_t sub_10027F144(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_10027F6AC;
  }

  else
  {

    v4 = sub_10027F268;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10027F268()
{
  v1 = v0[15].super_class;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    super_class = v0[15].super_class;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = super_class;
    *v6 = super_class;
    v7 = super_class;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MIF] Received response from MIF Autcomplete Ranker: %@", v5, 0xCu);
    sub_1000DCD10(v6);
  }

  v8 = v0[15].super_class;
  v9 = v0[14].super_class;

  v0[9].super_class = _swiftEmptyArrayStorage;
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  v11 = [(objc_class *)v8 resultSections];
  sub_100014C84(0, &qword_1019167E0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002810C0(v12, v9, v10, &v0[9].super_class);
  swift_bridgeObjectRelease_n();

  v13 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 134218498;
    swift_beginAccess();
    v18 = v0[9].super_class;
    if (v18 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v0[15].super_class;
    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v21 = [(objc_class *)v20 experimentMetadata];
    *(v16 + 14) = v21;
    *v17 = v21;
    *(v16 + 22) = 2112;
    v22 = [(objc_class *)v20 modelMetadata];
    *(v16 + 24) = v22;
    v17[1] = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "[MIF] Ranked response has %ld sections, (experiment: %@) and (model: %@", v16, 0x20u);
    sub_1000CE6B8(&qword_1019144F0);
    swift_arrayDestroy();
  }

  v23 = v0[15].super_class;
  v24 = v0[10].super_class;

  swift_beginAccess();
  v25 = v0[9].super_class;

  v26 = [(objc_class *)v23 experimentMetadata];
  v27 = [(objc_class *)v23 modelMetadata];
  v28 = [(objc_class *)v23 status];
  v29 = type metadata accessor for PersonalizedAutocompleteRankerResponse();
  v30 = objc_allocWithZone(v29);
  *&v30[OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_sections] = v25;
  *&v30[OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_experimentMetadata] = v26;
  *&v30[OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_modelMetadata] = v27;
  *&v30[OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_responseStatus] = v28;
  v0[6].receiver = v30;
  v0[6].super_class = v29;
  v31 = v26;
  v32 = v27;
  v33 = objc_msgSendSuper2(v0 + 6, "init");

  v34 = v0->super_class;

  return v34(v33);
}

uint64_t sub_10027F6AC()
{
  v1 = v0[32];
  _StringGuts.grow(_:)(35);
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v2._object = 0x8000000101229890;
  v2._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v2);
  v0[18] = v1;
  sub_1000CE6B8(&qword_101915AB0);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_10027F7A4@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = *a1;
  v15 = [v14 mifItemIdentifier];
  if (v15)
  {
    v16 = v15;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v13, v9, v6);
    v17 = [v14 mifClientACSuggestionEntry];
    if (v17)
    {
      v18 = v17;
      UUID.uuidString.getter();
      v19 = v6;
      v20 = objc_allocWithZone(GEOMIFAutocompleteBaseEntry);
      v21 = v18;
      v22 = String._bridgeToObjectiveC()();

      v23 = [v20 initWithItemIdentifier:v22 clientACSuggestionEntry:v21];

      v24 = [objc_allocWithZone(GEOMIFAutocompleteEntryClient) initWithAutocompleteBaseEntry:v23];
      v25 = [objc_allocWithZone(GEOMIFAutocompleteEntry) initWithClientAutocompleteEntryType:v24];

      result = (*(v7 + 8))(v13, v19);
      *a3 = v25;
      return result;
    }

    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v36._countAndFlagsBits = 0xD000000000000031;
    v36._object = 0x80000001012299C0;
    String.append(_:)(v36);
    v37 = [v14 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42 = v45;
    v43 = v46;
    sub_1002811C4();
    v34 = swift_allocError();
    *v44 = v42;
    *(v44 + 8) = v43;
    *(v44 + 16) = 1;
    swift_willThrow();
    result = (*(v7 + 8))(v13, v6);
  }

  else
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v45 = 0xD00000000000002BLL;
    v46 = 0x8000000101229990;
    v27 = [v14 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32 = v45;
    v33 = v46;
    sub_1002811C4();
    v34 = swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v33;
    *(v35 + 16) = 0;
    result = swift_willThrow();
  }

  *a2 = v34;
  return result;
}

void sub_10027FB64(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v64 - v12;
  v14 = *a1;
  v15 = [*a1 autocompleteObject];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100014C84(0, &qword_10190ED68);
  if (swift_dynamicCast())
  {
    v66 = a3;
    v16 = v69;
    v17 = [v69 geoStorageCompletion];
    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = v17;
    v19 = [v17 autocompleteEntry];

    if (v19)
    {
      v20 = [v14 mifItemIdentifier];
      if (v20)
      {
        v65 = v16;
        v21 = v20;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v7 + 32))(v13, v9, v6);
        v22 = [v14 mifClientACSuggestionEntry];
        if (v22)
        {
          v23 = v22;
          UUID.uuidString.getter();
          v24 = objc_allocWithZone(GEOMIFAutocompleteBaseEntry);
          v25 = v23;
          v26 = String._bridgeToObjectiveC()();

          v27 = [v24 initWithItemIdentifier:v26 clientACSuggestionEntry:v25];

          v28 = [objc_allocWithZone(GEOMIFAutocompleteEntryServer) initWithAutocompleteBaseEntry:v27 serverAutocompleteEntry:v19];
          v29 = [objc_allocWithZone(GEOMIFAutocompleteEntry) initWithServerAutocompleteEntryType:v28];

          (*(v7 + 8))(v13, v6);
          *v66 = v29;
          return;
        }

        v67 = 0;
        v68 = 0xE000000000000000;
        _StringGuts.grow(_:)(51);
        v55._countAndFlagsBits = 0xD000000000000031;
        v55._object = 0x8000000101229950;
        String.append(_:)(v55);
        v56 = [v14 description];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60._countAndFlagsBits = v57;
        v60._object = v59;
        String.append(_:)(v60);

        v61 = v67;
        v62 = v68;
        sub_1002811C4();
        v37 = swift_allocError();
        *v63 = v61;
        *(v63 + 8) = v62;
        *(v63 + 16) = 1;
        swift_willThrow();

        (*(v7 + 8))(v13, v6);
      }

      else
      {
        v67 = 0;
        v68 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        v67 = 0xD00000000000002BLL;
        v68 = 0x8000000101229920;
        v47 = [v14 description];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51._countAndFlagsBits = v48;
        v51._object = v50;
        String.append(_:)(v51);

        v52 = v67;
        v53 = v68;
        sub_1002811C4();
        v37 = swift_allocError();
        *v54 = v52;
        *(v54 + 8) = v53;
        *(v54 + 16) = 0;
        swift_willThrow();
      }
    }

    else
    {
      v67 = 0;
      v68 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v67 = 0xD00000000000002BLL;
      v68 = 0x80000001012298F0;
      v39 = [v14 description];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      v44 = v67;
      v45 = v68;
      sub_1002811C4();
      v37 = swift_allocError();
      *v46 = v44;
      *(v46 + 8) = v45;
      *(v46 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v67 = 0;
    v68 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v67 = 0xD000000000000024;
    v68 = 0x80000001012298C0;
    v30 = [v14 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35 = v67;
    v36 = v68;
    sub_1002811C4();
    v37 = swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = 0;
    swift_willThrow();
  }

  *a2 = v37;
}

void sub_10028016C(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v8 = [*a1 autocompleteEntries];
  sub_100014C84(0, &qword_1019167D8);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100280FC0(v9, a2, (a3 + 16));

  v10 = [v7 sectionHeader];
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  swift_beginAccess();
  v11 = objc_allocWithZone(AutocompleteSection);
  sub_100014C84(0, &qword_1019167D0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithTitle:v10 items:isa isQuerySuggestionsSection:0];

  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100021540(v14, qword_101960018);

  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 134218242;
    swift_beginAccess();
    v20 = *(a3 + 16);
    if (v20 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v21;

    *(v18 + 12) = 2080;
    v22 = [v15 items];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = Array.description.getter();
    v25 = v24;

    v26 = sub_10004DEB8(v23, v25, &v28);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "[MIF] Intialized ranked AC section with %ld items: %s", v18, 0x16u);
    sub_10004E3D0(v19);
  }

  else
  {
  }

  v27 = v15;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_100280528(id *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = [*a1 type];
  if (v6 == 2)
  {
    v25 = [v5 serverEntry];
    if (v25)
    {
      v16 = v25;
      v26 = [v25 baseEntry];
      v27 = [v26 itemIdentifier];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      if (*(a2 + 16))
      {
        v22 = sub_100297040(v28, v30);
        v32 = v31;

        if (v32)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100021540(v41, qword_101960018);
    v42 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_35;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v42;
    *v12 = v42;
    v43 = v42;
    v14 = "%@ must have a serverEntry when the type is set to server";
    goto LABEL_34;
  }

  if (v6 != 1)
  {
    if (v6)
    {
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100021540(v35, qword_101960018);
      v36 = v5;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_35;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v36;
      *v12 = v36;
      v37 = v36;
      v14 = "%@ type is default unnamed case";
    }

    else
    {
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100021540(v7, qword_101960018);
      v8 = v5;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_35;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      v14 = "%@ must have a valid type";
    }

LABEL_34:
    _os_log_impl(&_mh_execute_header, v9, v10, v14, v11, 0xCu);
    sub_1000DCD10(v12);

LABEL_35:

    return;
  }

  v15 = [v5 clientEntry];
  if (!v15)
  {
LABEL_24:
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100021540(v38, qword_101960018);
    v39 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_35;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v39;
    *v12 = v39;
    v40 = v39;
    v14 = "%@ must have a clientEntry when the type is set to client";
    goto LABEL_34;
  }

  v16 = v15;
  v17 = [v15 baseEntry];
  v18 = [v17 itemIdentifier];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (!*(a2 + 16))
  {

LABEL_23:

    goto LABEL_24;
  }

  v22 = sub_100297040(v19, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v33 = *(*(a2 + 56) + 8 * v22);
  swift_beginAccess();
  v34 = v33;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t sub_100280C2C(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  sub_100014C84(0, &qword_1019167D0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_100280D24;

  return sub_10027DF1C(v7, a2);
}

uint64_t sub_100280D24(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100280F00()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10003AC4C;

  return sub_100280C2C(v2, v3, v5, v4);
}

void sub_100280FC0(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_100280528(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1002810C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_10028016C(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

unint64_t sub_1002811C4()
{
  result = qword_1019167E8;
  if (!qword_1019167E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019167E8);
  }

  return result;
}

uint64_t sub_1002814FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_viewModel);
  KeyPath = swift_getKeyPath();
  *(a1 + 24) = &type metadata for RouteAnnotationView;
  *(a1 + 32) = sub_100281944();
  *a1 = v3;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = 0;
}

id sub_100281570()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  result = [v0 cardPresentationController];
  if (result)
  {
    v2 = result;
    [result setMaximumLayoutForEdgeInsetUpdate:0];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100281C00(&qword_101916840, type metadata accessor for RouteAnnotationViewModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *sub_100281754@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UIHostingControllerSizingOptions();
  sub_100281C00(&qword_10190DE70, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_1000CE6B8(&unk_10190B9B0);
  sub_100124984();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = 0;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 2;
  *(a1 + result[7]) = 1;
  return result;
}

uint64_t sub_10028186C()
{
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_onDismiss));
}

unint64_t sub_100281944()
{
  result = qword_101916838;
  if (!qword_101916838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916838);
  }

  return result;
}

uint64_t sub_100281998@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100281C00(&qword_101916840, type metadata accessor for RouteAnnotationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100281A84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100281C00(&qword_101916840, type metadata accessor for RouteAnnotationViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100281C00(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100281C48(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_onDismiss];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_routeAnnotation] = a1;
  type metadata accessor for RouteAnnotationViewModel();
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  v7 = a1;
  ObservationRegistrar.init()();
  sub_1005072D8(a1);
  *&v2[OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_viewModel] = v6;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

uint64_t type metadata accessor for CarUserGuideItemRowViewModel()
{
  result = qword_1019168A0;
  if (!qword_1019168A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100281DA4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100281E58();
    if (v1 <= 0x3F)
    {
      sub_10017F3EC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UserGuideItem();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100281E58()
{
  if (!qword_10190E0A8)
  {
    sub_1000D6664(&unk_101921E30);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10190E0A8);
    }
  }
}

uint64_t sub_100281F04()
{
  v1 = *(v0 + *(type metadata accessor for CarUserGuideItemRowViewModel() + 28)) + OBJC_IVAR____TtC4Maps13UserGuideItem_type;
  v2 = *v1;
  if ((*(v1 + 8) & 1) == 0)
  {
    v8 = [v2 name];
    if (v8)
    {
      v4 = v8;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v2;
      v7 = 0;
      goto LABEL_6;
    }

    v9 = v2;
    v10 = 0;
LABEL_9:
    sub_1000F0B8C(v9, v10);
    return 0;
  }

  v3 = [swift_unknownObjectRetain() name];
  if (!v3)
  {
    v9 = v2;
    v10 = 1;
    goto LABEL_9;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v2;
  v7 = 1;
LABEL_6:
  sub_1000F0B8C(v6, v7);

  return v5;
}

void *sub_100281FF8()
{
  v1 = type metadata accessor for RichTextType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + *(type metadata accessor for CarUserGuideItemRowViewModel() + 24) + 8))
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000CE6B8(&unk_1019157F0);
  v5 = swift_allocObject();
  v8 = xmmword_1011E1D30;
  *(v5 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v6 = swift_allocObject();
  *(v6 + 16) = v8;
  (*(v2 + 104))(v4, enum case for RichTextType.line(_:), v1);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
  (*(v2 + 8))(v4, v1);
  result = v5;
  *(v5 + 32) = v6;
  return result;
}

uint64_t sub_10028227C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10028235C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1002823F0(uint64_t result, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  v5 = *v4;
  v6 = v4[1];
  *v4 = result;
  v4[1] = a2;
  if (a2)
  {
    if (v6)
    {
      v7 = v5 == result && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v6)
  {
    return result;
  }

  sub_100282F08();
LABEL_11:
}

void sub_1002824A4(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = *&a1[*a4];
  v9 = v8;
  v10 = a3;
  v13 = a1;
  sub_100283E90(a4);
  v11 = *&a1[v7];
  *&a1[v7] = a3;
  v12 = v10;

  sub_100282558(v8, a4);
}

void sub_100282558(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + *a2);
  if (v5 && (v6 = v5, v7 = String._bridgeToObjectiveC()(), [v6 addObserver:v2 forKeyPath:v7 options:0 context:0], v6, v7, (v8 = *(v2 + v4)) != 0) && (v9 = v8, v10 = String._bridgeToObjectiveC()(), objc_msgSend(v9, "addObserver:forKeyPath:options:context:", v2, v10, 0, 0), v9, v10, (v11 = *(v2 + v4)) != 0))
  {
    if (a1)
    {
      sub_100014C84(0, &unk_10191ED40);
      v12 = v11;
      v13 = a1;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  sub_100282F08();
}

id sub_100282730()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_title];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_customTitleAXID];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v0[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_leadingButton] = 0;
  *&v0[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_trailingButton] = 0;
  v0[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_showTitle] = 1;
  v5 = AnyView.init<A>(_:)();
  v6 = objc_allocWithZone(sub_1000CE6B8(&qword_101911790));
  v10 = v5;
  *&v1[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_headerContainerVC] = UIHostingController.init(rootView:)();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ModalCardHeaderView();
  v7 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1002829B8();

  return v7;
}

id sub_100282864(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_title];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_customTitleAXID];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_leadingButton] = 0;
  *&v4[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_trailingButton] = 0;
  v4[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_showTitle] = 1;
  v13 = AnyView.init<A>(_:)();
  v14 = objc_allocWithZone(sub_1000CE6B8(&qword_101911790));
  v18 = v13;
  *&v5[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_headerContainerVC] = UIHostingController.init(rootView:)();
  v17.receiver = v5;
  v17.super_class = type metadata accessor for ModalCardHeaderView();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_1002829B8();

  return v15;
}

id sub_1002829B8()
{
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  v2 = __chkstk_darwin(v1 - 8);
  v3 = OBJC_IVAR____TtC4Maps19ModalCardHeaderView_headerContainerVC;
  result = [*&v0[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_headerContainerVC] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [*&v0[v3] view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor:v7];

  result = [*&v0[v3] view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  [v0 addSubview:result];

  sub_1000CE6B8(&qword_101908400);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1011E5C00;
  result = [*&v0[v3] view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  v11 = [result leadingAnchor];

  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v9 + 32) = v13;
  result = [*&v0[v3] view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v15 = [result trailingAnchor];

  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v9 + 40) = v17;
  result = [*&v0[v3] view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = result;
  v19 = [result topAnchor];

  v20 = [v0 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v9 + 48) = v21;
  result = [*&v0[v3] view];
  if (result)
  {
    v22 = result;
    v23 = objc_opt_self();
    v24 = [v22 bottomAnchor];

    v25 = [v0 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    *(v9 + 56) = v26;
    sub_100014C84(0, &qword_10190B720);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v23 activateConstraints:isa];

    v28 = *&v0[v3];
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();

    return [v0 invalidateIntrinsicContentSize];
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100282F08()
{
  v69 = sub_1000CE6B8(&qword_101916940);
  __chkstk_darwin(v69);
  v67 = &v56 - v1;
  v62 = type metadata accessor for CardHeaderSize();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v56 - v5;
  v65 = type metadata accessor for CardHeaderTextViewModel();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v56 - v8;
  v9 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  __chkstk_darwin(v18);
  v20 = (&v56 - v19);
  v21 = *(v0 + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_title + 8);
  if (v21)
  {
    v57 = *(v0 + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_title);
    v56 = v21;
  }

  else
  {
    v57 = 0;
    v56 = 0xE000000000000000;
  }

  v22 = *(v0 + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_customTitleAXID + 8);
  v71 = (&v56 - v19);
  if (v22)
  {
    *v20 = *(v0 + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_customTitleAXID);
    v20[1] = v22;
    v23 = enum case for MapsDesignAccessibilityString.custom(_:);
    v24 = type metadata accessor for MapsDesignAccessibilityString();
    v25 = *(v24 - 8);
    v26 = v23;
    v20 = v71;
    (*(v25 + 104))(v71, v26, v24);
    (*(v25 + 56))(v20, 0, 1, v24);
  }

  else
  {
    v24 = type metadata accessor for MapsDesignAccessibilityString();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  }

  sub_10018EE50(v20, v17);

  static HorizontalAlignment.center.getter();
  v27 = enum case for MapsDesignAccessibilityString.subtitleLabel(_:);
  type metadata accessor for MapsDesignAccessibilityString();
  v28 = *(v24 - 8);
  v29 = *(v28 + 104);
  v29(v14, v27, v24);
  v30 = *(v28 + 56);
  v30(v14, 0, 1, v24);
  v29(v11, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v24);
  v30(v11, 0, 1, v24);
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  v31 = *(v0 + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_leadingButton);
  if (v31)
  {
    v32 = [*(v0 + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_leadingButton) accessibilityIdentifier];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1000CE6B8(&qword_10191D770);
    type metadata accessor for CardButtonViewModel();
    *(swift_allocObject() + 16) = xmmword_1011E1D30;
    [v31 isEnabled];
    *(swift_allocObject() + 16) = v31;
    v34 = v31;
    CardButtonViewModel.init(systemImageName:title:tintColor:enabled:systemImagePadding:fontPointSize:fontWeight:axID:showChevron:height:helpText:action:)();
  }

  v35 = *(v0 + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_trailingButton);
  if (v35)
  {
    v36 = [*(v0 + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_trailingButton) accessibilityIdentifier];
    if (v36)
    {
      v37 = v36;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v38;
    }

    else
    {
      v56 = 0xEE006E6F74747542;
      v57 = 0x676E696C69617254;
    }

    sub_1000CE6B8(&qword_10191D770);
    type metadata accessor for CardButtonViewModel();
    *(swift_allocObject() + 16) = xmmword_1011E1D30;
    v39 = [objc_opt_self() systemBlueColor];
    [v35 isEnabled];
    *(swift_allocObject() + 16) = v35;
    v40 = v35;
    CardButtonViewModel.init(systemImageName:title:tintColor:enabled:systemImagePadding:fontPointSize:fontWeight:axID:showChevron:height:helpText:action:)();
  }

  v41 = v63;
  v42 = v70;
  v43 = v65;
  (*(v63 + 16))(v58, v70, v65);
  (*(v61 + 104))(v60, enum case for CardHeaderSize.medium(_:), v62);
  v44 = v64;
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  v45 = v66;
  v46 = v68;
  (*(v66 + 16))(v59, v44, v68);
  v47 = v67;
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = &v47[*(sub_1000CE6B8(&qword_101916948) + 36)];
  *v49 = sub_1000CD948;
  *(v49 + 1) = 0;
  *(v49 + 2) = sub_100283C54;
  *(v49 + 3) = v48;
  *&v47[*(sub_1000CE6B8(&qword_101916950) + 36)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v50 = &v47[*(v69 + 36)];
  v51 = v74;
  *v50 = v73;
  *(v50 + 1) = v51;
  *(v50 + 2) = v75;
  sub_100283C5C();
  v52 = AnyView.init<A>(_:)();
  v53 = *(v0 + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_headerContainerVC);
  v72 = v52;
  v54 = v53;

  dispatch thunk of UIHostingController.rootView.setter();

  (*(v45 + 8))(v44, v46);
  (*(v41 + 8))(v42, v43);
  return sub_100024F64(v71, &unk_101910FC0);
}

void sub_100283ACC(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = &Strong[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize];
    v5 = *&Strong[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize];
    v6 = *&Strong[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize + 8];
    *v4 = v1;
    v4[1] = v2;
    if (v1 != v5 || v2 != v6)
    {
      v8 = Strong;
      [Strong invalidateIntrinsicContentSize];
      Strong = v8;
    }
  }
}

id sub_100283B78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModalCardHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100283C5C()
{
  result = qword_101916958;
  if (!qword_101916958)
  {
    sub_1000D6664(&qword_101916940);
    sub_100283CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916958);
  }

  return result;
}

unint64_t sub_100283CE8()
{
  result = qword_101916960;
  if (!qword_101916960)
  {
    sub_1000D6664(&qword_101916950);
    sub_100283D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916960);
  }

  return result;
}

unint64_t sub_100283D74()
{
  result = qword_101916968;
  if (!qword_101916968)
  {
    sub_1000D6664(&qword_101916948);
    sub_10018EEC0();
    sub_100283E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101916968);
  }

  return result;
}

unint64_t sub_100283E00()
{
  result = qword_10190B750;
  if (!qword_10190B750)
  {
    sub_1000D6664(&qword_10190B758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B750);
  }

  return result;
}

void sub_100283E90(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
    v5 = String._bridgeToObjectiveC()();
    [v4 removeObserver:v1 forKeyPath:v5];

    v6 = *(v1 + v2);
    if (v6)
    {
      v7 = v6;
      v8 = String._bridgeToObjectiveC()();
      [v7 removeObserver:v1 forKeyPath:v8];
    }
  }
}

id sub_100284064(void *a1)
{
  [a1 unregisterObserver:v1];
  sub_1002862E8();
  sub_10028E718();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
  }

  v6 = *(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession);

  return [v6 registerObserver:v1];
}

void *sub_100284154()
{
  v1 = [v0 carChromeViewController];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_1000CE6B8(&qword_101908400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E47B0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E5C00;
  result = [v2 itemRepresentingStatusBanner];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v4 + 32) = result;
  result = [v2 itemRepresentingOverlays];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v4 + 40) = result;
  result = [v2 itemRepresentingAlternateRoutes];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v4 + 48) = result;
  result = [v2 itemRepresentingMapControls];
  if (result)
  {
    *(v4 + 56) = result;
    sub_100014C84(0, &qword_101916D68);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [objc_opt_self() sequenceWithItems:isa options:5];

    *(v3 + 32) = v7;
    return v3;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_100284444()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = Strong;
  v2 = [Strong searchPinsManager];

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = [v2 routeStartEndItemSource];
  if (v3)
  {
    v4 = v3;
    sub_1000CE6B8(&qword_101908400);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1011E47B0;
    v6 = v5;
    *(v5 + 32) = v4;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  return v6;
}

Class sub_10028453C(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4)
{
  v6 = a1;
  a3();

  sub_100014C84(0, a4);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

id sub_1002845C0(void *a1, void *a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v10[4] = sub_10028E978;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100039C64;
  v10[3] = &unk_10160E5B8;
  v6 = _Block_copy(v10);
  v7 = a1;
  v8 = v2;

  [a2 addPreparation:v6];
  _Block_release(v6);
  return [objc_opt_self() captureUserAction:21 target:155 value:0];
}

void sub_1002846CC(void *a1, uint64_t a2)
{
  v4 = [a1 mapView];
  if (v4)
  {
    v5 = v4;
    [v4 _setApplicationState:1];
  }

  sub_1002862E8();
  sub_10028E718();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
  }

  [*(a2 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) registerObserver:a2];
  v10 = [a1 searchPinsManager];
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 registerPOIShapeLoadingObserver:a2];

  v12 = [a1 personalizedItemManager];
  if (!v12)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 addObserver:a2];
}

void sub_1002848BC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isNavigationAidedDrivingEnabled];

    *(a1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_navigationAidedDrivingEnabled) = v4;
    sub_100286588();
    sub_1002849B0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002849B0()
{
  if (!MapsFeature_IsEnabled_EVRouting())
  {
    return;
  }

  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v1 = v0;
  v2 = [v0 platformController];

  if (!v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = [v2 auxiliaryTasksManager];

  v3 = [v7 vehicleDisambiguationTask];
  if (v3)
  {
    v4 = v3;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      objc_opt_self();
      [v4 displayDisambiguationPromptIfNeededFromChromeViewController:swift_dynamicCastObjCClassUnconditional()];

      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_7:
}

uint64_t sub_100284B40(uint64_t result)
{
  v1 = OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_externalDeviceObserver;
  v2 = *(result + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_externalDeviceObserver);
  if (v2)
  {
    v3 = result;
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver:v2];

    swift_unknownObjectRelease();
    *(v3 + v1) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100284CE4(void *a1, uint64_t a2)
{
  result = [a1 searchPinsManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [result unregisterPOIShapeLoadingObserver:a2];

  result = [a1 personalizedItemManager];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  [result removeObserver:a2];

  v7 = *(a2 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession);

  return [v7 unregisterObserver:a2];
}

void sub_100284F1C()
{
  if ((*(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_userInteractedWithMap) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_userInteractedWithMap) = 1;
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100021540(v1, qword_101960000);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "User started interacting with map, will suppress camera updates", v4, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setNeedsUpdateComponent:@"mapcontrols" animated:1];
    }
  }
}

void sub_1002850BC()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_userInteractedWithMap) == 1)
  {
    *(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_userInteractedWithMap) = 0;
    *(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_loggedFirstCameraSuppress) = 0;
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100021540(v1, qword_101960000);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Clearing user interacted state, will allow camera updates", v4, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setNeedsUpdateComponent:@"mapcontrols" animated:1];
    }
  }
}

uint64_t sub_100285308(void *a1)
{
  v5 = *(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_navigationAidedDrivingEnabled);
  v6 = NSNotFound.getter();
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v2 = v6;
  if ((v5 & 1) == 0)
  {
    v7 = [*(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) routeCollectionForTransportType:1];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 routes];
      sub_100014C84(0, &qword_101916D08);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v2 = [v8 currentRouteIndex];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v3 = [Strong searchPinsManager];

        if (v3)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12 && (v13 = v12, v14 = [v12 personalizedItemManager], v13, v14))
          {
            v25 = v8;
            v26 = v14;
            if (v5 >> 62)
            {
              goto LABEL_24;
            }

            for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
            {
              v16 = 0;
              while (1)
              {
                if ((v5 & 0xC000000000000001) != 0)
                {
                  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v16 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_23;
                  }

                  v17 = *(v5 + 8 * v16 + 32);
                }

                v18 = v17;
                v19 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                v20 = v3;
                result = [v3 routeStartEndItemSource];
                if (!result)
                {
                  __break(1u);
                  return result;
                }

                v22 = result;
                [v18 updateWaypointStyleAttributesWithItemSource:result personalizedItemManager:v26];

                ++v16;
                v3 = v20;
                if (v19 == i)
                {
                  goto LABEL_25;
                }
              }

LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
LABEL_24:
              ;
            }

LABEL_25:

            v23 = v26;
          }

          else
          {
            v23 = v3;
            v3 = v8;
          }

          v8 = v3;
        }
      }
    }
  }

  sub_100014C84(0, &qword_101916D08);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setRoutes:isa];

  [a1 setSelectedRouteIndex:v2];
  [a1 setAlternateRoutesEnabled:1];
  [a1 setStyle:1];
  return 1;
}

id sub_100285688()
{
  v1 = [*(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) routeCollectionForTransportType:1];
  if (!v1)
  {
    return [objc_allocWithZone(RouteAnnotationsConfiguration) init];
  }

  v2 = v1;
  v3 = [v1 routes];
  sub_100014C84(0, &qword_101916D08);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v2 currentRouteIndex];
  v5 = objc_allocWithZone(RouteAnnotationsConfiguration);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithRoutes:isa selectedRouteIndex:v4];

  return v7;
}

void sub_1002857A8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_userInteractedWithMap) == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_loggedFirstCameraSuppress) == 1)
    {
      if (qword_101906720 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_100021540(v2, qword_101960000);
      v28 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();
    }

    else
    {
      if (qword_101906720 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100021540(v16, qword_101960000);
      v28 = Logger.logObject.getter();
      v3 = static os_log_type_t.info.getter();
    }

    v17 = v3;
    if (os_log_type_enabled(v28, v3))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v28, v17, "Will suppress camera update, user has interacted with map since last update", v18, 2u);
    }

    goto LABEL_29;
  }

  if ((*(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_navigationAidedDrivingEnabled) & 1) != 0 || (v5 = [*(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) routeCollectionForTransportType:1]) == 0)
  {
    v8 = 0;
  }

  else
  {
    v6 = v5;
    v7 = [v5 routes];

    sub_100014C84(0, &qword_101916D08);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v28 = [Strong mapCameraController];

    if (v28)
    {
      if (v8)
      {
        if (v8 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_15;
          }
        }

        else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_15:
          if (qword_101906720 != -1)
          {
            swift_once();
          }

          v11 = type metadata accessor for Logger();
          sub_100021540(v11, qword_101960000);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            *v14 = 0;
            _os_log_impl(&_mh_execute_header, v12, v13, "Recentering on routes", v14, 2u);
          }

          sub_100014C84(0, &qword_101916D08);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v28 frameRoutes:isa includeCompassInset:0 animated:a1 & 1 completion:0];
          goto LABEL_20;
        }
      }

      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v20 = v19;
        v21 = [v19 searchPinsManager];

        if (v21)
        {
          v22 = [v21 startPOIShapeIfLoaded];
          if (v22)
          {
            v23 = v22;
            v24 = [v21 endPOIShapesIfLoaded];
            if (!v24)
            {
              swift_unknownObjectRelease();

              goto LABEL_29;
            }

            isa = v24;
            sub_1000CE6B8(&unk_101916D58);
            v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            if (v25 >> 62)
            {
              v26 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v26 < 1)
            {
              swift_unknownObjectRelease();

LABEL_20:
              v15 = isa;
LABEL_30:

              return;
            }

            swift_unknownObjectRetain();
            [v28 frameApproximateRouteFromStartPOIShape:v23 toEndPOIShapes:isa animated:a1 & 1 completion:0];
            swift_unknownObjectRelease_n();
          }
        }
      }

LABEL_29:
      v15 = v28;
      goto LABEL_30;
    }
  }
}

_UNKNOWN **sub_100285C80()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard))
  {
    return &off_1016005A0;
  }

  if (*(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoriesCard))
  {
    return &off_1016005D0;
  }

  return &off_101600600;
}

void sub_100285D24(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  if (a2 == 0x694C736574756F72 && a3 == 0xEA00000000007473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (a1)
    {
      v7 = [*&v3[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession] destinationName];
      if (!v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = String._bridgeToObjectiveC()();
      }

      [a1 setTitle:v7];

      [a1 setContent:*&v3[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routesList]];
      v8 = [objc_opt_self() layoutInCorner:1 primaryAxis:1 pinnedEdges:0 primaryAxisFillMode:0 secondaryAxisFillMode:2];
      if (v8)
      {
        v9 = v8;
        [a1 setLayout:v8];

        [a1 setAccessoryType:1];
        v10 = [objc_opt_self() sharedInstance];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 destinationHandoffEnabled];

          if (v12)
          {
            v13 = [objc_allocWithZone(CarCardAccessory) initWithType:3];
            v14 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_10028E970;
            aBlock[5] = v14;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100039C64;
            aBlock[3] = &unk_10160E568;
            v15 = _Block_copy(aBlock);

            [v13 setHandler:v15];
            _Block_release(v15);
            [a1 setSecondaryAccessory:v13];
          }

          return;
        }

        goto LABEL_32;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2 == 0x69726F7369766461 && a3 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v16 = *&v3[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoriesCard]) != 0)
  {
    v22 = v16;
    v3 = [v22 title];
    if (!a1)
    {
LABEL_33:

      __break(1u);
      goto LABEL_34;
    }

    [a1 setTitle:v3];
  }

  else
  {
    if ((a2 != 0x79726F7369766461 || a3 != 0xEC0000006D657449) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return;
    }

    v17 = *&v3[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard];
    if (!v17)
    {
      return;
    }

    if (!a1)
    {
LABEL_34:
      __break(1u);
      return;
    }

    v22 = v17;
    v18 = [v22 advisoryItem];
    v19 = [v18 titleString];

    if (v19)
    {
      v20 = [v19 stringWithDefaultOptions];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v21 = String._bridgeToObjectiveC()();

    [a1 setTitle:v21];
  }

  [a1 setContent:v22];
  [a1 setAccessoryType:1];
}

void sub_1002861A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100287C48();
  }
}

void sub_1002862E8()
{
  v1 = OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession;
  v2 = [*(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) routeCollectionResultForTransportType:1];
  if (!v2)
  {
    v16 = 0;
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [v2 error];
  if (v4)
  {
    v5 = v4;
    v6 = [*(v0 + v1) resolvedWaypoints];
    v7 = [v6 origin];

    v8 = [v7 mapItemStorage];
    v9 = [*(v0 + v1) resolvedWaypoints];
    v10 = [v9 destination];

    v11 = [v10 mapItemStorage];
    v12 = objc_allocWithZone(RoutePlanningError);
    v13 = v8;
    v14 = v11;
    v15 = _convertErrorToNSError(_:)();
    v16 = [v12 initWithError:v15 transportType:1 origin:v13 destination:v14];
  }

  else
  {
    v16 = 0;
  }

  if ([v3 value])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (!*(&v25 + 1))
  {
    sub_100024F64(v26, &unk_101908380);
    goto LABEL_14;
  }

  sub_100014C84(0, &unk_101916D20);
  v17 = swift_dynamicCast();
  v18 = v23;
  if (!v17)
  {
    v18 = 0;
  }

LABEL_15:
  v19 = *(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routesList);
  v20 = *(v19 + OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_routeCollection);
  *(v19 + OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_routeCollection) = v18;
  v21 = v18;

  sub_1002888B4();
  v22 = *(v19 + OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_error);
  *(v19 + OBJC_IVAR____TtC4MapsP33_9D7EA3A8BD90A11521A12E311756C9B827CarRoutesListViewController_error) = v16;
}

void sub_100286588()
{
  v1 = OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_externalDeviceObserver;
  if (!*(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_externalDeviceObserver))
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = [objc_opt_self() sharedInstance];
    v4 = [objc_opt_self() mainQueue];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_10028E710;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1004DFC88;
    v8[3] = &unk_10160E540;
    v6 = _Block_copy(v8);

    v7 = [v2 addObserverForName:@"MapsExternalDeviceUpdated" object:v3 queue:v4 usingBlock:v6];
    _Block_release(v6);

    *(v0 + v1) = v7;
    swift_unknownObjectRelease();
  }
}

void sub_100286728()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() sharedInstance];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isNavigationAidedDrivingEnabled];

      v1[OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_navigationAidedDrivingEnabled] = v4;
      sub_1002862E8();
      sub_10028E718();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        [v5 setNeedsUpdateComponent:@"cards" animated:1];
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        [v7 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100286838(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession;
  v4 = [*(v1 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) routeCollectionForTransportType:1];
  if (!v4)
  {
    goto LABEL_12;
  }

  v16 = v4;
  v5 = [v4 routes];
  sub_100014C84(0, &qword_101916D08);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 <= a1)
  {

LABEL_12:
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100021540(v13, qword_101960000);
    v16 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v16, v14, "cannot update selected route index because we have no route collection or the index is out of bounds %ld", v15, 0xCu);
    }

    goto LABEL_16;
  }

  v8 = v1;
  if (qword_101906720 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100021540(v9, qword_101960000);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v10, v11, "updating selected route index %ld", v12, 0xCu);
  }

  if (a1 < 0)
  {
    __break(1u);
    return;
  }

  [*(v8 + v3) setSelectedRouteIndex:a1 forTransportType:1];
LABEL_16:
}

void sub_100286B2C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) routeCollectionForTransportType:1];
  if (v1)
  {
    v2 = v1;
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100021540(v3, qword_101960000);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "will prompt for simulation for current route collection", v6, 2u);
    }

    v7 = objc_opt_self();
    v8 = [v2 currentRoute];
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    aBlock[4] = sub_10028E708;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100287028;
    aBlock[3] = &unk_10160E518;
    v10 = _Block_copy(aBlock);
    v11 = v2;

    [v7 promptIfNeededForSimulationForRoute:v8 navigationTracePlayback:0 continueWithOptions:v10];
    _Block_release(v10);
  }

  else
  {
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100021540(v12, qword_101960000);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "no current route collection; will not start nav", v14, 2u);
    }
  }
}