char *sub_3F5A18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_AB4F50();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300);
  __chkstk_darwin(v9 - 8);
  v11 = &v159 - v10;
  swift_beginAccess();

  sub_AB37F0();
  Array.subscript.getter(&type metadata for JSSettingsViewController.Section, &aBlock);
  v172 = *(&aBlock + 1);
  v173 = v178;
  v174 = v179;
  v12 = v180;
  v13 = v181;
  v14 = aBlock;

  if (!v14)
  {
    goto LABEL_4;
  }

  v171 = v12;
  sub_AB37E0();
  v15 = Array.subscript.getter(&type metadata for JSSettingsViewController.Item, &aBlock);
  if (BYTE8(v179) > 0xFDu)
  {
    sub_4043B0(v14, v172);
LABEL_4:
    sub_13C80(0, &qword_DFE230);
    return UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
  }

  v168 = v14;
  v17 = *(&aBlock + 1);
  v170 = aBlock;
  v166 = v179;
  v18 = BYTE8(v179) >> 6;
  v169 = BYTE8(v179);
  v167 = v178;
  if (v18 <= 1)
  {
    if (v18)
    {
      v58 = sub_3B365C(a2);
      v59 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache);
      v60 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
      swift_beginAccess();
      *&v58[v60] = v59;
      swift_retain_n();
      v16 = v58;

      v61 = *&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
      v165 = v13;
      v62 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
      swift_beginAccess();
      v63 = *&v61[v62];
      *&v61[v62] = v59;

      v64 = v61;
      sub_2E6210(v63);

      v65 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomTextStyle];
      *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomTextStyle] = UIFontTextStyleBody;
      v66 = UIFontTextStyleBody;

      v67 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents];
      swift_beginAccess();
      v68 = *(v67 + 2);
      *(v67 + 2) = UIFontTextStyleBody;
      v69 = v66;

      aBlock = *v67;
      v178 = UIFontTextStyleBody;
      v179 = *(v67 + 24);
      sub_4EF1AC();
      swift_endAccess();
      v70 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor];
      *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor] = 1;
      sub_D3144(v70);
      sub_4EFF38();
      v71 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
      v72 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
      v73 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText + 8];
      v74 = v170;
      *v71 = v170;
      *(v71 + 1) = v17;
      v75 = v167;
      v76 = v166;
      sub_404A50(v74, v17, v167, v166, v169);
      sub_4EE4B4(v72, v73);

      v77 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText];
      v78 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText];
      v79 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText + 8];
      *v77 = 0;
      *(v77 + 1) = 0xE000000000000000;
      sub_4EE668(v78, v79);

      v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessibilityIsDimmed] = 0;
      sub_AB4F00();
      v80 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_defaultBackgroundConfiguration;
      swift_beginAccess();
      (*(v6 + 40))(&v16[v80], v8, v5);
      swift_endAccess();

      sub_404A3C(v74, v17, v75, v76, v169);
      v56 = v168;
      v57 = v172;
      goto LABEL_71;
    }

    v19 = sub_3B3674(a2);
    *&v19[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate + 8] = &off_D10EE8;
    swift_unknownObjectWeakAssign();
    v16 = v19;
    sub_AB4F00();
    (*(v6 + 56))(v11, 0, 1, v5);
    sub_ABA2D0();
    v20 = &v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionText];
    *v20 = v170;
    *(v20 + 1) = v17;

    v21 = *&v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionLabel];

    v22 = sub_AB9260();
    [v21 setText:v22];

    [v16 setNeedsLayout];
    v23 = &v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_placeholder];
    v24 = v167;
    v25 = v166;
    *v23 = v167;
    v23[1] = v25;

    v26 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField;
    v27 = *&v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField];

    v28 = sub_AB9260();
    [v27 setPlaceholder:v28];

    v29 = v169;
    if (v169)
    {
      v30 = 0;
    }

    else
    {
      v30 = 7;
    }

    v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_forSecureTextEntry] = v169 & 1;
    if (v29)
    {
      v31 = &OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_passwordTextFieldValue;
    }

    else
    {
      v31 = &OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_identifierTextFieldValue;
    }

    [*&v16[v26] setSecureTextEntry:?];
    *&v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_keyboardType] = v30;
    [*&v16[v26] setKeyboardType:v30];
    v32 = (v3 + *v31);
    v33 = *v32;
    v34 = v32[1];

    sub_72758(v33, v34);

    v35 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth);
    v36 = *&v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth];
    *&v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth] = v35;
    *&aBlock = v36;
    v176 = v35;
    if (sub_AB38D0())
    {
      [v16 setNeedsLayout];
    }

    v37 = v170;
    v38 = v17;
    v39 = v24;
    v40 = v25;
    v41 = v29;
LABEL_19:
    sub_404A3C(v37, v38, v39, v40, v41);
    v56 = v168;
    v57 = v172;
LABEL_71:
    sub_4043B0(v56, v57);
    return v16;
  }

  v164 = *(&aBlock + 1);
  if (v18 == 2)
  {
    v16 = sub_3B368C(a2);
    sub_AB4F00();
    v42 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_defaultBackgroundConfiguration;
    swift_beginAccess();
    (*(v6 + 40))(&v16[v42], v8, v5);
    swift_endAccess();
    v43 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_artworkCachingReference);
    *&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference] = v43;

    *(*&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 16) = v43;

    v44 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache);
    v45 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    *&v16[v45] = v44;
    swift_retain_n();

    v46 = *&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v47 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v48 = *&v46[v47];
    *&v46[v47] = v44;

    v49 = v46;
    sub_2E6210(v48);

    v50 = v170;
    sub_3FF234(v16, v170);
    result = [v16 tableViewCell];
    if (result)
    {
      v52 = result;
      v53 = objc_allocWithZone(UIColor);
      *(&v179 + 1) = sub_3F6F90;
      v180 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v178 = sub_119878;
      *&v179 = &block_descriptor_247;
      v54 = _Block_copy(&aBlock);
      v55 = [v53 initWithDynamicProvider:v54];
      _Block_release(v54);

      [v52 setSelectionTintColor:v55];

      v37 = v50;
      v38 = v164;
      v39 = v167;
      v40 = v166;
      v41 = v169;
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    v165 = v13;
    v81 = v170;
    v82 = (*&stru_B8.segname[(swift_isaMask & *v170) - 8])(v15);
    if (v83)
    {
      v84 = v82;
    }

    else
    {
      v84 = 0;
    }

    v162 = v84;
    if (v83)
    {
      v85 = v83;
    }

    else
    {
      v85 = 0xE000000000000000;
    }

    v161 = v85;
    v86 = (*(&stru_158.size + (swift_isaMask & *v81)))(v82);
    if (v86)
    {
      v163 = 1;
    }

    else
    {
      if (qword_DE6C98 != -1)
      {
        swift_once();
      }

      v163 = qword_E718D8;
      v86 = qword_E718D8;
    }

    v87 = (*(&stru_B8.reloff + (swift_isaMask & *v81)))(v86);
    if (v88)
    {
      v89 = v87;
    }

    else
    {
      v89 = 0;
    }

    v160 = v89;
    if (v88)
    {
      v90 = v88;
    }

    else
    {
      v90 = 0xE000000000000000;
    }

    v159 = v90;
    v91 = sub_3B365C(a2);
    v92 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache);
    v93 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    *&v91[v93] = v92;
    swift_retain_n();
    v94 = v91;

    v95 = *&v94[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v96 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v97 = *&v95[v96];
    *&v95[v96] = v92;

    v98 = v95;
    sub_2E6210(v97);

    v99 = *&v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomTextStyle];
    *&v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomTextStyle] = UIFontTextStyleBody;
    v100 = UIFontTextStyleBody;

    v101 = &v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents];
    swift_beginAccess();
    v102 = *(v101 + 2);
    *(v101 + 2) = UIFontTextStyleBody;
    v103 = v100;

    aBlock = *v101;
    v178 = UIFontTextStyleBody;
    v179 = *(v101 + 24);
    sub_4EF1AC();
    swift_endAccess();
    v104 = *&v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor];
    v105 = v163;
    *&v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor] = v163;
    sub_137F98(v105);
    sub_D3144(v104);
    sub_4EFF38();
    v106 = &v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
    v107 = *&v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
    v108 = *&v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText + 8];
    v109 = v161;
    *v106 = v162;
    v106[1] = v109;
    sub_4EE4B4(v107, v108);

    v110 = &v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText];
    v111 = *&v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText];
    v112 = *&v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText + 8];
    v113 = v159;
    *v110 = v160;
    v110[1] = v113;
    sub_4EE668(v111, v112);

    v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessibilityIsDimmed] = 0;
    sub_AB4F00();
    v114 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_defaultBackgroundConfiguration;
    swift_beginAccess();
    (*(v6 + 40))(&v94[v114], v8, v5);
    swift_endAccess();

    sub_D3144(v105);
    *&v94[OBJC_IVAR____TtC16MusicApplication8MenuCell_delegate + 8] = &off_D10EB0;
    swift_unknownObjectWeakAssign();
    v16 = v94;
    [v16 setSelectionStyle:3];
    result = [v16 tableViewCell];
    if (result)
    {
      v115 = result;
      [result setAccessoryType:(*&stru_1A8.segname[(swift_isaMask & *v81) - 8])() & 1];

      v116 = (*(&stru_248.size + (swift_isaMask & *v81)))();
      v117 = v166;
      if ((~v116 & 0xF000000000000007) != 0)
      {
        v121 = v116;

        if (v121 < 0)
        {
          v130 = sub_4EE9A8(0);
          v131 = (*&stru_68.segname[(swift_isaMask & *(v121 & 0x7FFFFFFFFFFFFFFFLL)) - 8])(v130);
          v132 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText];
          v133 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText];
          v134 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText + 8];
          *v132 = v131;
          v132[1] = v135;
          sub_4EE854(v133, v134);
        }

        else
        {
          v122 = sub_4EE9A8(&dword_0 + 1);
          v123 = (*&stru_68.segname[swift_isaMask & *v121])(v122);
          v124 = OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled;
          v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled] = v123 & 1;
          if (v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable])
          {
            v125 = sub_4EFAD4();
            v126 = sub_4EDD18();

            [v126 setOn:v16[v124]];
          }
        }

        sub_404114(v121);
      }

      else if ((*&stru_1F8.segname[(swift_isaMask & *v81) + 8])())
      {

        sub_4EE9A8(&dword_0 + 1);
        v118 = OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled;
        v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled] = 1;
        if (v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable] == 1)
        {
          v119 = sub_4EFAD4();
          v120 = sub_4EDD18();

          [v120 setOn:v16[v118]];
        }
      }

      else
      {
        sub_4EE9A8(0);
        v127 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText];
        v128 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText];
        v129 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText + 8];
        *v127 = 0;
        *(v127 + 1) = 0;
        sub_4EE854(v128, v129);

        [v16 setAccessoryView:0];
      }

      v136 = (*(&stru_108.reserved2 + (swift_isaMask & *v81)))();
      if (v136)
      {
        v137 = v136;
        v138 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
        swift_beginAccess();
        v139 = *&v137[v138];
        if (v139)
        {
          v140 = v139;
        }

        else
        {
          v140 = ICStoreArtworkInfoCropStyleBoundedBox;
        }

        v142 = v16;
        v143 = v139;
        v144 = JSArtwork.artworkCatalog(defaultCropStyle:)(v140);

        v145 = *&v142[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
        *&v142[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v144;
        v146 = v144;

        sub_74EA4(v144);
      }

      else
      {
        v141 = *&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
        *&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = 0;
        v16;

        sub_74EA4(0);
      }

      if ((*&stru_108.segname[(swift_isaMask & *v81) + 8])() > 2u)
      {
      }

      else
      {
        v147 = sub_ABB3C0();

        if ((v147 & 1) == 0)
        {
          v149 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue];
          *v149 = 0;
          v149[8] = 0;

          sub_404A3C(v81, v164, v167, v117, v169);
          v56 = v168;
          v57 = v172;
          goto LABEL_71;
        }
      }

      v150 = (*(&stru_1F8.reserved2 + (swift_isaMask & *v81)))(v148);
      if (v151)
      {
        if (qword_DE67A8 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8);
        UnfairLock.locked<A>(_:)(sub_199998);
        v152 = v175;
        if (v175)
        {
          v153 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_pendingRequestsCount;
          swift_beginAccess();
          v154 = *&v152[v153];
        }

        else
        {
          v154 = 0;
        }
      }

      else
      {
        v154 = v150;
      }

      v155 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue];
      v156 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue];
      v157 = v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue + 8];
      *v155 = v154;
      v155[8] = 0;
      if (((v157 & 1) != 0 || v156 != v154) && v154 >= 1)
      {
        v158 = sub_4EFB88();
        sub_30D14(v154);

        [v16 setNeedsLayout];
      }

      sub_404A3C(v81, v164, v167, v117, v169);
      v56 = v168;
      v57 = v172;
      goto LABEL_71;
    }
  }

  __break(1u);
  return result;
}

id sub_3F6F90(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == &dword_0 + 2)
  {
    v3 = [v2 whiteColor];
    v4 = [v3 colorWithAlphaComponent:0.15];

    return v4;
  }

  else
  {
    v6 = [v2 tintColor];

    return v6;
  }
}

uint64_t sub_3F7168(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v67 = a1;
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = IndexPath.safeSection.getter();
  v13 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  result = swift_beginAccess();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(v5 + v13);
  if (v12 >= *(v15 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v10;
  v64 = v9;
  v16 = (v15 + 56 * v12);
  v17 = v16[4];
  v18 = v16[5];
  v19 = v16[7];
  v20 = v16[8];
  v21 = v16[9];
  v60 = v16[6];
  v61 = v20;
  v23 = sub_AB92A0() == a2 && v22 == a3;
  v65 = v21;
  v66 = v17;
  if (v23)
  {

    v31 = v18;

    v25 = v19;
  }

  else
  {
    v24 = sub_ABB3C0();

    v59 = v18;

    v25 = v19;
    if ((v24 & 1) == 0)
    {
      type metadata accessor for HeaderFooterView();
      v26 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();
      v27 = &v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text];
      v28 = *&v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text];
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      sub_401B38(v28);

      if (v25)
      {
        v29 = v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style];
        v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style] = 0;

        sub_401A38(v29);
        v30 = *v27;
        *v27 = v60;
        v27[1] = v25;
        sub_401B38(v30);

        [*&v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView] setNeedsLayout];
        [v26 setNeedsLayout];
      }

      goto LABEL_19;
    }
  }

  if (!v18)
  {
    type metadata accessor for HeaderFooterView();
    v52 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();
    v26 = v52;
    v53 = v65;
    if (v65)
    {
      v54 = *(v52 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style);
      *(v52 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style) = 1;

      sub_401A38(v54);
      v55 = &v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text];
      v56 = *&v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text];
      *v55 = v61;
      *(v55 + 1) = v53;
      sub_401B38(v56);

      [*&v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView] setNeedsLayout];
      [v26 setNeedsLayout];
    }

    else
    {
      v57 = (v52 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text);
      v58 = *(v52 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text);
      *v57 = 0;
      v57[1] = 0xE000000000000000;
      sub_401B38(v58);
    }

    goto LABEL_19;
  }

  v61 = v25;
  v32 = v18;
  v33 = sub_3B470C(a2, a3, a4);
  *&v33[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_textDrawingCache] = *(v5 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache);

  v35 = *&stru_68.segname[(swift_isaMask & *v32) - 8];
  v67 = v32;
  v36 = v35(v34);
  v37 = &v33[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonTitle];
  *v37 = v36;
  v37[1] = v38;

  v39 = objc_opt_self();
  v40 = swift_allocObject();
  *(v40 + 16) = v33;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_40495C;
  *(v41 + 24) = v40;
  aBlock[4] = sub_36C08;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_231_0;
  v42 = _Block_copy(aBlock);
  v26 = v33;

  [v39 performWithoutAnimation:v42];
  _Block_release(v42);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v62;
    v44 = v63;
    v46 = v64;
    (*(v63 + 16))(v62, a4, v64);
    v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v43;
    (*(v44 + 32))(v48 + v47, v45, v46);
    v49 = &v26[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonSelectionHandler];
    v50 = *&v26[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonSelectionHandler];
    *v49 = sub_404964;
    v49[1] = v48;

    sub_17654(v50);

    v51 = v67;

LABEL_19:

    return v26;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_3F7800()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = IndexPath.safeSection.getter();
    sub_3FF960(v2);
  }
}

