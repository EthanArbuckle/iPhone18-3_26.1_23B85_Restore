uint64_t sub_14AA84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E18);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  isa = sub_AB4DF0().super.super.isa;
  v12 = type metadata accessor for SongCell();
  v18.receiver = v1;
  v18.super_class = v12;
  objc_msgSendSuper2(&v18, "_bridgedUpdateConfigurationUsingState:", isa);

  sub_ABA2C0();
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem) == 1)
  {
    v13 = sub_AB4F50();
    v14 = *(*(v13 - 8) + 48);
    if (!v14(v10, 1, v13))
    {
      v15 = *HI.Color.prominentBackgroundColor.unsafeMutableAddressor();
      sub_AB4EF0();
    }

    if (!v14(v10, 1, v13))
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_AB51F0();
      v16 = sub_AB51E0();
      (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
      sub_AB4F20();
    }
  }

  sub_15F84(v10, v8, &unk_DFC300);
  sub_ABA2D0();
  return sub_12E1C(v10, &unk_DFC300);
}

id sub_14AD18(void *a1)
{
  v13 = a1;
  v1 = sub_AB4E30();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v6 _bridgedConfigurationState];
    sub_AB4E00();

    v8 = sub_AB4E20();
    (*(v2 + 8))(v4, v1);

    v9 = 0.22;
    if (v8)
    {
      v9 = 0.15;
    }

    v10 = [v13 colorWithAlphaComponent:{v9, v13}];

    return v10;
  }

  else
  {
    v12 = v13;

    return v12;
  }
}

id sub_14AF9C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___favoriteSizingView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___favoriteSizingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___favoriteSizingView);
  }

  else
  {
    if (qword_DE6A70 != -1)
    {
      swift_once();
    }

    v4 = [objc_allocWithZone(UIImageView) initWithImage:qword_E71438];
    v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
    [v5 scaledValueForValue:8.0];
    v7 = v6;

    v8 = [objc_opt_self() configurationWithPointSize:7 weight:v7];
    [v4 setPreferredSymbolConfiguration:v8];

    v9 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_14B0E0()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite) == 1)
  {
    v11 = sub_200954();
    [v11 setHidden:0];
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle);
    v2 = v1 >> 13;
    v3 = (v1 & 0xFFFE) == 40960;
    if (v2 != 5)
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v2 == 4;
    }

    else
    {
      v4 = 1;
    }

    v5 = v4 || v3;
    v6 = sub_200954();
    v11 = v6;
    if (*(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_popularity + 8))
    {
      v5 = 1;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_popularity);
      v8 = [objc_opt_self() standardUserDefaults];
      sub_F7790();
      v10 = v9;

      if (v7 < v10)
      {
        v5 = 1;
      }

      v6 = v11;
    }

    [v6 setHidden:v5];
  }
}

void sub_14B200()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite) == 1)
  {
    if (qword_DE6A70 != -1)
    {
      swift_once();
    }

    v1 = qword_E71438;
    v2 = objc_allocWithZone(UIFontMetrics);
    v3 = v1;
    v4 = [v2 initForTextStyle:UIFontTextStyleLargeTitle];
    [v4 scaledValueForValue:8.0];
    v6 = v5;

    v7 = [objc_opt_self() configurationWithPointSize:7 weight:v6];
    v8 = 0;
  }

  else
  {
    v9 = sub_AB9260();
    v10 = [objc_opt_self() systemImageNamed:v9];

    v11 = objc_allocWithZone(UIFontMetrics);
    v3 = v10;
    v12 = [v11 initForTextStyle:UIFontTextStyleLargeTitle];
    [v12 scaledValueForValue:6.0];
    v14 = v13;

    v15 = [objc_opt_self() configurationWithPointSize:7 weight:v14];
    v16 = objc_allocWithZone(UIColor);
    v22[4] = sub_14B520;
    v22[5] = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_119878;
    v22[3] = &block_descriptor_44;
    v17 = _Block_copy(v22);
    v7 = v15;
    v18 = [v16 initWithDynamicProvider:v17];
    _Block_release(v17);

    v8 = v18;
  }

  v19 = sub_200954();
  [v19 setContentMode:4];

  v20 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator;
  [*(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator) setImage:v3];

  v21 = *(v0 + v20);
  [v21 setPreferredSymbolConfiguration:v7];

  [*(v0 + v20) setTintColor:v8];
  sub_14B0E0();
}

id sub_14B520(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  if (v1 == &dword_0 + 1)
  {
    v3 = 0.235294118;
    v4 = 0.262745098;
  }

  else
  {
    v3 = 0.921568627;
    v4 = 0.960784314;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:0.5];
}

void sub_14B5C8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_13C80(0, &qword_DE6EE0);
  v4 = UIFontTextStyleBody;
  v5 = sub_ABA5A0();

  v6 = UIFont.monospacedDigits()();
  *a3 = v6;
}

id sub_14B658(char a1, char a2)
{
  if (a1)
  {
    result = *HI.Color.prominentTextColor.unsafeMutableAddressor();
    if (a2)
    {
      v4 = result;
      UIInterfaceGetContentDisabledAlpha();
      v5 = [v4 colorWithAlphaComponent:?];

      return v5;
    }
  }

  else
  {
    if (a2)
    {
      if (qword_DE6CA0 != -1)
      {
        swift_once();
      }

      v6 = qword_E718E0;
    }

    else
    {
      if (qword_DE6C98 != -1)
      {
        swift_once();
      }

      v6 = qword_E718D8;
    }

    return v6;
  }

  return result;
}

id sub_14B738(char a1, char a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = [objc_opt_self() tintColor];
      UIInterfaceGetContentDisabledAlpha();
      v3 = [v2 colorWithAlphaComponent:?];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a2)
    {
      if (qword_DE6CA0 != -1)
      {
        swift_once();
      }

      v3 = qword_E718E0;
    }

    else
    {
      if (qword_DE6C88 != -1)
      {
        swift_once();
      }

      v3 = qword_E718C8;
    }

    v4 = v3;
  }

  return v3;
}

void sub_14B928()
{

  sub_2F1C8(*(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder), *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 8), *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 16), *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 24));

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___favoriteSizingView);
}

id sub_14BAC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SongCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SongCell()
{
  result = qword_DF1E00;
  if (!qword_DF1E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SongCell.LayoutStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FFB)
  {
    goto LABEL_17;
  }

  if (a2 + 49157 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49157 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49157;
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

      return (*a1 | (v4 << 16)) - 49157;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49157;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 13) | (8 * ((*a1 >> 2) & 0x780 | (*a1 >> 1)))) ^ 0x3FFF;
  if (v6 >= 0x3FFA)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for SongCell.LayoutStyle(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49157 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49157 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFA)
  {
    v6 = ((a2 - 16379) >> 16) + 1;
    *result = a2 - 16379;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_14BF3C(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 13;
  v3 = (v1 & 1 | (2 * ((v1 >> 8) & 1))) + 5;
  if (v2 <= 4)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

_WORD *sub_14BF70(_WORD *result, unsigned int a2)
{
  if (a2 < 5)
  {
    *result = *result & 0x101 | (a2 << 13);
  }

  else
  {
    *result = ((a2 - 5) << 7) & 0x100 | (a2 - 5) & 1 | 0xA000;
  }

  return result;
}

void *sub_14BFEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_14C01C(int a1, int a2)
{
  v2 = a1 >> 13;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        if ((a2 & 0xE000) != 0x8000)
        {
          return 0;
        }

        return (a2 ^ a1 ^ 1) & 1;
      }

      if (a1 == 40960)
      {
        if (a2 != 40960)
        {
          return 0;
        }
      }

      else if (a2 != 40961)
      {
        return 0;
      }

      return 1;
    }

    if ((a2 & 0xE000) == 0x6000)
    {
      return (a2 ^ a1 ^ 1) & 1;
    }

    return 0;
  }

  if (!(a1 >> 13))
  {
    if (a2 >= 0x2000u)
    {
      return 0;
    }

    return (a2 ^ a1 ^ 1) & 1;
  }

  if (v2 == 1)
  {
    if ((a2 & 0xE000) != 0x2000)
    {
      return 0;
    }

    return (a2 ^ a1 ^ 1) & 1;
  }

  if ((a2 & 0xE000) != 0x4000)
  {
    return 0;
  }

  if ((a2 ^ a1))
  {
    v4 = 0;
  }

  else
  {
    v4 = ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }

  return v4 & 1;
}

double sub_14C0F8@<D0>(void *a1@<X0>, unsigned __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  v8 = v7;
  v9 = a2 >> 13;
  if (v9 > 2)
  {
    if (v9 - 4 < 2)
    {
      *(v7 + 16) = xmmword_AFB140;
      *(v7 + 32) = xmmword_AFB150;
      v15 = [objc_opt_self() defaultMetrics];
      v16 = sub_ABA310();
      __chkstk_darwin(v16);
      sub_AB9EF0();
      v18 = v17;

      *(v6 + 16) = v18;
      *(v6 + 24) = v18;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!(a2 >> 13))
  {
    *(v7 + 16) = xmmword_AFB140;
    *(v7 + 32) = xmmword_AFB150;
    v20 = [objc_opt_self() defaultMetrics];
    v21 = sub_ABA310();
    __chkstk_darwin(v21);
    sub_AB9EF0();
    v23 = v22;

    *(v6 + 16) = v23;
    *(v6 + 24) = v23;
    if ((a2 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_149620(a1, v8, v6);
    goto LABEL_11;
  }

  if (v9 == 1)
  {
LABEL_8:
    v19 = *&UIEdgeInsetsZero.bottom;
    *(v7 + 16) = *&UIEdgeInsetsZero.top;
    *(v7 + 32) = v19;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    goto LABEL_11;
  }

  *(v7 + 16) = xmmword_AFB140;
  *(v7 + 32) = xmmword_AFB150;
  v10 = objc_opt_self();
  v11 = [v10 defaultMetrics];
  v12 = sub_ABA310();
  __chkstk_darwin(v12);
  sub_AB9EF0();
  v14 = v13;
  if (a2)
  {

    v11 = [v10 defaultMetrics];
    v12 = sub_ABA310();
    __chkstk_darwin(v12);
    sub_AB9EF0();
  }

  v27 = v13;

  *(v6 + 16) = v14;
  *(v6 + 24) = v27;
  if ((a2 & 0x100) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  swift_beginAccess();
  v29 = *(v6 + 16);
  swift_beginAccess();
  v24 = *(v8 + 32);
  v25 = *(v8 + 40);
  v28 = *(v8 + 16);

  result = *&v29;
  *a3 = v29;
  *(a3 + 16) = v28;
  *(a3 + 32) = v24;
  *(a3 + 40) = v25;
  return result;
}

id sub_14C520@<X0>(uint64_t a1@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);
  v2 = sub_ABA560();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v3 = qword_E718C8;
  v4 = objc_opt_self();
  v5 = v3;
  result = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_14C5F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);
  v2 = sub_ABA580();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  v50 = v3;
  *&v118[0] = v3;
  *(&v118[0] + 1) = v6;
  v118[1] = xmmword_AF7C20;
  v119 = 0;
  v120 = 0;
  v121 = v2;
  v122 = 1;
  v51 = 1;
  v123 = xmmword_AF8290;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v44 = TextStackView.Component.init(identifier:labelProperties:)(0x6D754E6B63617274, 0xEB00000000726562, v118);
  v7 = v5;
  v45 = v6;
  v43 = v6;
  v46 = v2;
  v42 = v2;
  sub_2F118(v118, v112);
  v8 = sub_ABA560();
  v9 = [v4 clearColor];
  v41 = v7;
  v10 = v9;
  v11 = v8;
  if (a1)
  {
    v12 = [a1 preferredContentSizeCategory];
    v13 = sub_ABA320();

    v14 = 3;
    if ((v13 & 1) == 0)
    {
      v14 = 1;
    }

    v51 = v14;
  }

  *&v112[0] = v50;
  *(&v112[0] + 1) = v10;
  v31 = v10;
  v112[1] = xmmword_AF7C20;
  v113 = 0;
  v114 = 0;
  v48 = v11;
  v115 = v11;
  v116 = v51;
  v117 = xmmword_AF8290;
  swift_allocObject();
  v40 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v112);
  sub_2F118(v112, &v104);
  sub_14C520(&v82);
  v15 = v84;
  v16 = v87;
  v104 = v82;
  v17 = v82;
  v18 = v82;
  v105 = v83;
  v19 = v83;
  v36 = v84;
  v37 = v83;
  v106 = v84;
  v107 = v85;
  v20 = v85;
  v34 = v86;
  v35 = v85;
  v108 = v86;
  v21 = v86;
  v109 = v87;
  v33 = v87;
  v110 = 1;
  v111 = xmmword_AF7C30;
  swift_allocObject();
  v39 = TextStackView.Component.init(identifier:labelProperties:)(0x614E747369747261, 0xEA0000000000656DLL, &v104);
  v96 = v18;
  v97 = v19;
  v98 = v15;
  v99 = v20;
  v100 = v21;
  v101 = v16;
  v102 = 1;
  v103 = xmmword_AF7C30;
  swift_allocObject();
  v38 = TextStackView.Component.init(identifier:labelProperties:)(0x7469546D75626C61, 0xEA0000000000656CLL, &v96);
  v22 = v82;
  v23 = v84;
  v24 = v85;
  v25 = v86;
  v26 = v87;
  v88 = v82;
  v89 = 1;
  v90 = v84;
  v91 = v85;
  v92 = v86;
  v93 = v87;
  v94 = 1;
  v95 = xmmword_AF7C30;
  swift_allocObject();
  v32 = TextStackView.Component.init(identifier:labelProperties:)(0x6E6F697461727564, 0xEC00000074786554, &v88);
  sub_109A00(&v82, v75);
  sub_2F118(&v104, v75);
  sub_2F118(&v96, v75);
  v30 = *(&v22 + 1);
  v27 = v26;
  v28 = v22;
  sub_2F118(&v88, v75);

  v52 = v22;
  v53 = 1;
  v54 = v23;
  v55 = v24;
  v56 = v25;
  v57 = v26;
  v58 = 1;
  v59 = xmmword_AF7C30;
  sub_2F174(&v52);

  v60 = v17;
  v61 = v37;
  v62 = v36;
  v63 = v35;
  v64 = v34;
  v65 = v33;
  v66 = 1;
  v67 = xmmword_AF7C30;
  sub_2F174(&v60);
  v68[0] = v50;
  v68[1] = v31;
  v69 = xmmword_AF7C20;
  v70 = 0;
  v71 = 0;
  v72 = v48;
  v73 = v51;
  v74 = xmmword_AF8290;
  sub_2F174(v68);
  v75[0] = v50;
  v75[1] = v45;
  v76 = xmmword_AF7C20;
  v78 = 0;
  v77 = 0;
  v79 = v46;
  v80 = 1;
  v81 = xmmword_AF8290;
  result = sub_2F174(v75);
  *a2 = v44;
  a2[1] = v40;
  a2[2] = v39;
  a2[3] = v38;
  a2[4] = v32;
  return result;
}

double sub_14CB80(void *a1, unsigned __int16 a2)
{
  v3 = a2 & 0xE000;
  sub_14C0F8(a1, a2, &v19);
  v5 = v19;
  v4 = v20;
  v6 = v21;
  v7 = v22;
  v8 = v23;
  v9 = v24;
  if (((v3 >> 13) | 2) == 3)
  {
    v10 = [objc_opt_self() defaultMetrics];
    v11 = sub_ABA310();
    __chkstk_darwin(v11);
    sub_AB9EF0();
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [a1 preferredContentSizeCategory];
  v15 = sub_ABA360();

  if (v15)
  {
    type metadata accessor for CGSize(0);
    v19 = v5;
    v20 = v4;
    if (sub_AB38D0() & 1) != 0 || (type metadata accessor for UIEdgeInsets(0), v19 = v6, v20 = v7, v21 = v8, v22 = v9, (sub_AB38D0()))
    {
      sub_AB9EC0();
      v17 = v4 + v16;
      if (v13 <= v17)
      {
        return v17;
      }
    }
  }

  return v13;
}

double sub_14CD64(void *a1, unsigned __int16 a2, double a3)
{
  v6 = a1;
  sub_14C5F4(a1, &v18);
  sub_14CB80(v6, a2);
  v7 = [v6 horizontalSizeClass] == &dword_0 + 1 || a3 < 465.0;
  if (v7 || (v8 = [v6 preferredContentSizeCategory], v9 = sub_ABA320(), v8, (v9 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_AF7C50;
    v11 = v20;
    *(v10 + 32) = v19;
    *(v10 + 40) = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_AF82B0;
    *(v10 + 32) = v19;
  }

  sub_2F48A4(v10, v6, 0, 0);

  v12 = [v6 preferredContentSizeCategory];
  v13 = sub_ABA320();

  if ((v13 & 1) != 0 && ((1 << (a2 >> 13)) & 0x35) != 0)
  {
    v14 = [v6 preferredContentSizeCategory];
    v15 = sub_ABA330();

    if ((v15 & 1) != 0 && [v6 horizontalSizeClass] == &dword_0 + 1)
    {
      sub_14C0F8(v6, a2, v17);
    }
  }

  return a3;
}

void sub_14D000()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_duration) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView) = 0;
  v4 = v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_popularity;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle) = 0;
  v6 = v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_maximumTrackNumberForSizing;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_durationTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView) = 0;
  v8 = v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents;
  sub_14C5F4(0, v10);
  v9 = v10[1];
  *v8 = v10[0];
  *(v8 + 16) = v9;
  *(v8 + 32) = v11;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___favoriteSizingView) = 0;
  sub_ABAFD0();
  __break(1u);
}

