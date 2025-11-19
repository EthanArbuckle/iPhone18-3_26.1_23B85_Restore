uint64_t sub_1001441DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_100144224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100144274(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = sub_10076BEDC();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_beginAccess();
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        sub_10076BEEC();
        sub_10076BE9C();
        (*(v6 + 8))(v8, v17);
        sub_10076BFCC();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        sub_100760B7C();

        sub_10000CFBC(v20, &qword_100943310);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

void sub_100144494(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1)
  {
    v7 = a1;
    sub_10070E848(v7, a6);
  }
}

double sub_1001444EC(double a1, uint64_t a2, void *a3)
{
  v5 = sub_10077164C();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = sub_100765ECC();
  v14 = v13;
  v39[1] = sub_100765F2C();
  v16 = v15;
  v39[2] = sub_100765F3C();
  v47 = v17;
  v44 = a1;
  sub_100770ACC();
  if (qword_10093F730 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v10, qword_10099CF20);
  if (qword_10093F748 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v7, qword_10099CF68);
  v45 = v16;
  if (v16)
  {
    v18 = v14;
    v19 = a3;
    v20 = sub_10076C04C();
    v49 = v20;
    v50 = sub_100146C58(&qword_100943230, &type metadata accessor for Feature);
    v21 = sub_10000DB7C(v48);
    (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
    sub_10076C90C();
    sub_10000CD74(v48);
    a3 = v19;
    v14 = v18;
    sub_10076991C();
    sub_10076D42C();
  }

  v22 = v47;
  v23 = v9;
  if (qword_10093F738 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v10, qword_10099CF38);
  (*(v11 + 16))(v46, v24, v10);
  v25 = v40;
  if (qword_10093F750 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v7, qword_10099CF80);
  (*(v25 + 16))(v23, v26, v7);
  if (v22)
  {
    v27 = sub_10076C04C();
    v49 = v27;
    v50 = sub_100146C58(&qword_100943230, &type metadata accessor for Feature);
    v28 = sub_10000DB7C(v48);
    (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
    sub_10076C90C();
    sub_10000CD74(v48);
    v29 = v46;
    sub_10076991C();
    sub_10076D42C();
    (*(v25 + 8))(v23, v7);
    (*(v11 + 8))(v29, v10);
  }

  else
  {
    (*(v25 + 8))(v23, v7);
    (*(v11 + 8))(v46, v10);
  }

  v30 = v43;
  v31 = v41;
  if (qword_10093F728 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v10, qword_10099CF08);
  if (qword_10093F740 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v7, qword_10099CF50);
  if (v14)
  {
    v32 = sub_10076C04C();
    v49 = v32;
    v50 = sub_100146C58(&qword_100943230, &type metadata accessor for Feature);
    v33 = sub_10000DB7C(v48);
    (*(*(v32 - 8) + 104))(v33, enum case for Feature.measurement_with_labelplaceholder(_:), v32);
    sub_10076C90C();
    sub_10000CD74(v48);
    sub_10076991C();
    sub_10076D42C();
  }

  v34 = [a3 traitCollection];
  sub_10076D17C();
  sub_100016F40(0, &qword_100942F00);
  v35 = sub_100770B3C();
  sub_10076D97C();
  sub_100770B4C();

  v36 = *(v42 + 8);
  v36(v31, v30);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v7, qword_1009A2350);
  sub_10076D17C();
  sub_10076D40C();
  v36(v31, v30);
  if (qword_10093F710 != -1)
  {
    swift_once();
  }

  v37 = sub_10076D39C();
  sub_10000A61C(v37, qword_10099CEE0);
  sub_10076D35C();
  sub_10076D36C();

  return v44;
}

id sub_100144E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v222 = a5;
  v223 = a4;
  v215 = a3;
  v225 = a1;
  v226 = a2;
  v15 = sub_10076BF6C();
  __chkstk_darwin(v15 - 8);
  v195 = &v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_10076BEDC();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v18 - 8);
  v210 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v209 = &v191 - v21;
  v22 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v22 - 8);
  v208 = &v191 - v23;
  v24 = sub_1007611EC();
  __chkstk_darwin(v24 - 8);
  v207 = &v191 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v206 = &v191 - v27;
  v28 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v28 - 8);
  v205 = &v191 - v29;
  v203 = sub_10076121C();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v204 = &v191 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_10076481C();
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v211 = &v191 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_10076B96C();
  v228 = *(v231 - 8);
  __chkstk_darwin(v231);
  v230 = &v191 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_10076361C();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v191 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000A5D4(&qword_10094A430);
  __chkstk_darwin(v34 - 8);
  v216 = &v191 - v35;
  v218 = sub_100761D4C();
  v217 = *(v218 - 8);
  __chkstk_darwin(v218);
  v201 = &v191 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v214 = &v191 - v38;
  v229 = sub_100767FDC();
  v227 = *(v229 - 8);
  __chkstk_darwin(v229);
  v220 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v221 = &v191 - v41;
  __chkstk_darwin(v42);
  v44 = &v191 - v43;
  v45 = sub_10076D39C();
  v224 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10076DBBC();
  v49 = *(v48 - 8);
  *&v50 = __chkstk_darwin(v48).n128_u64[0];
  v52 = &v191 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = [a6 contentView];
  [v53 setLayoutMargins:{a7, a8, a9, a10}];

  v232[0] = a6;
  v54 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v55 = sub_100146C58(&qword_10094A438, type metadata accessor for EditorialSearchResultCollectionViewCell);
  v56 = a6;
  v199 = v55;
  sub_10077140C();
  sub_100763EDC();
  sub_100016C74(v233);
  v200 = v54;
  sub_10076422C();
  if (qword_10093F710 != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v57 = sub_10000A61C(v45, qword_10099CEE0);
    v58 = v224;
    (*(v224 + 16))(v47, v57, v45);
    v191 = v47;
    sub_10076DBCC();
    sub_10076D2AC();
    v60 = v59;
    v62 = v61;
    (*(v49 + 8))(v52, v48);
    sub_100765F1C();
    v63 = v229;
    v64 = (*(v227 + 88))(v44, v229);
    v65 = v45;
    v219 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v64 == enum case for EditorialSearchResultType.category(_:) || v64 == enum case for EditorialSearchResultType.collection(_:) || v64 == enum case for EditorialSearchResultType.story(_:) || v64 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v56[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 1;
      [*&v56[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialIcon] setHidden:0];
      [v56 setNeedsLayout];
    }

    else
    {
      v56[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 0;
      [*&v56[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialIcon] setHidden:1];
      [v56 setNeedsLayout];
      (*(v227 + 8))(v44, v63);
    }

    v66 = sub_100765ECC();
    sub_1000E7144(v66, v67);
    sub_100765F2C();
    v69 = v68;
    v70 = *&v56[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_titleLabel];
    if (v68)
    {
      v71 = sub_10076FF6C();
    }

    else
    {
      v71 = 0;
    }

    [v70 setText:v71];

    [v70 setHidden:v69 == 0];
    [v56 setNeedsLayout];
    sub_100765F3C();
    v73 = v72;
    v74 = *&v56[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel];
    if (v72)
    {
      v75 = sub_10076FF6C();
    }

    else
    {
      v75 = 0;
    }

    [v74 setText:v75];

    [v74 setHidden:v73 == 0];
    [v56 setNeedsLayout];
    v76 = sub_100765EEC();
    v77 = v229;
    if (!v76)
    {
      goto LABEL_17;
    }

    v78 = v76;
    v79 = v216;
    sub_100765EBC();
    v80 = v217;
    v81 = v218;
    if ((*(v217 + 48))(v79, 1, v218) == 1)
    {
      break;
    }

    v52 = v214;
    (*(v80 + 32))(v214, v79, v81);
    v95 = v201;
    (*(v80 + 16))(v201, v52, v81);
    v96 = (*(v80 + 88))(v95, v81);
    if (v96 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_23;
    }

    if (v96 == enum case for ArtworkGridType.large(_:))
    {
      v97 = 1;
    }

    else if (v96 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v97 = 2;
    }

    else
    {
      if (v96 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v80 + 8))(v95, v81);
LABEL_23:
        v97 = 0;
        goto LABEL_42;
      }

      v97 = 3;
    }