void sub_3F7B04(void *a1, uint64_t a2)
{
  v3 = v2;
  v152 = a1;
  v5 = sub_AB3430();
  v144 = *(v5 - 8);
  v145 = v5;
  __chkstk_darwin(v5);
  v143 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v150 = v7;
  v151 = v8;
  __chkstk_darwin(v7);
  v141 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v148);
  v11 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v133 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v19 = __chkstk_darwin(v18 - 8);
  *&v140 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v146 = (&v133 - v22);
  v23 = __chkstk_darwin(v21);
  v142 = (&v133 - v24);
  __chkstk_darwin(v23);
  v26 = &v133 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  v28 = __chkstk_darwin(v27 - 8);
  v147 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v149 = &v133 - v30;
  v31 = sub_AB37F0();
  v32 = sub_AB37E0();
  v33 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  swift_beginAccess();
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v34 = *&v3[v33];
  if (v31 >= *(v34 + 16))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v35 = *(v34 + 56 * v31 + 32);
  if (v32 >= *(v35 + 16))
  {
LABEL_56:
    __break(1u);
    return;
  }

  v36 = v35 + 40 * v32;
  v38 = *(v36 + 32);
  v37 = *(v36 + 40);
  v39 = *(v36 + 48);
  v40 = *(v36 + 56);
  v41 = *(v36 + 64);
  v42 = v41 >> 6;
  if (v41 >> 6 <= 1)
  {
    if (!v42)
    {
      return;
    }

    v43 = v38;
    v44 = v39;
    v45 = v37;
    v46 = objc_opt_self();

    v47 = [v46 defaultIdentityStore];
    [v47 setActiveAccountWithDSID:0 completionHandler:0];

    isa = sub_AB3770().super.isa;
    [v152 deselectItemAtIndexPath:isa animated:1];

    v49 = v43;
    v50 = v45;
    v51 = v44;
    v52 = v40;
    goto LABEL_11;
  }

  v137 = v37;
  v138 = v39;
  v139 = v40;
  if (v42 != 2)
  {
    v136 = v41;
    v135 = v38;
    v147 = v38;
    v146 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    v56 = sub_AB3770().super.isa;
    v57 = [v152 cellForItemAtIndexPath:v56];

    if (v57)
    {
      sub_D5958(&v160);
      v140 = v160;
      v134 = v161;
      v58 = v162;
      v59 = v163;
      v60 = v164;

      v61 = v134;
      v62 = v140;
    }

    else
    {
      v58 = 0;
      v60 = 0;
      v62 = 0uLL;
      v59 = 255;
      v61 = 0uLL;
    }

    v165 = v62;
    v166 = v61;
    v167 = v58;
    v168 = v59;
    v169 = v60;
    PresentationSource.init(viewController:position:)(v3, &v165, v159);
    v70 = _s30CollectionViewSelectionHandlerVMa();
    v157 = v70;
    v158 = &off_CF7E60;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v156);
    v72 = v150;
    v73 = *(v151 + 16);
    v73(boxed_opaque_existential_0 + *(v70 + 20), a2, v150);
    swift_unknownObjectWeakInit();
    v74 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v74 - 8) + 56))(v149, 1, 1, v74);
    sub_15F84(v156, &v153, &unk_DE8E30);
    if (*(&v154 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
      v75 = swift_dynamicCast();
      v76 = *(v70 - 8);
      (*(v76 + 56))(v17, v75 ^ 1u, 1, v70);
      if ((*(v76 + 48))(v17, 1, v70) != 1)
      {
        v73(v26, &v17[*(v70 + 20)], v72);
        sub_2D6C0(v17, _s30CollectionViewSelectionHandlerVMa);
        v77 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      sub_12E1C(&v153, &unk_DE8E30);
      (*(*(v70 - 8) + 56))(v17, 1, 1, v70);
    }

    sub_12E1C(v17, &qword_E037A0);
    v77 = 1;
LABEL_22:
    v78 = v151;
    (*(v151 + 56))(v26, v77, 1, v72);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v80 = Strong, sub_12B2FC(), v82 = v81, v84 = v83, v80, v82))
    {
      ObjectType = swift_getObjectType();
      (*(v84 + 8))(ObjectType, v84);
      v87 = v86;
      swift_unknownObjectRelease();
      v88 = v142;
      sub_15F84(v26, v142, &unk_DE8E20);
      if ((*(v78 + 48))(v88, 1, v72) == 1)
      {
        sub_12E1C(v88, &unk_DE8E20);
        v153 = 0u;
        v154 = 0u;
        v155 = 0;
      }

      else
      {
        (*(v78 + 32))(v141, v88, v72);
        sub_404AC4(&qword_DFAA90, 255, &type metadata accessor for IndexPath);
        sub_ABAD10();
      }

      v90 = swift_getObjectType();
      v91 = v143;
      sub_3B8F68();
      v89 = sub_21CCAC(1, v91, &v153, v90, v87);
      (*(v144 + 8))(v91, v145);
      sub_12E1C(&v153, &qword_DF2BD0);
      sub_12E1C(v26, &unk_DE8E20);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v26, &unk_DE8E20);
      v89 = 0;
    }

    v92 = swift_unknownObjectWeakLoadStrong();
    if (v92)
    {
      v93 = v92;
      sub_12AFE8();
      v95 = v94;
    }

    else
    {
      v95 = 0;
    }

    sub_15F28(v159, &v153);
    sub_15F84(v156, (v11 + 104), &unk_DE8E30);
    v96 = v148;
    v97 = v149;
    sub_15F84(v149, &v11[*(v148 + 28)], &unk_DEA510);
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 8) = 1;
    *(v11 + 9) = 0;
    *(v11 + 10) = 0;
    *(v11 + 11) = 0;
    sub_2D594(&v153, v11);
    *(v11 + 12) = 0;
    v98 = *v146;
    *(&v154 + 1) = v96;
    v99 = __swift_allocate_boxed_opaque_existential_0(&v153);
    sub_2D604(v11, v99);
    v100 = v98;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v147, 0, v89, v95, &v153);
    sub_12E1C(v97, &unk_DEA510);
    sub_1611C(v159);
    sub_2D6C0(v11, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v153, &unk_DE8E40);

    goto LABEL_50;
  }

  v53 = *(&stru_1A8.reloff + (swift_isaMask & *v38));
  v54 = v38;
  v149 = v38;
  if ((v53() & 1) == 0)
  {
    v135 = v54;
    v136 = v41;
    v142 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    v63 = sub_AB3770().super.isa;
    v64 = [v152 cellForItemAtIndexPath:v63];

    if (v64)
    {
      sub_D5958(&v160);
      v133 = v161;
      v134 = v160;
      v65 = v162;
      v66 = v163;
      v67 = v164;

      v69 = v133;
      v68 = v134;
    }

    else
    {
      v65 = 0;
      v67 = 0;
      v68 = 0uLL;
      v66 = 255;
      v69 = 0uLL;
    }

    v165 = v68;
    v166 = v69;
    v167 = v65;
    v168 = v66;
    v169 = v67;
    PresentationSource.init(viewController:position:)(v3, &v165, v159);
    v101 = _s30CollectionViewSelectionHandlerVMa();
    v157 = v101;
    v158 = &off_CF7E60;
    v102 = __swift_allocate_boxed_opaque_existential_0(v156);
    v103 = v151;
    v104 = *(v151 + 16);
    v104(v102 + *(v101 + 20), a2, v150);
    swift_unknownObjectWeakInit();
    v105 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v105 - 8) + 56))(v147, 1, 1, v105);
    sub_15F84(v156, &v153, &unk_DE8E30);
    if (*(&v154 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
      v106 = swift_dynamicCast();
      v107 = *(v101 - 8);
      (*(v107 + 56))(v15, v106 ^ 1u, 1, v101);
      if ((*(v107 + 48))(v15, 1, v101) != 1)
      {
        v104(v146, &v15[*(v101 + 20)], v150);
        sub_2D6C0(v15, _s30CollectionViewSelectionHandlerVMa);
        v108 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      sub_12E1C(&v153, &unk_DE8E30);
      (*(*(v101 - 8) + 56))(v15, 1, 1, v101);
    }

    sub_12E1C(v15, &qword_E037A0);
    v108 = 1;
LABEL_39:
    v109 = v146;
    v110 = v150;
    (*(v103 + 56))(v146, v108, 1, v150);
    v111 = swift_unknownObjectWeakLoadStrong();
    if (v111 && (v112 = v111, sub_12B2FC(), v114 = v113, v116 = v115, v112, v114))
    {
      v117 = swift_getObjectType();
      (*(v116 + 8))(v117, v116);
      v119 = v118;
      swift_unknownObjectRelease();
      v120 = v140;
      sub_15F84(v109, v140, &unk_DE8E20);
      if ((*(v103 + 48))(v120, 1, v110) == 1)
      {
        sub_12E1C(v120, &unk_DE8E20);
        v153 = 0u;
        v154 = 0u;
        v155 = 0;
      }

      else
      {
        (*(v103 + 32))(v141, v120, v110);
        sub_404AC4(&qword_DFAA90, 255, &type metadata accessor for IndexPath);
        sub_ABAD10();
      }

      v122 = swift_getObjectType();
      v123 = v143;
      sub_3B8F68();
      v121 = sub_21CCAC(1, v123, &v153, v122, v119);
      (*(v144 + 8))(v123, v145);
      sub_12E1C(&v153, &qword_DF2BD0);
      sub_12E1C(v109, &unk_DE8E20);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v109, &unk_DE8E20);
      v121 = 0;
    }

    v124 = swift_unknownObjectWeakLoadStrong();
    if (v124)
    {
      v125 = v124;
      sub_12AFE8();
      v127 = v126;
    }

    else
    {
      v127 = 0;
    }

    sub_15F28(v159, &v153);
    sub_15F84(v156, (v11 + 104), &unk_DE8E30);
    v129 = v147;
    v128 = v148;
    sub_15F84(v147, &v11[*(v148 + 28)], &unk_DEA510);
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 8) = 1;
    *(v11 + 9) = 0;
    *(v11 + 10) = 0;
    *(v11 + 11) = 0;
    sub_2D594(&v153, v11);
    *(v11 + 12) = 0;
    v130 = *v142;
    *(&v154 + 1) = v128;
    v131 = __swift_allocate_boxed_opaque_existential_0(&v153);
    sub_2D604(v11, v131);
    v132 = v130;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v149, 0, v121, v127, &v153);
    sub_12E1C(v129, &unk_DEA510);
    sub_1611C(v159);
    sub_2D6C0(v11, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v153, &unk_DE8E40);

LABEL_50:
    sub_12E1C(v156, &unk_DE8E30);
    v49 = v135;
    v50 = v137;
    v51 = v138;
    v52 = v139;
    v55 = v136;
    goto LABEL_51;
  }

  v49 = v54;
  v50 = v137;
  v51 = v138;
  v52 = v139;
LABEL_11:
  v55 = v41;
LABEL_51:
  sub_4048E8(v49, v50, v51, v52, v55);
}

id sub_3F8CDC(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  if (!*(a2 + 16))
  {
    goto LABEL_8;
  }

  v10 = sub_2F5AD8(UIImagePickerControllerEditedImage);
  if (v11)
  {
    sub_808B0(*(a2 + 56) + 32 * v10, &v52);
    sub_9ACFC(&v52, &v54);
    goto LABEL_9;
  }

  v12 = *(a2 + 16);
  v52 = 0u;
  v53 = 0u;
  if (v12 && (v13 = sub_2F5AD8(UIImagePickerControllerOriginalImage), (v14 & 1) != 0))
  {
    sub_808B0(*(a2 + 56) + 32 * v13, &v54);
    if (*(&v53 + 1))
    {
      sub_12E1C(&v52, &unk_DE8E40);
    }
  }

  else
  {
LABEL_8:
    v54 = 0u;
    v55 = 0u;
  }

LABEL_9:
  if (*(&v55 + 1))
  {
    sub_13C80(0, &qword_DE8700);
    if (swift_dynamicCast())
    {
      v15 = v52;
      if (*(a2 + 16) && (v16 = sub_2F5AD8(UIImagePickerControllerMediaType), (v17 & 1) != 0) && (sub_808B0(*(a2 + 56) + 32 * v16, &v54), sub_13C80(0, &qword_DE8170), (swift_dynamicCast() & 1) != 0) && (v18 = v52, v19 = kUTTypeImage, v20 = sub_ABA790(), v19, v18, (v20 & 1) != 0))
      {
        if (*(a2 + 16) && (v21 = sub_2F5AD8(UIImagePickerControllerCropRect), (v22 & 1) != 0) && (sub_808B0(*(a2 + 56) + 32 * v21, &v54), sub_13C80(0, &qword_E05358), (swift_dynamicCast() & 1) != 0))
        {
          v23 = v52;
          [v52 CGRectValue];
          v49 = v24;
          v50 = v25;
          v48 = v26;
          v51 = v27;

          *&v30 = v48;
          *&v29 = v49;
          v28 = 0;
          *(&v29 + 1) = v50;
          *(&v30 + 1) = v51;
        }

        else
        {
          v29 = 0uLL;
          v28 = 1;
          v30 = 0uLL;
        }

        v54 = v29;
        v55 = v30;
        v56 = v28;
        v38 = UIImage.centerCropIfNeeded(imageRect:)(&v54);

        v39 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage);
        *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage) = v38;
        *&v51 = v38;

        v40 = sub_3FED8C();
        v42 = v41;
        v43 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v44 = swift_allocObject();
        *(v44 + 16) = v43;
        *(v44 + 24) = ObjectType;
        v45 = sub_AB9990();
        (*(*(v45 - 8) + 56))(v9, 1, 1, v45);
        sub_AB9940();

        sub_137F98(v38);

        v46 = sub_AB9930();
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        *(v47 + 24) = &protocol witness table for MainActor;
        *(v47 + 32) = v40;
        *(v47 + 40) = v42;
        *(v47 + 48) = 0;
        *(v47 + 56) = 0;
        *(v47 + 64) = v38;
        *(v47 + 72) = 514;
        *(v47 + 80) = sub_4047F0;
        *(v47 + 88) = v44;
        sub_DBDC8(0, 0, v9, &unk_B0DB30, v47);

        sub_D3144(v38);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_12E1C(&v54, &unk_DE8E40);
  }

  v31 = [a1 presentingViewController];
  if (!v31)
  {
    return [a1 dismissViewControllerAnimated:1 completion:0];
  }

  v32 = v31;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {

    return [a1 dismissViewControllerAnimated:1 completion:0];
  }

  v34 = [v33 presentingViewController];
  if (v34)
  {
    v35 = v34;
    [v34 dismissViewControllerAnimated:1 completion:0];
  }

  v36 = (v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier);
  *v36 = 0;
  v36[1] = 0;
}

void sub_3F9230(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage);
    *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage) = 0;
    swift_errorRetain();

    sub_3FDFF4();
    if (qword_DE6B78 != -1)
    {
      swift_once();
    }

    v9 = sub_AB4BC0();
    __swift_project_value_buffer(v9, qword_E050E0);
    swift_errorRetain();
    v46 = sub_AB4BA0();
    v10 = sub_AB9F30();

    if (os_log_type_enabled(v46, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v47[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_ABB520();
      v15 = sub_425E68(v13, v14, v47);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v46, v10, "Update Photo did fail with error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    else
    {

      v36 = v46;
    }

    return;
  }

  *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userHasDeletedImage) = 0;
  v16 = *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView);
  if (v16)
  {
    v17 = v16;
    v18 = [v17 indexPathsForVisibleItems];
    v19 = sub_AB9760();

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v41[1] = v19;
      v42 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
      v22 = v19 + v21;
      swift_beginAccess();
      v24 = *(v5 + 16);
      v23 = v5 + 16;
      v45 = *(v23 + 56);
      v46 = v24;
      v25 = (v23 - 8);
      v43 = v17;
      v44 = v23;
      (v24)(v7, v22, v4);
      while (1)
      {
        isa = sub_AB3770().super.isa;
        v27 = [v17 cellForItemAtIndexPath:isa];

        if (!v27)
        {
          goto LABEL_10;
        }

        type metadata accessor for UserDetailsCell();
        v28 = swift_dynamicCastClass();
        if (!v28)
        {
          break;
        }

        v29 = v28;
        v30 = a2;
        v31 = *(a2 + v42);
        v32 = *(v31 + 16);

        if (v32 && (v33 = sub_2EC048(v7), (v34 & 1) != 0))
        {
          v35 = *(*(v31 + 56) + 8 * v33);

          sub_3FF234(v29, v35);
          (*v25)(v7, v4);
        }

        else
        {
          (*v25)(v7, v4);
        }

        a2 = v30;
        v17 = v43;
LABEL_11:
        v22 += v45;
        if (!--v20)
        {
          goto LABEL_23;
        }

        (v46)(v7, v22, v4);
      }

LABEL_10:
      (*v25)(v7, v4);
      goto LABEL_11;
    }

LABEL_23:
  }

  if (qword_DE6B78 != -1)
  {
    swift_once();
  }

  v37 = sub_AB4BC0();
  __swift_project_value_buffer(v37, qword_E050E0);
  v38 = sub_AB4BA0();
  v39 = sub_AB9F50();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "Update Photo did succeed", v40, 2u);
  }
}