double sub_14D1D8(void *a1, char a2)
{
  v4 = [a1 traitCollection];
  [a1 music_inheritedLayoutInsets];
  sub_AB9E60();
  v5 = [objc_opt_self() defaultMetrics];
  v6 = sub_ABA310();
  sub_AB9EF0();

  if ((a2 & 1) != 0 && ([a1 music_inheritedLayoutInsets], objc_msgSend(v4, "horizontalSizeClass") == &dword_0 + 1))
  {
    sub_1447F0();
  }

  else
  {
  }

  return 0.0;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_14D364()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_14D3FC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineText];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_subtitle];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_descriptionText];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_badgeView] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
  sub_14FEC8(v61);
  v14 = v61[1];
  *v13 = v61[0];
  *(v13 + 1) = v14;
  *(v13 + 4) = v62;
  *&v4[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineTextDrawingView] = 0;
  v60.receiver = v4;
  v60.super_class = type metadata accessor for CustomRoomMusicVideoCell();
  v15 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v16 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  v21 = v16[4];
  v22 = v16[5];
  v56 = v22;
  v57 = v21;
  v23 = &v15[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v58 = *v23;
  v54 = *(v23 + 2);
  v55 = *(v23 + 1);
  v53 = *(v23 + 3);
  *v23 = v17;
  *(v23 + 1) = v18;
  *(v23 + 2) = v19;
  *(v23 + 3) = v20;
  *(v23 + 4) = v21;
  *(v23 + 5) = v22;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  sub_2F1C8(v58, v55, v54, v53);
  v59 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  v32 = *&v15[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v33 = *(v32 + 168);
  v63[0] = *(v32 + 152);
  v63[1] = v33;
  v63[2] = *(v32 + 184);
  *(v32 + 152) = v17;
  *(v32 + 160) = v18;
  *(v32 + 168) = v19;
  *(v32 + 176) = v20;
  *(v32 + 184) = v57;
  *(v32 + 192) = v56;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  sub_75948(v63);
  sub_12E1C(v63, &unk_DF8690);

  v42 = *&v15[v59];
  v43 = *(v42 + 144);
  *(v42 + 144) = 2;
  if (v43 != 2)
  {
    v44 = *(v42 + 112);

    v45 = [v44 image];
    sub_788B8(v45);
  }

  v46 = *&v15[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  v47 = &v15[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
  result = swift_beginAccess();
  v49 = *(v47 + 4);
  if (!(v49 >> 62))
  {
    v50 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8));
    if (v50)
    {
      goto LABEL_5;
    }

LABEL_13:

    return v15;
  }

  result = sub_ABB060();
  v50 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v50 >= 1)
  {

    for (i = 0; i != v50; ++i)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v52 = sub_36003C(i, v49);
      }

      else
      {
        v52 = *(v49 + 8 * i + 32);
      }

      TextStackView.add(_:)(v52);
    }

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_14D848(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents;
    swift_beginAccess();
    v10 = *&v2[v9];

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

uint64_t sub_14D980(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents;
      swift_beginAccess();
      v5 = *&v2[v4];

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_14DAA0(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 1);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

uint64_t sub_14DBDC(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
      swift_beginAccess();
      v5 = *(v4 + 1);

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_14DD00(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 2);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

uint64_t sub_14DE3C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
      swift_beginAccess();
      v5 = *(v4 + 2);

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_14DF60(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_14DFF4(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_descriptionText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_descriptionText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_descriptionText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 3);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

uint64_t sub_14E130(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_descriptionText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_descriptionText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
      swift_beginAccess();
      v5 = *(v4 + 3);

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_14E228()
{
  v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_14E270(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v4[v5] = a1;
  v27 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] != (a1 & 1))
  {
    v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = a1 & 1;
    v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v7 = *&v4[v6];
    if (v7 >> 62)
    {
      v8 = sub_ABB060();
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    v26 = v3;
    v9 = v8 - 1;
    if (v8 < 1)
    {
      __break(1u);
      return;
    }

    v25 = v1;
    v24 = v4;

    v10 = 0;
    if ((v7 & 0xC000000000000001) == 0)
    {
      goto LABEL_14;
    }

LABEL_6:
    v11 = *(sub_36003C(v10, v7) + 256);
    if (v11)
    {
LABEL_7:
      v12 = v11;
      if (([v12 isHidden] & 1) == 0)
      {
        v13 = v4[v27];
        v14 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
        swift_beginAccess();
        v15 = v12[v14];
        v12[v14] = v13;
        if (v13 != v15)
        {
          v16 = 1.0;
          if (v13)
          {
            UIInterfaceGetContentDisabledAlpha();
          }

          [v12 setAlpha:v16];
        }
      }

      if (v9 != v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      while (1)
      {

        if (v9 == v10)
        {
          break;
        }

LABEL_16:
        ++v10;
        if ((v7 & 0xC000000000000001) != 0)
        {
          goto LABEL_6;
        }

LABEL_14:
        v17 = *(v7 + 8 * v10 + 32);

        v11 = *(v17 + 256);
        if (v11)
        {
          goto LABEL_7;
        }
      }
    }

    v1 = v25;
    v3 = v26;
  }

LABEL_19:
  v18 = *(v1 + OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineTextDrawingView);
  if (v18)
  {
    v19 = *(v1 + v3);
    v20 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
    swift_beginAccess();
    v21 = v18[v20];
    v18[v20] = v19;
    if (v19 != v21)
    {
      v22 = v18;
      v23 = 1.0;
      if (v19)
      {
        UIInterfaceGetContentDisabledAlpha();
      }

      [v22 setAlpha:{v23, v24}];
    }
  }
}

void (*sub_14E504(uint64_t **a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v3[7] = v1;
  v3[8] = VerticalLockupCollectionViewCell.isDisabled.modify(v3);
  return sub_14E578;
}

void sub_14E578(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 64))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = v3[7];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineTextDrawingView);
    if (v5)
    {
      v6 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled;
      swift_beginAccess();
      v7 = *(v4 + v6);
      v8 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
      swift_beginAccess();
      v9 = v5[v8];
      v5[v8] = v7;
      if (v7 != v9)
      {
        v10 = v5;
        v11 = 1.0;
        if (v7)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v10 setAlpha:v11];
      }
    }
  }

  free(v3);
}

uint64_t sub_14E664(void *a1)
{
  v2 = [a1 horizontalSizeClass];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  if (v2 == &dword_0 + 1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF82E0;
    v4 = v1[2];
    *(v3 + 32) = v1[1];
    *(v3 + 40) = v4;
    *(v3 + 48) = v1[3];
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF93E0;
    v5 = v1[1];
    *(v3 + 32) = *v1;
    *(v3 + 40) = v5;
    v7 = v1[2];
    v6 = v1[3];
    *(v3 + 48) = v7;
    *(v3 + 56) = v6;
  }

  return v3;
}

void sub_14E7D4()
{
  v1 = v0;
  v78.receiver = v0;
  v78.super_class = type metadata accessor for CustomRoomMusicVideoCell();
  objc_msgSendSuper2(&v78, "layoutSubviews");
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = &v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  [v1 effectiveUserInterfaceLayoutDirection];
  v67 = UIEdgeInsetsInsetRect(v5, v7, v9, v11, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_14EEC8();
  v21 = &v1[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineText];
  v22 = *&v1[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineText + 8];
  v23 = *&v1[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineText] & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  if (v23)
  {
    v24 = v3 == &dword_0 + 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  v26 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v27 = *&v1[v26];
  if (v27)
  {
    v28 = v25 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = &selRef__authenticateReturningError_;
  if (!v28)
  {
    v66 = v2;
    v35 = OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineTextDrawingView;
    v36 = *&v1[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineTextDrawingView];
    if (v36)
    {

      v37 = v36;
    }

    else
    {
      type metadata accessor for TextDrawing.View();
      v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v39 = [v38 init];
      v40 = *&v1[v35];
      *&v1[v35] = v39;
      v37 = v39;

      v36 = 0;
    }

    v65 = v3;
    v41 = v36;
    v42 = [v37 isDescendantOfView:v1];

    if ((v42 & 1) == 0)
    {
      [v1 addSubview:v37];
    }

    v43 = OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents;
    swift_beginAccess();
    v44 = *&v1[v43];
    swift_beginAccess();
    v45 = v44[3];
    v46 = v44[4];
    v47 = v44[6];
    v81[3] = v44[5];
    v81[4] = v47;
    v81[1] = v45;
    v81[2] = v46;
    v81[0] = v44[2];
    v49 = *v21;
    v48 = v21[1];
    v50 = v27[4];
    v51 = *(v27 + 5);
    v52 = *(v27 + 8);
    v53 = *(v27 + 9);
    v54 = *(v27 + 10);
    v55 = *(v27 + 11);
    sub_2F118(v81, v80);

    v56 = v51;
    sub_108594(v49, v48, v81, v56, v52, v53, v54, v55, v79, v18, v20, v50);
    v73 = v79[4];
    v74 = v79[5];
    v75 = v79[6];
    v76 = v79[7];
    v69 = v79[0];
    v70 = v79[1];
    v71 = v79[2];
    v72 = v79[3];

    v77[4] = v73;
    v77[5] = v74;
    v77[6] = v75;
    v77[7] = v76;
    v77[0] = v69;
    v77[1] = v70;
    v77[2] = v71;
    v77[3] = v72;
    UIScreen.Dimensions.size.getter(*&v71);
    v80[4] = v73;
    v80[5] = v74;
    v80[6] = v75;
    v80[7] = v76;
    v80[0] = v69;
    v80[1] = v70;
    v80[2] = v71;
    v80[3] = v72;
    sub_109B04(v79, v68);
    TextDrawing.View.textDrawingContext.setter(v80);
    v82.origin.x = v67;
    v82.origin.y = v16;
    v82.size.width = v18;
    v82.size.height = v20;
    CGRectGetMinY(v82);
    v83.origin.y = v16;
    v83.origin.x = v67;
    v83.size.width = v18;
    v83.size.height = v20;
    CGRectGetMinX(v83);
    sub_ABA490();
    v29 = &selRef__authenticateReturningError_;
    [v37 setFrame:?];
    sub_109AB0(v79);

    sub_2F174(v81);

    v31 = sub_76368(0, 0, 1);
    v33 = v57;
    v2 = v66;
    v3 = v65;
LABEL_24:
    v58 = OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents;
    swift_beginAccess();
    v59 = *&v1[v58];
    swift_beginAccess();
    v34 = *(v59 + 96) + *(v59 + 104);
    goto LABEL_25;
  }

  v30 = *&v1[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineTextDrawingView];
  if (v30)
  {
    [v30 removeFromSuperview];
  }

  v31 = sub_76368(0, 0, 1);
  v33 = v32;
  v34 = 0.0;
  if (v25)
  {
    goto LABEL_24;
  }

LABEL_25:
  sub_ABA490();
  sub_76B28(v60, v61, v62, v63);
  if (v3 == &dword_0 + 1)
  {
    v84.origin.x = 0.0;
    v84.origin.y = v34;
    v84.size.width = v31;
    v84.size.height = v33;
    CGRectGetMaxY(v84);
  }

  else
  {
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, 0, v77, v9);
    v85.origin.x = 0.0;
    v85.origin.y = v34;
    v85.size.width = v31;
    v85.size.height = v33;
    CGRectGetMaxX(v85);
  }

  v64 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  sub_ABA490();
  [v64 v29[262]];
}

void sub_14EEC8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = &v0[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
  swift_beginAccess();
  sub_14F090(v2);
  swift_endAccess();

  sub_14F2F4();
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
  v5 = *(v3 + 4);
  v6 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  TextStackView.removeAll()();
  if (!(v5 >> 62))
  {
    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:

    v10 = *&v1[v4];
    v11 = [v1 traitCollection];
    v12 = [v11 horizontalSizeClass];

    LOBYTE(v11) = v12 != &dword_0 + 1;
    v13 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    v10[v13] = v11;

    return;
  }

  v7 = sub_ABB060();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_36003C(i, v5);
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
      }

      TextStackView.add(_:)(v9);
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_14F090(void *a1)
{
  v2 = v1;
  v4 = [a1 horizontalSizeClass];
  v5 = *v1;
  sub_14F8E0(v4, v36);
  swift_beginAccess();
  v7 = v5[3];
  v6 = v5[4];
  v8 = v5[6];
  v40[3] = v5[5];
  v40[4] = v8;
  v40[1] = v7;
  v40[2] = v6;
  v40[0] = v5[2];
  v9 = v36[4];
  v5[5] = v36[3];
  v5[6] = v9;
  v10 = v36[1];
  v5[2] = v36[0];
  v5[3] = v10;
  v5[4] = v36[2];
  sub_2F118(v36, v43);
  sub_2F174(v40);
  sub_2EB2A8();
  sub_2F174(v36);
  v11 = v1[1];
  sub_14FB3C(v4, v37);
  swift_beginAccess();
  v13 = v11[3];
  v12 = v11[4];
  v14 = v11[6];
  v41[3] = v11[5];
  v41[4] = v14;
  v41[1] = v13;
  v41[2] = v12;
  v41[0] = v11[2];
  v15 = v37[4];
  v11[5] = v37[3];
  v11[6] = v15;
  v16 = v37[1];
  v11[2] = v37[0];
  v11[3] = v16;
  v11[4] = v37[2];
  sub_2F118(v37, v43);
  sub_2F174(v41);
  sub_2EB2A8();
  sub_2F174(v37);
  v17 = v1[2];
  sub_14FC68(v4, v38);
  swift_beginAccess();
  v19 = v17[3];
  v18 = v17[4];
  v20 = v17[6];
  v42[3] = v17[5];
  v42[4] = v20;
  v42[1] = v19;
  v42[2] = v18;
  v42[0] = v17[2];
  v21 = v38[4];
  v17[5] = v38[3];
  v17[6] = v21;
  v22 = v38[1];
  v17[2] = v38[0];
  v17[3] = v22;
  v17[4] = v38[2];
  sub_2F118(v38, v43);
  sub_2F174(v42);
  sub_2EB2A8();
  sub_2F174(v38);
  v23 = v1[3];
  sub_14FD9C(v4, v39);
  swift_beginAccess();
  v25 = v23[3];
  v24 = v23[4];
  v26 = v23[6];
  v43[3] = v23[5];
  v43[4] = v26;
  v43[1] = v25;
  v43[2] = v24;
  v43[0] = v23[2];
  v27 = v39[4];
  v23[5] = v39[3];
  v23[6] = v27;
  v28 = v39[1];
  v23[2] = v39[0];
  v23[3] = v28;
  v23[4] = v39[2];
  sub_2F118(v39, v34);
  sub_2F174(v43);
  sub_2EB2A8();
  sub_2F174(v39);
  v29 = v2[4];
  *&v30 = v5;
  *(&v30 + 1) = v11;
  *&v31 = v17;
  *(&v31 + 1) = v23;
  v34[0] = v30;
  v34[1] = v31;
  v35 = v29;
  v32 = sub_14E664(a1);

  v2[4] = v32;
  return result;
}

void sub_14F2F4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];
  [v1 bounds];
  if (v3 == &dword_0 + 1)
  {
    Width = CGRectGetWidth(*&v4);
    [v2 displayScale];
    sub_AB3A00();
    Height = v9;
  }

  else
  {
    Height = CGRectGetHeight(*&v4);
    [v2 displayScale];
    sub_AB3A00();
    Width = v11;
  }

  type metadata accessor for CGSize(0);
  v12 = &v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkImageSize];
  if (sub_AB38D0())
  {
    *v12 = Width;
    v12[1] = Height;
    v13 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
    v14 = *(v13 + 80);
    v15 = *(v13 + 88);
    *(v13 + 80) = Width;
    *(v13 + 88) = Height;
    sub_75614(v14, v15);
  }
}

void sub_14F43C()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineTextDrawingView);
}

id sub_14F520()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomRoomMusicVideoCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CustomRoomMusicVideoCell()
{
  result = qword_DF1E68;
  if (!qword_DF1E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_14F75C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_badgeView);
  v2 = v1;
  return v1;
}

double sub_14F78C(void *a1, double a2, double a3, CGFloat a4)
{
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    v8 = a4 - a2 - a3;
  }

  else
  {
    sub_45B2C4(a1, 0.0, 0.0, a4, 0.0);
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, &v11, a4);
    [a1 displayScale];
    v13.origin.x = 0.0;
    v13.origin.y = 0.0;
    v13.size.height = 0.0;
    v13.size.width = a4;
    CGRectGetWidth(v13);
    sub_AB3A00();
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, v12, a4);
    [a1 displayScale];
    sub_AB3A00();
    v8 = v9;
  }

  [a1 displayScale];
  sub_AB3A00();
  return v8;
}

int8x16_t sub_14F8E0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_89F60();
  v4 = sub_ABA580();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v5 = qword_E718C8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = xmmword_AF7C20;
  *(a2 + 32) = xmmword_AF82C0;
  *(a2 + 48) = v4;
  *(a2 + 56) = 1;
  v9 = vdup_n_s32(a1 == 1);
  v10.i64[0] = v9.u32[0];
  v10.i64[1] = v9.u32[1];
  result = vbslq_s8(vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL)), xmmword_AFFF40, xmmword_AF9C80);
  *(a2 + 64) = result;
  return result;
}

double sub_14F9EC(void *a1, double a2, double a3, double a4)
{
  if ([a1 horizontalSizeClass] != &dword_0 + 1)
  {
    v8 = a2 + a3 + a4;
    sub_45B2C4(a1, 0.0, 0.0, v8, 0.0);
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, &v11, v8);
    [a1 displayScale];
    v13.origin.x = 0.0;
    v13.origin.y = 0.0;
    v13.size.height = 0.0;
    v13.size.width = v8;
    CGRectGetWidth(v13);
    sub_AB3A00();
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, v12, v8);
    [a1 displayScale];
    sub_AB3A00();
    a2 = v9;
  }

  [a1 displayScale];
  sub_AB3A00();
  return a2;
}

double sub_14FB3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    sub_89F60();
    v3 = sub_ABA560();
    v4 = qword_DE6C98;
    v5 = 30.0;
  }

  else
  {
    v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle];
    v4 = qword_DE6C98;
    v5 = 40.0;
  }

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_E718D8;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  *a2 = v8;
  *(a2 + 8) = v9;
  result = 0.0;
  *(a2 + 16) = xmmword_AF7C20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v3;
  *(a2 + 56) = 2;
  *(a2 + 64) = v5;
  *(a2 + 72) = 0;
  return result;
}

double sub_14FC68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    sub_89F60();
    v3 = sub_ABA560();
    v4 = qword_DE6C88;
    v5 = 8.0;
    v6 = 26.0;
  }

  else
  {
    v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle];
    v4 = qword_DE6C88;
    v5 = 0.0;
    v6 = 35.0;
  }

  if (v4 != -1)
  {
    swift_once();
  }

  v7 = qword_E718C8;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  *a2 = v9;
  *(a2 + 8) = v10;
  result = 0.0;
  *(a2 + 16) = xmmword_AF7C20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v3;
  *(a2 + 56) = 1;
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

double sub_14FD9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    sub_89F60();
    v3 = sub_ABA560();
    v4 = qword_DE6C88;
    v5 = 24.0;
  }

  else
  {
    v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    v4 = qword_DE6C88;
    v5 = 32.0;
  }

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_E718C8;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  *a2 = v8;
  *(a2 + 8) = v9;
  result = 0.0;
  *(a2 + 16) = xmmword_AF7C20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v3;
  *(a2 + 56) = 2;
  *(a2 + 64) = v5;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_14FEC8@<X0>(uint64_t *a1@<X8>)
{
  sub_14F8E0(1, v8);
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v2 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616548, 0xE800000000000000, v8);
  sub_2F118(v8, v11);
  sub_14FB3C(1, v9);
  swift_allocObject();
  v3 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746954, 0xE500000000000000, v9);
  sub_2F118(v9, v11);

  sub_14FC68(1, v10);
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627553, 0xE800000000000000, v10);
  sub_2F118(v10, v11);

  sub_14FD9C(1, v11);
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x7470697263736544, 0xEB000000006E6F69, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF82E0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;

  sub_2F174(v10);
  sub_2F174(v9);
  result = sub_2F174(v8);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return result;
}

void sub_1500AC()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineText);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_descriptionText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_badgeView) = 0;
  v5 = v0 + OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents;
  sub_14FEC8(v7);
  v6 = v7[1];
  *v5 = v7[0];
  *(v5 + 16) = v6;
  *(v5 + 32) = v8;
  *(v0 + OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_headlineTextDrawingView) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_150190()
{
  if (!*(v0 + 176))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    *(v0 + 216) = v1;
    *(v0 + 224) = v2;
    *(v0 + 232) = v3;
    *(v0 + 240) = v4;
    *(v0 + 184) = v1;
    *(v0 + 192) = v2;
    *(v0 + 200) = v3;
    *(v0 + 208) = v4;
    v5 = [objc_opt_self() displayLinkWithTarget:v0 selector:"updateForDisplayLink"];
    v6 = *(v0 + 176);
    *(v0 + 176) = v5;
    v8 = v5;

    *(v0 + 160) = CACurrentMediaTime();
    *(v0 + 168) = 0;
    v7 = [objc_opt_self() mainRunLoop];
    [v8 addToRunLoop:v7 forMode:NSRunLoopCommonModes];

    sub_150294();
  }
}

void sub_150294()
{
  if ((*(v0 + 168) & 1) == 0)
  {
    v1 = v0;
    v2 = *(v0 + 176);
    if (v2)
    {
      v3 = *(v0 + 160);
      v4 = v2;
      v5 = fmin((CACurrentMediaTime() - v3) / *(v0 + 144), 1.0);
      if (v5 < 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v5;
      }

      v7 = [*(v0 + 24) traitCollection];
      [v7 displayScale];

      *&v8 = v6;
      [*(v0 + 152) _solveForInput:v8];
      v48 = *(v0 + 120);
      sub_AB3A00();
      v10 = v9;
      sub_AB3A00();
      v12 = v11;
      sub_AB3A00();
      v14 = v13;
      sub_AB3A00();
      v16 = v15;
      v17 = *(v0 + 184);
      v18 = *(v0 + 192);
      v19 = *(v0 + 200);
      v20 = *(v0 + 208);
      *(v0 + 184) = v10;
      *(v0 + 192) = v12;
      *(v0 + 200) = v14;
      *(v0 + 208) = v16;
      sub_370BFC(v17, v18, v19, v20, v10, v12, v14, v16);
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);
      v23 = *(v0 + 232);
      v24 = *(v0 + 240);
      *(v0 + 216) = v10;
      *(v0 + 224) = v12;
      *(v0 + 232) = v14;
      *(v0 + 240) = v16;
      sub_370CC8(&dword_0 + 2, v21, v22, v23, v24, v10, v12, v14, v16);
      vertical = UIOffsetZero.vertical;
      sub_AB3A00();
      v27 = v26;
      sub_AB3A00();
      v28 = *(v0 + 248);
      v29 = *(v0 + 256);
      *(v0 + 248) = v27;
      *(v0 + 256) = v30;
      v31 = v30 - v29;
      v32 = (*(v0 + 16) + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions);
      v33 = *v32;
      v34 = v32[1];
      v35 = v27 - v28 + *v32;
      v36 = v31 + v34;
      *v32 = v35;
      v32[1] = v36;
      if (v33 != v35 || v34 != v36)
      {
        sub_375B00();
      }

      sub_471A4();
      if (sub_AB38F0())
      {
        v38 = *(v0 + 128);

        v38(v39);

        v40 = *(v0 + 248);
        v41 = *(v0 + 256);
        *(v0 + 248) = UIOffsetZero.horizontal;
        *(v0 + 256) = vertical;
        v42 = UIOffsetZero.horizontal - v40;
        v44 = *v32;
        v43 = v32[1];
        v45 = v42 + *v32;
        v46 = vertical - v41 + v43;
        *v32 = v45;
        v32[1] = v46;
        if (v44 != v45 || v43 != v46)
        {
          sub_375B00();
        }

        [v4 invalidate];
        v47 = *(v0 + 176);
        *(v1 + 176) = 0;

        v4 = v47;
      }
    }
  }
}