LABEL_42:
    v112 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v113 = sub_10070F0AC(v97, 0.0, 0.0, 0.0, 0.0);
    sub_1004470F8();
    v114 = v113[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType];
    v115.f64[0] = v60;
    v116 = sub_10070E7C0(v114, v115, v62);
    v49 = *(v78 + 16);
    if (v116 < v49)
    {
      v117.f64[0] = v60;
      v118 = sub_10070E7C0(v114, v117, v62);
      if ((v118 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v49 >= v118)
      {
        if (v49 == v118)
        {
LABEL_59:
          v48 = v78;
        }

        else
        {
          v213 = v113;
          v216 = v56;
          v119 = v78 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
          v226 = v78;
          sub_1002349D8(v78, v119, 0, (2 * v118) | 1);
          v48 = v120;
LABEL_47:

          v56 = v216;
          v52 = v214;
          v113 = v213;
        }

        *&v113[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = *(v48 + 16);
        sub_10070EEE8();
        v125 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v126 = swift_allocObject();
        v126[2] = v113;
        v126[3] = v125;
        v127 = v222;
        v126[4] = v222;
        v128 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v129 = swift_allocObject();
        v129[2] = v113;
        v129[3] = v128;
        v129[4] = v127;
        v233[0] = v56;
        v130 = v113;
        swift_retain_n();
        v131 = v56;
        v132 = v130;
        sub_10077140C();
        sub_100763EBC();

        sub_10000CFBC(v232, &qword_100943310);
        sub_100016C74(v233);
        v133 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_artworkGrid;
        v134 = *&v131[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_artworkGrid];
        v135 = v132;
        if (v134)
        {
          [v134 removeFromSuperview];
          v136 = *&v131[v133];
        }

        else
        {
          v136 = 0;
        }

        v137 = v218;
        *&v131[v133] = v132;
        v138 = v132;

        sub_1000E775C();
        (*(v217 + 8))(v52, v137);
LABEL_64:
        v77 = v229;
        goto LABEL_65;
      }

      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v116 <= v49)
    {
      goto LABEL_59;
    }

    v224 = v116 - v49;
    if (v116 - v49 < 0)
    {
      goto LABEL_103;
    }

    if (v49)
    {
      v213 = v113;
      v216 = v56;

      v48 = v78;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_52;
      }

      goto LABEL_105;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    v48 = sub_10049DDF4(0, v49 + 1, 1, v78);
LABEL_52:
    v121 = 0;
    v47 = ((*(v228 + 80) + 32) & ~*(v228 + 80));
    v226 = v78;
    v45 = &v47[v78];
    v56 = (v228 + 16);
    v44 = (v228 + 32);
    while (1)
    {
      v122 = v121 % v49;
      if (v121 % v49 < 0)
      {
        break;
      }

      if (v122 >= *(v226 + 16))
      {
        goto LABEL_98;
      }

      v52 = *(v228 + 72);
      (*(v228 + 16))(v230, v45 + v52 * v122, v231);
      v124 = *(v48 + 16);
      v123 = *(v48 + 24);
      if (v124 >= v123 >> 1)
      {
        v48 = sub_10049DDF4(v123 > 1, v124 + 1, 1, v48);
      }

      ++v121;
      *(v48 + 16) = v124 + 1;
      (*v44)(&v47[v48 + v124 * v52], v230, v231);
      if (v224 == v121)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
  }

  sub_10000CFBC(v79, &qword_10094A430);
LABEL_17:
  if (!sub_100765EAC())
  {
    if (sub_100765EDC())
    {
      sub_10075FD2C();
      v98 = sub_10075FB2C();
      [v98 setContentMode:2];
      sub_10076BFBC();
      sub_100146C58(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();
      v99 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView;
      v100 = *&v56[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView];
      v101 = v98;
      if (v100)
      {
        [v100 removeFromSuperview];
        v102 = v56;
        v103 = *&v56[v99];
      }

      else
      {
        v102 = v56;
        v103 = 0;
      }

      *&v102[v99] = v98;
      v110 = v98;

      v111 = [v102 contentView];
      [v111 addSubview:v110];

      [v102 setNeedsLayout];

      v56 = v102;
    }

    else
    {
      if (!sub_100765E9C())
      {
        goto LABEL_65;
      }

      v104 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10076BEFC();
      v105 = v191;
      sub_10076D3AC();
      sub_10076D31C();
      (*(v58 + 8))(v105, v45);
      v106 = v192;
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v193 + 8))(v106, v194);
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v104 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_100146C58(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();
      v107 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView;
      v108 = *&v56[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
      v109 = v104;
      if (v108)
      {
        [v108 removeFromSuperview];
        v108 = *&v56[v107];
      }

      *&v56[v107] = v104;
      v190 = v104;

      sub_1000E746C();
    }

    goto LABEL_64;
  }

  (*(v202 + 104))(v204, enum case for VideoFillMode.scaleAspectFill(_:), v203);
  sub_10076B84C();
  sub_10076BEFC();
  v82 = v205;
  sub_10076D3AC();

  (*(v58 + 56))(v82, 0, 1, v65);
  sub_10076B7EC();
  sub_10076B82C();
  sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  v83 = v211;
  sub_1007647FC();
  sub_100762F0C();
  sub_10076F5CC();
  v84 = v233[0];
  sub_10076B7CC();
  v85 = v208;
  sub_10076B85C();
  v86 = sub_10075DB7C();
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = v209;
  sub_10076B81C();
  v88 = v210;
  sub_10076B80C();
  type metadata accessor for VideoView();
  sub_100146C58(&qword_100942810, type metadata accessor for VideoView);
  v231 = v84;
  v89 = sub_100762EEC();
  sub_10000CFBC(v88, &unk_10094C030);
  sub_10000CFBC(v87, &unk_10094C030);
  sub_10000CFBC(v85, &unk_1009435D0);
  sub_10000CFBC(v233, &qword_100943310);
  sub_1000E9610();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v91 = Strong;
    v92 = [v56 contentView];
    [v92 addSubview:v91];
  }

  [v56 setNeedsLayout];

  v93 = swift_unknownObjectWeakLoadStrong();
  if (v93)
  {
    v94 = v93;
    sub_10076B84C();
    sub_10076BFCC();

    sub_100146C58(&unk_100942840, type metadata accessor for VideoView);
    sub_100760B8C();

    (*(v212 + 8))(v83, v213);
  }

  else
  {
    (*(v212 + 8))(v83, v213);
  }

  v77 = v229;
LABEL_65:
  v139 = v221;
  sub_100765F1C();
  v140 = v227;
  v141 = v220;
  (*(v227 + 104))(v220, v219, v77);
  sub_100146C58(&qword_10094A440, &type metadata accessor for EditorialSearchResultType);
  sub_10077018C();
  sub_10077018C();
  if (v233[0] == v232[0] && v233[1] == v232[1])
  {
    v142 = *(v140 + 8);
    v142(v141, v77);
    v142(v139, v77);

    v143 = &selRef_initWithTabBarSystemItem_tag_;
LABEL_69:
    v147 = sub_100765F0C();
    if (v147 >> 62)
    {
      v148 = sub_10077158C();
    }

    else
    {
      v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v148)
    {
      v149 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
      v150 = *&v56[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
      if (v150)
      {
        goto LABEL_73;
      }

      v162 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v163 = *&v56[v149];
      if (v163)
      {
        [v163 removeFromSuperview];
        v164 = *&v56[v149];
      }

      else
      {
        v164 = 0;
      }

      *&v56[v149] = v162;
      v177 = v162;

      if (v177)
      {
        v178 = v177[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
        v177[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 6;
        sub_1004B413C(v178);
        v179 = [v56 contentView];
        [v179 addSubview:v177];
      }

      [v56 setNeedsLayout];

      v180 = *&v56[v149];
      if (v180)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v181 = v180;
        sub_10076F63C();
        v182 = v233[0];
        v183 = v56;
        v184 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v185 = *&v181[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v186 = v185;
        sub_1004B57F0(v182);
        v187 = *&v181[v184];
        *&v181[v184] = v182;
        v56 = v183;
        v143 = &selRef_initWithTabBarSystemItem_tag_;
        v188 = v182;

        sub_1004B5954(v185);
        v189 = *&v56[v149];
        if (v189)
        {
          *(v189 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_1008887C0;
          swift_unknownObjectWeakAssign();
          v150 = *&v56[v149];
          if (v150)
          {
LABEL_73:
            v151 = v150;
            v152 = [v56 contentView];
            [v152 bringSubviewToFront:v151];

            v153 = sub_100765F0C();
            sub_1004B1900(v153);
          }
        }
      }
    }

    v154 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
    v155 = *&v56[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
    if (v155)
    {
      v156 = v155;
      v157 = sub_100765F4C();
      v158 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v159 = *&v156[v158];
      if (v159)
      {
        v160 = v143[196];
        v161 = v159;
        [v161 v160];
      }

      else
      {

        v156 = v157;
      }

      v165 = *&v56[v154];
      if (v165)
      {
        v166 = v165;
        v167 = v196;
        sub_100765EFC();
        v168 = sub_1007635FC();
        (*(v197 + 8))(v167, v198);
        [v166 setOverrideUserInterfaceStyle:v168];
      }
    }

    v169 = OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView;
    v170 = *&v56[OBJC_IVAR____TtC20ProductPageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView];
    if (v170)
    {
      v171 = v170;
      sub_1007638EC();

      v172 = *&v56[v169];
      if (v172)
      {
        v173 = v172;
        if (!sub_100765F4C())
        {
          v174 = [objc_opt_self() clearColor];
        }

        sub_1007638DC();
      }
    }
  }

  else
  {
    v144 = sub_10077167C();
    v145 = v77;
    v146 = *(v140 + 8);
    v146(v141, v145);
    v146(v139, v145);

    v143 = &selRef_initWithTabBarSystemItem_tag_;
    if (v144)
    {
      goto LABEL_69;
    }
  }

  sub_100016F40(0, &qword_100942F10);
  v175 = sub_100770D2C();
  [v56 v143[196]];

  return [v56 setNeedsLayout];
}

uint64_t sub_100146C58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100146CA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100146CE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100146D30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100146DA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  *v6 = UIFontTextStyleBody;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v12[3] = v3;
  v12[4] = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v12);
  (*(v4 + 16))(v8, v6, v3);
  v9 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100146FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a6;
  v26 = a5;
  v24 = a3;
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1007711AC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v18);
  v20 = &v24 - v19;
  sub_10000A570(a1, v28);
  sub_10000A5D4(&qword_1009575A0);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v16, 0, 1, AssociatedTypeWitness);
    (*(v17 + 32))(v20, v16, AssociatedTypeWitness);
    (*(a9 + 128))(v20, a2, v24, v25, v26, v27, a7, a9);
    return (*(v17 + 8))(v20, AssociatedTypeWitness);
  }

  else
  {
    v22(v16, 1, 1, AssociatedTypeWitness);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_100147214(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100147290(a1, a2, a3 & 1, a4, v8, WitnessTable);
}

uint64_t sub_100147290(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectRetain();
  sub_10000A5D4(&qword_10094A448);
  result = swift_dynamicCast();
  if (result)
  {
    (*(a6 + 136))(v10, a3 & 1, a4, a6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100147380(uint64_t a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;
    if (a3)
    {
      swift_unknownObjectRetain();
      sub_10010A4C0(v5);

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t sub_1001474C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10000A570(a1, v17);
  sub_10000A5D4(&qword_1009575A0);
  a9(0);
  result = swift_dynamicCast();
  if (result)
  {
    a10(v16, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_10014758C()
{
  swift_getObjectType();

  return swift_dynamicCastClass();
}

void sub_1001475E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  sub_10000A570(a1, v23);
  sub_10000A5D4(&qword_1009575A0);
  sub_100766CFC();
  if (swift_dynamicCast())
  {
    v6[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_sizeCategory] = a5;
    v9 = a5;
    [v6 setNeedsLayout];
    sub_100527CDC(a2);
    sub_10051D0DC(v10);
    v11 = sub_10076C7BC();
    [v6 setBackgroundColor:v11];

    v12 = [v6 traitCollection];
    if (v9 != 4)
    {
      sub_10076C31C();
      sub_10076C31C();
    }

    [v12 layoutDirection];
    sub_1007708DC();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v6 setLayoutMargins:{v14, v16, v18, 15.0}];
    v19 = *&v6[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label];
    sub_100766CEC();
    sub_10076B8EC();
    v21 = v20;

    if (v21)
    {
      v22 = sub_10076FF6C();
    }

    else
    {
      v22 = 0;
    }

    [v19 setText:v22];
  }
}

uint64_t sub_100147808(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v9 = sub_10076C5FC();
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_10094A450);
  __chkstk_darwin(v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_10076C7EC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076852C();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v51 = v9;
  v19 = a4;
  v54 = aBlock[6];
  sub_10076850C();
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    (*(v15 + 16))(v17, a3, v14);
    if (v20(v13, 1, v14) != 1)
    {
      sub_1001482B4(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
  }

  v21 = v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_sizeCategory] = a4;
  if (a4 == 7)
  {
    if (v21 == 7)
    {
      goto LABEL_11;
    }
  }

  else if (v21 != 7)
  {
    switch(a4)
    {
      case 6u:
        if (v21 == 6)
        {
          goto LABEL_11;
        }

        break;
      case 5u:
        if (v21 == 5)
        {
          goto LABEL_11;
        }

        break;
      case 4u:
        if (v21 == 4)
        {
          goto LABEL_11;
        }

        break;
      default:
        if ((v21 - 7) <= 0xFFFFFFFC && v21 == a4)
        {
          goto LABEL_11;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_11:
  v52 = v15;
  v53 = v14;
  v22 = sub_10076C7BC();
  [v5 setBackgroundColor:v22];

  v23 = [v5 traitCollection];
  if (v19 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v23 layoutDirection];
  sub_1007708DC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v5 setLayoutMargins:{v25, v27, v29, v31}];
  sub_10076851C();
  v50 = *&v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label];
  v32 = sub_10076C5AC();
  v33 = [v5 traitCollection];
  v34 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v32];
  v35 = [v32 length];
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = v33;
  *(v36 + 32) = v34;
  *(v36 + 40) = 1;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1000275EC;
  *(v37 + 24) = v36;
  aBlock[4] = sub_1000ACB04;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  aBlock[3] = &unk_100889C60;
  v38 = _Block_copy(aBlock);
  v39 = v33;
  v40 = v34;

  [v32 enumerateAttributesInRange:0 options:v35 usingBlock:{0x100000, v38}];

  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
  }

  else
  {
    v41 = v50;
    [v50 setAttributedText:v40];

    v42 = v55;
    sub_10076C60C();
    v43 = v56;
    v44 = v51;
    v45 = (*(v56 + 88))(v42, v51);
    if (v45 == enum case for Paragraph.Alignment.left(_:))
    {
      v46 = 0;
      v48 = v52;
      v47 = v53;
    }

    else
    {
      v48 = v52;
      v47 = v53;
      if (v45 == enum case for Paragraph.Alignment.center(_:))
      {
        v46 = 1;
      }

      else if (v45 == enum case for Paragraph.Alignment.right(_:))
      {
        v46 = 2;
      }

      else if (v45 == enum case for Paragraph.Alignment.justified(_:))
      {
        v46 = 3;
      }

      else if (v45 == enum case for Paragraph.Alignment.localized(_:))
      {
        v46 = 4;
      }

      else
      {
        (*(v43 + 8))(v42, v44);
        v46 = 0;
      }
    }

    [v41 setTextAlignment:v46];
    v49 = sub_10076C7CC();
    [v41 setTextColor:v49];

    return (*(v48 + 8))(v17, v47);
  }

  return result;
}

uint64_t sub_100147F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  v11 = sub_10076C7EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v32);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007696EC();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v16 = v5[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v16 == 7)
    {
      goto LABEL_7;
    }
  }

  else if (v16 != 7)
  {
    switch(a5)
    {
      case 6u:
        if (v16 == 6)
        {
          goto LABEL_7;
        }

        break;
      case 5u:
        if (v16 == 5)
        {
          goto LABEL_7;
        }

        break;
      case 4u:
        if (v16 == 4)
        {
          goto LABEL_7;
        }

        break;
      default:
        if ((v16 - 7) <= 0xFFFFFFFC && v16 == a5)
        {
          goto LABEL_7;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_7:
  v17 = [v5 traitCollection];
  if (a5 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v17 layoutDirection];
  sub_1007708DC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v5 setLayoutMargins:{v19, v21, v23, v25}];
  v26 = sub_100312114(a4);
  [v6 setBackgroundColor:v26];

  (*(v12 + 104))(v14, enum case for TodayCard.Style.white(_:), v11);
  sub_10005AE00();
  sub_10077018C();
  sub_10077018C();
  if (v32[0] == v31[1] && v32[1] == v31[2])
  {
    v27 = 1;
  }

  else if (sub_10077167C())
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  (*(v12 + 8))(v14, v11);

  [v6 setOverrideUserInterfaceStyle:v27];
  v28 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  v29 = sub_1007696DC();
  sub_10068A7F8(v29, a2);

  sub_1004D63F8();
}

uint64_t sub_1001482B4(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10094A450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014831C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100148374(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10014838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  sub_10000A570(a1, v22);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007696EC();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v9 = v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v9 == 7)
    {
      goto LABEL_7;
    }
  }

  else if (v9 != 7)
  {
    switch(a5)
    {
      case 6u:
        if (v9 == 6)
        {
          goto LABEL_7;
        }

        break;
      case 5u:
        if (v9 == 5)
        {
          goto LABEL_7;
        }

        break;
      case 4u:
        if (v9 == 4)
        {
          goto LABEL_7;
        }

        break;
      default:
        if ((v9 - 7) <= 0xFFFFFFFC && v9 == a5)
        {
          goto LABEL_7;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_7:
  v10 = [v5 traitCollection];
  if (a5 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v10 layoutDirection];
  sub_1007708DC();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v5 setLayoutMargins:{v12, v14, v16, v18}];
  v19 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  v20 = sub_1007696DC();
  sub_10068A7F8(v20, a2);
}

uint64_t sub_1001485D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v6 = sub_10076469C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100946720);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17 = *(v11 + 8);
  v17(v15, v10);
  swift_beginAccess();
  v18 = *(v4 + 16);
  if (!*(v18 + 16))
  {
    goto LABEL_5;
  }

  v19 = sub_10060FEFC(v32);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    sub_100016C74(v32);
    (*(v7 + 16))(v9, v16, v6);
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(0);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v17;
    v22 = OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
    v23 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
    (*(v7 + 32))(v21 + OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v9, v6);
    swift_unknownObjectWeakAssign();
    *(v21 + OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_objectGraph) = v30;

    v24 = v28;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v27(v24, v10);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_10024A5D0(v21, v32, isUniquelyReferenced_nonNull_native);
    *(v4 + 16) = v31;
    swift_endAccess();
    sub_100016C74(v32);
    return v21;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  sub_100016C74(v32);

  return v21;
}

uint64_t sub_100148990()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001489F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100766EDC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for FlowPresentationContext.infer(_:), v3, v5);
  sub_10014909C(&qword_10094A530, &type metadata accessor for FlowPresentationContext);
  sub_10077018C();
  sub_10077018C();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    (*(v4 + 8))(v7, v3);

    return sub_100129E98(a1);
  }

  v8 = sub_10077167C();
  (*(v4 + 8))(v7, v3);

  if (v8)
  {
    return sub_100129E98(a1);
  }

  return (*(v4 + 16))(a1, v1, v3);
}

uint64_t sub_100148C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100766EDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100765F6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100148D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100766EDC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100765F6C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for FlowPresentationHints()
{
  result = qword_10094A590;
  if (!qword_10094A590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100148E58()
{
  result = sub_100766EDC();
  if (v1 <= 0x3F)
  {
    result = sub_100765F6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100148EE0()
{
  sub_100766EDC();
  sub_10014909C(&qword_10094A530, &type metadata accessor for FlowPresentationContext);
  sub_10077018C();
  sub_10077018C();
  if (v6 == v4 && v7 == v5)
  {
  }

  else
  {
    v1 = sub_10077167C();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      return v2 & 1;
    }
  }

  type metadata accessor for FlowPresentationHints();
  sub_100765F6C();
  sub_10014909C(&qword_10094A5C8, &type metadata accessor for FlowAnimationBehavior);
  sub_10077018C();
  sub_10077018C();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_10077167C();
  }

  return v2 & 1;
}

uint64_t sub_10014909C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100149130()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F29C();
  sub_1001492F8(&qword_1009436A0, &type metadata accessor for AppPromotion);
  sub_10076332C();
  v4 = v13;
  if (!v13)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = sub_100630CB4();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1002EFEE4(v6, v4, v7, ObjectType);
  v10 = v9;
  swift_unknownObjectRelease_n();

  return v10;
}

uint64_t sub_1001492F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100149344(uint64_t a1)
{
  v47 = a1;
  v36 = sub_10076CF2C();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1007651BC();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412F8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_10076FD4C();
    v48 = sub_10000A61C(v6, qword_1009A2630);
    v7 = sub_10000A5D4(&unk_100942A60);
    v8 = *(sub_10076F33C() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_100788B20;
    v38 = v10;
    v45 = v1;
    sub_10076F31C();
    v41 = "advertHostingPageExited";
    sub_10076F27C();
    sub_10076F27C();
    v40 = 2 * v9;
    v11 = sub_10076519C();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_10076F30C();
    sub_10000CFBC(&v50, &unk_1009434C0);
    v44 = v6;
    sub_10076FBCC();

    v13 = sub_1007651AC();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.pageEnter(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1006107E0(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10000CFBC(&v50, &unk_1009434C0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_100785C70;
      sub_10076F31C();
      sub_10076F27C();
      sub_10076F27C();
      sub_10076F27C();
      v31 = sub_10076519C();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_10076F30C();
      sub_10000CFBC(&v50, &unk_1009434C0);
      sub_10076FBEC();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1001E16FC(0x6E65644965676170, 0xEE00726569666974, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_10076CF1C();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_10000CD08(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_10000CD08(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_10076CF3C();
      sub_10000CFBC(&v50, &qword_10094A670);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_10076CC3C();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_1001499D8(uint64_t a1)
{
  v47 = a1;
  v36 = sub_10076CE9C();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1007651BC();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412F8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_10076FD4C();
    v48 = sub_10000A61C(v6, qword_1009A2630);
    v7 = sub_10000A5D4(&unk_100942A60);
    v8 = *(sub_10076F33C() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_100788B20;
    v38 = v10;
    v45 = v1;
    sub_10076F31C();
    v41 = "duplicatePosition";
    sub_10076F27C();
    sub_10076F27C();
    v40 = 2 * v9;
    v11 = sub_10076519C();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_10076F30C();
    sub_10000CFBC(&v50, &unk_1009434C0);
    v44 = v6;
    sub_10076FBCC();

    v13 = sub_1007651AC();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.pageExit(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1006107E0(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10000CFBC(&v50, &unk_1009434C0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_100785C70;
      sub_10076F31C();
      sub_10076F27C();
      sub_10076F27C();
      sub_10076F27C();
      v31 = sub_10076519C();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_10076F30C();
      sub_10000CFBC(&v50, &unk_1009434C0);
      sub_10076FBEC();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1001E16FC(0x6E65644965676170, 0xEE00726569666974, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_10076CE8C();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_10000CD08(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_10000CD08(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_10076CEAC();
      sub_10000CFBC(&v50, &qword_10094A670);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_10076CC2C();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_10014A06C(uint64_t a1)
{
  v49 = a1;
  v38 = sub_10076CDAC();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007651BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412F8 != -1)
  {
    swift_once();
  }

  v7 = sub_10076FD4C();
  v48 = sub_10000A61C(v7, qword_1009A2630);
  v8 = sub_10000A5D4(&unk_100942A60);
  v9 = *(sub_10076F33C() - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  v12 = (v11 + 32) & ~v11;
  v44 = v8;
  v45 = 4 * v10;
  v42 = v11;
  *(swift_allocObject() + 16) = xmmword_100788B20;
  v43 = v12;
  v47 = v1;
  sub_10076F31C();
  sub_10076F27C();
  sub_10076F27C();
  v41 = 2 * v10;
  v13 = sub_10076519C();
  *(&v52[0] + 1) = &type metadata for String;
  *&v51 = v13;
  *(&v51 + 1) = v14;
  v40 = 3 * v10;
  sub_10076F30C();
  sub_10000CFBC(&v51, &unk_1009434C0);
  v46 = v7;
  sub_10076FBCC();

  v15 = sub_1007651AC();
  (*(v4 + 104))(v6, enum case for SearchAdOpportunity.LifecycleEventType.placed(_:), v3);
  if (!*(v15 + 16) || (v16 = sub_1006107E0(v6), (v17 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    v53 = 0;
    goto LABEL_18;
  }

  v18 = *(*(v15 + 56) + 8 * v16);
  v19 = *(v4 + 8);

  v19(v6, v3);

  v53 = v18;
  if (!v18)
  {
LABEL_18:
    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_1001E16FC(0x6E6174736E496461, 0xEC00000064496563, &v51);
  if (!*(&v52[0] + 1))
  {
LABEL_19:
    sub_10000CFBC(&v51, &unk_1009434C0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    *(swift_allocObject() + 16) = xmmword_100785C70;
    sub_10076F31C();
    sub_10076F27C();
    sub_10076F27C();
    sub_10076F27C();
    v20 = sub_10076519C();
    *(&v52[0] + 1) = &type metadata for String;
    *&v51 = v20;
    *(&v51 + 1) = v21;
    sub_10076F30C();
    sub_10000CFBC(&v51, &unk_1009434C0);
    sub_10076FBEC();
  }

  if (!v53)
  {

    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_1001E16FC(0x6E65644965676170, 0xEE00726569666974, &v51);
  if (!*(&v52[0] + 1))
  {

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (!v53)
  {

    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_1001E16FC(0x6C706D6554644169, 0xEF65707954657461, &v51);
  if (!*(&v52[0] + 1))
  {

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (v53)
  {
    sub_1001E16FC(0xD000000000000010, 0x80000001007D5B90, &v51);
    if (*(&v52[0] + 1))
    {
      swift_dynamicCast();
      goto LABEL_30;
    }
  }

  else
  {
    v51 = 0u;
    v52[0] = 0u;
  }

  sub_10000CFBC(&v51, &unk_1009434C0);
LABEL_30:
  if (v53)
  {
    sub_1001E16FC(0xD000000000000011, 0x80000001007D5BB0, &v51);
    if (*(&v52[0] + 1))
    {
      swift_dynamicCast();
      goto LABEL_35;
    }
  }

  else
  {
    v51 = 0u;
    v52[0] = 0u;
  }

  sub_10000CFBC(&v51, &unk_1009434C0);
LABEL_35:
  sub_10076CD9C();
  v23 = v53;
  if (!v53)
  {
LABEL_47:
    v35 = v39;
    sub_10076CC4C();
    (*(v37 + 8))(v35, v38);
  }

  v24 = 1 << *(v53 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v53 + 64);
  v27 = (v24 + 63) >> 6;

  for (i = 0; v26; result = sub_10000CFBC(&v51, &qword_10094A670))
  {
    v29 = i;
LABEL_44:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = v30 | (v29 << 6);
    v32 = (*(v23 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    sub_10000CD08(*(v23 + 56) + 32 * v31, v52);
    *&v51 = v33;
    *(&v51 + 1) = v34;
    sub_10000CD08(v52, &v50);
    swift_bridgeObjectRetain_n();
    sub_10076CDBC();
  }

  while (1)
  {
    v29 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      goto LABEL_47;
    }

    v26 = *(v23 + 64 + 8 * v29);
    ++i;
    if (v26)
    {
      i = v29;
      goto LABEL_44;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10014A9C8(uint64_t a1)
{
  v47 = a1;
  v36 = sub_10076CE6C();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1007651BC();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412F8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_10076FD4C();
    v48 = sub_10000A61C(v6, qword_1009A2630);
    v7 = sub_10000A5D4(&unk_100942A60);
    v8 = *(sub_10076F33C() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_100788B20;
    v38 = v10;
    v45 = v1;
    sub_10076F31C();
    v41 = "advertDidExitView";
    sub_10076F27C();
    sub_10076F27C();
    v40 = 2 * v9;
    v11 = sub_10076519C();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_10076F30C();
    sub_10000CFBC(&v50, &unk_1009434C0);
    v44 = v6;
    sub_10076FBCC();

    v13 = sub_1007651AC();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.onScreen(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1006107E0(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10000CFBC(&v50, &unk_1009434C0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_100785C70;
      sub_10076F31C();
      sub_10076F27C();
      sub_10076F27C();
      sub_10076F27C();
      v31 = sub_10076519C();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_10076F30C();
      sub_10000CFBC(&v50, &unk_1009434C0);
      sub_10076FBEC();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1001E16FC(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_10076CE5C();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_10000CD08(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_10000CD08(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_10076CE7C();
      sub_10000CFBC(&v50, &qword_10094A670);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_10076CC5C();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_10014B058(uint64_t a1)
{
  v47 = a1;
  v36 = sub_10076CEFC();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1007651BC();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412F8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_10076FD4C();
    v48 = sub_10000A61C(v6, qword_1009A2630);
    v7 = sub_10000A5D4(&unk_100942A60);
    v8 = *(sub_10076F33C() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_100788B20;
    v38 = v10;
    v45 = v1;
    sub_10076F31C();
    v41 = "ered undefined threshold";
    sub_10076F27C();
    sub_10076F27C();
    v40 = 2 * v9;
    v11 = sub_10076519C();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_10076F30C();
    sub_10000CFBC(&v50, &unk_1009434C0);
    v44 = v6;
    sub_10076FBCC();

    v13 = sub_1007651AC();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.offScreen(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1006107E0(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10000CFBC(&v50, &unk_1009434C0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_100785C70;
      sub_10076F31C();
      sub_10076F27C();
      sub_10076F27C();
      sub_10076F27C();
      v31 = sub_10076519C();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_10076F30C();
      sub_10000CFBC(&v50, &unk_1009434C0);
      sub_10076FBEC();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1001E16FC(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_10076CEEC();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_10000CD08(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_10000CD08(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_10076CF0C();
      sub_10000CFBC(&v50, &qword_10094A670);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_10076CC7C();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_10014B6E8(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v4 = sub_10076CF8C();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v56 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007651BC();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_10094A678);
  __chkstk_darwin(v9 - 8);
  v11 = v50 - v10;
  v12 = sub_1007685BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014CB90(a2, v11);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOffScreen(_:), v12);
    if (v16(v11, 1, v12) != 1)
    {
      sub_10000CFBC(v11, &qword_10094A678);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v17 = sub_10014C034();
  v19 = v18;
  result = (*(v13 + 8))(v15, v12);
  if ((v19 & 1) == 0)
  {
    result = sub_10014C034();
    if ((v21 & 1) == 0 && result != v17)
    {
      v53 = result;
      if (qword_1009412F8 != -1)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v51 = sub_10076FD4C();
        v50[10] = sub_10000A61C(v51, qword_1009A2630);
        v22 = sub_10000A5D4(&unk_100942A60);
        v23 = *(sub_10076F33C() - 8);
        v24 = *(v23 + 72);
        v25 = *(v23 + 80);
        v26 = (v25 + 32) & ~v25;
        v50[9] = 8 * v24;
        v50[6] = v25;
        v50[8] = v22;
        *(swift_allocObject() + 16) = xmmword_10078B310;
        v50[7] = v26;
        v52 = v2;
        sub_10076F31C();
        v50[5] = "advertWasRemoved";
        sub_10076F27C();
        sub_10076F27C();
        v50[4] = 2 * v24;
        v27 = sub_10076519C();
        *(&v62[0] + 1) = &type metadata for String;
        *&v61 = v27;
        *(&v61 + 1) = v28;
        v50[3] = 3 * v24;
        sub_10076F30C();
        sub_10000CFBC(&v61, &unk_1009434C0);
        sub_10076F27C();
        v50[2] = 4 * v24;
        *(&v62[0] + 1) = &type metadata for Int;
        *&v61 = v17;
        v50[1] = 5 * v24;
        sub_10076F30C();
        sub_10000CFBC(&v61, &unk_1009434C0);
        sub_10076F27C();
        *(&v62[0] + 1) = &type metadata for Int;
        *&v61 = v53;
        sub_10076F30C();
        sub_10000CFBC(&v61, &unk_1009434C0);
        sub_10076FBCC();

        v29 = sub_1007651AC();
        v31 = v57;
        v30 = v58;
        (*(v57 + 104))(v8, enum case for SearchAdOpportunity.LifecycleEventType.visible(_:), v58);
        if (!*(v29 + 16) || (v32 = sub_1006107E0(v8), (v33 & 1) == 0))
        {

          (*(v31 + 8))(v8, v30);
          v63 = 0;
LABEL_26:
          v61 = 0u;
          v62[0] = 0u;
LABEL_27:
          sub_10000CFBC(&v61, &unk_1009434C0);
LABEL_28:
          *(swift_allocObject() + 16) = xmmword_100785C70;
          sub_10076F31C();
          sub_10076F27C();
          sub_10076F27C();
          sub_10076F27C();
          v47 = sub_10076519C();
          *(&v62[0] + 1) = &type metadata for String;
          *&v61 = v47;
          *(&v61 + 1) = v48;
          sub_10076F30C();
          sub_10000CFBC(&v61, &unk_1009434C0);
          sub_10076FBEC();
        }

        v34 = *(*(v29 + 56) + 8 * v32);
        v35 = *(v31 + 8);

        v35(v8, v30);

        v63 = v34;
        if (!v34)
        {
          goto LABEL_26;
        }

        v2 = &v63;
        sub_1001E16FC(0x6E6174736E496461, 0xEC00000064496563, &v61);
        if (!*(&v62[0] + 1))
        {
          goto LABEL_27;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_28;
        }

        sub_10076CF7C();
        v36 = v63;
        if (!v63)
        {
          break;
        }

        v37 = 1 << *(v63 + 32);
        v38 = -1;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        v39 = v38 & *(v63 + 64);
        v40 = (v37 + 63) >> 6;

        v17 = 0;
        v8 = &unk_10078D9F8;
        while (v39)
        {
          v41 = v17;
LABEL_23:
          v42 = __clz(__rbit64(v39));
          v39 &= v39 - 1;
          v43 = v42 | (v41 << 6);
          v44 = (*(v36 + 48) + 16 * v43);
          v45 = *v44;
          v46 = v44[1];
          sub_10000CD08(*(v36 + 56) + 32 * v43, v62);
          *&v61 = v45;
          *(&v61 + 1) = v46;
          sub_10000CD08(v62, &v60);
          swift_bridgeObjectRetain_n();
          v2 = v56;
          sub_10076CF9C();
          sub_10000CFBC(&v61, &qword_10094A670);
        }

        while (1)
        {
          v41 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v41 >= v40)
          {

            goto LABEL_32;
          }

          v39 = *(v36 + 64 + 8 * v41);
          ++v17;
          if (v39)
          {
            v17 = v41;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_34:
        swift_once();
      }

LABEL_32:
      v49 = v56;
      sub_10076CC9C();
      (*(v54 + 8))(v49, v55);
    }
  }

  return result;
}

uint64_t sub_10014C034()
{
  v0 = sub_1007685BC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 104);
  v5(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOnScreen(_:), v0, v2);
  sub_10014CC00(&qword_10094A680);
  sub_10077018C();
  sub_10077018C();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v11[1] == v11[0])
  {
    return 100;
  }

  (v5)(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.moreThanHalfOnScreen(_:), v0);
  sub_10014CC00(&qword_10094A688);
  v8 = sub_10076FF0C();
  v6(v4, v0);
  if ((v8 & 1) == 0)
  {
    return 50;
  }

  (v5)(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOffScreen(_:), v0);
  v9 = sub_10076FF0C();
  v6(v4, v0);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  if (qword_1009412F8 != -1)
  {
    swift_once();
  }

  v10 = sub_10076FD4C();
  sub_10000A61C(v10, qword_1009A2630);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F31C();
  sub_10076F27C();
  sub_10076FBEC();

  return 0;
}

uint64_t sub_10014C3B0(uint64_t a1)
{
  v47 = a1;
  v37 = sub_10076CECC();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1007651BC();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412F8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_10076FD4C();
    v48 = sub_10000A61C(v6, qword_1009A2630);
    v7 = sub_10000A5D4(&unk_100942A60);
    v8 = *(sub_10076F33C() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_100788B20;
    v39 = v10;
    v45 = v1;
    sub_10076F31C();
    sub_10076F27C();
    sub_10076F27C();
    v41 = 2 * v9;
    v11 = sub_10076519C();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v40 = 3 * v9;
    sub_10076F30C();
    sub_10000CFBC(&v50, &unk_1009434C0);
    v44 = v6;
    sub_10076FBCC();

    v13 = sub_1007651AC();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.completed(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1006107E0(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10000CFBC(&v50, &unk_1009434C0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_100785C70;
      sub_10076F31C();
      sub_10076F27C();
      sub_10076F27C();
      sub_10076F27C();
      v31 = sub_10076519C();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_10076F30C();
      sub_10000CFBC(&v50, &unk_1009434C0);
      sub_10076FBEC();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1001E16FC(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_10076CEBC();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_10000CD08(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_10000CD08(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v38;
      sub_10076CEDC();
      sub_10000CFBC(&v50, &qword_10094A670);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v38;
  sub_10076CC6C();
  (*(v36 + 8))(v34, v37);
}

uint64_t sub_10014CA38()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10014CB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094A678);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014CC00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1007685BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10014CC44(char a1)
{
  v2 = v1;
  v4 = sub_10076048C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_10077113C();
  v14 = sub_10077111C();
  v15 = &enum case for SystemImage.speakerSlashFill(_:);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    sub_10014D2A4(v13, v10);
    sub_10077114C();
    sub_10014D314(v13);
  }

  else
  {
    if (a1)
    {
      v16 = &enum case for SystemImage.speakerSlashFill(_:);
    }

    else
    {
      v16 = &enum case for SystemImage.speakerWave3Fill(_:);
    }

    (*(v5 + 104))(v7, *v16, v4);
    sub_10076046C();
    (*(v5 + 8))(v7, v4);
    sub_1007710BC();
    sub_10077114C();
  }

  if (a1)
  {
    v17 = 0xD00000000000002BLL;
  }

  else
  {
    v17 = 0xD000000000000029;
  }

  if (a1)
  {
    v18._countAndFlagsBits = 0xD00000000000002CLL;
  }

  else
  {
    v18._countAndFlagsBits = 0xD00000000000002ALL;
  }

  if (a1)
  {
    v19 = "on.Mute.LargeContentTitle";
  }

  else
  {
    v15 = &enum case for SystemImage.speakerWave3Fill(_:);
    v19 = "on.Mute.AccessibilityLabel";
  }

  v20 = "on.Unmute.LargeContentTitle";
  if ((a1 & 1) == 0)
  {
    v20 = "eExtension10MuteButton";
  }

  v18._object = (v20 | 0x8000000000000000);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_1007622EC(v18, v26);
  v21 = sub_10076FF6C();

  [v2 setAccessibilityLabel:v21];

  (*(v5 + 104))(v7, *v15, v4);
  v22 = sub_10076046C();
  (*(v5 + 8))(v7, v4);
  [v2 setLargeContentImage:v22];

  v25._object = (v19 | 0x8000000000000000);
  v25._countAndFlagsBits = v17;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1007622EC(v25, v27);
  v23 = sub_10076FF6C();

  [v2 setLargeContentTitle:v23];
}

id sub_10014CF98(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10077109C();
  v11 = sub_10077111C();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_10077114C();
  sub_10077113C();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_10014D2A4(v6, v9);
    sub_10077114C();

    sub_10014D314(v6);
  }

  else
  {
    v13 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:a1];
    sub_100770F4C();
    sub_10077114C();
  }

  v14 = v10;
  [v14 setShowsLargeContentViewer:1];
  [v14 setScalesLargeContentImage:1];

  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v14 addInteraction:v15];

  return v14;
}

uint64_t sub_10014D2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10095B400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014D314(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10095B400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10014D37C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_lockupView);
  v3 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  sub_10075FCEC(v31, v5);

  v6 = *(v2 + v3);
  sub_10075FD2C();
  sub_10014E5C0(&qword_100941820, &type metadata accessor for ArtworkView);
  v7 = v6;
  sub_100760BFC();

  v28 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_bundleView);
  v8 = sub_100714640();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_10077158C();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_10077149C();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v14 = OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_icon;
    v15 = *&v12[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_icon];
    v32.value.super.isa = 0;
    v32.is_nil = 0;
    sub_10075FCEC(v32, v16);

    v17 = *&v13[v14];
    sub_100760BFC();
  }

  while (v10 != v11);
LABEL_10:

  v18 = sub_100714658();
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = sub_10077158C();
    if (v20)
    {
LABEL_12:
      if (v20 >= 1)
      {
        v21 = 0;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = sub_10077149C();
          }

          else
          {
            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          ++v21;
          v24 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
          v25 = *&v22[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
          v33.value.super.isa = 0;
          v33.is_nil = 0;
          sub_10075FCEC(v33, v26);

          v27 = *&v23[v24];
          sub_100760BFC();
        }

        while (v20 != v21);
        goto LABEL_19;
      }

LABEL_23:
      __break(1u);
      return;
    }
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  v29 = *&v28[OBJC_IVAR____TtC20ProductPageExtension10BundleView_backgroundArtworkView];
  sub_100760BFC();
}

unint64_t sub_10014D68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  sub_10014D37C();
  if (sub_10076BB5C())
  {
    v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_lockupView);
    v6 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v7 = qword_10093FBE0;
    v8 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_100763ADC();
    sub_10000A61C(v9, qword_10099DDA0);
    sub_1007639AC();
    [v8 contentMode];
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v8 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();
    v10 = *(v5 + v6);
    sub_10075FD2C();
    sub_10014E5C0(&qword_100941820, &type metadata accessor for ArtworkView);
    v11 = v10;
    sub_100760B8C();
  }

  result = sub_10076BBDC();
  if (result)
  {
    sub_10053EC80(result, a2);
  }

  return result;
}

double sub_10014D8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7)
{
  v96 = a5;
  v84 = a3;
  v85 = a4;
  v81 = a2;
  v79 = a1;
  v9 = sub_10077164C();
  v98 = *(v9 - 8);
  v99 = v9;
  __chkstk_darwin(v9);
  v97 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076BF6C();
  v94 = *(v11 - 8);
  v95 = v11;
  __chkstk_darwin(v11);
  v93 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076749C();
  v91 = *(v13 - 8);
  v92 = v13;
  __chkstk_darwin(v13);
  v90 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10076997C();
  v83 = *(v103 - 8);
  __chkstk_darwin(v103);
  v82 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076443C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v69 - v21;
  v23 = sub_10076747C();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v86 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v69 - v27;
  sub_100770ACC();
  ObjectType = swift_getObjectType();
  v29 = [a6 traitCollection];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v23, qword_1009A0690);
  v31 = *(v24 + 16);
  v89 = v23;
  v76 = v31;
  v77 = v24 + 16;
  v31(v28, v30, v23);
  v32 = sub_10077071C();
  v100 = a6;
  v88 = v24;
  if (v32)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v33 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v33 = qword_100944CA0;
  }

  v34 = sub_10000A61C(v16, v33);
  v75 = v17;
  (*(v17 + 16))(v19, v34, v16);
  (*(v17 + 32))(v22, v19, v16);
  v74 = v29;
  v35 = [v29 preferredContentSizeCategory];
  sub_10077084C();

  sub_1007643EC();
  sub_10076441C();
  v102 = v28;
  sub_10076746C();
  sub_10076745C();
  v36 = sub_10076DDDC();
  swift_allocObject();
  v73 = sub_10076DDBC();
  v37 = objc_opt_self();

  v71 = v37;
  v69[1] = [v37 preferredFontForTextStyle:UIFontTextStyleBody];
  v38 = sub_10076C04C();
  v80 = v22;
  v39 = v38;
  v140[3] = v38;
  v40 = sub_10014E5C0(&qword_100943230, &type metadata accessor for Feature);
  v78 = v16;
  v41 = v40;
  v140[4] = v40;
  v70 = v40;
  v42 = sub_10000DB7C(v140);
  v72 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v43 = *(v39 - 8);
  v101 = *(v43 + 104);
  v44 = v43 + 104;
  v101(v42);
  v69[2] = v44;
  sub_10076C90C();
  sub_10000CD74(v140);
  v45 = v82;
  sub_10076996C();
  sub_10076994C();
  v83 = *(v83 + 8);
  (v83)(v45, v103);

  v46 = [v37 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v139[3] = v39;
  v139[4] = v41;
  v47 = sub_10000DB7C(v139);
  v48 = v72;
  (v101)(v47, v72, v39);
  sub_10076C90C();
  sub_10000CD74(v139);
  sub_10076996C();
  sub_10076994C();
  v49 = v103;
  v50 = v83;
  (v83)(v45, v103);
  v51 = [v71 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v138[3] = v39;
  v138[4] = v70;
  v52 = sub_10000DB7C(v138);
  (v101)(v52, v48, v39);
  sub_10076C90C();
  sub_10000CD74(v138);
  sub_10076996C();
  sub_10076994C();
  v50(v45, v49);
  sub_10001D420(0, 0);
  swift_allocObject();
  v53 = sub_10076DDBC();

  sub_10001D420(0, 0);
  swift_allocObject();
  v54 = sub_10076DDBC();
  v55 = v89;
  v76(v86, v102, v89);
  v137 = &protocol witness table for LayoutViewPlaceholder;
  v136 = v36;
  v135 = v73;
  v134 = 0;
  *&v132[40] = 0u;
  v133 = 0u;
  sub_10000A570(v140, v132);
  sub_10000A570(v139, &v131);
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;

  v56 = sub_10076DDCC();
  v124 = &protocol witness table for LayoutViewPlaceholder;
  v123 = v36;
  v122 = v56;
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v112 = 0;
  v111 = 0u;
  *&v110[40] = 0u;
  sub_10000A570(v138, v110);
  v108 = v36;
  v109 = &protocol witness table for LayoutViewPlaceholder;
  v106 = &protocol witness table for LayoutViewPlaceholder;
  v107 = v53;
  v105 = v36;
  v104 = v54;
  v57 = v90;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1007841E0;
  v59 = v74;
  *(v58 + 32) = v74;
  v60 = v59;
  v61 = sub_10076DEEC();
  sub_10014E5C0(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout);
  v62 = v92;
  sub_10076D2AC();

  (*(v91 + 8))(v57, v62);
  sub_10000CD74(v138);
  sub_10000CD74(v139);
  sub_10000CD74(v140);
  (*(v75 + 8))(v80, v78);
  (*(v88 + 8))(v102, v55);
  v64 = v93;
  v63 = v94;
  v65 = v95;
  (*(v94 + 104))(v93, enum case for Artwork.Style.roundedRect(_:), v95);
  if (v96)
  {
    v66 = v96;
  }

  else
  {
    v66 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for BundleView();

  sub_100541BC8(v64, v66, v100);

  (*(v63 + 8))(v64, v65);
  if (qword_1009401B8 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10099F090, qword_10099F0A8);
  v67 = v97;
  sub_1000FF02C();
  sub_10076D40C();
  (*(v98 + 8))(v67, v99);
  return a7;
}

uint64_t sub_10014E5C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014E618(uint64_t a1, void *a2, uint64_t a3)
{
  v124 = a3;
  v126 = a2;
  v119 = sub_100765F6C();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100766EDC();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v6 - 8);
  v112 = &v106 - v7;
  v122 = sub_10076F50C();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v9 - 8);
  v107 = &v106 - v10;
  v11 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v11);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v14 - 8);
  v110 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v106 - v17;
  v19 = type metadata accessor for FlowDestination();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v111 = (&v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = (&v106 - v23);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  v108 = sub_10000A5D4(&qword_100942C70);
  v123 = sub_10076FCEC();

  sub_10076B87C();
  sub_10012062C(a1, &aBlock, v18);
  v28 = *(v20 + 48);
  v29 = v28(v18, 1, v19);
  v109 = v28;
  if (v29 == 1)
  {
    v30 = v27;
    swift_storeEnumTagMultiPayload();
    if (v28(v18, 1, v19) != 1)
    {
      sub_10000CFBC(v18, &unk_10094A890);
    }
  }

  else
  {
    v30 = v27;
    sub_10005DAD8(v18, v27);
  }

  sub_10075F5BC();
  v31 = *(v11 + 20);
  v125 = v13;
  v116 = v31;
  sub_10075F5AC();
  v32 = v126;
  v33 = [v126 presentedViewController];
  if (!v33)
  {
    goto LABEL_8;
  }

  v34 = v33;
  if ([v33 isBeingDismissed])
  {

LABEL_8:
    v35 = v32;
    goto LABEL_9;
  }

  v127 = v34;
  sub_100016F40(0, &qword_1009453B0);
  v48 = v34;
  sub_10000A5D4(&qword_1009435B8);
  if (swift_dynamicCast())
  {
    v106 = v48;
    sub_10003F19C(v128, &aBlock);
    v49 = v30;
    v50 = *(&v131 + 1);
    v51 = v132;
    sub_10000CF78(&aBlock, *(&v131 + 1));
    if ((*(v51 + 8))(v49, v50, v51))
    {
      sub_10005C684(v49, v24);
      v52 = v49;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v53 = v125;
        v54 = v123;
        v55 = v106;
        if (*v24)
        {
          v56 = sub_10000A5D4(&unk_1009428E0);

          v57 = v107;
          v58 = v124;
          sub_10076F5AC();
          v59 = *(v56 - 8);
          if ((*(v59 + 48))(v57, 1, v56) == 1)
          {

            sub_10005DB58(v53, type metadata accessor for FlowPresentationHints);
            sub_10005DB58(v52, type metadata accessor for FlowDestination);
            sub_10000CFBC(v57, &unk_100943200);
LABEL_61:
            sub_10000CD74(&aBlock);
            return v54;
          }

          sub_100263FFC(v105, 1, v58, v57);

          (*(v59 + 8))(v57, v56);
          sub_10076FC4C();

LABEL_60:
          sub_10005DB58(v53, type metadata accessor for FlowPresentationHints);
          sub_10005DB58(v52, type metadata accessor for FlowDestination);
          goto LABEL_61;
        }
      }

      else
      {
        sub_10005DB58(v24, type metadata accessor for FlowDestination);
        v53 = v125;
        v54 = v123;
        v55 = v106;
      }

      v102 = v121;
      v103 = v120;
      v104 = v122;
      (*(v121 + 104))(v120, enum case for ActionOutcome.performed(_:), v122);
      sub_10076FCBC();

      (*(v102 + 8))(v103, v104);
      goto LABEL_60;
    }

    sub_10000CD74(&aBlock);
    v30 = v49;
    v80 = v124;
    v48 = v106;
  }

  else
  {
    v129 = 0;
    memset(v128, 0, sizeof(v128));
    sub_10000CFBC(v128, &unk_1009435C0);
    v80 = v124;
  }

  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  if (sub_10014F8D4(v48, v30))
  {
    v95 = swift_allocObject();
    v95[2] = a1;
    v95[3] = v32;
    v96 = v123;
    v95[4] = v80;
    v95[5] = v96;
    *&v132 = sub_10014FB50;
    *(&v132 + 1) = v95;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v131 = sub_10009AEDC;
    *(&v131 + 1) = &unk_100889D68;
    v97 = _Block_copy(&aBlock);
    v54 = v96;

    v98 = v32;

    [v48 dismissViewControllerAnimated:1 completion:v97];
    _Block_release(v97);

    v93 = v125;
    goto LABEL_48;
  }

  v99 = v48;
  v100 = v32;
  v101 = [v100 presentedViewController];
  if (v101)
  {
    do
    {
      v35 = v101;

      v101 = [v35 presentedViewController];
      v100 = v35;
    }

    while (v101);
  }

  else
  {
    v35 = v100;
  }

LABEL_9:
  v36 = [v32 traitCollection];
  v37 = sub_10012B484();

  v38 = v125;
  if (v37)
  {
    v39 = [v32 traitCollection];
    v40 = sub_1004926B0(a1, v39, v124);

    if (v40)
    {
      v41 = v40;
      goto LABEL_26;
    }
  }

  else
  {
    v42 = sub_100376418(v32);
    if (!v42 || (*&v128[0] = v42, sub_100016F40(0, &qword_100944C68), sub_10000A5D4(&qword_100944C70), (swift_dynamicCast() & 1) == 0))
    {
      *&v132 = 0;
      aBlock = 0u;
      v131 = 0u;
    }

    v43 = v30;
    v44 = [v32 traitCollection];

    sub_10076B87C();
    v45 = v110;
    sub_10012062C(a1, v128, v110);
    v46 = v109;
    if (v109(v45, 1, v19) == 1)
    {
      v47 = v111;
      swift_storeEnumTagMultiPayload();
      if (v46(v45, 1, v19) != 1)
      {
        sub_10000CFBC(v45, &unk_10094A890);
      }
    }

    else
    {
      v47 = v111;
      sub_10005DAD8(v45, v111);
    }

    v60 = sub_10075F57C();
    v62 = v61;
    v63 = v112;
    sub_10075F59C();
    v40 = sub_10048B0C0(v47, v44, v60, v62, v63, &aBlock, v124, 1);

    sub_10000CFBC(v63, &unk_100958150);
    sub_10005DB58(v47, type metadata accessor for FlowDestination);
    v41 = v40;
    sub_10000CFBC(&aBlock, &unk_10094A8A0);
    v30 = v43;
    v38 = v125;
    if (v40)
    {
LABEL_26:
      v54 = v123;
      v64 = [v126 traitCollection];
      v65 = v113;
      sub_1001489F0(v113);

      v66 = sub_100766ECC();
      v68 = v67;
      (*(v114 + 8))(v65, v115);
      if ((v68 & 1) == 0)
      {
        [v41 setModalPresentationStyle:v66];
      }

      aBlock = xmmword_10094FFD8;
      v131 = xmmword_10094FFE8;
      v132 = xmmword_10094FFF8;
      v133 = xmmword_100950008;
      v134 = xmmword_100950018;
      v69 = qword_100950028;
      v135 = qword_100950028;
      v70 = BYTE8(xmmword_10094FFF8);
      if (BYTE8(xmmword_10094FFF8) != 255)
      {
        v71 = aBlock;
        v73 = v131;
        v72 = *&v132;
        v74 = v133;
        v75 = v134;
        v76 = aBlock;
        v77 = [v41 popoverPresentationController];
        if (v77)
        {
          v78 = v77;
          if (v70)
          {
            sub_10014F864(&aBlock, v128);
            v79 = v78;
            [v79 setSourceView:v71];
            [v79 setSourceRect:{*(&v71 + 1), v73, v72}];
            sub_10000CFBC(&aBlock, &unk_1009505F0);
          }

          else
          {
            [v77 setBarButtonItem:v71];
          }

          [v78 setPopoverLayoutMargins:{v74, v75}];
          [v78 setPermittedArrowDirections:v69];
        }

        else
        {
          if (qword_1009412E8 != -1)
          {
            swift_once();
          }

          v81 = sub_10076FD4C();
          sub_10000A61C(v81, qword_1009A2600);
          sub_10000A5D4(&unk_100942A60);
          sub_10076F33C();
          *(swift_allocObject() + 16) = xmmword_100783DD0;
          sub_10076F27C();
          sub_10076FBFC();
        }

        sub_10000CFBC(&aBlock, &unk_1009505F0);
      }

      v82 = v118;
      v83 = v117;
      v84 = v119;
      (*(v118 + 16))(v117, v38 + v116, v119);
      v85 = (*(v82 + 88))(v83, v84);
      if (v85 == enum case for FlowAnimationBehavior.infer(_:))
      {
        goto LABEL_41;
      }

      if (v85 != enum case for FlowAnimationBehavior.never(_:))
      {
        if (v85 == enum case for FlowAnimationBehavior.always(_:))
        {
LABEL_41:
          v86 = 1;
LABEL_46:
          v87 = objc_allocWithZone(type metadata accessor for PresentationContextViewController());
          v88 = v41;
          v89 = sub_1000B9B58(v88, v86);

          [v35 presentViewController:v89 animated:0 completion:0];
          v90 = v121;
          v91 = v120;
          v92 = v122;
          (*(v121 + 104))(v120, enum case for ActionOutcome.performed(_:), v122);
          sub_10076FCBC();

          (*(v90 + 8))(v91, v92);
          goto LABEL_47;
        }

        (*(v82 + 8))(v83, v84);
      }

      v86 = 0;
      goto LABEL_46;
    }
  }

  (*(v121 + 104))(v120, enum case for ActionOutcome.unsupported(_:), v122);
  v54 = sub_10076FC8C();

LABEL_47:
  v93 = v38;
LABEL_48:
  sub_10005DB58(v93, type metadata accessor for FlowPresentationHints);
  sub_10005DB58(v30, type metadata accessor for FlowDestination);
  return v54;
}

uint64_t sub_10014F864(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009505F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F8D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005C684(a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v14 = *(sub_10000A5D4(&qword_100958CB0) + 64);
    v15 = sub_100762D3C();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_10005DB58(v8, type metadata accessor for FlowDestination);
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_10005DB58(v8, type metadata accessor for FlowDestination);
    v12 = 1;
    return v12 & 1;
  }

  sub_100050DA4(v8, v5);
  type metadata accessor for ArticleContainerViewController();
  v10 = swift_dynamicCastClass() == 0;
  v11 = sub_1007690EC();
  sub_10000CFBC(v5, &unk_1009435D0);
  v12 = v10 | v11 ^ 1;
  return v12 & 1;
}

uint64_t sub_10014FB00()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10014FB50()
{
  sub_10014E618(v0[2], v0[3], v0[4]);
  sub_10076FC4C();
}

uint64_t sub_10014FB98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10014FC18@<X0>(uint64_t a1@<X2>, char *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v30 - v13;
  __chkstk_darwin(v15);
  v17 = v30 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [Strong collectionView];

    if (v20)
    {
      v21 = [v20 indexPathForItemAtPoint:{a3, a4}];
      if (v21)
      {
        v22 = v21;
        sub_10075E06C();

        v30[1] = a1;
        v31 = *(v9 + 32);
        v31(v17, v14, v8);
        isa = sub_10075E02C().super.isa;
        v24 = [v20 cellForItemAtIndexPath:isa];
        v30[0] = v24;

        (*(v9 + 16))(v11, v17, v8);
        swift_getObjectType();
        v25 = v24;
        v26 = sub_10076787C();

        (*(v9 + 8))(v17, v8);
        v31(a2, v11, v8);
        v27 = type metadata accessor for PreviewItem();
        *&a2[*(v27 + 20)] = v30[0];
        *&a2[*(v27 + 24)] = v26;
        return (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
      }
    }
  }

  v29 = type metadata accessor for PreviewItem();
  return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
}

uint64_t sub_10014FF1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v5 = sub_10000A5D4(&unk_10094A880);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_getObjectType();
    sub_10076788C();
    ObjectType = sub_10076786C();
    v14 = ObjectType;
    if (ObjectType)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      v33[1] = 0;
      v33[2] = 0;
    }

    v33[0] = v14;
    v33[3] = ObjectType;
    v18 = sub_10076789C();
    sub_10000CFBC(v33, &unk_1009434C0);
    if (v18)
    {
      v27 = v12;
      v28 = v7;

      v19 = sub_100769F8C();
      v20 = v19;
      v33[0] = _swiftEmptyArrayStorage;
      v29 = v10;
      v30 = a2;
      v21 = v19 & 0xFFFFFFFFFFFFFF8;
      if (v19 >> 62)
      {
LABEL_27:
        v22 = sub_10077158C();
      }

      else
      {
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = 0;
      v31 = _swiftEmptyArrayStorage;
      while (v22 != v23)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v24 = sub_10077149C();
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_26;
          }

          v24 = *(v20 + 8 * v23 + 32);

          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v26 = sub_10015119C(v23, v24, v18, v3, v32);

        ++v23;
        if (v26)
        {
          sub_10077019C();
          if (*((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();
          v31 = v33[0];
          v23 = v25;
        }
      }

      v10 = v29;
      v7 = v28;
    }

    sub_100016E2C(v10, v7, &unk_10094A880);
    sub_10075FF0C();

    swift_unknownObjectRelease();
    return sub_10000CFBC(v10, &unk_10094A880);
  }

  else
  {
    v15 = sub_10075FF3C();
    v16 = *(*(v15 - 8) + 56);

    return v16(a2, 1, 1, v15);
  }
}

unint64_t sub_100150294()
{
  v0 = sub_10076674C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_10094A880);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_10076677C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075FF1C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &unk_10094A880);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_10076675C();
    v12 = (*(v1 + 88))(v3, v0);
    if (v12 == enum case for FlowPreviewDestination.ContentType.source(_:))
    {
      sub_1001527C4();
      (*(v8 + 8))(v10, v7);
      return 0;
    }

    else if (v12 == enum case for FlowPreviewDestination.ContentType.flowDestination(_:))
    {
      v13 = sub_100151C8C();
      (*(v8 + 8))(v10, v7);
      return v13;
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      (*(v1 + 8))(v3, v0);
      return 0;
    }
  }
}

UIMenu sub_1001505AC()
{
  v0 = sub_10075FF2C();
  if (v0 >> 62)
  {
    v6 = sub_10077158C();

    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v1)
  {
    return 0;
  }

LABEL_3:
  v2 = sub_10075FF2C();
  if (v2 >> 62)
  {
    sub_100016F40(0, &unk_100949990);
    v3 = sub_10077157C();
  }

  else
  {

    sub_10077168C();
    sub_100016F40(0, &unk_100949990);
    v3 = v2;
  }

  sub_100016F40(0, &qword_100946818);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  v4.value = 1;
  return sub_100770B5C(v9, v10, v8, v4, 0xFFFFFFFFFFFFFFFFLL, v3, v7);
}

id sub_1001506EC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_100154034(v4);

  return v6;
}

uint64_t sub_10015074C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v41[0] = v41 - v3;
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v41[1] = v41 - v5;
  v6 = sub_10076F4FC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000A5D4(&unk_10094A880);
  __chkstk_darwin(v7 - 8);
  v9 = v41 - v8;
  v10 = sub_10076677C();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v42 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10075E11C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_10094A870);
  __chkstk_darwin(v16 - 8);
  v18 = v41 - v17;
  v19 = sub_10075FF3C();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12, v21);
  v24 = *(a1 + *(type metadata accessor for PreviewItem() + 20));
  if (v24)
  {
    v25 = sub_100016F40(0, &qword_1009441F0);
  }

  else
  {
    v25 = 0;
    *(&v46 + 1) = 0;
    *&v47 = 0;
  }

  *&v46 = v24;
  *(&v47 + 1) = v25;
  v26 = v24;
  sub_10014FF1C(&v46, v18);
  (*(v13 + 8))(v15, v12);
  sub_10000CFBC(&v46, &unk_1009434C0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v27 = &unk_10094A870;
    v28 = v18;
    return sub_10000CFBC(v28, v27);
  }

  (*(v20 + 32))(v23, v18, v19);
  sub_10075FF1C();
  v30 = v43;
  v29 = v44;
  if ((*(v43 + 48))(v9, 1, v44) == 1)
  {
    (*(v20 + 8))(v23, v19);
    v27 = &unk_10094A880;
    v28 = v9;
    return sub_10000CFBC(v28, v27);
  }

  v32 = v42;
  (*(v30 + 32))(v42, v9, v29);
  if (!sub_10076673C())
  {
    (*(v30 + 8))(v32, v29);
    return (*(v20 + 8))(v23, v19);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_10076B8EC();
  sub_10076B89C();
  sub_10076B8AC();
  sub_10075FD5C();
  swift_allocObject();
  v33 = sub_10075FD4C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v36 = v42;
      sub_10076676C();
      sub_10076487C();

      sub_10000CFBC(&v46, &unk_1009434C0);
      (*(v43 + 8))(v36, v44);
      return (*(v20 + 8))(v23, v19);
    }
  }

  v37 = *(v45 + qword_10094A6D8);
  v38 = sub_10000A5D4(&unk_1009428E0);
  v39 = v41[0];
  sub_10076F5AC();
  v40 = *(v38 - 8);
  if ((*(v40 + 48))(v39, 1, v38) != 1)
  {
    sub_100263FC8(v33, 1, v37, v39);

    (*(v43 + 8))(v42, v44);
    (*(v20 + 8))(v23, v19);
    return (*(v40 + 8))(v39, v38);
  }

  (*(v43 + 8))(v42, v44);
  (*(v20 + 8))(v23, v19);
  v27 = &unk_100943200;
  v28 = v39;
  return sub_10000CFBC(v28, v27);
}

void sub_100150F00(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, a5);

  swift_unknownObjectRelease();
}

void sub_100150FA0(void *a1, void (*a2)(void))
{
  if (a1 && a2)
  {
    v3 = a1;
    a2();
  }
}

void sub_100151008(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_100154D58(v8, a5);

  swift_unknownObjectRelease();
}

id sub_1001510A0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_100155308(v6);

  return v9;
}

id sub_100151110(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_10015561C(v6);

  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_10015119C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100769F5C();
  v11 = v10;
  v12 = v9 == a1;
  v13 = sub_100769F6C() == a1;
  return sub_10015121C(a2, a3, v12 & ~v11, v13 & ~v14, a5);
}

uint64_t sub_10015121C(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v54 = a5;
  v57 = a1;
  v55 = swift_isaMask & *v5;
  v8 = sub_10000A5D4(&unk_10094A8B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  v56 = sub_10076801C();
  v11 = *(v56 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v56);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v17 = sub_10076786C();
    v52 = v18;
    swift_unknownObjectRelease();
    if (!v17)
    {
      return 0;
    }

    if (a3)
    {
      v55 = v17;
      sub_100769F7C();
      if (a4)
      {
        v19 = 2;
      }

      else
      {
        v19 = 0;
      }

      sub_10076800C();
      v20 = v56;
      if ((*(v11 + 48))(v10, 1, v56) == 1)
      {
        swift_unknownObjectRelease();

        sub_10000CFBC(v10, &unk_10094A8B0);
        return 0;
      }

      v54 = v19;
      v28 = *(v11 + 32);
      v28(v15, v10, v20);
      v29 = sub_100767FEC();
      if (v30 != 1)
      {
        v33 = v29;
        v34 = v30;
        v35 = v31;
        v51 = v32;

        if (v34)
        {
          v50 = v35;
          v36 = sub_10076B8FC();
          v49 = v33;
          if (v36)
          {
            v37 = v36;
            if (sub_10076BE0C())
            {
              v57 = sub_10076044C();
            }

            else if (sub_10076BDFC())
            {
              v57 = sub_1005A6008(v37, 0);
            }

            else
            {
              v57 = 0;
            }
          }

          else
          {
            v57 = 0;
          }

          v48 = sub_100016F40(0, &qword_1009641D0);
          v38 = v53;
          (*(v11 + 16))(v53, v15, v20);
          v39 = (*(v11 + 80) + 16) & ~*(v11 + 80);
          v40 = swift_allocObject();
          v47 = v15;
          v41 = v11;
          v42 = v20;
          v43 = v40;
          v28((v40 + v39), v38, v42);
          v44 = (v43 + ((v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
          v45 = v52;
          *v44 = v55;
          v44[1] = v45;
          swift_unknownObjectRetain();

          v26 = sub_100770F1C();
          swift_unknownObjectRelease();

          (*(v41 + 8))(v47, v42);
          return v26;
        }

        sub_100155CD8(v33, 0);
      }

      swift_unknownObjectRelease();

      (*(v11 + 8))(v15, v20);
      return 0;
    }

    if (a4)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_100016F40(0, &qword_1009641D0);
    sub_100016E2C(v54, v58, &unk_1009434C0);
    v23 = v17;
    ObjectType = swift_getObjectType();
    v25 = v57;

    swift_unknownObjectRetain();
    v26 = sub_100153C30(v25, v23, v21, v58, v22, ObjectType, v52);
    if (sub_100153DEC())
    {
      v27 = sub_100151798();
      swift_unknownObjectRelease();
      if ((v27 & 1) == 0)
      {

        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v26;
  }

  return result;
}

uint64_t sub_100151798()
{
  v26 = sub_10075EBAC();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v1 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for FlowDestination();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v25 = sub_10076B96C();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F63C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    memset(v27, 0, sizeof(v27));

    sub_10012062C(v16, v27, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10000CFBC(v4, &unk_10094A890);
    }

    else
    {
      sub_100155A38(v4, v11, type metadata accessor for FlowDestination);
      sub_100155A38(v11, v8, type metadata accessor for FlowDestination);
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v17 = sub_10000A5D4(&unk_100958CC0);
        v18 = v25;
        (*(v12 + 32))(v14, &v8[*(v17 + 48)], v25);
        v19 = sub_10075DB7C();
        (*(*(v19 - 8) + 8))(v8, v19);
        goto LABEL_9;
      }

      sub_100155AA0(v8, type metadata accessor for FlowDestination);
    }
  }

  sub_100763CEC();
  if (swift_dynamicCastClass())
  {

    sub_100763CBC();

    v18 = v25;
LABEL_9:
    sub_10000A5D4(&unk_10094A8C0);
    sub_10076F64C();
    sub_10076FC1C();
    swift_getObjectType();
    sub_10075EE2C();
    swift_getObjectType();
    sub_10075ED1C();
    swift_unknownObjectRelease();
    v20 = sub_10075EB4C();
    (*(v24 + 8))(v1, v26);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100762A9C();
      if (swift_dynamicCastClass())
      {
        v21 = sub_100762A8C();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_16:
        (*(v12 + 8))(v14, v18);
        v22 = v20 | v21;
        return v22 & 1;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v21 = 0;
    goto LABEL_16;
  }

  v22 = 0;
  return v22 & 1;
}

unint64_t sub_100151C8C()
{
  v1 = swift_isaMask & *v0;
  v103 = v0;
  v100 = v1;
  v2 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v2 - 8);
  v4 = &v85 - v3;
  v5 = sub_100766EDC();
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin(v5);
  v96 = v6;
  v97 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = &v85 - v8;
  v9 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v9);
  v101 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v11 - 8);
  v94 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v85 - v14;
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v95 = (&v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v104 = &v85 - v20;
  v21 = sub_10000A5D4(&unk_10094A880);
  __chkstk_darwin(v21 - 8);
  v23 = &v85 - v22;
  v24 = sub_10076677C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075FF1C();
  v28 = v24;
  v29 = v25;
  if ((*(v25 + 48))(v23, 1, v28) == 1)
  {
    v30 = &unk_10094A880;
    v31 = v23;
LABEL_6:
    sub_10000CFBC(v31, v30);
    return 0;
  }

  v92 = v4;
  (*(v25 + 32))(v27, v23, v28);
  v32 = sub_10076673C();
  v33 = v27;
  if (!v32)
  {
    (*(v25 + 8))(v27, v28);
    return 0;
  }

  v34 = v32;
  v35 = v29;
  v93 = v28;

  sub_10076676C();
  sub_10012062C(v34, v106, v15);
  v36 = *(v17 + 48);
  if (v36(v15, 1, v16) == 1)
  {
    (*(v29 + 8))(v33, v93);

    v30 = &unk_10094A890;
    v31 = v15;
    goto LABEL_6;
  }

  v90 = v36;
  v37 = v104;
  sub_100155A38(v15, v104, type metadata accessor for FlowDestination);
  v38 = v103;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_100155AA0(v37, type metadata accessor for FlowDestination);
    (*(v35 + 8))(v33, v93);
    return 0;
  }

  v86 = v35;
  v89 = v33;
  v91 = Strong;
  v40 = [Strong traitCollection];

  sub_10075F5BC();
  sub_10075F5AC();

  sub_1001489F0(v102);
  v41 = sub_10012B484();
  v87 = v34;
  v88 = v40;
  if (v41)
  {
    v107 = 0;
    memset(v106, 0, sizeof(v106));
    v42 = *(v38 + qword_10094A6D8);

    sub_10076B87C();
    v43 = v94;
    sub_10012062C(v34, v105, v94);
    v44 = v90;
    if (v90(v43, 1, v16) == 1)
    {
      v45 = v95;
      swift_storeEnumTagMultiPayload();
      if (v44(v43, 1, v16) != 1)
      {
        sub_10000CFBC(v43, &unk_10094A890);
      }
    }

    else
    {
      v45 = v95;
      sub_100155A38(v43, v95, type metadata accessor for FlowDestination);
    }

    v48 = sub_10075F57C();
    v50 = v49;
    v51 = v92;
    sub_10075F59C();
    v46 = sub_10048B0C0(v45, v40, v48, v50, v51, v106, v42, 1);

    sub_10000CFBC(v51, &unk_100958150);
    sub_100155AA0(v45, type metadata accessor for FlowDestination);
    sub_10000CFBC(v106, &unk_10094A8A0);
    if (!v46)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v46 = sub_1004926B0(v34, v40, *(v38 + qword_10094A6D8));
    if (!v46)
    {
LABEL_33:
      v74 = v104;
      v75 = v89;
      v76 = v93;
      v61 = v91;
      v67 = v88;
LABEL_39:

      sub_100155AA0(v101, type metadata accessor for FlowPresentationHints);
      sub_100155AA0(v74, type metadata accessor for FlowDestination);
      (*(v86 + 8))(v75, v76);
      v77 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = v97;
      v80 = v98 + 32;
      v79 = *(v98 + 32);
      v81 = v99;
      v79(v97, v102, v99);
      v82 = (*(v80 + 48) + 48) & ~*(v80 + 48);
      v83 = swift_allocObject();
      v84 = v100;
      *(v83 + 2) = *(v100 + 80);
      *(v83 + 3) = *(v84 + 88);
      *(v83 + 4) = v77;
      *(v83 + 5) = v87;
      v79(&v83[v82], v78, v81);
      return v46;
    }
  }

  v52 = v46;
  ObjectType = swift_getObjectType();
  v54 = swift_conformsToProtocol2();
  v55 = v52;
  if (v54)
  {
    v56 = v54;
    (*(v54 + 16))(1, ObjectType, v54);
    v57 = *(v56 + 32);
    v58 = v91;
    v55 = v91;
    v57(v58, ObjectType, v56);
  }

  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (!v59)
  {
    goto LABEL_33;
  }

  v60 = v59;
  v61 = v52;
  v62 = [v60 viewControllers];
  sub_100016F40(0, &qword_1009453B0);
  v63 = sub_1007701BC();

  if (!(v63 >> 62))
  {
    v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v64)
    {
      goto LABEL_25;
    }

LABEL_37:

    v67 = v88;
    v75 = v89;
    v73 = v91;
LABEL_38:

    v74 = v104;
    v76 = v93;
    goto LABEL_39;
  }

  v64 = sub_10077158C();
  if (!v64)
  {
    goto LABEL_37;
  }

LABEL_25:
  v65 = __OFSUB__(v64, 1);
  result = v64 - 1;
  if (v65)
  {
    __break(1u);
    goto LABEL_41;
  }

  if ((v63 & 0xC000000000000001) != 0)
  {
LABEL_41:
    v66 = sub_10077149C();
LABEL_30:
    v67 = v66;

    swift_getObjectType();
    v68 = swift_conformsToProtocol2();
    if (v68 && v67)
    {
      v69 = v68;
      v70 = swift_getObjectType();
      (*(v69 + 16))(1, v70, v69);
      v71 = *(v69 + 32);
      v72 = v91;
      v73 = v91;
      v71(v72, v70, v69);

      v67 = v88;
    }

    else
    {

      v73 = v61;
      v61 = v88;
    }

    v75 = v89;
    goto LABEL_38;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v66 = *(v63 + 8 * result + 32);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001527C4()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_10000A5D4(&unk_10094A880);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_10076677C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075FF1C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CFBC(v4, &unk_10094A880);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_10076673C();
    (*(v6 + 8))(v8, v5);
    if (v9)
    {
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = *(v1 + 80);
      v11[3] = *(v1 + 88);
      v11[4] = v10;
      v11[5] = v9;
    }
  }

  return 0;
}

uint64_t sub_100152A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = qword_10094A6D8;
    v10 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      return sub_10000CFBC(v6, &unk_100943200);
    }

    else
    {
      v12 = *&v8[v9];

      sub_100263C24(a3, 1, v12, v6);

      return (*(v11 + 8))(v6, v10);
    }
  }

  return result;
}

void sub_100152BAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v83 = a1;
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v80 = &v68 - v5;
  v75 = sub_10075F65C();
  v78 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765F6C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100766EDC();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v76 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - v14;
  v16 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = sub_10076C15C();
  v20 = *(v19 - 1);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v69 = v8;
  v70 = v7;
  swift_getObjectType();
  v81 = &protocol descriptor for FlowPreviewingViewController;
  v23 = swift_conformsToProtocol2();
  if (v23 && v83)
  {
    v24 = v23;
    v25 = v19;
    v26 = v83;
    ObjectType = swift_getObjectType();
    v28 = v26;
    v29 = v22;
    v30 = *(v24 + 40);
    v31 = v28;
    v30(ObjectType, v24);
    v22 = v29;
    v19 = v25;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v34 = v83;
    v35 = [v33 viewControllers];
    sub_100016F40(0, &qword_1009453B0);
    v36 = sub_1007701BC();

    if (v36 >> 62)
    {
      v37 = sub_10077158C();
      if (v37)
      {
LABEL_8:
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v38)
        {
          __break(1u);
        }

        else if ((v36 & 0xC000000000000001) == 0)
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_48;
          }

          v40 = *(v36 + 8 * v39 + 32);
          goto LABEL_13;
        }

        v40 = sub_10077149C();
LABEL_13:
        v41 = v40;

        swift_getObjectType();
        v42 = swift_conformsToProtocol2();
        if (v42 && v41)
        {
          v43 = v42;
          v44 = swift_getObjectType();
          (*(v43 + 40))(v44, v43);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_19:
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.viewController(_:), v19);
  v45 = sub_10075DB7C();
  (*(*(v45 - 8) + 56))(v18, 1, 1, v45);
  v46 = sub_10076096C();
  (*(*(v46 - 8) + 56))(v15, 1, 1, v46);
  v68 = sub_100016F40(0, &qword_1009453B0);
  v85 = v68;
  v84 = v83;
  v47 = v83;
  sub_10076F4DC();
  (*(v74 + 16))(v77, v79, v72);
  (*(v69 + 104))(v71, enum case for FlowAnimationBehavior.infer(_:), v70);
  (*(v78 + 104))(v73, enum case for FlowOrigin.inapp(_:), v75);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v48 = sub_10075F5EC();
  v49 = qword_10094A6D8;
  v50 = sub_10000A5D4(&unk_1009428E0);
  v51 = v80;
  sub_10076F5AC();
  v52 = *(v50 - 8);
  if ((*(v52 + 48))(v51, 1, v50) == 1)
  {
    sub_10000CFBC(v51, &unk_100943200);
  }

  else
  {
    v53 = *&Strong[v49];

    sub_100263C24(v48, 1, v53, v51);

    (*(v52 + 8))(v51, v50);
  }

  swift_getObjectType();
  v54 = swift_conformsToProtocol2();
  if (v54 && v83)
  {
    v55 = v54;
    v56 = swift_getObjectType();
    (*(v55 + 48))(v56, v55);
  }

  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (!v57)
  {

LABEL_40:

    return;
  }

  v58 = v57;
  v19 = v47;
  v59 = [v58 viewControllers];
  v60 = sub_1007701BC();

  if (!(v60 >> 62))
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  v61 = sub_10077158C();
  if (!v61)
  {
LABEL_39:

    goto LABEL_40;
  }

LABEL_28:
  v38 = __OFSUB__(v61, 1);
  v62 = v61 - 1;
  if (v38)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v60 & 0xC000000000000001) != 0)
  {
LABEL_46:
    v63 = sub_10077149C();
    goto LABEL_33;
  }

  if ((v62 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:
    __break(1u);
    return;
  }

  v63 = *(v60 + 8 * v62 + 32);
LABEL_33:
  v64 = v63;

  swift_getObjectType();
  v65 = swift_conformsToProtocol2();
  if (v65)
  {
    if (v64)
    {
      v66 = v65;
      v67 = swift_getObjectType();
      (*(v66 + 48))(v67, v66);
    }
  }
}

uint64_t sub_100153618(uint64_t a1)
{

  sub_10000CC8C(a1 + qword_10094A6C8);
  swift_unknownObjectWeakDestroy();
}

uint64_t sub_1001536B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100153790(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10075E11C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for PreviewItem()
{
  result = qword_10094A818;
  if (!qword_10094A818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100153894()
{
  sub_10075E11C();
  if (v0 <= 0x3F)
  {
    sub_100153960(319, qword_10094A828, &qword_1009441F0);
    if (v1 <= 0x3F)
    {
      sub_100153960(319, qword_10094B9D0, &qword_100942F10);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100153960(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100016F40(255, a3);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100153A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CFBC(v7, &unk_100943200);
  }

  sub_100263BF0(a3, 1, a2, v7);

  return (*(v9 + 8))(v7, v8);
}

id sub_100153B50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_100153BA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100016F40(0, &unk_100949990);
  v2 = sub_1007701BC();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_100153C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10076B8EC();
  if (v11)
  {
    v12 = sub_10076B8FC();
    if (v12)
    {
      v13 = v12;
      if (sub_10076BE0C())
      {
        sub_10076044C();
      }

      else if (sub_10076BDFC())
      {
        sub_1005A6008(v13, 0);
      }
    }

    sub_100016E2C(a4, v18, &unk_1009434C0);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a7;
    *(v15 + 32) = a1;
    v16 = v18[1];
    *(v15 + 40) = v18[0];
    *(v15 + 56) = v16;
    v14 = sub_100770F1C();
    sub_10000CFBC(a4, &unk_1009434C0);
  }

  else
  {
    sub_10000CFBC(a4, &unk_1009434C0);

    swift_unknownObjectRelease();
    return 0;
  }

  return v14;
}

BOOL sub_100153DEC()
{
  v0 = sub_10076C15C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  sub_10075F63C();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  sub_10075F5FC();
  (*(v1 + 104))(v3, enum case for FlowPage.writeReview(_:), v0);
  sub_100155E48();
  sub_10077018C();
  sub_10077018C();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {

    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v6, v0);

    return 1;
  }

  v9 = sub_10077167C();

  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);

  if (v9)
  {
    return 1;
  }

LABEL_7:
  sub_100763CEC();
  return swift_dynamicCastClass() != 0;
}

id sub_100154034(void *a1)
{
  v2 = v1;
  v4 = sub_10075E11C();
  v64 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_10094A870);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - v8;
  v67 = sub_10075FF3C();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = v10;
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v58 - v12;
  v13 = sub_10000A5D4(&qword_10094A868);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - v14;
  v16 = type metadata accessor for PreviewItem();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v68 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 view];
  [a1 locationInView:v20];
  v22 = v21;
  v24 = v23;

  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v26 = result;
  (*(v2 + qword_10094A6C0))(v22, v24);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    v27 = &qword_10094A868;
    v28 = v15;
    goto LABEL_9;
  }

  v61 = v2;
  v29 = v68;
  sub_100155A38(v15, v68, type metadata accessor for PreviewItem);
  v30 = v64;
  (*(v64 + 2))(v6, v29, v4);
  v31 = *(v29 + *(v16 + 20));
  if (v31)
  {
    v32 = sub_100016F40(0, &qword_1009441F0);
    v33 = v31;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    *(&aBlock + 1) = 0;
    *&v71 = 0;
  }

  v34 = v67;
  v35 = v65;
  *&aBlock = v33;
  *(&v71 + 1) = v32;
  v36 = v33;
  sub_10014FF1C(&aBlock, v9);
  (*(v30 + 1))(v6, v4);
  sub_10000CFBC(&aBlock, &unk_1009434C0);
  if (v35[6](v9, 1, v34) == 1)
  {
    sub_100155AA0(v68, type metadata accessor for PreviewItem);

    v27 = &unk_10094A870;
    v28 = v9;
LABEL_9:
    sub_10000CFBC(v28, v27);
    return 0;
  }

  v64 = v35[4];
  v64(v66, v9, v34);
  if (v31)
  {
    v37 = v36;
    [v26 convertPoint:v37 toCoordinateSpace:{v22, v24}];
    v38 = [v37 hitTest:0 withEvent:?];
    if (v38)
    {
      v60 = v37;
      v39 = v38;
      sub_100016F40(0, &qword_1009441F0);
      v59 = v39;
      do
      {
        v69 = v39;
        v40 = v39;
        sub_10000A5D4(&qword_10094A8E0);
        if (swift_dynamicCast())
        {
          v41 = *(&v71 + 1);
          sub_10000CFBC(&aBlock, &qword_10094A8E8);
          if (v41)
          {

            (*(v65 + 1))(v66, v67);
            sub_100155AA0(v68, type metadata accessor for PreviewItem);
            return 0;
          }
        }

        else
        {
          v72 = 0;
          aBlock = 0u;
          v71 = 0u;
          sub_10000CFBC(&aBlock, &qword_10094A8E8);
        }

        v39 = [v40 superview];
      }

      while (v39);

      v34 = v67;
      v35 = v65;
      v37 = v60;
    }
  }

  v42 = v66;
  v43 = sub_100150294();
  v45 = v44;
  v61 = v44;
  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v43;
  v48[3] = v45;
  v65 = v43;
  v48[4] = v47;
  v49 = v63;
  v35[2](v63, v42, v34);
  v50 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v51 = swift_allocObject();
  v64((v51 + v50), v49, v34);
  v64 = objc_opt_self();
  v72 = sub_100155F84;
  v73 = v48;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v52 = v35;
  *&v71 = sub_100153B50;
  *(&v71 + 1) = &unk_100889FB0;
  v53 = _Block_copy(&aBlock);
  v54 = v43;
  v55 = v61;
  sub_1001560B4(v54, v61);

  v72 = sub_100156044;
  v73 = v51;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v71 = sub_100153BA0;
  *(&v71 + 1) = &unk_100889FD8;
  v56 = _Block_copy(&aBlock);

  v57 = [v64 configurationWithIdentifier:0 previewProvider:v53 actionProvider:v56];

  _Block_release(v56);
  _Block_release(v53);

  sub_1001559F4(v65, v55);
  v52[1](v66, v67);
  sub_100155AA0(v68, type metadata accessor for PreviewItem);
  return v57;
}

uint64_t sub_1001548B0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_10094A868);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PreviewItem();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 view];
  [a1 locationInView:v14];
  v16 = v15;
  v18 = v17;

  (*(v3 + qword_10094A6C0))(v16, v18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000CFBC(v8, &qword_10094A868);
  }

  sub_100155A38(v8, v13, type metadata accessor for PreviewItem);
  sub_10015074C(v13);
  v20 = *&v13[*(v9 + 20)];
  if (v20)
  {
    ObjectType = swift_getObjectType();
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v23 = *(v22 + 16);
      v24 = v22;
      v25 = v20;
      v23(a2, ObjectType, v24);
    }
  }

  return sub_100155AA0(v13, type metadata accessor for PreviewItem);
}

uint64_t sub_100154B0C(void *a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&qword_10094A868);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for PreviewItem();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 view];
  [a1 locationInView:v13];
  v15 = v14;
  v17 = v16;

  (*(v2 + qword_10094A6C0))(v15, v17);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CFBC(v7, &qword_10094A868);
  }

  sub_100155A38(v7, v12, type metadata accessor for PreviewItem);
  v19 = *&v12[*(v8 + 20)];
  if (v19)
  {
    ObjectType = swift_getObjectType();
    v21 = swift_conformsToProtocol2();
    if (v21)
    {
      v22 = *(v21 + 24);
      v23 = v21;
      v24 = v19;
      v22(a2, ObjectType, v23);
    }
  }

  return sub_100155AA0(v12, type metadata accessor for PreviewItem);
}

uint64_t sub_100154D58(void *a1, void *a2)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_10075E11C();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10094A870);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_10075FF3C();
  v49 = *(v11 - 8);
  v50 = v11;
  __chkstk_darwin(v11);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_10094A868);
  __chkstk_darwin(v13 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PreviewItem();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 view];
  [a1 locationInView:v21];
  v23 = v22;
  v25 = v24;

  (*(v3 + qword_10094A6C0))(v23, v25);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10000CFBC(v15, &qword_10094A868);
  }

  sub_100155A38(v15, v20, type metadata accessor for PreviewItem);
  v27 = v47;
  (*(v47 + 16))(v7, v20, v5);
  v28 = *&v20[*(v16 + 20)];
  if (v28)
  {
    v29 = sub_100016F40(0, &qword_1009441F0);
  }

  else
  {
    v29 = 0;
    v52 = 0;
    v53 = 0;
  }

  v30 = v49;
  aBlock = v28;
  v54 = v29;
  v31 = v28;
  sub_10014FF1C(&aBlock, v10);
  (*(v27 + 8))(v7, v5);
  sub_10000CFBC(&aBlock, &unk_1009434C0);
  v32 = v50;
  if ((*(v30 + 48))(v10, 1, v50) == 1)
  {
    sub_100155AA0(v20, type metadata accessor for PreviewItem);
    return sub_10000CFBC(v10, &unk_10094A870);
  }

  else
  {
    (*(v30 + 32))(v48, v10, v32);
    v33 = sub_100150294();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    if (v35 && (v39 = v33, (Strong = v34) != 0) || (Strong = swift_unknownObjectWeakLoadStrong(), v36))
    {

      v41 = v38;
    }

    else
    {
      v41 = 0;
    }

    v42 = swift_allocObject();
    v42[2] = Strong;
    v42[3] = v36;
    v42[4] = v41;
    v55 = sub_1001559D0;
    v56 = v42;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_10009AEDC;
    v54 = &unk_100889E70;
    v43 = _Block_copy(&aBlock);
    v44 = Strong;
    sub_10001CE50(v36);

    [v46 addCompletion:v43];
    _Block_release(v43);
    sub_1000167E0(v36);

    sub_1001559F4(v34, v36);
    (*(v30 + 8))(v48, v32);
    return sub_100155AA0(v20, type metadata accessor for PreviewItem);
  }
}

id sub_100155308(void *a1)
{
  v3 = sub_10000A5D4(&qword_10094A868);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for PreviewItem();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 view];
  [a1 locationInView:v11];
  v13 = v12;
  v15 = v14;

  (*(v1 + qword_10094A6C0))(v13, v15);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000CFBC(v5, &qword_10094A868);
    return 0;
  }

  else
  {
    sub_100155A38(v5, v10, type metadata accessor for PreviewItem);
    v17 = *&v10[*(v6 + 20)];
    if (v17)
    {
      v18 = objc_allocWithZone(UIPreviewParameters);
      v19 = v17;
      v20 = [v18 init];
      [v20 setBackgroundColor:*&v10[*(v6 + 24)]];
      ObjectType = swift_getObjectType();
      v22 = swift_conformsToProtocol2();
      if (v22)
      {
        v23 = v22;
        v24 = *(v22 + 8);
        v25 = v19;
        v24(ObjectType, v23);
        v26 = (*(v23 + 40))(ObjectType, v23);
        if (v26)
        {
          v27 = v26;

          v25 = v27;
        }
      }

      else
      {
        v25 = v19;
      }

      v28 = [objc_allocWithZone(UITargetedPreview) initWithView:v25 parameters:v20];

      sub_100155AA0(v10, type metadata accessor for PreviewItem);
      return v28;
    }

    else
    {
      sub_100155AA0(v10, type metadata accessor for PreviewItem);
      return 0;
    }
  }
}

id sub_10015561C(void *a1)
{
  v3 = sub_10000A5D4(&qword_10094A868);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for PreviewItem();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 view];
  [a1 locationInView:v11];
  v13 = v12;
  v15 = v14;

  (*(v1 + qword_10094A6C0))(v13, v15);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000CFBC(v5, &qword_10094A868);
  }

  else
  {
    sub_100155A38(v5, v10, type metadata accessor for PreviewItem);
    v16 = *&v10[*(v6 + 20)];
    if (v16)
    {
      v17 = objc_allocWithZone(UIPreviewParameters);
      v18 = v16;
      v19 = [v17 init];
      [v19 setBackgroundColor:*&v10[*(v6 + 24)]];
      ObjectType = swift_getObjectType();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = v21;
        v23 = *(v21 + 32);
        v24 = v18;
        v23(ObjectType, v22);
        v25 = (*(v22 + 40))(ObjectType, v22);
        if (v25)
        {
          v26 = v25;

          v24 = v26;
        }
      }

      else
      {
        v24 = v18;
      }

      v27 = [v24 window];
      if (v27)
      {

        v28 = [objc_allocWithZone(UITargetedPreview) initWithView:v24 parameters:v19];
        sub_100155AA0(v10, type metadata accessor for PreviewItem);
        return v28;
      }
    }

    sub_100155AA0(v10, type metadata accessor for PreviewItem);
  }

  return 0;
}

uint64_t sub_100155988()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001559DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001559F4(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

uint64_t sub_100155A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100155AA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100155B00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100155B38()
{
  v1 = sub_100766EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100155C04(void *a1)
{
  v3 = *(sub_100766EDC() - 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_100152BAC(a1, v4, v5, v6);
}

uint64_t sub_100155C8C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100155CD8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100155D20()
{
  v1 = sub_10076801C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

unint64_t sub_100155E48()
{
  result = qword_10094A8D0;
  if (!qword_10094A8D0)
  {
    sub_10076C15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A8D0);
  }

  return result;
}

uint64_t sub_100155EA0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_10000CD74(v0 + 40);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100155F3C()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_100155F84()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_100155FBC()
{
  v1 = sub_10075FF3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

UIMenu sub_100156044()
{
  sub_10075FF3C();

  return sub_1001505AC();
}

void *sub_1001560B4(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

uint64_t sub_100156104()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099D280);
  sub_10000A61C(v0, qword_10099D280);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100156268(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v46 = a1;
  sub_1007639FC();
  if (qword_100940AD8 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0E98);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_10076D9AC();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_10076D9BC();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_1007639DC();
  if (qword_100940AE0 != -1)
  {
    swift_once();
  }

  v42 = sub_10000A61C(v6, qword_1009A0EB0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v54);
  v44(v17, v5, v2);
  sub_10076D9BC();
  v49(v5, v2);
  sub_100763AAC();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_10076D9BC();
  v22 = v49;
  v49(v5, v2);
  sub_100763A7C();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(v54);
  v21(v26, v5, v2);
  sub_10076D9BC();
  v22(v5, v2);
  sub_100763A6C();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v54);
  v21(v28, v5, v2);
  sub_10076D9BC();
  v22(v5, v2);
  sub_100763ACC();
  if (qword_100940AF0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_10000A61C(v45, qword_1009A0EE0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v54);
  v21(v32, v5, v2);
  sub_10076D9BC();
  v49(v5, v2);
  sub_100763ABC();
  if (qword_100940AE8 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v29, qword_1009A0EC8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_10076D9BC();
  v38 = v49;
  v49(v5, v2);
  sub_100763A3C();
  sub_100763A1C();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(v54);
  v37(v39, v5, v2);
  sub_10076D9BC();
  v38(v5, v2);
  return sub_100763A2C();
}

uint64_t sub_100156ABC()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099D298);
  sub_10000A61C(v0, qword_10099D298);
  if (qword_10093F840 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099D280);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100156C20()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_10076D39C();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10000DB18(v6, qword_10099D2B0);
  v28 = v6;
  v31 = sub_10000A61C(v6, qword_10099D2B0);
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  *&v55 = 0x4030000000000000;
  v29 = v5;
  sub_10076D3AC();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  *&v52 = 0x4024000000000000;
  if (qword_1009410E0 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D3DC();
  v8 = sub_10000A61C(v7, qword_1009A2098);
  v38 = *(*(v7 - 8) + 16);
  v38(v3, v8, v7);
  v9 = enum case for FontSource.useCase(_:);
  v35 = v1[13];
  v35(v3, enum case for FontSource.useCase(_:), v0);
  v34 = sub_10076D9AC();
  v50 = v34;
  v51 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(&v46);
  v11 = v1[2];
  v37 = v1 + 2;
  v33 = v11;
  v11(v10, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v36 = v13;
  v13(v3, v0);
  if (qword_1009410E8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v7, qword_1009A20B0);
  v38(v3, v14, v7);
  v35(v3, v9, v0);
  v47 = v34;
  v48 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v46);
  v44 = v0;
  v45 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v43);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v36(v3, v0);
  v27 = v12;
  if (qword_1009410F0 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v7, qword_1009A20C8);
  v38(v3, v26, v7);
  v25 = v9;
  v16 = v35;
  v35(v3, v9, v0);
  v17 = v34;
  v44 = v34;
  v45 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v43);
  v41 = v0;
  v42 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(&v40);
  v19 = v33;
  v33(v18, v3, v0);
  sub_10076D9BC();
  v36(v3, v0);
  v38(v3, v26, v7);
  v16(v3, v25, v0);
  v41 = v17;
  v42 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v40);
  v39[3] = v0;
  v39[4] = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v39);
  v19(v20, v3, v0);
  sub_10076D9BC();
  v36(v3, v0);
  v21 = v31;
  sub_100012498(&v55, v31);
  v22 = v28;
  (*(v30 + 32))(v21 + v28[5], v29, v32);
  sub_100012498(&v52, v21 + v22[6]);
  sub_100012498(&v49, v21 + v22[7]);
  sub_100012498(&v46, v21 + v22[8]);
  sub_100012498(&v43, v21 + v22[9]);
  return sub_100012498(&v40, v21 + v22[10]);
}

UIColor sub_100157218()
{
  sub_100016F40(0, &qword_100942F10);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_100770DEC(v3, v2).super.isa;
  qword_10099D2C8 = result.super.isa;
  return result;
}

id sub_1001572AC()
{
  v1 = v0;
  v2 = sub_100763ADC();
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v77 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076E1EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076E21C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 traitCollection];
  v14 = [v13 preferredContentSizeCategory];
  v15 = sub_10077087C();

  v16 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_gradientBlurView;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_gradientBlurView];
  if (v15)
  {
    v73 = v5;
    v74 = v12;
    v75 = v9;
    v76 = v8;
    if (v17)
    {
      [v17 setHidden:1];
    }

    v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_titleLabel];
    [v18 setNumberOfLines:{0, v73}];
    v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_contentView];
    [v19 addSubview:v18];
    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_kindLabel];
    [v20 setNumberOfLines:0];
    v21 = [v20 layer];
    [v21 setCompositingFilter:0];

    [v19 addSubview:v20];
    v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_subtitleLabel];
    if (v22)
    {
      v23 = v22;
      [v23 setNumberOfLines:0];
      v24 = [v23 layer];
      [v24 setCompositingFilter:0];

      [v19 addSubview:v23];
    }

    v25 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_separatorView;
    v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_separatorView];
    if (v26 || (((*(v73 + 104))(v7, enum case for Separator.Position.top(_:), v4), v80[3] = sub_10076D67C(), v80[4] = &protocol witness table for ZeroDimension, sub_10000DB7C(v80), sub_10076D66C(), v27 = v74, sub_10076E1FC(), v28 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v29 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator, swift_beginAccess(), v30 = *(v75 + 40), v31 = v28, v30(&v28[v29], v27, v76), swift_endAccess(), v31, (v32 = *&v1[v25]) == 0) ? (v33 = 0) : (objc_msgSend(v32, "removeFromSuperview"), v33 = *&v1[v25]), *&v1[v25] = v31, v54 = v31, v33, objc_msgSend(v19, "addSubview:", v54), v54, objc_msgSend(v1, "setNeedsLayout"), v54, (v26 = *&v1[v25]) != 0))
    {
      [v26 setHidden:0];
    }

    v55 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView;
    v56 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView];
    if (v56)
    {
      v57 = qword_10093F848;
      v58 = v56;
      if (v57 != -1)
      {
        swift_once();
      }

      v59 = v79;
      v60 = sub_10000A61C(v79, qword_10099D298);
      v62 = v77;
      v61 = v78;
      (*(v78 + 16))(v77, v60, v59);
      v63 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v61 + 24))(&v58[v63], v62, v59);
      swift_endAccess();
      [v58 setNeedsLayout];

      (*(v61 + 8))(v62, v59);
      v64 = *&v1[v55];
      if (v64)
      {
        [v64 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
      }
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_10;
    }

    v50 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
    v51 = sub_10046D7FC(0);
    v52 = *&v1[v16];
    if (v52)
    {
      [v52 removeFromSuperview];
      v53 = *&v1[v16];
    }

    else
    {
      v53 = 0;
    }

    *&v1[v16] = v51;
    v66 = v51;

    v67 = *&v1[v16];
    if (v67)
    {
      v68 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
      v69 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton];
      if (v69)
      {
        v70 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton];
      }

      else
      {
        v70 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_titleLabel];
        v69 = 0;
      }

      v71 = v69;
      [v68 insertSubview:v67 belowSubview:v70];
    }

    [v1 setNeedsLayout];

    v72 = *&v1[v16];
    if (v72)
    {
      [v72 setUserInteractionEnabled:0];
      v17 = *&v1[v16];
      if (v17)
      {
LABEL_10:
        [v17 setHidden:0];
      }
    }

    v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_titleLabel];
    [v34 setNumberOfLines:1];
    v35 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
    [v35 addSubview:v34];
    v36 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_kindLabel];
    [v36 setNumberOfLines:1];
    [v35 addSubview:v36];
    v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_subtitleLabel];
    if (v37)
    {
      v38 = v37;
      [v38 setNumberOfLines:2];
      [v35 addSubview:v38];
    }

    v39 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_separatorView];
    if (v39)
    {
      [v39 setHidden:1];
    }

    v40 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView;
    v41 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView];
    if (v41)
    {
      v42 = qword_10093F840;
      v43 = v41;
      if (v42 != -1)
      {
        swift_once();
      }

      v44 = v79;
      v45 = sub_10000A61C(v79, qword_10099D280);
      v47 = v77;
      v46 = v78;
      (*(v78 + 16))(v77, v45, v44);
      v48 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v46 + 24))(&v43[v48], v47, v44);
      swift_endAccess();
      [v43 setNeedsLayout];

      (*(v46 + 8))(v47, v44);
      v49 = *&v1[v40];
      if (v49)
      {
        [v49 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
      }
    }

    sub_100157B38();
  }

  return [v1 setNeedsLayout];
}

