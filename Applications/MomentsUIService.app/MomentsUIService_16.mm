uint64_t sub_100196B1C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for implicit closure #8 in implicit closure #7 in MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:)()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t partial apply for implicit closure #6 in implicit closure #5 in MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:)()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t specialized MOSuggestionCollectionView.collectionView(_:didSelectItemAt:)(char *a1)
{
  result = (*((swift_isaMask & *v1) + 0x100))();
  if (result)
  {
    v4 = (*(*result + 752))(a1);

    if (v4)
    {
      v5 = (*((swift_isaMask & *v1) + 0x118))(result);
      if (v5)
      {
        v6 = v5;
        if ((*(*v4 + 424))())
        {
          MOSuggestionCollectionView.presentInterstitialFor(cellViewModel:indexPath:fromNotification:)(v4, a1, 0);
        }

        else
        {
          v7 = IndexPath.row.getter();
          (*(*v4 + 528))(v7, 0, 0, 1, v6);
        }
      }
    }
  }

  return result;
}

void specialized MOSuggestionCollectionView.collectionView(_:layout:referenceSizeForHeaderInSection:)(void *a1, uint64_t a2)
{
  v190 = a2;
  v4 = type metadata accessor for IndexPath();
  v189 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Tips.Status();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v184 - v13;
  v15 = (*((swift_isaMask & *v2) + 0x100))(v12);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = (*((swift_isaMask & *v2) + 0x118))();
  if (!v17)
  {
    goto LABEL_38;
  }

  v18 = *(v2 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_tipCoordinator);
  if (!v18)
  {
    v31 = v17;

    return;
  }

  v185 = a1;
  v184 = v2;
  v187 = v17;
  v19 = *(*v16 + 616);
  v186 = v18;

  v188 = v16;
  if ((v19(v20) & 1) == 0)
  {
LABEL_7:
    if ((*(*v188 + 688))())
    {
      IndexPath.init(row:section:)();
      v23 = String._bridgeToObjectiveC()();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v25 = v185;
      v26 = [v185 supplementaryViewForElementKind:v23 atIndexPath:isa];

      (*(v189 + 8))(v6, v4);
      if (v26)
      {
        v27 = v26;
        [v25 frame];
        Width = CGRectGetWidth(v194);
        LODWORD(v29) = 1148846080;
        LODWORD(v30) = 1112014848;
        [v27 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:{v29, v30}];
      }

      v94 = v184;
      v95 = [objc_allocWithZone(UILabel) init];
      [v94 frame];
      v96 = CGRectGetWidth(v198);
      v97 = objc_opt_self();
      v98 = [v97 preferredFontForTextStyle:UIFontTextStyleTitle3];
      v99 = UIFont.withWeight(_:)(UIFontWeightRegular).super.isa;

      [(objc_class *)v99 pointSize];
      v101 = v100;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_So6UIFontCtGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002A48B0;
      *(inited + 32) = NSFontAttributeName;
      v103 = NSFontAttributeName;
      *(inited + 40) = [v97 systemFontOfSize:v101 weight:UIFontWeightBold];
      v104 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo21NSAttributedStringKeya_So6UIFontCtMd);
      *&v191 = 0;
      *(&v191 + 1) = 0xE000000000000000;
      String.init<A>(_:)();
      v105 = String._bridgeToObjectiveC()();

      specialized _dictionaryUpCast<A, B, C, D>(_:)(v104);

      type metadata accessor for NSAttributedStringKey(0);
      _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      v106 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v105 boundingRectWithSize:3 options:v106 attributes:0 context:{v96, 3.40282347e38}];
      v108 = v107;
      v110 = v109;
      v112 = v111;
      v114 = v113;

      v199.origin.x = v108;
      v199.origin.y = v110;
      v199.size.width = v112;
      v199.size.height = v114;
      CGRectGetHeight(v199);

      return;
    }

    v32 = v186;
    v33 = (*v186 + 272);
    v34 = *v33;
    if ((*v33)(1))
    {
      type metadata accessor for MOSuggestionPrivacyTipCell();
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v36 = v187;
      v37 = (*((swift_isaMask & *v187) + 0x1B0))();
      v38 = (*((swift_isaMask & *v36) + 0x1C8))();
      v40 = v39;
      (*(*v32 + 168))(&v191);
      type metadata accessor for MOSuggestionPrivacyTipCellModel();
      v41 = swift_allocObject();
      *(v41 + 88) = 0u;
      *(v41 + 72) = 0u;
      *(v41 + 104) = 0;
      *(v41 + 32) = v37 & 1;
      *(v41 + 40) = 0x74756F79616CLL;
      *(v41 + 48) = 0xE600000000000000;
      *(v41 + 56) = v38;
      *(v41 + 64) = v40;
      *(v41 + 16) = MOSuggestionInterstitialExpandableListViewCellConstants.init();
      *(v41 + 24) = 0;
      swift_beginAccess();
      v42 = v192;
      *(v41 + 72) = v191;
      *(v41 + 88) = v42;
      *(v41 + 104) = v193;
      v43 = *((swift_isaMask & *v35) + 0x88);

      v43(v44);

      v45 = v35;
      [v185 frame];
      v46 = CGRectGetWidth(v195);
      LODWORD(v47) = 1148846080;
      LODWORD(v48) = 1112014848;
      [v45 systemLayoutSizeFittingSize:v46 withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:{v47, v48}];
      v50 = v49;

      v51 = *(v184 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadgeTopConstraint);
      if (v51)
      {
        v52 = v50 + 20.0 + *(v184 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_currentBadgeOffset);
        v53 = v51;
        [v53 setConstant:v52];
      }
    }

    else if (v34(2))
    {
      type metadata accessor for MOSuggestionSheetStateOfMindTipCell();
      v77 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v78 = v187;
      v79 = (*((swift_isaMask & *v187) + 0x1B0))();
      v80 = (*(*v32 + 192))() & 1;
      type metadata accessor for MOSuggestionSheetStateOfMindTipCellModel();
      v81 = swift_allocObject();
      *(v81 + 17) = 2;
      v82 = (v81 + 17);
      *(v81 + 16) = v79 & 1;
      swift_beginAccess();
      *v82 = v80;
      v83 = *((swift_isaMask & *v77) + 0x80);

      v83(v84);

      v85 = v77;
      [v185 frame];
      v86 = CGRectGetWidth(v197);
      LODWORD(v87) = 1148846080;
      LODWORD(v88) = 1112014848;
      [v85 systemLayoutSizeFittingSize:v86 withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:{v87, v88}];
      v90 = v89;

      v91 = *(v184 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadgeTopConstraint);
      if (v91)
      {
        v92 = v90 + 20.0 + *(v184 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_currentBadgeOffset);
        v93 = v91;
        [v93 setConstant:v92];
      }
    }

    else if (v34(0))
    {
      type metadata accessor for MOSuggestionSheetOnboardingTipCell();
      v143 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v144 = v187;
      v145 = (*((swift_isaMask & *v187) + 0x1B0))();
      v146 = (*(*v32 + 144))() & 1;
      type metadata accessor for MOSuggestionSheetOnboardingTipCellModel();
      v147 = swift_allocObject();
      *(v147 + 33) = 2;
      v148 = (v147 + 33);
      *(v147 + 32) = v145 & 1;
      *(v147 + 16) = MOSuggestionInterstitialExpandableListViewCellConstants.init();
      *(v147 + 24) = 0;
      swift_beginAccess();
      *v148 = v146;
      v149 = *((swift_isaMask & *v143) + 0x60);

      v149(v150);

      v151 = v143;
      [v185 frame];
      v152 = CGRectGetWidth(v201);
      LODWORD(v153) = 1148846080;
      LODWORD(v154) = 1112014848;
      [v151 systemLayoutSizeFittingSize:v152 withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:{v153, v154}];
    }

    else
    {
    }

LABEL_38:

    return;
  }

  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isOnboarded];

  if (v22)
  {
    if (!v190)
    {
      v115 = v186;
      v116 = (*v186 + 272);
      v117 = *v116;
      if ((*v116)(1))
      {
        type metadata accessor for MOSuggestionPrivacyTipCell();
        v118 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v119 = v187;
        v120 = *((swift_isaMask & *v187) + 0x1B0);
        v121 = v120();
        v122 = (*((swift_isaMask & *v119) + 0x1C8))();
        v124 = v123;
        (*(*v115 + 168))(&v191);
        type metadata accessor for MOSuggestionPrivacyTipCellModel();
        v125 = swift_allocObject();
        *(v125 + 88) = 0u;
        *(v125 + 72) = 0u;
        *(v125 + 104) = 0;
        *(v125 + 32) = v121 & 1;
        *(v125 + 40) = 0x74756F79616CLL;
        *(v125 + 48) = 0xE600000000000000;
        *(v125 + 56) = v122;
        *(v125 + 64) = v124;
        *(v125 + 16) = MOSuggestionInterstitialExpandableListViewCellConstants.init();
        *(v125 + 24) = 0;
        swift_beginAccess();
        v126 = v192;
        *(v125 + 72) = v191;
        *(v125 + 88) = v126;
        *(v125 + 104) = v193;
        v127 = *((swift_isaMask & *v118) + 0x88);

        v127(v128);

        v129 = v118;
        v130 = v185;
        [v185 frame];
        v131 = CGRectGetWidth(v200);
        LODWORD(v132) = 1148846080;
        LODWORD(v133) = 1112014848;
        [v129 systemLayoutSizeFittingSize:v131 withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:{v132, v133}];
        v135 = v134;

        if (v135 + 20.0 >= 100.0)
        {
          v136 = v135 + 20.0;
        }

        else
        {
          v136 = 200.0;
        }

        v137 = (v120)([v130 frame]);
        v138 = v184;
        v139 = v136 + (*((swift_isaMask & *v184) + 0x220))(v137 & 1);
        *(v138 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_headerOffsetHeight) = v139 + 1.0;
        v140 = *(v138 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadgeTopConstraint);
        if (v140)
        {
          v141 = v136 + *(v138 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_currentBadgeOffset);
          v142 = v140;
          [v142 setConstant:v141];
        }
      }

      else
      {
        v155 = v117(2);
        v156 = v187;
        if ((v155 & 1) == 0)
        {
          v180 = [v185 frame];
          v181 = (*((swift_isaMask & *v156) + 0x1B0))(v180);
          v182 = v184;
          v183 = (*((swift_isaMask & *v184) + 0x220))(v181 & 1);

          *(v182 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_headerOffsetHeight) = v183;
          return;
        }

        type metadata accessor for MOSuggestionSheetStateOfMindTipCell();
        v157 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v158 = *((swift_isaMask & *v156) + 0x1B0);
        v159 = v158();
        v160 = (*(*v115 + 192))() & 1;
        type metadata accessor for MOSuggestionSheetStateOfMindTipCellModel();
        v161 = swift_allocObject();
        *(v161 + 17) = 2;
        v162 = (v161 + 17);
        *(v161 + 16) = v159 & 1;
        swift_beginAccess();
        *v162 = v160;
        v163 = *((swift_isaMask & *v157) + 0x80);

        v163(v164);
        v165 = v187;

        v166 = v157;
        v167 = v185;
        [v185 frame];
        v168 = CGRectGetWidth(v202);
        LODWORD(v169) = 1148846080;
        LODWORD(v170) = 1112014848;
        [v166 systemLayoutSizeFittingSize:v168 withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:{v169, v170}];
        v172 = v171;

        if (v172 + 20.0 >= 100.0)
        {
          v173 = v172 + 20.0;
        }

        else
        {
          v173 = 200.0;
        }

        v174 = (v158)([v167 frame]);
        v175 = v184;
        v176 = v173 + (*((swift_isaMask & *v184) + 0x220))(v174 & 1);
        *(v175 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_headerOffsetHeight) = v176;
        v177 = *(v175 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadgeTopConstraint);
        if (v177)
        {
          v178 = v173 + *(v175 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_currentBadgeOffset);
          v179 = v177;
          [v179 setConstant:v178];
        }
      }

      goto LABEL_38;
    }

    goto LABEL_7;
  }

  v54 = v186;
  v55 = *(*v186 + 144);
  LOBYTE(v191) = v55() & 1;
  lazy protocol witness table accessor for type MOSuggestionOnboardingTip and conformance MOSuggestionOnboardingTip();
  Tip.status.getter();
  v56 = enum case for Tips.InvalidationReason.tipClosed(_:);
  v57 = type metadata accessor for Tips.InvalidationReason();
  (*(*(v57 - 8) + 104))(v11, v56, v57);
  (*(v8 + 104))(v11, enum case for Tips.Status.invalidated(_:), v7);
  v58 = static Tips.Status.== infix(_:_:)();
  v59 = *(v8 + 8);
  v59(v11, v7);
  v59(v14, v7);
  if ((*(*v54 + 272))(0))
  {
    type metadata accessor for MOSuggestionSheetOnboardingTipCell();
    v60 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v61 = v187;
    v62 = (*((swift_isaMask & *v187) + 0x1B0))();
    v63 = v55() & 1;
    type metadata accessor for MOSuggestionSheetOnboardingTipCellModel();
    v64 = swift_allocObject();
    *(v64 + 33) = 2;
    v65 = (v64 + 33);
    *(v64 + 32) = v62 & 1;
    *(v64 + 16) = MOSuggestionInterstitialExpandableListViewCellConstants.init();
    *(v64 + 24) = 0;
    swift_beginAccess();
    *v65 = v63;
    v66 = *((swift_isaMask & *v60) + 0x60);

    v66(v67);

    v68 = v60;
    v69 = v185;
    [v185 frame];
    v70 = CGRectGetWidth(v196);
    LODWORD(v71) = 1148846080;
    LODWORD(v72) = 1112014848;
    [v68 systemLayoutSizeFittingSize:v70 withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:{v71, v72}];
    v74 = v73;

    if (v58)
    {
      v75 = 68.0;
    }

    else
    {
      v75 = v74 + 20.0 + 68.0;
    }

    v76 = v184;
  }

  else
  {
    v75 = 68.0;
    v61 = v187;
    v76 = v184;
    v69 = v185;
  }

  [v69 frame];

  *(v76 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_headerOffsetHeight) = v75;
}

void specialized MOSuggestionCollectionView.collectionView(_:layout:insetForSectionAt:)(void *a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0x100))();
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    v8 = v7;
    if (v7)
    {
      v7 = a1;
    }

    v9 = (*v6 + 440);
    v10 = *v9;
    if (((*v9)(v7) & 1) != 0 && ((*(*v6 + 616))() & 1) != 0 && !a2)
    {
    }

    else if (v8)
    {
      v11 = v8;
      if (v10())
      {

        (*(*v6 + 720))(a2);
        [v11 sectionInset];
        [v11 sectionInset];
        [v11 sectionInset];
      }

      else
      {
        [v11 sectionInset];
      }
    }

    else
    {
    }
  }
}

uint64_t specialized MOSuggestionCollectionView.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((swift_isaMask & *v3) + 0x100))();
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (!(*((swift_isaMask & *v3) + 0x160))())
  {
    goto LABEL_17;
  }

  v10 = v9;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v11 == a3)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (((*(*v8 + 616))(v14) & 1) == 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
  }

  type metadata accessor for MOSuggestionCollectionViewBlankEntrySectionHeaderView();
  if (swift_dynamicCastClass())
  {
    v15 = *(*v8 + 640);
    v16 = a1;
    if ((v15() & 1) == 0)
    {
      ObjectType = swift_getObjectType();
      v18 = (*(*v8 + 440))();
      (*(v10 + 8))(v18 & 1, ObjectType, v10);
    }

    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  return swift_unknownObjectRelease();
}

uint64_t specialized MOSuggestionCollectionView.collectionView(_:didEndDisplaying:forItemAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  if (one-time initialization token for memory != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static MOAngelLogger.memory);
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v12(v8, a1, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a1;
    v16 = v15;
    *v15 = 134218240;
    v17 = IndexPath.section.getter();
    v18 = *(v5 + 8);
    v18(v10, v4);
    *(v16 + 1) = v17;
    *(v16 + 6) = 2048;
    v19 = IndexPath.row.getter();
    v18(v8, v4);
    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "[CollectionView] Claning up indexPath=%ld, %ld", v16, 0x16u);
    a1 = v24;
  }

  else
  {
    v20 = *(v5 + 8);
    v20(v8, v4);
    v20(v10, v4);
  }

  result = (*((swift_isaMask & *v2) + 0x100))();
  if (result)
  {
    v22 = (*(*result + 752))(a1);

    if (v22)
    {
      (*(*v22 + 304))(0);
    }
  }

  return result;
}

uint64_t sub_100198D20@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_100198D7C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xF0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100198DE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t sub_100198E48(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x108);

  return v2(v3);
}

uint64_t sub_100198EB4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x118))();
  *a2 = result;
  return result;
}

uint64_t sub_100198F18(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x120);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100198F88@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x130))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100198FEC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0x138);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_100199068@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x148))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001990CC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0x150);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_100199148@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001991AC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0x168);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_100199228@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x178))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10019928C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0x180);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_100199308@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x208))();
  *a2 = result;
  return result;
}

uint64_t sub_10019936C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x210);
  v4 = *a1;
  return v3(v2);
}

void *partial apply for closure #1 in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)(a1, v5, v1 + v4, v6);
}

uint64_t sub_100199514()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void partial apply for closure #3 in closure #1 in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  confirmRemove #1 () in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)(v2, v3);
}

uint64_t objectdestroy_102Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_34Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t _sSo21NSAttributedStringKeyaABSHSCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100199924()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void partial apply for closure #1 in closure #2 in MOSuggestionCollectionView.layoutSubviews()()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in closure #2 in MOSuggestionCollectionView.layoutSubviews()(v2, v3);
}

uint64_t sub_100199A4C()
{

  return _swift_deallocObject(v0, 26, 7);
}

id one-time initialization function for sharedFetcher()
{
  result = [objc_allocWithZone(MOSuggestionAssetContactProfilePictureProviderAvatar) init];
  static MOSuggestionAssetContactProfilePictureProvider.sharedFetcher = result;
  return result;
}

uint64_t *MOSuggestionAssetContactProfilePictureProvider.sharedFetcher.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedFetcher != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAssetContactProfilePictureProvider.sharedFetcher;
}

id static MOSuggestionAssetContactProfilePictureProvider.sharedFetcher.getter()
{
  if (one-time initialization token for sharedFetcher != -1)
  {
    swift_once();
  }

  v1 = static MOSuggestionAssetContactProfilePictureProvider.sharedFetcher;

  return v1;
}

void static MOSuggestionAssetContactProfilePictureProvider.getAssetFor(idInput:cacheType:completion:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void))
{
  v6 = [objc_allocWithZone(CNContactStore) init];
  v7 = String._bridgeToObjectiveC()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18 = 0;
  v9 = [v6 unifiedContactWithIdentifier:v7 keysToFetch:isa error:&v18];

  if (v9)
  {
    if ((a3 - 2) > 8u)
    {
      v10 = 300.0;
    }

    else
    {
      v10 = dbl_1002A9840[(a3 - 2)];
    }

    v12 = one-time initialization token for sharedFetcher;
    v13 = v18;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = [static MOSuggestionAssetContactProfilePictureProvider.sharedFetcher avatarForContact:v9 size:{v10, v10}];
    if (v14)
    {
      v15 = v14;
      v16 = MOSuggestionAssetsTypeContactPhoto;
      type metadata accessor for UIImage();
      v17 = [objc_allocWithZone(MOSuggestionAsset) init:v15 type:v16 contentClassType:swift_getObjCClassFromMetadata()];
      a4();
    }

    else
    {
      a4();
    }
  }

  else
  {
    v11 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    (a4)(0);
    v9 = v6;
  }
}

double *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 16;
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

id static MOSuggestionAssetContactProfilePictureProvider.getContact(withIdentifier:)()
{
  v0 = [objc_allocWithZone(CNContactStore) init];
  v1 = String._bridgeToObjectiveC()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = 0;
  v3 = [v0 unifiedContactWithIdentifier:v1 keysToFetch:isa error:&v7];

  v4 = v7;
  if (v3)
  {
  }

  else
  {
    v5 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v3;
}

uint64_t specialized static MOSuggestionAssetContactProfilePictureProvider.getFirstNameFor(idInput:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A4A00;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  v3 = [objc_allocWithZone(CNContactStore) init];
  v4 = String._bridgeToObjectiveC()();
  specialized _arrayForceCast<A, B>(_:)(inited);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = 0;
  v6 = [v3 unifiedContactWithIdentifier:v4 keysToFetch:isa error:&v17];

  if (v6)
  {
    v7 = v17;
    v8 = [v6 givenName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = [v6 givenName];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v14;
    }
  }

  else
  {
    v16 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return 0;
}

uint64_t key path setter for MOSuggestionCapsuleButton.buttonTapped : MOSuggestionCapsuleButton(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((swift_isaMask & **a2) + 0x60);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t MOSuggestionCapsuleButton.buttonTapped.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService25MOSuggestionCapsuleButton_buttonTapped);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MOSuggestionCapsuleButton.buttonTapped.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService25MOSuggestionCapsuleButton_buttonTapped);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id MOSuggestionCapsuleButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  __chkstk_darwin(v9 - 8);
  v37 = &v36 - v10;
  v11 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UIButton.Configuration.Size();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UIButton.Configuration();
  v19 = *(v36 - 8);
  __chkstk_darwin(v36);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v4[OBJC_IVAR____TtC16MomentsUIService25MOSuggestionCapsuleButton_buttonTapped];
  *v22 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v22[1] = 0;
  v23 = type metadata accessor for MOSuggestionCapsuleButton();
  v38.receiver = v4;
  v38.super_class = v23;
  v24 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  static UIButton.Configuration.filled()();
  (*(v16 + 104))(v18, enum case for UIButton.Configuration.Size.medium(_:), v15);
  UIButton.Configuration.buttonSize.setter();
  (*(v12 + 104))(v14, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v11);
  UIButton.Configuration.cornerStyle.setter();
  v25 = objc_opt_self();
  v26 = [v25 tertiarySystemFillColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v27 = [v25 secondaryLabelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v28 = [objc_opt_self() mainBundle];
  v39._object = 0x80000001002B1F70;
  v29._countAndFlagsBits = 0x726F4D20776F6853;
  v29._object = 0xE900000000000065;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0xD00000000000004ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v39);

  v31 = String._bridgeToObjectiveC()();

  [v24 setAccessibilityLabel:v31];

  v32 = v36;
  v33 = v37;
  (*(v19 + 16))(v37, v21, v36);
  (*(v19 + 56))(v33, 0, 1, v32);
  UIButton.configuration.setter();
  type metadata accessor for UIAction();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v24 addAction:v34 forControlEvents:64];

  (*(v19 + 8))(v21, v32);
  return v24;
}