id sub_3F981C(void *a1)
{
  v3 = [a1 presentingViewController];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = (v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier);
      v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier + 8);
      if (v7)
      {
        v8 = *v6;
        v9 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_AF4EC0;
        *(v10 + 32) = v8;
        *(v10 + 40) = v7;

        isa = sub_AB9740().super.isa;

        [v9 deselectAssetsWithIdentifiers:isa];

        *v6 = 0;
        v6[1] = 0;

        [v9 setModalInPresentation:0];
      }
    }
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_3F99CC(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_AB8EA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_AB4A70();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v27 = v7;
    v28 = a1;
    v15 = *(v8 + 80);
    v30 = ObjectType;
    v31 = v12;
    v16 = (v15 + 32) & ~v15;
    v29 = sub_AB8E80();
    sub_AB4A60();
    v17 = v27;
    (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + v16, v27);
    v18 = swift_allocObject();
    v19 = v28;
    *(v18 + 16) = v3;
    *(v18 + 24) = v19;
    (*(v8 + 32))(v18 + v16, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    *(v18 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
    v20 = v3;
    v21 = v19;
    v22 = v29;
    v23 = sub_AB9F70();
    (*(v11 + 8))(v14, v31);
  }

  else
  {
    v25 = &v3[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier];
    *v25 = 0;
    *(v25 + 1) = 0;

    return [a1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_3F9C6C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v33 = a5;
  v34 = a7;
  v30 = a2;
  v12 = sub_AB8EA0();
  v31 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v32 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = sub_AB9990();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v13 + 16))(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
  sub_AB9940();
  v19 = a1;
  sub_9007C(a1, a2);
  v20 = a3;
  swift_errorRetain();
  v21 = a4;
  v22 = v33;
  v23 = sub_AB9930();
  v24 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v23;
  *(v25 + 3) = &protocol witness table for MainActor;
  v27 = v30;
  v26 = v31;
  *(v25 + 4) = v19;
  *(v25 + 5) = v27;
  *(v25 + 6) = v20;
  *(v25 + 7) = v21;
  *(v25 + 8) = v22;
  (*(v13 + 32))(&v25[v24], v32, v26);
  *&v25[(v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = v34;
  sub_DBDC8(0, 0, v17, &unk_B0DB20, v25);
}

uint64_t sub_3F9ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  sub_AB9940();
  v8[9] = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_3F9F80, v10, v9);
}

uint64_t sub_3F9F80()
{
  v36 = v0;
  v1 = v0[4];
  if (v1 >> 60 != 15)
  {
    v2 = v0[3];
    v3 = objc_allocWithZone(UIImage);
    sub_90090(v2, v1);
    sub_90090(v2, v1);
    isa = sub_AB3250().super.isa;
    v5 = [v3 initWithData:isa];

    sub_466A4(v2, v1);
    if (v5)
    {
      v6 = v0[6];
      v7 = sub_AB8E90();
      v8 = (v6 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier);
      *v8 = v7;
      v8[1] = v9;

      v10 = UIImagePNGRepresentation(v5);
      if (v10)
      {
        v11 = v10;
        v12 = sub_AB3260();
        v14 = v13;

        type metadata accessor for ImageEditingViewController();
        v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v16 = sub_AB3250().super.isa;
        v17 = [v15 _initWithSourceImageData:v16 cropRect:UIImage.centeredSquareCropRect.getter()];

        if (v17)
        {
          v18 = v0[7];
          v20 = v0[3];
          v19 = v0[4];
          [v17 setDelegate:v0[6]];
          [v17 setModalInPresentation:1];
          UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

          UIImagePickerController.setProperties(_:)(v21);

          [v18 presentViewController:v17 animated:1 completion:0];
          [v17 becomeFirstResponder];
          sub_466A4(v20, v19);
        }

        else
        {
          sub_466A4(v0[3], v0[4]);
        }

        sub_466B8(v12, v14);
      }

      else
      {
        sub_466A4(v0[3], v0[4]);
      }

      goto LABEL_16;
    }

    sub_466A4(v0[3], v0[4]);
  }

  if (qword_DE6B78 != -1)
  {
    swift_once();
  }

  v22 = sub_AB4BC0();
  __swift_project_value_buffer(v22, qword_E050E0);
  swift_errorRetain();
  v23 = sub_AB4BA0();
  v24 = sub_AB9F30();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[5];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136315138;
    v0[2] = v25;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0);
    v28 = sub_AB9350();
    v30 = sub_425E68(v28, v29, &v35);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "Failed to load UIImage in photo picker, error: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  v31 = v0[7];
  v32 = (v0[6] + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier);
  *v32 = 0;
  v32[1] = 0;

  [v31 dismissViewControllerAnimated:1 completion:0];
LABEL_16:

  v33 = v0[1];

  return v33();
}

uint64_t sub_3FA378(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  LOBYTE(a5) = a5(v12);

  (*(v10 + 8))(v12, v9);
  return a5 & 1;
}

void sub_3FA494(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v68) = a3;
  v70 = a2;
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v71 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB9250();
  __chkstk_darwin(v7 - 8);
  v69 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v60 - v15;
  __chkstk_darwin(v14);
  v18 = &v60 - v17;
  v19 = *&v3[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
  if (v19)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      swift_unknownObjectRetain();
      v22 = v19;
      v23 = [v22 indexPathForCell:v21];
      if (v23)
      {
        v66 = v22;
        v67 = a1;
        v24 = v23;
        sub_AB3790();

        v25 = v10;
        v26 = *(v10 + 32);
        v27 = v9;
        v64 = (v10 + 32);
        v63 = v26;
        (v26)(v18, v16, v9);
        v28 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
        swift_beginAccess();
        v65 = v3;
        v29 = *&v3[v28];
        v30 = *(v29 + 16);

        if (v30 && (v31 = sub_2EC048(v18), (v32 & 1) != 0))
        {
          v33 = *(*(v29 + 56) + 8 * v31);

          if ((*&stru_1F8.segname[(swift_isaMask & *v33) + 8])(v34))
          {
            sub_AB91E0();
            sub_AB3550();
            v62 = sub_AB9320();
            v61 = v35;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10);
            v36 = swift_allocObject();
            v68 = v18;
            v37 = v36;
            *(v36 + 16) = xmmword_AF4EC0;
            v38 = (*&stru_B8.segname[(swift_isaMask & *v33) - 8])();
            v40 = v39;
            v37[7] = &type metadata for String;
            v37[8] = sub_2792B0();
            if (v40)
            {
              v41 = v38;
            }

            else
            {
              v41 = 0;
            }

            v42 = 0xE000000000000000;
            if (v40)
            {
              v42 = v40;
            }

            v37[4] = v41;
            v37[5] = v42;
            v62 = sub_AB92E0();

            sub_AB91E0();
            sub_AB3550();
            sub_AB9320();
            v43 = sub_AB9260();

            v44 = sub_AB9260();

            v61 = [objc_opt_self() alertControllerWithTitle:v43 message:v44 preferredStyle:1];

            sub_AB91E0();
            sub_AB3550();
            v60 = sub_AB9320();
            v45 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (*(v25 + 16))(v13, v68, v27);
            v46 = *(v25 + 80);
            v62 = v25;
            v47 = (v46 + 24) & ~v46;
            v48 = swift_allocObject();
            *(v48 + 16) = v45;
            (v63)(v48 + v47, v13, v27);
            *(v48 + ((v11 + v47 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
            v64 = v33;

            v49 = sub_AB9260();

            v76 = sub_404204;
            v77 = v48;
            aBlock = _NSConcreteStackBlock;
            v73 = 1107296256;
            v63 = &v74;
            v74 = sub_1546C;
            v75 = &block_descriptor_179;
            v50 = _Block_copy(&aBlock);

            v60 = objc_opt_self();
            v51 = [v60 actionWithTitle:v49 style:2 handler:v50];
            _Block_release(v50);

            v52 = v61;
            [v61 addAction:v51];
            [v52 setPreferredAction:v51];
            sub_AB91E0();
            sub_AB3550();
            sub_AB9320();
            v53 = swift_allocObject();
            v54 = v70;
            *(v53 + 16) = v67;
            *(v53 + 24) = v54;
            swift_unknownObjectRetain();
            v55 = sub_AB9260();

            v76 = sub_4042DC;
            v77 = v53;
            aBlock = _NSConcreteStackBlock;
            v73 = 1107296256;
            v74 = sub_1546C;
            v75 = &block_descriptor_185;
            v56 = _Block_copy(&aBlock);

            v57 = [v60 actionWithTitle:v55 style:1 handler:v56];
            _Block_release(v56);

            [v52 addAction:v57];
            [v65 presentViewController:v52 animated:1 completion:0];

            (*(v62 + 8))(v68, v27);
            swift_unknownObjectRelease();
          }

          else
          {
            v58 = (*(&stru_248.size + (swift_isaMask & *v33)))();
            if ((~v58 & 0xF000000000000007) != 0)
            {
              v59 = v58;
              if ((v58 & 0x8000000000000000) == 0)
              {
                JSSettingsItem.AccessoryItem.updateToggle(isToggled:)(v68 & 1);
              }

              sub_404114(v59);
              (*(v10 + 8))(v18, v9);

              swift_unknownObjectRelease();
            }

            else
            {
              (*(v10 + 8))(v18, v9);

              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          (*(v10 + 8))(v18, v9);

          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_3FAE68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
    swift_beginAccess();

    sub_AB37F0();
    Array.subscript.getter(&type metadata for JSSettingsViewController.Section, &aBlock);
    v12 = aBlock;
    if (!aBlock)
    {
    }

    v30 = a4;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v36 = v44;
    v37 = v45;

    v38 = v12;
    v35 = v12;

    v13 = sub_AB37B0();
    sub_2E60BC(v13, v46);
    sub_404330(v46);
    v14 = sub_AB37F0();
    v15 = v38;
    swift_beginAccess();
    v16 = *&v10[v11];
    result = swift_isUniquelyReferenced_nonNull_native();
    *&v10[v11] = v16;
    if (result)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = sub_28457C(v16);
      v16 = result;
      *&v10[v11] = result;
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (v14 < *(v16 + 16))
        {
          *(v16 + 56 * v14 + 32) = v15;
          *&v10[v11] = v16;
          swift_endAccess();

          v17 = *&v10[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
          if (v17)
          {
            v18 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (*(v7 + 16))(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
            v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
            v20 = swift_allocObject();
            *(v20 + 16) = v18;
            (*(v7 + 32))(v20 + v19, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
            v21 = swift_allocObject();
            *(v21 + 16) = sub_404364;
            *(v21 + 24) = v20;
            v43 = sub_2D4D0;
            v44 = v21;
            aBlock = _NSConcreteStackBlock;
            v40 = 1107296256;
            v41 = sub_1822E0;
            v42 = &block_descriptor_195_0;
            v22 = _Block_copy(&aBlock);
            v23 = v17;
            v24 = v10;

            v25 = swift_allocObject();
            swift_unknownObjectWeakInit();

            v26 = swift_allocObject();
            v27 = v30;
            *(v26 + 16) = v25;
            *(v26 + 24) = v27;
            v43 = sub_4043A8;
            v44 = v26;
            aBlock = _NSConcreteStackBlock;
            v40 = 1107296256;
            v41 = sub_1811AC;
            v42 = &block_descriptor_202_1;
            v28 = _Block_copy(&aBlock);
            v29 = v27;

            [v23 performBatchUpdates:v22 completion:v28];

            _Block_release(v28);
            _Block_release(v22);

            sub_4043B0(v35, v31);
          }

          else
          {

            return sub_4043B0(v35, v31);
          }
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

void sub_3FB368(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isa = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView);
    if (v5)
    {
      v6 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530);
      v7 = sub_AB3820();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_AF4EC0;
      (*(v8 + 16))(v10 + v9, a2, v7);
      isa = sub_AB9740().super.isa;

      [v6 deleteItemsAtIndexPaths:isa];
    }
  }
}

void sub_3FB4D0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_settingsViewModel);

    JSSettingsViewModel.didRemoveItem(item:)(a3);
  }
}

void sub_3FB618()
{
  JSSettingsViewModel.didSelectDoneButton()();
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
  if (v1)
  {
    [v1 setEditing:0];
  }

  v2 = [v0 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_3FB710()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E050E0);
  __swift_project_value_buffer(v0, qword_E050E0);
  sub_13C80(0, &qword_DED8C0);
  OS_os_log.init(musicCategory:)();
  return sub_AB4BD0();
}

void sub_3FB798()
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_DE8ED0);
  v9 = sub_ABA150();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_404DEC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_269;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_404AC4(&qword_DF06C0, 255, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_D1010();
  sub_ABABB0();
  sub_ABA160();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  _Block_release(v11);
}

uint64_t sub_3FBA60(uint64_t a1)
{
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v7 = *(a1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 indexPathsForVisibleItems];
    v10 = sub_AB9760();

    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v3 + 80);
      v29[1] = v10;
      v13 = v10 + ((v12 + 32) & ~v12);
      v31 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
      swift_beginAccess();
      v16 = *(v3 + 16);
      v15 = v3 + 16;
      v14 = v16;
      v34 = *(v15 + 56);
      v17 = (v15 - 8);
      v32 = v8;
      v30 = v16;
      v16(v6, v13, v2);
      while (1)
      {
        isa = sub_AB3770().super.isa;
        v19 = [v8 cellForItemAtIndexPath:isa];

        if (!v19)
        {
          goto LABEL_5;
        }

        type metadata accessor for UserDetailsCell();
        v20 = swift_dynamicCastClass();
        if (!v20)
        {
          break;
        }

        v21 = v2;
        v22 = v15;
        v23 = v20;
        v24 = *(v33 + v31);
        v25 = *(v24 + 16);

        if (v25 && (v26 = sub_2EC048(v6), (v27 & 1) != 0))
        {
          v28 = *(*(v24 + 56) + 8 * v26);

          sub_3FF234(v23, v28);
          (*v17)(v6, v21);

          v2 = v21;
        }

        else
        {
          v2 = v21;
          (*v17)(v6, v21);
        }

        v15 = v22;
        v8 = v32;
        v14 = v30;
LABEL_6:
        v13 += v34;
        if (!--v11)
        {
        }

        v14(v6, v13, v2);
      }

LABEL_5:
      (*v17)(v6, v2);
      goto LABEL_6;
    }
  }

  return result;
}

void sub_3FBD50()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(AAUISignInController) init];
  [v2 setServiceType:AIDAServiceTypeStore];
  [v2 setDelegate:v0];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = ObjectType;
  v7[4] = sub_404108;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_3FC190;
  v7[3] = &block_descriptor_172;
  v5 = _Block_copy(v7);
  v6 = v2;

  [v6 prepareInViewController:v0 completion:v5];
  _Block_release(v5);
}

void sub_3FBEAC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong presentViewController:a4 animated:1 completion:0];
    }
  }

  else
  {
    if (a2 && (v21[0] = a2, swift_errorRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90), sub_13C80(0, &qword_E05350), (swift_dynamicCast() & 1) != 0))
    {
      if (qword_DE6B78 != -1)
      {
        swift_once();
      }

      v7 = sub_AB4BC0();
      __swift_project_value_buffer(v7, qword_E050E0);
      v8 = v21[3];
      v9 = sub_AB4BA0();
      v10 = sub_AB9F30();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v21[0] = v12;
        *v11 = 136446210;
        v13 = [v8 localizedDescription];
        v14 = sub_AB92A0();
        v16 = v15;

        v17 = sub_425E68(v14, v16, v21);

        *(v11 + 4) = v17;
        _os_log_impl(&dword_0, v9, v10, "AAUISignInController failed with error: %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
      }
    }

    else
    {
      if (qword_DE6B78 != -1)
      {
        swift_once();
      }

      v18 = sub_AB4BC0();
      __swift_project_value_buffer(v18, qword_E050E0);
      v8 = sub_AB4BA0();
      v19 = sub_AB9F30();
      if (os_log_type_enabled(v8, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v8, v19, "AAUISignInController cancelled by user", v20, 2u);
      }
    }
  }
}

void sub_3FC190(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Class sub_3FC208(void *a1)
{
  v2 = v1;
  v38 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB9250();
  __chkstk_darwin(v7 - 8);
  static ApplicationCapabilities.shared.getter(v42);
  v8 = v43;

  sub_70C54(v42);
  v9 = sub_472A84(9, v8);

  static ApplicationCapabilities.shared.getter(v44);
  v10 = v45;

  sub_70C54(v44);
  v11 = sub_472A84(3, v10);

  v12 = v9 | v11;
  v41 = _swiftEmptyArrayStorage;
  sub_13C80(0, &unk_E05310);
  sub_AB91E0();
  sub_AB3550();
  v37[1] = v6;
  sub_AB9320();
  v13 = sub_AB9260();
  v39 = objc_opt_self();
  v14 = [v39 systemImageNamed:v13];

  v15 = swift_allocObject();
  v40 = v2;
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = ObjectType;
  v37[0] = ObjectType;
  v17 = sub_ABA7D0();
  sub_AB9730();
  if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  if (v12)
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v18 = sub_AB9260();
    v19 = [v39 systemImageNamed:v18];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = sub_ABA7D0();
    sub_AB9730();
    if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();

    v21 = v41;
    if ([objc_opt_self() isSourceTypeAvailable:1])
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v22 = sub_AB9260();
      v23 = [v39 systemImageNamed:v22];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = sub_ABA7D0();
      sub_AB9730();
      if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v21 = v41;
    }

    v25 = sub_3FEFE8(v38);
    if (v25)
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v26 = sub_AB9260();
      v27 = [v39 systemImageNamed:v26];

      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v30 = v37[0];
      *(v29 + 16) = v28;
      *(v29 + 24) = v30;
      v31 = sub_ABA7D0();
      sub_AB9730();
      if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v21 = v41;
    }
  }

  else
  {
    v21 = v41;
    v25 = sub_3FEFE8(v38);
  }

  if (v21 >> 62)
  {
    sub_13C80(0, &qword_DEAB30);

    v32 = sub_ABAFF0();
  }

  else
  {

    sub_ABB3E0();
    sub_13C80(0, &qword_DEAB30);
    v32 = v21;
  }

  sub_13C80(0, &qword_DF1D50);
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v48.value._countAndFlagsBits = 0;
  v48.value._object = 0;
  v46.value.super.isa = 0;
  v46.is_nil = 0;
  v33.value = 0;
  isa = sub_ABA5B0(v47, v48, v46, v33, 0xFFFFFFFFFFFFFFFFLL, v32, v36).super.super.isa;

  return isa;
}

void sub_3FCAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_3FED8C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = swift_allocObject();
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a3;
  v12 = objc_allocWithZone(type metadata accessor for JSSettingsViewController.EditNameTextFieldAlert());
  v13 = sub_3FE20C(v6, v8, sub_403F68, v11);
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v14 presentViewController:v13 animated:1 completion:0];

    v13 = v15;
  }
}

void sub_3FCC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a4;
    v14 = sub_AB9990();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_AB9940();
    swift_bridgeObjectRetain_n();

    sub_137F98(&dword_0 + 1);

    v15 = sub_AB9930();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = &protocol witness table for MainActor;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 1;
    *(v16 + 72) = 514;
    *(v16 + 80) = sub_403FC4;
    *(v16 + 88) = v13;
    sub_DBDC8(0, 0, v9, &unk_B0DB08, v16);

    sub_D3144(&dword_0 + 1);
  }
}

void sub_3FCE30(uint64_t a1)
{
  if (a1 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v2 = Strong;
    sub_13C80(0, &qword_DE8ED0);
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    swift_errorRetain();
    v4 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4040C8, v3);

    if (qword_DE6B78 != -1)
    {
      swift_once();
    }

    v5 = sub_AB4BC0();
    __swift_project_value_buffer(v5, qword_E050E0);
    swift_errorRetain();
    v6 = sub_AB4BA0();
    v7 = sub_AB9F30();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_ABB520();
      v12 = sub_425E68(v10, v11, aBlock);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v6, v7, "Edit Name did fail with error: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }
  }

  else
  {
    if (qword_DE67A8 != -1)
    {
      swift_once();
    }

    sub_BE928(&off_CF1728);
    v13 = [objc_opt_self() shared];
    aBlock[4] = UIScreen.Dimensions.size.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3FD1F0;
    aBlock[3] = &block_descriptor_162;
    v14 = _Block_copy(aBlock);
    [v13 refreshUserStatesWithOptions:1 completion:v14];
    _Block_release(v14);

    if (qword_DE6B78 != -1)
    {
      swift_once();
    }

    v15 = sub_AB4BC0();
    __swift_project_value_buffer(v15, qword_E050E0);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Edit Name succeeded", v18, 2u);
    }
  }
}

void sub_3FD1F0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_13C80(0, &unk_E05340);
  v6 = sub_AB9760();

  v7 = a2;
  v8 = a3;
  v5(v6, a3);
}

void sub_3FD2AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05320);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_AB8EF0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_greenTeaLogger);

    [v12 logPhotoAccess];
  }

  v13 = [objc_opt_self() sharedPhotoLibrary];
  sub_AB8EB0();
  sub_AB8E60();
  v14 = sub_AB8E70();
  (*(*(v14 - 8) + 56))(v2, 0, 1, v14);
  sub_AB8EE0();
  sub_13C80(0, &qword_E0C390);
  (*(v4 + 16))(v7, v9, v3);
  v15 = sub_ABA380();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_404AC4(&unk_E05330, v16, type metadata accessor for JSSettingsViewController);
  }

  sub_ABA390();
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    [v17 presentViewController:v15 animated:1 completion:0];
    (*(v4 + 8))(v9, v3);

    v15 = v18;
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }
}

void sub_3FD5D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_greenTeaLogger);

    [v2 logCameraAccess];
  }

  v3 = [objc_allocWithZone(UIImagePickerController) init];
  [v3 setSourceType:1];
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  [v3 setDelegate:v4];

  [v3 setAllowsEditing:1];
  UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

  UIImagePickerController.setProperties(_:)(v5);

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 presentViewController:v3 animated:1 completion:0];

    v3 = v7;
  }
}

void *sub_3FD72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v8 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = a3;
    v11 = sub_AB9990();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_AB9940();

    v12 = sub_AB9930();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0;
    *(v13 + 72) = 514;
    *(v13 + 80) = sub_403E40;
    *(v13 + 88) = v10;
    sub_DBDC8(0, 0, v6, &unk_B0DB00, v13);
  }

  return result;
}

uint64_t sub_3FD924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_13C80(0, &qword_DE8ED0);
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = v9;
    v10[4] = a3;
    swift_errorRetain();
    v11 = v9;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a5, v10);
  }

  return result;
}

void sub_3FD9F4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    sub_3FDFF4();
    if (qword_DE6B78 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, qword_E050E0);
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v3 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = sub_ABB520();
      v8 = sub_425E68(v6, v7, &v14);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_0, oslog, v3, "Remove Photo did fail with error: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);

      return;
    }
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userHasDeletedImage) = 1;
    v9 = *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage);
    *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage) = 0;

    if (qword_DE67A8 != -1)
    {
      swift_once();
    }

    sub_BE928(&off_CF1750);
    if (qword_DE6B78 != -1)
    {
      swift_once();
    }

    v10 = sub_AB4BC0();
    __swift_project_value_buffer(v10, qword_E050E0);
    oslog = sub_AB4BA0();
    v11 = sub_AB9F10();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, oslog, v11, "Remove Photo succeeded", v12, 2u);
    }
  }
}

uint64_t sub_3FDCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_AB9940();
  v6[5] = sub_AB9930();
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_3FDD94;

  return sub_23A694(a4, 0);
}

uint64_t sub_3FDD94()
{
  *(*v1 + 56) = v0;

  v3 = sub_AB98B0();
  if (v0)
  {
    v4 = sub_3FDF60;
  }

  else
  {
    v4 = sub_3FDEF0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_3FDEF0()
{
  (*(v0 + 16))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3FDF60()
{
  v1 = v0[7];
  v2 = v0[2];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

void sub_3FDFF4()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v3 = sub_AB9260();

  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:0];

  v5 = sub_AB9260();

  v6 = [objc_opt_self() alertControllerWithTitle:v5 message:0 preferredStyle:1];

  [v6 addAction:v4];
  [v0 presentViewController:v6 animated:1 completion:0];
}

char *sub_3FE20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_AB35C0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_AB9250();
  __chkstk_darwin(v10 - 8);
  *&v4[OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_doneAction] = 0;
  v11 = &v4[OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_currentName];
  *v11 = 0;
  *(v11 + 1) = 0;
  v36.receiver = v4;
  v36.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v36, "initWithNibName:bundle:", 0, 0);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v13 = sub_AB9260();

  [v12 setTitle:v13];

  v14 = v12;
  [v14 setPreferredStyle:1];
  v15 = &v14[OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_currentName];
  *v15 = a1;
  *(v15 + 1) = a2;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = sub_403F70;
  v35 = v16;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1546C;
  v33 = &block_descriptor_142_0;
  v17 = _Block_copy(&aBlock);

  [v14 addTextFieldWithConfigurationHandler:v17];
  _Block_release(v17);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v18 = sub_AB9260();

  v19 = objc_opt_self();
  v20 = [v19 actionWithTitle:v18 style:1 handler:0];

  [v14 addAction:v20];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a3;
  v22[4] = a4;

  v23 = sub_AB9260();

  v34 = sub_403FB8;
  v35 = v22;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1546C;
  v33 = &block_descriptor_149_0;
  v24 = _Block_copy(&aBlock);

  v25 = [v19 actionWithTitle:v23 style:0 handler:v24];
  _Block_release(v24);

  [v25 setEnabled:0];
  v26 = *&v14[OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_doneAction];
  *&v14[OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_doneAction] = v25;
  v27 = v25;

  [v14 addAction:v27];
  [v14 setPreferredAction:v27];

  return v14;
}

void sub_3FE708(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_currentName + 8))
    {

      v4 = sub_AB9260();
    }

    else
    {
      v4 = 0;
    }

    [a1 setText:v4];

    [a1 setAutocapitalizationType:1];
    [a1 addTarget:v3 action:"textFieldDidChange:" forControlEvents:0x20000];
  }
}

void sub_3FE7F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v5 textFields];
    if (!v6)
    {

      return;
    }

    v7 = v6;
    sub_13C80(0, &qword_E00100);
    v8 = sub_AB9760();

    if (v8 >> 62)
    {
      if (sub_ABB060())
      {
        goto LABEL_5;
      }
    }

    else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_5:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = sub_3616F0(0, v8);
      }

      else
      {
        if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      v11 = [v10 text];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = sub_AB92A0();
      v15 = v14;

      a3(v13, v15);
      goto LABEL_14;
    }

LABEL_14:
  }
}

void sub_3FE9FC(void *a1)
{
  v2 = [a1 text];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = sub_AB92A0();
  v6 = v5;

  v7 = *(v1 + OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_doneAction);
  if (v7)
  {
    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = *(v1 + OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_currentName + 8);
    if (!v9)
    {
      v11 = 1;
      goto LABEL_18;
    }

    if (v4 == *(v1 + OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_currentName) && v9 == v6)
    {
LABEL_16:
      v11 = 0;
    }

    else
    {
      v11 = sub_ABB3C0() ^ 1;
    }

LABEL_18:
    v12 = v7;

    [v12 setEnabled:v11 & 1];

    return;
  }
}

void sub_3FEC1C(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
  if (v2)
  {
    v10 = v2;
    if ([v1 isViewLoaded])
    {
      v4 = [v10 collectionViewLayout];
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        swift_getObjectType();
        [swift_getObjCClassFromMetadata() invalidationContextClass];
        swift_getObjCClassMetadata();
        sub_13C80(0, &unk_DFED50);
        swift_dynamicCastMetatypeUnconditional();
        v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v6 invalidateLayoutWithContext:v7];
        if (a1)
        {
          [v10 reloadData];
        }

        v8 = v4;
        v4 = v7;
      }

      else
      {
        v8 = v10;
      }

      v9 = v4;
    }

    else
    {
      v9 = v10;
    }
  }
}