id sub_100157B38()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_shadowView];
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  [v1 setHidden:v3 == 2];
  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  LOBYTE(v3) = sub_10077087C();

  if ((v3 & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] overrideUserInterfaceStyle];
    sub_10076FF9C();
    v6 = sub_10076FF6C();

    v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_subtitleLabel];
    if (v7)
    {
      v8 = [v7 layer];
      [v8 setCompositingFilter:v6];
    }

    v9 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_kindLabel] layer];
    [v9 setCompositingFilter:v6];
  }

  if (v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v0 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_borderView];

  return [v13 setHidden:v12];
}

id sub_100157D38(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_10076FF9C();
  v8 = v7;
  if (v6 == sub_10076FF9C() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_10077167C();

    if ((v11 & 1) == 0)
    {
      return sub_1001572AC();
    }
  }

  return result;
}

id sub_100157E54(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  result = [a2 userInterfaceStyle];
  if (v5 != result)
  {
    sub_100157B38();

    return [a1 setNeedsLayout];
  }

  return result;
}

id sub_100157F54()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupTapGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButtonPresenter];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v5)
    {
      [v5 invalidate];
      v5 = *(v3 + v4);
    }

    *(v3 + v4) = 0;
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_1001581A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *&v3[*a3];
  result = [v6 text];
  if (result)
  {
    v8 = result;
    v9 = sub_10076FF9C();
    v11 = v10;

    if (!a2)
    {
      v14 = 0;
      goto LABEL_12;
    }

    if (v9 == a1 && v11 == a2)
    {

LABEL_16:
    }

    v13 = sub_10077167C();

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v14 = sub_10076FF6C();
LABEL_12:

  [v6 setText:v14];

  return [v3 setNeedsLayout];
}