uint64_t sub_1505BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_150638(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_150658(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1506B4()
{
  v1 = v0;
  v2 = sub_AB2DC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = [v1 lastModifiedDateComponents];
  if (v12)
  {
    v13 = v12;
    sub_AB2D70();

    (*(v3 + 56))(v9, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v9, 1, 1, v2);
  }

  sub_D321C(v9, v11);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_1508CC(v11);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_1508CC(v11);
    v15 = DateComponents.lastUpdatedDateString.getter();
    (*(v3 + 8))(v5, v2);
    return v15;
  }
}

uint64_t sub_1508CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_150934(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v98 - v11;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v14 = (v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTitle];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerSubtitle];
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headline];
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_subtitle];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonTitle];
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonHandler];
  *v23 = 0;
  v23[1] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isHeaderRowCell] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_artworkVideoAspectRatio] = 0;
  v24 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoArtworkSize];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoLooperDidChangeHandler];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoLooperDidFailHandler];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isPlayingDidChangeHandler];
  *v27 = 0;
  v27[1] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isVideoArtworkAllowed] = 0;
  v28 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextStackView;
  type metadata accessor for TextStackView();
  *&v5[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextComponents];
  *v29 = sub_154960();
  v29[1] = v30;
  v29[2] = v31;
  v32 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_textComponents];
  *v32 = sub_154C70();
  v32[1] = v33;
  v32[2] = v34;
  v32[3] = v35;
  v36 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonSizingTextComponent;
  *&v5[v36] = sub_155118();
  v37 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerView;
  *&v5[v37] = [objc_allocWithZone(UIView) init];
  *&v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell____lazy_storage___topHairlineView] = 0;
  v38 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButton;
  *&v5[v38] = sub_154148();
  v100 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryCalendarButton;
  SymbolButton.Configuration.init()(v16);
  variable initialization expression of SymbolButton.Configuration.symbol(&v103);
  v39 = v104;
  v112 = v105;
  v111 = v103;
  sub_12E1C(&v111, &unk_DEE6F0);
  v40 = UIFontTextStyleBody;
  sub_1559A4(&v112);
  v41 = *(v16 + 5);
  v113[4] = *(v16 + 4);
  v113[5] = v41;
  v113[6] = *(v16 + 6);
  v114 = *(v16 + 14);
  v42 = *(v16 + 1);
  v113[0] = *v16;
  v113[1] = v42;
  v43 = *(v16 + 3);
  v113[2] = *(v16 + 2);
  v113[3] = v43;
  sub_155A00(v113);
  *v16 = xmmword_B00130;
  *(v16 + 2) = v39;
  *(v16 + 3) = v40;
  *(v16 + 2) = v106;
  *(v16 + 6) = 4;
  *(v16 + 56) = v107;
  *(v16 + 72) = v108;
  *(v16 + 88) = v109;
  *(v16 + 104) = v110;
  v44 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
  v45 = v44[3];
  v46 = *(v16 + 25);
  v47 = *(v16 + 26);
  v48 = *(v44 + 1);
  *(v16 + 25) = *v44;
  *(v16 + 13) = v48;
  *(v16 + 28) = v45;
  v49 = v48;

  v50 = v49;
  sub_3F9D0(v46, v47);
  sub_ABA670();
  v51 = sub_ABA680();
  (*(*(v51 - 8) + 56))(v12, 0, 1, v51);
  sub_3FA14(v12, &v16[v14[11]]);
  *&v16[v14[15]] = vdupq_n_s64(0x4043000000000000uLL);
  v52 = &v16[v14[18]];
  v53 = *(v52 + 2);
  v54 = UIContentSizeCategoryAccessibilityLarge;

  *(v52 + 2) = UIContentSizeCategoryAccessibilityLarge;
  v99 = type metadata accessor for SymbolButton(0);
  v55 = objc_allocWithZone(v99);
  v56 = SymbolButton.init(configuration:handler:)(v16, 0, 0);
  v57 = AccessibilityIdentifier.calendarButton.unsafeMutableAddressor();
  v58 = *v57;
  v59 = v57[1];

  v60 = UIView.withAccessibilityIdentifier(_:)(v58, v59);

  *&v5[v100] = v60;
  v61 = &v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_textStackViewInsets];
  *v61 = xmmword_B00140;
  v61[1] = xmmword_AF8270;
  v102.receiver = v5;
  v102.super_class = ObjectType;
  v62 = objc_msgSendSuper2(&v102, "initWithFrame:", a1, a2, a3, a4);
  v63 = [v62 traitCollection];
  LODWORD(v49) = [v63 horizontalSizeClass] == &dword_0 + 1;

  sub_45C3A4(dbl_B00150[v49]);
  *&v62[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_artworkVideoAspectRatio] = 0x3FFC71C71C71C71CLL;
  v64 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextStackView;
  v65 = *&v62[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextStackView];
  v66 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  result = swift_beginAccess();
  v65[v66] = 0;
  v68 = *&v62[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextComponents + 16];
  if (v68 >> 62)
  {
    result = sub_ABB060();
    v69 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v69 = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8));
    if (!v69)
    {
      goto LABEL_10;
    }
  }

  if (v69 < 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v70 = v65;

  for (i = 0; i != v69; ++i)
  {
    if ((v68 & 0xC000000000000001) != 0)
    {
      v72 = sub_36003C(i, v68);
    }

    else
    {
      v72 = *(v68 + 8 * i + 32);
    }

    TextStackView.add(_:)(v72);
  }

LABEL_10:
  v73 = [v62 traitCollection];

  v74 = [v73 horizontalSizeClass];
  v75 = &v62[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_textComponents];
  swift_beginAccess();
  v76 = *(v75 + 1);
  if (v74 == &dword_0 + 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = 2;
  }

  swift_beginAccess();
  *(v76 + 88) = v77;
  sub_2EB2A8();
  result = swift_endAccess();
  v78 = *&v62[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v79 = *(v75 + 3);
  if (!(v79 >> 62))
  {
    v80 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
    if (v80)
    {
      goto LABEL_15;
    }

LABEL_22:
    v84 = v62;
    v85 = [v84 contentView];
    v86 = sub_151290();
    [v85 addSubview:v86];

    v87 = [v84 contentView];
    v88 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerView;
    [v87 addSubview:*&v84[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerView]];

    [*&v84[v88] addSubview:*&v62[v64]];
    v89 = [v84 contentView];
    v90 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButton;
    [v89 addSubview:*&v84[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButton]];

    v91 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryCalendarButton;
    [*&v84[v88] addSubview:*&v84[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryCalendarButton]];
    v92 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v93 = *&v84[v90];
    v94 = sub_13C80(0, &qword_DF13D0);
    v95 = v93;

    ControlEventHandling<>.on(_:handler:)(64, sub_155A54, v92, v94);

    v96 = *&v84[v91];

    v97 = v96;
    ControlEventHandling<>.on(_:handler:)(64, sub_155A54, v92, v99);

    sub_151408();

    return v84;
  }

  result = sub_ABB060();
  v80 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v80 >= 1)
  {
    v81 = v78;

    for (j = 0; j != v80; ++j)
    {
      if ((v79 & 0xC000000000000001) != 0)
      {
        v83 = sub_36003C(j, v79);
      }

      else
      {
        v83 = *(v79 + 8 * j + 32);
      }

      TextStackView.add(_:)(v83);
    }

    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_151290()
{
  v1 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell____lazy_storage___topHairlineView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell____lazy_storage___topHairlineView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell____lazy_storage___topHairlineView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    [v4 setHidden:(*(v0 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible) & 1) == 0];
    if (qword_DE6C70 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_E718B0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_151370(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonHandler);
    if (v4)
    {

      v4(v3, a1);
      sub_17654(v4);
    }
  }
}

void sub_151408()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "bounds");
  Width = CGRectGetWidth(v14);
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  v5 = Width - v4[1] - v4[3];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "bounds");
  CGRectGetWidth(v15);
  v6 = [v1 traitCollection];
  [v6 displayScale];

  sub_AB3A00();
  v7 = &v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoArtworkSize];
  *v7 = v5;
  *(v7 + 1) = v8;
  type metadata accessor for CGSize(0);
  if (sub_AB38D0())
  {
    v9 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
    v10 = *(v9 + 96);
    v11 = *(v9 + 104);
    *(v9 + 96) = *v7;
    sub_756F8(v10, v11);
  }
}

void sub_151590(uint64_t a1)
{
  v2 = v1;
  v35.receiver = v2;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = [v4 horizontalSizeClass] == &dword_0 + 1;

  sub_45C3A4(dbl_B00150[v5]);
  v6 = [v2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  v8 = &v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_textComponents];
  swift_beginAccess();
  v9 = *(v8 + 1);
  if (v7 == &dword_0 + 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  swift_beginAccess();
  *(v9 + 88) = v10;
  sub_2EB2A8();
  swift_endAccess();
  v11 = *(v8 + 3);
  v12 = *&v2[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  TextStackView.removeAll()();
  if (v11 >> 62)
  {
    v13 = sub_ABB060();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = sub_36003C(i, v11);
    }

    else
    {
      v15 = *(v11 + 8 * i + 32);
    }

    TextStackView.add(_:)(v15);
  }

LABEL_13:

  v16 = *&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryCalendarButton];
  v17 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout;
  if (v2[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout])
  {
    v18 = 0;
  }

  else
  {
    v19 = [v2 traitCollection];
    v20 = [v19 horizontalSizeClass];

    v18 = v20 != &dword_0 + 1;
  }

  [v16 setHidden:v18];
  if (v2[v17])
  {
    v21 = 1;
  }

  else
  {
    v22 = [v2 traitCollection];
    v23 = [v22 horizontalSizeClass];

    v21 = v23 == &dword_0 + 1;
  }

  (*(&stru_1F8.flags + (swift_isaMask & *v16)))(v21, 0);
  v24 = *&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButton];
  if (v2[v17])
  {
    v25 = 1;
  }

  else
  {
    v26 = [v2 traitCollection];
    v27 = [v26 horizontalSizeClass];

    v25 = v27 == &dword_0 + 1;
  }

  [v24 setHidden:v25];
  if (v2[v17])
  {
    v28 = 0;
  }

  else
  {
    v29 = [v2 traitCollection];
    v30 = [v29 horizontalSizeClass];

    v28 = v30 != &dword_0 + 1;
  }

  [v24 setEnabled:v28];
  v31 = [v2 traitCollection];
  v32 = [v31 horizontalSizeClass];

  if (v32 == &dword_0 + 2 && v2[v17] == 1)
  {
    v33 = v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isHeaderRowCell] ^ 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = sub_151290();
  [v34 setHidden:v33 & 1 | ((v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible] & 1) == 0)];
}

uint64_t sub_151A2C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_151B0C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerSubtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerSubtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_151BF0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headline] != result || *&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headline + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_textComponents;
      swift_beginAccess();
      v5 = *&v2[v4];

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_151CE4(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_textComponents];
      swift_beginAccess();
      v5 = *(v4 + 1);

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_151DDC(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_textComponents];
      swift_beginAccess();
      v5 = *(v4 + 2);

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void sub_151ED4(void *a1)
{
  ObjectType = swift_getObjectType();
  [v1 effectiveUserInterfaceLayoutDirection];
  v4 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout;
  if ((v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout] & 1) != 0 || (v5 = [v1 traitCollection], v6 = objc_msgSend(v5, "horizontalSizeClass"), v5, v6 == &dword_0 + 1))
  {
    v7 = *&v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = *&v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryCalendarButton];
    [v16 sizeThatFits:{v12, v14}];
    v18 = v17;
    v45.origin.x = v9;
    v45.origin.y = v11;
    v45.size.width = v13;
    v45.size.height = v15;
    CGRectGetMaxX(v45);
    [a1 displayScale];
    v41 = v18;
    sub_ABA470();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    sub_ABA490();
    [v16 setFrame:v41];
    v46.origin.x = v20;
    v46.origin.y = v22;
    v46.size.width = v24;
    v46.size.height = v26;
    CGRectGetWidth(v46);
    if ((v1[v4] & 1) == 0)
    {
      v27 = [v1 traitCollection];
      [v27 horizontalSizeClass];
    }

    sub_AB9EA0();
    if ((v1[v4] & 1) == 0)
    {
      v28 = [v1 traitCollection];
      [v28 horizontalSizeClass];
    }

    sub_AB9EA0();
    v42 = *&v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextStackView];
    [v7 bounds];
    sub_ABA490();
    [v42 setFrame:?];
  }

  else
  {
    v29 = *&v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButton];
    v43.receiver = v1;
    v43.super_class = ObjectType;
    objc_msgSendSuper2(&v43, "bounds");
    [v29 sizeThatFits:{v30, v31}];
    v32 = [v1 contentView];
    [v32 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v47.origin.x = v34;
    v47.origin.y = v36;
    v47.size.width = v38;
    v47.size.height = v40;
    CGRectGetMinX(v47);
    v48.origin.x = v34;
    v48.origin.y = v36;
    v48.size.width = v38;
    v48.size.height = v40;
    CGRectGetMaxY(v48);
    sub_ABA490();
    [v29 setFrame:?];
    [*&v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerView] bounds];
    [*&v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextStackView] setFrame:?];
  }
}

void sub_1522F0(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible];
  v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible] = a1;
  if (v3 != (a1 & 1))
  {
    v4 = [v1 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == &dword_0 + 2 && v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout] == 1)
    {
      v6 = v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isHeaderRowCell] ^ 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_151290();
    [v7 setHidden:v6 & 1 | ((v1[v2] & 1) == 0)];
  }
}

uint64_t sub_1523E8(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v4[v5] = a1;
  v34 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  v36 = v4;
  if (v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] != (a1 & 1))
  {
    v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = a1 & 1;
    v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v7 = *&v4[v6];
    if (v7 >> 62)
    {
      result = sub_ABB060();
      if (!result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      if (!result)
      {
        goto LABEL_19;
      }
    }

    v9 = result - 1;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_43;
    }

    v33 = v3;
    v32 = v4;

    v10 = 0;
    if ((v7 & 0xC000000000000001) == 0)
    {
      goto LABEL_14;
    }

LABEL_6:
    v11 = *(sub_36003C(v10, v7) + 256);
    if (v11)
    {
LABEL_7:
      v12 = v11;
      if (([v12 isHidden] & 1) == 0)
      {
        v13 = v36[v34];
        v14 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
        swift_beginAccess();
        v15 = v12[v14];
        v12[v14] = v13;
        if (v13 != v15)
        {
          v16 = 1.0;
          if (v13)
          {
            UIInterfaceGetContentDisabledAlpha();
          }

          [v12 setAlpha:v16];
        }
      }

      if (v9 != v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      while (1)
      {

        if (v9 == v10)
        {
          break;
        }

LABEL_16:
        ++v10;
        if ((v7 & 0xC000000000000001) != 0)
        {
          goto LABEL_6;
        }

LABEL_14:
        v17 = *(v7 + 8 * v10 + 32);

        v11 = *(v17 + 256);
        if (v11)
        {
          goto LABEL_7;
        }
      }
    }

    v3 = v33;
  }

LABEL_19:
  v18 = *(v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextStackView);
  v19 = *(v1 + v3);
  v20 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  result = swift_beginAccess();
  v18[v20] = v19;
  v37 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v19 == v18[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
  {
    return result;
  }

  v18[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v19;
  v21 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v22 = *&v18[v21];
  if (v22 >> 62)
  {
    result = sub_ABB060();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  v23 = result - 1;
  if (result < 1)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v35 = v18;

  v24 = 0;
  if ((v22 & 0xC000000000000001) == 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  v25 = *(sub_36003C(v24, v22) + 256);
  if (v25)
  {
LABEL_25:
    v26 = v25;
    if (([v26 isHidden] & 1) == 0)
    {
      v27 = v18[v37];
      v28 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
      swift_beginAccess();
      v29 = v26[v28];
      v26[v28] = v27;
      if (v27 != v29)
      {
        v30 = 1.0;
        if (v27)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v26 setAlpha:{v30, v32}];
      }
    }

    if (v23 != v24)
    {
      goto LABEL_34;
    }
  }

  else
  {
    while (1)
    {

      if (v23 == v24)
      {
        break;
      }

LABEL_34:
      ++v24;
      if ((v22 & 0xC000000000000001) != 0)
      {
        goto LABEL_24;
      }

LABEL_32:
      v31 = *(v22 + 8 * v24 + 32);

      v25 = *(v31 + 256);
      if (v25)
      {
        goto LABEL_25;
      }
    }
  }
}

void (*sub_1527BC(uint64_t **a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  v3[14] = VerticalLockupCollectionViewCell.isDisabled.modify(v3);
  return sub_152830;
}

void sub_152830(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 112))(*a1, 0);
  if (a2)
  {
    goto LABEL_20;
  }

  v4 = v3[13];
  v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextStackView);
  v6 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled;
  swift_beginAccess();
  v7 = *(v4 + v6);
  v8 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v5[v8] = v7;
  v22 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  v23 = v5;
  if (v7 == v5[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
  {
    goto LABEL_20;
  }

  v5[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v7;
  v9 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v10 = *&v5[v9];
  if (!(v10 >> 62))
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  v11 = sub_ABB060();
  if (!v11)
  {
LABEL_20:

    free(v3);
    return;
  }

LABEL_5:
  v12 = v11 - 1;
  if (v11 >= 1)
  {
    v21 = v5;

    v13 = 0;
    if ((v10 & 0xC000000000000001) == 0)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v14 = *(sub_36003C(v13, v10) + 256);
      if (v14)
      {
LABEL_10:
        v16 = v14;
        if (([v16 isHidden] & 1) == 0)
        {
          v17 = v23[v22];
          v18 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v19 = v16[v18];
          v16[v18] = v17;
          if (v17 != v19)
          {
            v20 = 1.0;
            if (v17)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v16 setAlpha:v20];
          }
        }
      }

      while (1)
      {

        if (v12 == v13)
        {

          goto LABEL_20;
        }

        ++v13;
        if ((v10 & 0xC000000000000001) != 0)
        {
          break;
        }

LABEL_9:
        v15 = *(v10 + 8 * v13 + 32);

        v14 = *(v15 + 256);
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }
  }

  __break(1u);
}

double sub_152A70()
{
  v1 = v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets;
  swift_beginAccess();
  return *v1;
}

void sub_152AC0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  type metadata accessor for UIEdgeInsets(0);
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  if (sub_AB38D0())
  {
    v11 = *(v9 + 1);
    *v10 = *v9;
    *(v10 + 1) = v11;
    sub_35D498();
    [v4 setNeedsLayout];
  }

  if (sub_AB38D0())
  {
    sub_151408();
  }
}

void (*sub_152BEC(uint64_t *a1))(double **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = (v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets);
  swift_beginAccess();
  v6 = v5[1];
  *v4 = *v5;
  v4[1] = v6;
  return sub_152C88;
}

void sub_152C88(double **a1)
{
  v1 = *a1;
  sub_152AC0(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

id sub_152CCC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryCalendarButton];
  v3 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout;
  if (v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    v4 = v6 != &dword_0 + 1;
  }

  [v2 setHidden:v4];
  if (v1[v3])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v1 traitCollection];
    v9 = [v8 horizontalSizeClass];

    v7 = v9 == &dword_0 + 1;
  }

  (*(&stru_1F8.flags + (swift_isaMask & *v2)))(v7, 0);
  v10 = *&v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButton];
  if (v1[v3])
  {
    v11 = 1;
  }

  else
  {
    v12 = [v1 traitCollection];
    v13 = [v12 horizontalSizeClass];

    v11 = v13 == &dword_0 + 1;
  }

  [v10 setHidden:v11];
  if (v1[v3])
  {
    v14 = 0;
  }

  else
  {
    v15 = [v1 traitCollection];
    v16 = [v15 horizontalSizeClass];

    v14 = v16 != &dword_0 + 1;
  }

  return [v10 setEnabled:v14];
}