uint64_t sub_3FED8C()
{
  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300);
  UnfairLock.locked<A>(_:)(sub_31A7A4);
  v22 = v16[6];
  v23 = v16[7];
  v24 = v16[8];
  v25 = v17;
  v18[2] = v16[2];
  v19 = v16[3];
  v20 = v16[4];
  v21 = v16[5];
  v18[0] = v16[0];
  v18[1] = v16[1];
  if (sub_90064(v18) == 1 || (sub_12E1C(v16, &unk_E05300), BYTE9(v19) != 1))
  {
    UnfairLock.locked<A>(_:)(sub_31A7A4);
    v12 = v7[6];
    v13 = v7[7];
    v14 = v7[8];
    v15 = v8;
    v9[2] = v7[2];
    v9[3] = v7[3];
    v10 = v7[4];
    v11 = v7[5];
    v9[0] = v7[0];
    v9[1] = v7[1];
    if (sub_90064(v9) != 1)
    {
      v5 = v10;

      sub_12E1C(v7, &unk_E05300);
      return v5;
    }

    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_profilePerson);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 name];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = sub_AB92A0();

  return v5;
}

id sub_3FEFE8(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userHasDeletedImage))
  {
    return 0;
  }

  v10 = &dword_0 + 1;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage);
  if (!v4 || (result = [objc_opt_self() staticArtworkCatalogWithImage:v4]) == 0)
  {
    v5 = sub_3FF0E4(&v10, a1);
    if (v5)
    {
      v6 = v5;
      sub_D3144(v10);
      return v6;
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_profilePerson);
      if (!v7)
      {
        sub_D3144(v10);
        return 0;
      }

      v8 = v7;
      v9 = [v8 artworkCatalog];
      sub_D3144(v10);

      return v9;
    }
  }

  return result;
}

id sub_3FF0E4(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*a1 == &dword_0 + 1)
  {
    v5 = *(&stru_108.reserved2 + (swift_isaMask & *a2));
    v6 = v5();
    if (v6)
    {
      v7 = v6;
      v8 = v5();
      if (!v8 || (v9 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle, v10 = v8, swift_beginAccess(), v11 = *&v10[v9], v12 = v11, v10, !v11))
      {
        v12 = ICStoreArtworkInfoCropStyleBoundedBox;
      }

      v3 = JSArtwork.artworkCatalog(defaultCropStyle:)(v12);
    }

    else
    {
      v3 = 0;
    }

    swift_beginAccess();
    v13 = *a1;
    *a1 = v3;
    v14 = v3;
    sub_D3144(v13);
  }

  sub_137F98(v2);
  return v3;
}

void sub_3FF234(char *a1, void *a2)
{
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9250();
  v7 = __chkstk_darwin(v6 - 8);
  v8 = (*&stru_B8.segname[(swift_isaMask & *a2) - 8])(v7);
  if (!v9)
  {
    v8 = sub_3FED8C();
    if (!v9)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }
  }

  v10 = &a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title];
  *v10 = v8;
  v10[1] = v9;

  sub_31ECC0();
  v77 = v2;
  v71 = a2;
  if ((*(&stru_1A8.reloff + (swift_isaMask & *a2)))())
  {
    v11 = sub_3FC208(a2);
    v12 = v11;
    v13 = OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu;
    v14 = *&a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu];
    *&a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu] = v11;
    if (v14)
    {
      sub_13C80(0, &qword_DF1D50);
      v15 = v12;
      v16 = v14;
      v17 = sub_ABA790();

      if (v17)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v22 = v11;
      v16 = 0;
    }

    v23 = sub_31FA74();
    v15 = *&a1[v13];
    [v23 setMenu:v15];

    v16 = v23;
LABEL_12:

    sub_AB91E0();
    sub_AB3550();
    v24 = sub_AB9320();
    v25 = &a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText];
    v26 = *&a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText];
    v27 = *&a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText + 8];
    *v25 = v24;
    v25[1] = v28;
    sub_31F484(v26, v27);

    goto LABEL_13;
  }

  v18 = [a1 tableViewCell];
  if (!v18)
  {
    __break(1u);
    goto LABEL_26;
  }

  v19 = v18;
  [v18 setAccessoryType:1];

  sub_AB91E0();
  sub_AB3550();
  v20 = sub_AB9320();
  sub_31F284(v20, v21);
LABEL_13:
  v29 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[2];
  v33 = v29[3];
  v75 = v29[5];
  v76 = v29[4];
  v34 = &a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v74 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v35 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v73 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v72 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  *v34 = *v29;
  v34[1] = v31;
  v34[2] = v32;
  v34[3] = v33;
  v34[4] = v76;
  v34[5] = v75;
  v36 = v30;
  v78 = a1;
  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  sub_2F1C8(v74, v73, v35, v72);
  v44 = *&v78[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v45 = *(v44 + 168);
  v93[0] = *(v44 + 152);
  v93[1] = v45;
  v93[2] = *(v44 + 184);
  *(v44 + 152) = v30;
  *(v44 + 160) = v31;
  *(v44 + 168) = v32;
  *(v44 + 176) = v33;
  *(v44 + 184) = v76;
  *(v44 + 192) = v75;
  v46 = v40;
  v47 = v41;
  v48 = v42;
  v49 = v43;
  v50 = v46;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  sub_75948(v93);
  sub_12E1C(v93, &unk_DF8690);

  static ApplicationCapabilities.shared.getter(v89);
  v54 = v90;

  sub_70C54(v89);
  LOBYTE(v50) = sub_472A84(9, v54);

  static ApplicationCapabilities.shared.getter(v91);
  v55 = v92;

  sub_70C54(v91);
  v56 = sub_472A84(3, v55);

  if (v50 & 1) != 0 || (v56)
  {
    goto LABEL_19;
  }

  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300);
  UnfairLock.locked<A>(_:)(sub_90048);
  v85 = v79[6];
  v86 = v79[7];
  v87 = v79[8];
  v88 = v80;
  v81[2] = v79[2];
  v82 = v79[3];
  v83 = v79[4];
  v84 = v79[5];
  v81[0] = v79[0];
  v81[1] = v79[1];
  if (sub_90064(v81) != 1)
  {
    sub_12E1C(v79, &unk_E05300);
    if (BYTE9(v82))
    {
LABEL_19:
      v57 = sub_3FEFE8(v71);
      v58 = *&v78[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
      *&v78[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v57;
      v59 = v57;

      sub_74EA4(v57);
    }
  }

  v60 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog;
  if (!*&v78[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog])
  {
    v61 = sub_3FED8C();
    if (v62)
    {
      v63 = v61;
      v64 = v62;
      v65 = [v77 view];
      if (v65)
      {
        v66 = v65;
        sub_13C80(0, &qword_E04530);
        v67 = [v66 effectiveUserInterfaceLayoutDirection];

        v68 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v63, v64, v67, 0);

        v69 = *&v78[v60];
        *&v78[v60] = v68;
        v70 = v68;

        sub_74EA4(v68);
        return;
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_3FF960(unint64_t a1)
{
  v3 = sub_AB3430();
  v60 = *(v3 - 8);
  __chkstk_darwin(v3);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v67 = *(v5 - 8);
  __chkstk_darwin(v5);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v66);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v18 - 8);
  v68 = &v57 - v19;
  v20 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v21 = *&v1[v20];
  if (*(v21 + 16) <= a1)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v58 = v3;
  v22 = v21 + 56 * a1;
  v25 = *(v22 + 32);
  v24 = *(v22 + 40);
  v23 = v22 + 32;
  if (!v24)
  {
    return;
  }

  v26 = *(v23 + 24);
  v63 = *(v23 + 40);

  v27 = v24;

  v62 = v27;
  v64 = v26;

  v61 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  memset(v75, 0, sizeof(v75));
  v76 = 0;
  v77 = xmmword_AF7710;
  PresentationSource.init(viewController:position:)(v1, v75, v74);
  v28 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v72, 0, sizeof(v72));
  v73 = 0;
  (*(*(v28 - 8) + 56))(v68, 1, 1, v28);
  sub_15F84(v72, &v69, &unk_DE8E30);
  if (*(&v70 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v29 = _s30CollectionViewSelectionHandlerVMa();
    v30 = swift_dynamicCast();
    v31 = *(v29 - 8);
    (*(v31 + 56))(v11, v30 ^ 1u, 1, v29);
    if ((*(v31 + 48))(v11, 1, v29) != 1)
    {
      (*(v67 + 16))(v17, &v11[*(v29 + 20)], v5);
      sub_2D6C0(v11, _s30CollectionViewSelectionHandlerVMa);
      v32 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_12E1C(&v69, &unk_DE8E30);
    v33 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  }

  sub_12E1C(v11, &qword_E037A0);
  v32 = 1;
LABEL_9:
  v34 = v67;
  (*(v67 + 56))(v17, v32, 1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v36 = Strong, sub_12B2FC(), v38 = v37, v40 = v39, v36, v38))
  {
    ObjectType = swift_getObjectType();
    (*(v40 + 8))(ObjectType, v40);
    v43 = v42;
    swift_unknownObjectRelease();
    sub_15F84(v17, v15, &unk_DE8E20);
    if ((*(v34 + 48))(v15, 1, v5) == 1)
    {
      sub_12E1C(v15, &unk_DE8E20);
      v69 = 0u;
      v70 = 0u;
      v71 = 0;
    }

    else
    {
      (*(v34 + 32))(v57, v15, v5);
      sub_404AC4(&qword_DFAA90, 255, &type metadata accessor for IndexPath);
      sub_ABAD10();
    }

    v45 = swift_getObjectType();
    v46 = v59;
    sub_3B8F68();
    v44 = sub_21CCAC(1, v46, &v69, v45, v43);
    (*(v60 + 8))(v46, v58);
    sub_12E1C(&v69, &qword_DF2BD0);
    sub_12E1C(v17, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v17, &unk_DE8E20);
    v44 = 0;
  }

  v47 = swift_unknownObjectWeakLoadStrong();
  v65 = v25;
  if (v47)
  {
    v48 = v47;
    sub_12AFE8();
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  sub_15F28(v74, &v69);
  sub_15F84(v72, (v8 + 104), &unk_DE8E30);
  v51 = v66;
  v52 = v68;
  sub_15F84(v68, &v8[*(v66 + 28)], &unk_DEA510);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = 1;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  *(v8 + 11) = 0;
  sub_2D594(&v69, v8);
  *(v8 + 12) = 0;
  v53 = *v61;
  *(&v70 + 1) = v51;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v69);
  sub_2D604(v8, boxed_opaque_existential_0);
  v55 = v53;
  v56 = v62;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v62, 0, v44, v50, &v69);
  sub_12E1C(v52, &unk_DEA510);
  sub_12E1C(v72, &unk_DE8E30);
  sub_1611C(v74);
  sub_2D6C0(v8, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v69, &unk_DE8E40);
}

void sub_400204()
{
  v1 = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyArrayStorage;
  sub_AB3820();
  v4 = swift_allocBox();
  sub_AB37A0();
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_isAuthenticated) == 1)
  {
    *(v3 + 16) = JSSettingsViewModel.sectionsForAuthenticatedState.getter();
  }

  else
  {
    sub_3FBD50();
  }

  v5 = [objc_opt_self() defaultIdentityStore];
  sub_13C80(0, &unk_DF2B00);
  v6 = static ICUserIdentity.active.getter();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v1;
  v7[4] = v4;
  v7[5] = v2;
  v10[4] = sub_403CC4;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_151E0;
  v10[3] = &block_descriptor_129;
  v8 = _Block_copy(v10);

  v9 = v1;

  [v5 getPropertiesForUserIdentity:v6 completionHandler:v8];
  _Block_release(v8);
}

void sub_400414(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v10 = sub_AB7C10();
  v25 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_AB7C50();
  v13 = *(v24 - 8);
  __chkstk_darwin(v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = [a1 isManagedAppleID] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  sub_13C80(0, &qword_DE8ED0);
  v22 = sub_ABA150();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = v16;
  v18 = v23;
  *(v17 + 40) = a5;
  *(v17 + 48) = v18;
  aBlock[4] = sub_403D38;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_106_0;
  v19 = _Block_copy(aBlock);

  v20 = a4;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_404AC4(&qword_DF06C0, 255, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_D1010();
  sub_ABABB0();
  v21 = v22;
  sub_ABA160();
  (*(v25 + 8))(v12, v10);
  (*(v13 + 8))(v15, v24);
  _Block_release(v19);
}

id sub_400734(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v39 = a2;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  result = swift_beginAccess();
  v13 = *(a1 + 16);
  if (v13 >> 62)
  {
    goto LABEL_17;
  }

  v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  if (v14)
  {
    while (v14 >= 1)
    {
      v37 = v13 & 0xC000000000000001;
      v15 = v13;

      swift_beginAccess();
      swift_beginAccess();
      v16 = v15;
      v17 = 0;
      v36 = (v8 + 16);
      v35 = (v8 + 8);
      v33 = (v8 + 40);
      v34 = v15;
      while (1)
      {
        if (v37)
        {
          v18 = sub_3618EC(v17, v16);
        }

        else
        {
          v18 = *(v16 + 8 * v17 + 32);
        }

        v19 = v18;
        (*v36)(v10, v11, v7);
        sub_400B30(v19, v38 & 1, v10, v41);
        (*v35)(v10, v7);
        swift_beginAccess();
        v20 = *(a5 + 16);
        sub_403D48(v41, v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 16) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = sub_6C9F4(0, *(v20 + 2) + 1, 1, v20);
          *(a5 + 16) = v20;
        }

        v23 = *(v20 + 2);
        v22 = *(v20 + 3);
        if (v23 >= v22 >> 1)
        {
          v20 = sub_6C9F4((v22 > 1), v23 + 1, 1, v20);
        }

        *(v20 + 2) = v23 + 1;
        v24 = &v20[56 * v23];
        v25 = v41[0];
        v26 = v41[1];
        v27 = v41[2];
        v24[80] = v42;
        *(v24 + 3) = v26;
        *(v24 + 4) = v27;
        *(v24 + 2) = v25;
        *(a5 + 16) = v20;
        swift_endAccess();
        swift_beginAccess();
        v8 = v11;
        v28 = sub_AB37F0();
        swift_endAccess();
        if (__OFADD__(v28, 1))
        {
          break;
        }

        ++v17;
        sub_AB37A0();
        sub_403D80(v41);
        (*v33)(v11, v10, v7);

        v16 = v34;
        if (v14 == v17)
        {

          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      v32 = v13;
      result = sub_ABB060();
      v13 = v32;
      v14 = result;
      if (!result)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    swift_beginAccess();
    v29 = *(a5 + 16);
    v30 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
    v31 = v39;
    swift_beginAccess();
    *(v31 + v30) = v29;

    return [*(v31 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView) reloadData];
  }

  return result;
}

uint64_t sub_400B30@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v75 = a2;
  v74 = a4;
  v6 = sub_AB3820();
  v7 = __chkstk_darwin(v6);
  v82 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v91 = &v73 - v10;
  __chkstk_darwin(v9);
  v12 = &v73 - v11;
  v77 = v13;
  v84 = *(v13 + 16);
  v85 = v13 + 16;
  v84(&v73 - v11, a3, v6);
  v73 = a1;
  v14 = JSSettingsSection.items.getter();
  v15 = v14;
  if (v14 >> 62)
  {
LABEL_55:
    v63 = v15;
    v16 = sub_ABB060();
    v15 = v63;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    if (v16)
    {
LABEL_3:
      v17 = 0;
      v18 = 0;
      v19 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
      v81 = v15 & 0xC000000000000001;
      v76 = v15 & 0xFFFFFFFFFFFFFF8;
      v89 = (v77 + 8);
      v78 = (v77 + 32);
      v20 = _swiftEmptyArrayStorage;
      v83 = v6;
      v79 = v16;
      v80 = v15;
      while (1)
      {
        if (v81)
        {
          v21 = sub_361704(v17, v15);
        }

        else
        {
          if (v17 >= *(v76 + 16))
          {
            goto LABEL_54;
          }

          v21 = *(v15 + 8 * v17 + 32);
        }

        v22 = v21;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v23 = (*&stru_108.segname[(swift_isaMask & *v21) + 8])();
        v88 = v18;
        v86 = v17 + 1;
        if (v23 > 1)
        {
          break;
        }

        if (!v23)
        {
          goto LABEL_29;
        }

        if (v75)
        {
          v24 = (*&stru_B8.segname[(swift_isaMask & *v22) - 8])();
          if (v25)
          {
            v26 = v24;
          }

          else
          {
            v26 = 0;
          }

          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0xE000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_6CB18(0, *(v20 + 2) + 1, 1, v20);
          }

          v29 = *(v20 + 2);
          v28 = *(v20 + 3);
          if (v29 >= v28 >> 1)
          {
            v20 = sub_6CB18((v28 > 1), v29 + 1, 1, v20);
          }

          *(v20 + 2) = v29 + 1;
          v87 = v20;
          v30 = &v20[40 * v29];
          *(v30 + 4) = v26;
          *(v30 + 5) = v27;
          *(v30 + 6) = 0;
          *(v30 + 7) = 0;
          v30[64] = 64;
          v6 = v83;
        }

        else
        {
          v87 = v20;
        }

LABEL_35:
        v39 = (*&stru_1F8.segname[(swift_isaMask & *v22) + 8])();
        v40 = v91;
        v41 = v12;
        v84(v91, v12, v6);
        v42 = v90;
        swift_beginAccess();
        v12 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = *(v42 + v19);
        v44 = v92;
        *(v42 + v19) = 0x8000000000000000;
        v45 = sub_2EC048(v40);
        v46 = v44[2];
        v47 = (v15 & 1) == 0;
        v48 = v46 + v47;
        if (__OFADD__(v46, v47))
        {
          goto LABEL_51;
        }

        v49 = v15;
        if (v44[3] >= v48)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v52 = v92;
            if (v15)
            {
              goto LABEL_42;
            }
          }

          else
          {
            sub_334A54();
            v52 = v92;
            if (v49)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          sub_32EB14(v48, isUniquelyReferenced_nonNull_native);
          v50 = sub_2EC048(v91);
          if ((v49 & 1) != (v51 & 1))
          {
            result = sub_ABB4C0();
            __break(1u);
            return result;
          }

          v45 = v50;
          v52 = v92;
          if (v49)
          {
LABEL_42:
            v53 = v52[7];
            v54 = *(v53 + 8 * v45);
            *(v53 + 8 * v45) = v12;

            v55 = *v89;
            v6 = v83;
            (*v89)(v91, v83);
            goto LABEL_47;
          }
        }

        v52[(v45 >> 6) + 8] |= 1 << v45;
        v56 = v77;
        v57 = v91;
        v6 = v83;
        v84((v52[6] + *(v77 + 72) * v45), v91, v83);
        *(v52[7] + 8 * v45) = v12;
        v55 = *(v56 + 8);
        v55(v57, v6);
        v58 = v52[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_53;
        }

        v52[2] = v60;
LABEL_47:
        *(v90 + v19) = v52;

        swift_endAccess();
        v61 = v41;
        if (__OFADD__(sub_AB37B0(), 1))
        {
          goto LABEL_52;
        }

        v18 = v39 | v88;
        sub_AB37F0();
        v62 = v82;
        sub_AB37A0();

        v55(v41, v6);
        (*v78)(v41, v62, v6);
        ++v17;
        v15 = v80;
        v20 = v87;
        v12 = v61;
        if (v86 == v79)
        {
          goto LABEL_57;
        }
      }

      if (v23 == 2)
      {
        v31 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_6CB18(0, *(v20 + 2) + 1, 1, v20);
        }

        v33 = *(v20 + 2);
        v32 = *(v20 + 3);
        if (v33 >= v32 >> 1)
        {
          v20 = sub_6CB18((v32 > 1), v33 + 1, 1, v20);
        }

        *(v20 + 2) = v33 + 1;
        v87 = v20;
        v34 = &v20[40 * v33];
        *(v34 + 4) = v22;
        *(v34 + 5) = 0;
        *(v34 + 6) = 0;
        *(v34 + 7) = 0;
        v35 = 0x80;
      }

      else
      {
LABEL_29:
        v36 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_6CB18(0, *(v20 + 2) + 1, 1, v20);
        }

        v38 = *(v20 + 2);
        v37 = *(v20 + 3);
        if (v38 >= v37 >> 1)
        {
          v20 = sub_6CB18((v37 > 1), v38 + 1, 1, v20);
        }

        *(v20 + 2) = v38 + 1;
        v87 = v20;
        v34 = &v20[40 * v38];
        *(v34 + 4) = v22;
        *(v34 + 5) = 0;
        *(v34 + 6) = 0;
        *(v34 + 7) = 0;
        v35 = -64;
      }

      v34[64] = v35;
      goto LABEL_35;
    }
  }

  LOBYTE(v18) = 0;
  v20 = _swiftEmptyArrayStorage;