void sub_100158300(uint64_t a1, uint64_t a2)
{
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_subtitleLabel;
  v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_subtitleLabel];
  if (!v14 || (v15 = [v14 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v49 = v13;
  v16 = v6;
  v17 = a1;
  v18 = v15;
  v19 = sub_10076FF9C();
  v21 = v20;

  if (!a2)
  {

    v6 = v16;
    v13 = v49;
    v24 = *&v2[v49];
    if (v24)
    {
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  if (v19 != v17 || v21 != a2)
  {
    v23 = sub_10077167C();

    v6 = v16;
    v13 = v49;
    if (v23)
    {
      goto LABEL_24;
    }

LABEL_11:
    v24 = *&v2[v13];
    if (v24)
    {
      goto LABEL_31;
    }

LABEL_12:
    v25 = v2;
    if (qword_1009410F0 != -1)
    {
      swift_once();
    }

    v26 = sub_10076D3DC();
    v27 = sub_10000A61C(v26, qword_1009A20C8);
    v28 = *(v26 - 8);
    (*(v28 + 16))(v12, v27, v26);
    (*(v28 + 56))(v12, 0, 1, v26);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v29 = objc_allocWithZone(sub_1007626BC());
    v30 = sub_1007626AC();
    v2 = v25;
    v31 = *&v25[v13];
    *&v25[v13] = v30;

    v32 = *&v25[v13];
    if (v32)
    {
      sub_100016F40(0, &qword_100942F10);
      v33 = v32;
      v2 = v25;
      v34 = sub_100770D1C();
      [v33 setTextColor:v34];
    }

    v35 = [v2 traitCollection];
    v36 = [v35 preferredContentSizeCategory];
    v37 = sub_10077087C();

    v38 = *&v2[v13];
    if (v37)
    {
      if (v38)
      {
        [v38 setNumberOfLines:0];
        v39 = *&v2[v13];
        if (v39)
        {
          v40 = [v39 layer];
          [v40 setCompositingFilter:0];

          if (*&v2[v13])
          {
            v41 = &OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_contentView;
            goto LABEL_30;
          }
        }
      }

      __break(1u);
    }

    else if (v38)
    {
      [v38 setNumberOfLines:2];
      v42 = *&v2[v13];
      if (v42)
      {
        v43 = [v42 layer];
        v41 = &OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView;
        v44 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] traitCollection];
        [v44 userInterfaceStyle];

        sub_10076FF9C();
        v45 = sub_10076FF6C();

        [v43 setCompositingFilter:v45];

        if (*&v2[v13])
        {
LABEL_30:
          [*&v2[*v41] addSubview:?];
          v24 = *&v2[v13];
          if (!v24)
          {

LABEL_35:
            [v2 setNeedsLayout];
            return;
          }

LABEL_31:
          v46 = v24;
          if (a2)
          {
            v47 = sub_10076FF6C();
          }

          else
          {
            v47 = 0;
          }

          [v46 setText:v47];

          goto LABEL_35;
        }
      }
    }

    __break(1u);
    return;
  }

LABEL_24:
}

id sub_100158884()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView];
  if (v1)
  {
    v2 = qword_10093F858;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    [v3 setBackgroundColor:qword_10099D2C8];
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_contentView] addSubview:v3];
    v4 = [objc_allocWithZone(UITapGestureRecognizer) init];
    v5 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupTapGestureRecognizer;
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupTapGestureRecognizer];
    *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupTapGestureRecognizer] = v4;

    result = *&v0[v5];
    if (!result || ([result setDelegate:v0], (result = *&v0[v5]) == 0) || (result = objc_msgSend(result, "addTarget:action:", v0, "handleTapWithGestureRecognizer:"), !*&v0[v5]))
    {
      __break(1u);
      return result;
    }

    [v3 addGestureRecognizer:?];
    v8 = [v0 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = sub_10077087C();

    if (v10)
    {
      v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_separatorView];
      if (v11)
      {
        v12 = v11;
        [v12 setHidden:0];
      }
    }
  }

  return [v0 setNeedsLayout];
}