uint64_t sub_10019A97C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id MOSuggestionCapsuleButton.init(coder:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  __chkstk_darwin(v3 - 8);
  v32 = &v31 - v4;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.Size();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UIButton.Configuration();
  v13 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v1[OBJC_IVAR____TtC16MomentsUIService25MOSuggestionCapsuleButton_buttonTapped];
  *v16 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v16[1] = 0;
  v17 = type metadata accessor for MOSuggestionCapsuleButton();
  v35.receiver = v1;
  v35.super_class = v17;
  v34 = a1;
  v18 = objc_msgSendSuper2(&v35, "initWithCoder:", a1);
  if (v18)
  {
    static UIButton.Configuration.filled()();
    (*(v10 + 104))(v12, enum case for UIButton.Configuration.Size.medium(_:), v9);
    UIButton.Configuration.buttonSize.setter();
    (*(v6 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v5);
    UIButton.Configuration.cornerStyle.setter();
    v19 = objc_opt_self();
    v20 = [v19 tertiarySystemFillColor];
    UIButton.Configuration.baseBackgroundColor.setter();
    v21 = [v19 secondaryLabelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    v22 = [objc_opt_self() mainBundle];
    v36._object = 0x80000001002B1F70;
    v23._countAndFlagsBits = 0x726F4D20776F6853;
    v23._object = 0xE900000000000065;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v36._countAndFlagsBits = 0xD00000000000004ALL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v36);

    v25 = String._bridgeToObjectiveC()();

    [v18 setAccessibilityLabel:v25];

    v26 = v32;
    v27 = v33;
    (*(v13 + 16))(v32, v15, v33);
    (*(v13 + 56))(v26, 0, 1, v27);
    UIButton.configuration.setter();
    type metadata accessor for UIAction();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = v18;
    v29 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v28 addAction:v29 forControlEvents:64];

    (*(v13 + 8))(v15, v27);
  }

  else
  {
  }

  return v18;
}

void *closure #1 in MOSuggestionCapsuleButton.sharedInit()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*((swift_isaMask & *result) + 0x58))();

    v2();
  }

  return result;
}

id MOSuggestionCapsuleButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionCapsuleButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10019AFA8@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((swift_isaMask & **a1) + 0x58))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_10019B054()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *MOSuggestionInterstitialAlertContentViewController.init()()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController_textView;
  *&v0[v1] = [objc_allocWithZone(UITextView) init];
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MOSuggestionInterstitialAlertContentViewController();
  v2 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  result = [v2 view];
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController_textView;
    [result addSubview:*(v2 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController_textView)];

    v6 = *(v2 + v5);
    UIView.fillSuper(horizontalMargin:verticalMargin:)(10.0, 10.0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002A48B0;
    *(v7 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
    *(v7 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    UIViewController.registerForTraitChanges(_:action:)();
    swift_unknownObjectRelease();

    v8 = *(v2 + v5);
    [v8 _setCornerRadius:8.0];
    v9 = [v8 layer];
    [v9 setBorderWidth:1.0];

    v10 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
    [v8 setFont:v10];

    (*((swift_isaMask & *v2) + 0x60))();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MOSuggestionInterstitialAlertContentViewController.handleTraitChange()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController_textView) layer];
  v2 = [objc_opt_self() separatorColor];
  v3 = [v2 CGColor];

  [v1 setBorderColor:v3];
}

void MOSuggestionInterstitialAlertContentViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController_textView;
  *(v0 + v1) = [objc_allocWithZone(UITextView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MOSuggestionInterstitialAlertController.addTextView(with:)(Swift::String with)
{
  v2 = *&v1[OBJC_IVAR____TtC16MomentsUIService39MOSuggestionInterstitialAlertController_textViewContentController];
  v3 = *(v2 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController_textView);
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  [v1 setContentViewController:v2];
}

id MOSuggestionInterstitialAlertController.currentText.getter()
{
  result = [*(*(v0 + OBJC_IVAR____TtC16MomentsUIService39MOSuggestionInterstitialAlertController_textViewContentController) + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController_textView) text];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MOSuggestionInterstitialAlertController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionInterstitialAlertController_textViewContentController;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialAlertContentViewController()) init];
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for MOSuggestionInterstitialAlertController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id MOSuggestionInterstitialAlertController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionInterstitialAlertController_textViewContentController;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialAlertContentViewController()) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MOSuggestionInterstitialAlertController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id MOSuggestionInterstitialAlertContentViewController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t MOSuggestionAssetsBundle.availableAssets(bundleInterfaceType:)(uint64_t a1)
{
  v2 = v1;
  v3 = 0;
  v78 = _swiftEmptyArrayStorage;
  if (a1 <= 6)
  {
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        goto LABEL_70;
      }

      if (a1 != 5)
      {
        v12 = MOSuggestionAssetsTypeLinkPreview;
        if (![v2 hasAssetType:MOSuggestionAssetsTypeLinkPreview])
        {
          goto LABEL_136;
        }

        v13 = [v2 assetsForType:v12];
        if (!v13)
        {
          goto LABEL_136;
        }

        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
        v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v2 >> 62))
        {
          a1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a1)
          {
            goto LABEL_130;
          }

          goto LABEL_29;
        }

LABEL_112:
        a1 = _CocoaArrayWrapper.endIndex.getter();
        if (!a1)
        {
          goto LABEL_130;
        }

LABEL_29:
        if ((v2 & 0xC000000000000001) != 0)
        {
          goto LABEL_104;
        }

        if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_100;
        }

        __break(1u);
LABEL_32:
        if ((a1 - 12) >= 2)
        {
          goto LABEL_52;
        }

        goto LABEL_33;
      }

      v48 = MOSuggestionAssetsTypeMediaCoverArt;
      if ([v2 hasAssetType:MOSuggestionAssetsTypeMediaCoverArt])
      {
        v49 = [v2 assetsForType:v48];
        if (v49)
        {
          v50 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
          v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          specialized Array.append<A>(contentsOf:)(v3);
        }
      }

      v51 = MOSuggestionAssetsTypeAppIcon;
      if (![v2 hasAssetType:MOSuggestionAssetsTypeAppIcon])
      {
        goto LABEL_136;
      }

      v52 = [v2 assetsForType:v51];
      if (!v52)
      {
        goto LABEL_136;
      }

      v9 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
      v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v2 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_130;
        }
      }

      else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_130;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_104;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      __break(1u);
      goto LABEL_92;
    }

    if ((a1 - 2) >= 2)
    {
      if (a1 != 1)
      {
        return v3;
      }

LABEL_33:
      v15 = MOSuggestionAssetsTypePhoto;
      if ([v2 hasAssetType:MOSuggestionAssetsTypePhoto])
      {
        v16 = [v2 assetsForType:v15];
        if (v16)
        {
          v17 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
          v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          specialized Array.append<A>(contentsOf:)(v3);
        }
      }

      v18 = MOSuggestionAssetsTypeWorkout;
      if ([v2 hasAssetType:MOSuggestionAssetsTypeWorkout])
      {
        v19 = [v2 assetsForType:v18];
        if (v19)
        {
          v20 = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
          v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          specialized Array.append<A>(contentsOf:)(v3);
        }
      }

      v21 = MOSuggestionAssetsTypeMapSnapshot;
      if ([v2 hasAssetType:MOSuggestionAssetsTypeMapSnapshot])
      {
        v22 = [v2 assetsForType:v21];
        if (v22)
        {
          v23 = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
          v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          specialized Array.append<A>(contentsOf:)(v3);
        }
      }

      v24 = MOSuggestionAssetsTypeMotionActivity;
      if ([v2 hasAssetType:MOSuggestionAssetsTypeMotionActivity])
      {
        v25 = [v2 assetsForType:v24];
        if (v25)
        {
          v26 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
          v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          specialized Array.append<A>(contentsOf:)(v3);
        }
      }

      v27 = MOSuggestionAssetsTypeAppIcon;
      if (![v2 hasAssetType:MOSuggestionAssetsTypeAppIcon])
      {
        goto LABEL_136;
      }

      v28 = [v2 assetsForType:v27];
      if (!v28)
      {
        goto LABEL_136;
      }

      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
      v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v2 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
        if (!a1)
        {
          goto LABEL_130;
        }
      }

      else
      {
        a1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a1)
        {
          goto LABEL_130;
        }
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_104;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_52:
      if (a1 == 11)
      {
        v30 = MOSuggestionAssetsTypeReflectionPrompt;
        if (![v2 hasAssetType:MOSuggestionAssetsTypeReflectionPrompt])
        {
          goto LABEL_136;
        }

        v31 = [v2 assetsForType:v30];
        if (!v31)
        {
          goto LABEL_136;
        }

        v32 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
        v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v2 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_130;
          }
        }

        else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_130;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          goto LABEL_104;
        }

        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_60;
        }

LABEL_100:
        v56 = *(v2 + 32);
LABEL_101:
        v57 = v56;

        v58 = v57;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_136;
      }

      return v3;
    }

LABEL_10:
    v4 = MOSuggestionAssetsTypePhoto;
    if ([v2 hasAssetType:MOSuggestionAssetsTypePhoto])
    {
      v5 = [v2 assetsForType:v4];
      if (v5)
      {
        v6 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
        v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        specialized Array.append<A>(contentsOf:)(v3);
      }
    }

    v7 = MOSuggestionAssetsTypeMapSnapshot;
    if (![v2 hasAssetType:MOSuggestionAssetsTypeMapSnapshot])
    {
      goto LABEL_94;
    }

    v8 = [v2 assetsForType:v7];
    if (!v8)
    {
      goto LABEL_94;
    }

    v3 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v9 >> 62))
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_17:
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          v10 = *(v9 + 32);
        }

        v11 = v10;

        v3 = v11;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_94:
        v53 = MOSuggestionAssetsTypeActivityRings;
        if (![v2 hasAssetType:MOSuggestionAssetsTypeActivityRings])
        {
          goto LABEL_136;
        }

        v54 = [v2 assetsForType:v53];
        if (!v54)
        {
          goto LABEL_136;
        }

        v55 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
        v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v2 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_130;
          }
        }

        else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_130;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          goto LABEL_104;
        }

        if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_100;
        }

        goto LABEL_111;
      }

LABEL_93:

      goto LABEL_94;
    }

LABEL_92:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_17;
    }

    goto LABEL_93;
  }

  if (a1 > 10)
  {
    goto LABEL_32;
  }

  if (a1 == 7)
  {
LABEL_60:
    v33 = MOSuggestionAssetsTypePhoto;
    if ([v2 hasAssetType:MOSuggestionAssetsTypePhoto])
    {
      v34 = [v2 assetsForType:v33];
      if (v34)
      {
        v35 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
        v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        specialized Array.append<A>(contentsOf:)(v36);
      }
    }

    v37 = MOSuggestionAssetsTypeMapSnapshot;
    if (![v2 hasAssetType:MOSuggestionAssetsTypeMapSnapshot])
    {
      goto LABEL_136;
    }

    v38 = [v2 assetsForType:v37];
    if (!v38)
    {
      goto LABEL_136;
    }

    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_67:
        if ((v2 & 0xC000000000000001) == 0)
        {
          if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_70:
            v40 = MOSuggestionAssetsTypeContactPhoto;
            if ([v2 hasAssetType:MOSuggestionAssetsTypeContactPhoto])
            {
LABEL_134:
              v66 = [v2 assetsForType:v40];
              if (v66)
              {
                v67 = v66;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
                v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                specialized Array.append<A>(contentsOf:)(v68);
              }
            }

LABEL_136:
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v69 = type metadata accessor for Logger();
            __swift_project_value_buffer(v69, static MOAngelLogger.shared);
            v3 = v78;

            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              v77 = v73;
              *v72 = 136315138;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
              v74 = Array.debugDescription.getter();
              v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v77);

              *(v72 + 4) = v76;

              _os_log_impl(&_mh_execute_header, v70, v71, "[Assets] Preparing assets in order %s", v72, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v73);
            }

            else
            {
            }

            return v3;
          }

          goto LABEL_100;
        }

LABEL_104:
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_101;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_67;
    }

LABEL_130:

    goto LABEL_136;
  }

  if (a1 != 9)
  {
    if (a1 != 10)
    {
      return v3;
    }

    goto LABEL_10;
  }

  v41 = MOSuggestionAssetsTypeSystemImage;
  if (![v2 hasAssetType:MOSuggestionAssetsTypeSystemImage])
  {
    goto LABEL_120;
  }

  v42 = [v2 assetsForType:v41];
  if (!v42)
  {
    goto LABEL_120;
  }

  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v44 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_76;
    }

LABEL_119:

    goto LABEL_120;
  }

  if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_119;
  }

LABEL_76:
  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_146;
    }

    v45 = *(v44 + 32);
  }

  v46 = v45;

  v47 = v46;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_120:
  v59 = MOSuggestionAssetsTypeContactPhoto;
  if (![v2 hasAssetType:MOSuggestionAssetsTypeContactPhoto] || (v60 = objc_msgSend(v2, "assetsForType:", v59)) == 0)
  {
LABEL_133:
    v40 = MOSuggestionAssetsTypeWorkout;
    if ([v2 hasAssetType:MOSuggestionAssetsTypeWorkout])
    {
      goto LABEL_134;
    }

    goto LABEL_136;
  }

  v61 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
  v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v62 >> 62))
  {
    result = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_124;
    }

    goto LABEL_132;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_132:

    goto LABEL_133;
  }

LABEL_124:
  if ((v62 & 0xC000000000000001) != 0)
  {
    v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_127:
    v65 = v64;

    v43 = v65;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_128:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_133;
    }

LABEL_146:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_128;
  }

  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v64 = *(v62 + 32);
    goto LABEL_127;
  }

  __break(1u);
  return result;
}

void static OnboardingType.forCurrentDeviceIdiom.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 > 1)
  {
    __break(1u);
  }
}

uint64_t OnboardingType.needsOnboarding.getter(char a1)
{
  if (a1)
  {

    return static DefaultsManager.SyncOnboarding.needsOnboarding.getter();
  }

  else
  {
    v3 = [objc_opt_self() sharedInstance];
    v4 = [v3 onboardingFlowCompletionStatus];

    return (v4 - 5) < 0xFFFFFFFFFFFFFFFDLL;
  }
}

uint64_t OnboardingType.onboardingFlowStatus.getter(char a1)
{
  if (a1)
  {
    if (static DefaultsManager.SyncOnboarding.needsOnboarding.getter())
    {
      result = static DefaultsManager.SyncOnboarding.deferralCount.getter();
      if (result)
      {
        if (static DefaultsManager.SyncOnboarding.deferralCount.getter() <= 2)
        {
          return 1;
        }

        else
        {
          return 5;
        }
      }
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 onboardingFlowCompletionStatus];

    result = v3;
    if (v3 > 5 || ((1 << v3) & 0x2C) == 0)
    {
      if (static DefaultsManager.Onboarding.deferralCount.getter() <= 2)
      {
        return v3;
      }

      else
      {
        return 5;
      }
    }
  }

  return result;
}

uint64_t OnboardingType.statusDescription.getter(char a1)
{
  v2 = type metadata accessor for DefaultsManager.SyncOnboarding.Status();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v11 = 0xEB00000000646574;
    v12 = 0x7261745320746547;
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 onboardingFlowCompletionStatus];

    if (v14 <= 1)
    {
      if (!v14)
      {
        v12 = 0x7261745320746F4ELL;
        goto LABEL_14;
      }

      if (v14 == 1)
      {
        v11 = 0xE900000000000064;
        v12 = 0x657373696D736944;
        goto LABEL_14;
      }
    }

    else
    {
      switch(v14)
      {
        case 2:
LABEL_14:
          v15._countAndFlagsBits = v12;
          v15._object = v11;
          String.append(_:)(v15);

          v16._object = 0x80000001002B7CA0;
          v16._countAndFlagsBits = 0xD000000000000011;
          String.append(_:)(v16);
          v10 = static DefaultsManager.Onboarding.deferralCount.getter();
          goto LABEL_15;
        case 3:
          v11 = 0xE800000000000000;
          v12 = 0x64656873696E6946;
          goto LABEL_14;
        case 5:
          v11 = 0x80000001002B7CC0;
          v12 = 0xD000000000000014;
          goto LABEL_14;
      }
    }

    v11 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E55;
    goto LABEL_14;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  static DefaultsManager.SyncOnboarding.status.getter();
  lazy protocol witness table accessor for type DefaultsManager.SyncOnboarding.Status and conformance DefaultsManager.SyncOnboarding.Status();
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v7;

  v20 = v6;
  v21 = v8;
  (*(v3 + 8))(v5, v2);
  v9._object = 0x80000001002B7CA0;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  v10 = static DefaultsManager.SyncOnboarding.deferralCount.getter();
LABEL_15:
  v19[1] = v10;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  return v20;
}

Swift::Void __swiftcall OnboardingType.resetDeferralCount(_:)(Swift::Int a1)
{
  if (v1)
  {
    static DefaultsManager.SyncOnboarding.resetDeferralCount(_:)();
  }

  else
  {
    static DefaultsManager.Onboarding.resetDeferralCount(_:)();
  }
}