void sub_152EA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoLooperDidChangeHandler];
    if (v4)
    {
      sub_307CC(*&Strong[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoLooperDidChangeHandler]);

      v4(a1);
      sub_17654(v4);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    if (v5[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isVideoArtworkAllowed] == 1 && *(*&v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 128))
    {
      v6 = v5;
      v7 = [*(*&v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 128) player];

      if (v7)
      {
LABEL_13:

        return;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
      return;
    }

    v7 = v8;
    sub_3953C();
    goto LABEL_13;
  }
}

void sub_152FFC(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isVideoArtworkAllowed;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isVideoArtworkAllowed);
  v4 = a1 & 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isVideoArtworkAllowed) = a1;
  if (v3 != (a1 & 1))
  {
    v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
    v6 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
    *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = v4;
    sub_76070(v6);
    if ((*(v1 + v2) & 1) != 0 && (v7 = *(v5 + 128)) != 0 && (v8 = [v7 player]) != 0)
    {
    }

    else
    {

      sub_3953C();
    }
  }
}

id sub_1530D8()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isVideoArtworkAllowed) != 1)
  {
    return 0;
  }

  result = *(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 128);
  if (result)
  {
    return [result player];
  }

  return result;
}

void sub_153268(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  ObjectType = swift_getObjectType();
  v26.receiver = v9;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v25.receiver = v9;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, *a2, a3, a4, a5, a6);
  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  Width = CGRectGetWidth(v27);
  v23.receiver = v9;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, *a1);
  CGRectGetWidth(v28);
  if (sub_AB38D0())
  {
    sub_151408();
  }
}

void sub_153378()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v78 = sub_ABA620();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v76 - v5;
  v87.receiver = v1;
  v87.super_class = ObjectType;
  objc_msgSendSuper2(&v87, "layoutSubviews");
  v7 = [v1 contentView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v1 traitCollection];
  [v16 displayScale];
  v18 = v17;
  [v1 effectiveUserInterfaceLayoutDirection];
  v86 = v18;
  v19 = sub_151290();
  [v19 setFrame:{v9, v11, v13, 1.0 / v18}];

  v21 = sub_2F48A4(v20, v16, 0, 0);

  [*&v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerView] setFrame:{v9, v11, v13, v21}];
  sub_151ED4(v16);
  v88.origin.x = v9;
  v88.origin.y = v11;
  v88.size.width = v13;
  v88.size.height = v15;
  Height = CGRectGetHeight(v88);
  v89.origin.x = v9;
  v89.origin.y = v11;
  v89.size.width = v13;
  v89.size.height = v21;
  v23 = Height - CGRectGetHeight(v89);
  v24 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout;
  if ((v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout] & 1) == 0)
  {
    v25 = [v1 traitCollection];
    v26 = [v25 horizontalSizeClass];

    if (v26 != &dword_0 + 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF82B0;
      *(inited + 32) = *&v1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonSizingTextComponent];

      v28 = sub_2F48A4(inited, v16, 0, 0);
      swift_setDeallocating();
      swift_arrayDestroy();
      v23 = v23 - v28;
    }
  }

  v90.origin.x = v9;
  v90.origin.y = v11;
  v90.size.width = v13;
  v90.size.height = v15;
  MinX = CGRectGetMinX(v90);
  v91.origin.x = v9;
  v91.origin.y = v11;
  v91.size.width = v13;
  v91.size.height = v21;
  MaxY = CGRectGetMaxY(v91);
  v92.origin.x = v9;
  v92.origin.y = v11;
  v92.size.width = v13;
  v92.size.height = v15;
  Width = CGRectGetWidth(v92);
  v32 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView];
  [v32 setFrame:{MinX, MaxY, Width, v23}];
  [v32 bounds];
  v82 = v9;
  v34 = v33;
  v81 = v11;
  v36 = v35;
  v80 = v13;
  v38 = v37;
  v79 = v15;
  v40 = v39;
  [v16 horizontalSizeClass];
  v93.origin.x = v34;
  v93.origin.y = v36;
  v93.size.width = v38;
  v93.size.height = v40;
  CGRectGetMinX(v93);
  v94.origin.x = v34;
  v94.origin.y = v36;
  v94.size.width = v38;
  v94.size.height = v40;
  CGRectGetMinY(v94);
  v95.origin.x = v34;
  v95.origin.y = v36;
  v95.size.width = v38;
  v95.size.height = v40;
  CGRectGetWidth(v95);
  v84 = v38;
  v85 = v34;
  v96.origin.x = v34;
  v96.origin.y = v36;
  v96.size.width = v38;
  v83 = v40;
  v96.size.height = v40;
  CGRectGetWidth(v96);
  sub_AB3A00();
  sub_ABA490();
  sub_76B28(v41, v42, v43, v44);
  sub_45C6D4();
  v45 = &v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame];
  v82 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame];
  v81 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame + 8];
  v86 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame + 16];
  swift_beginAccess();

  v80 = sub_2F48A4(v46, v16, 0, 0);

  if ((v1[v24] & 1) != 0 || (v47 = [v1 traitCollection], v48 = objc_msgSend(v47, "horizontalSizeClass"), v47, v48 == &dword_0 + 1))
  {
    if (*&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler])
    {
      v49 = sub_45C560();
      v50 = [v49 imageForState:0];

      if (v50)
      {
        CGRectGetMaxX(*v45);
        [v50 size];
        [v50 size];
        [v16 displayScale];
        sub_ABA470();
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
        MaxX = CGRectGetMaxX(*v45);
        v97.origin.x = v52;
        v97.origin.y = v54;
        v97.size.width = v56;
        v97.size.height = v58;
        v60 = CGRectGetMinX(v97);

        v86 = v86 - (MaxX - v60 + 4.0);
      }
    }
  }

  v61 = sub_45C560();
  sub_ABA490();
  [v61 setFrame:?];

  UIEdgeInsetsInsetRect_3(v82);
  v62 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  sub_ABA490();
  [v62 setFrame:?];

  [v32 frame];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_ABA690();
  v71 = sub_ABA680();
  if ((*(*(v71 - 8) + 48))(v6, 1, v71))
  {
    sub_12E1C(v6, &unk_DFFBC0);
    v72 = 0.0;
  }

  else
  {
    v73 = v76;
    sub_ABA650();
    sub_12E1C(v6, &unk_DFFBC0);
    sub_ABA610();
    v72 = v74;
    (*(v77 + 8))(v73, v78);
  }

  v75 = [objc_opt_self() effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v64 curve:{v66, v68, v70, v72}];
  [v1 setFocusEffect:v75];
}

uint64_t sub_153D54()
{
  v6._countAndFlagsBits = 60;
  v6._object = 0xE100000000000000;
  sub_AB94A0(v6);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = NSStringFromClass(ObjCClassFromMetadata);
  v7._countAndFlagsBits = sub_AB92A0();
  sub_AB94A0(v7);

  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  sub_AB94A0(v8);
  sub_ABAF70();
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title);
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title + 8);

  v9._countAndFlagsBits = v3;
  v9._object = v4;
  sub_AB94A0(v9);

  v10._countAndFlagsBits = 34;
  v10._object = 0xE100000000000000;
  sub_AB94A0(v10);
  v11._countAndFlagsBits = 0x223D656C74697420;
  v11._object = 0xE800000000000000;
  sub_AB94A0(v11);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  sub_AB94A0(v12);
  return 0;
}

uint64_t sub_153E98(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v4) = a1;
  swift_retain_n();

  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v7 = *&v5[v6];
  *&v5[v6] = a1;

  v8 = v5;
  sub_2E6210(v7);

  v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextStackView);
  v10 = *(v2 + v4);
  v11 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v12 = *&v9[v11];
  *&v9[v11] = v10;
  swift_retain_n();
  v13 = v9;
  sub_2E6210(v12);
}

void (*sub_153FE4(uint64_t **a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v3[7] = v1;
  v3[8] = VerticalLockupCollectionViewCell.textDrawingCache.modify(v3);
  return sub_154058;
}

void sub_154058(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 64))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = v3[7];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextStackView);
    v6 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v8 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v9 = *&v5[v8];
    *&v5[v8] = v7;
    swift_retain_n();
    v10 = v5;
    sub_2E6210(v9);
  }

  free(v3);
}

id sub_154148()
{
  v0 = [objc_opt_self() buttonWithType:1];
  v1 = [v0 titleLabel];
  if (v1)
  {
    if (qword_DE68C8 != -1)
    {
      v6 = v1;
      swift_once();
      v1 = v6;
    }

    v2 = v1;
    [v1 setFont:qword_DF1F78];
  }

  v3 = [v0 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setAdjustsFontForContentSizeCategory:1];
  }

  return v0;
}

void sub_154238()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleSubheadline;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_DF1F78 = v2;
}

void sub_154300()
{

  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoLooperDidChangeHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoLooperDidFailHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isPlayingDidChangeHandler));

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryCalendarButton);
}

uint64_t type metadata accessor for LiveRadioCell()
{
  result = qword_DF1FF0;
  if (!qword_DF1FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1547B4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoLooperDidChangeHandler);
  v5 = *v4;
  *v4 = a1;
  v4[1] = a2;
  sub_17654(v5);
  v6 = *(v3 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = (v6 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  v9 = *(v6 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  *v8 = sub_154958;
  v8[1] = v7;

  sub_17654(v9);
}

uint64_t sub_154920()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_154960()
{
  sub_13C80(0, &qword_DE6EE0);
  v0 = sub_ABA580();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v22[0] = v1;
  *(&v22[0] + 1) = v4;
  v22[1] = xmmword_AF7C20;
  v23 = 0;
  v24 = 0;
  v25 = v0;
  v26 = 1;
  v27 = xmmword_B00160;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000018, 0x8000000000B537B0, v22);
  v6 = objc_opt_self();
  v15 = v3;
  v14 = v4;
  v13 = v0;
  sub_2F118(v22, v35);

  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v8 = [v2 systemGrayColor];
  v9 = [v2 clearColor];
  *&v16[0] = v8;
  *(&v16[0] + 1) = v9;
  v16[1] = xmmword_AF7C20;
  v17 = 0;
  v18 = 0;
  v19 = v7;
  v20 = 1;
  v21 = xmmword_B00170;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0xD00000000000001BLL, 0x8000000000B537D0, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF7C50;
  *(v11 + 32) = v5;
  *(v11 + 40) = v10;
  sub_2F118(v16, v35);

  v28[0] = v8;
  v28[1] = v9;
  v29 = xmmword_AF7C20;
  v30 = 0;
  v31 = 0;
  v32 = v7;
  v33 = 1;
  v34 = xmmword_B00170;
  sub_2F174(v28);
  v35[0] = v1;
  v35[1] = v4;
  v36 = xmmword_AF7C20;
  v37 = 0;
  v38 = 0;
  v39 = v0;
  v40 = 1;
  v41 = xmmword_B00160;
  sub_2F174(v35);
  return v5;
}

uint64_t sub_154C70()
{
  sub_13C80(0, &qword_DE6EE0);
  v0 = sub_ABA550();
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  v3 = [v2 colorWithAlphaComponent:0.8];

  *&v43[0] = v3;
  *(&v43[0] + 1) = [v1 clearColor];
  v27 = *(&v43[0] + 1);
  v4 = *(&v43[0] + 1);
  v43[1] = xmmword_AF7C20;
  v43[2] = xmmword_AF82C0;
  v26 = v0;
  v44 = v0;
  v45 = 1;
  v46 = xmmword_AF8290;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v25 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000015, 0x8000000000B53750, v43);
  v30 = v3;
  v29 = v4;
  v28 = v0;
  sub_2F118(v43, v61);

  v5 = sub_ABA550();
  v6 = [v1 whiteColor];
  v7 = [v1 clearColor];
  *&v37[0] = v6;
  *(&v37[0] + 1) = v7;
  v37[1] = xmmword_AF7C20;
  v38 = 0;
  v39 = 0;
  v40 = v5;
  v41 = 1;
  v42 = xmmword_AF7C30;
  swift_allocObject();
  v8 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000012, 0x8000000000B53770, v37);
  v24 = v6;
  v23 = v7;
  v22 = v5;
  sub_2F118(v37, v61);

  v9 = sub_ABA550();
  v10 = [v1 whiteColor];
  v11 = [v10 colorWithAlphaComponent:0.8];

  v12 = [v1 clearColor];
  *&v31[0] = v11;
  *(&v31[0] + 1) = v12;
  v31[1] = xmmword_AF7C20;
  v32 = 0;
  v33 = 0;
  v34 = v9;
  v35 = 2;
  __asm { FMOV            V0.2D, #20.0 }

  v21 = _Q0;
  v36 = _Q0;
  swift_allocObject();
  v18 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000015, 0x8000000000B53790, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF82E0;
  *(v19 + 32) = v25;
  *(v19 + 40) = v8;
  *(v19 + 48) = v18;
  sub_2F118(v31, v61);

  v47[0] = v11;
  v47[1] = v12;
  v48 = xmmword_AF7C20;
  v49 = 0;
  v50 = 0;
  v51 = v9;
  v52 = 2;
  v53 = v21;
  sub_2F174(v47);
  v54[0] = v6;
  v54[1] = v7;
  v55 = xmmword_AF7C20;
  v57 = 0;
  v56 = 0;
  v58 = v5;
  v59 = 1;
  v60 = xmmword_AF7C30;
  sub_2F174(v54);
  v61[0] = v3;
  v61[1] = v27;
  v62 = xmmword_AF7C20;
  v63 = xmmword_AF82C0;
  v64 = v26;
  v65 = 1;
  v66 = xmmword_AF8290;
  sub_2F174(v61);

  return v25;
}

uint64_t sub_155118()
{
  if (qword_DE68C8 != -1)
  {
    swift_once();
  }

  v0 = qword_DF1F78;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 blackColor];
  v4 = [v1 clearColor];
  *&v8[0] = v3;
  *(&v8[0] + 1) = v4;
  v8[1] = xmmword_AF7C20;
  v9 = 0;
  v10 = 0;
  v11 = v2;
  v12 = 1;
  v13 = xmmword_B00180;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000025, 0x8000000000B53720, v8);
  v14[0] = v3;
  v14[1] = v4;
  v15 = xmmword_AF7C20;
  v16 = 0;
  v17 = 0;
  v18 = v2;
  v19 = 1;
  v20 = xmmword_B00180;
  sub_2F118(v8, v7);
  sub_2F174(v14);
  return v5;
}

double sub_155278(void *a1, char a2)
{
  sub_154960();
  v5 = sub_2F48A4(v4, a1, 0, 0) + 0.0;
  [a1 horizontalSizeClass];
  [a1 displayScale];
  sub_AB3A00();
  v7 = v5 + v6;
  sub_154C70();
  v9 = v8;
  v11 = v10;
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  swift_beginAccess();
  *(v9 + 88) = v12;
  sub_2EB2A8();
  v13 = v7 + sub_2F48A4(v11, a1, 0, 0);
  if ([a1 horizontalSizeClass] == &dword_0 + 2 && (a2 & 1) == 0)
  {
    v14 = sub_155118();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF82B0;
    *(inited + 32) = v14;

    v16 = sub_2F48A4(inited, a1, 0, 0);

    swift_setDeallocating();
    swift_arrayDestroy();

    v13 = v13 + v16;
  }

  else
  {
  }

  return v13;
}

void sub_1554C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v2 - 8);
  v58 = &v55 - v3;
  v59 = type metadata accessor for SymbolButton.Configuration(0) - 8;
  __chkstk_darwin(v59);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTitle);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerSubtitle);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headline);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_subtitle);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonTitle);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonHandler);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isHeaderRowCell) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_artworkVideoAspectRatio) = 0;
  v13 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoArtworkSize);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoLooperDidChangeHandler);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_videoLooperDidFailHandler);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isPlayingDidChangeHandler);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isVideoArtworkAllowed) = 0;
  v17 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextStackView;
  type metadata accessor for TextStackView();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTextComponents);
  *v18 = sub_154960();
  v18[1] = v19;
  v18[2] = v20;
  v21 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_textComponents);
  *v21 = sub_154C70();
  v21[1] = v22;
  v21[2] = v23;
  v21[3] = v24;
  v25 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonSizingTextComponent;
  *(v1 + v25) = sub_155118();
  v26 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerView;
  *(v1 + v26) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell____lazy_storage___topHairlineView) = 0;
  v27 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButton;
  *(v1 + v27) = sub_154148();
  v57 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryCalendarButton;
  SymbolButton.Configuration.init()(v5);
  variable initialization expression of SymbolButton.Configuration.symbol(&v60);
  v28 = v61;
  v69 = v62;
  v68 = v60;
  sub_12E1C(&v68, &unk_DEE6F0);
  v29 = UIFontTextStyleBody;
  sub_1559A4(&v69);
  v30 = *(v5 + 5);
  v70[4] = *(v5 + 4);
  v70[5] = v30;
  v70[6] = *(v5 + 6);
  v71 = *(v5 + 14);
  v31 = *(v5 + 1);
  v70[0] = *v5;
  v70[1] = v31;
  v32 = *(v5 + 3);
  v70[2] = *(v5 + 2);
  v70[3] = v32;
  sub_155A00(v70);
  *v5 = xmmword_B00130;
  *(v5 + 2) = v28;
  *(v5 + 3) = v29;
  *(v5 + 2) = v63;
  *(v5 + 6) = 4;
  v33 = v65;
  *(v5 + 56) = v64;
  *(v5 + 72) = v33;
  v34 = v67;
  *(v5 + 88) = v66;
  *(v5 + 104) = v34;
  v35 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
  v37 = *v35;
  v36 = v35[1];
  v38 = v35[3];
  v56 = v35[2];
  v39 = *(v5 + 25);
  v40 = *(v5 + 26);

  v41 = v36;
  sub_3F9D0(v39, v40);
  *(v5 + 25) = v37;
  *(v5 + 26) = v36;
  *(v5 + 27) = v56;
  *(v5 + 28) = v38;
  v42 = v58;
  sub_ABA670();
  v43 = sub_ABA680();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v44 = v59;
  sub_3FA14(v42, &v5[*(v59 + 44)]);
  *&v5[*(v44 + 60)] = vdupq_n_s64(0x4043000000000000uLL);
  v45 = &v5[*(v44 + 72)];
  v46 = *(v45 + 2);
  v47 = UIContentSizeCategoryAccessibilityLarge;

  *(v45 + 2) = UIContentSizeCategoryAccessibilityLarge;
  v48 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v49 = SymbolButton.init(configuration:handler:)(v5, 0, 0);
  v50 = AccessibilityIdentifier.calendarButton.unsafeMutableAddressor();
  v51 = *v50;
  v52 = v50[1];

  v53 = UIView.withAccessibilityIdentifier(_:)(v51, v52);

  *(v1 + v57) = v53;
  v54 = (v1 + OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_textStackViewInsets);
  *v54 = xmmword_B00140;
  v54[1] = xmmword_AF8270;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_1559A4(uint64_t a1)
{
  type metadata accessor for TextStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_155A5C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication10ToggleCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView] = 0;
  v48.receiver = v4;
  v48.super_class = type metadata accessor for ToggleCell();
  v9 = objc_msgSendSuper2(&v48, "initWithFrame:", a1, a2, a3, a4);
  v10 = &v9[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  *v10 = xmmword_B00360;
  *(v10 + 1) = xmmword_B00370;
  v49 = xmmword_B00360;
  v50 = xmmword_B00370;
  v11 = v9;
  if (sub_AB38D0())
  {
    [v11 setNeedsLayout];
  }

  v12 = vdupq_n_s64(0x404E000000000000uLL);
  *&v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v12;
  v47 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v13 = *&v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v14 = *(v13 + 80);
  v15 = *(v13 + 88);
  *(v13 + 80) = v12;
  sub_75614(v14, v15);
  v16 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];
  v20 = v16[2];
  v19 = v16[3];
  v45 = v16[5];
  v46 = v16[4];
  v21 = &v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v44 = *&v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v43 = *&v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v42 = *&v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v41 = *&v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  *v21 = *v16;
  v21[1] = v18;
  v21[2] = v20;
  v21[3] = v19;
  v21[4] = v46;
  v21[5] = v45;
  v22 = v17;
  v23 = v18;
  v24 = v20;
  v25 = v19;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  sub_2F1C8(v44, v43, v42, v41);
  v30 = *&v11[v47];
  v31 = *(v30 + 168);
  v49 = *(v30 + 152);
  v50 = v31;
  v51 = *(v30 + 184);
  *(v30 + 152) = v17;
  *(v30 + 160) = v18;
  *(v30 + 168) = v20;
  *(v30 + 176) = v19;
  *(v30 + 184) = v46;
  *(v30 + 192) = v45;
  v32 = v26;
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  v39 = v35;
  sub_75948(&v49);
  sub_B2A40(&v49);

  return v11;
}