id sub_100158A4C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_100763ADC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView];
  if (v10)
  {
    v11 = v10;
    v12 = [v1 traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    v14 = sub_10077087C();

    if (v14)
    {
      if (qword_10093F848 != -1)
      {
        swift_once();
      }

      v15 = sub_10000A61C(v5, qword_10099D298);
      (*(v6 + 16))(v9, v15, v5);
      v16 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v16], v9, v5);
      swift_endAccess();
      v17 = 16.0;
    }

    else
    {
      if (qword_10093F840 != -1)
      {
        swift_once();
      }

      v18 = sub_10000A61C(v5, qword_10099D280);
      (*(v6 + 16))(v9, v18, v5);
      v19 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v19], v9, v5);
      swift_endAccess();
      v17 = 4.0;
    }

    v20 = v11;
    [v20 setNeedsLayout];
    (*(v6 + 8))(v9, v5);
    [v20 setLayoutMargins:{v17, 0.0, v17, 0.0}];

    v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
    v22 = qword_100940AE0;
    v23 = v20;
    v24 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v25 = sub_10076D3DC();
    v26 = sub_10000A61C(v25, qword_1009A0EB0);
    v27 = *(v25 - 8);
    v28 = *(v27 + 16);
    v28(v4, v26, v25);
    v29 = *(v27 + 56);
    v29(v4, 0, 1, v25);
    sub_1007625DC();

    v30 = *&v23[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    if (qword_100940AE8 != -1)
    {
      swift_once();
    }

    v31 = sub_10000A61C(v25, qword_1009A0EC8);
    v28(v4, v31, v25);
    v29(v4, 0, 1, v25);
    sub_1007625DC();

    v32 = qword_10093F858;
    v33 = v23;
    if (v32 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_10099D2C8];

    v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView];
    if (v34)
    {
      v35 = v34;
      [v35 addSubview:v33];
    }
  }

  return [v1 setNeedsLayout];
}