Swift::Void __swiftcall OnboardingType.resetOnboardingStatus(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2)
  {

    static DefaultsManager.SyncOnboarding.resetOnboardingStatus(_:)(a1);
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Resetting resetOnboardingStatus is not supported on phone", v10, 2u);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t MOOnboardingFlowCompletion.description.getter(uint64_t a1)
{
  result = 0x7261745320746547;
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x7261745320746F4ELL;
    }

    if (a1 == 1)
    {
      return 0x657373696D736944;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return result;
      case 3:
        return 0x64656873696E6946;
      case 5:
        return 0xD000000000000014;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MOOnboardingFlowCompletion()
{
  result = 0x7261745320746547;
  v2 = *v0;
  if (*v0 <= 1)
  {
    if (!v2)
    {
      return 0x7261745320746F4ELL;
    }

    if (v2 == 1)
    {
      return 0x657373696D736944;
    }

    return 0x6E776F6E6B6E55;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      if (v2 == 5)
      {
        return 0xD000000000000014;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x64656873696E6946;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultsManager.SyncOnboarding.Status and conformance DefaultsManager.SyncOnboarding.Status()
{
  result = lazy protocol witness table cache variable for type DefaultsManager.SyncOnboarding.Status and conformance DefaultsManager.SyncOnboarding.Status;
  if (!lazy protocol witness table cache variable for type DefaultsManager.SyncOnboarding.Status and conformance DefaultsManager.SyncOnboarding.Status)
  {
    type metadata accessor for DefaultsManager.SyncOnboarding.Status();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultsManager.SyncOnboarding.Status and conformance DefaultsManager.SyncOnboarding.Status);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OnboardingType and conformance OnboardingType()
{
  result = lazy protocol witness table cache variable for type OnboardingType and conformance OnboardingType;
  if (!lazy protocol witness table cache variable for type OnboardingType and conformance OnboardingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnboardingType and conformance OnboardingType);
  }

  return result;
}

id MOSuggestionLinkShareView.init(linkMetadata:)(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = type metadata accessor for MOSuggestionLinkShareView();
  v23.receiver = v1;
  v23.super_class = v10;
  v11 = objc_msgSendSuper2(&v23, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v12 = objc_allocWithZone(LPLinkMetadata);
  v13 = v11;
  v14 = [v12 init];
  v15 = [a1 title];
  [v14 setTitle:v15];

  v16 = [a1 URL];
  if (v16)
  {
    v17 = v16;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v20 = 0;
  }

  [v14 setURL:v20];

  v21 = [a1 image];
  [v14 setImage:v21];

  [v13 setUserInteractionEnabled:0];
  [v13 setMetadata:v14];
  [v13 _setPreferredSizeClass:5];

  return v13;
}

id MOSuggestionLinkShareView.__allocating_init(metadata:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithMetadata:a1];

  return v3;
}

id MOSuggestionLinkShareView.__allocating_init(presentationProperties:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithPresentationProperties:a1];
  swift_unknownObjectRelease();
  return v2;
}

id MOSuggestionLinkShareView.__allocating_init(presentationProperties:url:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v9 = v10;
    (*(v7 + 8))(a2, v6);
  }

  v11 = [objc_allocWithZone(v3) initWithPresentationProperties:a1 URL:v9];
  swift_unknownObjectRelease();

  return v11;
}

id MOSuggestionLinkShareView.__allocating_init(metadataLoadedFrom:)(uint64_t a1)
{
  return MOSuggestionLinkShareView.__allocating_init(url:)(a1, &URL._bridgeToObjectiveC(), &selRef_initWithMetadataLoadedFromURL_, &type metadata accessor for URL);
}

{
  return MOSuggestionLinkShareView.__allocating_init(url:)(a1, &URLRequest._bridgeToObjectiveC(), &selRef_initWithMetadataLoadedFromRequest_, &type metadata accessor for URLRequest);
}

id MOSuggestionLinkShareView.__allocating_init(url:)(uint64_t a1, uint64_t (*a2)(void), SEL *a3, uint64_t (*a4)(void))
{
  v9 = objc_allocWithZone(v4);
  v10 = a2();
  v11 = [v9 *a3];

  v12 = a4(0);
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

void MOSuggestionLinkShareView.init(metadataLoadedFrom:)()
{
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

{
  MOSuggestionLinkShareView.init(metadataLoadedFrom:)();
}

void @objc MOSuggestionLinkShareView.init(url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  __chkstk_darwin(v7 - 8);
  a5(a3);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t mapImageView.init(image:weatherString:weatherTemperature:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v73 - v12;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v17 = type metadata accessor for mapImageView();
  v79.receiver = v4;
  v79.super_class = v17;
  v18 = objc_msgSendSuper2(&v79, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v19 = objc_allocWithZone(UIImageView);
  v20 = v18;
  v21 = [v19 initWithImage:a1];
  [v21 setContentMode:2];
  v74 = v20;
  [v20 addSubview:v21];
  v76 = v21;
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v75 = a4;
  if (a3)
  {
    v22 = [objc_opt_self() boldSystemFontOfSize:20.0];
    v23 = [objc_opt_self() configurationWithFont:v22];

    v24 = v23;
    v25 = String._bridgeToObjectiveC()();

    v26 = [objc_opt_self() systemImageNamed:v25 withConfiguration:v24];

    v27 = [objc_allocWithZone(UIImageView) initWithImage:v26];
    v28 = [objc_opt_self() systemBlackColor];
    v29 = [v28 colorWithAlphaComponent:0.7];

    [v27 setTintColor:v29];
    [v76 addSubview:v27];
    v30 = [v27 superview];
    if (v30)
    {
      v31 = v30;
      [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
      v32 = [v27 trailingAnchor];
      v33 = [v31 trailingAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      [v34 setConstant:-66.0];
      if (v34)
      {
        [v34 setActive:1];
      }
    }

    v35 = [v27 superview];
    if (v35)
    {
      v36 = v35;
      [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
      v37 = [v27 bottomAnchor];
      v38 = [v36 bottomAnchor];
      v39 = [v37 constraintEqualToAnchor:v38];

      if (v39)
      {
        [v39 setConstant:-1.0];
        [v39 setActive:1];

        v24 = v36;
      }

      else
      {
        v39 = v36;
      }

      v26 = v27;
      v27 = v39;
    }

    a4 = v75;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd);
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  if (v42(a4, 1, v40) == 1)
  {
    v43 = v74;
    v44 = v74;
LABEL_27:

    outlined destroy of Measurement<NSUnitTemperature>?(a4);
    return v43;
  }

  v73 = a1;
  outlined init with copy of Measurement<NSUnitTemperature>?(a4, v13);
  if (v42(v13, 1, v40) == 1)
  {
    outlined destroy of Measurement<NSUnitTemperature>?(v13);
    __break(1u);
  }

  else
  {
    Measurement.value.getter();
    v45 = *(v41 + 8);
    v45(v13, v40);
    v46 = Double.description.getter();
    v48 = v47;
    outlined init with copy of Measurement<NSUnitTemperature>?(a4, v11);
    if (v42(v11, 1, v40) != 1)
    {
      v49 = Measurement.unit.getter();
      v45(v11, v40);
      v50 = [v49 symbol];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v77 = v46;
      v78 = v48;

      v54._countAndFlagsBits = v51;
      v54._object = v53;
      String.append(_:)(v54);

      v55 = [objc_allocWithZone(UILabel) init];
      v56 = String._bridgeToObjectiveC()();

      [v55 setText:v56];

      v57 = [objc_opt_self() systemBlackColor];
      [v55 setTextColor:v57];

      v58 = [objc_opt_self() boldSystemFontOfSize:18.0];
      [v55 setFont:v58];

      v43 = v74;
      [v74 addSubview:v55];
      v59 = [v55 superview];
      a4 = v75;
      v60 = v73;
      if (v59)
      {
        v61 = v59;
        [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        v62 = [v55 trailingAnchor];
        v63 = [v61 trailingAnchor];
        v64 = [v62 constraintEqualToAnchor:v63];

        [v64 setConstant:-5.0];
        if (v64)
        {
          [v64 setActive:1];
        }
      }

      v65 = [v55 superview];
      if (v65)
      {
        v66 = v65;
        [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        v67 = [v55 bottomAnchor];
        v68 = [v66 bottomAnchor];
        v69 = [v67 constraintEqualToAnchor:v68];

        if (v69)
        {
          [v69 setConstant:-1.0];
          [v69 setActive:1];

          v70 = v55;
          v71 = v60;
          v76 = v69;
          v55 = v43;
          v60 = v66;
        }

        else
        {
          v70 = v43;
          v71 = v66;
        }
      }

      else
      {
        v71 = v43;
      }

      v44 = v60;

      a1 = v55;
      goto LABEL_27;
    }
  }

  result = outlined destroy of Measurement<NSUnitTemperature>?(v11);
  __break(1u);
  return result;
}

id MOSuggestionLinkShareView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t CMTime.durationText.getter(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3)
{
  time.value = a1;
  *&time.timescale = a2;
  time.epoch = a3;
  Seconds = CMTimeGetSeconds(&time);
  v4 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v5 = v4;
  if (Seconds >= 60.0)
  {
    if (Seconds <= 3600.0)
    {
      goto LABEL_6;
    }

    v6 = &selRef_setAllowedUnits_;
    v7 = 224;
  }

  else
  {
    [v4 setAllowedUnits:192];
    v6 = &selRef_setZeroFormattingBehavior_;
    v7 = 0x10000;
  }

  [v5 *v6];
LABEL_6:
  v8 = [v5 stringFromTimeInterval:Seconds];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  if (Seconds < 60.0)
  {
    specialized Collection.dropFirst(_:)(1uLL, v10, v12);

    v10 = static String._fromSubstring(_:)();
  }

  return v10;
}

uint64_t outlined destroy of Measurement<NSUnitTemperature>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Measurement<NSUnitTemperature>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t MOSuggestionSheetAssetViewModel.id.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MOSuggestionSheetAssetViewModel.id.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MOSuggestionGenericFallBackInfo.__allocating_init(bundleInfo:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  MOSuggestionGenericFallBackInfo.description()();
  return v4;
}

void *MOSuggestionGenericFallBackInfo.init(bundleInfo:)(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  v2[2] = 0;
  v5 = swift_beginAccess();
  v2[2] = a1;
  v2[3] = a2;
  (*(*v2 + 120))(v5);
  return v2;
}

Swift::Void __swiftcall MOSuggestionGenericFallBackInfo.description()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static MOAngelLogger.shared);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    v5 = (*(*v0 + 88))();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v2, "[MOSuggestionGenericFallBackInfo] Using fallback image for: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }
}

void MOSuggestionGenericFallBackInfo.init(coder:)()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MOSuggestionGenericFallBackInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10019ED08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10019ED54(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t static MOPOIAnnotationViewConfiguration.hasPOIIconImage(_:)(void *a1)
{
  v2 = [a1 _poiCategory];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    v22 = 0;
    goto LABEL_12;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v10 = objc_opt_self();
    v11 = [a1 _styleAttributes];
    v12 = objc_opt_self();
    v13 = [v12 mainScreen];
    [v13 scale];
    v15 = v14;

    v16 = [v10 newFillColorForStyleAttributes:v11 forScale:v15];
    v17 = v10;
    if (v16)
    {
      v18 = [a1 _styleAttributes];
      v19 = [v12 mainScreen];
      [v19 scale];
      v21 = v20;

      v3 = [v10 imageForStyle:v18 size:3 forScale:0 format:v21];
      if (v3)
      {
        v22 = 1;
LABEL_12:

        return v22;
      }
    }
  }

  return 0;
}

uint64_t *MOPOIAnnotationView.cityStyleAttributes.unsafeMutableAddressor()
{
  if (one-time initialization token for cityStyleAttributes != -1)
  {
    swift_once();
  }

  return &static MOPOIAnnotationView.cityStyleAttributes;
}

uint64_t MOPOIAnnotationViewConfiguration.init(geoMapItem:tileSize:isWork:numLocations:forceCircle:isMediumToHighConfidence:isScaledDownPOI:shouldUseCityIcon:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 25) = a6;
  *(a9 + 26) = a7;
  *(a9 + 27) = a8;
  *(a9 + 32) = 0x4000000000000000;
  return result;
}

id MOPOIAnnotationView.__allocating_init(annotation:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized MOPOIAnnotationView.init(annotation:configuration:)(a1, a2);
  outlined destroy of MOPOIAnnotationViewConfiguration(a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t MOPOIAnnotationViewConfiguration.geoMapItem.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

void *one-time initialization function for singlePinCanvasSize()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService25MOSuggestionAssetTileSizeO_12CoreGraphics7CGFloatVTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for singlePinCanvasSize);
  static MOPOIAnnotationViewConfiguration.singlePinCanvasSize = result;
  return result;
}

void *one-time initialization function for multiPinCanvasSize()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService25MOSuggestionAssetTileSizeO_12CoreGraphics7CGFloatVTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for multiPinCanvasSize);
  static MOPOIAnnotationViewConfiguration.multiPinCanvasSize = result;
  return result;
}

uint64_t MOPOIAnnotationViewConfiguration.pinSize.getter()
{
  v1 = v0;
  if (*(v0 + 16) > 1 || (*(v0 + 24) & 1) != 0)
  {
    if (one-time initialization token for multiPinCanvasSize != -1)
    {
      swift_once();
    }

    v2 = static MOPOIAnnotationViewConfiguration.multiPinCanvasSize;
    if (!*(static MOPOIAnnotationViewConfiguration.multiPinCanvasSize + 2))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (one-time initialization token for singlePinCanvasSize != -1)
    {
      swift_once();
    }

    v2 = static MOPOIAnnotationViewConfiguration.singlePinCanvasSize;
    if (!*(static MOPOIAnnotationViewConfiguration.singlePinCanvasSize + 2))
    {
      goto LABEL_15;
    }
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v1 + 8));
  if ((v4 & 1) == 0)
  {
LABEL_15:
    *&result = 0.0;
    return result;
  }

  result = *(v2[7] + 8 * v3);
  if (*(v1 + 26))
  {
    v6 = *&result;
    v7 = COERCE_DOUBLE(specialized static MOAngelDefaultsManager.doubleValueFor(_:)());
    if (v8)
    {
      v7 = 0.5;
    }

    *&result = v7 * v6;
  }

  return result;
}

uint64_t MOPOIAnnotationViewConfiguration.shouldAddPointedArrow.getter()
{
  if (*(v0 + 16) > 1)
  {
    return 0;
  }

  if (*(v0 + 24))
  {
    return 0;
  }

  if (*(v0 + 27))
  {
    return *(v0 + 9);
  }

  return 1;
}

void MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter()
{
  MOPOIAnnotationViewConfiguration.pinSize.getter();
  if ((v0 & 1) == 0)
  {
    MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  }
}

void MOPOIAnnotationViewConfiguration.downArrowFrame.getter()
{
  MOPOIAnnotationViewConfiguration.pinSize.getter();
  if ((v0 & 1) == 0)
  {
    MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  }
}

void MOPOIAnnotationViewConfiguration.downArrowListTileFrame.getter()
{
  MOPOIAnnotationViewConfiguration.pinSize.getter();
  if ((v0 & 1) == 0)
  {
    MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  }
}

void MOPOIAnnotationViewConfiguration.whiteCircularBorderFrame.getter()
{
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();

  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
}

void MOPOIAnnotationViewConfiguration.whiteCircularBorderCLusterFrame.getter()
{
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();

  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
}

void MOPOIAnnotationViewConfiguration.containerViewFrame.getter()
{
  MOPOIAnnotationViewConfiguration.pinSize.getter();
  if ((v0 & 1) == 0)
  {
    MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  }
}

double MOPOIAnnotationViewConfiguration.clusterFontSize.getter()
{
  v1 = COERCE_DOUBLE(MOPOIAnnotationViewConfiguration.pinSize.getter());
  result = 15.0;
  if ((v3 & 1) == 0)
  {
    if (*(v0 + 8) == 3)
    {
      return v1 * 0.5;
    }

    else
    {
      return v1 / 6.0;
    }
  }

  return result;
}

uint64_t static MOPOIAnnotationViewConfiguration.filterGenericRed(category:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void one-time initialization function for cityStyleAttributes()
{
  v0 = [objc_allocWithZone(GEOPlace) initWithLatitude:4 longitude:0.0 placeType:0.0];
  v1 = [objc_opt_self() styleAttributesForPlace:v0];

  static MOPOIAnnotationView.cityStyleAttributes = v1;
}

uint64_t static MOPOIAnnotationView.cityStyleAttributes.getter()
{
  if (one-time initialization token for cityStyleAttributes != -1)
  {
    swift_once();
  }

  v0 = static MOPOIAnnotationView.cityStyleAttributes;
  v1 = static MOPOIAnnotationView.cityStyleAttributes;
  return v0;
}

id MOPOIAnnotationView.init(annotation:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized MOPOIAnnotationView.init(annotation:configuration:)(a1, a2);
  outlined destroy of MOPOIAnnotationViewConfiguration(a2);
  swift_unknownObjectRelease();
  return v3;
}

void closure #1 in MOPOIAnnotationView.init(annotation:configuration:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_configuration];
    v2 = Strong;
    MOPOIAnnotationViewConfiguration.pinSize.getter();
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    if ((v7 & 1) == 0)
    {
      MOSuggestionInterstitialExpandableListViewCellConstants.init()();
    }

    [v2 setFrame:{v3, v4, v5, v6}];

    v8 = &v2[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_basePOICircleView];
    v9 = *&v2[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_basePOICircleView];
    MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
    [v9 setFrame:?];

    MOPOIAnnotationView.setupPOIAndColors()();
    if (v1[2] < 2)
    {
      if (v1[3])
      {
        specialized MOPOIAnnotationView.setupBorderBackground(cluster:)();
        v10 = OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_borderBackgroundView;
      }

      else
      {
        if (*(v1 + 27) == 1 && !*(v1 + 9))
        {
          goto LABEL_12;
        }

        MOPOIAnnotationView.setupDownArrow()();
        v10 = OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_downArrowView;
      }

      [v2 addSubview:*&v2[v10]];
    }

    else
    {
      specialized MOPOIAnnotationView.setupBorderBackground(cluster:)();
      MOPOIAnnotationView.setupClusterlabel()();
      [v2 addSubview:*&v2[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_borderBackgroundView]];
      v8 = &v2[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_clusterCountLabel];
    }

LABEL_12:
    [v2 addSubview:*v8];
    v11 = OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_borderBackgroundView;
    v12 = [*&v2[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_borderBackgroundView] layer];
    v13 = [objc_opt_self() secondarySystemBackgroundColor];
    v14 = [v13 CGColor];

    [v12 setShadowColor:v14];
    v15 = [*&v2[v11] layer];
    LODWORD(v16) = 0.5;
    [v15 setShadowOpacity:v16];

    v17 = [*&v2[v11] layer];
    [v17 setShadowRadius:5.0];

    v18 = [*&v2[v11] layer];
    [v18 setShadowPathIsBounds:1];
  }
}

void MOPOIAnnotationView.setupDownArrow()()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_configuration);
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_configuration + 16) <= 1 && *(v0 + OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_configuration + 24) == 0;
  if (!v2 || ((*(v1 + 27) ^ 1 | *(v1 + 9)) & 1) == 0)
  {
    return;
  }

  v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_downArrowView);
  if (*(v1 + 8) == 3)
  {
    v12 = *v1;
    v13 = v1[1];
    v14 = *(v1 + 4);
    MOPOIAnnotationViewConfiguration.pinSize.getter();
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    MOPOIAnnotationViewConfiguration.pinSize.getter();
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if ((v9 & 1) == 0)
    {
LABEL_12:
      MOSuggestionInterstitialExpandableListViewCellConstants.init()();
    }
  }

  [v3 setFrame:{v4, v5, v6, v7, v12, v13, v14}];
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10];

  [v3 setImage:v11];

  [v3 setContentMode:2];
}

void MOPOIAnnotationView.setupClusterlabel()()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_configuration);
  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_configuration + 16) >= 2)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_clusterCountLabel);
    v3 = *(v1 + 2);
    MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
    [v2 setFrame:?];
    v11 = v3;
    dispatch thunk of CustomStringConvertible.description.getter();
    v4 = String._bridgeToObjectiveC()();

    [v2 setText:{v4, v11}];

    [v2 setTextAlignment:1];
    v5 = [objc_opt_self() whiteColor];
    [v2 setTextColor:v5];

    v12 = *v1;
    v6 = COERCE_DOUBLE(MOPOIAnnotationViewConfiguration.pinSize.getter());
    v7 = 15.0;
    if ((v8 & 1) == 0)
    {
      if (BYTE8(v12) == 3)
      {
        v7 = v6 * 0.5;
      }

      else
      {
        v7 = v6 / 6.0;
      }
    }

    v9 = [objc_opt_self() boldSystemFontOfSize:{v7, v12}];
    [v2 setFont:v9];

    [v2 setAdjustsFontSizeToFitWidth:1];
    [v2 setClipsToBounds:1];
    v10 = [v2 layer];
    [v2 frame];
    [v10 setCornerRadius:CGRectGetWidth(v13) * 0.5];
  }
}

void MOPOIAnnotationView.setupPOIAndColors()()
{
  v1 = &v0[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_configuration];
  v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_configuration];
  if (v2)
  {
    v3 = [swift_unknownObjectRetain() _poiCategory];
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      swift_unknownObjectRelease();

      goto LABEL_17;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_8:
      v11 = objc_opt_self();
      v12 = [v2 _styleAttributes];
      v13 = objc_opt_self();
      v14 = [v13 mainScreen];
      [v14 scale];
      v16 = v15;

      v17 = [v11 newFillColorForStyleAttributes:v12 forScale:v16];
      v18 = v11;
      if (v17)
      {
        v19 = [v2 _styleAttributes];
        v20 = [v13 mainScreen];
        [v20 scale];
        v22 = v21;

        v23 = [v11 imageForStyle:v19 size:3 forScale:0 format:v22];
        if (v23)
        {
          v112 = v0;
          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, static MOAngelLogger.assets);
          swift_unknownObjectRetain();
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v116 = v28;
            *v27 = 134218242;
            v29 = [v2 name];
            if (v29)
            {
              v30 = v2;
              v31 = v29;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v33 = v32;

              v2 = v30;
            }

            else
            {
              v33 = 0;
            }

            v115 = v33;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
            v104 = Optional<A>.hashValue.getter();

            *(v27 + 4) = v104;
            swift_unknownObjectRelease();
            *(v27 + 12) = 2080;
            v114 = [v2 _poiCategory];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14GEOPOICategoryaSgMd);
            v105 = Optional.debugDescription.getter();
            v107 = v106;

            v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, &v116);

            *(v27 + 14) = v108;
            _os_log_impl(&_mh_execute_header, v25, v26, "[POIClustering] [RENDERING] POI mapItemName=%ld, mapItemPOICategory=%s", v27, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v28);
          }

          else
          {

            swift_unknownObjectRelease();
          }

          v109 = v112;
          [*&v112[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_basePOICircleView] setImage:{v23, v112, v114, v115}];
          v110 = [objc_allocWithZone(UIColor) initWithCGColor:v17];

          v111 = *&v109[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_downArrowView];
          v93 = v110;
          [v111 setTintColor:v93];
          [*&v109[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_clusterCountLabel] setBackgroundColor:v93];
          swift_unknownObjectRelease();