LABEL_57:

  v64 = JSSettingsSection.headerText.getter();
  v66 = v65;
  v67 = JSSettingsSection.footerText.getter();
  v68 = v20;
  v70 = v69;
  result = (*(v77 + 8))(v12, v6);
  v72 = v74;
  *v74 = v68;
  v72[1] = 0;
  v72[2] = v64;
  v72[3] = v66;
  v72[4] = v67;
  v72[5] = v70;
  *(v72 + 48) = v18 & 1;
  return result;
}

void sub_401268()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = [v0 navigationItem];
  v4 = [v3 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB92A0();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v10 = sub_AB9260();

      [v3 setTitle:v10];
    }
  }

  v11 = [v0 navigationController];
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v11;
  v13 = [v11 viewControllers];
  sub_13C80(0, &qword_DE7500);
  v14 = sub_AB9760();

  if (!(v14 >> 62))
  {
    if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_10;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!sub_ABB060())
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = sub_35F8D4(0, v14);
LABEL_13:
    v16 = v15;

    v17 = [v16 childViewControllers];
    v18 = sub_AB9760();

    v31[0] = v0;
    __chkstk_darwin(v19);
    *&v30[-16] = v31;
    v20 = sub_1B3840(sub_72E3C, &v30[-32], v18);

    if (v20)
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v32 = type metadata accessor for JSSettingsViewController();
      v31[0] = v0;
      v21 = v0;
      v22 = sub_AB9260();

      v23 = v32;
      if (v32)
      {
        v24 = __swift_project_boxed_opaque_existential_1(v31, v32);
        v25 = *(v23 - 8);
        __chkstk_darwin(v24);
        v27 = &v30[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v25 + 16))(v27);
        v28 = sub_ABB3A0();
        (*(v25 + 8))(v27, v23);
        __swift_destroy_boxed_opaque_existential_0(v31);
      }

      else
      {
        v28 = 0;
      }

      v29 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v22 style:2 target:v28 action:"handleDoneButtonTapped"];

      swift_unknownObjectRelease();
      [v3 setRightBarButtonItem:v29];

      v3 = v29;
      goto LABEL_21;
    }

LABEL_20:
    [v3 setRightBarButtonItem:0];
LABEL_21:

    return;
  }

  if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
  {
    v15 = *(v14 + 32);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_4017CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_forSecureTextEntry))
  {
    v4 = &OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_passwordTextFieldValue;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_identifierTextFieldValue;
  }

  v5 = (v3 + *v4);
  *v5 = a2;
  v5[1] = a3;
}

void sub_40183C()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_isAuthenticated) == 1)
  {
    sub_400204();
  }
}

void sub_401858()
{
  if ((*(v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_isAuthenticated) & 1) == 0)
  {
    sub_400204();
  }
}

id sub_401870()
{
  if (qword_DE6B70 != -1)
  {
    swift_once();
  }

  v0 = qword_E716C0;

  return v0;
}

char *sub_4018D4(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style] = 0;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_urlRangeDictForTextView;
  *&v4[v10] = sub_99BB4(_swiftEmptyArrayStorage);
  v11 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView;
  *&v4[v11] = [objc_allocWithZone(UITextView) init];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for HeaderFooterView();
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView;
  v14 = *&v12[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView];
  v15 = v12;
  [v15 addSubview:v14];
  v16 = *&v12[v13];
  sub_402578(v16);

  return v15;
}

id sub_401A38(id result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style];
  if (v2 != (result & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView];
    v4 = objc_opt_self();
    v5 = &UIFontTextStyleCaption1;
    if (!v2)
    {
      v5 = &UIFontTextStyleFootnote;
    }

    v6 = *v5;
    v7 = v3;
    v8 = [v4 preferredFontForTextStyle:v6];
    [v7 setFont:v8];

    [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView] setNeedsLayout];

    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_401B38(uint64_t a1)
{
  v3 = sub_AB2E70();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB2F20();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  v47 = sub_AB2F50();
  v46 = *(v47 - 8);
  result = __chkstk_darwin(a1);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text] != result || *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text + 8] != v14)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v45 = v1;

      v18 = sub_AB9260();
      v19 = [v18 _isNaturallyRTL];

      if (v19)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      v21 = [objc_opt_self() defaultParagraphStyle];
      [v21 mutableCopy];

      sub_ABAB50();
      sub_13C80(0, &unk_E05360);
      swift_dynamicCast();
      v22 = v55;
      swift_unknownObjectRelease();
      [v22 setAlignment:v20];
      sub_AB2F40();
      aBlock._countAndFlagsBits = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
      sub_B4860();
      sub_AB2F70();
      aBlock._countAndFlagsBits = v22;
      sub_B4908();
      v44 = v22;
      sub_AB2F70();
      if (qword_DE6C88 != -1)
      {
        swift_once();
      }

      v23 = qword_E718C8;
      aBlock._countAndFlagsBits = qword_E718C8;
      sub_B48B4();
      v24 = v23;
      sub_AB2F70();

      v25 = String.trim()();

      aBlock = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA750);
      swift_allocObject();
      sub_AB3890();
      v26 = v12;
      sub_AB3880();

      (*(v4 + 104))(v6, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v3);
      sub_AB2E40();
      (*(v4 + 8))(v6, v3);
      sub_13C80(0, &qword_DF5280);
      v28 = v48;
      v27 = v49;
      v29 = *(v48 + 16);
      v43 = v26;
      v29(v10, v26, v49);
      v30 = sub_ABA1C0();
      v31 = v45;
      v32 = &v45[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_urlRangeDictForTextView];
      swift_beginAccess();
      v33 = v30;
      v34 = [v33 length];
      v35 = swift_allocObject();
      *(v35 + 16) = v32;
      *(v35 + 24) = v33;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_404A2C;
      *(v36 + 24) = v35;
      v53 = sub_404A34;
      v54 = v36;
      aBlock._countAndFlagsBits = _NSConcreteStackBlock;
      aBlock._object = 1107296256;
      v51 = sub_4CE7AC;
      v52 = &block_descriptor_244;
      v37 = _Block_copy(&aBlock);
      v38 = v33;

      [v38 enumerateAttributesInRange:0 options:v34 usingBlock:{0, v37}];
      _Block_release(v37);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        swift_endAccess();

        v40 = v27;
        v41 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView;
        v42 = *&v31[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView];
        [v42 setAttributedText:v38];

        [*&v31[v41] setNeedsLayout];
        [v31 setNeedsLayout];

        (*(v28 + 8))(v43, v40);
        return (*(v46 + 8))(v16, v47);
      }
    }
  }

  return result;
}

void sub_402218()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for HeaderFooterView();
  objc_msgSendSuper2(&v20, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 music_inheritedLayoutInsets];
  v11 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v0 effectiveUserInterfaceLayoutDirection];
  v18 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView;
  [*&v0[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView] sizeThatFits:{v15, v17}];
  v21.origin.x = v11;
  v21.origin.y = v13;
  v21.size.width = v15;
  v21.size.height = v17;
  CGRectGetHeight(v21);
  v19 = *&v0[v18];
  sub_ABA490();
  [v19 setFrame:?];
}

id sub_402578(id a1)
{
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [a1 setTextColor:qword_E718C8];

  v3 = sub_AB9260();

  [a1 setText:v3];

  v4 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v4];

  v5 = [a1 textContainer];
  [v5 setMaximumNumberOfLines:0];

  [a1 setEditable:0];
  [a1 setScrollEnabled:0];
  [a1 setSelectable:1];
  v6 = [a1 textContainer];
  [v6 setLineFragmentPadding:0.0];

  v7 = [a1 textContainer];
  [v7 setLineBreakMode:0];

  v8 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [a1 setFont:v8];

  [a1 setAdjustsFontForContentSizeCategory:1];

  return [a1 setDelegate:v1];
}

id sub_4027AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderFooterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_402878(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_4028C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_402924()
{
  result = qword_E052F8;
  if (!qword_E052F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E052F8);
  }

  return result;
}

uint64_t sub_40297C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 72);
  v7 = v6[2];
  if (v7)
  {
    v8 = (v6 + 4);

    v9 = 0;
    while (v9 < v6[2])
    {
      sub_8FEC8(v8, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_8FF3C(v17);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a2)
        {
          v11 = 0;
LABEL_9:

          goto LABEL_11;
        }
      }

      ++v9;
      v8 += 40;
      if (v7 == v9)
      {
        v9 = 0;
        v11 = 1;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v9 = 0;
  v11 = 1;
LABEL_11:
  sub_15F84(a1, v16, &unk_E05390);
  if (v16[0] || v16[1] != 1)
  {
    sub_C3D40(v16, v17);
    if (v11)
    {
      sub_8FEC8(v17, v16);
      swift_beginAccess();
      v6 = *(a3 + 72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 72) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v15 = v6[2];
        v14 = v6[3];
        if (v15 >= v14 >> 1)
        {
          v6 = sub_6ACE4((v14 > 1), v15 + 1, 1, v6);
        }

        v6[2] = v15 + 1;
        sub_C3D40(v16, &v6[5 * v15 + 4]);
        *(a3 + 72) = v6;
        goto LABEL_23;
      }

LABEL_25:
      v6 = sub_6ACE4(0, v6[2] + 1, 1, v6);
      *(a3 + 72) = v6;
      goto LABEL_18;
    }

    swift_beginAccess();
    sub_2E5E98(v9, v16);
    result = sub_8FF3C(v16);
    if (*(*(a3 + 72) + 16) >= v9)
    {
      sub_8FEC8(v17, v16);
      sub_1AEF88(v9, v9, v16);
LABEL_23:
      swift_endAccess();
      sub_12E1C(a1, &unk_E05390);
      return sub_8FF3C(v17);
    }

    __break(1u);
  }

  else
  {
    sub_12E1C(v16, &unk_E05390);
    if ((v11 & 1) == 0)
    {
      swift_beginAccess();
      sub_2E5E98(v9, v17);
      sub_8FF3C(v17);
      swift_endAccess();
    }

    return sub_12E1C(a1, &unk_E05390);
  }

  return result;
}

void sub_402C4C(double a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth) > a1)
  {
    a1 = *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth);
  }

  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth) = a1;
  if (sub_AB38D0())
  {
    v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView);
    if (v4)
    {
      v13 = v4;
      v5 = [v13 visibleCells];
      sub_13C80(0, &qword_DFE230);
      v6 = sub_AB9760();

      if (v6 >> 62)
      {
        v7 = sub_ABB060();
        if (v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
        if (v7)
        {
LABEL_7:
          if (v7 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v7; ++i)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v9 = sub_360438(i, v6);
            }

            else
            {
              v9 = *(v6 + 8 * i + 32);
            }

            v10 = v9;
            type metadata accessor for TextFieldCell();
            v11 = swift_dynamicCastClass();
            if (v11)
            {
              v12 = v11;
              *(v11 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth) = *(v2 + v3);
              if (sub_AB38D0())
              {
                [v12 setNeedsLayout];
              }
            }
          }
        }
      }
    }
  }
}

void sub_402E2C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_lastSeenViewBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v4) = swift_allocObject();
  v5 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v1 + v5) = TextDrawing.Cache.init()();
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
  *(v1 + v6) = sub_97678(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_noAuthentication) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_accountStoreDidChangeObserver) = 0;
  v7 = (v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_identifierTextFieldValue);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_passwordTextFieldValue);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userProfileObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_profilePerson) = 0;
  v9 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_greenTeaLogger;
  *(v1 + v9) = [objc_allocWithZone(MusicAnalyticsGreenTeaLogger) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userHasDeletedImage) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_402FCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v5 = sub_2EC048(a1);
  if ((v6 & 1) == 0)
  {

LABEL_5:
    v10 = 0;
    return v10 & 1;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  v8 = *&stru_1F8.segname[(swift_isaMask & *v7) + 8];
  v9 = v7;
  v10 = v8();

  return v10 & 1;
}

uint64_t sub_4030B8()
{
  v1 = v0;
  v2 = sub_AB37F0();
  v3 = sub_AB37E0();
  v4 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  result = swift_beginAccess();
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v1 + v4);
  if (v2 >= *(v6 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(v6 + 56 * v2 + 32);
  if (v3 >= *(v7 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v8 = v7 + 40 * v3;
  v9 = *(v8 + 64);
  if (v9 < 0xC0)
  {
    return 1;
  }

  v10 = *(v8 + 32);
  v11 = *(v8 + 40);
  v12 = *(v8 + 48);
  v13 = *(v8 + 56);
  v14 = *(&stru_248.size + (swift_isaMask & *v10));
  v15 = v10;
  v16 = v14();
  if ((~v16 & 0xF000000000000007) != 0)
  {
    v17 = v16 >> 63;
    sub_404114(v16);
  }

  else
  {
    v17 = 1;
  }

  sub_4048E8(v10, v11, v12, v13, v9);
  return v17;
}

uint64_t sub_403208(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB37F0();
  v5 = sub_AB37E0();
  v6 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  result = swift_beginAccess();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = *(v2 + v6);
  if (v4 >= *(v8 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = *(v8 + 56 * v4 + 32);
  if (v5 < *(v9 + 16))
  {
    v10 = v9 + 40 * v5;
    v11 = *(v10 + 64);
    v12 = v11 >> 6;
    if (v11 >> 6 > 1)
    {
      v14 = *(v10 + 32);
      v15 = *(v10 + 40);
      v17 = *(v10 + 48);
      v16 = *(v10 + 56);
      if (v12 == 2)
      {
        v18 = *(&stru_1A8.reloff + (swift_isaMask & *v14));
        v19 = v14;
        v20 = v18();
        sub_4048E8(v14, v15, v17, v16, v11);
        v13 = v20 ^ 1;
        return v13 & 1;
      }

      v33 = *(v10 + 40);
      v34 = *(v10 + 48);
      v21 = *(&stru_248.size + (swift_isaMask & *v14));
      v22 = v14;
      v23 = v21();
      if ((~v23 & 0xF000000000000007) != 0 && (v24 = v23, sub_404114(v23), (v24 & 0x8000000000000000) == 0) || (v25 = v21(), (~v25 & 0xF000000000000007) != 0) && (v26 = v25, sub_404114(v25), (v26 & 0x8000000000000000) == 0))
      {
        sub_4048E8(v14, v33, v34, v16, v11);
        v13 = 0;
        return v13 & 1;
      }

      v27 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
      swift_beginAccess();
      v28 = *(v2 + v27);
      if (*(v28 + 16))
      {

        v29 = sub_2EC048(a1);
        if (v30)
        {
          v31 = *(*(v28 + 56) + 8 * v29);

          if ((*&stru_1F8.segname[(swift_isaMask & *v31) + 8])(v32))
          {
            v13 = (*&stru_1A8.segname[(swift_isaMask & *v31) - 8])();

            sub_4048E8(v14, v33, v34, v16, v11);
            return v13 & 1;
          }
        }

        else
        {
        }
      }

      sub_4048E8(v14, v33, v34, v16, v11);
    }

    else if (!v12)
    {
      v13 = 0;
      return v13 & 1;
    }

    v13 = 1;
    return v13 & 1;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_403534()
{
  v1 = v0;
  if (qword_DE6B78 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E050E0);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "AAUISignInController did complete", v5, 2u);
  }

  return [v1 dismissViewControllerAnimated:0 completion:0];
}

void sub_403634()
{
  v1 = v0;
  if (qword_DE6B78 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E050E0);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "AAUISignInController did cancel", v5, 2u);
  }

  v6 = [v1 presentingViewController];
  if (v6)
  {
    v7 = v6;
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_403774()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_urlRangeDictForTextView;
  *(v0 + v2) = sub_99BB4(_swiftEmptyArrayStorage);
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView;
  *(v0 + v3) = [objc_allocWithZone(UITextView) init];
  sub_ABAFD0();
  __break(1u);
}

void *sub_403830(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text + 8];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text] & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    [v1 music_inheritedLayoutInsets];
    v6 = v5;
    v8 = v7;
    [v1 bounds];
    UIEdgeInsetsInsetRect(0.0, 0.0, v9, 1.79769313e308, v6, v8);
    [v1 sizeThatFits:{v10, v11}];
  }

  [a1 frame];
  [a1 setFrame:?];
  return a1;
}

uint64_t sub_403934(uint64_t a1, Swift::UInt a2, Swift::UInt a3)
{
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v41 - v15;
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  v19 = [objc_opt_self() defaultWorkspace];
  if (v19)
  {
    v20 = v19;
    v41 = v13;
    v21 = v7;
    v22 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_urlRangeDictForTextView;
    swift_beginAccess();
    v23 = *(v3 + v22);
    if (*(v23 + 16))
    {
      v24 = sub_2EC75C(a2, a3);
      if (v25)
      {
        v26 = v21;
        (*(v21 + 16))(v16, *(v23 + 56) + *(v21 + 72) * v24, v6);
        v27 = v16;
        v28 = *(v21 + 32);
        v28(v18, v27, v6);
        sub_AB30F0(v29);
        v31 = v30;
        v32 = [(objc_class *)v20 URLOverrideForURL:v30];

        if (v32)
        {
          sub_AB3150();

          v33 = v41;
          v28(v41, v10, v6);
          sub_AB30F0(v34);
          v36 = v35;
          sub_97420(_swiftEmptyArrayStorage);
          isa = sub_AB8FD0().super.isa;

          [(objc_class *)v20 openSensitiveURL:v36 withOptions:isa];
          v38 = *(v26 + 8);
          v38(v33, v6);
          v38(v18, v6);

          v39 = 1;
          v20 = isa;
LABEL_9:

          return v39;
        }

        (*(v21 + 8))(v18, v6);
      }
    }

    v39 = 0;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_403C3C()
{

  return swift_deallocObject();
}

uint64_t sub_403C74()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_129(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_403CE8()
{

  return swift_deallocObject();
}

uint64_t sub_403DB0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_403DE8()
{

  return swift_deallocObject();
}

uint64_t sub_403E7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_3FDCC8(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_403F78()
{

  return swift_deallocObject();
}

uint64_t sub_403FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_3FDCC8(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_404090()
{

  return swift_deallocObject();
}

void sub_404114(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_40412C()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_404204(uint64_t a1)
{
  v3 = *(sub_AB3820() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_3FAE68(a1, v5, v1 + v4, v6);
}

uint64_t sub_4042A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_4042DC()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(1, ObjectType, v1);
}

uint64_t sub_4043B0(uint64_t result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_40440C()
{
  v1 = sub_AB8EA0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_4044E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_AB8EA0() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_3F9C6C(a1, a2, a3, v9, v10, v3 + v8, v11);
}

uint64_t sub_40459C()
{
  v1 = sub_AB8EA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = *(v0 + 40);
  if (v4 >> 60 != 15)
  {
    sub_466B8(*(v0 + 32), v4);
  }

  (*(v2 + 8))(v0 + ((v3 + 72) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_40469C(uint64_t a1)
{
  sub_AB8EA0();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17CF8;

  return sub_3F9ED8(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_126Tm_0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 64);
  if (v1 != &dword_0 + 1)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_131Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

void sub_4048E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 >> 6) > 1u)
  {
  }

  else
  {
    if (a5 >> 6)
    {
    }

    else
    {
    }
  }
}

uint64_t sub_40497C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_AB3820() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_4049F4()
{

  return swift_deallocObject();
}

void sub_404A3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xFDu)
  {
    sub_4048E8(a1, a2, a3, a4, a5);
  }
}

id sub_404A50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 >> 6) > 1u)
  {

    return a1;
  }

  else
  {
    if (a5 >> 6)
    {
    }

    else
    {
    }
  }
}

uint64_t sub_404AC4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_404B0C()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_404BD4()
{
  v1 = *(sub_AB3820() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + *(v1 + 64));
  isa = sub_AB3770().super.isa;
  [v2 deselectItemAtIndexPath:isa animated:v3];
}

uint64_t sub_404C94()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_404D58(void *a1)
{
  sub_AB3820();
  v3 = *(v1 + 16);

  sub_3F520C(a1, v3);
}

uint64_t sub_404E00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 33))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_404E54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_404EF8()
{
  result = qword_E053A0;
  if (!qword_E053A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E053A0);
  }

  return result;
}

void sub_405004(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v6 = OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_initializedProperties;
  v7 = *(a2 + OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_initializedProperties);
  if (v7 == 2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v8 = v5;
  if (v7)
  {
    (*&stru_68.segname[(swift_isaMask & *a3) + 8])();
    if (v9)
    {
      v10 = sub_AB9260();
    }

    else
    {
      v10 = 0;
    }

    [v8 setTitle:v10];

    v7 = *(a2 + v6);
  }

  if (v7 == 2)
  {
    goto LABEL_17;
  }

  if ((v7 & 0x100) != 0)
  {
    v11 = (*(&stru_68.offset + (swift_isaMask & *a3)))();
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_self() menuWithJSMenu:v11];
      [v8 setSubmenu:v13];
    }

    else
    {

      [v8 setSubmenu:0];
    }
  }
}