void sub_100158F88(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10015B08C(&qword_100942810, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
    sub_100016F40(0, &qword_1009441F0);
    v8 = v7;
    v9 = sub_100770EEC();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_100159114(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100159168;
}

void sub_100159168(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_100159280()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventCardLayout(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100159754(v10);
  AppEventCardLayout.placeChildren(relativeTo:in:)(v1, v6, v12, v14, v16, v18);
  (*(v4 + 8))(v6, v3);
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_gradientBlurView];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
    v21 = v19;
    [v20 frame];
    if (CGRectGetHeight(v49) > 0.0)
    {
      [v20 frame];
      Height = CGRectGetHeight(v50);
      [v20 frame];
      v23 = CGRectGetHeight(v51);
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_kindLabel] frame];
      v24 = Height - (v23 - CGRectGetMinY(v52));
      v25 = (v24 + -50.0) / Height;
      v26 = (v24 + 30.0) / Height;
      v27 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = v25;
      v28 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView;
      v29 = [*&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v31 = v30;

      v32 = *&v21[v27];
      v33 = [*&v21[v28] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v34 = [*&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v35 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = v25;
      v36 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
      v37 = [*&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v39 = v38;

      v40 = *&v21[v35];
      v41 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v39, v40}];

      sub_10046CAB0(v26);
      v42 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = v26;
      v43 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v45 = v44;

      v46 = *&v21[v42];
      v47 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v45, v46}];
    }

    sub_10001D3B8(v10);
  }

  else
  {
    sub_10001D3B8(v10);
  }
}

id sub_100159754@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F850 != -1)
  {
    v59 = v4;
    swift_once();
    v4 = v59;
  }

  v7 = sub_10000A61C(v4, qword_10099D2B0);
  v76 = v6;
  sub_10015B0D4(v7, v6);
  v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_shadowView);
  v103 = sub_10075F99C();
  v104 = &protocol witness table for UIView;
  v82 = v8;
  *&v102 = v8;
  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_contentView);
  v100 = sub_10076394C();
  v101 = &protocol witness table for UIView;
  v98 = &protocol witness table for UIView;
  *&v99 = v9;
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_borderView);
  v97 = v100;
  v80 = v10;
  v81 = v9;
  *&v96 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView);
  v12 = sub_100016F40(0, &qword_1009441F0);
  v94 = v12;
  v95 = &protocol witness table for UIView;
  v79 = v11;
  *&v93 = v11;
  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView);
  v91 = sub_10075FD2C();
  v92 = &protocol witness table for UIView;
  v78 = v13;
  *&v90 = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = type metadata accessor for VideoView();
    v71 = &protocol witness table for UIView;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v77 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_gradientBlurView);
  if (v77)
  {
    v70 = type metadata accessor for MediaOverlayGradientBlurView();
    v69 = &protocol witness table for UIView;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v75 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton);
  if (v75)
  {
    v68 = type metadata accessor for NotifyMeButton();
    v67 = &protocol witness table for UIView;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_kindLabel);
  v16 = sub_1007626BC();
  v17 = &protocol witness table for UILabel;
  v88 = v16;
  v89 = &protocol witness table for UILabel;
  v73 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_titleLabel);
  v74 = v15;
  v86 = &protocol witness table for UILabel;
  *&v87 = v15;
  v85 = v16;
  *&v84 = v73;
  v18 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_subtitleLabel);
  v19 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_separatorView);
  if (v19)
  {
    v65 = type metadata accessor for SeparatorView();
    v66 = &protocol witness table for UIView;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  v83 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView);
  v20 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView);
  if (v20)
  {
    v63 = type metadata accessor for SmallLockupView();
    v64 = &protocol witness table for UIView;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  if (v83)
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  if (v83)
  {
    v22 = &protocol witness table for UIView;
  }

  else
  {
    v22 = 0;
  }

  v61 = v22;
  v62 = v21;
  if (!v18)
  {
    v16 = 0;
    v17 = 0;
  }

  sub_10015B138(v76, a1);
  v23 = type metadata accessor for AppEventCardLayout(0);
  sub_100012498(&v102, a1 + v23[5]);
  sub_100012498(&v99, a1 + v23[6]);
  sub_100012498(&v96, a1 + v23[7]);
  sub_100012498(&v93, a1 + v23[8]);
  sub_100012498(&v90, a1 + v23[9]);
  v24 = (a1 + v23[10]);
  *v24 = Strong;
  v24[1] = 0;
  v25 = v71;
  v26 = v72;
  v24[2] = 0;
  v24[3] = v26;
  v24[4] = v25;
  v27 = (a1 + v23[11]);
  v28 = v77;
  *v27 = v77;
  v27[1] = 0;
  v29 = v69;
  v30 = v70;
  v27[2] = 0;
  v27[3] = v30;
  v27[4] = v29;
  v31 = (a1 + v23[12]);
  v32 = v75;
  *v31 = v75;
  v31[1] = 0;
  v33 = v67;
  v34 = v68;
  v31[2] = 0;
  v31[3] = v34;
  v31[4] = v33;
  sub_100012498(&v87, a1 + v23[13]);
  sub_100012498(&v84, a1 + v23[14]);
  v35 = (a1 + v23[15]);
  *v35 = v18;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = v16;
  v35[4] = v17;
  v36 = (a1 + v23[16]);
  *v36 = v19;
  v36[1] = 0;
  v38 = v65;
  v37 = v66;
  v36[2] = 0;
  v36[3] = v38;
  v36[4] = v37;
  v39 = (a1 + v23[17]);
  *v39 = v83;
  v39[1] = 0;
  v40 = v61;
  v41 = v62;
  v39[2] = 0;
  v39[3] = v41;
  v39[4] = v40;
  v42 = (a1 + v23[18]);
  *v42 = v20;
  v42[1] = 0;
  v44 = v63;
  v43 = v64;
  v42[2] = 0;
  v42[3] = v44;
  v42[4] = v43;
  v45 = v20;
  v46 = v82;
  v47 = v81;
  v48 = v80;
  v49 = v79;
  v50 = v78;
  v51 = v28;
  v52 = v32;
  v53 = v74;
  v54 = v73;
  v55 = v18;
  v56 = v19;
  v57 = v83;

  return v57;
}

void sub_100159E20()
{
  v1 = v0;
  v2 = sub_10076F9AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton;
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton])
  {
    v7 = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    sub_10076F95C();
    sub_1000258C0(v12);
    sub_1000258C0(v13);
    sub_100770B9C();
    (*(v3 + 8))(v5, v2);
    [v7 addTarget:v1 action:"notifyMeButtonTapped:" forControlEvents:64];
    v8 = v7[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style];
    v7[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style] = 0;
    if (v8)
    {
      v9 = sub_10077167C();

      if ((v9 & 1) == 0)
      {
        sub_10050E5DC();
      }
    }

    else
    {
    }

    [*&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] addSubview:v7];
    v10 = *&v1[v6];
    *&v1[v6] = v7;
    v11 = v7;

    [v1 setNeedsLayout];
  }
}

void sub_10015A064(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

void *(*sub_10015A0F8(void *a1))(void *result, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_10015A150;
}

void *sub_10015A150(void *result, char a2)
{
  if (a2)
  {

    sub_10015A064(v2);
  }

  else
  {
    v4 = result[1];
    v3 = result[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *result;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }
}

id sub_10015A1F8(char a1, char a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton];
  if (v4)
  {
    v4[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_isActive] = a1 & 1;
    v6 = v4;
    sub_10050F6AC();
    sub_10050F7B0(a2 & 1);
  }

  return [v3 setNeedsLayout];
}

void sub_10015A278(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    sub_100159E20();
  }

  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton];
  if (v5)
  {
    v6 = v5;
    v17 = v6;
    if (a2)
    {
      if ((a1 & 1) == 0)
      {
        if ([v6 isHidden])
        {
          [v17 setAlpha:0.0];
          [v17 setHidden:0];
        }
      }

      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v17;
      v9 = a1 & 1;
      *(v8 + 24) = a1 & 1;
      v22 = sub_10015AFC8;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_10009AEDC;
      v21 = &unk_10088A070;
      v10 = _Block_copy(&aBlock);
      v11 = v17;

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v9;
      *(v13 + 32) = v12;
      v22 = sub_10015B07C;
      v23 = v13;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_1000513F0;
      v21 = &unk_10088A0E8;
      v14 = _Block_copy(&aBlock);
      v15 = v11;

      [v7 animateWithDuration:v10 animations:v14 completion:0.3];

      _Block_release(v14);
      _Block_release(v10);
    }

    else
    {
      if (a1)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      [v6 setHidden:a1 & 1];
      [v17 setAlpha:v16];
      [v2 setNeedsLayout];
    }
  }
}

void sub_10015A530(int a1, id a2, char a3)
{
  [a2 setHidden:a3 & 1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_10015A5A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButtonPresenter);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v3)
    {
      [v3 invalidate];
      v4 = *(v1 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v1 + v2) = 0;
  }
}

id sub_10015A6F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_kindLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v1 setNeedsLayout];
  }

  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_titleLabel];
  v5 = [v4 text];
  if (v5)
  {

    [v4 setText:0];
    [v1 setNeedsLayout];
  }

  sub_100158300(0, 0);
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView];
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  sub_10075FCEC(v16, v7);
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView];
  if (v8)
  {
    [v8 setHidden:1];
  }

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView];
  if (v9)
  {
    [v9 setHidden:1];
  }

  v10 = &v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction];
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_1000167E0(v11);
  sub_10015ADA4();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:v6];
    [v1 setNeedsLayout];
  }

  sub_10015A064(0);
  v15[0] = 0x3FF0000000000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = 0x3FF0000000000000;
  v15[4] = 0;
  v15[5] = 0;
  [v1 setTransform:v15];
  [v1 setAlpha:1.0];
  return [v1 setHidden:0];
}

uint64_t (*sub_10015A974(uint64_t **a1))()
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
  v2[4] = sub_100159114(v2);
  return sub_100019A4C;
}

uint64_t (*sub_10015A9F8(void *a1))()
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
  v2[4] = sub_10015A0F8(v2);
  return sub_10001D41C;
}

uint64_t sub_10015AA74()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10015B08C(&qword_10094A9C0, v1, type metadata accessor for AppEventCardView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_10015AAE8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10015B08C(&qword_10094A9C0, v5, type metadata accessor for AppEventCardView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_10015AB74(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v4 = v2;
  *a1 = v2;
  sub_10015B08C(&qword_10094A9C0, v3, type metadata accessor for AppEventCardView);
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10015AC30(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView);
  sub_100016F40(0, &qword_1009441F0);
  v5 = v4;
  v6 = sub_100770EEC();

  return v6 & 1;
}

void sub_10015ADA4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10015B08C(&qword_100942810, 255, type metadata accessor for VideoView);
    v2 = [v8 superview];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView);
      sub_100016F40(0, &qword_1009441F0);
      v5 = v4;
      v6 = sub_100770EEC();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 removeFromSuperview];
    }
  }
}

id sub_10015AEE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupTapGestureRecognizer;
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupTapGestureRecognizer);
  if (v3)
  {
    [v3 removeTarget:v0 action:0];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  result = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_separatorView);
  if (result)
  {

    return [result setHidden:1];
  }

  return result;
}