LABEL_52:
          return;
        }
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_17:
  if (v1[9] == 1)
  {
    v34 = objc_opt_self();
    v35 = objc_opt_self();
    v36 = [v35 workStyleAttributes];
    v37 = objc_opt_self();
    v38 = [v37 mainScreen];
    [v38 scale];
    v40 = v39;

    v41 = [v34 imageForStyle:v36 size:3 forScale:0 format:v40];
    if (v41)
    {
      v42 = [v35 workStyleAttributes];
      v43 = [v37 mainScreen];
      [v43 scale];
      v45 = v44;

      v46 = [v34 newFillColorForStyleAttributes:v42 forScale:v45];
      v47 = v34;
      if (v46)
      {
        v48 = v0;
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static MOAngelLogger.assets);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "[POIClustering] [RENDERING] Work", v52, 2u);
        }

        [*&v48[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_basePOICircleView] setImage:v41];
        v53 = [objc_allocWithZone(UIColor) initWithCGColor:v46];

        v54 = *&v48[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_downArrowView];
        v113 = v53;
        [v54 setTintColor:v113];
        [*&v48[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_clusterCountLabel] setBackgroundColor:v113];

        goto LABEL_37;
      }
    }
  }

  if ((v1[25] & 1) != 0 || v1[27] != 1)
  {
    goto LABEL_40;
  }

  v55 = objc_opt_self();
  if (one-time initialization token for cityStyleAttributes != -1)
  {
    swift_once();
  }

  v56 = static MOPOIAnnotationView.cityStyleAttributes;
  v57 = objc_opt_self();
  v58 = [v57 mainScreen];
  [v58 scale];
  v60 = v59;

  v61 = [v55 newFillColorForStyleAttributes:v56 forScale:v60];
  v62 = v55;
  if (!v61 || (v63 = [v57 mainScreen], objc_msgSend(v63, "scale"), v65 = v64, v63, (v66 = objc_msgSend(v55, "imageForStyle:size:forScale:format:", v56, 3, 0, v65)) == 0))
  {
LABEL_40:
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static MOAngelLogger.assets);
    v74 = v0;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v116 = v78;
      *v77 = 134218242;
      if (v2)
      {
        v79 = [v2 name];
        if (v79)
        {
          v80 = v79;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;
        }

        else
        {
          v82 = 0;
        }

        v115 = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
        v85 = Optional<A>.hashValue.getter();

        *(v77 + 4) = v85;

        *(v77 + 12) = 2080;
        v114 = [v2 _poiCategory];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14GEOPOICategoryaSgMd);
        v84 = Optional.debugDescription.getter();
        v83 = v86;
      }

      else
      {
        *(v77 + 4) = 0;

        *(v77 + 12) = 2080;
        v83 = 0xE300000000000000;
        v84 = 7104878;
      }

      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v83, &v116);

      *(v77 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v75, v76, "[POIClustering] [RENDERING] Fallback, geoMapItem.name=%ld, geoMapItem.poiCategory=%s", v77, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v78);
    }

    else
    {
    }

    v88 = *&v74[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_basePOICircleView];
    [v88 frame];
    CGRectGetWidth(v118);
    [v88 frame];
    CGRectGetHeight(v119);
    [v88 frame];
    CGRectGetWidth(v120);
    [v88 frame];
    CGRectGetHeight(v121);
    MOSuggestionInterstitialExpandableListViewCellConstants.init()();
    v93 = [objc_allocWithZone(UIImageView) initWithFrame:{v89, v90, v91, v92}];
    v94 = String._bridgeToObjectiveC()();
    v95 = [objc_opt_self() _systemImageNamed:v94];

    [v93 setImage:v95];
    v96 = objc_opt_self();
    v97 = [v96 systemWhiteColor];
    [v93 setTintColor:v97];

    v98 = [v96 systemIndigoColor];
    [v88 setBackgroundColor:v98];

    v99 = *&v74[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_downArrowView];
    v100 = [v96 systemIndigoColor];
    [v99 setTintColor:v100];

    v101 = *&v74[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_clusterCountLabel];
    v102 = [v96 systemIndigoColor];
    [v101 setBackgroundColor:v102];

    v103 = [v88 layer];
    [v88 frame];
    [v103 setCornerRadius:CGRectGetHeight(v122) * 0.5];

    [v88 addSubview:v93];
    goto LABEL_52;
  }

  v67 = v66;
  v68 = v0;
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static MOAngelLogger.assets);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v71, "[POIClustering] [RENDERING] City", v72, 2u);
  }

  [*&v68[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_basePOICircleView] setImage:v67];
  v113 = [objc_allocWithZone(UIColor) initWithCGColor:v61];

  [*&v68[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_clusterCountLabel] setBackgroundColor:v113];
LABEL_37:
}

id MOPOIAnnotationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOPOIAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id specialized MOPOIAnnotationView.init(annotation:configuration:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_basePOICircleView;
  *&v2[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_downArrowView;
  *&v2[v12] = [objc_allocWithZone(UIImageView) init];
  v13 = OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_clusterCountLabel;
  *&v2[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_borderBackgroundView;
  *&v2[v14] = [objc_allocWithZone(UIView) init];
  v15 = &v2[OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_configuration];
  *(v15 + 4) = *(a2 + 32);
  v16 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 1) = v16;
  outlined init with copy of MOPOIAnnotationViewConfiguration(a2, aBlock);
  v17 = type metadata accessor for MOPOIAnnotationView();
  v27.receiver = v2;
  v27.super_class = v17;
  v18 = objc_msgSendSuper2(&v27, "initWithAnnotation:reuseIdentifier:", v24, 0);
  type metadata accessor for OS_dispatch_queue();
  v19 = v18;
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in MOPOIAnnotationView.init(annotation:configuration:);
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_30;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v25);
  return v19;
}

void specialized MOPOIAnnotationView.setupBorderBackground(cluster:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_borderBackgroundView);
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  [v1 setFrame:?];
  v2 = [v1 layer];
  v3 = [objc_opt_self() whiteColor];
  v4 = [v3 CGColor];

  [v2 setBackgroundColor:v4];
  [v1 setClipsToBounds:1];
  v5 = [v1 layer];
  [v1 frame];
  [v5 setCornerRadius:CGRectGetWidth(v7) * 0.5];
}

void specialized MOPOIAnnotationView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_basePOICircleView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_downArrowView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_clusterCountLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC16MomentsUIService19MOPOIAnnotationView_borderBackgroundView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MOPOIAnnotationViewConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for MOPOIAnnotationViewConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001A15AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id MOAngelControllerWrapper.didTransitionTo(_:)(id result)
{
  v2 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState;
  if (*(v1 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState) != result)
  {
    v3 = result;
    result = [*(v1 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) sendSuggestionSheetStateUpdate:result sender:v1];
    *(v1 + v2) = v3;
  }

  return result;
}

char *MOAngelControllerWrapper.uiInternalOS.unsafeMutableAddressor()
{
  if (one-time initialization token for uiInternalOS != -1)
  {
    swift_once();
  }

  return &static MOAngelControllerWrapper.uiInternalOS;
}

uint64_t MOMusicPlaybackCoordinator.delegates.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

void *MOEventBundleWithAsset.__allocating_init(bundle:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = a1;
  return result;
}

void *MOEventBundleWithAsset.init(bundle:)(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  return v1;
}

uint64_t MOSuggestionAssetWorkoutRouteProvider.deinit()
{

  return v0;
}

uint64_t MOSuggestionAssetWorkoutRouteProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MOAngelControllerWrapper.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_delegate;
  swift_beginAccess();
  return outlined init with copy of MOAngelControllerWrapperDelegate?(v1 + v3, a1);
}

uint64_t MOAngelControllerWrapper.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_delegate;
  swift_beginAccess();
  outlined assign with take of MOAngelControllerWrapperDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

id one-time initialization function for uiInternalOS()
{
  result = [objc_opt_self() isInternalBuild];
  static MOAngelControllerWrapper.uiInternalOS = result;
  return result;
}

uint64_t static MOAngelControllerWrapper.uiInternalOS.getter()
{
  if (one-time initialization token for uiInternalOS != -1)
  {
    swift_once();
  }

  return static MOAngelControllerWrapper.uiInternalOS;
}

uint64_t key path getter for MOAngelControllerWrapper.isVisible : MOAngelControllerWrapper@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF0))();
  *a2 = result & 1;
  return result;
}

uint64_t MOAngelControllerWrapper.isVisible.getter()
{
  return MOAngelControllerWrapper.isVisible.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MOAngelControllerWrapper.isVisible.setter()
{
  return MOAngelControllerWrapper.isVisible.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*MOAngelControllerWrapper.isVisible.modify(uint64_t *a1))()
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
  return MOAngelControllerWrapper.isVisible.modify;
}

uint64_t key path setter for MOAngelControllerWrapper.$isVisible : MOAngelControllerWrapper(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((swift_isaMask & **a2) + 0x110))(v6);
}

uint64_t MOAngelControllerWrapper.$isVisible.getter()
{
  return MOAngelControllerWrapper.$isVisible.getter();
}

{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MOAngelControllerWrapper.$isVisible.setter(uint64_t a1)
{
  return MOAngelControllerWrapper.$isVisible.setter(a1);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MOAngelControllerWrapper.$isVisible.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
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

  v9 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper__isVisible;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MOAngelControllerWrapper.$isVisible.modify;
}

uint64_t key path getter for MOAngelControllerWrapper.isExpanded : MOAngelControllerWrapper@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

uint64_t (*MOAngelControllerWrapper.isExpanded.modify(uint64_t *a1))()
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
  return MOAngelControllerWrapper.isExpanded.modify;
}

void MOAngelControllerWrapper.isVisible.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for MOAngelControllerWrapper.$isExpanded : MOAngelControllerWrapper(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((swift_isaMask & **a2) + 0x140))(v6);
}

uint64_t (*MOAngelControllerWrapper.$isExpanded.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
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

  v9 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper__isExpanded;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MOAngelControllerWrapper.$isExpanded.modify;
}

void MOAngelControllerWrapper.$isVisible.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id MOAngelControllerWrapper.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager;
  *&v0[v5] = [objc_opt_self() sharedInstance];
  v6 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_engagementWriter;
  *&v0[v6] = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState] = 0;
  *&v0[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_initialPresentRequestState] = 0;
  *&v0[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_contentOptions] = 0;
  v7 = &v0[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_delegate];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper__isVisible;
  v15 = 0;
  Published.init(initialValue:)();
  v9 = *(v2 + 32);
  v9(&v0[v8], v4, v1);
  v10 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper__isExpanded;
  v15 = 1;
  Published.init(initialValue:)();
  v9(&v0[v10], v4, v1);
  v11 = type metadata accessor for MOAngelControllerWrapper();
  v14.receiver = v0;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, "init");
}

Swift::Void __swiftcall MOAngelControllerWrapper.cancelSheetSelected()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.shared);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003CLL, 0x80000001002B8040, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "MOAngelControllerWrapper: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager);

  [v7 cancelSheet:v1];
}

Swift::Void __swiftcall MOAngelControllerWrapper.showBlankEntrySelected()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.shared);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004BLL, 0x80000001002B8080, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "MOAngelControllerWrapper: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager);

  [v7 showBlankComposeView:v1];
}

uint64_t MOAngelControllerWrapper.selectedBundle(_:modifiedTitle:isPromptElligibleForTransfer:forContainer:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v60 = a5;
  v61 = a6;
  v62 = type metadata accessor for UUID();
  v11 = *(v62 - 8);
  __chkstk_darwin(v62);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 labels];
  if (v14)
  {
    v15 = v14;
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v16 + 16))
    {
    }

    if (a3)
    {
      goto LABEL_7;
    }
  }

  else if (a3)
  {
LABEL_7:
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static MOSuggestionAssetCacheManager.shared;
  MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  v18 = (*(*v17 + 240))();

  v19 = String._bridgeToObjectiveC()();

  if (v18)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetPrototype);
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v20.super.isa = 0;
  }

  v21 = [objc_allocWithZone(MOSuggestion) initWithBundle:a1 modifiedTitle:v19 isPromptElligibleForTransfer:a4 & 1 assetPrototypes:v20.super.isa];

  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v22._object = 0x80000001002B80D0;
  v22._countAndFlagsBits = 0xD000000000000037;
  String.append(_:)(v22);
  v23 = [v21 baseBundle];
  v24 = [v23 bundleIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v11 + 8))(v13, v62);
  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 46;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v31 = v66;
  v30 = v67;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static MOAngelLogger.shared);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v58 = v13;
    v37 = v11;
    v38 = v7;
    v39 = a1;
    v40 = v21;
    v41 = v36;
    v66 = v36;
    *v35 = 136315138;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, &v66);
    _os_log_impl(&_mh_execute_header, v33, v34, "MOAngelControllerWrapper: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    v21 = v40;
    a1 = v39;
    v7 = v38;
    v11 = v37;
    v13 = v58;
  }

  v59 = v21;
  v42 = *(v7 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager);
  [v42 performTask:1 suggestion:v21 sender:v7];
  v43 = *(v7 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_engagementWriter);
  v44 = MOSuggestionEngagementEventSelected;
  v45 = [v42 getClientBundleIdentifierFor:v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v46 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1002A48B0;
  v48 = [a1 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v11 + 32))(v47 + v46, v13, v62);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v50 = String._bridgeToObjectiveC()();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  v51 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  specialized MOAngelControllerWrapper.getBundleRankingContext(_:)(a1);
  type metadata accessor for MOUsageContextType(0);
  lazy protocol witness table accessor for type MOUsageContextType and conformance MOUsageContextType(&lazy protocol witness table cache variable for type MOUsageContextType and conformance MOUsageContextType, type metadata accessor for MOUsageContextType);
  v52 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v43 logSuggestionEngagementEvent:v44 clientIdentifier:v45 forBundles:isa uiContainer:v50 containerVisibleTime:v51 otherContext:v52];

  v53 = [a1 setSuggestionEngagementEvent:v44];
  (*((swift_isaMask & *v7) + 0xD8))(&v66, v53);
  if (v68)
  {
    outlined init with copy of MOProtectedAppsManagerDelegate(&v66, v63);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v66, &_s16MomentsUIService32MOAngelControllerWrapperDelegate_pSgMd);
    v54 = v64;
    v55 = v65;
    __swift_project_boxed_opaque_existential_0(v63, v64);
    (*(v55 + 32))(v54, v55);

    return __swift_destroy_boxed_opaque_existential_0(v63);
  }

  else
  {

    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v66, &_s16MomentsUIService32MOAngelControllerWrapperDelegate_pSgMd);
  }
}

uint64_t MOAngelControllerWrapper.quickAddBundle(_:modifiedTitle:isPromptElligibleForTransfer:forContainer:)(void *a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v58 = a6;
  v57 = a5;
  v55 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v12._object = 0x80000001002B8110;
  v12._countAndFlagsBits = 0xD000000000000036;
  String.append(_:)(v12);
  v60 = a1;
  v13 = [a1 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = UUID.uuidString.getter();
  v16 = v15;
  v17 = *(v9 + 8);
  v56 = v8;
  v17(v11, v8);
  v18._countAndFlagsBits = v14;
  v18._object = v16;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 46;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v21 = v64;
  v20 = v65;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static MOAngelLogger.shared);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = a4;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v64 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v64);
    _os_log_impl(&_mh_execute_header, v23, v24, "MOAngelControllerWrapper: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);

    a4 = v25;
  }

  v28 = [v60 labels];
  if (v28)
  {
    v29 = v28;
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v30 + 16))
    {
    }

    if (v55)
    {
      goto LABEL_11;
    }
  }

  else if (v55)
  {
LABEL_11:
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v31 = static MOSuggestionAssetCacheManager.shared;
  MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  v32 = (*(*v31 + 240))();

  v33 = String._bridgeToObjectiveC()();

  if (v32)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetPrototype);
    v34.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v34.super.isa = 0;
  }

  v35 = objc_allocWithZone(MOSuggestion);
  v36 = v60;
  v37 = [v35 initWithBundle:v60 modifiedTitle:v33 isPromptElligibleForTransfer:a4 & 1 assetPrototypes:v34.super.isa];

  v38 = v59;
  v39 = *(v59 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager);
  v55 = v37;
  [v39 performTask:2 suggestion:v37 sender:v59];
  v54 = *(v38 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_engagementWriter);
  v40 = MOSuggestionEngagementEventQuickAddEntry;
  v41 = [v39 getClientBundleIdentifierFor:v38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v42 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1002A48B0;
  v44 = [v36 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 32))(v43 + v42, v11, v56);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v46 = String._bridgeToObjectiveC()();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  v47 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  specialized MOAngelControllerWrapper.getBundleRankingContext(_:)(v36);
  type metadata accessor for MOUsageContextType(0);
  lazy protocol witness table accessor for type MOUsageContextType and conformance MOUsageContextType(&lazy protocol witness table cache variable for type MOUsageContextType and conformance MOUsageContextType, type metadata accessor for MOUsageContextType);
  v48 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v54 logSuggestionEngagementEvent:v40 clientIdentifier:v41 forBundles:isa uiContainer:v46 containerVisibleTime:v47 otherContext:v48];

  v49 = [v36 setSuggestionEngagementEvent:v40];
  (*((swift_isaMask & *v38) + 0xD8))(&v64, v49);
  if (v66)
  {
    outlined init with copy of MOProtectedAppsManagerDelegate(&v64, v61);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v64, &_s16MomentsUIService32MOAngelControllerWrapperDelegate_pSgMd);
    v50 = v62;
    v51 = v63;
    __swift_project_boxed_opaque_existential_0(v61, v62);
    (*(v51 + 32))(v50, v51);

    return __swift_destroy_boxed_opaque_existential_0(v61);
  }

  else
  {

    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v64, &_s16MomentsUIService32MOAngelControllerWrapperDelegate_pSgMd);
  }
}

void MOAngelControllerWrapper.logInterstitialTap(_:forContainer:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35[1] = a2;
  v35[2] = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(81);
  v10._object = 0x80000001002B8150;
  v10._countAndFlagsBits = 0xD00000000000004ELL;
  String.append(_:)(v10);
  v36 = a1;
  v11 = [a1 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v18 = v37;
  v17 = v38;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static MOAngelLogger.shared);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v37);
    _os_log_impl(&_mh_execute_header, v20, v21, "MOAngelControllerWrapper: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  v24 = *(v4 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_engagementWriter);
  v25 = MOSuggestionEngagementEventThumbsUp;
  v26 = [*(v4 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) getClientBundleIdentifierFor:v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1002A48B0;
  v29 = v36;
  v30 = [v36 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v7 + 32))(v28 + v27, v9, v6);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = String._bridgeToObjectiveC()();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  v33 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  specialized MOAngelControllerWrapper.getBundleRankingContext(_:)(v29);
  type metadata accessor for MOUsageContextType(0);
  lazy protocol witness table accessor for type MOUsageContextType and conformance MOUsageContextType(&lazy protocol witness table cache variable for type MOUsageContextType and conformance MOUsageContextType, type metadata accessor for MOUsageContextType);
  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v24 logSuggestionEngagementEvent:v25 clientIdentifier:v26 forBundles:isa uiContainer:v32 containerVisibleTime:v33 otherContext:v34];
}

id MOAngelControllerWrapper.removeBundle(_:forContainer:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36[1] = a2;
  v36[2] = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v10._object = 0x80000001002B81A0;
  v10._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v10);
  v37 = a1;
  v11 = [a1 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v18 = v38;
  v17 = v39;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static MOAngelLogger.shared);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v38);
    _os_log_impl(&_mh_execute_header, v20, v21, "MOAngelControllerWrapper: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  v24 = *(v4 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_engagementWriter);
  v25 = MOSuggestionEngagementEventDeleted;
  v26 = [*(v4 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) getClientBundleIdentifierFor:v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1002A48B0;
  v29 = v37;
  v30 = [v37 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v7 + 32))(v28 + v27, v9, v6);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = String._bridgeToObjectiveC()();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  v33 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  specialized MOAngelControllerWrapper.getBundleRankingContext(_:)(v29);
  type metadata accessor for MOUsageContextType(0);
  lazy protocol witness table accessor for type MOUsageContextType and conformance MOUsageContextType(&lazy protocol witness table cache variable for type MOUsageContextType and conformance MOUsageContextType, type metadata accessor for MOUsageContextType);
  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v24 logSuggestionEngagementEvent:v25 clientIdentifier:v26 forBundles:isa uiContainer:v32 containerVisibleTime:v33 otherContext:v34];

  return [v29 setSuggestionEngagementEvent:v25];
}