id sub_405220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSModelMenuItemBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for JSModelMenuItemBuilder.InitializedProperties(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for JSModelMenuItemBuilder.InitializedProperties(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_4053EC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v5 = OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_initializedProperties;
  if (*(v2 + OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_initializedProperties) == 2)
  {
    v57 = a1;
    v58 = a2;
    v56 = OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_requestedProperties;
    v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_requestedProperties);
    v7 = [v6 properties];
    v8 = sub_AB9B40();

    v9 = sub_AB92A0();
    v11 = sub_4DFDA8(v9, v10, v8);
    v13 = v12;
    v15 = v14;

    sub_F01A0(v11, v13, v15);
    v16 = sub_AB92A0();
    v18 = sub_4DFDA8(v16, v17, v8);
    v20 = v19;
    v22 = v21;

    sub_F01A0(v18, v20, v22);
    v23 = sub_AB92A0();
    v25 = sub_4DFDA8(v23, v24, v8);
    v27 = v26;
    v29 = v28;

    sub_F01A0(v25, v27, v29);
    v30 = sub_AB92A0();
    v32 = sub_4DFDA8(v30, v31, v8);
    v34 = v33;
    v36 = v35;

    sub_F01A0(v32, v34, v36);
    v37 = *(v2 + v56);
    v38 = [v37 relationships];
    sub_119B5C();
    v39 = sub_AB8FF0();

    v40 = sub_AB92A0();
    if (*(v39 + 16))
    {
      sub_2EBF88(v40, v41);
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v44 = ~v29 != 0;
    v45 = ~v22 != 0;
    v46 = ~v15 != 0;

    v47 = v2 + v5;
    *v47 = (v45 << 16) | (v46 << 8) | (v44 << 24) | v43 & 1;
    *(v47 + 4) = ((v45 << 16) | (v46 << 8) | (v44 << 24) | ((v36 != -1) << 32)) >> 32;

    v4 = v57;
    v3 = v58;
  }

  v60 = 1;
  v48 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin(v48);
  v55[2] = v2;
  v55[3] = v4;
  v55[4] = v3;
  v55[5] = &v60;
  v49 = objc_allocWithZone(MusicModelBrickItem);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_405C9C;
  *(v50 + 24) = v55;
  aBlock[4] = sub_57B84;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_130;
  v51 = _Block_copy(aBlock);

  v52 = [v49 initWithIdentifiers:v48 block:v51];
  _Block_release(v51);

  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
    __break(1u);
  }

  else
  {
    v54 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v52 personalizationStyle:v60];

    return v54;
  }

  return result;
}

void sub_405834(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_initializedProperties;
  v11 = *(a2 + OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_initializedProperties);
  if (v11 == 2)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v12 = v9;
  if (v11)
  {

    sub_4D3314(a3, a4);
    v14 = v13;
    v16 = v15;

    [v12 setContentItem:v14];
    if (v14)
    {

      *a5 = v16;
    }
  }

  v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  if (*(a2 + v10) == 2)
  {
    goto LABEL_19;
  }

  if ((*(a2 + v10) & 0x100) != 0)
  {
    swift_beginAccess();

    v18 = sub_AB9260();

    [v12 setHeadlineText:v18];

    v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_20;
  }

  if ((v17 & 0x10000) != 0)
  {
    swift_beginAccess();

    v19 = sub_AB9260();

    [v12 setTitleText:v19];

    v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_21;
  }

  if ((v17 & 0x1000000) != 0)
  {
    swift_beginAccess();

    v20 = sub_AB9260();

    [v12 setSubtitleText:v20];

    v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_22;
  }

  if ((v17 & 0x100000000) != 0)
  {
    v21 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_backgroundArtwork;
    swift_beginAccess();
    v22 = *(a3 + v21);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a3;
    aBlock[4] = sub_21C94C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_119878;
    aBlock[3] = &block_descriptor_20_4;
    v24 = _Block_copy(aBlock);
    v25 = v22;
    v26 = a3;

    [v12 setBackgroundArtworkCatalogBlock:v24];
    _Block_release(v24);
  }
}

id sub_405BE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSModelBrickItemBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_405CD0()
{

  return swift_deallocObject();
}

id sub_405D10(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_initializedProperties];
  v3[4] = 0;
  *v3 = 2;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_requestedProperties] = a1;
  v4 = [a1 relationships];
  sub_119B5C();
  v5 = sub_AB8FF0();
  v6 = sub_AB92A0();
  if (*(v5 + 16) && (v8 = sub_2EBF88(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);
  }

  else
  {

    v10 = [objc_opt_self() emptyPropertySet];
  }

  type metadata accessor for JSModelMediaContentItemBuilder();
  v11 = swift_allocObject();
  v11[4] = 0;
  v11[2] = v10;
  result = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v10];
  if (result)
  {
    v11[3] = result;
    *&v2[OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_contentItemBuilder] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for JSModelBrickItemBuilder();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_406028(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_AB37F0();
  result = sub_AB37E0();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  if (v7 >= *(v9 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = *(v9 + 8 * v7 + 32);
  if (result < *(v10 + 16))
  {
    v11 = v10 + 24 * result;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = *(v11 + 48);
    v15 = sub_AB3820();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, a1, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
    sub_4089FC(v12, v13, v14);
    v17 = sub_40765C(v12, v13, v14, v6);
    sub_12E1C(v6, &unk_DE8E20);
    sub_4089F0(v12, v13, v14);
    return v17;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_4062E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_408B10;
  *(v12 + 24) = v11;
  v15[4] = sub_3E12F8;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1B7EB0;
  v15[3] = &block_descriptor_45_1;
  v13 = _Block_copy(v15);

  [a4 enumerateItemsInSectionAtIndex:a2 usingBlock:v13];
  _Block_release(v13);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_40644C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void (*a5)(uint64_t, char *, char *), uint64_t a6, _BYTE *a7)
{
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB37C0();
  HIBYTE(v16) = 0;
  a5(a1, v14, &v16 + 7);
  if (HIBYTE(v16) == 1)
  {
    *a3 = 1;
    *a7 = 1;
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_406734(uint64_t a1)
{
  v2 = v1;
  v10 = _swiftEmptyArrayStorage;
  v4 = swift_allocObject();
  *(v4 + 16) = &v10;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_408A18;
  *(v5 + 24) = v4;
  aBlock[4] = sub_2E34E8;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7EB0;
  aBlock[3] = &block_descriptor_131;
  v6 = _Block_copy(aBlock);

  [v2 enumerateItemsInSectionAtIndex:a1 usingBlock:v6];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_4068A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_AB9730();
  if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  swift_unknownObjectRetain();
  return sub_AB97F0();
}

id sub_406AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = *(v4 + 32);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  v8 = *(v5 + 48);
  v9 = sub_AB3820();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_4089FC(v6, v7, v8);
  v10 = sub_40765C(v6, v7, v8, v3);
  sub_12E1C(v3, &unk_DE8E20);
  sub_4089F0(v6, v7, v8);
  return v10;
}

id sub_406C34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v4 + 8 * v5 + 24);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = v6 + 24 * v7;
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = sub_AB3820();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_4089FC(v9, v10, v11);
  v13 = sub_40765C(v9, v10, v11, v3);
  sub_12E1C(v3, &unk_DE8E20);
  sub_4089F0(v9, v10, v11);
  return v13;
}

uint64_t sub_406D80()
{
  v47 = sub_AB3820();
  v1 = *(v47 - 8);
  v2 = __chkstk_darwin(v47);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v8 = __chkstk_darwin(v7 - 8);
  v45 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = _swiftEmptyArrayStorage;
  v51 = _swiftEmptyArrayStorage;
  v46 = v0;
  v13 = *(v0 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  v37 = *(v13 + 16);
  if (!v37)
  {
    return v12;
  }

  v36 = v13 + 32;
  v50 = (v1 + 56);
  v42 = (v1 + 48);
  v43 = OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection;
  v41 = (v1 + 32);
  v48 = (v1 + 8);

  v15 = 0;
  v40 = v4;
  v44 = v6;
  v35 = result;
LABEL_4:
  if (v15 < *(result + 16))
  {
    v16 = *(v36 + 8 * v15);
    v17 = *(v16 + 16);
    if (!v17)
    {
      goto LABEL_3;
    }

    v39 = v15;
    v49 = *v50;

    v38 = v16;
    v18 = (v16 + 48);
    v19 = v47;
    while (1)
    {
      v21 = *(v18 - 2);
      v20 = *(v18 - 1);
      v22 = *v18;
      v49(v11, 1, 1, v19);
      if (v22 != 1)
      {
        break;
      }

      v23 = v21;
      sub_12E1C(v11, &unk_DE8E20);
      v24 = v23;
LABEL_17:
      sub_AB9730();
      if (*(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v51 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      v12 = v51;
      sub_4089F0(v21, v20, v22);
      v18 += 24;
      if (!--v17)
      {

        result = v35;
        v15 = v39;
LABEL_3:
        if (++v15 == v37)
        {

          return v12;
        }

        goto LABEL_4;
      }
    }

    v25 = v45;
    sub_38F70C(v11, v45);
    if ((*v42)(v25, 1, v19) == 1)
    {
      sub_12E1C(v25, &unk_DE8E20);
    }

    else
    {
      v26 = v40;
      v27 = *v41;
      (*v41)(v40, v25, v19);
      if (sub_AB37F0() == v21 && sub_AB37E0() == v20)
      {
        v28 = v44;
        v27(v44, v26, v19);
LABEL_16:
        v29 = *(v46 + v43);
        isa = sub_AB3770().super.isa;
        v31 = [v29 itemAtIndexPath:isa];
        v32 = v28;
        v33 = v47;
        (*v48)(v32, v47);
        sub_12E1C(v11, &unk_DE8E20);

        v19 = v33;
        goto LABEL_17;
      }

      (*v48)(v26, v19);
    }

    v28 = v44;
    sub_AB37C0();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_407238(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB37F0();
  result = sub_AB37E0();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(v2 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  if (v8 >= *(v10 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(v10 + 8 * v8 + 32);
  if (result >= *(v11 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v12 = v11 + 24 * result;
  v13 = *(v12 + 32);
  if (*(v12 + 48) == 1)
  {
    v14 = [v13 identifiers];

    return v14;
  }

  else
  {
    if (v8 == v13 && result == *(v12 + 40))
    {
      (*(v5 + 16))(v7, a1, v4);
    }

    else
    {
      sub_AB37C0();
    }

    v16 = *(v2 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection);
    isa = sub_AB3770().super.isa;
    v18 = [v16 identifiersForItemAtIndexPath:isa];
    (*(v5 + 8))(v7, v4);

    return v18;
  }
}

id sub_40744C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *))
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a1;
  v13 = a4(v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

id sub_407568(uint64_t a1)
{
  v3 = [objc_opt_self() emptyIdentifierSet];
  v4 = OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection;
  if ([*(v1 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection) numberOfSections] >= a1)
  {
    return v3;
  }

  v5 = *(v1 + v4);
  v6 = [v5 identifiersForSectionAtIndex:a1];

  return v6;
}

id sub_40765C(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v25 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  if ((a3 & 1) == 0)
  {
    sub_38F70C(a4, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_12E1C(v10, &unk_DE8E20);
    }

    else
    {
      v20 = *(v12 + 32);
      v20(v15, v10, v11);
      if (sub_AB37F0() == v25 && sub_AB37E0() == a2)
      {
        v20(v17, v15, v11);
LABEL_12:
        v21 = *(v4 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection);
        isa = sub_AB3770().super.isa;
        v23 = [v21 itemAtIndexPath:isa];
        (*(v12 + 8))(v17, v11);

        return v23;
      }

      (*(v12 + 8))(v15, v11);
    }

    sub_AB37C0();
    goto LABEL_12;
  }

  v18 = v25;

  return v18;
}

id sub_407948()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditingSectionedCollection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_407A08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_407A50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for EditingSectionedCollection.ChangeRecord()
{
  result = qword_E055E0;
  if (!qword_E055E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_407B4C()
{
  sub_407BD4();
  if (v0 <= 0x3F)
  {
    sub_407C58();
    if (v1 <= 0x3F)
    {
      sub_AB3820();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_407BD4()
{
  if (!qword_E055F0)
  {
    sub_13C80(255, &qword_DEDE20);
    sub_AB3820();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_E055F0);
    }
  }
}

void sub_407C58()
{
  if (!qword_E055F8)
  {
    sub_AB3820();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_E055F8);
    }
  }
}

void sub_407CC0()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for EditingSectionedCollection.ChangeRecord();
  __chkstk_darwin(v9);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_57E38(v1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38) + 48);
      v14 = *(v3 + 32);
      v14(v8, v11, v2);
      v14(v6, (v11 + v13), v2);
      sub_ABB5D0(1uLL);
      sub_408384(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_AB90E0();
      sub_AB90E0();
      v15 = *(v3 + 8);
      v15(v6, v2);
      v15(v8, v2);
    }

    else
    {
      (*(v3 + 32))(v8, v11, v2);
      sub_ABB5D0(2uLL);
      sub_408384(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_AB90E0();
      (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    v16 = *v11;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D40);
    (*(v3 + 32))(v8, v11 + *(v17 + 48), v2);
    sub_ABB5D0(0);
    sub_ABA7A0();
    sub_408384(&qword_DFAA90, &type metadata accessor for IndexPath);
    sub_AB90E0();
    (*(v3 + 8))(v8, v2);
  }
}

Swift::Int sub_408044()
{
  sub_ABB5C0();
  sub_407CC0();
  return sub_ABB610();
}

Swift::Int sub_408088()
{
  sub_ABB5C0();
  sub_407CC0();
  return sub_ABB610();
}

Swift::Int sub_408110()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_ABB5C0();
  if (v3 == 1)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_ABB5D0(v1);
    sub_ABB5D0(v2);
  }

  return sub_ABB610();
}

void sub_4081A0()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    v2 = *(v0 + 8);
    sub_ABB5D0(0);
    sub_ABB5D0(v1);
    sub_ABB5D0(v2);
  }
}

Swift::Int sub_408210()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_ABB5C0();
  if (v3 == 1)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_ABB5D0(v1);
    sub_ABB5D0(v2);
  }

  return sub_ABB610();
}

uint64_t sub_40829C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a1 + 16) == 1)
  {
    if (v2)
    {
      sub_13C80(0, &qword_DFA720);
      return sub_ABA790() & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = (*a1 == *a2) & ~v2;
    if (*(a1 + 8) == *(a2 + 8))
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_408330()
{
  result = qword_E05630;
  if (!qword_E05630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05630);
  }

  return result;
}

uint64_t sub_408384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4083CC(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = sub_AB3820();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v62 = &v62 - v8;
  v9 = __chkstk_darwin(v7);
  v63 = &v62 - v10;
  v11 = __chkstk_darwin(v9);
  v64 = &v62 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v62 - v14;
  __chkstk_darwin(v13);
  v17 = &v62 - v16;
  v18 = type metadata accessor for EditingSectionedCollection.ChangeRecord();
  v19 = __chkstk_darwin(v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v62 - v23;
  __chkstk_darwin(v22);
  v26 = (&v62 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05638);
  v28 = __chkstk_darwin(v27 - 8);
  v30 = &v62 - v29;
  v31 = (&v62 + *(v28 + 56) - v29);
  sub_57E38(a1, &v62 - v29);
  sub_57E38(v65, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v45 = v15;
    sub_57E38(v30, v26);
    v46 = *v26;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D40) + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v64 = *v31;
      v65 = v17;
      v53 = v66;
      v54 = *(v66 + 32);
      v55 = v26 + v47;
      v56 = v67;
      v54(v17, v55, v67);
      v54(v45, v31 + v47, v56);
      v57 = v64;
      sub_13C80(0, &qword_DFA720);
      if (sub_ABA790())
      {
        v58 = v65;
        v44 = sub_AB3780();
        v59 = *(v53 + 8);
        v59(v45, v56);
        v59(v58, v56);

        goto LABEL_15;
      }

      v60 = *(v53 + 8);
      v60(v45, v56);
      v60(v65, v56);

      goto LABEL_18;
    }

    (*(v66 + 8))(v26 + v47, v67);

LABEL_12:
    sub_12E1C(v30, &qword_E05638);
LABEL_19:
    v44 = 0;
    return v44 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_57E38(v30, v21);
    v48 = swift_getEnumCaseMultiPayload();
    v50 = v66;
    v49 = v67;
    if (v48 == 2)
    {
      (*(v66 + 32))(v6, v31, v67);
      v44 = sub_AB3780();
      v51 = *(v50 + 8);
      v51(v6, v49);
      v51(v21, v49);
      goto LABEL_15;
    }

    (*(v66 + 8))(v21, v67);
    goto LABEL_12;
  }

  sub_57E38(v30, v24);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38) + 48);
  v34 = swift_getEnumCaseMultiPayload();
  v36 = v66;
  v35 = v67;
  if (v34 != 1)
  {
    v52 = *(v66 + 8);
    v52(&v24[v33], v67);
    v52(v24, v35);
    goto LABEL_12;
  }

  v37 = *(v66 + 32);
  v38 = v64;
  v37(v64, v31, v67);
  v39 = v63;
  v37(v63, &v24[v33], v35);
  v40 = (v31 + v33);
  v41 = v62;
  v37(v62, v40, v35);
  v42 = sub_AB3780();
  v43 = *(v36 + 8);
  v43(v24, v35);
  if ((v42 & 1) == 0)
  {
    v43(v41, v35);
    v43(v39, v35);
    v43(v38, v35);
LABEL_18:
    sub_132D48(v30);
    goto LABEL_19;
  }

  v44 = sub_AB3780();
  v43(v41, v35);
  v43(v39, v35);
  v43(v38, v35);
LABEL_15:
  sub_132D48(v30);
  return v44 & 1;
}

void sub_4089F0(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

id sub_4089FC(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

uint64_t block_copy_helper_131(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_408A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  isa = sub_AB3770().super.isa;
  (*(v6 + 16))(v6, a1, isa, a3);
}

uint64_t sub_408ABC()
{

  return swift_deallocObject();
}

uint64_t sub_408B1C(void *a1, uint64_t a2)
{
  result = [a1 numberOfSections];
  v8 = 0;
  if (result < 0)
  {
LABEL_8:
    __break(1u);
  }

  v5 = result;
  for (i = 0; v5 != i; ++i)
  {
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_8;
    }

    (*(a2 + 16))(a2, [a1 sectionAtIndex:i], i, &v8);
    v7 = v8;
    result = swift_unknownObjectRelease();
    if (v7 == 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_408C14(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = sub_AB3820();
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 numberOfItemsInSection:a1];
  v17 = 0;
  if (result < 0)
  {
LABEL_8:
    __break(1u);
  }

  v10 = result;
  v11 = 0;
  v12 = (v6 + 8);
  while (v10 != v11)
  {
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_8;
    }

    sub_AB37C0();
    isa = sub_AB3770().super.isa;
    (*v12)(v8, v16);
    v14 = [a2 itemAtIndexPath:isa];

    (*(a3 + 16))(a3, v14, v11, &v17);
    LODWORD(isa) = v17;
    result = swift_unknownObjectRelease();
    ++v11;
    if (isa == 1)
    {
      return result;
    }
  }

  return result;
}

char *sub_408E04(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9250();
  __chkstk_darwin(v7 - 8);
  *&v3[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_bindings] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_needsVisibleMenuItemsUpdate] = 0;
  v3[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_isBatchUpdating] = 0;
  if (a2)
  {
    v8 = sub_AB9260();
  }

  else
  {
    v8 = 0;
  }

  v36.receiver = v3;
  v36.super_class = type metadata accessor for MediaPickerMenuTableViewController();
  v31 = a3;
  v9 = objc_msgSendSuper2(&v36, "initWithNibName:bundle:", v8, a3);

  v10 = v9;
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v11 = sub_AB9260();

  [v10 setTitle:v11];

  static ApplicationCapabilities.shared.getter(v37);
  v12 = v38;
  v42 = v38;

  sub_70C54(v37);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 32);
    v32 = 0x8000000000B4ED40;
    v15 = _swiftEmptyArrayStorage;
    v16 = &selRef__authenticateReturningError_;
    v33 = v10;
    while (1)
    {
      v20 = *v14++;
      v19 = v20;
      v21 = [v10 v16[334]];
      v22 = UITraitCollection.mediaPickerConfiguration.getter();

      if (v20 > 3)
      {
LABEL_15:

        goto LABEL_10;
      }

      if ((v19 - 1) >= 2)
      {
        if (v19)
        {
          if (!v22)
          {
            goto LABEL_10;
          }

          MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
          v25 = v24;
          v34[0] = 0xD00000000000001DLL;
          v34[1] = v32;
          __chkstk_darwin(v24);
          *(&v31 - 2) = v34;
          v26 = sub_1B39BC(sub_3040E8, (&v31 - 4), v25);

          v10 = v33;
          if ((v26 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_25;
        }

        if (v22)
        {
          v23 = [v22 pickingForExternalPlayer];
          if (([v22 showsLibraryContent] & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v23 = 0;
        }

        static ApplicationCapabilities.shared.getter(v39);
        sub_70C54(v39);

        if ((BYTE2(v39[0]) & 1) != 0 || !v23)
        {
          goto LABEL_25;
        }
      }

      else
      {
        static ApplicationCapabilities.shared.getter(v40);
        sub_70C54(v40);
        if (v41 == 2)
        {

LABEL_25:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v35 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_6D820(0, v15[2] + 1, 1);
            v15 = v35;
          }

          v18 = v15[2];
          v17 = v15[3];
          if (v18 >= v17 >> 1)
          {
            sub_6D820((v17 > 1), v18 + 1, 1);
            v15 = v35;
          }

          v15[2] = v18 + 1;
          *(v15 + v18 + 32) = v19;
          goto LABEL_9;
        }

        v27 = sub_ABB3C0();

        if (v27)
        {
          goto LABEL_25;
        }
      }

LABEL_9:
      v16 = &selRef__authenticateReturningError_;
LABEL_10:
      if (!--v13)
      {
        goto LABEL_32;
      }
    }
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_32:
  sub_40AD88(&v42);
  *&v10[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems] = v15;

  v29 = [v10 navigationItem];

  [v29 setLargeTitleDisplayMode:1];
  return v10;
}

uint64_t sub_409324(id a1, unsigned __int8 a2)
{
  if (a2 > 3u)
  {
    goto LABEL_12;
  }

  if (a2 - 1 < 2)
  {
    static ApplicationCapabilities.shared.getter(v9);
    sub_70C54(v9);
    if (v10 == 2)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_ABB3C0();
    }

    return v6 & 1;
  }

  if (a2)
  {
    if (a1)
    {
      MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
      v5 = v4;
      *&v9[0] = 0xD00000000000001DLL;
      *(&v9[0] + 1) = 0x8000000000B4ED40;
      __chkstk_darwin(v4);
      v8[2] = v9;
      v6 = sub_1B39BC(sub_109BB0, v8, v5);

      return v6 & 1;
    }

LABEL_12:
    v6 = 0;
    return v6 & 1;
  }

  if (a1)
  {
    v3 = [a1 pickingForExternalPlayer];
    if (![a1 showsLibraryContent])
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
  }

  static ApplicationCapabilities.shared.getter(v9);
  sub_70C54(v9);
  if (BYTE2(v9[0]))
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 ^ 1;
  }

  return v6 & 1;
}

void sub_409618()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for MediaPickerMenuTableViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v0 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setAlwaysBounceVertical:1];

  v4 = [v1 tableView];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  type metadata accessor for LibraryMenuViewController.Cell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_AB9260();
  [v5 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  v9 = *ApplicationCapabilities.NotificationNames.supportedTabsDidChange.unsafeMutableAddressor();
  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter(v10);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v11;
  *(inited + 40) = v12;

  v13 = *ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter(v14);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v15;
  *(inited + 80) = v16;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v18 = v13;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_40B060, v17);

  v19 = OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_bindings;
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(v1 + v19) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v1 + v19) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  sub_40A7A8();
}