uint64_t sub_10015AF90()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10015AFC8()
{
  v1 = 1.0;
  if (*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_10015AFEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015B004()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015B03C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10015B08C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10015B0D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015B138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_10015B19C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  v91 = v2;
  v92 = v3;
  __chkstk_darwin(v2);
  v90 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v5 - 8);
  *&v94 = &v82 - v6;
  v93 = sub_10076F9AC();
  v89 = *(v93 - 1);
  __chkstk_darwin(v93);
  v85 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076771C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - v13;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_gradientBlurView] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_separatorView] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupTapGestureRecognizer] = 0;
  v15 = &v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction];
  *v15 = 0;
  v15[1] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_includeBorderInDarkMode] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButtonPresenter] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_shadowView] = [objc_allocWithZone(sub_10075F99C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10076394C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_contentView] = v16;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] = v17;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1009410E8 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A20B0);
  v20 = *(v18 - 8);
  v87 = *(v20 + 16);
  v87(v14, v19, v18);
  v86 = *(v20 + 56);
  (v86)(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v9 + 104);
  v84 = v9 + 104;
  v22(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v23 = sub_1007626BC();
  v24 = objc_allocWithZone(v23);
  v83 = v8;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_titleLabel] = sub_1007626AC();
  if (qword_1009410E0 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v18, qword_1009A2098);
  v87(v14, v25, v18);
  (v86)(v14, 0, 1, v18);
  v22(v11, v21, v83);
  v26 = objc_allocWithZone(v23);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_kindLabel] = sub_1007626AC();
  v27 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_borderView] = v27;
  v100.receiver = v1;
  v100.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_contentView;
  v30 = *&v28[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_contentView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v31 = v28;
  v32 = v30;
  v33 = v85;
  sub_10076F95C();
  sub_1000258C0(&v96);
  sub_1000258C0(&v98);
  sub_100770B9C();

  v34 = *(v89 + 8);
  v35 = v93;
  v34(v33, v93);
  v89 = v29;
  v36 = *&v28[v29];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v37 = v36;
  sub_10076F95C();
  sub_1000258C0(&v96);
  sub_1000258C0(&v98);
  sub_100770B9C();

  v34(v33, v35);
  ObjCClassFromMetadata = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView;
  v38 = *&v31[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v39 = v38;
  sub_10076F95C();
  sub_1000258C0(&v96);
  sub_1000258C0(&v98);
  sub_100770B9C();

  v34(v33, v35);
  v87 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_titleLabel;
  v40 = *&v31[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_titleLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v41 = v40;
  sub_10076F95C();
  sub_1000258C0(&v96);
  sub_1000258C0(&v98);
  sub_100770B9C();

  v34(v33, v35);
  v86 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_kindLabel;
  v42 = *&v31[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_kindLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v43 = v42;
  sub_10076F95C();
  sub_1000258C0(&v96);
  sub_1000258C0(&v98);
  sub_100770B9C();

  v34(v33, v35);
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v31 setClipsToBounds:0];
  v44 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_shadowView;
  v45 = qword_10093F8C8;
  v46 = *&v31[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_shadowView];
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = sub_10076BCFC();
  v48 = sub_10000A61C(v47, qword_10099D4F8);
  v49 = *(v47 - 8);
  v50 = v94;
  (*(v49 + 16))(v94, v48, v47);
  (*(v49 + 56))(v50, 0, 1, v47);
  sub_10075F97C();

  v51 = *&v31[v44];
  sub_10075F95C();

  v52 = *&v31[v44];
  v53 = v91;
  v54 = v92;
  v55 = *(v92 + 104);
  v56 = v90;
  LODWORD(v94) = enum case for CornerStyle.continuous(_:);
  v93 = v55;
  v55(v90);
  v57 = v52;
  sub_10075F98C();

  v92 = *(v54 + 8);
  (v92)(v56, v53);
  v58 = *&v31[v44];
  v59 = [v31 traitCollection];
  v60 = [v59 userInterfaceStyle];

  [v58 setHidden:v60 == 2];
  [v31 addSubview:*&v31[v44]];
  v61 = v89;
  v62 = qword_10093F858;
  v63 = *&v28[v89];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = qword_10099D2C8;
  [v63 setBackgroundColor:qword_10099D2C8];

  v65 = *&v28[v61];
  (v93)(v56, v94, v53);
  v66 = v65;
  sub_1007638AC();

  (v92)(v56, v53);
  [v31 addSubview:*&v28[v61]];
  v67 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView;
  [*&v28[v61] addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView]];
  [*&v31[v67] addSubview:*(ObjCClassFromMetadata + v31)];
  v68 = *(v87 + v31);
  sub_100016F40(0, &qword_100942F10);
  v69 = v68;
  v70 = sub_100770CFC();
  [v69 setTextColor:v70];

  v71 = *&v86[v31];
  v72 = sub_100770D1C();
  [v71 setTextColor:v72];

  v73 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_borderView;
  v74 = *&v31[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_borderView];
  v75 = v64;
  sub_1007638DC();

  v76 = *&v31[v73];
  sub_1007638EC();

  [*&v31[v73] setUserInteractionEnabled:0];
  [*&v31[v73] setHidden:1];
  v77 = *&v31[v73];
  (v93)(v56, v94, v53);
  v78 = v77;
  sub_1007638AC();

  (v92)(v56, v53);
  [v31 addSubview:*&v31[v73]];
  sub_1001572AC();
  sub_100157B38();
  sub_10000A5D4(&unk_100945BF0);
  v79 = swift_allocObject();
  v94 = xmmword_100783DD0;
  *(v79 + 16) = xmmword_100783DD0;
  *(v79 + 32) = sub_10076E88C();
  *(v79 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v80 = swift_allocObject();
  *(v80 + 16) = v94;
  *(v80 + 32) = sub_10076E4CC();
  *(v80 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v31;
}

void sub_10015BF80()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupTapGestureRecognizer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_includeBorderInDarkMode) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButtonPresenter) = 0;
  sub_10077156C();
  __break(1u);
}

BOOL sub_10015C06C(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction] != 0;
    }

    sub_100016F40(0, &qword_1009441F0);
    v8 = v7;
    v9 = v2;
    v10 = sub_100770EEC();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction] != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10015C1AC(uint64_t result)
{
  *(result + 344) = 0x4053000000000000;
  *(result + 352) = 0;
  return result;
}

char *sub_10015C1BC(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v9 - 8);
  v11 = v52 - v10 + 16;
  v12 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  sub_10075FD2C();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v13 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  v53.receiver = v4;
  v53.super_class = v14;
  v15 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  [v15 setClipsToBounds:1];
  [v15 _setContinuousCornerRadius:20.0];
  v16 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  [*&v15[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView] setClipsToBounds:1];
  [v15 addSubview:*&v15[v16]];
  v17 = sub_10015C92C();
  [v15 addSubview:v17];

  v18 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  [*(*&v15[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v19 = qword_100941428;
  v20 = *&v15[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_10015E538();
  sub_10076C13C();
  v21 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_10015E684(v52, v20 + v21);
  swift_endAccess();

  v22 = qword_100941430;
  v23 = *&v15[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  sub_10076C13C();
  v24 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10015E684(v52, v23 + v24);
  swift_endAccess();

  v25 = qword_10093F8F8;
  v26 = *(*&v15[v18] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = sub_10076BCFC();
  v28 = sub_10000A61C(v27, qword_10099D588);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v11, v28, v27);
  (*(v29 + 56))(v11, 0, 1, v27);
  sub_10075FCDC();

  v30 = *&v15[v18];
  v31 = objc_opt_self();
  v32 = v30;
  sub_1003EB7CC([v31 whiteColor]);

  v33 = *(*&v15[v18] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v34 = [v31 whiteColor];
  [v33 setTextColor:v34];

  v35 = *(*&v15[v18] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  sub_1000325F0();
  v36 = v35;
  v37 = sub_100770D1C();
  v38 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v39 = [v37 resolvedColorWithTraitCollection:v38];

  [v36 setTextColor:v39];
  v40 = *(*&v15[v18] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v41 = [v31 whiteColor];
  [v40 setTintColor:v41];

  v42 = *(*&v15[v18] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v43 = [v31 whiteColor];
  [v42 setTextColor:v43];

  v44 = *(*&v15[v18] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v45 = [v31 whiteColor];
  [v44 setTextColor:v45];

  v46 = *(*&v15[v18] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v47 = [v31 whiteColor];
  [v46 setTextColor:v47];

  sub_10076FF9C();
  v48 = sub_10076FF6C();

  v49 = [*(*&v15[v18] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v49 setCompositingFilter:v48];

  [v15 addSubview:*&v15[v18]];
  return v15;
}

char *sub_10015C92C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v6 = sub_1000E4B54(&off_1008827A0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10015CA54()
{
  v1 = v0;
  v2 = sub_10076443C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v27[-v8 - 8];

  [v0 bounds];
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  if (qword_100941430 != -1)
  {
    swift_once();
  }

  v10 = [v0 traitCollection];
  [v0 bounds];
  Width = CGRectGetWidth(v31);
  if (sub_10077071C())
  {
    v12 = &xmmword_1009A2E90;
  }

  else
  {
    v12 = &xmmword_1009A2D20;
  }

  sub_10015E5E0(v12, v27);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v13 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v13 = qword_100944CA0;
  }

  v14 = sub_10000A61C(v2, v13);
  (*(v3 + 16))(v5, v14, v2);
  (*(v3 + 32))(v9, v5, v2);
  if ((v30 & 1) == 0 && v28 == 0.0 && v29 == 0.0)
  {
    sub_1007643EC();
    v16 = v15;
    sub_1007643EC();
    v28 = v16;
    v29 = v17;
    v30 = 0;
  }

  _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v27, v10, Width);
  v19 = v18;

  (*(v3 + 8))(v9, v2);
  sub_10015E58C(v27);
  v20 = v19 + 12.0 + 16.0;
  [v0 bounds];
  MinX = CGRectGetMinX(v32);
  sub_10075FC7C();
  v22 = CGRectGetMaxY(v33) - v20;
  [v0 bounds];
  v23 = CGRectGetWidth(v34);
  v24 = *&v0[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] setLayoutMargins:{12.0, 20.0, 16.0, 20.0}];
  return [v24 setFrame:{MinX, v22, v23, v20}];
}

uint64_t sub_10015CDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v107 = a2;
  v106 = sub_10076BEDC();
  v98 = *(v106 - 8);
  __chkstk_darwin(v106);
  v97 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v8 - 8);
  v10 = &v90 - v9;
  v11 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v11 - 8);
  v104 = &v90 - v12;
  v13 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v13 - 8);
  v103 = &v90 - v14;
  v15 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v15 - 8);
  v102 = &v90 - v16;
  v17 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v17 - 8);
  v101 = &v90 - v18;
  v19 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v19 - 8);
  v21 = &v90 - v20;
  v22 = sub_10076A3AC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v99 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v25 - 8);
  v100 = &v90 - v26;
  v27 = sub_10076BF6C();
  __chkstk_darwin(v27 - 8);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760C4C();
  sub_10076F64C();
  v105 = a3;
  sub_10076FC1C();
  v108 = a1;
  v109 = v110[0];
  v30 = sub_10076ADBC();
  if (v30)
  {
    v31 = v30;
    v91 = v10;
    v32 = [v3 traitCollection];
    sub_10015DD88(v107, v32);

    v33 = sub_10076BFCC();
    v34 = *&v4[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
    sub_10076BF7C();
    v94 = v29;
    sub_10075FCCC();
    [v34 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    v107 = v31;
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();
    [v34 setContentMode:2];
    v35 = sub_10075FD2C();
    v36 = sub_10015E63C(&qword_100941820, &type metadata accessor for ArtworkView);
    v95 = v33;
    v92 = v36;
    v93 = v35;
    sub_100760B8C();
    v96 = v4;
    v37 = *&v4[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
    [*&v37[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:0];
    v38 = sub_10076ADCC();
    v39 = *(v23 + 104);
    v39(v99, enum case for OfferButtonPresenterViewAlignment.right(_:), v22);
    v39(v21, enum case for OfferButtonPresenterViewAlignment.left(_:), v22);
    (*(v23 + 56))(v21, 0, 1, v22);
    sub_10015E63C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
    v40 = v100;
    sub_10076759C();
    v41 = sub_10000A5D4(&qword_100945590);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    v42 = sub_10075F78C();
    v43 = v101;
    (*(*(v42 - 8) + 56))(v101, 1, 1, v42);
    v44 = sub_1007628DC();
    v45 = v102;
    (*(*(v44 - 8) + 56))(v102, 1, 1, v44);
    v46 = sub_10076C54C();
    v47 = v103;
    (*(*(v46 - 8) + 56))(v103, 1, 1, v46);
    v48 = sub_10000A5D4(&unk_100946750);
    v49 = v104;
    (*(*(v48 - 8) + 56))(v104, 1, 1, v48);
    sub_1004D0A60(v38, v37, v40, v105, 0, 0, v43, v45, v47, v49);
    v37[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_1006582B8();
    [v37 setNeedsLayout];
    sub_1006582B8();

    sub_10000CFBC(v49, &qword_10094F730);
    sub_10000CFBC(v47, &unk_100949290);
    sub_10000CFBC(v45, &unk_1009492A0);
    sub_10000CFBC(v43, &unk_10094D210);
    sub_10000CFBC(v40, &unk_100946760);
    v50 = *&v37[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
    if (v50)
    {
      v51 = objc_opt_self();
      v52 = v50;
      v53 = [v51 whiteColor];
      [v52 setTextColor:v53];
    }

    v54 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
    v55 = *&v37[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v55)
    {
      v56 = objc_opt_self();
      v57 = v55;
      v58 = [v56 whiteColor];
      [v57 setTextColor:v58];

      v59 = *&v37[v54];
      if (v59)
      {
        v60 = qword_100940A98;
        v61 = v59;
        if (v60 != -1)
        {
          swift_once();
        }

        v62 = sub_10076D3DC();
        v63 = sub_10000A61C(v62, qword_1009A0DD8);
        v64 = *(v62 - 8);
        v65 = v91;
        (*(v64 + 16))(v91, v63, v62);
        (*(v64 + 56))(v65, 0, 1, v62);
        sub_1007625DC();

        v66 = *&v37[v54];
        if (v66)
        {
          [v66 setAccessibilityIgnoresInvertColors:1];
        }
      }
    }

    v67 = sub_10076BE1C();
    if (v67)
    {
      v68 = v67;
      v69 = sub_100770E0C();

      if (v69)
      {
        v70 = 2;
      }

      else
      {
        v70 = 1;
      }
    }

    else
    {
      v70 = 2;
    }

    v71 = v106;
    v72 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v73 = *&v37[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
    v74 = objc_opt_self();
    v75 = v73;
    v76 = [v74 systemGray5Color];
    v77 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v70];
    v78 = [v76 resolvedColorWithTraitCollection:v77];

    v79 = [v78 colorWithAlphaComponent:0.35];
    sub_10075FB8C();

    sub_10076ADCC();
    v80 = sub_10076BB5C();

    if (v80)
    {
      if (qword_100941428 != -1)
      {
        swift_once();
      }

      sub_10015E538();
      sub_10076C13C();
      sub_10015E58C(v110);
      v81 = v97;
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v98 + 8))(v81, v71);
      sub_10076BFCC();
      v82 = *&v37[v72];
      sub_10076BF7C();
      sub_10075FCCC();
      [v82 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();

      [*&v37[v72] setContentMode:1];
      v83 = *&v37[v72];
      sub_100760B8C();
    }

    v4 = v96;
  }

  v84 = sub_10015C92C();
  v85 = [v4 backgroundColor];
  v86 = sub_1000E5FDC(v85);
  v88 = v87;

  sub_1000E5C2C(2, v86, v88);

  [v4 setNeedsLayout];
}

id sub_10015DC88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10015DD88(uint64_t a1, void *a2)
{
  v3 = sub_10076443C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  sub_10076C22C();
  v11 = v10;
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  sub_10015E538();
  sub_10076C13C();
  if (qword_100941430 != -1)
  {
    swift_once();
  }

  sub_10076C13C();
  if (sub_10077071C())
  {
    v12 = v24;
  }

  else
  {
    v12 = v25;
  }

  sub_10015E5E0(v12, v20);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v13 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v13 = qword_100944CA0;
  }

  v14 = sub_10000A61C(v3, v13);
  (*(v4 + 16))(v6, v14, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    sub_1007643EC();
    v16 = v15;
    sub_1007643EC();
    v21 = v16;
    v22 = v17;
    v23 = 0;
  }

  v18 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, a2, v11);
  (*(v4 + 8))(v9, v3, v18);
  sub_10015E58C(v20);
  sub_10015E58C(v24);
  sub_10015E58C(v25);
  return v11;
}

void sub_10015E0C8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  sub_10075FD2C();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10015E190()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076ADDC();
  sub_10015E63C(&qword_10094AA08, &type metadata accessor for MediumAdLockupWithAlignedRegionBackground);
  result = sub_10076332C();
  if (v11)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C22C();
    v5 = *(v1 + 8);
    v5(v3, v0);
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076338C();

    v6 = v11;
    sub_10015DD88(v3, v11);

    v5(v3, v0);
    v7 = _swiftEmptyArrayStorage;
    v12 = _swiftEmptyArrayStorage;
    if (sub_10076ADBC())
    {
      sub_10076BFCC();
      sub_10077019C();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();

      v7 = v12;
    }

    sub_10076ADCC();
    v8 = sub_10076BB5C();

    if (v8)
    {
      if (qword_100941428 != -1)
      {
        swift_once();
      }

      sub_10015E538();
      sub_10076C13C();
      sub_10015E58C(&v11);
      sub_10076BFCC();

      sub_10077019C();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();

      v7 = v12;
    }

    v9._rawValue = v7;
    sub_100760BAC(v9);
  }

  return result;
}

unint64_t sub_10015E538()
{
  result = qword_10094AA10;
  if (!qword_10094AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AA10);
  }

  return result;
}

uint64_t sub_10015E63C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 IconArtworkGridLayout.init(metrics:icons:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v3;
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 73) = *(a1 + 73);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 96) = a2;
  return result;
}

uint64_t IconArtworkGridLayout.Metrics.init(iconSize:interItemSpacing:horizontalOffsetPercentage:rotation:preferredGridSize:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  result = sub_10003F19C(a1, a5 + 16);
  *(a5 + 56) = a8;
  *(a5 + 64) = a9;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  *(a5 + 88) = a4 & 1;
  return result;
}

uint64_t LargeGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 16);

  return sub_10003F19C(a1, v1 + 16);
}

uint64_t IconArtworkGridLayout.Metrics.preferredGridSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3 & 1;
  return result;
}

uint64_t static IconArtworkGridLayout.totalNumberOfIcons(fitting:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  swift_getObjectType();

  return sub_10015EB9C(a1, a2, a3);
}

char *static IconArtworkGridLayout.iconFrames(relativeTo:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getObjectType();

  return sub_10015EBD8(a1, a2, a3, a4, a5);
}