void MOAngelControllerWrapper.logViewedBundle(_:forContainer:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_engagementWriter);
  v15 = MOSuggestionEngagementEventViewed;
  v7 = [*(v1 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) getClientBundleIdentifierFor:v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002A48B0;
  v10 = [a1 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(v9 + v8, v6, v3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = String._bridgeToObjectiveC()();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  v13 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  specialized MOAngelControllerWrapper.getBundleRankingContext(_:)(a1);
  type metadata accessor for MOUsageContextType(0);
  lazy protocol witness table accessor for type MOUsageContextType and conformance MOUsageContextType(&lazy protocol witness table cache variable for type MOUsageContextType and conformance MOUsageContextType, type metadata accessor for MOUsageContextType);
  v14 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 logSuggestionEngagementEvent:v15 clientIdentifier:v7 forBundles:isa uiContainer:v12 containerVisibleTime:v13 otherContext:v14];
}

uint64_t MOAngelControllerWrapper.selectedBundleFeedback(_:forContainer:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a2;
  v58 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v6 - 8);
  v62 = &v55 - v7;
  v8 = type metadata accessor for URL();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v55 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v14._countAndFlagsBits = 0xD000000000000047;
  v14._object = 0x80000001002B81E0;
  String.append(_:)(v14);
  v15 = a1;
  v16 = [a1 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = UUID.uuidString.getter();
  v19 = v18;
  v20 = *(v11 + 8);
  v60 = v11 + 8;
  v61 = v10;
  v59 = v20;
  v20(v13, v10);
  v21._countAndFlagsBits = v17;
  v21._object = v19;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 46;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v24 = v65;
  v23 = v66;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static MOAngelLogger.shared);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v65 = v29;
    *v28 = 136315138;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v65);
    _os_log_impl(&_mh_execute_header, v26, v27, "MOAngelControllerWrapper: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  v56 = *(v4 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_engagementWriter);
  v30 = MOSuggestionEngagementEventAnnotated;
  v31 = [*(v4 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) getClientBundleIdentifierFor:v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v32 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1002A48B0;
  v34 = [v15 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = v61;
  (*(v11 + 32))(v33 + v32, v13, v61);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v37 = String._bridgeToObjectiveC()();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  v38 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  specialized MOAngelControllerWrapper.getBundleRankingContext(_:)(v15);
  type metadata accessor for MOUsageContextType(0);
  lazy protocol witness table accessor for type MOUsageContextType and conformance MOUsageContextType(&lazy protocol witness table cache variable for type MOUsageContextType and conformance MOUsageContextType, type metadata accessor for MOUsageContextType);
  v39 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v56 logSuggestionEngagementEvent:v30 clientIdentifier:v31 forBundles:isa uiContainer:v37 containerVisibleTime:v38 otherContext:v39];

  [v15 setSuggestionEngagementEvent:v30];
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v65 = 0xD00000000000001FLL;
  v66 = 0x80000001002B8230;
  v40 = [v15 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = UUID.uuidString.getter();
  v43 = v42;
  v59(v13, v35);
  v44._countAndFlagsBits = v41;
  v44._object = v43;
  String.append(_:)(v44);

  v45 = v62;
  URL.init(string:)();

  v47 = v63;
  v46 = v64;
  if ((*(v63 + 48))(v45, 1, v64) == 1)
  {
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v45, &_s10Foundation3URLVSgMd);
  }

  v49 = v55;
  (*(v47 + 32))(v55, v45, v46);
  v50 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v51);
  v53 = v52;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type MOUsageContextType and conformance MOUsageContextType(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  v54 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v50 openURL:v53 options:v54 completionHandler:0];

  return (*(v47 + 8))(v49, v46);
}

Swift::Void __swiftcall MOAngelControllerWrapper.expandedChanged(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = a1;
  if (((*((swift_isaMask & *v1) + 0x120))() & 1) != v4)
  {
    (*((swift_isaMask & *v1) + 0x128))(v4);
  }

  if (a1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v6._object = 0x80000001002B8250;
  v6._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v6);
  v7._countAndFlagsBits = MOSuggestionSheetViewState.toString.getter(v5);
  String.append(_:)(v7);

  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static MOAngelLogger.shared);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v15);
    _os_log_impl(&_mh_execute_header, v10, v11, "MOAngelControllerWrapper: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  v14 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState;
  if (v5 != *(v2 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState))
  {
    [*(v2 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) sendSuggestionSheetStateUpdate:v5 sender:v2];
    *(v2 + v14) = v5;
  }
}

uint64_t MOSuggestionSheetViewState.toString.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x455353494D534944;
    case 2:
      return 0x455243534C4C5546;
    case 1:
      return 1262830928;
  }

  _StringGuts.grow(_:)(19);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000011;
}

Swift::Void __swiftcall MOAngelControllerWrapper.visibilityChanged(_:)(Swift::Bool a1)
{
  v2 = v1;
  if (a1)
  {
    if ((*((swift_isaMask & *v1) + 0x120))())
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v4._object = 0x80000001002B8290;
  v4._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v4);
  v5._countAndFlagsBits = MOSuggestionSheetViewState.toString.getter(v3);
  String.append(_:)(v5);

  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static MOAngelLogger.shared);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v13);
    _os_log_impl(&_mh_execute_header, v8, v9, "MOAngelControllerWrapper: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  v12 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState;
  if (v3 != *(v2 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState))
  {
    [*(v2 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) sendSuggestionSheetStateUpdate:v3 sender:v2];
    *(v2 + v12) = v3;
  }
}

uint64_t MOAngelControllerWrapper.performFeedbackOnBundle(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for URL();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v11._countAndFlagsBits = 0xD000000000000047;
  v11._object = 0x80000001002B81E0;
  String.append(_:)(v11);
  v12 = *(*a1 + 104);
  v47 = *a1 + 104;
  v48 = v12;
  v13 = v12();
  v14 = [v13 bundleIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  v18 = *(v8 + 8);
  v49 = v7;
  v46 = v18;
  v18(v10, v7);
  v19._countAndFlagsBits = v15;
  v19._object = v17;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v22 = v52;
  v21 = v53;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static MOAngelLogger.shared);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v52 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v52);
    _os_log_impl(&_mh_execute_header, v24, v25, "MOAngelControllerWrapper: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v52 = 0xD00000000000001FLL;
  v53 = 0x80000001002B8230;
  v29 = (v48)(v28);
  v30 = [v29 bundleIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  v46(v10, v49);
  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  URL.init(string:)();

  v36 = v50;
  v35 = v51;
  if ((*(v50 + 48))(v4, 1, v51) == 1)
  {
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v4, &_s10Foundation3URLVSgMd);
  }

  v38 = v45;
  (*(v36 + 32))(v45, v4, v35);
  v39 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v40);
  v42 = v41;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type MOUsageContextType and conformance MOUsageContextType(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v39 openURL:v42 options:isa completionHandler:0];

  return (*(v36 + 8))(v38, v35);
}

Swift::Bool __swiftcall MOAngelControllerWrapper.isPublicUI()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) getClientBundleIdentifierFor:v0];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0xD000000000000011 && 0x80000001002AF920 == v5)
  {

LABEL_8:
    v8 = 0;
    return v8 & 1;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v8 = v7 ^ 1;
  return v8 & 1;
}

MomentsUIService::MOClientPresentationDetails __swiftcall MOAngelControllerWrapper.getClientPresentationDetails()()
{
  v1 = (*((swift_isaMask & *v0) + 0x1B0))();
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_contentOptions);
  v3 = v1 & 1;
  result.content.rawValue = v2;
  result.isPublicUI = v3;
  return result;
}

Swift::String_optional __swiftcall MOAngelControllerWrapper.clientName()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) getClientBundleIdentifierFor:v0];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = objc_allocWithZone(LSApplicationRecord);

  v7 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v3, v5, 1);
  v8 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v29 = 0x614E746E65696C63;
  v30 = 0xEF20726F6620656DLL;
  v9._countAndFlagsBits = v3;
  v9._object = v5;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 572538144;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  if (v7)
  {
    v11 = [v7 localizedName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14._countAndFlagsBits = v12;
  v14._object = v8;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 34;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v17 = v29;
  v16 = v30;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static MOAngelLogger.shared);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v29);
    _os_log_impl(&_mh_execute_header, v19, v20, "MOAngelControllerWrapper: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  if (!v7)
  {
    v1 = 0;
LABEL_12:
    v27 = 0;
    goto LABEL_13;
  }

  v23 = [v7 localizedName];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = v26;
  v1 = v24;
LABEL_13:
  result.value._object = v27;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall MOAngelControllerWrapper.clientBundleIdentifier()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) getClientBundleIdentifierFor:v0];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

id MOAngelControllerWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOAngelControllerWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MOAngelControllerWrapper@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MOAngelControllerWrapper();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall MOAngelControllerWrapper.shouldRefreshEvents()()
{
  if ([*(v0 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) isClientVisibleFor:v0])
  {
    (*((swift_isaMask & *v0) + 0xD8))(v16);
    if (v16[3])
    {
      outlined init with copy of MOProtectedAppsManagerDelegate(v16, v13);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService32MOAngelControllerWrapperDelegate_pSgMd);
      v1 = v14;
      v2 = v15;
      __swift_project_boxed_opaque_existential_0(v13, v14);
      (*(v2 + 8))(v1, v2);
      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    else
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService32MOAngelControllerWrapperDelegate_pSgMd);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static MOAngelLogger.shared);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x80000001002B8310, v16);
      _os_log_impl(&_mh_execute_header, v8, v9, "MOAngelControllerWrapper: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static MOAngelLogger.shared);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x80000001002B82D0, v16);
      _os_log_impl(&_mh_execute_header, oslog, v4, "MOAngelControllerWrapper: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
    }
  }
}

uint64_t MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(MOAngelControllerWrapper.willReturnAssets(for:withTypes:), 0, 0);
}

{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(MOAngelControllerWrapper.willReturnAssets(for:withTypes:), 0, 0);
}

uint64_t MOAngelControllerWrapper.willReturnAssets(for:withTypes:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = partial apply for closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:);
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MOSuggestionAssetsBundleCSgMd);
  *v3 = v0;
  v3[1] = MOAngelControllerWrapper.willReturnAssets(for:withTypes:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001002B8340, partial apply for specialized closure #1 in MOAngelControllerWrapper.continuationWrapper<A>(action:), v2, v4);
}

{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = partial apply for closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:);
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17MOSuggestionAssetCGSgMd);
  *v3 = v0;
  v3[1] = MOAngelControllerWrapper.willReturnAssets(for:withTypes:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001002B8340, partial apply for thunk for @callee_guaranteed (@in_guaranteed URL) -> (), v2, v4);
}

{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v1 + 16);

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24MOSuggestionAssetsBundleCSgs5NeverOGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v24 - v9;
  v11 = [a2 baseBundle];
  v12 = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);

  if (v12)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v13 = static MOSuggestionAssetCacheManager.shared;
    v14 = (*((swift_isaMask & *a3) + 0x1B0))();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(v10, a1, v6);
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    (*(v7 + 32))(v17 + v16, v10, v6);
    *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v18 = one-time initialization token for defaultQueue;

    if (v18 != -1)
    {
      swift_once();
    }

    (*(*v13 + 232))(v12, 0, static MOSuggestionAssetCacheManager.defaultQueue, v14 & 1, partial apply for closure #1 in closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:), v17);
  }

  else
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static MOAngelLogger.assets);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "(Legacy Support) No assets to pack as expected", v23, 2u);
    }

    v24[1] = 0;
    return CheckedContinuation.resume(returning:)();
  }
}

{
  v81 = a3;
  v90 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGSgs5NeverOGMd);
  v83 = *(v96 - 8);
  v82 = *(v83 + 64);
  __chkstk_darwin(v96);
  v94 = &v76 - v4;
  v79 = type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent();
  __chkstk_darwin(v79);
  v6 = (&v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = type metadata accessor for Date();
  v84 = *(v97 - 8);
  v7 = __chkstk_darwin(v97);
  v93 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v8;
  __chkstk_darwin(v7);
  v10 = &v76 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v92 = &v76 - v17;
  v18 = __chkstk_darwin(v16);
  v78 = &v76 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v76 - v21;
  __chkstk_darwin(v20);
  v24 = &v76 - v23;
  UUID.init()();
  v77 = a2;
  v25 = [a2 baseBundle];
  v26 = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);

  v91 = v24;
  if (v26)
  {
    v95 = v10;
    v98 = v12;
    __chkstk_darwin(v27);
    *(&v76 - 2) = v24;
    v88 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16MomentsUIService26MOSuggestionAssetReferenceCG_AHs5NeverOTg5(partial apply for closure #1 in Array<A>.withTransferID(uuid:), (&v76 - 4), v26);

    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static MOAngelLogger.assets);
    v29 = v98;
    v85 = *(v98 + 16);
    v86 = v98 + 16;
    v85(v22, v24, v11);
    v30 = Logger.logObject.getter();
    v31 = v24;
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v30, v32);
    v89 = v11;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v99[0] = v35;
      *v34 = 136315138;
      v36 = UUID.uuidString.getter();
      v38 = v37;
      v87 = *(v98 + 8);
      v87(v22, v89);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v99);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v32, "[MOAngelControllerWrapper.willReturnAssets] Starting sheet processing for transferID=%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);

      v11 = v89;
    }

    else
    {

      v87 = *(v29 + 8);
      v87(v22, v11);
    }

    v40 = v97;
    Date.init()();
    v51 = [v77 baseBundle];
    v52 = v78;
    v53 = v31;
    v54 = v85;
    v85(v78, v31, v11);
    *v6 = 0;
    v6[1] = 0;
    v55 = v79;
    *(v6 + *(v79 + 36)) = 0;
    v6[2] = [v51 bundleSubType];
    v6[3] = [v51 bundleSuperType];
    v54(v6 + *(v55 + 32), v52, v11);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v56 = *(*static MOSuggestionAssetCacheManager.shared + 256);
    v57 = v88;
    v77 = static MOSuggestionAssetCacheManager.shared;
    v58 = v56(v88);
    if (v58)
    {
      v59 = v58;
      if (v57 >> 62)
      {
        v60 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v60 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v87(v52, v11);
      *v6 = v60;
      v6[1] = v59;
      v40 = v97;
    }

    else
    {
      v87(v52, v11);
    }

    v78 = swift_allocBox();
    v62 = outlined init with take of MOSuggestionAssetAnalytics.AssetTransferEvent(v6, v61);
    LODWORD(v79) = (*((swift_isaMask & *v81) + 0x1B0))(v62);
    v76 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = v84;
    (*(v84 + 16))(v93, v95, v40);
    v85(v92, v53, v11);
    v64 = v83;
    (*(v83 + 16))(v94, v90, v96);
    v65 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v66 = (v80 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = v98;
    v68 = (*(v98 + 80) + v66 + 8) & ~*(v98 + 80);
    v69 = (v13 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (*(v64 + 80) + v69 + 8) & ~*(v64 + 80);
    v71 = swift_allocObject();
    (*(v63 + 32))(v71 + v65, v93, v40);
    *(v71 + v66) = v78;
    v72 = v71 + v68;
    v73 = v89;
    (*(v67 + 32))(v72, v92, v89);
    *(v71 + v69) = v76;
    (*(v64 + 32))(v71 + v70, v94, v96);
    v74 = one-time initialization token for defaultQueue;

    if (v74 != -1)
    {
      swift_once();
    }

    (*(*v77 + 232))(v88, 0, static MOSuggestionAssetCacheManager.defaultQueue, v79 & 1, partial apply for closure #1 in closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:), v71);

    (*(v63 + 8))(v95, v97);
    v87(v91, v73);
  }

  else
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static MOAngelLogger.assets);
    (*(v12 + 16))(v15, v24, v11);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v99[0] = v45;
      *v44 = 136315138;
      v46 = UUID.uuidString.getter();
      v48 = v47;
      v49 = *(v12 + 8);
      v49(v15, v11);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v99);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "[MOAngelControllerWrapper.willReturnAssets] Failed to initiate transferID=%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {

      v49 = *(v12 + 8);
      v49(v15, v11);
    }

    v99[0] = 0;
    CheckedContinuation.resume(returning:)();
    return (v49)(v91, v11);
  }
}

uint64_t closure #1 in closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(id *a1)
{
  if (!a1)
  {
    if (one-time initialization token for assets == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_94;
  }

  if (one-time initialization token for assets != -1)
  {
LABEL_71:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.assets);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = a1 >> 62;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v5)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&_mh_execute_header, v3, v4, "(Legacy Support) Assets to send n=%ld", v6, 0xCu);
  }

  else
  {
  }

  v97 = &_swiftEmptyDictionarySingleton;
  v12 = [objc_allocWithZone(MOSuggestionAssetsBundle) init];
  v13 = v12;
  if (v5)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    v92 = v13;
    if (v14)
    {
LABEL_14:
      if (v14 >= 1)
      {
        swift_beginAccess();
        v15 = 0;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v16 = a1[v15 + 4];
          }

          v17 = v16;
          v18 = [v16 assetType];
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
          if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
          {
            goto LABEL_35;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v24)
          {
            break;
          }

          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;
          if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
          {
            goto LABEL_35;
          }

          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v31)
          {
            break;
          }

          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;
          if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
          {
LABEL_35:
            v25 = &MOSuggestionAssetsTypeWorkout;
            goto LABEL_36;
          }

          v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v59)
          {
            break;
          }

          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;
          if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
          {
            goto LABEL_59;
          }

          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v64)
          {
            goto LABEL_61;
          }

          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v66;
          if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
          {
LABEL_59:
            v25 = &MOSuggestionAssetsTypePhoto;
LABEL_36:

LABEL_37:
            v36 = *v25;

            v18 = v36;
            goto LABEL_38;
          }

          v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v69)
          {
LABEL_61:
            v25 = &MOSuggestionAssetsTypePhoto;
            goto LABEL_37;
          }

LABEL_38:
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v38 = Strong;
            MOAngelControllerWrapper.grantAccessToAssets(_:)(a1);
          }

          v39 = v97;
          if (v97[2])
          {

            specialized __RawDictionaryStorage.find<A>(_:)(v18);
            v41 = v40;

            if (v41)
            {
              v43 = specialized Dictionary.subscript.modify(v96, v18);
              if (*v42)
              {
                v44 = v42;
                v17 = v17;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }

              (v43)(v96, 0);

              goto LABEL_18;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1002A4A70;
          *(v45 + 32) = v17;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v96[0] = v39;
          v48 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
          v49 = v39[2];
          v50 = (v47 & 1) == 0;
          v51 = v49 + v50;
          if (__OFADD__(v49, v50))
          {
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          v52 = v47;
          if (v39[3] >= v51)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v55 = v96[0];
              if ((v47 & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v55 = v96[0];
              if ((v52 & 1) == 0)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, isUniquelyReferenced_nonNull_native);
            v53 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
            if ((v52 & 1) != (v54 & 1))
            {
              type metadata accessor for MOSuggestionAssetsType(0);
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v48 = v53;
            v55 = v96[0];
            if ((v52 & 1) == 0)
            {
LABEL_54:
              v55[(v48 >> 6) + 8] |= 1 << v48;
              *(v55[6] + 8 * v48) = v18;
              *(v55[7] + 8 * v48) = v45;
              v56 = v55[2];
              v57 = __OFADD__(v56, 1);
              v58 = v56 + 1;
              if (v57)
              {
                goto LABEL_70;
              }

              v55[2] = v58;
              goto LABEL_17;
            }
          }

          *(v55[7] + 8 * v48) = v45;

LABEL_17:
          v97 = v55;
LABEL_18:
          if (v14 == ++v15)
          {
            v70 = v97;
            v13 = v92;
            goto LABEL_74;
          }
        }

        v25 = &MOSuggestionAssetsTypeWorkout;
        goto LABEL_37;
      }

      goto LABEL_93;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = v12;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  v70 = &_swiftEmptyDictionarySingleton;
LABEL_74:
  v71 = 0;
  v72 = (v70 + 8);
  v73 = 1 << *(v70 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & v70[8];
  v76 = (v73 + 63) >> 6;
  v93 = v70;
  while (v75)
  {
    v78 = v13;
LABEL_85:
    v80 = (v71 << 9) | (8 * __clz(__rbit64(v75)));
    v81 = *(v70[6] + v80);
    v82 = *(v70[7] + v80);
    swift_bridgeObjectRetain_n();
    v83 = v81;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    v95 = v83;
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v96[0] = v94;
      *v86 = 136315394;
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v96);

      *(v86 + 4) = v89;
      *(v86 + 12) = 2048;
      if (v82 >> 62)
      {
        v90 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v90 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v86 + 14) = v90;

      _os_log_impl(&_mh_execute_header, v84, v85, "(Legacy Support) Packing AssetBundle for type %s with count n=%ld", v86, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v94);

      v13 = v92;
      v70 = v93;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v13 = v78;
    }

    v75 &= v75 - 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 addAssets:isa forType:v95];
  }

  while (1)
  {
    v79 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v79 >= v76)
    {

      v96[0] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24MOSuggestionAssetsBundleCSgs5NeverOGMd);
      return CheckedContinuation.resume(returning:)();
    }

    v75 = *&v72[8 * v79];
    ++v71;
    if (v75)
    {
      v78 = v13;
      v71 = v79;
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  swift_once();
LABEL_8:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static MOAngelLogger.assets);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "(Legacy Support) No assets to pack", v11, 2u);
  }

  v96[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24MOSuggestionAssetsBundleCSgs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t MOAngelControllerWrapper.grantAccessToAssets(_:)(id *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v95 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v100 = &v95 - v12;
  v13 = __chkstk_darwin(v11);
  v99 = &v95 - v14;
  v15 = __chkstk_darwin(v13);
  v102 = &v95 - v16;
  v17 = __chkstk_darwin(v15);
  v97 = &v95 - v18;
  v19 = __chkstk_darwin(v17);
  v101 = &v95 - v20;
  v21 = __chkstk_darwin(v19);
  v105 = &v95 - v22;
  v23 = __chkstk_darwin(v21);
  v98 = &v95 - v24;
  v25 = __chkstk_darwin(v23);
  v104 = &v95 - v26;
  v27 = __chkstk_darwin(v25);
  v113 = &v95 - v28;
  result = __chkstk_darwin(v27);
  v112 = &v95 - v30;
  v114 = a1;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v31 = result;
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v116 = v10;
  v95 = v1;
  if (v31)
  {
    if (v31 >= 1)
    {
      v32 = 0;
      v111 = v114 & 0xC000000000000001;
      v33 = (v7 + 56);
      v115 = (v7 + 32);
      v107 = v7 + 8;
      v108 = (v7 + 16);
      v34 = _swiftEmptyArrayStorage;
      v106 = v5;
      v109 = (v7 + 56);
      v110 = v31;
      v96 = v7;
      while (1)
      {
        if (v111)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v35 = *(v114 + 8 * v32 + 32);
        }

        v36 = v35;
        v117 = [v35 content];
        v37 = swift_dynamicCast();
        v38 = *v33;
        if (v37)
        {
          v38(v5, 0, 1, v6);
          v39 = *v115;
          v40 = v112;
          (*v115)(v112, v5, v6);
          (*v108)(v113, v40, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
          }

          v42 = v34[2];
          v41 = v34[3];
          v43 = v34;
          if (v42 >= v41 >> 1)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1, v34);
          }

          (*(v7 + 8))(v112, v6);
          *(v43 + 16) = v42 + 1;
          v34 = v43;
          v39((v43 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v42), v113, v6);
          v44 = v116;
          goto LABEL_38;
        }

        v45 = v34;
        v38(v5, 1, 1, v6);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v5, &_s10Foundation3URLVSgMd);
        v46 = [v36 content];
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        if (v47)
        {
          v48 = [v47 iconURL];
          if (v48)
          {
            break;
          }
        }

        swift_unknownObjectRelease();
        v57 = [v36 content];
        objc_opt_self();
        v58 = swift_dynamicCastObjCClass();
        if (v58)
        {
          v59 = [v58 imageURL];
          if (v59)
          {
            v60 = v97;
            v61 = v59;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v51 = *v115;
            v62 = v101;
            (*v115)(v101, v60, v6);
            (*v108)(v102, v62, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
            }

            v64 = v45[2];
            v63 = v45[3];
            if (v64 >= v63 >> 1)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v63 > 1, v64 + 1, 1, v45);
            }

            swift_unknownObjectRelease();

            (*(v7 + 8))(v101, v6);
            v34 = v45;
            v45[2] = v64 + 1;
            v55 = v45 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v64;
            v56 = v102;
            goto LABEL_29;
          }
        }

        swift_unknownObjectRelease();
        v65 = [v36 content];
        objc_opt_self();
        v66 = swift_dynamicCastObjCClass();
        if (!v66)
        {

          swift_unknownObjectRelease();
          v5 = v106;
          v44 = v116;
          goto LABEL_39;
        }

        v67 = v66;
        v68 = [v66 lightURL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
        }

        v70 = v45[2];
        v69 = v45[3];
        v103 = v45;
        if (v70 >= v69 >> 1)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v70 + 1, 1, v103);
        }

        v71 = v103;
        v103[2] = v70 + 1;
        v72 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v73 = v7;
        v74 = *(v7 + 72);
        v75 = v71 + v72 + v74 * v70;
        v76 = *(v73 + 32);
        v76(v75, v99, v6);
        v77 = [v67 darkURL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v79 = v71[2];
        v78 = v71[3];
        if (v79 >= v78 >> 1)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v78 > 1, v79 + 1, 1, v103);
        }

        swift_unknownObjectRelease();

        v80 = v103;
        v103[2] = v79 + 1;
        v76(&v80[v72 + v79 * v74], v100, v6);
        v34 = v80;
        v7 = v96;
        v44 = v116;
        v5 = v106;