void sub_155DDC()
{
  v1 = [objc_allocWithZone(UISwitch) init];
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView);
  *(v0 + OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView) = v1;
}

double sub_155E28()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView);
  if (!v1)
  {
    return 0.0;
  }

  [v1 sizeThatFits:{0.0, 0.0}];
  return result;
}

void sub_155E70()
{
  v1 = v0;
  v84.receiver = v0;
  v84.super_class = type metadata accessor for ToggleCell();
  objc_msgSendSuper2(&v84, "layoutSubviews");
  v2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog;
  if (!*&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog])
  {
    [*(*&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 112) setHidden:1];
  }

  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView];
    v5 = v3;
    if (([v5 isDescendantOfView:v4] & 1) == 0)
    {
      [v5 addTarget:v1 action:"switchValueChanged:" forControlEvents:4096];
      [v4 addSubview:v5];
    }
  }

  v6 = [v1 contentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v1 music_inheritedLayoutInsets];
  v16 = v15;
  v18 = v17;
  [v1 effectiveUserInterfaceLayoutDirection];
  v19 = UIEdgeInsetsInsetRect(v8, v10, v12, v14, v16, v18);
  v75 = v20;
  v22 = v21;
  v24 = v23;
  v25 = [v1 traitCollection];
  [v25 displayScale];

  [*&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView] frame];
  sub_ABA4A0();
  if (*&v1[v2])
  {
    Width = CGRectGetWidth(*&v26);
    v31 = &v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
    v32 = Width + *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] + *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 8] + *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 24];
    [*(*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 112) frame];
    sub_ABA4A0();
    v76 = CGRectGetMaxX(v85) + v31[3];
  }

  else
  {
    v76 = v19;
    v32 = CGRectGetWidth(*&v26);
  }

  v33 = &v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
  v34 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8];
  if ((v34 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v34) & 0xF;
  }

  else
  {
    v35 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle] & 0xFFFFFFFFFFFFLL;
  }

  v36 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  v73 = v22 - (v32 + 32.0);
  v74 = v24;
  [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:?];
  v38 = v37;
  v40 = v39;
  if (v35)
  {
    v42 = v75;
    v41 = v76;
  }

  else
  {
    sub_ABA470();
    v41 = v43;
    v42 = v44;
    v38 = v45;
    v40 = v46;
  }

  v47 = *&v1[v36];
  sub_ABA490();
  [v47 setFrame:?];

  v86.origin.x = v41;
  v86.origin.y = v42;
  v86.size.width = v38;
  v86.size.height = v40;
  CGRectGetMaxY(v86);
  v87.origin.y = v42;
  v87.origin.x = v41;
  v87.size.width = v38;
  v87.size.height = v40;
  Height = CGRectGetHeight(v87);
  v49 = *(v33 + 1);
  v50 = *v33 & 0xFFFFFFFFFFFFLL;
  if ((v49 & 0x2000000000000000) != 0)
  {
    v50 = HIBYTE(v49) & 0xF;
  }

  if (v50)
  {
    v51 = v74 - Height;
    v52 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView;
    v53 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView];
    sub_4CDE34(v73, v51);

    v54 = *&v1[v52];
    sub_ABA490();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = type metadata accessor for ParagraphView();
    v83.receiver = v54;
    v83.super_class = v63;
    objc_msgSendSuper2(&v83, "frame");
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v82.receiver = v54;
    v82.super_class = v63;
    objc_msgSendSuper2(&v82, "setFrame:", v56, v58, v60, v62);
    type metadata accessor for CGRect(0);
    v78 = v65;
    v79 = v67;
    v80 = v69;
    v81 = v71;
    v77.receiver = v54;
    v77.super_class = v63;
    objc_msgSendSuper2(&v77, "frame");
    if (sub_AB38D0())
    {
      [v54 setNeedsLayout];
      v72 = *&v54[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
      if (v72)
      {

        v72(v54);
        sub_17654(v72);
      }
    }
  }
}

uint64_t sub_156440(void *a1)
{
  v3 = [a1 isOn];
  if (v3 != *(v1 + OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled))
  {
    *(v1 + OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled) = v3;
    [*(v1 + OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView) setOn:v3 animated:0];
  }

  v4 = v1 + OBJC_IVAR____TtC16MusicApplication10ToggleCell_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v1, &off_CFBE58, [a1 isOn], ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1565A8()
{
  sub_176DC(v0 + OBJC_IVAR____TtC16MusicApplication10ToggleCell_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView);
}

id sub_1565E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToggleCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ToggleCell()
{
  result = qword_DF2038;
  if (!qword_DF2038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_156718(id result)
{
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled) != (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled) = result & 1;
    return [*(v1 + OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView) setOn:? animated:?];
  }

  return result;
}

void sub_156754(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView);
  if (v3)
  {
    [v3 sizeThatFits:{0.0, 0.0}];
    v5 = v4 + 32.0;
  }

  else
  {
    v5 = 32.0;
  }

  v6 = a1 - v5;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog))
  {
    v6 = v6 - *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize);
  }

  [*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView) sizeThatFits:{v6, 5.99231045e307}];
  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView);
  sub_4CDE34(v6, 5.99231045e307);
}

void sub_156888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for StoreModelItemRequest();
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model;
  *&v8[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model] = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_preventStoreItemMetadataCaching;
  *&v8[v9] = v3;
  v8[v10] = 1;
  v16.receiver = v8;
  v16.super_class = v7;
  v11 = v3;
  v12 = objc_msgSendSuper2(&v16, "init");
  [v12 setItemProperties:a1];
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = sub_15AA70;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_151E0;
  v15[3] = &block_descriptor_165;
  v14 = _Block_copy(v15);

  [v12 performWithResponseHandler:v14];
  _Block_release(v14);
}

void sub_156A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_AB3040();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_156B10(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  (*(v3 + 2))(v3, 0, 0);

  _Block_release(v3);
}

id sub_156B60()
{
  v0 = [objc_opt_self() emptyPropertySet];

  return v0;
}

void sub_156BAC(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a1 && ((objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0) ? (v7 = a2 == 0) : (v7 = 0), v7))
  {
    v8 = v6;
    v18 = a1;
    if ([v8 isFinalResponse])
    {
      v9 = [objc_allocWithZone(MPMutableSectionedCollection) init];
      v10 = sub_AB9260();
      [v9 appendSection:v10];

      v11 = [v8 results];
      if (v11)
      {
        v12 = v11;
        v13 = swift_allocObject();
        *(v13 + 16) = v9;
        v14 = swift_allocObject();
        *(v14 + 16) = sub_15A918;
        *(v14 + 24) = v13;
        aBlock[4] = sub_15AB68;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_48D4FC;
        aBlock[3] = &block_descriptor_155;
        v15 = _Block_copy(aBlock);
        v16 = v9;

        [v12 enumerateItemsUsingBlock:v15];
        _Block_release(v15);
        LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

        if ((v15 & 1) == 0)
        {
          v17 = v16;
          (a3)(v16, 0);

          return;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    a3(0);
  }
}

void sub_156E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MPModelLibraryRequest) init];
  sub_13C80(0, &qword_DE8E90);
  v9 = v8;
  v10 = static MPModelAlbum.defaultMusicKind.getter();
  [v9 setItemKind:v10];

  [v9 setItemProperties:a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF82B0;
  *(v11 + 32) = [v4 identifiers];
  sub_13C80(0, &unk_DE8180);
  isa = sub_AB9740().super.isa;

  [v9 setAllowedItemIdentifiers:isa];

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = sub_15AA70;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_151E0;
  v15[3] = &block_descriptor_128;
  v14 = _Block_copy(v15);

  [v9 performWithResponseHandler:v14];
  _Block_release(v14);
}

void sub_1570B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 kindWithVariants:3];
  [v8 setItemKind:v9];

  sub_13C80(0, &qword_DE8E90);
  v10 = static MPModelAlbum.defaultMusicKind.getter();
  [v8 setSectionKind:v10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF82B0;
  *(v11 + 32) = v3;
  sub_13C80(0, &qword_DEDE20);
  v12 = v3;
  isa = sub_AB9740().super.isa;

  [v8 setScopedContainers:isa];

  static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter();
  sub_13C80(0, &unk_DFDE50);
  v14 = sub_AB9740().super.isa;

  [v8 setItemSortDescriptors:v14];

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v17[4] = sub_15A87C;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_151E0;
  v17[3] = &block_descriptor_118;
  v16 = _Block_copy(v17);

  [v8 performWithResponseHandler:v16];
  _Block_release(v16);
}

void sub_157328(void *a1, uint64_t a2, void (*a3)(void))
{
  if (!a1 || a2)
  {
    (a3)(0);
  }

  else
  {
    v4 = a1;
    v5 = [v4 results];
    a3();
  }
}

id sub_157424(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a1;
  v13 = [v12 orphanMusicVideo];

  if (v13)
  {

    v14 = 0;
  }

  else
  {
    v17[4] = a6;
    v17[5] = v11;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_1B5EB4;
    v17[3] = a7;
    v15 = _Block_copy(v17);

    v14 = v15;
  }

  return v14;
}

void sub_1575D0(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a1 && ((objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0) ? (v7 = a2 == 0) : (v7 = 0), v7))
  {
    v8 = v6;
    v18 = a1;
    if ([v8 isFinalResponse])
    {
      v9 = [objc_allocWithZone(MPMutableSectionedCollection) init];
      v10 = sub_AB9260();
      [v9 appendSection:v10];

      v11 = [v8 results];
      if (v11)
      {
        v12 = v11;
        v13 = swift_allocObject();
        *(v13 + 16) = v9;
        v14 = swift_allocObject();
        *(v14 + 16) = sub_15A804;
        *(v14 + 24) = v13;
        aBlock[4] = sub_15AB68;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_48D4FC;
        aBlock[3] = &block_descriptor_80_0;
        v15 = _Block_copy(aBlock);
        v16 = v9;

        [v12 enumerateItemsUsingBlock:v15];
        _Block_release(v15);
        LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

        if ((v15 & 1) == 0)
        {
          v17 = v16;
          (a3)(v16, 0);

          return;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    a3(0);
  }
}

void sub_15785C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 playlistEntry];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = [v6 song];

      if (v7)
      {
        [a4 appendItem:v7];
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_157978(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_157A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MPModelLibraryRequest) init];
  sub_13C80(0, &qword_DE9C10);
  v9 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 kindWithPlaylistEntryKind:v9 options:0];
  [v11 setItemKind:v12];

  [v11 setItemProperties:a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF82B0;
  *(v13 + 32) = [v4 identifiers];
  sub_13C80(0, &unk_DE8180);
  isa = sub_AB9740().super.isa;

  [v11 setAllowedItemIdentifiers:isa];

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v17[4] = sub_15AA70;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_151E0;
  v17[3] = &block_descriptor_53;
  v16 = _Block_copy(v17);

  [v11 performWithResponseHandler:v16];
  _Block_release(v16);
}

void sub_157C90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MPModelLibraryRequest) init];
  sub_13C80(0, &qword_DE9C10);
  v7 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 kindWithPlaylistEntryKind:v7 options:0];
  [v9 setSectionKind:v10];

  [v9 setItemKind:v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v12;
  *(inited + 48) = [objc_opt_self() emptyPropertySet];
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_CB490(inited + 32);
  v13 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;
  sub_13C80(0, &qword_DEA550);
  v15 = sub_AB8FD0().super.isa;

  v16 = [v13 initWithProperties:isa relationships:v15];

  [v9 setItemProperties:v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF82B0;
  *(v17 + 32) = v3;
  sub_13C80(0, &qword_DEDE20);
  v18 = v3;
  v19 = sub_AB9740().super.isa;

  [v9 setScopedContainers:v19];

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  aBlock[4] = sub_15A77C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_34;
  v21 = _Block_copy(aBlock);

  [v9 performWithResponseHandler:v21];
  _Block_release(v21);
}

void sub_157FEC(void *a1, uint64_t a2, void (*a3)(void))
{
  if (!a1 || a2)
  {
    a3(0);
    return;
  }

  v5 = objc_allocWithZone(MPMutableSectionedCollection);
  v6 = a1;
  v7 = [v5 init];
  v8 = sub_AB9260();
  [v7 appendSection:v8];

  v9 = [v6 results];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_15A784;
  *(v12 + 24) = v11;
  v16[4] = sub_5794C;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_48D4FC;
  v16[3] = &block_descriptor_43_0;
  v13 = _Block_copy(v16);
  v14 = v7;

  [v10 enumerateItemsUsingBlock:v13];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v15 = v14;
  (a3)(v14, 0);
}

void sub_158218(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 song];
    swift_unknownObjectRelease();
    if (v6)
    {
      [a4 appendItem:v6];
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_15832C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

id sub_1583E8(int a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v13[4] = a6;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1B5EB4;
  v13[3] = a7;
  v11 = _Block_copy(v13);

  return v11;
}

void sub_1584AC(void *a1, void *a2)
{
  type metadata accessor for JSContainerDetailComponentController();
  v4 = a2;
  v5 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(a1, 0, 1, UIScreen.Dimensions.size.getter, 0);
  if (!v5)
  {
    v6 = v4;
    v5 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v6, 0, 1, UIScreen.Dimensions.size.getter, 0);
    if (!v5)
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v34 = v33;
        v35 = MPModelPropertyPlaylistType;
        v36 = v6;
        if ([v34 hasLoadedValueForKey:v35] && objc_msgSend(v34, "type") == &dword_8 + 1)
        {
          v7 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
          v8 = *&v7[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

          goto LABEL_4;
        }
      }

      sub_ABAFD0();
      __break(1u);
      return;
    }
  }

  v7 = v5;
  v8 = *(v5 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
LABEL_4:
  v9 = v7;
  v10 = type metadata accessor for JSContainerDetailModelRequest();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v12 = 0;
  v12[1] = 0;
  v11[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v11[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v11[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v11[v13] = v8;
  v43.receiver = v11;
  v43.super_class = v10;
  v14 = v8;
  v15 = objc_msgSendSuper2(&v43, "init");
  if ((v14[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90);
    v16 = v15;
    v17 = static MPModelAlbum.defaultMusicKind.getter();
    [v16 setSectionKind:v17];

    v18 = [objc_opt_self() kindWithVariants:3];
    v19 = v18;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10);
    v18 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v20 = objc_opt_self();
    v19 = v15;
    v21 = [v20 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v18 options:0];
    [v19 setSectionKind:v21];

    v16 = v18;
  }

  [v15 setItemKind:v18];

  v22 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
  swift_beginAccess();
  v23 = *&v14[v22];
  v24 = v23;

  v25 = JSViewModel.playActivityRecommendationData.getter();
  v27 = v26;
  sub_466A4(0, 0xF000000000000000);
  v45[0] = v15;
  v45[1] = v8;
  v45[2] = a2;
  v45[3] = 0;
  v45[4] = v7;
  v45[5] = 0;
  v45[6] = v23;
  v46 = 1;
  *v47 = *v44;
  *&v47[3] = *&v44[3];
  v48 = v25;
  v49 = v27;
  v38[0] = v15;
  v38[1] = v8;
  v38[2] = a2;
  v38[3] = 0;
  v38[4] = v7;
  v38[5] = 0;
  v38[6] = v23;
  v39 = 1;
  *&v40[3] = *&v44[3];
  *v40 = *v44;
  v41 = v25;
  v42 = v27;
  sub_70EB0(v45, v37);
  sub_70F0C(v38);
  v28 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
  sub_70EB0(v45, v37);
  v29 = sub_2D72DC(v45);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v31 = Strong, v32 = [Strong navigationController], v31, v32))
  {
    [v32 pushViewController:v29 animated:1];
    sub_70F0C(v45);

    v29 = v32;
  }

  else
  {
    sub_70F0C(v45);
  }
}

void sub_158A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 kindWithVariants:3];
  [v10 setItemKind:v11];

  [v10 setItemProperties:a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF82B0;
  *(v12 + 32) = [v4 identifiers];
  sub_13C80(0, &unk_DE8180);
  isa = sub_AB9740().super.isa;

  [v10 setAllowedItemIdentifiers:isa];

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v16[4] = sub_15A704;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_151E0;
  v16[3] = &block_descriptor_12;
  v15 = _Block_copy(v16);

  [v10 performWithResponseHandler:v15];
  _Block_release(v15);
}

void sub_158C10(id a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    a1 = [a1 results];
    if (a1)
    {
      v4 = a1;
      v5 = [a1 firstItem];

      if (v5)
      {
        objc_opt_self();
        a1 = swift_dynamicCastObjCClass();
        if (a1)
        {
          goto LABEL_7;
        }

        swift_unknownObjectRelease();
      }

      a1 = 0;
    }
  }

LABEL_7:
  v6 = a1;
  a3();
}