uint64_t IconArtworkGridLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_getObjectType();
  result = sub_10015EBD8(v4, a1, a2, a3, a4);
  v10 = result;
  v11 = *(v4 + 96);
  v12 = *(v11 + 16);
  if (!v12)
  {

    return sub_10076D1BC();
  }

  v13 = 0;
  v14 = *(result + 16);
  v15 = v11 + 32;
  for (i = result + 56; ; i += 32)
  {
    if (v13 >= v14)
    {
      goto LABEL_3;
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    sub_10000A570(v15, v17);
    result = sub_10000CF78(v17, v17[3]);
    if (v13 >= *(v10 + 16))
    {
      goto LABEL_12;
    }

    sub_10076D23C();
    result = sub_10000CD74(v17);
LABEL_3:
    ++v13;
    v15 += 40;
    if (v12 == v13)
    {

      return sub_10076D1BC();
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10015EB9C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v3 = *(sub_10015EBD8(a1, 0.0, 0.0, a2, a3) + 2);

  return v3;
}

char *sub_10015EBD8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = *(a1 + 64);
  CGAffineTransformMakeRotation(&v206, v182);
  v207.origin.x = a4 * -0.5;
  v207.origin.y = a5 * -0.5;
  v207.size.width = a4;
  v207.size.height = a5;
  v208 = CGRectApplyAffineTransform(v207, &v206);
  x = v208.origin.x;
  y = v208.origin.y;
  width = v208.size.width;
  v204 = v208.size.width;
  height = v208.size.height;
  v200 = v208.size.height;
  MinX = CGRectGetMinX(v208);
  v195 = a2;
  v209.origin.x = a2;
  v196 = a3;
  v209.origin.y = a3;
  v209.size.width = a4;
  v209.size.height = a5;
  v197 = a5;
  v203 = MinX + CGRectGetMidX(v209);
  v210.origin.x = x;
  v210.origin.y = y;
  v210.size.width = width;
  v210.size.height = height;
  MinY = CGRectGetMinY(v210);
  v211.origin.x = a2;
  v211.origin.y = a3;
  v211.size.width = a4;
  v19 = a4;
  v211.size.height = a5;
  v202 = MinY + CGRectGetMidY(v211);
  v21 = *a1;
  v20 = *(a1 + 8);
  CGAffineTransformMakeRotation(&v206, v182);
  v212.origin.x = v21 * -0.5;
  v212.origin.y = v20 * -0.5;
  v212.size.width = v21;
  v212.size.height = v20;
  v194 = v20;
  v213 = CGRectApplyAffineTransform(v212, &v206);
  v22 = v213.origin.x;
  v23 = v213.origin.y;
  v24 = v213.size.width;
  v25 = v213.size.height;
  v26 = CGRectGetMinX(v213);
  v214.origin.x = 0.0;
  v214.origin.y = 0.0;
  v214.size.width = v21;
  v214.size.height = v20;
  v199 = v26 + CGRectGetMidX(v214);
  v215.origin.x = v22;
  v215.origin.y = v23;
  v215.size.width = v24;
  v215.size.height = v25;
  v27 = CGRectGetMinY(v215);
  v216.origin.x = 0.0;
  v216.origin.y = 0.0;
  v216.size.width = v21;
  v216.size.height = v20;
  v201 = v27 + CGRectGetMidY(v216);
  sub_10000CF78((a1 + 16), *(a1 + 40));
  sub_1000FF02C();
  sub_10076D40C();
  v29 = v28;
  v189 = v28;
  (*(v11 + 8))(v13, v10);
  v30 = *(a1 + 56);
  v192 = v21;
  v31 = v21 + v29;
  v32 = floor(v31 * v30);
  v33 = v195;
  v217.origin.x = v195;
  v34 = v196;
  v217.origin.y = v196;
  v217.size.width = v19;
  v35 = v197;
  v217.size.height = v197;
  MidX = CGRectGetMidX(v217);
  v218.origin.x = v33;
  v218.origin.y = v34;
  v193 = v19;
  v218.size.width = v19;
  v218.size.height = v35;
  MidY = CGRectGetMidY(v218);
  v36 = v182;
  v37 = __sincos_stret(v182);
  v188 = v37.__cosval * v31;
  v187 = v37.__sinval * v31;
  v38 = __sincos_stret(v36 + 3.14159265);
  v191 = v38.__cosval * v31;
  v190 = v38.__sinval * v31;
  v179 = v37.__cosval * v32;
  v178 = v37.__sinval * v32;
  v39 = __sincos_stret(v36 + 1.57079633);
  sinval = v39.__sinval;
  cosval = v39.__cosval;
  v40 = v194 + v189;
  v41 = v199;
  v219.origin.x = v199;
  v42 = v201;
  v219.origin.y = v201;
  v219.size.width = v24;
  v219.size.height = v25;
  v43 = MidX + CGRectGetMidX(v219);
  v220.origin.x = v41;
  v220.origin.y = v42;
  v220.size.width = v24;
  v220.size.height = v25;
  v44 = v43 + CGRectGetWidth(v220) * -0.5;
  v221.origin.x = v41;
  v221.origin.y = v42;
  v221.size.width = v24;
  v221.size.height = v25;
  v45 = MidY + CGRectGetMidY(v221);
  v222.origin.x = v41;
  v222.origin.y = v42;
  v222.size.width = v24;
  v222.size.height = v25;
  v223.origin.y = v45 + CGRectGetHeight(v222) * -0.5;
  v299.origin.x = v203;
  v299.size.width = v204;
  v223.origin.x = v44;
  v299.origin.y = v202;
  v223.size.width = v24;
  v223.size.height = v25;
  v299.size.height = v200;
  v46 = CGRectIntersectsRect(v223, v299);
  v177 = v40;
  MinX = v24;
  v198 = v25;
  if (v46)
  {
    v184 = cosval * v40 + v179;
    v183 = sinval * v40 + v178;
    v47 = _swiftEmptyArrayStorage;
    v48 = 0.5;
    v49 = MidX;
    v50 = MidY;
    v51 = v200;
    v52 = v201;
    v53 = v199;
    do
    {
      cosval = v49;
      v229.origin.x = v53;
      v229.origin.y = v52;
      v229.size.width = v24;
      v229.size.height = v25;
      v56 = v49 + CGRectGetMidX(v229);
      v230.origin.x = v53;
      v230.origin.y = v52;
      v230.size.width = v24;
      v230.size.height = v25;
      v57 = v56 - CGRectGetWidth(v230) * v48;
      v231.origin.x = v53;
      v231.origin.y = v52;
      v231.size.width = v24;
      v231.size.height = v25;
      v189 = v50 + CGRectGetMidY(v231);
      v232.origin.x = v53;
      v232.origin.y = v52;
      v232.size.width = v24;
      v232.size.height = v25;
      v58 = v189 - CGRectGetHeight(v232) * v48;
      v233.origin.x = v57;
      v233.origin.y = v58;
      v233.size.width = v24;
      v233.size.height = v25;
      v301.origin.y = v202;
      v301.origin.x = v203;
      v301.size.width = v204;
      v301.size.height = v51;
      v59 = CGRectIntersectsRect(v233, v301);
      sinval = v50;
      if (v59)
      {
        v189 = cosval;
        v60 = v50;
        do
        {
          v239.origin.x = v57;
          v239.origin.y = v58;
          v239.size.width = v24;
          v239.size.height = v25;
          v303.origin.x = v195;
          v303.origin.y = v196;
          v303.size.width = v193;
          v303.size.height = v197;
          if (CGRectIntersectsRect(v239, v303))
          {
            v240.origin.x = 0.0;
            v240.origin.y = 0.0;
            v70 = v192;
            v240.size.width = v192;
            v71 = v194;
            v240.size.height = v194;
            v72 = CGRectGetMidX(v240);
            v241.origin.x = 0.0;
            v241.origin.y = 0.0;
            v241.size.width = v70;
            v241.size.height = v71;
            v73 = CGRectGetWidth(v241);
            v242.origin.x = 0.0;
            v242.origin.y = 0.0;
            v242.size.width = v70;
            v242.size.height = v71;
            v74 = CGRectGetMidY(v242);
            v243.origin.x = 0.0;
            v243.origin.y = 0.0;
            v243.size.width = v70;
            v243.size.height = v71;
            v75 = CGRectGetHeight(v243);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10049CF8C(0, *(v47 + 2) + 1, 1, v47);
            }

            v77 = *(v47 + 2);
            v76 = *(v47 + 3);
            v62 = v189;
            if (v77 >= v76 >> 1)
            {
              v47 = sub_10049CF8C((v76 > 1), v77 + 1, 1, v47);
            }

            v61 = 0.5;
            *(v47 + 2) = v77 + 1;
            v78 = &v47[32 * v77];
            v78[4] = v62 + v72 - v73 * 0.5;
            v78[5] = v60 + v74 - v75 * 0.5;
            v79 = v194;
            v78[6] = v192;
            v78[7] = v79;
          }

          else
          {
            v61 = 0.5;
            v62 = v189;
          }

          v63 = v188 + v62;
          v60 = v187 + v60;
          v25 = v198;
          v64 = v199;
          v234.origin.x = v199;
          v65 = v201;
          v234.origin.y = v201;
          v24 = MinX;
          v234.size.width = MinX;
          v234.size.height = v198;
          v66 = CGRectGetMidX(v234);
          v189 = v63;
          v67 = v63 + v66;
          v235.origin.x = v64;
          v235.origin.y = v65;
          v235.size.width = v24;
          v235.size.height = v25;
          v57 = v67 - CGRectGetWidth(v235) * v61;
          v236.origin.x = v64;
          v236.origin.y = v65;
          v236.size.width = v24;
          v236.size.height = v25;
          v68 = v60 + CGRectGetMidY(v236);
          v237.origin.x = v64;
          v237.origin.y = v65;
          v237.size.width = v24;
          v237.size.height = v25;
          v58 = v68 - CGRectGetHeight(v237) * v61;
          v238.origin.x = v57;
          v238.origin.y = v58;
          v238.size.width = v24;
          v238.size.height = v25;
          v302.origin.y = v202;
          v302.origin.x = v203;
          v302.size.width = v204;
          v302.size.height = v200;
          v69 = CGRectIntersectsRect(v238, v302);
          v50 = sinval;
        }

        while (v69);
      }

      v80 = v191 + cosval;
      v81 = v190 + v50;
      v244.size.height = v198;
      v82 = v199;
      v244.origin.x = v199;
      v83 = v201;
      v244.origin.y = v201;
      v244.size.width = v24;
      v84 = v80 + CGRectGetMidX(v244);
      v245.origin.x = v82;
      v245.origin.y = v83;
      v245.size.width = v24;
      v245.size.height = v198;
      v85 = v84 - CGRectGetWidth(v245) * 0.5;
      v246.origin.x = v82;
      v246.origin.y = v83;
      v246.size.width = v24;
      v246.size.height = v198;
      v86 = v81 + CGRectGetMidY(v246);
      v247.origin.x = v82;
      v247.origin.y = v83;
      v25 = v198;
      v247.size.width = v24;
      v247.size.height = v198;
      v87 = v86 - CGRectGetHeight(v247) * 0.5;
      v248.origin.x = v85;
      v248.origin.y = v87;
      v248.size.width = v24;
      v248.size.height = v25;
      v304.origin.y = v202;
      v304.origin.x = v203;
      v304.size.width = v204;
      v304.size.height = v200;
      if (CGRectIntersectsRect(v248, v304))
      {
        do
        {
          v254.origin.x = v85;
          v254.origin.y = v87;
          v254.size.width = v24;
          v254.size.height = v25;
          v306.origin.x = v195;
          v306.origin.y = v196;
          v306.size.width = v193;
          v306.size.height = v197;
          if (CGRectIntersectsRect(v254, v306))
          {
            v255.origin.x = 0.0;
            v255.origin.y = 0.0;
            v94 = v192;
            v255.size.width = v192;
            v95 = v194;
            v255.size.height = v194;
            v96 = CGRectGetMidX(v255);
            v256.origin.x = 0.0;
            v256.origin.y = 0.0;
            v256.size.width = v94;
            v256.size.height = v95;
            v97 = CGRectGetWidth(v256);
            v257.origin.x = 0.0;
            v257.origin.y = 0.0;
            v257.size.width = v94;
            v257.size.height = v95;
            v189 = CGRectGetMidY(v257);
            v258.origin.x = 0.0;
            v258.origin.y = 0.0;
            v258.size.width = v94;
            v258.size.height = v95;
            v98 = CGRectGetHeight(v258);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10049CF8C(0, *(v47 + 2) + 1, 1, v47);
            }

            v100 = *(v47 + 2);
            v99 = *(v47 + 3);
            if (v100 >= v99 >> 1)
            {
              v47 = sub_10049CF8C((v99 > 1), v100 + 1, 1, v47);
            }

            v88 = 0.5;
            v101 = v81 + v189 - v98 * 0.5;
            *(v47 + 2) = v100 + 1;
            v102 = &v47[32 * v100];
            v102[4] = v80 + v96 - v97 * 0.5;
            v102[5] = v101;
            v103 = v194;
            v102[6] = v192;
            v102[7] = v103;
          }

          else
          {
            v88 = 0.5;
          }

          v80 = v191 + v80;
          v81 = v190 + v81;
          v89 = v199;
          v249.origin.x = v199;
          v90 = v201;
          v249.origin.y = v201;
          v249.size.width = v24;
          v91 = v198;
          v249.size.height = v198;
          v92 = v80 + CGRectGetMidX(v249);
          v250.origin.x = v89;
          v250.origin.y = v90;
          v250.size.width = MinX;
          v250.size.height = v91;
          v85 = v92 - CGRectGetWidth(v250) * v88;
          v251.origin.x = v89;
          v251.origin.y = v90;
          v251.size.width = MinX;
          v251.size.height = v91;
          v93 = v81 + CGRectGetMidY(v251);
          v252.origin.x = v89;
          v252.origin.y = v90;
          v25 = v91;
          v24 = MinX;
          v252.size.width = MinX;
          v252.size.height = v25;
          v87 = v93 - CGRectGetHeight(v252) * v88;
          v253.origin.x = v85;
          v253.origin.y = v87;
          v253.size.width = v24;
          v253.size.height = v25;
          v305.origin.y = v202;
          v305.origin.x = v203;
          v305.size.width = v204;
          v305.size.height = v200;
        }

        while (CGRectIntersectsRect(v253, v305));
      }

      v49 = v184 + cosval;
      v50 = v183 + sinval;
      v53 = v199;
      v224.origin.x = v199;
      v52 = v201;
      v224.origin.y = v201;
      v224.size.width = v24;
      v224.size.height = v25;
      v54 = v49 + CGRectGetMidX(v224);
      v225.origin.x = v53;
      v225.origin.y = v52;
      v225.size.width = v24;
      v225.size.height = v25;
      v48 = 0.5;
      v189 = v54 - CGRectGetWidth(v225) * 0.5;
      v226.origin.x = v53;
      v226.origin.y = v52;
      v226.size.width = v24;
      v226.size.height = v25;
      v55 = v50 + CGRectGetMidY(v226);
      v227.origin.x = v53;
      v227.origin.y = v52;
      v227.size.width = v24;
      v227.size.height = v25;
      v228.origin.y = v55 - CGRectGetHeight(v227) * 0.5;
      v228.origin.x = v189;
      v228.size.width = v24;
      v228.size.height = v25;
      v300.origin.y = v202;
      v300.origin.x = v203;
      v300.size.width = v204;
      v51 = v200;
      v300.size.height = v200;
    }

    while (CGRectIntersectsRect(v228, v300));
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
    v52 = v201;
    v53 = v199;
  }

  v104 = __sincos_stret(v182 + -1.57079633);
  v184 = v104.__cosval * v177 - v179;
  v105 = MidX + v184;
  v183 = v104.__sinval * v177 - v178;
  v106 = MidY + v183;
  v259.origin.x = v53;
  v259.origin.y = v52;
  v259.size.width = v24;
  v259.size.height = v25;
  v107 = CGRectGetMidX(v259);
  sinval = v105;
  v108 = v105 + v107;
  v260.origin.x = v53;
  v260.origin.y = v52;
  v260.size.width = v24;
  v260.size.height = v25;
  v109 = v53;
  v110 = v108 - CGRectGetWidth(v260) * 0.5;
  v261.origin.x = v109;
  v261.origin.y = v52;
  v261.size.width = v24;
  v261.size.height = v25;
  v111 = CGRectGetMidY(v261);
  cosval = v106;
  v112 = v106 + v111;
  v262.origin.x = v109;
  v262.origin.y = v52;
  v262.size.width = v24;
  v262.size.height = v25;
  v263.origin.y = v112 - CGRectGetHeight(v262) * 0.5;
  v307.size.height = v200;
  v263.origin.x = v110;
  v263.size.width = v24;
  v263.size.height = v25;
  v307.origin.y = v202;
  v307.origin.x = v203;
  v307.size.width = v204;
  if (CGRectIntersectsRect(v263, v307))
  {
    v113 = sinval;
    v114 = cosval;
    v115 = v199;
    do
    {
      v269.origin.x = v115;
      v269.origin.y = v52;
      v269.size.width = v24;
      v269.size.height = v25;
      v119 = v113 + CGRectGetMidX(v269);
      v270.origin.x = v115;
      v270.origin.y = v52;
      v270.size.width = v24;
      v270.size.height = v25;
      v120 = v119 - CGRectGetWidth(v270) * 0.5;
      v271.origin.x = v115;
      v271.origin.y = v52;
      v271.size.width = v24;
      v271.size.height = v25;
      v121 = v114 + CGRectGetMidY(v271);
      v272.origin.x = v115;
      v272.origin.y = v52;
      v272.size.width = v24;
      v272.size.height = v25;
      v122 = v121 - CGRectGetHeight(v272) * 0.5;
      v273.origin.x = v120;
      v273.origin.y = v122;
      v273.size.width = v24;
      v273.size.height = v25;
      v309.origin.y = v202;
      v309.origin.x = v203;
      v309.size.width = v204;
      v309.size.height = v200;
      v123 = CGRectIntersectsRect(v273, v309);
      sinval = v113;
      cosval = v114;
      if (v123)
      {
        v189 = v113;
        do
        {
          v279.origin.x = v120;
          v279.origin.y = v122;
          v279.size.width = v24;
          v279.size.height = v25;
          v311.origin.x = v195;
          v311.origin.y = v196;
          v311.size.width = v193;
          v311.size.height = v197;
          if (CGRectIntersectsRect(v279, v311))
          {
            v280.origin.x = 0.0;
            v280.origin.y = 0.0;
            v132 = v192;
            v280.size.width = v192;
            v133 = v194;
            v280.size.height = v194;
            v134 = CGRectGetMidX(v280);
            v281.origin.x = 0.0;
            v281.origin.y = 0.0;
            v281.size.width = v132;
            v281.size.height = v133;
            v135 = CGRectGetWidth(v281);
            v282.origin.x = 0.0;
            v282.origin.y = 0.0;
            v282.size.width = v132;
            v282.size.height = v133;
            v136 = CGRectGetMidY(v282);
            v283.origin.x = 0.0;
            v283.origin.y = 0.0;
            v283.size.width = v132;
            v283.size.height = v133;
            v137 = CGRectGetHeight(v283);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10049CF8C(0, *(v47 + 2) + 1, 1, v47);
            }

            v139 = *(v47 + 2);
            v138 = *(v47 + 3);
            v140 = 0.5;
            v125 = v189;
            if (v139 >= v138 >> 1)
            {
              v145 = sub_10049CF8C((v138 > 1), v139 + 1, 1, v47);
              v140 = 0.5;
              v47 = v145;
            }

            v141 = v125 + v134 - v135 * v140;
            v142 = v114 + v136;
            v124 = 0.5;
            *(v47 + 2) = v139 + 1;
            v143 = &v47[32 * v139];
            v143[4] = v141;
            v143[5] = v142 - v137 * 0.5;
            v144 = v194;
            v143[6] = v192;
            v143[7] = v144;
          }

          else
          {
            v124 = 0.5;
            v125 = v189;
          }

          v126 = v188 + v125;
          v114 = v187 + v114;
          v25 = v198;
          v127 = v199;
          v274.origin.x = v199;
          v128 = v201;
          v274.origin.y = v201;
          v24 = MinX;
          v274.size.width = MinX;
          v274.size.height = v198;
          v129 = CGRectGetMidX(v274);
          v189 = v126;
          v130 = v126 + v129;
          v275.origin.x = v127;
          v275.origin.y = v128;
          v275.size.width = v24;
          v275.size.height = v25;
          v120 = v130 - CGRectGetWidth(v275) * v124;
          v276.origin.x = v127;
          v276.origin.y = v128;
          v276.size.width = v24;
          v276.size.height = v25;
          v131 = v114 + CGRectGetMidY(v276);
          v277.origin.x = v127;
          v277.origin.y = v128;
          v277.size.width = v24;
          v277.size.height = v25;
          v122 = v131 - CGRectGetHeight(v277) * v124;
          v278.origin.x = v120;
          v278.origin.y = v122;
          v278.size.width = v24;
          v278.size.height = v25;
          v310.origin.y = v202;
          v310.origin.x = v203;
          v310.size.width = v204;
          v310.size.height = v200;
        }

        while (CGRectIntersectsRect(v278, v310));
      }

      v146 = v191 + sinval;
      v147 = v190 + cosval;
      v148 = v199;
      v284.origin.x = v199;
      v284.origin.y = v201;
      v284.size.width = v24;
      v284.size.height = v25;
      v149 = CGRectGetMidX(v284);
      v189 = v146;
      v150 = v146 + v149;
      v285.origin.x = v148;
      v285.origin.y = v201;
      v285.size.width = v24;
      v285.size.height = v25;
      v151 = v150 - CGRectGetWidth(v285) * 0.5;
      v286.origin.x = v148;
      v286.origin.y = v201;
      v286.size.width = v24;
      v286.size.height = v25;
      v152 = v147 + CGRectGetMidY(v286);
      v287.origin.x = v148;
      v52 = v201;
      v287.origin.y = v201;
      v287.size.width = v24;
      v287.size.height = v25;
      v153 = v152 - CGRectGetHeight(v287) * 0.5;
      v288.origin.x = v151;
      v288.origin.y = v153;
      v288.size.width = v24;
      v288.size.height = v25;
      v312.origin.y = v202;
      v312.origin.x = v203;
      v312.size.width = v204;
      v312.size.height = v200;
      if (CGRectIntersectsRect(v288, v312))
      {
        do
        {
          v294.origin.x = v151;
          v294.origin.y = v153;
          v294.size.width = v24;
          v294.size.height = v25;
          v314.origin.x = v195;
          v314.origin.y = v196;
          v314.size.width = v193;
          v314.size.height = v197;
          if (CGRectIntersectsRect(v294, v314))
          {
            v295.origin.x = 0.0;
            v295.origin.y = 0.0;
            v161 = v192;
            v295.size.width = v192;
            v162 = v194;
            v295.size.height = v194;
            v163 = CGRectGetMidX(v295);
            v296.origin.x = 0.0;
            v296.origin.y = 0.0;
            v296.size.width = v161;
            v296.size.height = v162;
            v164 = CGRectGetWidth(v296);
            v297.origin.x = 0.0;
            v297.origin.y = 0.0;
            v297.size.width = v161;
            v297.size.height = v162;
            v165 = CGRectGetMidY(v297);
            v298.origin.x = 0.0;
            v298.origin.y = 0.0;
            v298.size.width = v161;
            v298.size.height = v162;
            v166 = CGRectGetHeight(v298);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10049CF8C(0, *(v47 + 2) + 1, 1, v47);
            }

            v168 = *(v47 + 2);
            v167 = *(v47 + 3);
            v169 = 0.5;
            v155 = v189;
            if (v168 >= v167 >> 1)
            {
              v174 = sub_10049CF8C((v167 > 1), v168 + 1, 1, v47);
              v169 = 0.5;
              v47 = v174;
            }

            v170 = v155 + v163 - v164 * v169;
            v171 = v147 + v165;
            v154 = 0.5;
            *(v47 + 2) = v168 + 1;
            v172 = &v47[32 * v168];
            v172[4] = v170;
            v172[5] = v171 - v166 * 0.5;
            v173 = v194;
            v172[6] = v192;
            v172[7] = v173;
          }

          else
          {
            v154 = 0.5;
            v155 = v189;
          }

          v156 = v191 + v155;
          v147 = v190 + v147;
          v25 = v198;
          v157 = v199;
          v289.origin.x = v199;
          v52 = v201;
          v289.origin.y = v201;
          v24 = MinX;
          v289.size.width = MinX;
          v289.size.height = v198;
          v158 = CGRectGetMidX(v289);
          v189 = v156;
          v159 = v156 + v158;
          v290.origin.x = v157;
          v290.origin.y = v52;
          v290.size.width = v24;
          v290.size.height = v25;
          v151 = v159 - CGRectGetWidth(v290) * v154;
          v291.origin.x = v157;
          v291.origin.y = v52;
          v291.size.width = v24;
          v291.size.height = v25;
          v160 = v147 + CGRectGetMidY(v291);
          v292.origin.x = v157;
          v292.origin.y = v52;
          v292.size.width = v24;
          v292.size.height = v25;
          v153 = v160 - CGRectGetHeight(v292) * v154;
          v293.origin.x = v151;
          v293.origin.y = v153;
          v293.size.width = v24;
          v293.size.height = v25;
          v313.origin.y = v202;
          v313.origin.x = v203;
          v313.size.width = v204;
          v313.size.height = v200;
        }

        while (CGRectIntersectsRect(v293, v313));
      }

      v113 = v184 + sinval;
      v114 = v183 + cosval;
      v115 = v199;
      v264.origin.x = v199;
      v264.origin.y = v52;
      v264.size.width = v24;
      v264.size.height = v25;
      v116 = v113 + CGRectGetMidX(v264);
      v265.origin.x = v115;
      v265.origin.y = v52;
      v265.size.width = v24;
      v265.size.height = v25;
      v117 = v116 - CGRectGetWidth(v265) * 0.5;
      v266.origin.x = v115;
      v266.origin.y = v52;
      v266.size.width = v24;
      v266.size.height = v25;
      v118 = v114 + CGRectGetMidY(v266);
      v267.origin.x = v115;
      v267.origin.y = v52;
      v267.size.width = v24;
      v267.size.height = v25;
      v268.origin.y = v118 - CGRectGetHeight(v267) * 0.5;
      v268.origin.x = v117;
      v268.size.width = v24;
      v268.size.height = v25;
      v308.origin.y = v202;
      v308.origin.x = v203;
      v308.size.width = v204;
      v308.size.height = v200;
    }

    while (CGRectIntersectsRect(v268, v308));
  }

  return v47;
}