LABEL_38:
        v33 = v109;
        v31 = v110;
LABEL_39:
        if (v31 == ++v32)
        {
          goto LABEL_43;
        }
      }

      v49 = v98;
      v50 = v48;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = *v115;
      v52 = v104;
      (*v115)(v104, v49, v6);
      (*v108)(v105, v52, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
      }

      v54 = v45[2];
      v53 = v45[3];
      if (v54 >= v53 >> 1)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v54 + 1, 1, v45);
      }

      swift_unknownObjectRelease();

      (*(v7 + 8))(v104, v6);
      v34 = v45;
      v45[2] = v54 + 1;
      v55 = v45 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v54;
      v56 = v105;
LABEL_29:
      v51(v55, v56, v6);
      v5 = v106;
      v44 = v116;
      goto LABEL_38;
    }

    __break(1u);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
    v44 = v10;
LABEL_43:
    v81 = v34[2];
    if (v81)
    {
      v82 = objc_opt_self();
      v84 = *(v7 + 16);
      v83 = v7 + 16;
      v114 = v84;
      v115 = v82;
      v85 = *(v83 + 64);
      v103 = v34;
      v86 = v34 + ((v85 + 32) & ~v85);
      v87 = *(v83 + 56);
      v88 = v95;
      v89 = (v83 - 8);
      do
      {
        (v114)(v44, v86, v6);
        v90 = v83;
        v91 = [v115 sharedInstance];
        URL._bridgeToObjectiveC()(v92);
        v44 = v116;
        v94 = v93;
        (*v89)(v116, v6);
        [v91 grantSandboxAccessFor:v94 sender:v88];

        v83 = v90;
        v86 += v87;
        --v81;
      }

      while (v81);
    }
  }

  return result;
}

uint64_t @objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(void *a1, int a2, void *aBlock, void *a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return _swift_task_switch(@objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:), 0, 0);
}

{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return _swift_task_switch(@objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:), 0, 0);
}

uint64_t @objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)partial apply;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MOSuggestionAssetsBundleCSgMd);
  *v3 = v0;
  v3[1] = @objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001002B8340, partial apply for specialized closure #1 in MOAngelControllerWrapper.continuationWrapper<A>(action:), v2, v4);
}

{
  v1 = *v0;

  *(v1 + 72) = *(v1 + 16);

  return _swift_task_switch(@objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:), 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  (v2)[2](v2, v1);
  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)partial apply;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17MOSuggestionAssetCGSgMd);
  *v3 = v0;
  v3[1] = @objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001002B8340, partial apply for specialized closure #1 in MOAngelControllerWrapper.continuationWrapper<A>(action:), v2, v4);
}

{
  v1 = *v0;

  *(v1 + 72) = *(v1 + 16);

  return _swift_task_switch(@objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:), 0, 0);
}

{
  isa = *(v0 + 72);
  v2 = *(v0 + 24);

  if (isa)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v3 = *(v0 + 40);
  (v3)[2](v3, isa);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a6;
  v41 = a5;
  v42 = a4;
  v47 = a1;
  v43 = type metadata accessor for UUID();
  v6 = *(v43 - 8);
  __chkstk_darwin(v43);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v9);
  v14 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Date();
  v45 = *(v17 - 8);
  v46 = v17;
  __chkstk_darwin(v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_projectBox();
  Date.init()();
  v44 = v19;
  Date.timeIntervalSince(_:)();
  v22 = v21;
  swift_beginAccess();
  *(v20 + *(v10 + 44)) = v22;
  swift_beginAccess();
  outlined init with copy of MOSuggestionAssetAnalytics.AssetTransferEvent(v20, v16);
  v23 = String._bridgeToObjectiveC()();
  outlined init with copy of MOSuggestionAssetAnalytics.AssetTransferEvent(v16, v14);
  v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v25 = swift_allocObject();
  outlined init with take of MOSuggestionAssetAnalytics.AssetTransferEvent(v14, v25 + v24);
  aBlock[4] = partial apply for closure #1 in MOSuggestionAssetAnalytics.AssetTransferEvent.send();
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_86_0;
  v26 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v26);

  outlined destroy of MOSuggestionAssetAnalytics.AssetTransferEvent(v16);
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static MOAngelLogger.assets);
  v28 = v43;
  (*(v6 + 16))(v8, v42, v43);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315394;
    v33 = UUID.uuidString.getter();
    v35 = v34;
    (*(v6 + 8))(v8, v28);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, aBlock);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2048;
    *(v31 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v29, v30, "[MOAngelControllerWrapper.willReturnAssets] Finishing sheet processing for transferID=%s, duration=%f", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v32);

    v37 = v47;
    if (!v47)
    {
      goto LABEL_9;
    }
  }

  else
  {

    (*(v6 + 8))(v8, v28);
    v37 = v47;
    if (!v47)
    {
      goto LABEL_9;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    MOAngelControllerWrapper.grantAccessToAssets(_:)(v37);
  }

LABEL_9:
  v49 = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGSgs5NeverOGMd);
  CheckedContinuation.resume(returning:)();
  return (*(v45 + 8))(v44, v46);
}

void MOAngelControllerWrapper.didReceivePresentationRequest(with:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 contentOptions];
  *(v1 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_contentOptions) = v11;
  (*((swift_isaMask & *v1) + 0xD8))(&aBlock);
  if (v24)
  {
    outlined init with take of MOMusicPlaybackCoordinatorDelegate(&aBlock, v28);
    v12 = [a1 presentFullScreen];
    v13 = 1;
    if (v12)
    {
      v13 = 2;
    }

    *(v1 + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_initialPresentRequestState) = v13;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v14 = static OS_dispatch_queue.main.getter();
    outlined init with copy of MOProtectedAppsManagerDelegate(v28, v27);
    v15 = swift_allocObject();
    outlined init with take of MOMusicPlaybackCoordinatorDelegate(v27, v15 + 16);
    *(v15 + 56) = a1;
    v25 = partial apply for closure #1 in MOAngelControllerWrapper.didReceivePresentationRequest(with:);
    v26 = v15;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed () -> ();
    v24 = &block_descriptor_31;
    v16 = _Block_copy(&aBlock);
    v17 = a1;

    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type MOUsageContextType and conformance MOUsageContextType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&aBlock, &_s16MomentsUIService32MOAngelControllerWrapperDelegate_pSgMd);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static MOAngelLogger.shared);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Attempt to present a sheet before the view was ready to respond.", v21, 2u);
    }
  }
}

void MOAngelControllerWrapper.didReceiveUpdateRequest(with:animated:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v2) + 0xD8))(&aBlock, v11);
  if (v23)
  {
    outlined init with take of MOMusicPlaybackCoordinatorDelegate(&aBlock, v27);
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v14 = static OS_dispatch_queue.main.getter();
    outlined init with copy of MOProtectedAppsManagerDelegate(v27, v26);
    v15 = swift_allocObject();
    outlined init with take of MOMusicPlaybackCoordinatorDelegate(v26, v15 + 16);
    *(v15 + 56) = a1;
    *(v15 + 64) = a2 & 1;
    v24 = partial apply for closure #1 in MOAngelControllerWrapper.didReceiveUpdateRequest(with:animated:);
    v25 = v15;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed () -> ();
    v23 = &block_descriptor_18_0;
    v16 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type MOUsageContextType and conformance MOUsageContextType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&aBlock, &_s16MomentsUIService32MOAngelControllerWrapperDelegate_pSgMd);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static MOAngelLogger.shared);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Attempted to updated sheet state before the view was ready to respond.", v20, 2u);
    }
  }
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t outlined init with copy of MOAngelControllerWrapperDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService32MOAngelControllerWrapperDelegate_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of MOAngelControllerWrapperDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService32MOAngelControllerWrapperDelegate_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AA35C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1001AA414@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata accessor for MOAngelControllerWrapper()
{
  result = type metadata singleton initialization cache for MOAngelControllerWrapper;
  if (!type metadata singleton initialization cache for MOAngelControllerWrapper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized MOAngelControllerWrapper.getBundleRankingContext(_:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18MOUsageContextTypea_SDy10Foundation4UUIDVSDys11AnyHashableVypGSgGtGMd);
  inited = swift_initStackObject();
  v21 = xmmword_1002A48B0;
  *(inited + 16) = xmmword_1002A48B0;
  v7 = kMOUsageContextRankingDictionaries;
  *(inited + 32) = kMOUsageContextRankingDictionaries;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_SDys11AnyHashableVypGSgtGMd);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDys11AnyHashableVypGSgtMd);
  v9 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v21;
  v11 = v10 + v9;
  v12 = v7;
  v13 = [a1 bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v11, v5, v2);
  v14 = [a1 rankingDictionary];
  if (v14)
  {
    v15 = v14;
    v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = 0;
  }

  *(v11 + *(v8 + 48)) = v16;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SDys11AnyHashableVypGSgTt0g5Tf4g_n(v10);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s10Foundation4UUIDV_SDys11AnyHashableVypGSgtMd);
  swift_deallocClassInstance();
  *(inited + 40) = v17;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18MOUsageContextTypea_SDy10Foundation4UUIDVSDys11AnyHashableVypGSgGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo18MOUsageContextTypea_SDy10Foundation4UUIDVSDys11AnyHashableVypGSgGtMd);
  v19 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v18);

  return v19;
}

uint64_t partial apply for closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(uint64_t a1)
{
  return closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1001AA800()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in MOAngelControllerWrapper.didReceivePresentationRequest(with:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  return (*(v2 + 16))(v1, v3, v2);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type MOUsageContextType and conformance MOUsageContextType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001AA8FC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t partial apply for closure #1 in MOAngelControllerWrapper.didReceiveUpdateRequest(with:animated:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v4);
  return (*(v2 + 24))(v1, v3, v4, v2);
}

uint64_t sub_1001AA9AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1001AAA4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1001AAA98(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t sub_1001AAAEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_1001AAB38(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *a1;
  return v3(v2);
}

void type metadata completion function for MOAngelControllerWrapper()
{
  type metadata accessor for Published<Bool>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

uint64_t partial apply for @objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return @objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(v2, v3, v5, v4);
}

{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(v2, v3, v5, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t objectdestroy_44Tm()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_48Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t sub_1001AB1EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AB224()
{
  v17 = type metadata accessor for Date();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 16) & ~v2;
  v14 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for UUID();
  v3 = *(v16 - 8);
  v4 = *(v3 + 80);
  v5 = (v14 + v4 + 8) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGSgs5NeverOGMd);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v13 = *(v8 + 64);
  v11 = v2 | v4 | v9;
  (*(v1 + 8))(v0 + v15, v17);

  (*(v3 + 8))(v0 + v5, v16);

  (*(v8 + 8))(v0 + v10, v7);

  return _swift_deallocObject(v0, v10 + v13, v11 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(id *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGSgs5NeverOGMd) - 8);
  v10 = *(v1 + v5);
  v11 = *(v1 + v8);
  v12 = v1 + ((v8 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return closure #1 in closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(a1, v1 + v4, v10, v1 + v7, v11, v12);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24MOSuggestionAssetsBundleCSgs5NeverOGMd);

  return closure #1 in closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:)(a1);
}

uint64_t sub_1001AB5A0()
{
  v1 = (type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t outlined destroy of MOSuggestionAssetAnalytics.AssetTransferEvent(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001AB6E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24MOSuggestionAssetsBundleCSgs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t SegmentType.asUnlocalizedString.getter(char a1)
{
  if (a1)
  {
    return 0x746E65636552;
  }

  else
  {
    return 0x6E656D6D6F636552;
  }
}

uint64_t MOSuggestionSheetFilterCollectionViewModel.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t MOSuggestionSheetFilterCollectionView.filterViewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView_filterViewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetFilterCollectionView.filterDelegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView_filterDelegate;
  swift_beginAccess();
  return outlined init with copy of MOSuggestionSheetFilterCollectionViewDelegate?(v1 + v3, a1);
}

uint64_t MOSuggestionSheetFilterCollectionView.filterDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView_filterDelegate;
  swift_beginAccess();
  outlined assign with take of MOSuggestionSheetFilterCollectionViewDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

char *MOSuggestionSheetFilterCollectionView.init()()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView_layout;
  v6 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v6 setScrollDirection:1];
  [v6 setMinimumInteritemSpacing:12.0];
  *&v0[v5] = v6;
  v7 = OBJC_IVAR____TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView_filterViewModel;
  type metadata accessor for MOSuggestionSheetFilterCollectionViewModel();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v0[v7] = v8;
  v9 = &v0[OBJC_IVAR____TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView_filterDelegate];
  v10 = type metadata accessor for MOSuggestionSheetFilterCollectionView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v25.receiver = v0;
  v25.super_class = v10;
  v11 = objc_msgSendSuper2(&v25, "initWithFrame:collectionViewLayout:", v6, 0.0, 0.0, 0.0, 0.0);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 whiteColor];
  [v13 setBackgroundColor:v14];

  [v13 setDelegate:v13];
  v15 = v13;
  [v15 setDataSource:v15];
  [v15 setShowsHorizontalScrollIndicator:0];

  v16 = [v12 secondarySystemBackgroundColor];
  [v15 setBackgroundColor:v16];

  type metadata accessor for MOSuggestionCollectionViewFilterCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = String._bridgeToObjectiveC()();
  [v15 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v18];

  [v15 setAllowsMultipleSelection:0];
  v19 = OBJC_IVAR____TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView_filterViewModel;
  swift_beginAccess();
  v20 = *(**&v15[v19] + 88);

  v20(v21);

  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v15 selectItemAtIndexPath:isa animated:0 scrollPosition:8];

  (*(v2 + 8))(v4, v1);
  return v15;
}

Swift::Int __swiftcall MOSuggestionSheetFilterCollectionView.collectionView(_:numberOfItemsInSection:)(UICollectionView _, Swift::Int numberOfItemsInSection)
{
  v3 = (*((swift_isaMask & *v2) + 0x68))(_.super.super.super.super.isa, numberOfItemsInSection);
  v4 = (*(*v3 + 112))(v3);

  return v4;
}

unint64_t MOSuggestionSheetFilterCollectionView.collectionView(_:cellForItemAt:)(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  type metadata accessor for MOSuggestionCollectionViewFilterCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = *((swift_isaMask & *v2) + 0x68);
    v10 = v9();
    v11 = (*(*v10 + 120))(v10);

    result = IndexPath.row.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v11 + 16))
    {
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);

      (*((swift_isaMask & *v8) + 0x80))(v14, v15);

      v17 = (v9)(v16);
      v18 = (*(*v17 + 88))(v17);

      [v8 setSelected:IndexPath.row.getter() == (v18 & 1)];
      return v8;
    }

    __break(1u);
  }

  else
  {

    v19 = objc_allocWithZone(UICollectionViewCell);

    return [v19 init];
  }

  return result;
}

uint64_t SegmentType.asString.getter(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v9 = 0xE600000000000000;
    v3 = 0x746E65636552;
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000646564;
    v9 = 0xEB00000000646564;
    v3 = 0x6E656D6D6F636552;
  }

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = v3;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v2, v5, *(&v9 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t MOSuggestionSheetFilterCollectionView.collectionView(_:didSelectItemAt:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((swift_isaMask & *v1) + 0x68);
  v10 = (v9)(v6);
  v11 = (*(*v10 + 88))(v10);

  result = IndexPath.row.getter();
  if (result != (v11 & 1))
  {
    v13 = v9();
    (*(*v13 + 88))(v13);

    IndexPath.init(item:section:)();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v8, v4);
    [a1 deselectItemAtIndexPath:isa animated:0];

    result = IndexPath.row.getter();
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = v9();
    (*(*v16 + 96))(v15);

    (*((swift_isaMask & *v2) + 0x80))(v25, v17);
    if (v25[3])
    {
      outlined init with copy of MOProtectedAppsManagerDelegate(v25, v22);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v25, &_s16MomentsUIService45MOSuggestionSheetFilterCollectionViewDelegate_pSgMd);
      v18 = v23;
      v19 = v24;
      __swift_project_boxed_opaque_existential_0(v22, v23);
      v20 = v9();
      v21 = (*(*v20 + 88))(v20);

      (*(v19 + 8))(v21 & 1, v18, v19);
      return __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v25, &_s16MomentsUIService45MOSuggestionSheetFilterCollectionViewDelegate_pSgMd);
    }
  }

  return result;
}

MomentsUIService::FilterType_optional __swiftcall FilterType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = MomentsUIService_FilterType_recent;
  }

  else
  {
    v1.value = MomentsUIService_FilterType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall MOSuggestionSheetFilterCollectionView.resetFilterState()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((swift_isaMask & *v0) + 0x68))(v4);
  (*(*v7 + 96))(0);

  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  [v1 selectItemAtIndexPath:isa animated:0 scrollPosition:1];
}

uint64_t MOSuggestionCollectionViewFilterCell.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MOSuggestionCollectionViewFilterCell.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id closure #1 in variable initialization expression of MOSuggestionCollectionViewFilterCell.filterButton()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 systemGroupedBackgroundColor];
  [v2 setBackgroundColor:v3];

  [v2 setTextAlignment:1];
  v4 = [objc_opt_self() boldSystemFontOfSize:14.0];
  [v2 setFont:v4];

  v5 = [v1 labelColor];
  [v2 setTextColor:v5];

  v6 = [v2 layer];
  [v6 setCornerRadius:18.0];

  v7 = [v2 layer];
  [v7 setMasksToBounds:1];

  return v2;
}

id MOSuggestionCollectionViewFilterCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_title];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_filterButton;
  *&v4[v10] = closure #1 in variable initialization expression of MOSuggestionCollectionViewFilterCell.filterButton();
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MOSuggestionCollectionViewFilterCell();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  MOSuggestionCollectionViewFilterCell.setupView()();

  return v11;
}