uint64_t sub_158D10(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_158DB8(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  _Block_copy(v4);
  v5 = a1;
  sub_159A08(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

void sub_158E24(uint64_t a1)
{
  v2 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
  sub_70EB0(a1, &v7);
  v3 = sub_2D72DC(a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];

    if (v6)
    {
      [v6 pushViewController:v3 animated:1];

      v3 = v6;
    }
  }
}

id sub_158F08(void *a1, int a2, void *a3, void *aBlock, uint64_t (*a5)(id), uint64_t a6)
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a1;
  v13 = a5(v11);
  v15 = v14;
  _Block_release(v10);

  if (v13)
  {
    v18[4] = v13;
    v18[5] = v15;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1B5EB4;
    v18[3] = a6;
    v16 = _Block_copy(v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_15902C(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  _Block_copy(a2);
  v4 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v5 = MPModelObject.bestIdentifier(for:)(*v4, 0);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
    [v9 setInGroupSession:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_AF4EC0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    isa = sub_AB9740().super.isa;

    [v9 setStoreIDs:isa];

    v12 = swift_allocObject();
    *(v12 + 16) = sub_15AAE4;
    *(v12 + 24) = v3;
    v15[4] = sub_15A8D8;
    v15[5] = v12;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_151E0;
    v15[3] = &block_descriptor_145_0;
    v13 = _Block_copy(v15);

    [v9 performWithResponseHandler:v13];
    _Block_release(v13);
  }

  else
  {
    sub_15A884();
    swift_allocError();
    v14 = sub_AB3040();
    (a2)[2](a2, 0, v14);
  }
}

id sub_159278()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  *(v4 + 32) = sub_AB92A0();
  *(v4 + 40) = v5;
  isa = sub_AB9740().super.isa;
  v7 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v7;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_CB490(inited + 32);
  v8 = objc_allocWithZone(MPPropertySet);
  v9 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v10 = sub_AB8FD0().super.isa;

  v11 = [v8 initWithProperties:v9 relationships:v10];

  return v11;
}

void sub_159468(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  _Block_copy(a2);
  v4 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v5 = MPModelObject.bestIdentifier(for:)(*v4, 0);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
    [v9 setInGroupSession:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_AF4EC0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    isa = sub_AB9740().super.isa;

    [v9 setStoreIDs:isa];

    v12 = swift_allocObject();
    *(v12 + 16) = sub_15AAE4;
    *(v12 + 24) = v3;
    v15[4] = sub_15A7FC;
    v15[5] = v12;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_151E0;
    v15[3] = &block_descriptor_70;
    v13 = _Block_copy(v15);

    [v9 performWithResponseHandler:v13];
    _Block_release(v13);
  }

  else
  {
    sub_15A7A8();
    swift_allocError();
    v14 = sub_AB3040();
    (a2)[2](a2, 0, v14);
  }
}

void (*sub_1596B4())()
{
  v1 = v0;
  if ([v0 isArtistUploadedContent])
  {
    return 0;
  }

  result = [v0 album];
  if (result)
  {
    v3 = result;
    objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
    v4 = v3;
    v5 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v4);
    if (!v5)
    {

      return 0;
    }

    v6 = v5;
    if ([v1 trackCount] <= 1 && (objc_msgSend(v1, "hasVideo") & 1) != 0)
    {

      return 0;
    }

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = v4;
    v8[4] = v7;
    return sub_15A768;
  }

  return result;
}

id sub_1597EC()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF4EC0;
  *(v6 + 32) = sub_AB92A0();
  *(v6 + 40) = v7;
  isa = sub_AB9740().super.isa;
  v9 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v9;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_CB490(inited + 32);
  v10 = objc_allocWithZone(MPPropertySet);
  v11 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v12 = sub_AB8FD0().super.isa;

  v13 = [v10 initWithProperties:v11 relationships:v12];

  return v13;
}

void sub_159A08(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF82B0;
  *(v4 + 32) = a1;
  v5 = objc_allocWithZone(MPMutableSectionedCollection);
  v6 = a1;
  v9 = [v5 init];
  v7 = sub_AB9260();
  [v9 appendSection:v7];

  sub_13C80(0, &unk_DE8EB0);
  isa = sub_AB9740().super.isa;
  [v9 appendItems:isa];

  (*(a2 + 16))(a2, v9, 0);
}

void (*sub_159B34())()
{
  if ([v0 isArtistUploadedContent])
  {
    return 0;
  }

  result = [v0 album];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = result;
  v4 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v4, 0);
  if (v5)
  {

    if ([v0 trackCount] > 1 || (objc_msgSend(v0, "hasVideo") & 1) == 0)
    {
      v6 = [v0 isLibraryAdded];

      if (v6)
      {
        v7 = [objc_allocWithZone(MPModelLibraryRequest) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_AF82B0;
        *(v8 + 32) = v3;
        sub_13C80(0, &qword_DEDE20);
        isa = sub_AB9740().super.isa;

        [v7 setScopedContainers:isa];

        sub_13C80(0, &qword_DE8E90);
        v10 = static MPModelAlbum.defaultMusicKind.getter();
        [v7 setSectionKind:v10];

        v11 = [objc_opt_self() kindWithVariants:3];
        [v7 setItemKind:v11];

        type metadata accessor for JSContainerDetailComponentController();
        v12 = v3;
        v13 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v12, 0, 1, UIScreen.Dimensions.size.getter, 0);
        if (v13)
        {
          v14 = v13;
          v15 = *&v13[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_13:

          v16 = JSViewModel.playActivityRecommendationData.getter();
          v18 = v17;
LABEL_29:
          sub_466A4(0, 0xF000000000000000);
          v63 = v7;
          *&v64 = v15;
          *(&v64 + 1) = v2;
          *&v65 = 0;
          v66 = 0;
          v67 = 0;
          *(&v65 + 1) = v14;
          v68 = 1;
          v70 = v16;
          v71 = v18;
          v72 = v7;
          v73 = v15;
          v74 = v2;
          v75 = 0;
          v77 = 0;
          v78 = 0;
          v76 = v14;
          v79 = 1;
          v81 = v16;
          v82 = v18;
LABEL_30:
          sub_70EB0(&v63, v62);
          sub_70F0C(&v72);
          v47 = v70;
          v48 = v71;
          v49 = v68;
          v51 = v66;
          v50 = v67;
          v59 = v64;
          v61 = v65;
          v52 = v63;
          v53 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v54 = swift_allocObject();
          *(v54 + 16) = v52;
          *(v54 + 40) = v61;
          *(v54 + 24) = v59;
          *(v54 + 56) = v51;
          *(v54 + 64) = v50;
          *(v54 + 72) = v49;
          *(v54 + 73) = v72;
          *(v54 + 76) = *(&v72 + 3);
          *(v54 + 80) = v47;
          *(v54 + 88) = v48;
          *(v54 + 96) = v53;
          return sub_15A6DC;
        }

        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v38 = MPModelPropertyPlaylistType;
          v12 = v12;
          if (([v14 hasLoadedValueForKey:v38] & 1) != 0 && objc_msgSend(v14, "type") == &dword_8 + 1)
          {
            v14 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
            v15 = *&v14[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

            goto LABEL_13;
          }

          v14 = 0;
        }

        else
        {
        }

        v15 = 0;
        v16 = 0;
        v18 = 0xF000000000000000;
        goto LABEL_29;
      }

      v19 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
      v20 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v3);
      if (!v20)
      {
        goto LABEL_7;
      }

      v21 = v20;
      type metadata accessor for JSContainerDetailComponentController();
      v22 = v21;
      v23 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v22, 0, 1, UIScreen.Dimensions.size.getter, 0);
      v60 = v22;
      if (v23 || (v24 = v3, (v23 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v24, 0, 1, UIScreen.Dimensions.size.getter, 0)) != 0))
      {
        v25 = v23;
        v26 = *(v23 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
LABEL_18:
        v27 = v25;
        v28 = type metadata accessor for JSContainerDetailModelRequest();
        v29 = objc_allocWithZone(v28);
        v30 = &v29[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
        *v30 = 0;
        v30[1] = 0;
        v29[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
        swift_unknownObjectWeakInit();
        v31 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
        *&v29[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
        v29[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
        *&v29[v31] = v26;
        v83.receiver = v29;
        v83.super_class = v28;
        v32 = v26;
        v33 = objc_msgSendSuper2(&v83, "init");
        if ((v32[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
        {
          sub_13C80(0, &qword_DE8E90);
          v34 = v33;
          v35 = static MPModelAlbum.defaultMusicKind.getter();
          [v34 setSectionKind:v35];

          v36 = [objc_opt_self() kindWithVariants:3];
          v37 = v36;
        }

        else
        {
          sub_13C80(0, &qword_DE9C10);
          v36 = static MPModelPlaylistEntry.defaultMusicKind.getter();
          v39 = objc_opt_self();
          v37 = v33;
          v40 = [v39 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v36 options:0];
          [v37 setSectionKind:v40];

          v34 = v36;
        }

        [v33 setItemKind:v36];

        v41 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
        swift_beginAccess();
        v42 = *&v32[v41];
        v43 = v42;

        v44 = JSViewModel.playActivityRecommendationData.getter();
        v46 = v45;
        sub_466A4(0, 0xF000000000000000);
        v63 = v33;
        *&v64 = v26;
        *(&v64 + 1) = v2;
        *&v65 = 0;
        *(&v65 + 1) = v25;
        v66 = 0;
        v67 = v42;
        v68 = 1;
        *v69 = v84[0];
        *&v69[3] = *(v84 + 3);
        v70 = v44;
        v71 = v46;
        v72 = v33;
        v73 = v26;
        v74 = v2;
        v75 = 0;
        v76 = v25;
        v77 = 0;
        v78 = v42;
        v79 = 1;
        *&v80[3] = *(v84 + 3);
        *v80 = v84[0];
        v81 = v44;
        v82 = v46;
        goto LABEL_30;
      }

      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v56 = v55;
        v57 = MPModelPropertyPlaylistType;
        v58 = v24;
        if ([v56 hasLoadedValueForKey:v57] && objc_msgSend(v56, "type") == &dword_8 + 1)
        {
          v25 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
          v26 = *&v25[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

          goto LABEL_18;
        }
      }

      result = sub_ABAFD0();
      __break(1u);
      return result;
    }
  }

LABEL_7:
  return 0;
}

id sub_15A3D4()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF4EC0;
  *(v7 + 32) = sub_AB92A0();
  *(v7 + 40) = v8;
  isa = sub_AB9740().super.isa;
  v10 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v10;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_CB490(inited + 32);
  v11 = objc_allocWithZone(MPPropertySet);
  v12 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v13 = sub_AB8FD0().super.isa;

  v14 = [v11 initWithProperties:v12 relationships:v13];

  return v14;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_15A61C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_15A654()
{
  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    sub_466B8(*(v0 + 80), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_15A720()
{

  return swift_deallocObject();
}

unint64_t sub_15A7A8()
{
  result = qword_DF2048;
  if (!qword_DF2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2048);
  }

  return result;
}

uint64_t sub_15A80C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_15A844()
{

  return swift_deallocObject();
}

unint64_t sub_15A884()
{
  result = qword_DF2050;
  if (!qword_DF2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2050);
  }

  return result;
}

uint64_t sub_15A8E0()
{

  return swift_deallocObject();
}

unint64_t sub_15A978()
{
  result = qword_DF2058;
  if (!qword_DF2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2058);
  }

  return result;
}

unint64_t sub_15A9D0()
{
  result = qword_DF2060;
  if (!qword_DF2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2060);
  }

  return result;
}

id sub_15AB74(void *a1)
{
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  *&v1[qword_DF2070] = 0;
  *&v1[qword_DF2068] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MediaPickerMusicVideosViewController();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v10, "init");
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v7 = sub_AB9260();

  [v6 setTitle:v7];

  v8 = sub_AB9260();
  [v6 setPlayActivityFeatureName:v8];

  return v6;
}

void sub_15AD48(uint64_t a1)
{
  *(a1 + qword_DF2070) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_15ADB0()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = qword_DF2070;
  if (*&v0[qword_DF2070])
  {
    v4 = *&v0[qword_DF2070];
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

void sub_15AF3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*(&stru_478.reserved2 + (swift_isaMask & *Strong)))();
  }
}

uint64_t sub_15AFC8(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for MediaPickerMusicVideosViewController();
  v1 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v2 = sub_15ADB0();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = *(v2 + 88);
  *(v2 + 88) = sub_15C894;
  *(v2 + 96) = v3;

  sub_17654(v4);
}

id sub_15B098()
{
  v0 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 kindWithVariants:2];
  [v2 setItemKind:v3];

  v4 = sub_AB9260();
  [v2 setLabel:v4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF4EC0;
  *(v5 + 32) = sub_AB92A0();
  *(v5 + 40) = v6;
  isa = sub_AB9740().super.isa;
  v8 = [objc_opt_self() propertySetWithProperties:isa];

  [v2 setSectionProperties:v8];
  if (qword_DE6AD0 != -1)
  {
    swift_once();
  }

  [v2 setItemProperties:qword_E715F8];
  sub_15BBE4(v2);

  return v2;
}

void sub_15B268()
{
  v1 = (*(&stru_478.flags + (swift_isaMask & *v0)))();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_15C804;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_151E0;
  v4[3] = &block_descriptor_46;
  v3 = _Block_copy(v4);

  [v1 performWithResponseHandler:v3];
  _Block_release(v3);
}

void sub_15B384(void *a1)
{
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C50();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_13C80(0, &qword_DE8ED0);
    v17 = sub_ABA150();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    aBlock[4] = sub_15C864;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_63;
    v13 = _Block_copy(aBlock);
    v14 = a1;
    v15 = v11;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_8FFF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_D1010();
    sub_ABABB0();
    v16 = v17;
    sub_ABA160();

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
    _Block_release(v13);
  }
}

void sub_15B650(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v16 = [v4 navigationController];
  if (v16)
  {
    type metadata accessor for MediaPickerNavigationController();
    if (swift_dynamicCastClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_AF82B0;
      *(v10 + 32) = a1;
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v8 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
      v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      (*(v8 + 32))(v13 + v12, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      v14 = a1;

      sub_41BB48(v10, sub_15C790, v13);
    }

    else
    {
    }
  }
}

void sub_15B894(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong loadViewIfNeeded];
    v4 = *&v3[qword_DFE2F8];
    if (v4)
    {
      v5 = v4;

      isa = sub_AB3770().super.isa;
      v7 = [v5 cellForItemAtIndexPath:isa];

      if (v7)
      {
        type metadata accessor for MusicVideoHorizontalCell(0);
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected);
          *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected) = a1 & 1;
          if (v9 != (a1 & 1))
          {
            v10 = *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton);
            if (v10)
            {
              [v10 setSelected:a1 & 1];
            }
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_15B9B0(void *a1)
{
  v8 = [v1 traitCollection];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 music_inheritedLayoutInsets];

  sub_49D760(v8);
  [a1 setRowHeight:v7];
  [a1 invalidateLayout];
}

void sub_15BAA8(void *a1, uint64_t a2, void *a3, void *a4)
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
  (*(v8 + 8))(v10, v7);
}

void sub_15BBE4(void *a1)
{
  v3 = *&v1[qword_DF2068];
  v4 = [v1 traitCollection];
  v5 = [v1 traitCollection];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;

  v7 = MPMediaLibraryFilteringOptions.itemRequestFilteringOptions.getter(rawValue);
  v8 = UITraitCollection.mediaLibrary.getter();
  [a1 setMediaLibrary:v8];

  v9 = [a1 filteringOptions];
  if ((v7 & ~v9) != 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  [a1 setFilteringOptions:v10 | v9];
  if ((UITraitCollection.mediaPickerLibraryFilter.getter().rawValue & 0x10) != 0)
  {
    [a1 setFilteringOptions:{objc_msgSend(a1, "filteringOptions") | 0x10}];
  }

  if (v3)
  {
    v11 = v3;
    v12 = [a1 scopedContainers];
    if (v12)
    {
      v13 = v12;
      sub_13C80(0, &qword_DEDE20);
      v14 = sub_AB9760();
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_AF82B0;
    *(v15 + 32) = v11;
    v20 = v15;
    v16 = v11;
    sub_19638(v14);
    sub_13C80(0, &qword_DEDE20);
    isa = sub_AB9740().super.isa;

    [a1 setScopedContainers:isa];

    v4 = isa;
  }

  if (*(*(sub_15ADB0() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
  {

    v18 = sub_AB9260();
  }

  else
  {
    v18 = 0;
  }

  [a1 setFilterText:{v18, v18, v20}];
}

uint64_t sub_15BEAC()
{
}

id sub_15BEEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaPickerMusicVideosViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_15BF24(uint64_t a1)
{
}

uint64_t type metadata accessor for MediaPickerMusicVideosViewController()
{
  result = qword_DF20A0;
  if (!qword_DF20A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_15C0E8()
{
  v1 = *v0;
  [*v0 loadViewIfNeeded];
  v2 = *&v1[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    [v3 music_inheritedLayoutInsets];
    v4 = [v1 traitCollection];
    [v3 bounds];
  }

  else
  {
    __break(1u);
  }
}

id sub_15C1C0()
{
  v0 = [objc_allocWithZone(UICollectionViewTableLayout) init];
  sub_15B9B0(v0);
  return v0;
}

void sub_15C228(char *a1, id a2)
{
  v4 = [a2 artworkCatalog];
  v5 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
  *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v4;
  v6 = v4;

  sub_74EA4(v4);
  v7 = [a1 tableViewCell];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 _setDrawsSeparatorAtTopOfSection:0];

  v9 = [a1 tableViewCell];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 _setDrawsSeparatorAtBottomOfSection:0];

  v11 = [a2 isFavorite];
  v12 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
  v13 = a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = v11;
  if (v11 != v13)
  {
    sub_201644();
    v14 = sub_200954();
    [v14 setHidden:(a1[v12] & 1) == 0];
  }
}

void sub_15C394(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v6 = a2;
  *(v6 + 1) = a3;

  v7 = *&a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v8 = String.trim()();
  swift_beginAccess();
  v7[7] = v8;

  sub_2EB704();
  [a1 setNeedsLayout];
  v9 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  *v9 = xmmword_AF7C40;
  v9[16] = 0;
  sub_1846A0();
  v10 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  *v10 = xmmword_AF8610;
  v10[16] = 1;
  sub_1848CC();
}

uint64_t sub_15C4E0(uint64_t a1, id a2)
{
  v4 = [a2 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB92A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = (a1 + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_title);
  *v9 = v6;
  v9[1] = v8;

  v10 = a1 + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents;
  v11 = *(a1 + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents);
  swift_beginAccess();
  *(v11 + 112) = v6;
  *(v11 + 120) = v8;

  sub_2EB704();

  v12 = [a2 artist];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v14 = [v12 name];
  if (!v14)
  {

LABEL_8:
    v16 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_9;
  }

  v15 = v14;
  v16 = sub_AB92A0();
  v18 = v17;

LABEL_9:
  v19 = (a1 + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_subtitle);
  *v19 = v16;
  v19[1] = v18;

  v20 = *(v10 + 8);
  swift_beginAccess();
  *(v20 + 112) = v16;
  *(v20 + 120) = v18;

  sub_2EB704();
}

uint64_t sub_15C694()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_15C6CC()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_15C790(char a1)
{
  sub_AB3820();

  sub_15B894(a1);
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_15C824()
{

  return swift_deallocObject();
}

void sub_15C864()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_3B4724(v1);
}

uint64_t sub_15C8A4(void **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 + 16);
  v17 = *a3;
  v10 = *(a3 + 32);
  v16[0] = a2;
  v18 = v9;
  v19 = v10;
  v20 = 0;
  v11 = *a1;
  sub_15F84(a4, v15, &unk_DEA520);
  v12 = swift_allocObject();
  v12[2] = v11;
  sub_111814(v15, (v12 + 3));
  v12[15] = a5;
  v12[16] = a6;
  sub_15F84(a3, &v14, &qword_DF2690);
  v11;
  sub_307CC(a5);
  JSApplication.initiateSubscribeFlow(configuration:completion:)(v16, sub_15CD48, v12);

  return sub_12E1C(a3, &qword_DF2690);
}

void sub_15C9D0(void *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v10 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v13 - 8);
  v15 = v22 - v14;
  if (a1)
  {
    v22[1] = a5;
    sub_15F84(a3, v28, &unk_DEA520);
    v16 = type metadata accessor for PlaybackIntentDescriptor(0);
    memset(v26, 0, sizeof(v26));
    v27 = 0;
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    sub_15F84(v28, v24, &unk_DEA520);
    sub_15F84(v26, (v12 + 104), &unk_DE8E30);
    sub_15F84(v15, &v12[*(v10 + 28)], &unk_DEA510);
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *(v12 + 3) = 0u;
    *(v12 + 8) = 1;
    *(v12 + 9) = 0;
    *(v12 + 10) = 0;
    *(v12 + 11) = 0;
    v17 = a2;
    v18 = a1;
    sub_160B4(v24, v12, &unk_DEA520);
    *(v12 + 12) = 0;
    v23[3] = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    sub_16050(v12, boxed_opaque_existential_0);
    sub_12E1C(v15, &unk_DEA510);
    sub_12E1C(v26, &unk_DE8E30);
    sub_12E1C(v28, &unk_DEA520);
    memset(v25, 0, 32);
    v24[1] = 0;
    v24[2] = 0;
    v24[0] = a2;
    sub_160B4(v23, v25, &unk_DE8E40);
    v20 = *JSSegueCoordinator.shared.unsafeMutableAddressor();
    JSSegueCoordinator.perform(segue:with:)(v18, v24);

    if (a4)
    {
      v21 = v18;
      a4(a1);

      sub_16170(v24);
    }

    else
    {

      sub_16170(v24);
    }
  }
}

uint64_t sub_15CCB0()
{
  if (*(v0 + 88) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 72);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
    }

    if (*(v0 + 88))
    {
    }

    if (*(v0 + 104))
    {
    }
  }

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

void sub_15CD58(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v9 - 8);
  v11 = v66 - v10;
  v4[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_personType] = 1;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_name];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_subtitle];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_showsDisclosureIndicator] = 1;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_textComponents];
  *v14 = sub_15E820();
  v14[1] = v15;
  v14[2] = v16;
  *&v4[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell____lazy_storage___disclosureIndicator] = 0;
  v17 = type metadata accessor for PersonHorizontalCell();
  v77.receiver = v4;
  v77.super_class = v17;
  v18 = objc_msgSendSuper2(&v77, "initWithFrame:", a1, a2, a3, a4);
  v19 = &v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v20 = *v19;
  v21 = *(v19 + 1);
  *v19 = xmmword_AFB2E0;
  *(v19 + 1) = xmmword_AFB2F0;
  v78 = xmmword_AFB2E0;
  v79 = xmmword_AFB2F0;
  v75 = v20;
  v76 = v21;
  v22 = v18;
  if (sub_AB38D0())
  {
    [v22 setNeedsLayout];
  }

  v23 = vdupq_n_s64(0x4050000000000000uLL);
  *&v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v23;
  v73 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v24 = *&v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v25 = *(v24 + 80);
  v26 = *(v24 + 88);
  *(v24 + 80) = v23;
  sub_75614(v25, v26);
  sub_ABA670();
  v27 = sub_ABA680();
  (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
  sub_200394(v11);
  v28 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  v33 = v28[4];
  v71 = v28[5];
  v34 = v71;
  v72 = v33;
  v35 = &v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v70 = *&v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v69 = *&v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v68 = *&v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v67 = *&v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  v66[1] = *&v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
  v66[0] = *&v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
  *v35 = v29;
  *(v35 + 1) = v30;
  *(v35 + 2) = v31;
  *(v35 + 3) = v32;
  *(v35 + 4) = v33;
  *(v35 + 5) = v34;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  sub_2F1C8(v70, v69, v68, v67);
  v44 = v72;
  v45 = *&v22[v73];
  v46 = *(v45 + 168);
  v78 = *(v45 + 152);
  v79 = v46;
  v80 = *(v45 + 184);
  *(v45 + 152) = v29;
  *(v45 + 160) = v30;
  *(v45 + 168) = v31;
  *(v45 + 176) = v32;
  v47 = v71;
  *(v45 + 184) = v44;
  *(v45 + 192) = v47;
  v48 = v40;
  v49 = v41;
  v50 = v42;
  v51 = v43;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  v55 = v51;
  sub_75948(&v78);
  sub_B2A40(&v78);

  v56 = objc_opt_self();

  sub_74DD4([v56 systemGray3Color]);

  v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] = 1;
  [v22 setNeedsLayout];
  v57 = v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v57 & 1) == 0)
  {
    [v22 setNeedsLayout];
  }

  v58 = &v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
  v59 = *&v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
  v60 = v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment + 8];
  *v58 = 0;
  v58[8] = 0;
  if (v60 || (*&v75 = 0, v74 = v59, sub_7FD28(), (sub_AB38E0() & 1) == 0))
  {
    [v22 setNeedsLayout];
  }

  v61 = *&v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  v62 = *&v22[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_textComponents + 16];
  if (!(v62 >> 62))
  {
    v63 = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
    if (v63)
    {
      goto LABEL_10;
    }

LABEL_18:

    return;
  }

  v63 = sub_ABB060();
  if (!v63)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (v63 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v63; ++i)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v65 = sub_36003C(i, v62);
      }

      else
      {
        v65 = *(v62 + 8 * i + 32);
      }

      TextStackView.add(_:)(v65);
    }
  }
}