void sub_4098AC()
{
  v0 = sub_AB7C10();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7C50();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_needsVisibleMenuItemsUpdate] & 1) == 0)
    {
      Strong[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_needsVisibleMenuItemsUpdate] = 1;
      v9 = Strong;
      sub_60044();
      v15 = sub_ABA150();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      aBlock[4] = sub_40B068;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_132;
      v13 = _Block_copy(aBlock);
      v14 = v9;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_8FFF0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_36A00(&qword_DF06D0, &unk_DE9C30);
      sub_ABABB0();
      v11 = v13;
      v12 = v15;
      sub_ABA160();
      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
      _Block_release(v11);

      Strong = v12;
    }
  }
}

unint64_t sub_409C08(void *a1)
{
  result = sub_AB37B0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems);
    if (result < *(v4 + 16))
    {
      v5 = *(v4 + result + 32);
      v6 = sub_AB9260();
      isa = sub_AB3770().super.isa;
      v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:isa];

      type metadata accessor for LibraryMenuViewController.Cell();
      v9 = swift_dynamicCastClassUnconditional();
      v10 = sub_AB9260();

      v11 = [objc_opt_self() _systemImageNamed:v10];

      v12 = *&v9[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol];
      *&v9[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol] = v11;
      v13 = v11;

      sub_1F0C44();
      sub_1417AC(v5);
      v14 = sub_1F13DC();
      v15 = sub_AB9260();

      [v14 setText:v15];

      [v9 setAccessoryType:1];
      return v9;
    }
  }

  __break(1u);
  return result;
}

id sub_40A1F0(id a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        if (qword_DE68A8 != -1)
        {
          swift_once();
        }

        v19 = byte_E70F20;
        v20 = qword_E70F28;
        v21 = unk_E70F30;
        v22 = type metadata accessor for JSTabViewController();
        v23 = objc_allocWithZone(v22);
        *&v23[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton] = 0;
        v24 = &v23[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
        *v24 = v19;
        *(v24 + 1) = v20;
        *(v24 + 2) = v21;
        v46.receiver = v23;
        v46.super_class = v22;
        swift_bridgeObjectRetain_n();
        v9 = objc_msgSendSuper2(&v46, "init");
        goto LABEL_23;
      }

      v35 = objc_allocWithZone(type metadata accessor for PlaylistsViewController());
      v26 = sub_48DDCC(0, 0, 0, 0, 0);
    }

    else
    {
      if (a2 == 3)
      {
        if (qword_DE68A0 != -1)
        {
          swift_once();
        }

        v3 = byte_E70F08;
        v4 = qword_E70F10;
        v5 = unk_E70F18;
        v6 = type metadata accessor for JSTabViewController();
        v7 = objc_allocWithZone(v6);
        *&v7[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton] = 0;
        v8 = &v7[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
        *v8 = v3;
        *(v8 + 1) = v4;
        *(v8 + 2) = v5;
        v45.receiver = v7;
        v45.super_class = v6;
        swift_bridgeObjectRetain_n();
        v9 = objc_msgSendSuper2(&v45, "init");
        goto LABEL_23;
      }

      type metadata accessor for SearchLandingViewController();
      v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05688));
      v26 = sub_41D8C0(v33);
    }

LABEL_28:
    v17 = v26;
    goto LABEL_29;
  }

  if (!a2)
  {
    if (a1 && (([a1 alwaysShowSearchBarInLibrary] & 1) != 0 || (MPMediaPickerConfiguration.supportsCatalogContent.getter() & 1) == 0))
    {
      v36 = objc_allocWithZone(type metadata accessor for LibraryViewController());
      v37 = sub_F480C();
      v38 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05690));
      v26 = sub_41DF98(v37);
    }

    else
    {
      v25 = objc_allocWithZone(type metadata accessor for LibraryViewController());
      v26 = sub_F480C();
    }

    goto LABEL_28;
  }

  if (a2 == 1)
  {
    if (qword_DE6D98 != -1)
    {
      swift_once();
    }

    v10 = byte_E0C3B0;
    v12 = qword_E0C3B8;
    v11 = unk_E0C3C0;
    v13 = objc_allocWithZone(type metadata accessor for JSListenNowTabViewController());
    *&v13[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton] = 0;
    v14 = &v13[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
    *v14 = v10;
    *(v14 + 1) = v12;
    *(v14 + 2) = v11;
    v44.receiver = v13;
    v44.super_class = type metadata accessor for JSTabViewController();
    swift_bridgeObjectRetain_n();
    v15 = objc_msgSendSuper2(&v44, "init");
    v16 = sub_AB9260();

    [v15 setTitle:v16];

    v17 = v15;
    v18 = [v17 navigationItem];
    [v18 _setSupportsTwoLineLargeTitles:1];
    goto LABEL_24;
  }

  if (qword_DE6898 != -1)
  {
    swift_once();
  }

  v27 = byte_E70EF0;
  v28 = qword_E70EF8;
  v29 = unk_E70F00;
  v30 = type metadata accessor for JSTabViewController();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton] = 0;
  v32 = &v31[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
  *v32 = v27;
  *(v32 + 1) = v28;
  *(v32 + 2) = v29;
  v43.receiver = v31;
  v43.super_class = v30;
  swift_bridgeObjectRetain_n();
  v9 = objc_msgSendSuper2(&v43, "init");
LABEL_23:
  v17 = v9;
  v18 = sub_AB9260();

  [v17 setTitle:v18];

LABEL_24:
LABEL_29:
  v39 = v17;
  sub_1417AC(a2);
  v40 = sub_AB9260();

  [v39 setTitle:v40];

  v41 = sub_AB9260();

  [v39 setPlayActivityFeatureName:v41];

  return v39;
}

void sub_40A7A8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_needsVisibleMenuItemsUpdate;
  if (v1[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_needsVisibleMenuItemsUpdate] == 1 && [v1 isViewLoaded] && (v1[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_isBatchUpdating] & 1) == 0)
  {
    v32 = OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_isBatchUpdating;
    v1[v2] = 0;
    static ApplicationCapabilities.shared.getter(v37);
    v3 = v38;
    v42 = v38;

    sub_70C54(v37);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      v33 = 0x8000000000B4ED40;
      v6 = _swiftEmptyArrayStorage;
      v7 = &selRef__authenticateReturningError_;
      while (1)
      {
        v11 = *v5++;
        v10 = v11;
        v12 = [v1 v7[334]];
        v13 = UITraitCollection.mediaPickerConfiguration.getter();

        if (v11 > 3)
        {
LABEL_15:

          goto LABEL_10;
        }

        if ((v10 - 1) >= 2)
        {
          if (v10)
          {
            if (!v13)
            {
              goto LABEL_10;
            }

            MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
            v16 = v15;
            v34 = &v31;
            v35[0] = 0xD00000000000001DLL;
            v35[1] = v33;
            __chkstk_darwin(v15);
            *(&v31 - 2) = v35;
            v17 = sub_1B39BC(sub_3040E8, (&v31 - 4), v16);

            if ((v17 & 1) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_25;
          }

          if (v13)
          {
            v14 = [v13 pickingForExternalPlayer];
            if (([v13 showsLibraryContent] & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v14 = 0;
          }

          static ApplicationCapabilities.shared.getter(v39);
          sub_70C54(v39);

          if ((BYTE2(v39[0]) & 1) != 0 || !v14)
          {
            goto LABEL_25;
          }
        }

        else
        {
          static ApplicationCapabilities.shared.getter(v40);
          sub_70C54(v40);
          if (v41 == 2)
          {

LABEL_25:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v36 = v6;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_6D820(0, v6[2] + 1, 1);
              v6 = v36;
            }

            v9 = v6[2];
            v8 = v6[3];
            if (v9 >= v8 >> 1)
            {
              sub_6D820((v8 > 1), v9 + 1, 1);
              v6 = v36;
            }

            v6[2] = v9 + 1;
            *(v6 + v9 + 32) = v10;
            goto LABEL_9;
          }

          v18 = sub_ABB3C0();

          if (v18)
          {
            goto LABEL_25;
          }
        }

LABEL_9:
        v7 = &selRef__authenticateReturningError_;
LABEL_10:
        if (!--v4)
        {
          goto LABEL_32;
        }
      }
    }

    v6 = _swiftEmptyArrayStorage;
LABEL_32:
    sub_40AD88(&v42);
    v20 = *&v1[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems];

    if (sub_12D5F0(v21, v6))
    {
    }

    else
    {
      v1[v32] = 1;
      v22 = [v1 tableView];
      if (v22)
      {
        v23 = v22;
        v35[0] = v20;
        v36 = v6;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05698);
        v25 = sub_36A00(&qword_E056A0, &qword_E05698);
        v26 = sub_40ADF0();
        v27 = Collection<>.compare<A>(with:comparator:)(&v36, 0, 0, v24, v24, v25, v25, v26);
        v28 = swift_allocObject();
        *(v28 + 16) = v1;
        *(v28 + 24) = v6;
        v29 = swift_allocObject();
        *(v29 + 16) = v1;
        v30 = v1;
        UITableView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(v27, sub_40AE84, v28, 0, sub_40AF04, v29, &type metadata for TabIdentifier, v26);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_40ACE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaPickerMenuTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_40AD88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_40ADF0()
{
  result = qword_E056A8;
  if (!qword_E056A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E056A8);
  }

  return result;
}

uint64_t sub_40AE44()
{

  return swift_deallocObject();
}

uint64_t sub_40AE84()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems) = *(v0 + 24);
}

uint64_t sub_40AECC()
{

  return swift_deallocObject();
}

uint64_t sub_40AF04()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_isBatchUpdating);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_isBatchUpdating) = 0;
  if (v2 == 1)
  {
    return sub_40A7A8();
  }

  return result;
}

void sub_40AF40()
{
  v1 = v0;
  v2 = sub_AB37B0();
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems];
  if (v2 >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = *(v3 + v2 + 32);
  v5 = [v0 traitCollection];
  v6 = UITraitCollection.mediaPickerConfiguration.getter();

  v7 = sub_40A1F0(v6, v4);
  v8 = [v1 navigationController];
  [v8 pushViewController:v7 animated:1];
}

uint64_t sub_40B028()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_40B0A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = 0;
  v6 = a1 + 240;
  v71 = _swiftEmptyArrayStorage;
  v72 = a1 + 240;
  do
  {
    v7 = (v6 + 240 * v5);
    v8 = v5;
    while (1)
    {
      if (v8 >= v4)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
      }

      v12 = *(v7 - 72);
      v13 = *(v7 - 40);
      v98 = *(v7 - 56);
      v99 = v13;
      v100 = *(v7 - 24);
      v14 = *(v7 - 136);
      v15 = *(v7 - 104);
      v94 = *(v7 - 120);
      v95 = v15;
      v96 = *(v7 - 88);
      v97 = v12;
      v92 = *(v7 - 152);
      v93 = v14;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_41;
      }

      v16 = *(v7 - 72);
      v17 = *(v7 - 40);
      v82 = *(v7 - 56);
      v83 = v17;
      v18 = *(v7 - 136);
      v19 = *(v7 - 104);
      v78 = *(v7 - 120);
      v79 = v19;
      v20 = *(v7 - 104);
      v21 = *(v7 - 72);
      v80 = *(v7 - 88);
      v81 = v21;
      v22 = *(v7 - 136);
      v76 = *(v7 - 152);
      v77 = v22;
      v23 = *(v7 - 40);
      v74[6] = v82;
      v74[7] = v23;
      v74[2] = v78;
      v74[3] = v20;
      v74[4] = v80;
      v74[5] = v16;
      v25 = *(v7 - 2);
      v24 = *(v7 - 1);
      v26 = *v7;
      LOBYTE(v84) = *(v7 - 24);
      *(&v84 + 1) = v25;
      *&v85 = v24;
      BYTE8(v85) = v26;
      v75 = *(v7 - 24);
      v74[0] = v76;
      v74[1] = v18;
      if (sub_40F03C(v74) == 1)
      {
        break;
      }

      UIScreen.Dimensions.size.getter(v27);
      v9 = v25;
      v10 = v24;
      v11 = v26;
LABEL_5:
      sub_2BA40(v9, v10, v11);
      sub_40F044(&v92, v91);
      sub_40F07C(&v76);
LABEL_6:
      ++v8;
      v7 += 240;
      if (v5 == v4)
      {
        goto LABEL_19;
      }
    }

    UIScreen.Dimensions.size.getter(v27);
    if (!v26)
    {
      v9 = v25;
      v10 = v24;
      v11 = 0;
      goto LABEL_5;
    }

    v30 = *v28;
    v29 = v28[1];
    sub_2BA40(v25, v24, 1);
    sub_40F044(&v92, v91);

    sub_40F07C(&v76);
    if (!v29)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v71 = sub_6B0F0(0, *(v71 + 2) + 1, 1, v71);
    }

    v6 = v72;
    v33 = *(v71 + 2);
    v32 = *(v71 + 3);
    if (v33 >= v32 >> 1)
    {
      v71 = sub_6B0F0((v32 > 1), v33 + 1, 1, v71);
    }

    *(v71 + 2) = v33 + 1;
    v34 = &v71[16 * v33];
    *(v34 + 4) = v30;
    *(v34 + 5) = v29;
  }

  while (v5 != v4);
LABEL_19:
  v35 = objc_opt_self();
  isa = sub_AB9740().super.isa;
  v37 = [v35 predicateForContactsWithIdentifiers:isa];

  sub_40DC5C();
  v38 = sub_40DEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA10);
  v39 = sub_AB9740().super.isa;
  *&v76 = 0;
  v70 = v37;
  v40 = [v38 unifiedContactsMatchingPredicate:v37 keysToFetch:v39 error:&v76];
  v41 = v76;

  if (v40)
  {
    sub_13C80(0, &qword_E05950);
    v73 = sub_AB9760();
  }

  else
  {
    sub_AB3050();

    swift_willThrow();

    v73 = 0;
  }

  if (!v4)
  {
    goto LABEL_39;
  }

  v42 = 0;
  if (v73)
  {
    v43 = v73;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  v44 = a1 + 88;
  v69 = a1 + 88;
  while (2)
  {
    v45 = (v44 + 240 * v42);
    v46 = v42;
    while (2)
    {
      if (v46 >= v4)
      {
        goto LABEL_42;
      }

      v53 = *(v45 + 120);
      v54 = *(v45 + 152);
      v88 = *(v45 + 136);
      v89 = v54;
      v90 = *(v45 + 168);
      v55 = *(v45 + 56);
      v56 = *(v45 + 88);
      v84 = *(v45 + 72);
      v85 = v56;
      v86 = *(v45 + 104);
      v87 = v53;
      v57 = *(v45 - 8);
      v58 = *(v45 + 24);
      v80 = *(v45 + 8);
      v81 = v58;
      v82 = *(v45 + 40);
      v83 = v55;
      v59 = *(v45 - 40);
      v76 = *(v45 - 56);
      v77 = v59;
      v78 = *(v45 - 24);
      v79 = v57;
      v42 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_43;
      }

      v60 = v45[7];
      v98 = v45[6];
      v99 = v60;
      v100 = *(v45 + 128);
      v61 = v45[3];
      v94 = v45[2];
      v95 = v61;
      v62 = v45[5];
      v96 = v45[4];
      v97 = v62;
      v63 = v45[1];
      v92 = *v45;
      v93 = v63;
      if (sub_40F03C(&v92) != 1)
      {
        UIScreen.Dimensions.size.getter(v64);
        v47 = *(v2 + 24);
        v48 = objc_allocWithZone(MPStoreItemMetadata);
        sub_2B990(&v76, v74);
        v49 = sub_AB8FD0().super.isa;
        v50 = [v48 initWithStorePlatformDictionary:v49];

        v51 = [objc_opt_self() activeAccount];
        v52 = [v47 modelObjectWithStoreItemMetadata:v50 userIdentity:v51];

        goto LABEL_29;
      }

      UIScreen.Dimensions.size.getter(v64);
      if (v89 != 1)
      {
        goto LABEL_30;
      }

      v91[4] = v65[4];
      v91[5] = v65[5];
      v91[6] = v65[6];
      v91[7] = v65[7];
      v91[0] = *v65;
      v91[1] = v65[1];
      v91[2] = v65[2];
      v91[3] = v65[3];
      v67 = *(&v76 + 1);
      v66 = v76;
      sub_2B990(&v76, v74);

      v52 = sub_40DF60(v91, v66, v67, v43);

LABEL_29:
      sub_2B9EC(&v76);
      if (!v52)
      {
LABEL_30:
        ++v46;
        v45 += 15;
        if (v42 == v4)
        {
          goto LABEL_39;
        }

        continue;
      }

      break;
    }

    sub_AB9730();
    v44 = v69;
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    if (v42 != v4)
    {
      continue;
    }

    break;
  }