void MOSuggestionCollectionViewFilterCell.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_title);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_filterButton;
  *(v0 + v2) = closure #1 in variable initialization expression of MOSuggestionCollectionViewFilterCell.filterButton();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MOSuggestionCollectionViewFilterCell.setupView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_filterButton);
  (*((swift_isaMask & *v0) + 0x60))();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  [v0 addSubview:v1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002A48D0;
  v6 = [v1 topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [v1 bottomAnchor];
  v10 = [v0 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v1 leadingAnchor];
  v13 = [v0 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [v1 trailingAnchor];
  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

id MOSuggestionCollectionViewFilterCell.isSelected.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionCollectionViewFilterCell();
  return objc_msgSendSuper2(&v2, "isSelected");
}

void MOSuggestionCollectionViewFilterCell.isSelected.setter(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MOSuggestionCollectionViewFilterCell();
  objc_msgSendSuper2(&v3, "setSelected:", a1 & 1);
  MOSuggestionCollectionViewFilterCell.isSelected.didset();
}

void MOSuggestionCollectionViewFilterCell.isSelected.didset()
{
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_filterButton];
  v2 = [v0 isSelected];
  v3 = objc_opt_self();
  v4 = &selRef_systemCyanColor;
  if (!v2)
  {
    v4 = &selRef_systemGroupedBackgroundColor;
  }

  v5 = [v3 *v4];
  [v1 setBackgroundColor:v5];

  v6 = [v0 isSelected];
  v7 = objc_opt_self();
  v8 = &selRef_whiteColor;
  if (!v6)
  {
    v8 = &selRef_labelColor;
  }

  v9 = [v7 *v8];
  [v1 setTextColor:v9];
}

Swift::Void __swiftcall MOSuggestionCollectionViewFilterCell.configure(title:)(Swift::String title)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_filterButton);
  v3 = String._bridgeToObjectiveC()();
  [v2 setText:v3];
}

id MOSuggestionSheetFilterCollectionView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t MOSuggestionSheetFilterCollectionViewModel.selectedFilter.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1 & 1;
  return result;
}

void *MOSuggestionSheetFilterCollectionViewModel.possibleFilterTitles()()
{
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v0 = [objc_opt_self() mainBundle];
  v13._object = 0xEB00000000646564;
  v1._countAndFlagsBits = 0x6E656D6D6F636552;
  v1._object = 0xEB00000000646564;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0x6E656D6D6F636552;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v13);

  v5 = _swiftEmptyArrayStorage[2];
  v4 = _swiftEmptyArrayStorage[3];
  if (v5 >= v4 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v5 + 1;
  *&_swiftEmptyArrayStorage[2 * v5 + 4] = v3;
  v6 = [objc_opt_self() mainBundle];
  v14._object = 0xE600000000000000;
  v7._countAndFlagsBits = 0x746E65636552;
  v7._object = 0xE600000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x746E65636552;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v14);

  v11 = _swiftEmptyArrayStorage[2];
  v10 = _swiftEmptyArrayStorage[3];
  if (v11 >= v10 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v11 + 1;
  *&_swiftEmptyArrayStorage[2 * v11 + 4] = v9;
  return _swiftEmptyArrayStorage;
}

uint64_t MOSuggestionSheetFilterCollectionViewModel.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t outlined init with copy of MOSuggestionSheetFilterCollectionViewDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService45MOSuggestionSheetFilterCollectionViewDelegate_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of MOSuggestionSheetFilterCollectionViewDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService45MOSuggestionSheetFilterCollectionViewDelegate_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *_s16MomentsUIService11SegmentTypeOSYAASY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void specialized MOSuggestionSheetFilterCollectionView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView_layout;
  v2 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v2 setScrollDirection:1];
  [v2 setMinimumInteritemSpacing:12.0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView_filterViewModel;
  type metadata accessor for MOSuggestionSheetFilterCollectionViewModel();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v0 + v3) = v4;
  v5 = v0 + OBJC_IVAR____TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView_filterDelegate;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized MOSuggestionSheetFilterCollectionView.collectionView(_:layout:sizeForItemAt:)()
{
  v0 = IndexPath.row.getter();
  if (v0 > 1)
  {
    __break(1u);
  }

  else
  {
    v1 = *(&outlined read-only object #0 of MOSuggestionSheetFilterCollectionView.collectionView(_:layout:sizeForItemAt:) + v0 + 32);
    v2 = [objc_opt_self() mainBundle];
    if (v1)
    {
      v13 = 0xE600000000000000;
      v3 = 0x746E65636552;
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xEB00000000646564;
      v13 = 0xEB00000000646564;
      v3 = 0x6E656D6D6F636552;
    }

    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v6 = v3;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v2, v5, *(&v13 - 1));

    v7 = String._bridgeToObjectiveC()();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A48B0;
    *(inited + 32) = NSFontAttributeName;
    v9 = objc_opt_self();
    v10 = NSFontAttributeName;
    v11 = [v9 boldSystemFontOfSize:14.0];
    *(inited + 64) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIFont);
    *(inited + 40) = v11;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v7 sizeWithAttributes:isa];
  }
}

unint64_t lazy protocol witness table accessor for type FilterType and conformance FilterType()
{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SegmentType and conformance SegmentType()
{
  result = lazy protocol witness table cache variable for type SegmentType and conformance SegmentType;
  if (!lazy protocol witness table cache variable for type SegmentType and conformance SegmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentType and conformance SegmentType);
  }

  return result;
}

uint64_t sub_1001ADF50@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_1001ADFAC(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x70);

  return v2(v3);
}

uint64_t sub_1001AE0D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001AE12C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x68);

  return v4(v2, v3);
}

uint64_t sub_1001AE1A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t MOSuggestionSheetAssetDateRange.init(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for MOSuggestionSheetAssetDateRange(0) + 20);

  return outlined init with take of Date?(a2, v7);
}

uint64_t static MOSuggestionSheetAssetViewModel.assetTypeAsPluralString(assetViewSubType:count:includeCount:)(char a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  if (a3)
  {
    MOSuggestionAssetVisualSubType.localizableKeyWithCount(count:)(a2, a1);
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else if (a2 < 2)
  {

    return MOSuggestionAssetVisualSubType.singularLocalizedString.getter(a1);
  }

  else
  {

    return MOSuggestionAssetVisualSubType.pluralLocalizedString.getter(a1);
  }
}

uint64_t MOSuggestionSheetAssetViewModel.__allocating_init(id:parent:image:activitySummary:routeMap:linkMetadata:assetType:assetVisualSubType:evergreenData:reflectionIndex:mediaAssetID:URL:mediaType:isSquare:contactName:contactFirstName:workoutName:livePhoto:videoAsset:activityName:activityStepCount:motionActivityNumSteps:title:subtitle:weatherString:weatherTemperature:calories:duration:distance:averageHeartRate:shouldAutoPlay:squareCropRect:landscapeCropRect:portraitCropRect:assignedAssetTileSize:mapPrimaryField:mapSecondaryField:mapLocationCount:isLoadingPlaceHolder:renderedView:valenceClassificationAndReflectiveInterval:reflectiveInterval:stateOfMindLabels:stateOfMindLabelsShortened:stateOfMindDomains:stateOfMindDomainsShortened:stateOfMindAssociatedColorsLight:stateOfMindAssociatedColorsDark:stateOfMindDate:bgColor:mediaThirdPartyAppAssociatedColors:bgColorVariant:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, char a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v147 = STACK[0x9B0];
  v74 = swift_allocObject();
  *(v74 + 64) = 0;
  *(v74 + 48) = 0u;
  *(v74 + 32) = 0u;
  *(v74 + 72) = 26;
  *(v74 + 80) = 0;
  *(v74 + 104) = 0;
  *(v74 + 96) = 0;
  v75 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL;
  v103 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL;
  v76 = type metadata accessor for URL();
  (*(*(v76 - 8) + 56))(v74 + v75, 1, 1, v76);
  v106 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName);
  *v106 = 0;
  v106[1] = 0;
  v77 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactID);
  *v77 = 0;
  v77[1] = 0;
  v107 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName);
  *v107 = 0;
  v107[1] = 0;
  v108 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName);
  *v108 = 0;
  v108[1] = 0;
  v109 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto) = 0;
  v110 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset) = 0;
  v111 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName);
  *v111 = 0;
  v111[1] = 0;
  v112 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount);
  *v112 = 0;
  v112[1] = 0;
  v114 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_title);
  *v114 = 0;
  v114[1] = 0;
  v116 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle);
  *v116 = 0;
  v116[1] = 0;
  v117 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString);
  *v117 = 0;
  v117[1] = 0;
  v78 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature;
  v115 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd);
  (*(*(v79 - 8) + 56))(v74 + v78, 1, 1, v79);
  v118 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories);
  *v118 = 0;
  v118[1] = 0;
  v119 = v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration;
  *v119 = 0;
  *(v119 + 8) = 1;
  v121 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance);
  *v121 = 0;
  v121[1] = 0;
  v122 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate);
  *v122 = 0;
  v122[1] = 0;
  v80 = v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_squareCropRect;
  *v80 = 0u;
  *(v80 + 16) = 0u;
  *(v80 + 32) = 1;
  v81 = v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_landscapeCropRect;
  *v81 = 0u;
  *(v81 + 16) = 0u;
  *(v81 + 32) = 1;
  v105 = v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_portraitCropRect;
  *v105 = 0u;
  *(v105 + 16) = 0u;
  *(v105 + 32) = 1;
  v123 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize) = 11;
  v124 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField);
  *v124 = 0;
  v124[1] = 0;
  v125 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapSecondaryField);
  *v125 = 0;
  v125[1] = 0;
  v126 = v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount;
  *v126 = 0;
  *(v126 + 8) = 1;
  v127 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView) = 0;
  v128 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval);
  *v128 = 0;
  v128[1] = 0;
  v129 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels);
  *v129 = 0;
  v129[1] = 0;
  v130 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened);
  *v130 = 0;
  v130[1] = 0;
  v131 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains);
  *v131 = 0;
  v131[1] = 0;
  v133 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened);
  *v133 = 0;
  v133[1] = 0;
  v135 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight) = 0;
  v137 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark) = 0;
  v82 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate;
  v136 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate;
  v83 = type metadata accessor for Date();
  (*(*(v83 - 8) + 56))(v74 + v82, 1, 1, v83);
  v138 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor) = 0;
  v139 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors) = 0;
  swift_weakInit();
  UUID.init()();
  *(v74 + 16) = a1;
  *(v74 + 24) = a2;
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();
  *(v74 + 32) = a4;
  swift_beginAccess();
  *(v74 + 40) = a5;
  swift_beginAccess();
  *(v74 + 48) = a6;
  swift_beginAccess();
  *(v74 + 56) = a7;
  swift_beginAccess();
  *(v74 + 64) = a8;
  swift_beginAccess();
  *(v74 + 72) = a9;
  swift_beginAccess();
  *(v74 + 80) = a10;
  *(v74 + 88) = a11;
  swift_beginAccess();
  *(v74 + 96) = a12;
  *(v74 + 104) = a13;
  swift_beginAccess();
  v120 = a10;
  v140 = a4;
  v142 = a5;
  v144 = a6;
  v146 = a7;
  v84 = a8;
  outlined assign with copy of URL?(a14, v74 + v103, &_s10Foundation3URLVSgMd);
  swift_endAccess();
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaType) = a15;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isSquare) = a16;
  swift_beginAccess();
  *v106 = a17;
  v106[1] = a18;
  swift_beginAccess();
  *v107 = a19;
  v107[1] = a20;
  swift_beginAccess();
  *v108 = a21;
  v108[1] = a22;
  swift_beginAccess();
  *(v74 + v109) = a23;
  swift_beginAccess();
  *(v74 + v110) = a24;
  swift_beginAccess();
  *v111 = a25;
  v111[1] = a26;
  swift_beginAccess();
  *v112 = a27;
  v112[1] = a28;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_motionActivityNumSteps) = a29;
  swift_beginAccess();
  *v114 = a30;
  v114[1] = a31;
  swift_beginAccess();
  *v116 = a32;
  v116[1] = a33;
  swift_beginAccess();
  *v117 = a34;
  v117[1] = a35;
  swift_beginAccess();
  v134 = a24;
  v132 = a23;
  outlined assign with copy of URL?(a36, v74 + v115, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  swift_endAccess();
  swift_beginAccess();
  *v118 = a37;
  v118[1] = a38;
  swift_beginAccess();
  *v119 = a39;
  *(v119 + 8) = a40 & 1;
  swift_beginAccess();
  *v121 = a41;
  v121[1] = a42;
  swift_beginAccess();
  *v122 = a43;
  v122[1] = a44;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_shouldAutoPlay) = a45;
  swift_beginAccess();
  v85 = *(a46 + 16);
  *v80 = *a46;
  *(v80 + 16) = v85;
  *(v80 + 32) = *(a46 + 32);
  swift_beginAccess();
  v86 = *(a47 + 16);
  *v81 = *a47;
  *(v81 + 16) = v86;
  *(v81 + 32) = *(a47 + 32);
  swift_beginAccess();
  v87 = *(a48 + 16);
  *v105 = *a48;
  *(v105 + 16) = v87;
  *(v105 + 32) = *(a48 + 32);
  swift_beginAccess();
  *(v74 + v123) = a49;
  swift_beginAccess();
  *v124 = a50;
  v124[1] = a51;
  swift_beginAccess();
  *v125 = a52;
  v125[1] = a53;
  swift_beginAccess();
  *v126 = a54;
  *(v126 + 8) = a55 & 1;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isLoadingPlaceHolder) = a56;
  swift_beginAccess();
  *(v74 + v127) = a57;
  swift_beginAccess();
  *v128 = a58;
  v128[1] = a59;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_reflectiveInterval) = a60;
  swift_beginAccess();
  *v129 = a61;
  v129[1] = a62;
  swift_beginAccess();
  *v130 = a63;
  v130[1] = a64;
  swift_beginAccess();
  *v131 = a65;
  v131[1] = a66;
  swift_beginAccess();
  *v133 = a67;
  v133[1] = a68;
  swift_beginAccess();
  *(v74 + v135) = a69;
  swift_beginAccess();
  *(v74 + v137) = a70;
  swift_beginAccess();
  v88 = a57;
  outlined assign with copy of URL?(a71, v74 + v136, &_s10Foundation4DateVSgMd);
  swift_endAccess();
  swift_beginAccess();
  *(v74 + v138) = a72;
  swift_beginAccess();
  *(v74 + v139) = a73;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColorVariant) = v147;
  v89 = one-time initialization token for memory;
  v90 = a72;
  if (v89 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  __swift_project_value_buffer(v91, static MOAngelLogger.memory);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = v88;
    v95 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *v95 = 136315394;
    v96 = UUID.uuidString.getter();
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &v149);

    *(v95 + 4) = v98;
    *(v95 + 12) = 2080;
    swift_beginAccess();
    v99 = *(v74 + 16);
    v100 = *(v74 + 24);

    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v149);

    *(v95 + 14) = v101;
    _os_log_impl(&_mh_execute_header, v92, v93, "[MOSuggestionSheetAssetViewModel] init=%s\t id=%s", v95, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a71, &_s10Foundation4DateVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a36, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a14, &_s10Foundation3URLVSgMd);
  return v74;
}

void *MOSuggestionSheetAssetViewModel.routeMap.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void MOSuggestionSheetAssetViewModel.routeMap.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void *MOSuggestionSheetAssetViewModel.linkMetadata.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void MOSuggestionSheetAssetViewModel.linkMetadata.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void *MOSuggestionSheetAssetViewModel.assetType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void MOSuggestionSheetAssetViewModel.assetType.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t MOSuggestionSheetAssetViewModel.assetVisualSubType.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

void *MOSuggestionSheetAssetViewModel.evergreenData.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void MOSuggestionSheetAssetViewModel.evergreenData.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t MOSuggestionSheetAssetViewModel.reflectionIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t MOSuggestionSheetAssetViewModel.mediaAssetID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);

  return v1;
}

uint64_t MOSuggestionSheetAssetViewModel.mediaAssetID.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t key path setter for MOSuggestionSheetAssetViewModel.URL : MOSuggestionSheetAssetViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (String, Date?)(a1, &v8 - v5, &_s10Foundation3URLVSgMd);
  return (*(**a2 + 760))(v6);
}

uint64_t MOSuggestionSheetAssetViewModel.mediaType.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetViewModel.mediaType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionSheetAssetViewModel.isSquare.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isSquare;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetViewModel.isSquare.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isSquare;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *MOSuggestionSheetAssetViewModel.livePhoto.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionSheetAssetViewModel.livePhoto.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSuggestionSheetAssetViewModel.videoAsset.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionSheetAssetViewModel.videoAsset.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetAssetViewModel.motionActivityNumSteps.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_motionActivityNumSteps;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetViewModel.motionActivityNumSteps.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_motionActivityNumSteps;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for MOSuggestionSheetAssetViewModel.weatherTemperature : MOSuggestionSheetAssetViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (String, Date?)(a1, &v8 - v5, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  return (*(**a2 + 1120))(v6);
}

uint64_t MOSuggestionSheetAssetViewModel.URL.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return outlined init with copy of (String, Date?)(v3 + v6, a3, a2);
}

uint64_t MOSuggestionSheetAssetViewModel.URL.setter(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t MOSuggestionSheetAssetViewModel.duration.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t MOSuggestionSheetAssetViewModel.shouldAutoPlay.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_shouldAutoPlay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetViewModel.shouldAutoPlay.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_shouldAutoPlay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

__n128 MOSuggestionSheetAssetViewModel.squareCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_squareCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 MOSuggestionSheetAssetViewModel.landscapeCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_landscapeCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 MOSuggestionSheetAssetViewModel.squareCropRect.getter@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *a1;
  swift_beginAccess();
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

__n128 MOSuggestionSheetAssetViewModel.portraitCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_portraitCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t MOSuggestionSheetAssetViewModel.assignedAssetTileSize.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetViewModel.assignedAssetTileSize.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionSheetAssetViewModel.duration.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t MOSuggestionSheetAssetViewModel.mapLocationCount.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t MOSuggestionSheetAssetViewModel.isLoadingPlaceHolder.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isLoadingPlaceHolder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetViewModel.isLoadingPlaceHolder.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isLoadingPlaceHolder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *MOSuggestionSheetAssetViewModel.preComposedView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionSheetAssetViewModel.preComposedView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetAssetViewModel.reflectiveInterval.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_reflectiveInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetViewModel.reflectiveInterval.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_reflectiveInterval;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for MOSuggestionSheetAssetViewModel.stateOfMindDate : MOSuggestionSheetAssetViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (String, Date?)(a1, &v8 - v5, &_s10Foundation4DateVSgMd);
  return (*(**a2 + 1672))(v6);
}

void *MOSuggestionSheetAssetViewModel.bgColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionSheetAssetViewModel.bgColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetAssetViewModel.bgColorVariant.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColorVariant;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetViewModel.bgColorVariant.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColorVariant;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionSheetAssetViewModel.parent.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*MOSuggestionSheetAssetViewModel.parent.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_parent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return MOSuggestionSheetAssetViewModel.parent.modify;
}