id sub_15D33C(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_personType);
  *(v1 + OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_personType) = result & 1;
  if (v2 != (result & 1))
  {
    return sub_15E120();
  }

  return result;
}

uint64_t sub_15D360(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_name];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_name];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_name + 8];
  *v4 = a1;
  v4[1] = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (v8 = v2, (sub_ABB3C0() & 1) != 0))
  {
  }

  else
  {
    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_textComponents];

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();
    if ((v8[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_personType] & 1) == 0)
    {
      sub_15E120();
    }

    [v8 setNeedsLayout];
  }
}

uint64_t sub_15D488(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

void sub_15D5A0()
{
  if ((v0[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_personType] & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog;
    if (!*&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog])
    {
      sub_13C80(0, &qword_E04530);
      v2 = *&v0[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_name];
      v3 = *&v0[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_name + 8];

      v4 = [v0 effectiveUserInterfaceLayoutDirection];
      v5 = v2;
      v6 = v0;
      v7 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v5, v3, v4, 0);

      if (v7)
      {
        v8 = *&v0[v1];
        *&v6[v1] = v7;
        v9 = v7;

        sub_74EA4(v7);
        sub_15D5A0();
      }
    }
  }
}

void sub_15D6D8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
  *(v2 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = a1;
  v5 = a1;

  sub_74EA4(a1);
  sub_15D5A0();
}

void sub_15D770()
{
  v1 = v0;
  v82.receiver = v0;
  v82.super_class = type metadata accessor for PersonHorizontalCell();
  objc_msgSendSuper2(&v82, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v79 = v7;
  v10 = v9;
  v11 = [v0 traitCollection];
  [v11 displayScale];
  [v0 effectiveUserInterfaceLayoutDirection];
  [v0 music_inheritedLayoutInsets];
  v83.origin.x = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v12, v13);
  x = v83.origin.x;
  width = v83.size.width;
  y = v83.origin.y;
  height = v83.size.height;
  CGRectGetMinX(v83);
  sub_76368(0, 0, 1);
  v76 = v16;
  sub_ABA470();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_ABA490();
  if (sub_76B28(v25, v26, v27, v28))
  {
    v84.origin.x = v18;
    v84.origin.y = v20;
    v84.size.width = v22;
    v84.size.height = v24;
    v29 = CGRectGetWidth(v84) + 0.0 + 12.0;
    v30 = x + v29;
    width = width - v29;
  }

  else
  {
    v30 = x;
  }

  v31 = &selRef__authenticateReturningError_;
  if (v0[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_showsDisclosureIndicator] != 1)
  {
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_15DEC8();
  [v0 effectiveUserInterfaceLayoutDirection];
  v33 = *(inited + 32);
  v34 = 0.0;
  if (v33)
  {
    if (v33 == &dword_0 + 1)
    {
      if ((v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton] & 1) == 0)
      {
        goto LABEL_25;
      }

      v37 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton];
      if (!v37)
      {
        goto LABEL_25;
      }

      v38 = v37;
      [v38 sizeThatFits:{v79, v10}];
      v85.size.width = v39;
      v41 = v40;
      v42 = 0.0;
      v85.origin.x = 0.0;
      v85.origin.y = 0.0;
      v85.size.height = v41;
      v43 = CGRectGetWidth(v85);
      if (v43 > 0.0)
      {
        v42 = v43;
      }

LABEL_23:
      v92.origin.x = v30;
      v92.origin.y = y;
      v92.size.height = height;
      v92.size.width = width;
      CGRectGetMaxX(v92);
      v93.origin.x = 0.0;
      v93.origin.y = 0.0;
      v93.size.width = v42;
      v93.size.height = v41;
      CGRectGetWidth(v93);
      v65 = [v1 traitCollection];
      [v65 displayScale];
      v78 = width;

      sub_ABA470();
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      sub_ABA490();
      [v38 setFrame:*&v41];
      v94.origin.x = v67;
      v94.origin.y = v69;
      v94.size.width = v71;
      v94.size.height = v73;
      v34 = CGRectGetWidth(v94) + 0.0;
      v95.origin.x = v67;
      v95.origin.y = v69;
      v95.size.width = v71;
      v60 = v78;
      v95.size.height = v73;
      v61 = CGRectGetWidth(v95);

      goto LABEL_24;
    }

    if (v33 != &dword_0 + 2)
    {
      v44 = v33;
      if ([v44 isHidden])
      {
        sub_7FCC4(v33);
        goto LABEL_25;
      }

      v45 = v44;
      [v45 sizeThatFits:{v79, v10}];
      v86.size.width = v46;
      v48 = v47;
      v49 = 0.0;
      v86.origin.x = 0.0;
      v86.origin.y = 0.0;
      v86.size.height = v48;
      v50 = CGRectGetWidth(v86);
      if (v50 > 0.0)
      {
        v49 = v50;
      }

      v87.origin.x = v30;
      v87.origin.y = y;
      v87.size.height = height;
      v87.size.width = width;
      CGRectGetMaxX(v87);
      v88.origin.x = 0.0;
      v88.origin.y = 0.0;
      v88.size.width = v49;
      v88.size.height = v48;
      CGRectGetWidth(v88);
      v51 = [v1 traitCollection];
      [v51 displayScale];
      v77 = width;

      sub_ABA470();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;
      sub_ABA490();
      [v45 setFrame:*&v48];
      v89.origin.x = v53;
      v89.origin.y = v55;
      v89.size.width = v57;
      v89.size.height = v59;
      v34 = CGRectGetWidth(v89) + 0.0;
      v90.origin.x = v53;
      v90.origin.y = v55;
      v90.size.width = v57;
      v60 = v77;
      v90.size.height = v59;
      v61 = CGRectGetWidth(v90);
      sub_7FCC4(v33);
      sub_7FCC4(v33);
LABEL_24:
      width = v60 - v61;
      goto LABEL_25;
    }

    v35 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl];
    if (v35)
    {
      v36 = v35;
      if ([v36 isHidden])
      {

        goto LABEL_25;
      }

      v38 = v36;
      [v38 sizeThatFits:{v79, v10}];
      v91.size.width = v62;
      v41 = v63;
      v42 = 0.0;
      v91.origin.x = 0.0;
      v91.origin.y = 0.0;
      v91.size.height = v41;
      v64 = CGRectGetWidth(v91);
      if (v64 > 0.0)
      {
        v42 = v64;
      }

      goto LABEL_23;
    }
  }

LABEL_25:

  if (v34 > 0.0)
  {
    width = width + -12.0;
  }

  v31 = &selRef__authenticateReturningError_;
LABEL_28:
  v74 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:{width, height, v76}];
  v75 = *&v1[v74];
  sub_ABA490();
  [v75 v31[262]];
}

id sub_15DEC8()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell____lazy_storage___disclosureIndicator;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell____lazy_storage___disclosureIndicator];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell____lazy_storage___disclosureIndicator];
  }

  else
  {
    v4 = sub_15DF2C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_15DF2C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 configurationWithTextStyle:UIFontTextStyleBody scale:1];
  v4 = [v2 configurationWithWeight:7];
  v5 = [v3 configurationByApplyingConfiguration:v4];

  v6 = v5;
  v7 = sub_AB9260();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  if (v8)
  {
    v9 = [objc_opt_self() tertiaryLabelColor];
    v10 = [v8 flattenedImageWithColor:v9];
    v11 = [v10 imageWithRenderingMode:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];
  v13 = [a1 contentView];
  [v13 addSubview:v12];

  return v12;
}

id sub_15E120()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_personType] == 1)
  {
    v2 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
    v66 = v2[5];
    v68 = v2[4];
    v7 = &v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v64 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v62 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
    v60 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
    v59 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
    *v7 = *v2;
    v7[1] = v4;
    v7[2] = v5;
    v7[3] = v6;
    v7[4] = v68;
    v7[5] = v66;
    v8 = v3;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    sub_2F1C8(v64, v62, v60, v59);
    v16 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
    v17 = *(v16 + 168);
    v70 = *(v16 + 152);
    v71 = v17;
    v72 = *(v16 + 184);
    *(v16 + 152) = v3;
    *(v16 + 160) = v4;
    *(v16 + 168) = v5;
    *(v16 + 176) = v6;
    *(v16 + 184) = v68;
    *(v16 + 192) = v66;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    sub_75948(&v70);
    sub_B2A40(&v70);
  }

  else
  {
    v26 = Artwork.Placeholder.person.unsafeMutableAddressor();
    v27 = *v26;
    v28 = v26[1];
    v30 = v26[2];
    v29 = v26[3];
    v67 = v26[5];
    v69 = v26[4];
    v31 = &v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v32 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
    v65 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v63 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
    v61 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
    *v31 = *v26;
    v31[1] = v28;
    v31[2] = v30;
    v31[3] = v29;
    v31[4] = v69;
    v31[5] = v67;
    v33 = v29;
    v34 = v27;
    v35 = v28;
    v36 = v30;
    v37 = v33;
    v38 = v34;
    v39 = v35;
    v40 = v36;
    sub_2F1C8(v65, v32, v63, v61);
    v41 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
    v42 = *(v41 + 168);
    v70 = *(v41 + 152);
    v71 = v42;
    v72 = *(v41 + 184);
    *(v41 + 152) = v27;
    *(v41 + 160) = v28;
    *(v41 + 168) = v30;
    *(v41 + 176) = v29;
    *(v41 + 184) = v69;
    *(v41 + 192) = v67;
    v43 = v37;
    v44 = v38;
    v45 = v39;
    v46 = v40;
    v47 = v43;
    v48 = v44;
    v49 = v45;
    v50 = v46;
    sub_75948(&v70);
    sub_B2A40(&v70);

    v51 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog;
    v52 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
    v53 = v52;
    v54 = v52;
    if (!v52)
    {
      sub_13C80(0, &qword_E04530);
      v55 = *&v1[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_name];
      v56 = *&v1[OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_name + 8];

      v54 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v55, v56, [v1 effectiveUserInterfaceLayoutDirection], 0);

      v53 = *&v1[v51];
    }

    *&v1[v51] = v54;
    v22 = v54;
    v57 = v52;

    sub_74EA4(v54);
    sub_15D5A0();
  }

  return [v1 setNeedsLayout];
}

void sub_15E500()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell____lazy_storage___disclosureIndicator);
}

id sub_15E590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonHorizontalCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PersonHorizontalCell()
{
  result = qword_DF26D0;
  if (!qword_DF26D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_15E738()
{
  result = qword_DF26E0;
  if (!qword_DF26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF26E0);
  }

  return result;
}

double sub_15E78C(void *a1, double a2)
{
  sub_15E820();
  sub_2F48A4(v4, a1, 0, 0);

  return a2;
}

uint64_t sub_15E820()
{
  sub_13C80(0, &qword_DE6EE0);
  v0 = sub_ABA560();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v22[0] = v1;
  *(&v22[0] + 1) = v4;
  v22[1] = xmmword_AF7C20;
  v23 = 0;
  v24 = 0;
  v25 = v0;
  v26 = 2;
  v27 = xmmword_AF8290;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(1701667182, 0xE400000000000000, v22);
  v15 = v3;
  v14 = v4;
  v13 = v0;
  sub_2F118(v22, v35);

  v6 = sub_ABA560();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v7 = qword_E718C8;
  v8 = qword_E718C8;
  v9 = [v2 clearColor];
  *&v16[0] = v7;
  *(&v16[0] + 1) = v9;
  v16[1] = xmmword_AF7C20;
  v17 = 0;
  v18 = 0;
  v19 = v6;
  v20 = 1;
  v21 = xmmword_AFB160;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF7C50;
  *(v11 + 32) = v5;
  *(v11 + 40) = v10;
  sub_2F118(v16, v35);

  v28[0] = v7;
  v28[1] = v9;
  v29 = xmmword_AF7C20;
  v30 = 0;
  v31 = 0;
  v32 = v6;
  v33 = 1;
  v34 = xmmword_AFB160;
  sub_2F174(v28);
  v35[0] = v1;
  v35[1] = v4;
  v36 = xmmword_AF7C20;
  v37 = 0;
  v38 = 0;
  v39 = v0;
  v40 = 2;
  v41 = xmmword_AF8290;
  sub_2F174(v35);
  return v5;
}

void sub_15EB1C()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_personType) = 1;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_name);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_showsDisclosureIndicator) = 1;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell_textComponents);
  *v3 = sub_15E820();
  v3[1] = v4;
  v3[2] = v5;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20PersonHorizontalCell____lazy_storage___disclosureIndicator) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_15EBE0()
{
  v1 = v0;
  sub_13C80(0, &qword_DF0600);
  v2 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() sharedBagProvider];
    sub_13C80(0, &qword_DEE560);
    v5 = static ICStoreRequestContext.current.getter();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v3;
    aBlock[4] = sub_15FF3C;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_47;
    v7 = _Block_copy(aBlock);
    v8 = v1;
    v9 = v3;

    [v4 getBagForRequestContext:v5 withCompletionHandler:v7];
    _Block_release(v7);
  }

  else
  {
    sub_15FBC4();
    swift_allocError();
    *v10 = xmmword_AFB300;
    v11 = sub_AB3040();

    [v0 finishWithError:v11];
  }
}

void sub_15EDC4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v63 = a4;
  v7 = sub_AB2A90();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v11 - 8);
  v13 = v58 - v12;
  v14 = sub_AB31C0();
  v15 = __chkstk_darwin(v14);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v58 - v19;
  v21 = __chkstk_darwin(v18);
  v24 = v58 - v23;
  if (!a1)
  {
    if (!a2)
    {
      sub_15FBC4();
      swift_allocError();
      *v35 = xmmword_AF82C0;
    }

    goto LABEL_11;
  }

  if (a2)
  {
LABEL_11:
    swift_errorRetain();
    v63 = sub_AB3040();

    [a3 finishWithError:v63];
LABEL_12:
    v34 = v63;

    return;
  }

  v59 = v8;
  v60 = v22;
  v61 = v21;
  v25 = ICURLBagKeyMusicCommon;
  v26 = a1;
  v27 = [v26 dictionaryForBagKey:v25];
  if (!v27)
  {
    v38 = sub_AB92A0();
    v40 = v39;
    sub_15FBC4();
    swift_allocError();
    *v41 = v38;
    v41[1] = v40;
    v63 = sub_AB3040();

    [a3 finishWithError:v63];

    goto LABEL_12;
  }

  v62 = v26;
  v28 = v27;
  v29 = sub_AB8FF0();

  v30 = v29;
  v64 = 0x666F725072657375;
  v65 = 0xEB00000000656C69;
  sub_ABAD10();
  if (!*(v29 + 16) || (v31 = sub_2EC004(v66), (v32 & 1) == 0))
  {
    sub_8085C(v66);
    goto LABEL_16;
  }

  sub_808B0(*(v29 + 56) + 32 * v31, v67);
  sub_8085C(v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_15FBC4();
    swift_allocError();
    *v36 = xmmword_B007C0;
    v37 = sub_AB3040();

    [a3 finishWithError:v37];

    return;
  }

  v58[2] = v65;
  sub_AB3180();
  v33 = v60;
  if ((*(v60 + 48))(v13, 1, v61) == 1)
  {
    sub_12E1C(v13, &unk_DF2AE0);

    goto LABEL_16;
  }

  v42 = v33;
  (*(v33 + 32))(v24, v13, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF8670);
  inited = swift_initStackObject();
  v58[1] = v30;
  v44 = inited;
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 1919251317;
  v45 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  v46 = [v63 stringValue];
  *(v44 + 48) = sub_AB92A0();
  *(v44 + 56) = v47;

  v48 = sub_96B2C(v44);
  swift_setDeallocating();
  sub_12E1C(v45, &qword_DEE730);
  URL.parametrize(_:)(v48, v20);

  (*(v42 + 16))(v17, v20, v61);
  sub_AB2A50();
  sub_13C80(0, &qword_DEE560);
  v49 = static ICStoreRequestContext.current.getter();
  v50 = objc_allocWithZone(ICStoreURLRequest);
  v51 = sub_AB2A30();
  v52 = [v50 initWithURLRequest:v51 requestContext:v49];
  (*(v59 + 8))(v10, v7);

  sub_13C80(0, &qword_E07CC0);
  v53 = static ICURLSessionManager.musicSession.getter();
  v54 = swift_allocObject();
  *(v54 + 16) = a3;
  v55 = a3;
  ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v52, sub_15FF94, v54);
  v56 = *(v42 + 8);
  v57 = v61;
  v56(v20, v61);
  v56(v24, v57);
}