LABEL_39:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_40B74C(uint64_t a1)
{
  v2 = v1;
  v16 = a1;
  v15 = sub_ABA140();
  v3 = *(v15 - 8);
  __chkstk_darwin(v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_ABA100();
  __chkstk_darwin(v6);
  v7 = sub_AB7C50();
  __chkstk_darwin(v7 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 104) = sub_965E8(_swiftEmptyArrayStorage);
  v8 = sub_13C80(0, &qword_DE8ED0);
  v14[1] = "contactKeyDescriptors";
  v14[2] = v8;
  sub_AB7C30();
  v17 = _swiftEmptyArrayStorage;
  sub_11533C(&qword_DED790, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270);
  sub_809E0(&qword_DED7A0, &qword_E01270);
  sub_ABABB0();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *(v1 + 112) = sub_ABA180();
  *(v1 + 120) = 0;
  v9 = [objc_allocWithZone(NSOperationQueue) init];
  v10 = sub_AB9260();
  [v9 setName:v10];

  [v9 setQualityOfService:9];
  v11 = v16;
  [v9 setMaxConcurrentOperationCount:*(v16 + 16)];
  *(v2 + 88) = v11;
  *(v2 + 96) = v9;
  v12 = v9;
  sub_40BA7C(0);

  return v2;
}

uint64_t sub_40BA7C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = *(v1 + 88);
  }

  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v61 = v3 + 56;
  v62 = v3;
  v59 = v1;
  v63 = v8;
  if (v7)
  {
    while (1)
    {
LABEL_11:
      v11 = *(v3 + 48) + 24 * (__clz(__rbit64(v7)) | (v9 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      swift_beginAccess();
      v15 = *(v2 + 104);
      v67 = v14;
      v68 = v13;
      if (!*(v15 + 16))
      {
        swift_endAccess();
        sub_2BA40(v12, v13, v14);
        v65 = 0;
        v66 = 0;
        v64 = -1;
        goto LABEL_18;
      }

      sub_2BA40(v12, v13, v14);
      v16 = sub_2EC170(v12, v13, v14);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = *(v15 + 56) + 24 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      swift_endAccess();
      if (v21)
      {
        v64 = 1;
        v65 = v20;
        sub_9AEC0(v19, v20, 1);
        v66 = v19;

        v14 = v67;
        goto LABEL_17;
      }

LABEL_33:
      v7 &= v7 - 1;
      sub_13CC8(v12, v68, v67);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    swift_endAccess();
    v65 = 0;
    v66 = 0;
    v64 = -1;
LABEL_17:
    v13 = v68;
LABEL_18:
    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    *(v22 + 24) = v12;
    *(v22 + 32) = v13;
    *(v22 + 40) = v14;
    if (v14)
    {
      v23 = objc_allocWithZone(type metadata accessor for SocialOnboardingContactsMatchingRequestOperation());
      sub_2BA40(v12, v13, 1);
      sub_2BA40(v12, v13, 1);

      v24 = sub_304138(v12);
      v25 = swift_allocObject();
      *(v25 + 16) = sub_40FF90;
      *(v25 + 24) = v22;
      *(v25 + 32) = v12;
      *(v25 + 40) = v13;
      *(v25 + 48) = 1;
      queue = *&v24[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
      v26 = swift_allocObject();
      v26[2] = v24;
      v26[3] = sub_40FFA4;
      v26[4] = v25;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_41001C;
      *(v27 + 24) = v26;
      aBlock[4] = sub_2D4D0;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1822E0;
      aBlock[3] = &block_descriptor_75_2;
      v28 = _Block_copy(aBlock);
      sub_2BA40(v12, v68, 1);

      v29 = v24;

      dispatch_sync(queue, v28);

      _Block_release(v28);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_38;
      }

      v2 = v59;
      v14 = v67;
      v13 = v68;
    }

    else
    {
      v31 = swift_allocObject();
      *(v31 + 16) = sub_40FF90;
      *(v31 + 24) = v22;
      *(v31 + 32) = v12;
      *(v31 + 40) = v13;
      *(v31 + 48) = 0;
      v32 = type metadata accessor for SocialOnboardingNetworkFriendsMatchingRequestOperation();
      v33 = objc_allocWithZone(v32);
      *&v33[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_matchedFriends] = 0;
      v34 = &v33[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_networkIdentifier];
      *v34 = v12;
      *(v34 + 1) = v13;
      v35 = &v33[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
      *v35 = sub_410084;
      v35[1] = v31;
      sub_2BA40(v12, v13, 0);
      sub_2BA40(v12, v13, 0);
      sub_2BA40(v12, v13, 0);
      v69.receiver = v33;
      v69.super_class = v32;

      v29 = objc_msgSendSuper2(&v69, "init");
    }

    swift_beginAccess();
    sub_2BA40(v12, v13, v14);
    v36 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v2 + 104);
    v38 = v70;
    *(v2 + 104) = 0x8000000000000000;
    v39 = sub_2EC170(v12, v13, v14);
    v41 = v38[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      goto LABEL_37;
    }

    v45 = v40;
    if (v38[3] >= v44)
    {
      v47 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = v39;
        sub_330500();
        v39 = v57;
      }

      v8 = v63;
      v48 = v70;
      if ((v45 & 1) == 0)
      {
LABEL_26:
        v48[(v39 >> 6) + 8] |= 1 << v39;
        v49 = v48[6] + 24 * v39;
        *v49 = v12;
        *(v49 + 8) = v68;
        *(v49 + 16) = v67;
        v50 = v48[7] + 24 * v39;
        *v50 = v47;
        *(v50 + 8) = v36;
        *(v50 + 16) = 0;
        v51 = v48[2];
        v43 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v43)
        {
          goto LABEL_39;
        }

        v48[2] = v52;
        goto LABEL_32;
      }
    }

    else
    {
      sub_32604C(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_2EC170(v12, v13, v14);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_40;
      }

      v8 = v63;
      v47 = v66;
      v48 = v70;
      if ((v45 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v53 = v48[7] + 24 * v39;
    v54 = *v53;
    v55 = *(v53 + 8);
    v56 = *(v53 + 16);
    *v53 = v47;
    *(v53 + 8) = v36;
    *(v53 + 16) = 0;
    sub_9AF20(v54, v55, v56);
    sub_13CC8(v12, v68, v67);
LABEL_32:
    *(v2 + 104) = v48;
    swift_endAccess();
    [*(v2 + 96) addOperation:v36];

    sub_410028(v47, v65, v64);
    v4 = v61;
    v3 = v62;
    goto LABEL_33;
  }

LABEL_7:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return sub_40CCA0();
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

uint64_t sub_40C158()
{
  [*(v0 + 96) cancelAllOperations];

  sub_17654(*(v0 + 32));
  sub_17654(*(v0 + 48));
  sub_17654(*(v0 + 64));

  return v0;
}

uint64_t sub_40C1C0()
{
  sub_40C158();

  return swift_deallocClassInstance();
}

uint64_t sub_40C218(uint64_t result)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = result;
  if (!v2)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!result || (v3 = result, , v4 = sub_4CA0A4(v2, v3), , (v4 & 1) == 0))
  {
LABEL_6:
    v5 = *(v1 + 32);
    if (v5)
    {
      sub_307CC(*(v1 + 32));

      v5(v6);

      sub_17654(v5);
    }
  }
}

uint64_t sub_40C2EC(uint64_t result)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = result;
  if (v2 != (result & 1))
  {
    if (result)
    {
      v3 = *(v1 + 48);
      if (!v3)
      {
        return result;
      }

      v3(v4);
      v5 = v3;
    }

    else
    {
      v6 = *(v1 + 64);
      if (!v6)
      {
        return result;
      }

      sub_307CC(*(v1 + 64));

      v6(v7);

      v5 = v6;
    }

    return sub_17654(v5);
  }

  return result;
}

uint64_t sub_40C3B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 88);
  if (*(v4 + 16) <= *(a1 + 16) >> 3)
  {

    sub_1C4C74(v4);

    result = a1;
  }

  else
  {

    v5 = sub_1C5494(v4, a1);

    result = v5;
  }

  v7 = 0;
  v8 = result + 56;
  v9 = 1 << *(result + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(result + 56);
  v12 = (v9 + 63) >> 6;
  v45 = result;
  for (i = v2; v11; result = v45)
  {
LABEL_13:
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = *(result + 48) + 24 * (v14 | (v7 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      swift_beginAccess();
      v19 = *(v2 + 104);
      v20 = *(v19 + 16);
      sub_2BA40(v16, v17, v18);
      if (v20)
      {
        v21 = sub_2EC170(v16, v17, v18);
        if (v22)
        {
          break;
        }
      }

      swift_endAccess();
      sub_13CC8(v16, v17, v18);
      result = v45;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v23 = *(v19 + 56) + 24 * v21;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    swift_endAccess();
    v43 = v26;
    v44 = v24;

    if (v26)
    {
      swift_errorRetain();
    }

    else
    {
      [v24 cancel];
    }

    v2 = i;
    swift_beginAccess();
    v27 = sub_2EC170(v16, v17, v18);
    if (v28)
    {
      v39 = v25;
      v40 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(i + 104);
      *(i + 104) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_330500();
      }

      sub_13CC8(*(*(v30 + 48) + 24 * v40), *(*(v30 + 48) + 24 * v40 + 8), *(*(v30 + 48) + 24 * v40 + 16));
      v31 = *(v30 + 56) + 24 * v40;
      v37 = *(v31 + 8);
      v38 = *v31;
      v32 = *(v31 + 16);
      sub_27C268(v40, v30);
      *(i + 104) = v30;
      sub_9AF20(v38, v37, v32);
      v25 = v39;
    }

    swift_endAccess();
    sub_13CC8(v16, v17, v18);
    sub_9AF20(v25, v44, v43);
  }

  while (1)
  {
LABEL_9:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_13;
    }
  }

  if (*(v2 + 16))
  {

    v34 = sub_40F894(v33, v2);

    sub_40C218(v34);
  }

  [*(v2 + 96) setMaxConcurrentOperationCount:{*(*(v2 + 88) + 16), v37, v38}];
  v35 = *(v2 + 88);
  if (*(a1 + 16) <= *(v35 + 16) >> 3)
  {
    v47 = *(v2 + 88);

    sub_1C4C74(a1);
    v36 = v47;
  }

  else
  {

    v36 = sub_1C5494(a1, v35);
  }

  sub_40BA7C(v36);
}

uint64_t sub_40C754(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8)
{
  sub_13C80(0, &qword_DE8ED0);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a6;
  *(v16 + 32) = a7;
  a8 &= 1u;
  *(v16 + 40) = a8;
  *(v16 + 48) = a1;
  *(v16 + 56) = a4;
  *(v16 + 64) = a2;
  *(v16 + 65) = a3;

  sub_2BA40(a6, a7, a8);

  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_410134, v16);
}

uint64_t sub_40C884(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    swift_beginAccess();
    sub_2BA40(a2, a3, a4 & 1);

    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + 104);
    *(v16 + 104) = 0x8000000000000000;
    sub_91774(a5, a6, 1, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
    *(v16 + 104) = v18;
    sub_13CC8(a2, a3, a4 & 1);
    swift_endAccess();
    *(v16 + 24) = a7 & 1;
    *(v16 + 25) = a8 & 1;
    sub_40C9C0(1);
  }

  return result;
}

uint64_t sub_40C9C0(char a1)
{
  v3 = sub_AB7C10();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(v1 + 120);
  *(v1 + 120) = a1;
  if (v10 & 1) == 0 && (a1)
  {
    v14[1] = *(v1 + 112);
    v15 = result;
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_410150;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_88_0;
    v14[0] = _Block_copy(aBlock);

    sub_AB7C30();
    v16 = _swiftEmptyArrayStorage;
    sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_809E0(&qword_DF06D0, &unk_DE9C30);
    sub_ABABB0();
    v13 = v14[0];
    sub_ABA160();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v11, v15);
    _Block_release(v13);
  }

  return result;
}

uint64_t sub_40CCA0()
{
  result = swift_beginAccess();
  v2 = 0;
  v3 = *(v0 + 104);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if ((*(*(v3 + 56) + 24 * (v9 | (v8 << 6)) + 16) & 1) == 0)
    {
      v10 = 1;
      return sub_40C2EC(v10);
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      v10 = 0;
      return sub_40C2EC(v10);
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_40CD70()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_40CDC4()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

BOOL sub_40CE0C()
{
  sub_ABB5C0();
  sub_AB93F0();
  v0 = sub_ABB610();
  sub_ABB5C0();
  sub_AB93F0();
  return v0 == sub_ABB610();
}

uint64_t sub_40CE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void, uint64_t), uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if (!a1 || a2)
  {
    return a3(0, 0, 0, a2);
  }

  sub_2BA40(a5, a6, a7 & 1);
  v12 = sub_40F180(a1, a5, a6, a7 & 1);
  sub_13CC8(a5, a6, a7 & 1);
  v13 = sub_2F3E7C(v12);

  a3(v13, 0, 0, 0);
}

uint64_t sub_40CF94(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t (*a5)(void, void, void), uint64_t a6, void *a7, uint64_t a8, char a9)
{
  if (!a1 || a4)
  {
    return a5(0, 0, 0);
  }

  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  v18 = a9 & 1;
  while (1)
  {
    v19 = v16;
    if (!v13)
    {
      break;
    }

LABEL_11:
    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v21 = (*(result + 48) + ((v16 << 13) | (v20 << 7)));
    v23 = v21[2];
    v22 = v21[3];
    v24 = v21[1];
    v81 = *v21;
    v82 = v24;
    v83 = v23;
    v84 = v22;
    v25 = v21[4];
    v26 = v21[5];
    v27 = v21[7];
    v87 = v21[6];
    v88 = v27;
    v85 = v25;
    v86 = v26;
    v28 = v26;
    if (v26)
    {
      v49 = v82;
      v50 = *(&v85 + 1);
      v51 = *(&v82 + 1);
      v53 = v83;
      v64 = v85;
      v65 = v86;
      v66 = v87;
      v67 = v88;
      v60 = v81;
      v61 = v82;
      v62 = v83;
      v63 = v84;
      sub_41009C(&v60);
      v77 = v66;
      v78 = v67;
      v79 = v68;
      v73 = v62;
      v74 = v63;
      v75 = v64;
      v76 = v65;
      v71 = v60;
      v72 = v61;
      v80 = v18;
      v29 = v84;
      v48 = *(&v83 + 1);
      v30 = *(&v84 + 1);
      swift_bridgeObjectRetain_n();
      sub_2B7BC(&v81, v59);

      sub_2BA40(a7, a8, v18);

      v52 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_6CC50(0, *(v17 + 2) + 1, 1, v17);
      }

      v32 = *(v17 + 2);
      v31 = *(v17 + 3);
      v33 = v32 + 1;
      v34 = a7;
      v35 = a8;
      if (v32 >= v31 >> 1)
      {
        v46 = sub_6CC50((v31 > 1), v32 + 1, 1, v17);
        v33 = v32 + 1;
        v34 = a7;
        v35 = a8;
        v17 = v46;
      }

      result = a1;
      *(v17 + 2) = v33;
      v36 = &v17[240 * v32];
      *(v36 + 4) = v50;
      *(v36 + 5) = v28;
      *(v36 + 6) = v50;
      *(v36 + 7) = v28;
      v36[64] = v49;
      v37 = *(v59 + 3);
      *(v36 + 65) = v59[0];
      *(v36 + 17) = v37;
      *(v36 + 9) = v51;
      *(v36 + 10) = v53;
      *(v36 + 88) = v71;
      v38 = v72;
      v39 = v73;
      v40 = v74;
      *(v36 + 152) = v75;
      *(v36 + 136) = v40;
      *(v36 + 120) = v39;
      *(v36 + 104) = v38;
      v41 = v76;
      v42 = v77;
      v43 = v78;
      v36[216] = v79;
      *(v36 + 200) = v43;
      *(v36 + 184) = v42;
      *(v36 + 168) = v41;
      v44 = *v70;
      *(v36 + 55) = *&v70[3];
      *(v36 + 217) = v44;
      *(v36 + 28) = v34;
      *(v36 + 29) = v35;
      v18 = v52;
      v36[240] = v52;
      v45 = *&v69[3];
      *(v36 + 241) = *v69;
      *(v36 + 61) = v45;
      *(v36 + 31) = v48;
      *(v36 + 32) = v29;
      *(v36 + 33) = v30;
    }
  }

  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      v47 = sub_2F3E7C(v17);

      (a5)(v47, a2 & 1, a3 & 1, 0);
    }

    v13 = *(v10 + 8 * v16);
    ++v19;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_40D2F8()
{
  v1 = *(v0 + 16);
  sub_ABB5C0();
  if (v1)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
  }

  return sub_ABB610();
}

uint64_t sub_40D37C()
{
  if (*(v0 + 16))
  {
    sub_ABB5D0(1uLL);
    return sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);

    return sub_AB93F0();
  }
}

Swift::Int sub_40D404()
{
  v1 = *(v0 + 16);
  sub_ABB5C0();
  if (v1)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
  }

  return sub_ABB610();
}

uint64_t sub_40D484(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      sub_13C80(0, &qword_DFA720);
      return sub_ABA790() & 1;
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return 1;
  }

  return sub_ABB3C0();
}

uint64_t sub_40D53C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_40D594();
  }

  return result;
}

uint64_t sub_40D594()
{
  v1 = v0;
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C50();
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7CC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 112);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = sub_AB7CF0();
  result = (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v42 = v5;
  v43 = v6;
  v52 = sub_965E8(_swiftEmptyArrayStorage);
  sub_13C80(0, &qword_DE8ED0);
  v16 = sub_ABA150();
  v17 = swift_allocObject();
  *(v17 + 16) = &v52;
  *(v17 + 24) = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_410190;
  *(v18 + 24) = v17;
  v50 = sub_36C08;
  v51 = v18;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_1822E0;
  v49 = &block_descriptor_98_0;
  v19 = _Block_copy(&aBlock);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v40 = v3;
    v41 = v2;
    v21 = v52;
    v22 = v52 + 64;
    v23 = 1 << *(v52 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v52 + 64);
    v26 = (v23 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v27 = 0;
    v28 = &_swiftEmptySetSingleton;
    if (!v25)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v29 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        result = *(*(v21 + 56) + 24 * (v29 | (v27 << 6)));
        if (result)
        {
          break;
        }

        if (!v25)
        {
          goto LABEL_8;
        }
      }

      result = sub_338770(v31, v28);
      v28 = result;
    }

    while (v25);
LABEL_8:
    while (1)
    {
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v30 >= v26)
      {

        v32 = sub_ABA150();
        v33 = swift_allocObject();
        swift_weakInit();
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *(v34 + 24) = v28;
        v50 = sub_4101D8;
        v51 = v34;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_1B5EB4;
        v49 = &block_descriptor_105_0;
        v35 = _Block_copy(&aBlock);

        v36 = v44;
        sub_AB7C30();
        aBlock = _swiftEmptyArrayStorage;
        sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
        sub_809E0(&qword_DF06D0, &unk_DE9C30);
        v37 = v41;
        v38 = v42;
        sub_ABABB0();
        sub_ABA160();
        (*(v40 + 8))(v38, v37);
        (*(v45 + 8))(v36, v43);
        _Block_release(v35);
      }

      v25 = *(v22 + 8 * v30);
      ++v27;
      if (v25)
      {
        v27 = v30;
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_40DB90(void *a1, uint64_t a2)
{
  swift_beginAccess();
  *a1 = *(a2 + 104);

  *(a2 + 120) = 0;
  return result;
}