void MOSuggestionSheetAssetViewModel.parent.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t MOSuggestionSheetAssetViewModel.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MOSuggestionSheetAssetViewModel.init(id:parent:image:activitySummary:routeMap:linkMetadata:assetType:assetVisualSubType:evergreenData:reflectionIndex:mediaAssetID:URL:mediaType:isSquare:contactName:contactFirstName:workoutName:livePhoto:videoAsset:activityName:activityStepCount:motionActivityNumSteps:title:subtitle:weatherString:weatherTemperature:calories:duration:distance:averageHeartRate:shouldAutoPlay:squareCropRect:landscapeCropRect:portraitCropRect:assignedAssetTileSize:mapPrimaryField:mapSecondaryField:mapLocationCount:isLoadingPlaceHolder:renderedView:valenceClassificationAndReflectiveInterval:reflectiveInterval:stateOfMindLabels:stateOfMindLabelsShortened:stateOfMindDomains:stateOfMindDomainsShortened:stateOfMindAssociatedColorsLight:stateOfMindAssociatedColorsDark:stateOfMindDate:bgColor:mediaThirdPartyAppAssociatedColors:bgColorVariant:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, char a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = v73;
  v160 = STACK[0x9A0];
  *(v73 + 64) = 0;
  v75 = (v73 + 64);
  *(v73 + 48) = 0u;
  v76 = (v73 + 48);
  *(v74 + 32) = 0u;
  *(v74 + 72) = 26;
  *(v74 + 80) = 0;
  *(v74 + 104) = 0;
  *(v74 + 96) = 0;
  v77 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL;
  v121 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL;
  v78 = type metadata accessor for URL();
  (*(*(v78 - 8) + 56))(v74 + v77, 1, 1, v78);
  v79 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName);
  *v79 = 0;
  v79[1] = 0;
  v80 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactID);
  *v80 = 0;
  v80[1] = 0;
  v81 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName);
  *v81 = 0;
  v81[1] = 0;
  v82 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName);
  *v82 = 0;
  v82[1] = 0;
  v122 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto) = 0;
  v123 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset) = 0;
  v83 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName);
  *v83 = 0;
  v83[1] = 0;
  v124 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount);
  *v124 = 0;
  v124[1] = 0;
  v125 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_title);
  *v125 = 0;
  v125[1] = 0;
  v126 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle);
  *v126 = 0;
  v126[1] = 0;
  v128 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString);
  *v128 = 0;
  v128[1] = 0;
  v84 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature;
  v127 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd);
  (*(*(v85 - 8) + 56))(v74 + v84, 1, 1, v85);
  v86 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories);
  *v86 = 0;
  v86[1] = 0;
  v129 = v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration;
  *v129 = 0;
  *(v129 + 8) = 1;
  v130 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance);
  *v130 = 0;
  v130[1] = 0;
  v131 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate);
  *v131 = 0;
  v131[1] = 0;
  v132 = v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_squareCropRect;
  *v132 = 0u;
  *(v132 + 16) = 0u;
  *(v132 + 32) = 1;
  v133 = v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_landscapeCropRect;
  *v133 = 0u;
  *(v133 + 16) = 0u;
  *(v133 + 32) = 1;
  v134 = v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_portraitCropRect;
  *v134 = 0u;
  *(v134 + 16) = 0u;
  *(v134 + 32) = 1;
  v135 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize) = 11;
  v136 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField);
  *v136 = 0;
  v136[1] = 0;
  v137 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapSecondaryField);
  *v137 = 0;
  v137[1] = 0;
  v138 = v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount;
  *v138 = 0;
  *(v138 + 8) = 1;
  v139 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView) = 0;
  v140 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval);
  *v140 = 0;
  v140[1] = 0;
  v141 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels);
  *v141 = 0;
  v141[1] = 0;
  v142 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened);
  *v142 = 0;
  v142[1] = 0;
  v143 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains);
  *v143 = 0;
  v143[1] = 0;
  v144 = (v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened);
  *v144 = 0;
  v144[1] = 0;
  v145 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight) = 0;
  v147 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark) = 0;
  v87 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate;
  v146 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate;
  v88 = type metadata accessor for Date();
  (*(*(v88 - 8) + 56))(v74 + v87, 1, 1, v88);
  v148 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor) = 0;
  v149 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors) = 0;
  swift_weakInit();
  UUID.init()();
  *(v74 + 16) = a1;
  *(v74 + 24) = a2;
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();
  v89 = *(v74 + 32);
  *(v74 + 32) = a4;
  v159 = a4;

  swift_beginAccess();
  v90 = *(v74 + 40);
  *(v74 + 40) = a5;
  v157 = a5;

  swift_beginAccess();
  v91 = *v76;
  *v76 = a6;
  v155 = a6;

  swift_beginAccess();
  v92 = *(v74 + 56);
  *(v74 + 56) = a7;
  v153 = a7;

  swift_beginAccess();
  v93 = *v75;
  *v75 = a8;
  v94 = a8;

  swift_beginAccess();
  *(v74 + 72) = a9;
  swift_beginAccess();
  v95 = *(v74 + 80);
  *(v74 + 80) = a10;
  v151 = a10;

  *(v74 + 88) = a11;
  swift_beginAccess();
  *(v74 + 96) = a12;
  *(v74 + 104) = a13;

  swift_beginAccess();
  outlined assign with copy of URL?(a14, v74 + v121, &_s10Foundation3URLVSgMd);
  swift_endAccess();
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaType) = a15;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isSquare) = a16;
  swift_beginAccess();
  *v79 = a17;
  v79[1] = a18;

  swift_beginAccess();
  *v81 = a19;
  v81[1] = a20;

  swift_beginAccess();
  *v82 = a21;
  v82[1] = a22;

  swift_beginAccess();
  v96 = *(v74 + v122);
  *(v74 + v122) = a23;
  v97 = a23;

  swift_beginAccess();
  v98 = *(v74 + v123);
  *(v74 + v123) = a24;
  v99 = a24;

  swift_beginAccess();
  *v83 = a25;
  v83[1] = a26;

  swift_beginAccess();
  *v124 = a27;
  v124[1] = a28;

  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_motionActivityNumSteps) = a29;
  swift_beginAccess();
  *v125 = a30;
  v125[1] = a31;

  swift_beginAccess();
  *v126 = a32;
  v126[1] = a33;

  swift_beginAccess();
  *v128 = a34;
  v128[1] = a35;

  swift_beginAccess();
  outlined assign with copy of URL?(a36, v74 + v127, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  swift_endAccess();
  swift_beginAccess();
  *v86 = a37;
  v86[1] = a38;

  swift_beginAccess();
  *v129 = a39;
  *(v129 + 8) = a40 & 1;
  swift_beginAccess();
  *v130 = a41;
  v130[1] = a42;

  swift_beginAccess();
  *v131 = a43;
  v131[1] = a44;

  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_shouldAutoPlay) = a45;
  swift_beginAccess();
  v100 = *(a46 + 16);
  *v132 = *a46;
  *(v132 + 16) = v100;
  *(v132 + 32) = *(a46 + 32);
  swift_beginAccess();
  v101 = *(a47 + 16);
  *v133 = *a47;
  *(v133 + 16) = v101;
  *(v133 + 32) = *(a47 + 32);
  swift_beginAccess();
  v102 = *(a48 + 16);
  *v134 = *a48;
  *(v134 + 16) = v102;
  *(v134 + 32) = *(a48 + 32);
  swift_beginAccess();
  *(v74 + v135) = a49;
  swift_beginAccess();
  *v136 = a50;
  v136[1] = a51;

  swift_beginAccess();
  *v137 = a52;
  v137[1] = a53;

  swift_beginAccess();
  *v138 = a54;
  *(v138 + 8) = a55 & 1;
  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isLoadingPlaceHolder) = a56;
  swift_beginAccess();
  v103 = *(v74 + v139);
  *(v74 + v139) = a57;
  v104 = a57;

  swift_beginAccess();
  *v140 = a58;
  v140[1] = a59;

  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_reflectiveInterval) = a60;
  swift_beginAccess();
  *v141 = a61;
  v141[1] = a62;

  swift_beginAccess();
  *v142 = a63;
  v142[1] = a64;

  swift_beginAccess();
  *v143 = a65;
  v143[1] = a66;

  swift_beginAccess();
  *v144 = a67;
  v144[1] = a68;

  swift_beginAccess();
  *(v74 + v145) = a69;

  swift_beginAccess();
  *(v74 + v147) = a70;

  swift_beginAccess();
  outlined assign with copy of URL?(a71, v74 + v146, &_s10Foundation4DateVSgMd);
  swift_endAccess();
  swift_beginAccess();
  v105 = *(v74 + v148);
  *(v74 + v148) = a72;
  v106 = a72;

  swift_beginAccess();
  *(v74 + v149) = a73;

  *(v74 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColorVariant) = v160;
  if (one-time initialization token for memory != -1)
  {
    swift_once();
  }

  v107 = type metadata accessor for Logger();
  __swift_project_value_buffer(v107, static MOAngelLogger.memory);

  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v108, v109))
  {
    v161 = v99;
    v110 = v97;
    v111 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    *v111 = 136315394;
    v112 = UUID.uuidString.getter();
    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, &v162);

    *(v111 + 4) = v114;
    *(v111 + 12) = 2080;
    swift_beginAccess();
    v115 = *(v74 + 16);
    v116 = *(v74 + 24);

    v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, &v162);

    *(v111 + 14) = v117;
    _os_log_impl(&_mh_execute_header, v108, v109, "[MOSuggestionSheetAssetViewModel] init=%s\t id=%s", v111, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a71, &_s10Foundation4DateVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a36, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a14, &_s10Foundation3URLVSgMd);
  return v74;
}

Swift::Int __swiftcall MOSuggestionSheetAssetViewModel.updateReflectionIndex()()
{
  v1 = (*(*v0 + 680))();
  if (!v1)
  {
    return (*(*v0 + 704))(v1);
  }

  v2 = v1;
  v3 = [v1 reflectionPrompts];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(v4 + 16);

  v7 = (*(*v0 + 704))(v6);
  v8 = *v0;
  if (v7 >= v5 - 1)
  {
    v1 = (*(v8 + 712))(0);
    return (*(*v0 + 704))(v1);
  }

  result = (*(v8 + 720))(v11);
  if (!__OFADD__(*v10, 1))
  {
    ++*v10;
    v1 = (result)(v11, 0);
    return (*(*v0 + 704))(v1);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MOSuggestionSheetAssetViewModel.prepareForReuse()()
{
  v1 = (*(*v0 + 1760))();
  if (v1)
  {
    (*(*v1 + 560))(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_uuid);
  }
}

uint64_t MOSuggestionSheetAssetViewModel.deinit()
{
  v1 = v0;
  if (one-time initialization token for memory != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.memory);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = UUID.uuidString.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    swift_beginAccess();
    v9 = *(v0 + 16);
    v10 = *(v1 + 24);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v19);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[MOSuggestionSheetAssetViewModel] de-init=%s\t id=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v12 = *(v1 + 32);
  *(v1 + 32) = 0;

  v13 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto;
  swift_beginAccess();
  v14 = *(v1 + v13);
  *(v1 + v13) = 0;

  swift_beginAccess();
  v15 = *(v1 + 48);
  *(v1 + 48) = 0;

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL, &_s10Foundation3URLVSgMd);

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate, &_s10Foundation4DateVSgMd);

  swift_weakDestroy();
  v16 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_uuid;
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  return v1;
}

uint64_t MOSuggestionSheetAssetViewModel.__deallocating_deinit()
{
  MOSuggestionSheetAssetViewModel.deinit();

  return swift_deallocClassInstance();
}

Swift::Int MOSuggestionSheetAssetViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MOSuggestionSheetAssetViewModel()
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t MOSuggestionSheetAssetViewModel.hash(into:)()
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionSheetAssetViewModel()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static MOSuggestionSheetAssetViewModel.assetTypeAsPluralString(assetAndMediaType:count:includeCount:)(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v155 = a4;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v11 = v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v154 = 0x80000001002B8B60;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {

    goto LABEL_11;
  }

  v153[1] = v11;
  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v20 = a1;

  if (v19)
  {
LABEL_6:

LABEL_11:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v26 = 0x74756F6B726F5720;
      v27 = 0xE900000000000073;
LABEL_13:
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v26);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    v29 = [objc_opt_self() mainBundle];
    if (v155 >= 2)
    {
      v152 = v154;
      v30 = 0x756F6B726F57;
LABEL_17:
      v31 = v30 & 0xFFFFFFFFFFFFLL | 0x7374000000000000;
      v32 = 0xE800000000000000;
LABEL_20:
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v35 = 0xD00000000000001ALL;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v31, 0, v29, v34, *(&v152 - 1))._countAndFlagsBits;

      return countAndFlagsBits;
    }

    v152 = v154;
    v33 = 0x756F6B726F57;
    goto LABEL_19;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
    goto LABEL_10;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_6;
  }

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;
  if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
  {
LABEL_10:

    goto LABEL_11;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_6;
  }

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;
  if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
  {

LABEL_30:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v26 = 0x74756F6B726F5720;
      v27 = 0xEF736574756F5220;
      goto LABEL_13;
    }

    v49 = 0x2074756F6B726F57;
    v29 = [objc_opt_self() mainBundle];
    if (v155 >= 2)
    {
      v152 = v154;
      v32 = 0xEE00736574756F52;
      v31 = 0x2074756F6B726F57;
      goto LABEL_20;
    }

    v152 = v154;
    v54 = 0x6574756F52;
LABEL_38:
    v32 = v54 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    v31 = v49;
    goto LABEL_20;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v47)
  {

    goto LABEL_30;
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
  {

LABEL_41:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v57._object = 0x80000001002B4BA0;
      v57._countAndFlagsBits = 0xD000000000000012;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    if (v155 < 2)
    {
      v29 = [objc_opt_self() mainBundle];
      v152 = v154;
      v31 = 0x2074756F6B726F57;
      v32 = 0xEF7972616D6D7553;
    }

    else
    {
      v29 = [objc_opt_self() mainBundle];
      v31 = 0xD000000000000011;
      v152 = v154;
      v32 = 0x80000001002AE1F0;
    }

    goto LABEL_20;
  }

  v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v55)
  {

    goto LABEL_41;
  }

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;
  if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
  {

LABEL_51:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v63);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v26 = 0x656C706F655020;
      v27 = 0xE700000000000000;
      goto LABEL_13;
    }

    v29 = [objc_opt_self() mainBundle];
    v152 = v154;
    if (v155 < 2)
    {
      v31 = 0x6E6F73726550;
    }

    else
    {
      v31 = 0x656C706F6550;
    }

    v32 = 0xE600000000000000;
    goto LABEL_20;
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v62)
  {

    goto LABEL_51;
  }

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
  {

LABEL_62:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v69);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v70 = 1852394528;
LABEL_64:
      v26 = v70 & 0xFFFF0000FFFFFFFFLL | 0x736B00000000;
LABEL_65:
      v27 = 0xE600000000000000;
      goto LABEL_13;
    }

    v29 = [objc_opt_self() mainBundle];
    if (v155 < 2)
    {
      v152 = v154;
      v31 = 1802398028;
      v32 = 0xE400000000000000;
      goto LABEL_20;
    }

    v152 = v154;
    v71 = 1802398028;
    goto LABEL_68;
  }

  v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v68)
  {

    goto LABEL_62;
  }

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;
  if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
  {
    goto LABEL_71;
  }

  v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v76)
  {
    goto LABEL_74;
  }

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;
  if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83)
  {
LABEL_71:

LABEL_75:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v77._countAndFlagsBits = 0;
      v77._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v77);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v78 = 0x6F746F685020;
      goto LABEL_77;
    }

    v29 = [objc_opt_self() mainBundle];
    if (v155 >= 2)
    {
      v152 = v154;
      v79 = 1953458256;
LABEL_80:
      v31 = v79 & 0xFFFF0000FFFFFFFFLL | 0x736F00000000;
      v32 = 0xE600000000000000;
      goto LABEL_20;
    }

    v152 = v154;
    v89 = 1953458256;
    goto LABEL_88;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v84)
  {
LABEL_74:

    goto LABEL_75;
  }

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;
  if (v85 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v87 == v88)
  {

LABEL_91:
    if (a3)
    {
      goto LABEL_92;
    }

    if (a2 > 4)
    {
      if ((a2 - 6) < 3)
      {
        if ((a5 & 1) == 0)
        {
          goto LABEL_118;
        }

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v92._countAndFlagsBits = 0;
        v92._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v92);
        v156 = v155;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v26 = 0x616964654D20;
LABEL_128:
        v27 = 0xE600000000000000;
        goto LABEL_13;
      }

      if (a2 == 5)
      {
        goto LABEL_116;
      }

      goto LABEL_92;
    }

    if (a2 == 1)
    {
      if ((a5 & 1) == 0)
      {
        v29 = [objc_opt_self() mainBundle];
        if (v155 < 2)
        {
          v152 = v154;
          v31 = 1735290707;
          v32 = 0xE400000000000000;
          goto LABEL_20;
        }

        v152 = v154;
        v71 = 1735290707;
        goto LABEL_68;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v112._countAndFlagsBits = 0;
      v112._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v112);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v26 = 0x73676E6F5320;
      goto LABEL_128;
    }

    if (a2 == 2)
    {
LABEL_116:
      if (a5)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v102._countAndFlagsBits = 0;
        v102._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v102);
        v156 = v155;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v26 = 0x74736163646F5020;
        v27 = 0xE900000000000073;
        goto LABEL_13;
      }

      v29 = [objc_opt_self() mainBundle];
      if (v155 >= 2)
      {
        v152 = v154;
        v30 = 0x736163646F50;
        goto LABEL_17;
      }

      v152 = v154;
      v33 = 0x736163646F50;
LABEL_19:
      v31 = v33 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      v32 = 0xE700000000000000;
      goto LABEL_20;
    }

    if (a2 != 4)
    {
LABEL_92:
      if (a5)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v91._countAndFlagsBits = 0;
        v91._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v91);
        v156 = v155;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v26 = 0x616964654D20;
        goto LABEL_65;
      }

LABEL_118:
      v29 = [objc_opt_self() mainBundle];
      v152 = v154;
      v31 = 0x616964654DLL;
      v32 = 0xE500000000000000;
      goto LABEL_20;
    }

    if ((a5 & 1) == 0)
    {
      v29 = [objc_opt_self() mainBundle];
      v152 = v154;
      if (v155 < 2)
      {
        v31 = 0x6D75626C41;
        v32 = 0xE500000000000000;
      }

      else
      {
        v31 = 0x736D75626C41;
        v32 = 0xE600000000000000;
      }

      goto LABEL_20;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v97._countAndFlagsBits = 0;
    v97._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v97);
    v156 = v155;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v78 = 0x6D75626C4120;
LABEL_77:
    v26 = v78 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    v27 = 0xE700000000000000;
    goto LABEL_13;
  }

  v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v90)
  {

    goto LABEL_91;
  }

  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;
  if (v93 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v95 == v96)
  {
    goto LABEL_100;
  }

  v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v98)
  {
    goto LABEL_108;
  }

  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;
  if (v103 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v105 == v106)
  {
LABEL_100:

LABEL_109:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v99._countAndFlagsBits = 0;
      v99._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v99);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v26 = 0x6F697461636F4C20;
LABEL_111:
      v27 = 0xEA0000000000736ELL;
      goto LABEL_13;
    }

    v100 = 0x6E6F697461636F4CLL;
    v101 = [objc_opt_self() mainBundle];
    goto LABEL_113;
  }

  v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v107)
  {
LABEL_108:

    goto LABEL_109;
  }

  v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v109;
  if (v108 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v110 == v111)
  {

LABEL_140:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v114._countAndFlagsBits = 0;
      v114._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v114);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v26 = 0x676E696B6C615720;
      v27 = 0xEE00736165724120;
      goto LABEL_13;
    }

    v49 = 0x20676E696B6C6157;
    v29 = [objc_opt_self() mainBundle];
    if (v155 < 2)
    {
      v152 = v154;
      v32 = 0xEC00000061657241;
      v31 = 0x20676E696B6C6157;
      goto LABEL_20;
    }

    v152 = v154;
    v54 = 0x7361657241;
    goto LABEL_38;
  }

  v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v113)
  {

    goto LABEL_140;
  }

  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v117 = v116;
  if (v115 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v117 == v118)
  {

LABEL_150:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v120._countAndFlagsBits = 0;
      v120._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v120);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v78 = 0x6F6564695620;
      goto LABEL_77;
    }

    v29 = [objc_opt_self() mainBundle];
    if (v155 >= 2)
    {
      v152 = v154;
      v79 = 1701079382;
      goto LABEL_80;
    }

    v152 = v154;
    v89 = 1701079382;
LABEL_88:
    v31 = v89 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    v32 = 0xE500000000000000;
    goto LABEL_20;
  }

  v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v119)
  {

    goto LABEL_150;
  }

  v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v123 = v122;
  if (v121 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v123 == v124)
  {

LABEL_160:
    if ((a5 & 1) == 0)
    {
      v29 = [objc_opt_self() mainBundle];
      v152 = v154;
      if (v155 < 2)
      {
        v31 = 0x646E657254;
        v32 = 0xE500000000000000;
      }

      else
      {
        v31 = 0x73646E657254;
        v32 = 0xE600000000000000;
      }

      goto LABEL_20;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v126._countAndFlagsBits = 0;
    v126._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v126);
    v156 = v155;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v78 = 0x646E65725420;
    goto LABEL_77;
  }

  v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v125)
  {

    goto LABEL_160;
  }

  v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v129 = v128;
  if (v127 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v129 == v130)
  {

LABEL_170:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v132._countAndFlagsBits = 0;
      v132._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v132);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v70 = 1818318624;
      goto LABEL_64;
    }

    v29 = [objc_opt_self() mainBundle];
    if (v155 < 2)
    {
      v152 = v154;
      v31 = 1802264919;
      v32 = 0xE400000000000000;
      goto LABEL_20;
    }

    v152 = v154;
    v71 = 1802264919;
LABEL_68:
    v31 = v71 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
    v32 = 0xE500000000000000;
    goto LABEL_20;
  }

  v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v131)
  {

    goto LABEL_170;
  }

  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v135 = v134;
  if (v133 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v135 == v136)
  {

LABEL_180:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v138._countAndFlagsBits = 0;
      v138._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v138);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v26 = 0x6F63492070704120;
      goto LABEL_111;
    }

    v100 = 0x6E6F634920707041;
    v101 = [objc_opt_self() mainBundle];
LABEL_113:
    v29 = v101;
    v152 = v154;
    v31 = v100;
    if (v155 < 2)
    {
      v32 = 0xE800000000000000;
    }

    else
    {
      v32 = 0xE900000000000073;
    }

    goto LABEL_20;
  }

  v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v137)
  {

    goto LABEL_180;
  }

  v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v141 = v140;
  if (v139 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v141 == v142)
  {

LABEL_188:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v144._countAndFlagsBits = 0;
      v144._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v144);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v26 = 0x7463656C66655220;
      v27 = 0xEC000000736E6F69;
      goto LABEL_13;
    }

    v29 = [objc_opt_self() mainBundle];
    if (v155 < 2)
    {
      v32 = 0xEA00000000006E6FLL;
      v152 = v154;
    }

    else
    {
      v152 = v154;
      v32 = 0xEB00000000736E6FLL;
    }

    v31 = 0x697463656C666552;
    goto LABEL_20;
  }

  v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v143)
  {

    goto LABEL_188;
  }

  v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v147 = v146;
  if (v145 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v147 == v148)
  {

LABEL_198:
    if (a5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v150._countAndFlagsBits = 0;
      v150._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v150);
      v156 = v155;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v26 = 0xD000000000000013;
      v27 = 0x80000001002B8BC0;
      goto LABEL_13;
    }

    v29 = [objc_opt_self() mainBundle];
    if (v155 < 2)
    {
      v151 = "asset description subtitle";
      v31 = 0xD000000000000011;
    }

    else
    {
      v151 = "State of Mind Log";
      v31 = 0xD000000000000012;
    }

    v152 = v154;
    v32 = v151 | 0x8000000000000000;
    goto LABEL_20;
  }

  v149 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v149)
  {
    goto LABEL_198;
  }

  return 0;
}