void sub_15F4E8(void *a1, uint64_t a2, void *a3)
{
  v6 = [a1 urlResponse];
  v7 = v6;
  if (a1 && !a2)
  {
    v13 = a1;
    sub_15F7AC(v13);
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = v7;
  if ([v9 statusCode] != &stru_158.reloff + 1)
  {

LABEL_9:
    if (!a2)
    {
      sub_15FBC4();
      swift_allocError();
      *v12 = 0;
      v12[1] = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    goto LABEL_12;
  }

  sub_15FBC4();
  swift_allocError();
  *v11 = xmmword_B007D0;
  swift_errorRetain();

LABEL_12:
  v13 = sub_AB3040();

  [a3 finishWithError:v13];

LABEL_13:
}

void sub_15F7AC(void *a1)
{
  v2 = v1;
  v3 = [a1 parsedBodyDictionary];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB8FF0();

    v29 = 0x656C69666F7270;
    v30 = 0xE700000000000000;
    sub_ABAD10();
    if (*(v5 + 16) && (v6 = sub_2EC004(v27), (v7 & 1) != 0))
    {
      sub_808B0(*(v5 + 56) + 32 * v6, v25);
      sub_8085C(v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
      if (swift_dynamicCast())
      {
        v8 = v29;
        v29 = 0x72506C6169636F73;
        v30 = 0xEF6449656C69666FLL;
        sub_ABAD10();
        if (*(v8 + 16) && (v9 = sub_2EC004(v27), (v10 & 1) != 0))
        {
          sub_808B0(*(v8 + 56) + 32 * v9, v25);
          sub_8085C(v27);
          if (swift_dynamicCast())
          {
            v11 = sub_15FC18(v29, v30, v5);

            v12 = v11;
LABEL_15:
            v15 = sub_11C044(v8, v12, v25);
            UIScreen.Dimensions.size.getter(v15);
            v16 = &v2[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile];
            v17 = *&v2[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 112];
            v27[6] = *&v2[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 96];
            v27[7] = v17;
            v27[8] = *&v2[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 128];
            v28 = *&v2[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 144];
            v18 = *&v2[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 48];
            v27[2] = *&v2[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 32];
            v27[3] = v18;
            v19 = *&v2[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 80];
            v27[4] = *&v2[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 64];
            v27[5] = v19;
            v20 = *&v2[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 16];
            v27[0] = *&v2[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile];
            v27[1] = v20;
            v21 = v25[7];
            *(v16 + 6) = v25[6];
            *(v16 + 7) = v21;
            *(v16 + 8) = v25[8];
            *(v16 + 18) = v26;
            v22 = v25[3];
            *(v16 + 2) = v25[2];
            *(v16 + 3) = v22;
            v23 = v25[5];
            *(v16 + 4) = v25[4];
            *(v16 + 5) = v23;
            v24 = v25[1];
            *v16 = v25[0];
            *(v16 + 1) = v24;
            sub_12E1C(v27, &unk_E05300);
            [v2 finishWithError:0];

            return;
          }
        }

        else
        {
          sub_8085C(v27);
        }

        v12 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      sub_8085C(v27);
    }
  }

  sub_15FBC4();
  swift_allocError();
  *v13 = 0;
  v13[1] = 0;
  v14 = sub_AB3040();

  [v2 finishWithError:v14];
}

id sub_15FADC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaSocialProfileRequestOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_15FBC4()
{
  result = qword_DF2720;
  if (!qword_DF2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2720);
  }

  return result;
}

uint64_t sub_15FC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_ABAD10();
  if (!*(a3 + 16) || (v5 = sub_2EC004(v14), (v6 & 1) == 0))
  {
    sub_8085C(v14);
    return 0;
  }

  sub_808B0(*(a3 + 56) + 32 * v5, v15);
  sub_8085C(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  if (swift_dynamicCast())
  {
    sub_ABAD10();
    if (MEMORY[0xD000000000000021] && (v7 = sub_2EC004(v14), (v8 & 1) != 0))
    {
      sub_808B0(MEMORY[0xD000000000000049] + 32 * v7, v15);
      sub_8085C(v14);
      if (swift_dynamicCast())
      {
        sub_ABAD10();
        if (MEMORY[0x70756B636F7C] && (v9 = sub_2EC004(v14), (v10 & 1) != 0))
        {
          sub_808B0(MEMORY[0x70756B636FA4] + 32 * v9, v15);
          sub_8085C(v14);
          if (swift_dynamicCast())
          {

            sub_ABAD10();
            if (MEMORY[0x73746C75736582] && (v11 = sub_2EC004(v14), (v12 & 1) != 0))
            {
              sub_808B0(MEMORY[0x73746C757365AA] + 32 * v11, v15);
              sub_8085C(v14);
              if (swift_dynamicCast())
              {

                return a1;
              }
            }

            else
            {
              sub_8085C(v14);
            }

            return 0;
          }
        }

        else
        {
          sub_8085C(v14);
        }

        return 0;
      }
    }

    else
    {
      sub_8085C(v14);
    }
  }

  return 0;
}

uint64_t sub_15FEFC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_15FF5C()
{

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication34MediaSocialProfileRequestOperationC0F5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_15FFB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_160008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

Swift::Int sub_160074()
{
  sub_ABB5C0();
  sub_AB93F0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_1600DC()
{
  sub_AB93F0();

  return sub_AB93F0();
}

Swift::Int sub_16012C()
{
  sub_ABB5C0();
  sub_AB93F0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_160190(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_ABB3C0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
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

id sub_160234(uint64_t a1)
{
  v1[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle] = 0;
  v2 = &v1[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler];
  *v2 = 0;
  v2[1] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication13BiographyView_textDrawingCache] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___stackViews] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___cachedStackViewComponents] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication13BiographyView_listItems] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BiographyView();
  v3 = objc_msgSendSuper2(&v5, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_160CF4();
  if (qword_DE6CA8 != -1)
  {
    swift_once();
  }

  [v3 setBackgroundColor:qword_E718E8];

  return v3;
}

unint64_t sub_160360()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for BiographyView();
  objc_msgSendSuper2(&v29, "layoutSubviews");
  [v0 music_inheritedLayoutInsets];
  v2 = v1;
  v4 = v3;
  [v0 effectiveUserInterfaceLayoutDirection];
  v5 = OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle;
  v6 = v0[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle];
  [v0 bounds];
  v12 = UIEdgeInsetsInsetRect(v7, v8, v9, v10, v2, v4);
  v14 = v13;
  v16 = v15;
  if (v0[v5] == 1)
  {
    v17 = v11 + 42.0;
  }

  else
  {
    v17 = v11;
  }

  result = sub_160C40();
  v19 = result;
  if (!(result >> 62))
  {
    v20 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v20)
    {
      goto LABEL_6;
    }
  }

  result = sub_ABB060();
  v20 = result;
  if (!result)
  {
  }

LABEL_6:
  if (v20 >= 1)
  {
    for (i = 0; i != v20; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = sub_360398(i, v19);
      }

      else
      {
        v22 = *(v19 + 8 * i + 32);
      }

      v23 = v22;
      v30.origin.x = v12;
      v30.origin.y = v17;
      v30.size.width = v14;
      v30.size.height = v16;
      [v22 sizeThatFits:{CGRectGetWidth(v30), 1.79769313e308}];
      v25 = v24;
      v27 = v26;
      v28 = v23;
      sub_ABA490();
      [v28 setFrame:?];

      if (v6 > 1)
      {
        v14 = v14 - v25;
        v12 = v12 + v25 + 100.0;
      }

      else
      {
        v16 = v16 - v27;
        v17 = v17 + v27;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1606B4(double a1, double a2)
{
  [v2 music_inheritedLayoutInsets];
  v6 = v5;
  v8 = v7;
  [v2 bounds];
  v11 = UIEdgeInsetsInsetRect(v9, v10, a1, a2, v6, v8);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = sub_160C40();
  v19 = result;
  if (!(result >> 62))
  {
    v20 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v20)
    {
      goto LABEL_3;
    }
  }

  result = sub_ABB060();
  v20 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle;
    v23 = 0.0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = sub_360398(v21, v19);
      }

      else
      {
        v24 = *(v19 + 8 * v21 + 32);
      }

      v25 = v24;
      ++v21;
      v30.origin.x = v11;
      v30.origin.y = v13;
      v30.size.width = v15;
      v30.size.height = v17;
      [v24 sizeThatFits:{CGRectGetWidth(v30), 1.79769313e308}];
      v27 = v26;
      v28 = v2[v22];

      if (v23 > v27)
      {
        v29 = v23;
      }

      else
      {
        v29 = v27;
      }

      if (v28 >= 2)
      {
        v23 = v29;
      }

      else
      {
        v23 = v23 + v27;
      }
    }

    while (v20 != v21);
  }

  __break(1u);
  return result;
}

unint64_t sub_160988()
{
  result = sub_160C40();
  v2 = result;
  if (result >> 62)
  {
    result = sub_ABB060();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_22:
  }

  v3 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v17 = OBJC_IVAR____TtC16MusicApplication13BiographyView_textDrawingCache;
    swift_beginAccess();
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_360398(v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = *(v0 + v17);
      v8 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
      swift_beginAccess();
      v9 = *&v6[v8];
      *&v6[v8] = v7;
      if (v9)
      {
        if (v9 != v7)
        {
          if (v7)
          {
LABEL_16:
            v11 = v0;
            v12 = qword_DE6828;
            swift_retain_n();
            if (v12 != -1)
            {
              swift_once();
            }

            v13 = static TextDrawing.Cache.didInvalidateNotification;
            v14 = swift_allocObject();
            swift_unknownObjectWeakInit();
            type metadata accessor for NotificationObserver();
            swift_allocObject();
            v15 = v13;

            v10 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v15, v7, 1, 1, sub_161628, v14);

            v0 = v11;
          }

          else
          {

            v10 = 0;
          }

          *&v6[OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCacheInvalidationNotificationObserver] = v10;

          v16 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
          swift_beginAccess();
          *&v6[v16] = &_swiftEmptyDictionarySingleton;

          goto LABEL_7;
        }
      }

      else
      {
        if (v7)
        {
          goto LABEL_16;
        }

        swift_retain_n();
      }

LABEL_7:
      if (v3 == ++v4)
      {
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_160C40()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___stackViews))
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___stackViews);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    *(v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___stackViews) = _swiftEmptyArrayStorage;
  }

  return v1;
}

unint64_t sub_160C88()
{
  v1 = OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___cachedStackViewComponents;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___cachedStackViewComponents))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___cachedStackViewComponents);
  }

  else
  {
    v2 = sub_97C24(_swiftEmptyArrayStorage);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_160CF4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication13BiographyView_listItems];
  v3 = *(v2 + 16);
  v4 = OBJC_IVAR____TtC16MusicApplication13BiographyView_textDrawingCache;
  v28 = OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___cachedStackViewComponents;
  v29 = OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___stackViews;
  v32 = v2;

  v31 = v4;
  result = swift_beginAccess();
  v30 = v3;
  if (!v3)
  {
  }

  v6 = 0;
  while (v6 < *(v32 + 16))
  {
    v7 = (v32 + 32 + 32 * v6);
    v9 = *v7;
    v8 = v7[1];
    v11 = v7[2];
    v10 = v7[3];
    type metadata accessor for TextStackView();
    v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    v13 = [v12 init];
    v14 = *&v1[v31];
    v15 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v16 = *&v13[v15];
    *&v13[v15] = v14;
    swift_retain_n();
    sub_2E6210(v16);

    v17 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    v13[v17] = 0;
    [v1 addSubview:v13];
    v18 = sub_160C88();
    if (*(v18 + 16) && (v19 = sub_2EC668(v9, v8, v11, v10), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);
    }

    else
    {

      v21 = sub_1617F8(v9, v8, v11, v10, v6);
      v22 = *&v1[v28];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_93160(v21, v9, v8, v11, v10, isUniquelyReferenced_nonNull_native);

      *&v1[v28] = v22;
    }

    if (v21 >> 62)
    {
      result = sub_ABB060();
      v24 = result;
      if (!result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      if (!v24)
      {
        goto LABEL_17;
      }
    }

    if (v24 < 1)
    {
      goto LABEL_22;
    }

    for (i = 0; i != v24; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = sub_36003C(i, v21);
      }

      else
      {
        v26 = *(v21 + 8 * i + 32);
      }

      TextStackView.add(_:)(v26);
    }

LABEL_17:

    v33 = sub_160C40();
    v27 = v13;
    sub_AB9730();
    if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v33 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    ++v6;
    sub_AB97F0();

    *&v1[v29] = v33;

    if (v6 == v30)
    {
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_16114C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView_listItems);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = _swiftEmptyArrayStorage;
    while (v4 < *(v1 + 16))
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v12 = *(v5 - 3);
      v13 = *(v5 - 2);
      swift_bridgeObjectRetain_n();

      v14._countAndFlagsBits = 8236;
      v14._object = 0xE200000000000000;
      sub_AB94A0(v14);

      v15._countAndFlagsBits = v8;
      v15._object = v7;
      sub_AB94A0(v15);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_6B0F0(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_6B0F0((v9 > 1), v10 + 1, 1, v6);
        v6 = result;
      }

      ++v4;
      *(v6 + 2) = v10 + 1;
      v11 = &v6[16 * v10];
      *(v11 + 4) = v12;
      *(v11 + 5) = v13;
      v5 += 4;
      if (v2 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_11:

    return v6;
  }

  return result;
}

id sub_1612F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiographyView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1613F4()
{
  result = qword_DF2780;
  if (!qword_DF2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2780);
  }

  return result;
}

unint64_t sub_16144C()
{
  result = qword_DF2788;
  if (!qword_DF2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2788);
  }

  return result;
}

uint64_t sub_1614E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication13BiographyView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_160988();
}

unint64_t (*sub_161558(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1615BC;
}

unint64_t sub_1615BC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_160988();
  }

  return result;
}

uint64_t sub_1615F0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double sub_161630@<D0>(uint64_t a1@<X8>)
{
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v2 = qword_E718C8;
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 clearColor];
  *a1 = v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF7C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v3;
  *(a1 + 56) = 1;
  result = 26.0;
  *(a1 + 64) = xmmword_B008B0;
  return result;
}

double sub_161714@<D0>(uint64_t a1@<X8>)
{
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v2 = qword_E718D8;
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 clearColor];
  *a1 = v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF7C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v3;
  *(a1 + 56) = 1;
  result = 24.0;
  *(a1 + 64) = xmmword_B008C0;
  return result;
}

unint64_t sub_1617F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = _swiftEmptyArrayStorage;
  sub_161630(v16);
  *&v17[0] = 0x656E696C64616568;
  *(&v17[0] + 1) = 0xE800000000000000;
  v14[0] = a5;
  v18._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v18);

  v10 = v17[0];
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(v10, *(&v10 + 1), v16);
  swift_beginAccess();
  *(v11 + 112) = a3;
  *(v11 + 120) = a4;
  sub_2F118(v16, v17);

  sub_2EB704();

  sub_AB9730();
  if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v15 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  sub_161714(v17);
  strcpy(v14, "titlesubtitle");
  HIWORD(v14[1]) = -4864;
  v14[10] = a5;
  v19._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v19);

  swift_allocObject();
  v12 = TextStackView.Component.init(identifier:labelProperties:)(v14[0], v14[1], v17);
  swift_beginAccess();
  *(v12 + 112) = a1;
  *(v12 + 120) = a2;
  sub_2F118(v17, v14);

  sub_2EB704();

  sub_AB9730();
  if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v15 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  sub_2F174(v17);
  sub_2F174(v16);

  return v15;
}

void sub_161AC4()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___stackViews) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView____lazy_storage___cachedStackViewComponents) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13BiographyView_listItems) = _swiftEmptyArrayStorage;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_161B74(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 > 5u)
  {
    switch(a2)
    {
      case 6u:
        if (a1 != 6)
        {
          v2 = 3;
          goto LABEL_24;
        }

        return 1;
      case 7u:
        if (a1 != 7)
        {
          v2 = 4;
          goto LABEL_24;
        }

        return 1;
      case 8u:
        if (a1 != 8)
        {
          v2 = 5;
          goto LABEL_24;
        }

        return 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 3u:
        if (a1 != 3)
        {
          v2 = 0;
          goto LABEL_24;
        }

        return 1;
      case 4u:
        if (a1 != 4)
        {
          v2 = 1;
          goto LABEL_24;
        }

        return 1;
      case 5u:
        if (a1 != 5)
        {
          v2 = 2;
LABEL_24:
          if ((a1 - 3) >= 6u)
          {
            v5 = 6;
          }

          else
          {
            v5 = (a1 - 3);
          }

          v4 = v2 >= v5;
          goto LABEL_28;
        }

        return 1;
    }
  }

  if ((a1 - 3) < 6u)
  {
    v2 = 6;
    goto LABEL_24;
  }

  v4 = a2 >= a1;
LABEL_28:
  v6 = !v4;
  return v6 ^ 1u;
}

uint64_t sub_161C74(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 5u)
  {
    switch(a1)
    {
      case 6u:
        if (a2 != 6)
        {
          v2 = 3;
          goto LABEL_24;
        }

        return 1;
      case 7u:
        if (a2 != 7)
        {
          v2 = 4;
          goto LABEL_24;
        }

        return 1;
      case 8u:
        if (a2 != 8)
        {
          v2 = 5;
          goto LABEL_24;
        }

        return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 3u:
        if (a2 != 3)
        {
          v2 = 0;
          goto LABEL_24;
        }

        return 1;
      case 4u:
        if (a2 != 4)
        {
          v2 = 1;
          goto LABEL_24;
        }

        return 1;
      case 5u:
        if (a2 != 5)
        {
          v2 = 2;
LABEL_24:
          if ((a2 - 3) >= 6u)
          {
            v5 = 6;
          }

          else
          {
            v5 = (a2 - 3);
          }

          v4 = v2 >= v5;
          goto LABEL_28;
        }

        return 1;
    }
  }

  if ((a2 - 3) < 6u)
  {
    v2 = 6;
    goto LABEL_24;
  }

  v4 = a1 >= a2;
LABEL_28:
  v6 = !v4;
  return v6 ^ 1u;
}

BOOL sub_161D74(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 > 5u)
  {
    switch(a2)
    {
      case 6u:
        if (a1 != 6)
        {
          v2 = 3;
          goto LABEL_24;
        }

        return 0;
      case 7u:
        if (a1 != 7)
        {
          v2 = 4;
          goto LABEL_24;
        }

        return 0;
      case 8u:
        if (a1 != 8)
        {
          v2 = 5;
          goto LABEL_24;
        }

        return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 3u:
        if (a1 != 3)
        {
          v2 = 0;
          goto LABEL_24;
        }

        return 0;
      case 4u:
        if (a1 != 4)
        {
          v2 = 1;
          goto LABEL_24;
        }

        return 0;
      case 5u:
        if (a1 != 5)
        {
          v2 = 2;
          goto LABEL_24;
        }

        return 0;
    }
  }

  if ((a1 - 3) >= 6u)
  {
    return a2 < a1;
  }

  v2 = 6;
LABEL_24:
  if ((a1 - 3) >= 6u)
  {
    v4 = 6;
  }

  else
  {
    v4 = (a1 - 3);
  }

  return v2 < v4;
}

BOOL sub_161E74(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = sub_2F34EC(v2);

  if (qword_DE68D0 != -1)
  {
    swift_once();
  }

  v4 = *(sub_10E928(qword_E71068, v3) + 2);

  return v4 != 0;
}

uint64_t sub_161F08()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

Swift::Int sub_162148()
{
  result = sub_10944(&off_CEF7D0);
  qword_E71068 = result;
  return result;
}

Swift::Int sub_162170(unsigned __int8 a1)
{
  sub_ABB5C0();
  v2 = a1 - 3;
  if ((a1 - 3) >= 6u)
  {
    sub_ABB5D0(6uLL);
    v2 = a1;
  }

  sub_ABB5D0(v2);
  return sub_ABB610();
}

_UNKNOWN **sub_1621D8@<X0>(void *a1@<X8>)
{
  result = sub_164018();
  *a1 = result;
  return result;
}

void sub_162238()
{
  v1 = *v0;
  v2 = v1 - 3;
  if ((v1 - 3) >= 6)
  {
    sub_ABB5D0(6uLL);
    v2 = v1;
  }

  sub_ABB5D0(v2);
}

Swift::Int sub_162280()
{
  v1 = *v0;
  sub_ABB5C0();
  v2 = v1 - 3;
  if ((v1 - 3) >= 6)
  {
    sub_ABB5D0(6uLL);
    v2 = v1;
  }

  sub_ABB5D0(v2);
  return sub_ABB610();
}